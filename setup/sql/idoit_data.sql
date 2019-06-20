--
-- i-doit data dump for version 1.12.4
--

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_ac_air_quantity_unit` (
  `isys_ac_air_quantity_unit__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_ac_air_quantity_unit__const` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_ac_air_quantity_unit__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ac_air_quantity_unit__description` text COLLATE utf8_unicode_ci,
  `isys_ac_air_quantity_unit__property` int(10) DEFAULT NULL,
  `isys_ac_air_quantity_unit__sort` int(10) unsigned DEFAULT NULL,
  `isys_ac_air_quantity_unit__status` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_ac_air_quantity_unit__id`),
  KEY `isys_ac_air_quantity_unit__title` (`isys_ac_air_quantity_unit__title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_ac_air_quantity_unit` VALUES (1,'C__AC_AIR_QUANTITY_UNIT__QMH','cbm/h','Qubic meter per hour',NULL,10,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_ac_refrigerating_capacity_unit` (
  `isys_ac_refrigerating_capacity_unit__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_ac_refrigerating_capacity_unit__const` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_ac_refrigerating_capacity_unit__factor` float unsigned DEFAULT '1',
  `isys_ac_refrigerating_capacity_unit__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ac_refrigerating_capacity_unit__description` text COLLATE utf8_unicode_ci,
  `isys_ac_refrigerating_capacity_unit__property` int(10) DEFAULT NULL,
  `isys_ac_refrigerating_capacity_unit__sort` int(10) unsigned DEFAULT NULL,
  `isys_ac_refrigerating_capacity_unit__status` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_ac_refrigerating_capacity_unit__id`),
  KEY `isys_ac_refrigerating_capacity_unit__title` (`isys_ac_refrigerating_capacity_unit__title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_ac_refrigerating_capacity_unit` VALUES (1,'C__REF_CAPACITY_UNIT__BTU',3.414,'BTU/h','BTU/h',NULL,NULL,2);
INSERT INTO `isys_ac_refrigerating_capacity_unit` VALUES (2,'C__REF_CAPACITY_UNIT__KWATT',1000,'KW','KW',NULL,NULL,2);
INSERT INTO `isys_ac_refrigerating_capacity_unit` VALUES (3,'C__REF_CAPACITY_UNIT__WATT',1,'W','W',NULL,NULL,2);
INSERT INTO `isys_ac_refrigerating_capacity_unit` VALUES (4,'C__REF_CAPACITY_UNIT__MWATT',1000000,'MW','MW',NULL,NULL,2);
INSERT INTO `isys_ac_refrigerating_capacity_unit` VALUES (5,'C__REF_CAPACITY_UNIT__GWATT',1000000000,'GW','GW',NULL,NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_ac_type` (
  `isys_ac_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_ac_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ac_type__description` text COLLATE utf8_unicode_ci,
  `isys_ac_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ac_type__property` int(10) DEFAULT NULL,
  `isys_ac_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_ac_type__status` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_ac_type__id`),
  KEY `isys_ac_type__title` (`isys_ac_type__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_access_type` (
  `isys_access_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_access_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_access_type__description` text COLLATE utf8_unicode_ci,
  `isys_access_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_access_type__sort` int(10) unsigned DEFAULT '5',
  `isys_access_type__status` int(10) unsigned DEFAULT '1',
  `isys_access_type__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_access_type__id`),
  KEY `isys_access_type__title` (`isys_access_type__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_account` (
  `isys_account__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_account__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_account__description` text COLLATE utf8_unicode_ci,
  `isys_account__property` int(10) unsigned DEFAULT '0',
  `isys_account__status` int(10) unsigned DEFAULT NULL,
  `isys_account__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_account__sort` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_account__id`),
  KEY `isys_account__title` (`isys_account__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_agent` (
  `isys_agent__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_agent__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_agent__status` int(10) DEFAULT '2',
  `isys_agent__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_agent__sort` int(10) DEFAULT NULL,
  `isys_agent__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_agent__id`),
  KEY `isys_agent__title` (`isys_agent__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_application_manufacturer` (
  `isys_application_manufacturer__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_application_manufacturer__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_application_manufacturer__description` text COLLATE utf8_unicode_ci,
  `isys_application_manufacturer__sort` int(10) unsigned DEFAULT NULL,
  `isys_application_manufacturer__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_application_manufacturer__status` int(10) unsigned DEFAULT NULL,
  `isys_application_manufacturer__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_application_manufacturer__id`),
  KEY `isys_application_manufacturer__title` (`isys_application_manufacturer__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_auth` (
  `isys_auth__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_auth__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_auth__type` int(10) unsigned NOT NULL,
  `isys_auth__isys_module__id` int(10) unsigned NOT NULL,
  `isys_auth__path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_auth__status` int(1) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_auth__id`),
  KEY `isys_auth__isys_obj__id` (`isys_auth__isys_obj__id`),
  KEY `isys_auth__isys_module__id` (`isys_auth__isys_module__id`),
  KEY `isys_auth__path` (`isys_auth__path`),
  CONSTRAINT `isys_auth_ibfk_1` FOREIGN KEY (`isys_auth__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_auth_ibfk_2` FOREIGN KEY (`isys_auth__isys_module__id`) REFERENCES `isys_module` (`isys_module__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_auth` VALUES (1,10,1,2,'OBJ_ID/*',2);
INSERT INTO `isys_auth` VALUES (2,10,1,2,'OBJ_ID',2);
INSERT INTO `isys_auth` VALUES (3,10,1,2,'OBJ_IN_TYPE/*',2);
INSERT INTO `isys_auth` VALUES (4,10,1,2,'OBJ_IN_TYPE',2);
INSERT INTO `isys_auth` VALUES (5,10,1,2,'OBJ_TYPE/*',2);
INSERT INTO `isys_auth` VALUES (6,10,1,2,'OBJ_TYPE',2);
INSERT INTO `isys_auth` VALUES (7,10,1,2,'LOCATION/*',2);
INSERT INTO `isys_auth` VALUES (8,10,1,2,'LOCATION',2);
INSERT INTO `isys_auth` VALUES (9,10,1,2,'CATEGORY/*',2);
INSERT INTO `isys_auth` VALUES (10,10,1,2,'CATEGORY',2);
INSERT INTO `isys_auth` VALUES (11,10,1,1022,'MULTIEDIT',2);
INSERT INTO `isys_auth` VALUES (12,10,1,7,'LOGBOOK/*',2);
INSERT INTO `isys_auth` VALUES (13,10,1,7,'LOGBOOK',2);
INSERT INTO `isys_auth` VALUES (14,10,1,1003,'TEMPLATES/*',2);
INSERT INTO `isys_auth` VALUES (15,10,1,1003,'TEMPLATES',2);
INSERT INTO `isys_auth` VALUES (16,10,1,1003,'MASS_CHANGES/*',2);
INSERT INTO `isys_auth` VALUES (17,10,1,1003,'MASS_CHANGES',2);
INSERT INTO `isys_auth` VALUES (18,10,1,1004,'EDITOR',2);
INSERT INTO `isys_auth` VALUES (19,10,1,1004,'ONLINE_REPORTS',2);
INSERT INTO `isys_auth` VALUES (20,10,1,1004,'VIEWS/*',2);
INSERT INTO `isys_auth` VALUES (21,10,1,1004,'VIEWS',2);
INSERT INTO `isys_auth` VALUES (22,10,3,1004,'CUSTOM_REPORT/*',2);
INSERT INTO `isys_auth` VALUES (23,10,3,1004,'CUSTOM_REPORT',2);
INSERT INTO `isys_auth` VALUES (27,10,1,2,'EXPLORER',2);
INSERT INTO `isys_auth` VALUES (30,10,1,8,'OCS/*',2);
INSERT INTO `isys_auth` VALUES (31,10,1,8,'OCS',2);
INSERT INTO `isys_auth` VALUES (32,10,1,8,'JSONRPCAPI/*',2);
INSERT INTO `isys_auth` VALUES (33,10,1,8,'JSONRPCAPI',2);
INSERT INTO `isys_auth` VALUES (36,10,1,8,'GLOBALSETTINGS/*',2);
INSERT INTO `isys_auth` VALUES (37,10,1,8,'GLOBALSETTINGS',2);
INSERT INTO `isys_auth` VALUES (38,10,1,8,'LICENCESETTINGS/*',2);
INSERT INTO `isys_auth` VALUES (39,10,1,8,'LICENCESETTINGS',2);
INSERT INTO `isys_auth` VALUES (40,10,1,8,'CONTROLLERHANDLER/*',2);
INSERT INTO `isys_auth` VALUES (41,10,1,8,'CONTROLLERHANDLER',2);
INSERT INTO `isys_auth` VALUES (46,10,1,8,'JDISC/*',2);
INSERT INTO `isys_auth` VALUES (47,10,1,8,'JDISC',2);
INSERT INTO `isys_auth` VALUES (48,10,1,8,'LDAP/*',2);
INSERT INTO `isys_auth` VALUES (49,10,1,8,'LDAP',2);
INSERT INTO `isys_auth` VALUES (50,10,1,8,'TTS/*',2);
INSERT INTO `isys_auth` VALUES (51,10,1,8,'TTS',2);
INSERT INTO `isys_auth` VALUES (52,10,1,10,'SEARCH',2);
INSERT INTO `isys_auth` VALUES (53,11,3,2,'OBJ_ID/*',2);
INSERT INTO `isys_auth` VALUES (54,11,3,2,'OBJ_ID',2);
INSERT INTO `isys_auth` VALUES (55,11,3,2,'OBJ_IN_TYPE/*',2);
INSERT INTO `isys_auth` VALUES (56,11,3,2,'OBJ_IN_TYPE',2);
INSERT INTO `isys_auth` VALUES (57,11,3,2,'OBJ_TYPE/*',2);
INSERT INTO `isys_auth` VALUES (58,11,3,2,'OBJ_TYPE',2);
INSERT INTO `isys_auth` VALUES (59,11,3,2,'LOCATION/*',2);
INSERT INTO `isys_auth` VALUES (60,11,3,2,'LOCATION',2);
INSERT INTO `isys_auth` VALUES (61,11,3,2,'CATEGORY/*',2);
INSERT INTO `isys_auth` VALUES (62,11,3,2,'CATEGORY',2);
INSERT INTO `isys_auth` VALUES (63,11,1,1022,'MULTIEDIT',2);
INSERT INTO `isys_auth` VALUES (64,11,3,7,'LOGBOOK/*',2);
INSERT INTO `isys_auth` VALUES (65,11,3,7,'LOGBOOK',2);
INSERT INTO `isys_auth` VALUES (67,11,1,2,'EXPLORER',2);
INSERT INTO `isys_auth` VALUES (70,11,3,8,'OCS/*',2);
INSERT INTO `isys_auth` VALUES (71,11,3,8,'OCS',2);
INSERT INTO `isys_auth` VALUES (72,11,3,8,'JSONRPCAPI/*',2);
INSERT INTO `isys_auth` VALUES (73,11,3,8,'JSONRPCAPI',2);
INSERT INTO `isys_auth` VALUES (76,11,3,8,'GLOBALSETTINGS/*',2);
INSERT INTO `isys_auth` VALUES (77,11,3,8,'GLOBALSETTINGS',2);
INSERT INTO `isys_auth` VALUES (78,11,3,8,'LICENCESETTINGS/*',2);
INSERT INTO `isys_auth` VALUES (79,11,3,8,'LICENCESETTINGS',2);
INSERT INTO `isys_auth` VALUES (80,11,1,8,'CONTROLLERHANDLER/*',2);
INSERT INTO `isys_auth` VALUES (81,11,1,8,'CONTROLLERHANDLER',2);
INSERT INTO `isys_auth` VALUES (86,11,3,8,'JDISC/*',2);
INSERT INTO `isys_auth` VALUES (87,11,3,8,'JDISC',2);
INSERT INTO `isys_auth` VALUES (88,11,3,8,'LDAP/*',2);
INSERT INTO `isys_auth` VALUES (89,11,3,8,'LDAP',2);
INSERT INTO `isys_auth` VALUES (90,11,3,8,'TTS/*',2);
INSERT INTO `isys_auth` VALUES (91,11,3,8,'TTS',2);
INSERT INTO `isys_auth` VALUES (92,11,1,10,'SEARCH',2);
INSERT INTO `isys_auth` VALUES (93,11,3,1003,'TEMPLATES/*',2);
INSERT INTO `isys_auth` VALUES (94,11,3,1003,'TEMPLATES',2);
INSERT INTO `isys_auth` VALUES (95,11,3,1003,'MASS_CHANGES/*',2);
INSERT INTO `isys_auth` VALUES (96,11,3,1003,'MASS_CHANGES',2);
INSERT INTO `isys_auth` VALUES (97,11,1,1004,'EDITOR',2);
INSERT INTO `isys_auth` VALUES (98,11,1,1004,'ONLINE_REPORTS',2);
INSERT INTO `isys_auth` VALUES (99,11,1,1004,'VIEWS/*',2);
INSERT INTO `isys_auth` VALUES (100,11,1,1004,'VIEWS',2);
INSERT INTO `isys_auth` VALUES (101,11,3,1004,'CUSTOM_REPORT/*',2);
INSERT INTO `isys_auth` VALUES (102,11,3,1004,'CUSTOM_REPORT',2);
INSERT INTO `isys_auth` VALUES (105,11,3,1008,'NOTIFICATIONS/*',2);
INSERT INTO `isys_auth` VALUES (106,11,3,1008,'NOTIFICATIONS',2);
INSERT INTO `isys_auth` VALUES (107,12,31,2,'OBJ_ID/*',2);
INSERT INTO `isys_auth` VALUES (108,12,31,2,'OBJ_ID',2);
INSERT INTO `isys_auth` VALUES (109,12,31,2,'OBJ_IN_TYPE/*',2);
INSERT INTO `isys_auth` VALUES (110,12,31,2,'OBJ_IN_TYPE',2);
INSERT INTO `isys_auth` VALUES (111,12,31,2,'OBJ_TYPE/*',2);
INSERT INTO `isys_auth` VALUES (112,12,31,2,'OBJ_TYPE',2);
INSERT INTO `isys_auth` VALUES (113,12,31,2,'LOCATION/*',2);
INSERT INTO `isys_auth` VALUES (114,12,31,2,'LOCATION',2);
INSERT INTO `isys_auth` VALUES (115,12,31,2,'CATEGORY/*',2);
INSERT INTO `isys_auth` VALUES (116,12,31,2,'CATEGORY',2);
INSERT INTO `isys_auth` VALUES (117,12,9,1022,'MULTIEDIT',2);
INSERT INTO `isys_auth` VALUES (118,12,15,7,'LOGBOOK/*',2);
INSERT INTO `isys_auth` VALUES (119,12,15,7,'LOGBOOK',2);
INSERT INTO `isys_auth` VALUES (120,12,15,8,'SYSTEM',2);
INSERT INTO `isys_auth` VALUES (121,12,1,2,'EXPLORER',2);
INSERT INTO `isys_auth` VALUES (124,12,15,8,'OCS/*',2);
INSERT INTO `isys_auth` VALUES (125,12,15,8,'OCS',2);
INSERT INTO `isys_auth` VALUES (126,12,15,8,'JSONRPCAPI/*',2);
INSERT INTO `isys_auth` VALUES (127,12,15,8,'JSONRPCAPI',2);
INSERT INTO `isys_auth` VALUES (130,12,15,8,'GLOBALSETTINGS/*',2);
INSERT INTO `isys_auth` VALUES (131,12,15,8,'GLOBALSETTINGS',2);
INSERT INTO `isys_auth` VALUES (132,12,15,8,'LICENCESETTINGS/*',2);
INSERT INTO `isys_auth` VALUES (133,12,15,8,'LICENCESETTINGS',2);
INSERT INTO `isys_auth` VALUES (134,12,9,8,'CONTROLLERHANDLER/*',2);
INSERT INTO `isys_auth` VALUES (135,12,9,8,'CONTROLLERHANDLER',2);
INSERT INTO `isys_auth` VALUES (140,12,15,8,'JDISC/*',2);
INSERT INTO `isys_auth` VALUES (141,12,15,8,'JDISC',2);
INSERT INTO `isys_auth` VALUES (142,12,15,8,'LDAP/*',2);
INSERT INTO `isys_auth` VALUES (143,12,15,8,'LDAP',2);
INSERT INTO `isys_auth` VALUES (144,12,15,8,'TTS/*',2);
INSERT INTO `isys_auth` VALUES (145,12,15,8,'TTS',2);
INSERT INTO `isys_auth` VALUES (146,12,1,10,'SEARCH',2);
INSERT INTO `isys_auth` VALUES (147,12,15,1003,'TEMPLATES/*',2);
INSERT INTO `isys_auth` VALUES (148,12,15,1003,'TEMPLATES',2);
INSERT INTO `isys_auth` VALUES (149,12,15,1003,'MASS_CHANGES/*',2);
INSERT INTO `isys_auth` VALUES (150,12,15,1003,'MASS_CHANGES',2);
INSERT INTO `isys_auth` VALUES (151,12,9,1004,'EDITOR',2);
INSERT INTO `isys_auth` VALUES (152,12,1,1004,'ONLINE_REPORTS',2);
INSERT INTO `isys_auth` VALUES (153,12,1,1004,'VIEWS/*',2);
INSERT INTO `isys_auth` VALUES (154,12,1,1004,'VIEWS',2);
INSERT INTO `isys_auth` VALUES (155,12,15,1004,'CUSTOM_REPORT/*',2);
INSERT INTO `isys_auth` VALUES (156,12,15,1004,'CUSTOM_REPORT',2);
INSERT INTO `isys_auth` VALUES (159,12,15,1008,'NOTIFICATIONS/*',2);
INSERT INTO `isys_auth` VALUES (160,12,15,1008,'NOTIFICATIONS',2);
INSERT INTO `isys_auth` VALUES (161,13,3,2,'OBJ_ID/*',2);
INSERT INTO `isys_auth` VALUES (162,13,3,2,'OBJ_ID',2);
INSERT INTO `isys_auth` VALUES (163,13,3,2,'OBJ_IN_TYPE/*',2);
INSERT INTO `isys_auth` VALUES (164,13,3,2,'OBJ_IN_TYPE',2);
INSERT INTO `isys_auth` VALUES (165,13,3,2,'OBJ_TYPE/*',2);
INSERT INTO `isys_auth` VALUES (166,13,3,2,'OBJ_TYPE',2);
INSERT INTO `isys_auth` VALUES (167,13,3,2,'LOCATION/*',2);
INSERT INTO `isys_auth` VALUES (168,13,3,2,'LOCATION',2);
INSERT INTO `isys_auth` VALUES (169,13,3,2,'CATEGORY/*',2);
INSERT INTO `isys_auth` VALUES (170,13,3,2,'CATEGORY',2);
INSERT INTO `isys_auth` VALUES (171,13,1,1022,'MULTIEDIT',2);
INSERT INTO `isys_auth` VALUES (172,13,3,7,'LOGBOOK/*',2);
INSERT INTO `isys_auth` VALUES (173,13,3,7,'LOGBOOK',2);
INSERT INTO `isys_auth` VALUES (175,13,1,2,'EXPLORER',2);
INSERT INTO `isys_auth` VALUES (178,13,3,8,'OCS/*',2);
INSERT INTO `isys_auth` VALUES (179,13,3,8,'OCS',2);
INSERT INTO `isys_auth` VALUES (180,13,3,8,'JSONRPCAPI/*',2);
INSERT INTO `isys_auth` VALUES (181,13,3,8,'JSONRPCAPI',2);
INSERT INTO `isys_auth` VALUES (184,13,3,8,'GLOBALSETTINGS/*',2);
INSERT INTO `isys_auth` VALUES (185,13,3,8,'GLOBALSETTINGS',2);
INSERT INTO `isys_auth` VALUES (186,13,3,8,'LICENCESETTINGS/*',2);
INSERT INTO `isys_auth` VALUES (187,13,3,8,'LICENCESETTINGS',2);
INSERT INTO `isys_auth` VALUES (188,13,1,8,'CONTROLLERHANDLER/*',2);
INSERT INTO `isys_auth` VALUES (189,13,1,8,'CONTROLLERHANDLER',2);
INSERT INTO `isys_auth` VALUES (194,13,3,8,'JDISC/*',2);
INSERT INTO `isys_auth` VALUES (195,13,3,8,'JDISC',2);
INSERT INTO `isys_auth` VALUES (196,13,3,8,'LDAP/*',2);
INSERT INTO `isys_auth` VALUES (197,13,3,8,'LDAP',2);
INSERT INTO `isys_auth` VALUES (198,13,3,8,'TTS/*',2);
INSERT INTO `isys_auth` VALUES (199,13,3,8,'TTS',2);
INSERT INTO `isys_auth` VALUES (200,13,1,10,'SEARCH',2);
INSERT INTO `isys_auth` VALUES (201,13,3,1003,'TEMPLATES/*',2);
INSERT INTO `isys_auth` VALUES (202,13,3,1003,'TEMPLATES',2);
INSERT INTO `isys_auth` VALUES (203,13,3,1003,'MASS_CHANGES/*',2);
INSERT INTO `isys_auth` VALUES (204,13,3,1003,'MASS_CHANGES',2);
INSERT INTO `isys_auth` VALUES (205,13,1,1004,'EDITOR',2);
INSERT INTO `isys_auth` VALUES (206,13,1,1004,'ONLINE_REPORTS',2);
INSERT INTO `isys_auth` VALUES (207,13,1,1004,'VIEWS/*',2);
INSERT INTO `isys_auth` VALUES (208,13,1,1004,'VIEWS',2);
INSERT INTO `isys_auth` VALUES (209,13,3,1004,'CUSTOM_REPORT/*',2);
INSERT INTO `isys_auth` VALUES (210,13,3,1004,'CUSTOM_REPORT',2);
INSERT INTO `isys_auth` VALUES (213,14,2049,2,'OBJ_ID/*',2);
INSERT INTO `isys_auth` VALUES (214,14,2049,2,'OBJ_ID',2);
INSERT INTO `isys_auth` VALUES (215,14,2049,2,'OBJ_IN_TYPE/*',2);
INSERT INTO `isys_auth` VALUES (216,14,2049,2,'OBJ_IN_TYPE',2);
INSERT INTO `isys_auth` VALUES (217,14,2049,2,'OBJ_TYPE/*',2);
INSERT INTO `isys_auth` VALUES (218,14,2049,2,'OBJ_TYPE',2);
INSERT INTO `isys_auth` VALUES (219,14,2049,2,'LOCATION/*',2);
INSERT INTO `isys_auth` VALUES (220,14,2049,2,'LOCATION',2);
INSERT INTO `isys_auth` VALUES (221,14,2049,2,'CATEGORY/*',2);
INSERT INTO `isys_auth` VALUES (222,14,2049,2,'CATEGORY',2);
INSERT INTO `isys_auth` VALUES (223,14,9,1022,'MULTIEDIT',2);
INSERT INTO `isys_auth` VALUES (224,14,2049,7,'LOGBOOK/*',2);
INSERT INTO `isys_auth` VALUES (225,14,2049,7,'LOGBOOK',2);
INSERT INTO `isys_auth` VALUES (226,14,2049,8,'SYSTEM',2);
INSERT INTO `isys_auth` VALUES (227,14,1,2,'EXPLORER',2);
INSERT INTO `isys_auth` VALUES (230,14,2049,8,'OCS/*',2);
INSERT INTO `isys_auth` VALUES (231,14,2049,8,'OCS',2);
INSERT INTO `isys_auth` VALUES (232,14,2049,8,'JSONRPCAPI/*',2);
INSERT INTO `isys_auth` VALUES (233,14,2049,8,'JSONRPCAPI',2);
INSERT INTO `isys_auth` VALUES (234,14,2049,8,'SYSTEMTOOLS/*',2);
INSERT INTO `isys_auth` VALUES (235,14,2049,8,'SYSTEMTOOLS',2);
INSERT INTO `isys_auth` VALUES (236,14,2049,8,'GLOBALSETTINGS/*',2);
INSERT INTO `isys_auth` VALUES (237,14,2049,8,'GLOBALSETTINGS',2);
INSERT INTO `isys_auth` VALUES (238,14,2049,8,'LICENCESETTINGS/*',2);
INSERT INTO `isys_auth` VALUES (239,14,2049,8,'LICENCESETTINGS',2);
INSERT INTO `isys_auth` VALUES (240,14,9,8,'CONTROLLERHANDLER/*',2);
INSERT INTO `isys_auth` VALUES (241,14,9,8,'CONTROLLERHANDLER',2);
INSERT INTO `isys_auth` VALUES (246,14,2049,8,'JDISC/*',2);
INSERT INTO `isys_auth` VALUES (247,14,2049,8,'JDISC',2);
INSERT INTO `isys_auth` VALUES (248,14,2049,8,'LDAP/*',2);
INSERT INTO `isys_auth` VALUES (249,14,2049,8,'LDAP',2);
INSERT INTO `isys_auth` VALUES (250,14,2049,8,'TTS/*',2);
INSERT INTO `isys_auth` VALUES (251,14,2049,8,'TTS',2);
INSERT INTO `isys_auth` VALUES (252,14,1,10,'SEARCH',2);
INSERT INTO `isys_auth` VALUES (253,14,2049,12,'TABLE/*',2);
INSERT INTO `isys_auth` VALUES (254,14,2049,12,'TABLE',2);
INSERT INTO `isys_auth` VALUES (255,14,2049,12,'CUSTOM/*',2);
INSERT INTO `isys_auth` VALUES (256,14,2049,12,'CUSTOM',2);
INSERT INTO `isys_auth` VALUES (257,14,2049,50,'IMPORT/*',2);
INSERT INTO `isys_auth` VALUES (258,14,2049,50,'IMPORT',2);
INSERT INTO `isys_auth` VALUES (259,14,2049,1002,'EXPORT/*',2);
INSERT INTO `isys_auth` VALUES (260,14,2049,1002,'EXPORT',2);
INSERT INTO `isys_auth` VALUES (261,14,2049,1003,'TEMPLATES/*',2);
INSERT INTO `isys_auth` VALUES (262,14,2049,1003,'TEMPLATES',2);
INSERT INTO `isys_auth` VALUES (263,14,2049,1003,'MASS_CHANGES/*',2);
INSERT INTO `isys_auth` VALUES (264,14,2049,1003,'MASS_CHANGES',2);
INSERT INTO `isys_auth` VALUES (265,14,2049,1004,'EDITOR',2);
INSERT INTO `isys_auth` VALUES (266,14,2049,1004,'ONLINE_REPORTS',2);
INSERT INTO `isys_auth` VALUES (267,14,2049,1004,'VIEWS/*',2);
INSERT INTO `isys_auth` VALUES (268,14,2049,1004,'VIEWS',2);
INSERT INTO `isys_auth` VALUES (269,14,2049,1004,'CUSTOM_REPORT/*',2);
INSERT INTO `isys_auth` VALUES (270,14,2049,1004,'CUSTOM_REPORT',2);
INSERT INTO `isys_auth` VALUES (273,14,2049,1008,'NOTIFICATIONS/*',2);
INSERT INTO `isys_auth` VALUES (274,14,2049,1008,'NOTIFICATIONS',2);
INSERT INTO `isys_auth` VALUES (275,14,1,1012,'OVERVIEW',2);
INSERT INTO `isys_auth` VALUES (276,14,2049,1012,'MODULE/*',2);
INSERT INTO `isys_auth` VALUES (277,14,2049,1012,'MODULE',2);
INSERT INTO `isys_auth` VALUES (288,10,9,1016,'CONFIGURE_WIDGETS',2);
INSERT INTO `isys_auth` VALUES (289,10,9,1016,'CONFIGURE_DASHBOARD',2);
INSERT INTO `isys_auth` VALUES (290,11,9,1016,'CONFIGURE_WIDGETS',2);
INSERT INTO `isys_auth` VALUES (291,11,9,1016,'CONFIGURE_DASHBOARD',2);
INSERT INTO `isys_auth` VALUES (292,12,9,1016,'CONFIGURE_WIDGETS',2);
INSERT INTO `isys_auth` VALUES (293,12,9,1016,'CONFIGURE_DASHBOARD',2);
INSERT INTO `isys_auth` VALUES (294,13,9,1016,'CONFIGURE_WIDGETS',2);
INSERT INTO `isys_auth` VALUES (295,13,9,1016,'CONFIGURE_DASHBOARD',2);
INSERT INTO `isys_auth` VALUES (296,14,9,1016,'CONFIGURE_WIDGETS',2);
INSERT INTO `isys_auth` VALUES (297,14,9,1016,'CONFIGURE_DASHBOARD',2);
INSERT INTO `isys_auth` VALUES (298,14,4095,1016,'CONFIGURE_OTHER_DASHBOARDS',2);
INSERT INTO `isys_auth` VALUES (315,10,3,1004,'REPORTS_IN_CATEGORY/1',2);
INSERT INTO `isys_auth` VALUES (316,11,3,1004,'REPORTS_IN_CATEGORY/1',2);
INSERT INTO `isys_auth` VALUES (317,12,3,1004,'REPORTS_IN_CATEGORY/1',2);
INSERT INTO `isys_auth` VALUES (318,13,3,1004,'REPORTS_IN_CATEGORY/1',2);
INSERT INTO `isys_auth` VALUES (320,14,9,1017,'EXPORT',2);
INSERT INTO `isys_auth` VALUES (321,14,9,1017,'TAGS',2);
INSERT INTO `isys_auth` VALUES (322,12,9,1017,'EXPORT',2);
INSERT INTO `isys_auth` VALUES (323,12,9,1017,'TAGS',2);
INSERT INTO `isys_auth` VALUES (324,11,9,1017,'EXPORT',2);
INSERT INTO `isys_auth` VALUES (325,11,9,1017,'TAGS',2);
INSERT INTO `isys_auth` VALUES (326,14,9,1017,'EXPORT',2);
INSERT INTO `isys_auth` VALUES (327,14,9,1017,'TAGS',2);
INSERT INTO `isys_auth` VALUES (328,12,9,1017,'EXPORT',2);
INSERT INTO `isys_auth` VALUES (329,12,9,1017,'TAGS',2);
INSERT INTO `isys_auth` VALUES (330,11,9,1017,'EXPORT',2);
INSERT INTO `isys_auth` VALUES (331,11,9,1017,'TAGS',2);
INSERT INTO `isys_auth` VALUES (332,14,3,1022,'HOOKS',2);
INSERT INTO `isys_auth` VALUES (333,14,3,1022,'HISTORY',2);
INSERT INTO `isys_auth` VALUES (334,14,2049,1021,'TYPE_CONFIG',2);
INSERT INTO `isys_auth` VALUES (335,14,2049,1021,'FILTER_CONFIG',2);
INSERT INTO `isys_auth` VALUES (336,14,23,2,'EXPLORER_PROFILES',2);
INSERT INTO `isys_auth` VALUES (337,12,23,2,'EXPLORER_PROFILES',2);
INSERT INTO `isys_auth` VALUES (338,11,23,2,'EXPLORER_PROFILES',2);
INSERT INTO `isys_auth` VALUES (339,10,3,2,'EXPLORER_PROFILES',2);
INSERT INTO `isys_auth` VALUES (340,14,9,2,'OVERWRITE_USER_LIST_CONFIG',2);
INSERT INTO `isys_auth` VALUES (341,14,9,2,'DEFINE_STANDARD_LIST_CONFIG',2);
INSERT INTO `isys_auth` VALUES (342,10,1,2,'LOCATION_VIEW',2);
INSERT INTO `isys_auth` VALUES (343,11,1,2,'LOCATION_VIEW',2);
INSERT INTO `isys_auth` VALUES (344,12,1,2,'LOCATION_VIEW',2);
INSERT INTO `isys_auth` VALUES (345,13,1,2,'LOCATION_VIEW',2);
INSERT INTO `isys_auth` VALUES (346,14,1,2,'LOCATION_VIEW',2);
INSERT INTO `isys_auth` VALUES (349,14,2049,1004,'REPORTS_IN_CATEGORY',2);
INSERT INTO `isys_auth` VALUES (350,14,2049,1004,'REPORTS_IN_CATEGORY/*',2);
INSERT INTO `isys_auth` VALUES (351,12,15,1004,'REPORTS_IN_CATEGORY',2);
INSERT INTO `isys_auth` VALUES (352,12,15,1004,'REPORTS_IN_CATEGORY/*',2);
INSERT INTO `isys_auth` VALUES (353,11,7,1004,'REPORTS_IN_CATEGORY',2);
INSERT INTO `isys_auth` VALUES (354,11,7,1004,'REPORTS_IN_CATEGORY/*',2);
INSERT INTO `isys_auth` VALUES (355,10,1,1004,'REPORTS_IN_CATEGORY',2);
INSERT INTO `isys_auth` VALUES (356,10,1,1004,'REPORTS_IN_CATEGORY/*',2);
INSERT INTO `isys_auth` VALUES (357,14,2049,1004,'ONLINE_REPORTS',2);
INSERT INTO `isys_auth` VALUES (358,12,9,1004,'ONLINE_REPORTS',2);
INSERT INTO `isys_auth` VALUES (359,11,9,1004,'ONLINE_REPORTS',2);
INSERT INTO `isys_auth` VALUES (360,11,7,8,'QR_CONFIG',2);
INSERT INTO `isys_auth` VALUES (361,11,7,8,'QR_CONFIG/*',2);
INSERT INTO `isys_auth` VALUES (362,12,7,8,'QR_CONFIG',2);
INSERT INTO `isys_auth` VALUES (363,12,7,8,'QR_CONFIG/*',2);
INSERT INTO `isys_auth` VALUES (364,14,2049,8,'QR_CONFIG',2);
INSERT INTO `isys_auth` VALUES (365,14,2049,8,'QR_CONFIG/*',2);
INSERT INTO `isys_auth` VALUES (398,14,2049,1004,'REPORT_CATEGORY',2);
INSERT INTO `isys_auth` VALUES (399,14,9,2,'LIST_CONFIG',2);
INSERT INTO `isys_auth` VALUES (400,14,2049,8,'OBJECT_MATCHING',2);
INSERT INTO `isys_auth` VALUES (401,14,2049,8,'HINVENTORY/*',2);
INSERT INTO `isys_auth` VALUES (413,10,1,8,'COMMAND',2);
INSERT INTO `isys_auth` VALUES (414,11,1,8,'COMMAND',2);
INSERT INTO `isys_auth` VALUES (415,12,9,8,'COMMAND',2);
INSERT INTO `isys_auth` VALUES (416,13,1,8,'COMMAND',2);
INSERT INTO `isys_auth` VALUES (417,14,9,8,'COMMAND',2);
INSERT INTO `isys_auth` VALUES (418,10,1,8,'COMMAND/*',2);
INSERT INTO `isys_auth` VALUES (419,11,1,8,'COMMAND/*',2);
INSERT INTO `isys_auth` VALUES (420,12,9,8,'COMMAND/*',2);
INSERT INTO `isys_auth` VALUES (421,13,1,8,'COMMAND/*',2);
INSERT INTO `isys_auth` VALUES (422,14,9,8,'COMMAND/*',2);
INSERT INTO `isys_auth` VALUES (423,14,8,2,'MULTILIST_CONFIG',2);
INSERT INTO `isys_auth` VALUES (424,14,9,2,'OVERWRITE_USER_MULTILIST_CONFIG',2);
INSERT INTO `isys_auth` VALUES (425,14,9,2,'DEFINE_STANDARD_MULTILIST_CONFIG',2);
INSERT INTO `isys_auth` VALUES (437,14,7,2,'OBJECT_BROWSER_CONFIGURATION',2);
INSERT INTO `isys_auth` VALUES (438,14,39,50,'CSV_IMPORT_PROFILES',2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_backup_cycle` (
  `isys_backup_cycle__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_backup_cycle__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_backup_cycle__description` text COLLATE utf8_unicode_ci,
  `isys_backup_cycle__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_backup_cycle__property` int(10) DEFAULT NULL,
  `isys_backup_cycle__sort` int(10) DEFAULT NULL,
  `isys_backup_cycle__status` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_backup_cycle__id`),
  KEY `isys_backup_cycle__title` (`isys_backup_cycle__title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_backup_cycle` VALUES (1,'LC__CMDB__CATG__BACKUP__CYCLE__DAILY',NULL,'C__CMDB__BACKUP_CYCLE__DAILY',NULL,1,2);
INSERT INTO `isys_backup_cycle` VALUES (2,'LC__CMDB__CATG__BACKUP__CYCLE__WEEKLY',NULL,'C__CMDB__BACKUP_CYCLE__WEEKLY',NULL,2,2);
INSERT INTO `isys_backup_cycle` VALUES (3,'LC__CMDB__CATG__BACKUP__CYCLE__14_DAY',NULL,'C__CMDB__BACKUP_CYCLE__14_DAY',NULL,3,2);
INSERT INTO `isys_backup_cycle` VALUES (4,'LC__CMDB__CATG__BACKUP__CYCLE__MONTHLY',NULL,'C__CMDB__BACKUP_CYCLE__MONTHLY',NULL,4,2);
INSERT INTO `isys_backup_cycle` VALUES (5,'LC__CMDB__CATG__BACKUP__CYCLE__YEARLY',NULL,'C__CMDB__BACKUP_CYCLE__YEARLY',NULL,5,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_backup_type` (
  `isys_backup_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_backup_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_backup_type__description` text COLLATE utf8_unicode_ci,
  `isys_backup_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_backup_type__property` int(10) DEFAULT NULL,
  `isys_backup_type__sort` int(10) DEFAULT NULL,
  `isys_backup_type__status` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_backup_type__id`),
  KEY `isys_backup_type__title` (`isys_backup_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_backup_type` VALUES (1,'Snapshot',NULL,'C__CMDB__BACKUP_TYPE__SNAPSHOT',NULL,1,2);
INSERT INTO `isys_backup_type` VALUES (2,'File',NULL,'C__CMDB__BACKUP_TYPE__FILE',NULL,2,2);
INSERT INTO `isys_backup_type` VALUES (3,'Cloning',NULL,'C__CMDB__BACKUP_TYPE__CLONING',NULL,3,2);
INSERT INTO `isys_backup_type` VALUES (4,'Archiv',NULL,'C__CMDB__BACKUP_TYPE__ARCHIV',NULL,4,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_business_unit` (
  `isys_business_unit__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_business_unit__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_business_unit__description` text COLLATE utf8_unicode_ci,
  `isys_business_unit__const` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_business_unit__sort` int(10) unsigned DEFAULT NULL,
  `isys_business_unit__status` int(10) unsigned DEFAULT '2',
  `isys_business_unit__property` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`isys_business_unit__id`),
  KEY `isys_business_unit__title` (`isys_business_unit__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cable_colour` (
  `isys_cable_colour__id` int(10) NOT NULL AUTO_INCREMENT,
  `isys_cable_colour__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cable_colour__description` text COLLATE utf8_unicode_ci,
  `isys_cable_colour__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cable_colour__sort` int(10) unsigned DEFAULT NULL,
  `isys_cable_colour__status` int(10) unsigned DEFAULT NULL,
  `isys_cable_colour__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cable_colour__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cable_connection` (
  `isys_cable_connection__id` int(10) NOT NULL AUTO_INCREMENT,
  `isys_cable_connection__isys_obj__id` int(10) unsigned DEFAULT NULL COMMENT 'Cable object',
  `isys_cable_connection__isys_cable_type__id` int(10) DEFAULT NULL,
  PRIMARY KEY (`isys_cable_connection__id`),
  KEY `isys_cable_connection__isys_cable_type__id` (`isys_cable_connection__isys_cable_type__id`),
  KEY `isys_cable_connection__isys_obj__id` (`isys_cable_connection__isys_obj__id`),
  CONSTRAINT `isys_cable_connection_ibfk_1` FOREIGN KEY (`isys_cable_connection__isys_cable_type__id`) REFERENCES `isys_cable_type` (`isys_cable_type__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cable_connection_ibfk_2` FOREIGN KEY (`isys_cable_connection__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cable_occupancy` (
  `isys_cable_occupancy__id` int(10) NOT NULL AUTO_INCREMENT,
  `isys_cable_occupancy__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cable_occupancy__description` text COLLATE utf8_unicode_ci,
  `isys_cable_occupancy__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cable_occupancy__sort` int(10) unsigned DEFAULT NULL,
  `isys_cable_occupancy__status` int(10) unsigned DEFAULT NULL,
  `isys_cable_occupancy__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cable_occupancy__id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_cable_occupancy` VALUES (1,'LC__CATS_CABLE_TYPE__8WIRED',NULL,NULL,NULL,2,NULL);
INSERT INTO `isys_cable_occupancy` VALUES (2,'LC__CATS_CABLE_TYPE__4WIRED',NULL,'',NULL,2,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cable_type` (
  `isys_cable_type__id` int(10) NOT NULL AUTO_INCREMENT,
  `isys_cable_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cable_type__description` text COLLATE utf8_unicode_ci,
  `isys_cable_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cable_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_cable_type__status` int(10) unsigned DEFAULT NULL,
  `isys_cable_type__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cable_type__id`),
  KEY `isys_cable_type__title` (`isys_cable_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_cable_type` VALUES (1,'CAT5',NULL,'C__CABLE_TYPE__CAT5',NULL,2,NULL);
INSERT INTO `isys_cable_type` VALUES (2,'CAT6',NULL,'C__CABLE_TYPE__CAT6',NULL,2,NULL);
INSERT INTO `isys_cable_type` VALUES (3,'LWL',NULL,'C__CABLE_TYPE__LWL',NULL,2,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cache_qinfo` (
  `isys_cache_qinfo__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cache_qinfo__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cache_qinfo__data` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_cache_qinfo__expiration` int(32) NOT NULL,
  PRIMARY KEY (`isys_cache_qinfo__id`),
  KEY `isys_cache_qinfo__isys_obj__id` (`isys_cache_qinfo__isys_obj__id`),
  CONSTRAINT `isys_cache_qinfo_ibfk_1` FOREIGN KEY (`isys_cache_qinfo__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_calendar` (
  `isys_calendar__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_calendar__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_calendar__description` text COLLATE utf8_unicode_ci,
  `isys_calendar__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_calendar__sort` int(10) unsigned DEFAULT NULL,
  `isys_calendar__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_calendar__id`),
  KEY `isys_calendar__title` (`isys_calendar__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catd_drive` (
  `isys_catd_drive__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catd_drive__visible` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_catd_drive__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catd_drive_type` (
  `isys_catd_drive_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catd_drive_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catd_drive_type__description` int(10) unsigned DEFAULT NULL,
  `isys_catd_drive_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catd_drive_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_catd_drive_type__status` int(10) unsigned DEFAULT NULL,
  `isys_catd_drive_type__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catd_drive_type__id`),
  KEY `isys_catd_drive_type__title` (`isys_catd_drive_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_catd_drive_type` VALUES (1,'LC__CATD_DRIVE_TYPE__PARTION',0,'C__CATD_DRIVE_TYPE__PARTION',5,2,0);
INSERT INTO `isys_catd_drive_type` VALUES (2,'LC__CATD_DRIVE_TYPE__RAID_GROUP',NULL,'C__CATD_DRIVE_TYPE__RAID_GROUP',6,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catd_sanpool` (
  `isys_catd_sanpool__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catd_sanpool__visible` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_catd_sanpool__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_access_list` (
  `isys_catg_access_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_access_list__isys_access_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_access_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_access_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_access_list__url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_access_list__primary` int(10) unsigned DEFAULT '0',
  `isys_catg_access_list__status` int(10) unsigned DEFAULT '1',
  `isys_catg_access_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_access_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_access_list__id`),
  KEY `isys_catg_access_list_FKIndex2` (`isys_catg_access_list__isys_access_type__id`),
  KEY `isys_catg_access_list__isys_obj__id` (`isys_catg_access_list__isys_obj__id`),
  KEY `isys_catg_access_list__status` (`isys_catg_access_list__status`),
  CONSTRAINT `isys_catg_access_list_ibfk_3` FOREIGN KEY (`isys_catg_access_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_access_list_ibfk_4` FOREIGN KEY (`isys_catg_access_list__isys_access_type__id`) REFERENCES `isys_access_type` (`isys_access_type__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_accounting_cost_unit` (
  `isys_catg_accounting_cost_unit__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_accounting_cost_unit__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_accounting_cost_unit__description` text COLLATE utf8_unicode_ci,
  `isys_catg_accounting_cost_unit__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_accounting_cost_unit__sort` int(10) unsigned DEFAULT NULL,
  `isys_catg_accounting_cost_unit__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_catg_accounting_cost_unit__id`),
  KEY `isys_catg_accounting_cost_unit__title` (`isys_catg_accounting_cost_unit__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_accounting_list` (
  `isys_catg_accounting_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_accounting_list__isys_guarantee_period_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_accounting_list__isys_contact__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_accounting_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_accounting_list__invoice_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_accounting_list__order_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_accounting_list__guarantee_period` bigint(20) unsigned DEFAULT NULL,
  `isys_catg_accounting_list__acquirementdate` date DEFAULT NULL,
  `isys_catg_accounting_list__status` int(10) unsigned DEFAULT '2',
  `isys_catg_accounting_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_accounting_list__price` double DEFAULT NULL,
  `isys_catg_accounting_list__isys_account__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_accounting_list__inventory_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_accounting_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_accounting_list__operation_expense` double(11,2) DEFAULT NULL,
  `isys_catg_accounting_list__isys_interval__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_accounting_list__isys_catg_accounting_cost_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_accounting_list__delivery_note_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_accounting_list__isys_catg_accounting_procurement__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_accounting_list__delivery_date` date DEFAULT NULL,
  `isys_catg_accounting_list__order_date` date DEFAULT NULL,
  `isys_catg_accounting_list__guarantee_period_base` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`isys_catg_accounting_list__id`),
  KEY `isys_catg_accounting_list_FKIndex2` (`isys_catg_accounting_list__isys_guarantee_period_unit__id`),
  KEY `isys_catg_accounting_list_FKIndex3` (`isys_catg_accounting_list__isys_contact__id`),
  KEY `isys_catg_accounting_list__isys_account__id` (`isys_catg_accounting_list__isys_account__id`),
  KEY `isys_catg_accounting_list__isys_obj__id` (`isys_catg_accounting_list__isys_obj__id`),
  KEY `isys_catg_accounting_list__isys_interval__id` (`isys_catg_accounting_list__isys_interval__id`),
  KEY `isys_catg_accounting_list__isys_catg_accounting_cost_unit__id` (`isys_catg_accounting_list__isys_catg_accounting_cost_unit__id`),
  KEY `isys_catg_accounting_list__isys_catg_accounting_procurement__id` (`isys_catg_accounting_list__isys_catg_accounting_procurement__id`),
  CONSTRAINT `isys_catg_accounting_list__isys_catg_accounting_cost_unit__id` FOREIGN KEY (`isys_catg_accounting_list__isys_catg_accounting_cost_unit__id`) REFERENCES `isys_catg_accounting_cost_unit` (`isys_catg_accounting_cost_unit__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_accounting_list__isys_catg_accounting_procurement__id` FOREIGN KEY (`isys_catg_accounting_list__isys_catg_accounting_procurement__id`) REFERENCES `isys_catg_accounting_procurement` (`isys_catg_accounting_procurement__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_accounting_list_ibfk_2` FOREIGN KEY (`isys_catg_accounting_list__isys_guarantee_period_unit__id`) REFERENCES `isys_guarantee_period_unit` (`isys_guarantee_period_unit__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_catg_accounting_list_ibfk_3` FOREIGN KEY (`isys_catg_accounting_list__isys_contact__id`) REFERENCES `isys_contact` (`isys_contact__id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `isys_catg_accounting_list_ibfk_4` FOREIGN KEY (`isys_catg_accounting_list__isys_account__id`) REFERENCES `isys_account` (`isys_account__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_accounting_list_ibfk_5` FOREIGN KEY (`isys_catg_accounting_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_accounting_list_ibfk_6` FOREIGN KEY (`isys_catg_accounting_list__isys_interval__id`) REFERENCES `isys_interval` (`isys_interval__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_accounting_procurement` (
  `isys_catg_accounting_procurement__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_accounting_procurement__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_accounting_procurement__description` text COLLATE utf8_unicode_ci,
  `isys_catg_accounting_procurement__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_accounting_procurement__sort` int(10) unsigned DEFAULT NULL,
  `isys_catg_accounting_procurement__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_catg_accounting_procurement__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_address_list` (
  `isys_catg_address_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_address_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_address_list__address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_address_list__street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_address_list__house_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_address_list__postalcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_address_list__city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_address_list__region` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_address_list__country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_address_list__stories` int(10) unsigned DEFAULT NULL,
  `isys_catg_address_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_address_list__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_address_list__id`),
  KEY `isys_catg_address_list__isys_obj__id__FK` (`isys_catg_address_list__isys_obj__id`),
  CONSTRAINT `isys_catg_address_list__isys_obj__id__FK` FOREIGN KEY (`isys_catg_address_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_aircraft_list` (
  `isys_catg_aircraft_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_aircraft_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_aircraft_list__registration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_aircraft_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_aircraft_list__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_catg_aircraft_list__id`),
  KEY `isys_catg_aircraft_list__isys_obj__id` (`isys_catg_aircraft_list__isys_obj__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_application_list` (
  `isys_catg_application_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_application_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_application_list__isys_cats_lic_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_application_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_application_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_application_list__status` int(10) unsigned DEFAULT '1',
  `isys_catg_application_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_application_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_application_list__isys_cats_app_variant_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_application_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_application_list__bequest_nagios_services` tinyint(1) DEFAULT '1',
  `isys_catg_application_list__isys_catg_application_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_application_list__isys_catg_application_priority__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_application_list__isys_catg_version_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_application_list__id`),
  KEY `isys_catg_application_list_FKIndex2` (`isys_catg_application_list__isys_obj__id`),
  KEY `isys_catg_application_list__isys_catg_lic_list__id` (`isys_catg_application_list__isys_cats_lic_list__id`),
  KEY `isys_catg_application_list__isys_connection__id` (`isys_catg_application_list__isys_connection__id`),
  KEY `isys_catg_application_list__isys_catg_relation_list__id` (`isys_catg_application_list__isys_catg_relation_list__id`),
  KEY `isys_catg_application_list__isys_cats_app_variant_list__id` (`isys_catg_application_list__isys_cats_app_variant_list__id`),
  KEY `isys_catg_application_list__isys_catg_application_type__id` (`isys_catg_application_list__isys_catg_application_type__id`),
  KEY `isys_catg_application_list__isys_catg_application_priority__id` (`isys_catg_application_list__isys_catg_application_priority__id`),
  KEY `isys_catg_application_list__isys_catg_version_list__id` (`isys_catg_application_list__isys_catg_version_list__id`),
  KEY `isys_catg_application_list__status` (`isys_catg_application_list__status`),
  KEY `os` (`isys_catg_application_list__isys_obj__id`,`isys_catg_application_list__isys_catg_application_type__id`,`isys_catg_application_list__isys_catg_application_priority__id`,`isys_catg_application_list__status`),
  CONSTRAINT `isys_catg_application_list__isys_catg_application_priority__id` FOREIGN KEY (`isys_catg_application_list__isys_catg_application_priority__id`) REFERENCES `isys_catg_application_priority` (`isys_catg_application_priority__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_application_list__isys_catg_application_type__id` FOREIGN KEY (`isys_catg_application_list__isys_catg_application_type__id`) REFERENCES `isys_catg_application_type` (`isys_catg_application_type__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_application_list__isys_catg_relation_list__id` FOREIGN KEY (`isys_catg_application_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_application_list__isys_catg_version_list__id` FOREIGN KEY (`isys_catg_application_list__isys_catg_version_list__id`) REFERENCES `isys_catg_version_list` (`isys_catg_version_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_application_list_ibfk_3` FOREIGN KEY (`isys_catg_application_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_application_list_ibfk_5` FOREIGN KEY (`isys_catg_application_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_application_list_ibfk_6` FOREIGN KEY (`isys_catg_application_list__isys_cats_app_variant_list__id`) REFERENCES `isys_cats_app_variant_list` (`isys_cats_app_variant_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_application_list_ibfk_7` FOREIGN KEY (`isys_catg_application_list__isys_cats_lic_list__id`) REFERENCES `isys_cats_lic_list` (`isys_cats_lic_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_application_priority` (
  `isys_catg_application_priority__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_application_priority__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_application_priority__description` text COLLATE utf8_unicode_ci,
  `isys_catg_application_priority__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_application_priority__property` int(10) DEFAULT NULL,
  `isys_catg_application_priority__sort` int(10) unsigned DEFAULT NULL,
  `isys_catg_application_priority__status` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_catg_application_priority__id`),
  KEY `isys_catg_application_priority__const` (`isys_catg_application_priority__const`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_catg_application_priority` VALUES (1,'LC__CATG__APPLICATION_PRIORITY__PRIMARY',NULL,'C__CATG__APPLICATION_PRIORITY__PRIMARY',NULL,NULL,2);
INSERT INTO `isys_catg_application_priority` VALUES (2,'LC__CATG__APPLICATION_PRIORITY__SECONDARY',NULL,'C__CATG__APPLICATION_PRIORITY__SECONDARY',NULL,NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_application_type` (
  `isys_catg_application_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_application_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_application_type__description` text COLLATE utf8_unicode_ci,
  `isys_catg_application_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_application_type__property` int(10) DEFAULT NULL,
  `isys_catg_application_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_catg_application_type__status` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_catg_application_type__id`),
  KEY `isys_catg_application_type__const` (`isys_catg_application_type__const`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_catg_application_type` VALUES (1,'LC__CATG__APPLICATION_TYPE__SOFTWARE',NULL,'C__CATG__APPLICATION_TYPE__SOFTWARE',NULL,NULL,2);
INSERT INTO `isys_catg_application_type` VALUES (2,'LC__CATG__APPLICATION_TYPE__OPERATING_SYSTEM',NULL,'C__CATG__APPLICATION_TYPE__OPERATING_SYSTEM',NULL,NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_assigned_cards_list` (
  `isys_catg_assigned_cards_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_assigned_cards_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_assigned_cards_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_assigned_cards_list__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_assigned_cards_list__sort` int(10) unsigned DEFAULT NULL,
  `isys_catg_assigned_cards_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_assigned_cards_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_assigned_cards_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_assigned_cards_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_assigned_cards_list__isys_obj__id__card` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_catg_assigned_cards_list__id`),
  KEY `isys_catg_assigned_cards_list__isys_obj__id` (`isys_catg_assigned_cards_list__isys_obj__id`),
  KEY `isys_catg_assigned_cards_list__isys_obj__id__card` (`isys_catg_assigned_cards_list__isys_obj__id__card`),
  KEY `isys_catg_assigned_cards_list__isys_catg_relation_list__id` (`isys_catg_assigned_cards_list__isys_catg_relation_list__id`),
  KEY `isys_catg_assigned_cards_list__status` (`isys_catg_assigned_cards_list__status`),
  CONSTRAINT `isys_catg_assigned_cards_list_ibfk_1` FOREIGN KEY (`isys_catg_assigned_cards_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_assigned_cards_list_ibfk_2` FOREIGN KEY (`isys_catg_assigned_cards_list__isys_obj__id__card`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_assigned_cards_list_ibfk_3` FOREIGN KEY (`isys_catg_assigned_cards_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_audit_list` (
  `isys_catg_audit_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_audit_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_audit_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_audit_list__type` int(10) unsigned DEFAULT NULL,
  `isys_catg_audit_list__commission` int(10) unsigned DEFAULT NULL,
  `isys_catg_audit_list__responsible` int(10) unsigned DEFAULT NULL,
  `isys_catg_audit_list__involved` int(10) unsigned DEFAULT NULL,
  `isys_catg_audit_list__period_manufacturer` date DEFAULT NULL,
  `isys_catg_audit_list__period_operator` date DEFAULT NULL,
  `isys_catg_audit_list__apply` date DEFAULT NULL,
  `isys_catg_audit_list__result` text COLLATE utf8_unicode_ci,
  `isys_catg_audit_list__fault` text COLLATE utf8_unicode_ci,
  `isys_catg_audit_list__incident` text COLLATE utf8_unicode_ci,
  `isys_catg_audit_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_audit_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_catg_audit_list__id`),
  KEY `isys_catg_audit_list_2_isys_obj_ibfk_1` (`isys_catg_audit_list__isys_obj__id`),
  KEY `isys_catg_audit_list_2_isys_catg_audit_type_ibfk_1` (`isys_catg_audit_list__type`),
  KEY `isys_catg_audit_list_2_isys_contact_ibfk_1` (`isys_catg_audit_list__commission`),
  KEY `isys_catg_audit_list_2_isys_contact_ibfk_2` (`isys_catg_audit_list__responsible`),
  KEY `isys_catg_audit_list_2_isys_contact_ibfk_3` (`isys_catg_audit_list__involved`),
  KEY `isys_catg_audit_list__status` (`isys_catg_audit_list__status`),
  CONSTRAINT `isys_catg_audit_list_2_isys_catg_audit_type_ibfk_1` FOREIGN KEY (`isys_catg_audit_list__type`) REFERENCES `isys_catg_audit_type` (`isys_catg_audit_type__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_audit_list_2_isys_contact_ibfk_1` FOREIGN KEY (`isys_catg_audit_list__commission`) REFERENCES `isys_contact` (`isys_contact__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_audit_list_2_isys_contact_ibfk_2` FOREIGN KEY (`isys_catg_audit_list__responsible`) REFERENCES `isys_contact` (`isys_contact__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_audit_list_2_isys_contact_ibfk_3` FOREIGN KEY (`isys_catg_audit_list__involved`) REFERENCES `isys_contact` (`isys_contact__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_audit_list_2_isys_obj_ibfk_1` FOREIGN KEY (`isys_catg_audit_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='global category for audits';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_audit_type` (
  `isys_catg_audit_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_audit_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_audit_type__description` text COLLATE utf8_unicode_ci,
  `isys_catg_audit_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_audit_type__sort` int(10) unsigned NOT NULL DEFAULT '5',
  `isys_catg_audit_type__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_catg_audit_type__id`),
  KEY `isys_catg_audit_type__title` (`isys_catg_audit_type__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='audit types';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_backup_list` (
  `isys_catg_backup_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_backup_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_backup_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_backup_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_backup_list__status` int(10) unsigned DEFAULT '1',
  `isys_catg_backup_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_backup_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_backup_list__isys_backup_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_backup_list__isys_backup_cycle__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_backup_list__path_to_save` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_catg_backup_list__id`),
  KEY `isys_catg_backup_list__isys_obj__id` (`isys_catg_backup_list__isys_obj__id`),
  KEY `isys_catg_backup_list__isys_connection__id` (`isys_catg_backup_list__isys_connection__id`),
  KEY `isys_catg_backup_list__isys_catg_relation_list__id` (`isys_catg_backup_list__isys_catg_relation_list__id`),
  KEY `isys_catg_backup_list__isys_backup_type__id` (`isys_catg_backup_list__isys_backup_type__id`),
  KEY `isys_catg_backup_list__isys_backup_cycle__id` (`isys_catg_backup_list__isys_backup_cycle__id`),
  KEY `isys_catg_backup_list__status` (`isys_catg_backup_list__status`),
  CONSTRAINT `isys_catg_backup_list__isys_catg_relation_list__id` FOREIGN KEY (`isys_catg_backup_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_backup_list_ibfk_2` FOREIGN KEY (`isys_catg_backup_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_backup_list_ibfk_3` FOREIGN KEY (`isys_catg_backup_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_backup_list_ibfk_4` FOREIGN KEY (`isys_catg_backup_list__isys_backup_type__id`) REFERENCES `isys_backup_type` (`isys_backup_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_backup_list_ibfk_5` FOREIGN KEY (`isys_catg_backup_list__isys_backup_cycle__id`) REFERENCES `isys_backup_cycle` (`isys_backup_cycle__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_cable_list` (
  `isys_catg_cable_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_cable_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_cable_list__isys_cable_type__id` int(10) DEFAULT NULL,
  `isys_catg_cable_list__isys_cable_colour__id` int(10) DEFAULT NULL,
  `isys_catg_cable_list__isys_cable_occupancy__id` int(10) DEFAULT NULL,
  `isys_catg_cable_list__max_amount_of_fibers_leads` int(10) unsigned DEFAULT NULL,
  `isys_catg_cable_list__length` text COLLATE utf8_unicode_ci,
  `isys_catg_cable_list__isys_depth_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_cable_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_cable_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_cable_list__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_catg_cable_list__id`),
  KEY `isys_catg_cable_list__isys_cable_type__id` (`isys_catg_cable_list__isys_cable_type__id`),
  KEY `isys_catg_cable_list__isys_cable_colour__id` (`isys_catg_cable_list__isys_cable_colour__id`),
  KEY `isys_catg_cable_list__isys_cable_occupancy__id` (`isys_catg_cable_list__isys_cable_occupancy__id`),
  KEY `isys_catg_cable_list__isys_obj__id` (`isys_catg_cable_list__isys_obj__id`),
  KEY `isys_catg_cable_list__isys_depth_unit__id` (`isys_catg_cable_list__isys_depth_unit__id`),
  CONSTRAINT `isys_catg_cable_list__isys_depth_unit__id` FOREIGN KEY (`isys_catg_cable_list__isys_depth_unit__id`) REFERENCES `isys_depth_unit` (`isys_depth_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cable_list_ibfk_1` FOREIGN KEY (`isys_catg_cable_list__isys_cable_type__id`) REFERENCES `isys_cable_type` (`isys_cable_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cable_list_ibfk_2` FOREIGN KEY (`isys_catg_cable_list__isys_cable_colour__id`) REFERENCES `isys_cable_colour` (`isys_cable_colour__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cable_list_ibfk_3` FOREIGN KEY (`isys_catg_cable_list__isys_cable_occupancy__id`) REFERENCES `isys_cable_occupancy` (`isys_cable_occupancy__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cable_list_ibfk_4` FOREIGN KEY (`isys_catg_cable_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_certificate_list` (
  `isys_catg_certificate_list__id` int(11) NOT NULL AUTO_INCREMENT,
  `isys_catg_certificate_list__isys_certificate_type__id` int(11) DEFAULT NULL,
  `isys_catg_certificate_list__created` datetime DEFAULT NULL,
  `isys_catg_certificate_list__expire` datetime DEFAULT NULL,
  `isys_catg_certificate_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_certificate_list__status` int(11) NOT NULL DEFAULT '2',
  `isys_catg_certificate_list__description` text CHARACTER SET utf8,
  `isys_catg_certificate_list__common_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_catg_certificate_list__id`),
  KEY `isys_catg_certificate_list__isys_obj__id` (`isys_catg_certificate_list__isys_obj__id`),
  KEY `isys_catg_certificate_list__isys_certificate_type__id` (`isys_catg_certificate_list__isys_certificate_type__id`),
  CONSTRAINT `isys_catg_certificate_list_ibfk_2` FOREIGN KEY (`isys_catg_certificate_list__isys_certificate_type__id`) REFERENCES `isys_certificate_type` (`isys_certificate_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_certificate_list_ibfk_3` FOREIGN KEY (`isys_catg_certificate_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_cluster_adm_service_list` (
  `isys_catg_cluster_adm_service_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_cluster_adm_service_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_cluster_adm_service_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_cluster_adm_service_list__isys_connection__id` int(10) unsigned NOT NULL,
  `isys_catg_cluster_adm_service_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_cluster_adm_service_list__status` int(10) unsigned NOT NULL,
  `isys_catg_cluster_adm_service_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_cluster_adm_service_list__id`),
  KEY `isys_catg_cluster_adm_service_list__ibfk1` (`isys_catg_cluster_adm_service_list__isys_obj__id`),
  KEY `isys_catg_cluster_adm_service_list__ibfk2` (`isys_catg_cluster_adm_service_list__isys_connection__id`),
  KEY `isys_catg_cluster_adm_service_list__ibfk3` (`isys_catg_cluster_adm_service_list__isys_catg_relation_list__id`),
  KEY `isys_catg_cluster_adm_service_list__status` (`isys_catg_cluster_adm_service_list__status`),
  CONSTRAINT `isys_catg_cluster_adm_service_list__ibfk1` FOREIGN KEY (`isys_catg_cluster_adm_service_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cluster_adm_service_list__ibfk2` FOREIGN KEY (`isys_catg_cluster_adm_service_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cluster_adm_service_list__ibfk3` FOREIGN KEY (`isys_catg_cluster_adm_service_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_cluster_list` (
  `isys_catg_cluster_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_cluster_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_cluster_list__status` int(10) unsigned NOT NULL,
  `isys_catg_cluster_list__property` int(10) unsigned NOT NULL,
  `isys_catg_cluster_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_cluster_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_cluster_list__virtual_host` int(10) unsigned NOT NULL,
  `isys_catg_cluster_list__quorum` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`isys_catg_cluster_list__id`),
  KEY `isys_catg_cluster_list__isys_obj__id` (`isys_catg_cluster_list__isys_obj__id`),
  KEY `isys_catg_cluster_list__isys_connection__id` (`isys_catg_cluster_list__isys_connection__id`),
  CONSTRAINT `isys_catg_cluster_list_ibfk_1` FOREIGN KEY (`isys_catg_cluster_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cluster_list_ibfk_2` FOREIGN KEY (`isys_catg_cluster_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_cluster_list_2_isys_obj` (
  `isys_catg_cluster_list__id` int(10) unsigned NOT NULL,
  `isys_obj__id` int(10) unsigned NOT NULL,
  KEY `isys_catg_cluster_list__id` (`isys_catg_cluster_list__id`),
  KEY `isys_obj__id` (`isys_obj__id`),
  CONSTRAINT `isys_catg_cluster_list_2_isys_obj_ibfk_1` FOREIGN KEY (`isys_catg_cluster_list__id`) REFERENCES `isys_catg_cluster_list` (`isys_catg_cluster_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cluster_list_2_isys_obj_ibfk_2` FOREIGN KEY (`isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_cluster_members_list` (
  `isys_catg_cluster_members_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_cluster_members_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_cluster_members_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_cluster_members_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_cluster_members_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_cluster_members_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_cluster_members_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_cluster_members_list__id`),
  KEY `isys_catg_cluster_members_list__isys_obj__id` (`isys_catg_cluster_members_list__isys_obj__id`),
  KEY `isys_catg_cluster_members_list__isys_connection__id` (`isys_catg_cluster_members_list__isys_connection__id`),
  KEY `isys_catg_cluster_members_list__isys_catg_relation_list__id` (`isys_catg_cluster_members_list__isys_catg_relation_list__id`),
  KEY `isys_catg_cluster_members_list__status` (`isys_catg_cluster_members_list__status`),
  CONSTRAINT `isys_catg_cluster_members_list__isys_catg_relation_list__id` FOREIGN KEY (`isys_catg_cluster_members_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cluster_members_list_ibfk_1` FOREIGN KEY (`isys_catg_cluster_members_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cluster_members_list_ibfk_2` FOREIGN KEY (`isys_catg_cluster_members_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_cluster_members_list_2_isys_catg_cluster_service_list` (
  `isys_catg_cluster_members_list__id` int(10) unsigned NOT NULL,
  `isys_catg_cluster_service_list__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_catg_cluster_members_list__id`,`isys_catg_cluster_service_list__id`),
  KEY `isys_catg_cluster_service_list__id` (`isys_catg_cluster_service_list__id`),
  CONSTRAINT `isys_catg_cluster_members_list__id` FOREIGN KEY (`isys_catg_cluster_members_list__id`) REFERENCES `isys_catg_cluster_members_list` (`isys_catg_cluster_members_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cluster_service_list__id` FOREIGN KEY (`isys_catg_cluster_service_list__id`) REFERENCES `isys_catg_cluster_service_list` (`isys_catg_cluster_service_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_cluster_service_list` (
  `isys_catg_cluster_service_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_cluster_service_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_cluster_service_list__isys_cats_relpool_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_cluster_service_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  `isys_catg_cluster_service_list__property` int(10) unsigned NOT NULL,
  `isys_catg_cluster_service_list__description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_cluster_service_list__isys_cluster_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_cluster_service_list__cluster_members_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_cluster_service_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_cluster_service_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_cluster_service_list__service_status` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_catg_cluster_service_list__id`),
  KEY `isys_catg_cluster_service_list__isys_obj__id` (`isys_catg_cluster_service_list__isys_obj__id`),
  KEY `isys_catg_cluster_service_list__isys_connection__id` (`isys_catg_cluster_service_list__isys_connection__id`),
  KEY `isys_catg_cluster_service_list__cluster_members_list__id` (`isys_catg_cluster_service_list__cluster_members_list__id`),
  KEY `isys_catg_cluster_service_list__isys_catg_relation_list__id` (`isys_catg_cluster_service_list__isys_catg_relation_list__id`),
  KEY `isys_catg_cluster_service_list__isys_cats_relpool_list__id` (`isys_catg_cluster_service_list__isys_cats_relpool_list__id`),
  KEY `isys_catg_cluster_service_list__status` (`isys_catg_cluster_service_list__status`),
  CONSTRAINT `isys_catg_cluster_service_list__isys_catg_relation_list__id` FOREIGN KEY (`isys_catg_cluster_service_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cluster_service_list_ibfk_1` FOREIGN KEY (`isys_catg_cluster_service_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cluster_service_list_ibfk_2` FOREIGN KEY (`isys_catg_cluster_service_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cluster_service_list_ibfk_3` FOREIGN KEY (`isys_catg_cluster_service_list__cluster_members_list__id`) REFERENCES `isys_catg_cluster_members_list` (`isys_catg_cluster_members_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cluster_service_list_ibfk_4` FOREIGN KEY (`isys_catg_cluster_service_list__isys_cats_relpool_list__id`) REFERENCES `isys_cats_relpool_list` (`isys_cats_relpool_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_computing_resources_list` (
  `isys_catg_computing_resources_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_computing_resources_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_computing_resources_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_computing_resources_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_computing_resources_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_computing_resources_list__ram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_computing_resources_list__ram__isys_memory_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_computing_resources_list__cpu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_computing_resources_list__cpu__isys_frequency_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_computing_resources_list__disc_space` bigint(20) unsigned DEFAULT NULL,
  `isys_catg_computing_resources_list__ds__isys_memory_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_computing_resources_list__network_bandwidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_computing_resources_list__nb__isys_port_speed__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_computing_resources_list__id`),
  KEY `isys_catg_computing_resources_list__isys_obj__id` (`isys_catg_computing_resources_list__isys_obj__id`),
  KEY `isys_catg_computing_resources_list__ram__isys_memory_unit__id` (`isys_catg_computing_resources_list__ram__isys_memory_unit__id`),
  KEY `isys_catg_computing_resources_list__cpu__isys_frequency_unit__id` (`isys_catg_computing_resources_list__cpu__isys_frequency_unit__id`),
  KEY `isys_catg_computing_resources_list__ds__isys_memory_unit__id` (`isys_catg_computing_resources_list__ds__isys_memory_unit__id`),
  KEY `isys_catg_computing_resources_list__nb__isys_port_speed__id` (`isys_catg_computing_resources_list__nb__isys_port_speed__id`),
  CONSTRAINT `isys_catg_computing_resources_list_ibfk_1` FOREIGN KEY (`isys_catg_computing_resources_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_computing_resources_list_ibfk_2` FOREIGN KEY (`isys_catg_computing_resources_list__ram__isys_memory_unit__id`) REFERENCES `isys_memory_unit` (`isys_memory_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_computing_resources_list_ibfk_3` FOREIGN KEY (`isys_catg_computing_resources_list__cpu__isys_frequency_unit__id`) REFERENCES `isys_frequency_unit` (`isys_frequency_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_computing_resources_list_ibfk_4` FOREIGN KEY (`isys_catg_computing_resources_list__ds__isys_memory_unit__id`) REFERENCES `isys_memory_unit` (`isys_memory_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_computing_resources_list_ibfk_5` FOREIGN KEY (`isys_catg_computing_resources_list__nb__isys_port_speed__id`) REFERENCES `isys_port_speed` (`isys_port_speed__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_connector_list` (
  `isys_catg_connector_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_connector_list__isys_cable_connection__id` int(10) DEFAULT NULL,
  `isys_catg_connector_list__isys_catg_connector_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_connector_list__isys_connection_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_connector_list__isys_connection__id` int(10) unsigned NOT NULL,
  `isys_catg_connector_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_connector_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_connector_list__assigned_category` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_connector_list__type` int(10) NOT NULL,
  `isys_catg_connector_list__used_fiber_lead_rx` int(10) unsigned DEFAULT NULL,
  `isys_catg_connector_list__used_fiber_lead_tx` int(10) unsigned DEFAULT NULL,
  `isys_catg_connector_list__isys_interface__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_connector_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_connector_list__status` int(10) NOT NULL DEFAULT '2',
  `isys_catg_connector_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_connector_list__id`),
  KEY `isys_catg_connector_list__isys_connection__id` (`isys_catg_connector_list__isys_connection__id`),
  KEY `isys_catg_connector_list__isys_connection_type__id` (`isys_catg_connector_list__isys_connection_type__id`),
  KEY `isys_catg_connector_list__isys_obj__id` (`isys_catg_connector_list__isys_obj__id`),
  KEY `isys_catg_connector_list__isys_catg_connector_list__id` (`isys_catg_connector_list__isys_catg_connector_list__id`),
  KEY `isys_catg_connector_list__isys_cable_connection__id` (`isys_catg_connector_list__isys_cable_connection__id`),
  KEY `isys_catg_connector_list__isys_catg_relation_list__id` (`isys_catg_connector_list__isys_catg_relation_list__id`),
  KEY `isys_catg_connector_list__assigned_category` (`isys_catg_connector_list__assigned_category`),
  KEY `isys_catg_connector_list__isys_interface__id` (`isys_catg_connector_list__isys_interface__id`),
  KEY `fk__connector__used_fiber_lead_tx` (`isys_catg_connector_list__used_fiber_lead_tx`),
  KEY `fk__connector__used_fiber_lead_rx` (`isys_catg_connector_list__used_fiber_lead_rx`),
  KEY `isys_catg_connector_list__title` (`isys_catg_connector_list__title`),
  KEY `isys_catg_connector_list__status` (`isys_catg_connector_list__status`),
  CONSTRAINT `fk__connector__interface` FOREIGN KEY (`isys_catg_connector_list__isys_interface__id`) REFERENCES `isys_interface` (`isys_interface__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk__connector__used_fiber_lead_rx` FOREIGN KEY (`isys_catg_connector_list__used_fiber_lead_rx`) REFERENCES `isys_catg_fiber_lead_list` (`isys_catg_fiber_lead_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk__connector__used_fiber_lead_tx` FOREIGN KEY (`isys_catg_connector_list__used_fiber_lead_tx`) REFERENCES `isys_catg_fiber_lead_list` (`isys_catg_fiber_lead_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_connector_list__isys_catg_relation_list__id` FOREIGN KEY (`isys_catg_connector_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_connector_list_ibfk_1` FOREIGN KEY (`isys_catg_connector_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_connector_list_ibfk_2` FOREIGN KEY (`isys_catg_connector_list__isys_connection_type__id`) REFERENCES `isys_connection_type` (`isys_connection_type__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_connector_list_ibfk_3` FOREIGN KEY (`isys_catg_connector_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_connector_list_ibfk_4` FOREIGN KEY (`isys_catg_connector_list__isys_catg_connector_list__id`) REFERENCES `isys_catg_connector_list` (`isys_catg_connector_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_connector_list_ibfk_5` FOREIGN KEY (`isys_catg_connector_list__isys_cable_connection__id`) REFERENCES `isys_cable_connection` (`isys_cable_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_connector_list_2_isys_fiber_wave_length` (
  `isys_catg_connector_list_2_isys_fiber_wave_length__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_connector_list__id` int(10) unsigned NOT NULL,
  `isys_fiber_wave_length__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_catg_connector_list_2_isys_fiber_wave_length__id`),
  KEY `fk__con2wave__connector` (`isys_catg_connector_list__id`),
  KEY `fk__con2wave__fiberwavelength` (`isys_fiber_wave_length__id`),
  CONSTRAINT `fk__con2wave__connector` FOREIGN KEY (`isys_catg_connector_list__id`) REFERENCES `isys_catg_connector_list` (`isys_catg_connector_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__con2wave__fiberwavelength` FOREIGN KEY (`isys_fiber_wave_length__id`) REFERENCES `isys_fiber_wave_length` (`isys_fiber_wave_length__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='connector list to fiber wave lengths';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_contact_list` (
  `isys_catg_contact_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_contact_list__isys_contact__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_contact_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_contact_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_contact_list__status` int(10) unsigned DEFAULT '1',
  `isys_catg_contact_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_contact_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_contact_list__primary_contact` int(10) unsigned DEFAULT '0',
  `isys_catg_contact_list__isys_contact_tag__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_contact_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_contact_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_contact_list__id`),
  KEY `isys_catg_contact_list_FKIndex2` (`isys_catg_contact_list__isys_contact__id`),
  KEY `isys_catg_contact_list__isys_obj__id` (`isys_catg_contact_list__isys_obj__id`),
  KEY `isys_catg_contact_list__isys_contact_tag__id` (`isys_catg_contact_list__isys_contact_tag__id`),
  KEY `isys_catg_contact_list__isys_connection__id` (`isys_catg_contact_list__isys_connection__id`),
  KEY `isys_catg_contact_list__isys_catg_relation_list__id` (`isys_catg_contact_list__isys_catg_relation_list__id`),
  KEY `isys_catg_contact_list__status` (`isys_catg_contact_list__status`),
  CONSTRAINT `isys_catg_contact_list__isys_catg_relation_list__id` FOREIGN KEY (`isys_catg_contact_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_contact_list_ibfk_2` FOREIGN KEY (`isys_catg_contact_list__isys_contact__id`) REFERENCES `isys_contact` (`isys_contact__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_contact_list_ibfk_3` FOREIGN KEY (`isys_catg_contact_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_contact_list_ibfk_5` FOREIGN KEY (`isys_catg_contact_list__isys_contact_tag__id`) REFERENCES `isys_contact_tag` (`isys_contact_tag__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_contact_list_ibfk_6` FOREIGN KEY (`isys_catg_contact_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_contract_assignment_list` (
  `isys_catg_contract_assignment_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_contract_assignment_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_contract_assignment_list__contract_start` date DEFAULT NULL,
  `isys_catg_contract_assignment_list__contract_end` date DEFAULT NULL,
  `isys_catg_contract_assignment_list__reaction_rate__id` int(11) DEFAULT NULL,
  `isys_catg_contract_assignment_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_contract_assignment_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_contract_assignment_list__status` int(10) unsigned NOT NULL,
  `isys_catg_contract_assignment_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_contract_assignment_list__id`),
  KEY `isys_catg_contract_assignment_list__isys_obj__id` (`isys_catg_contract_assignment_list__isys_obj__id`),
  KEY `isys_catg_contract_assignment_list__isys_connection__id` (`isys_catg_contract_assignment_list__isys_connection__id`),
  KEY `isys_catg_contract_assignment_list__isys_catg_relation_list__id` (`isys_catg_contract_assignment_list__isys_catg_relation_list__id`),
  KEY `isys_catg_contract_assignment_list__reaction_rate__id` (`isys_catg_contract_assignment_list__reaction_rate__id`),
  KEY `isys_catg_contract_assignment_list__status` (`isys_catg_contract_assignment_list__status`),
  CONSTRAINT `isys_catg_contract_assignment_list__reaction_rate__id` FOREIGN KEY (`isys_catg_contract_assignment_list__reaction_rate__id`) REFERENCES `isys_contract_reaction_rate` (`isys_contract_reaction_rate__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_contract_assignment_list_ibfk_1` FOREIGN KEY (`isys_catg_contract_assignment_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_contract_assignment_list_ibfk_2` FOREIGN KEY (`isys_catg_contract_assignment_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_contract_assignment_list_ibfk_3` FOREIGN KEY (`isys_catg_contract_assignment_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_controller_list` (
  `isys_catg_controller_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_controller_list__isys_controller_manufacturer__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_controller_list__isys_controller_model__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_controller_list__isys_controller_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_controller_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_controller_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_controller_list__portcount` int(10) unsigned DEFAULT '0',
  `isys_catg_controller_list__status` int(10) unsigned DEFAULT '1',
  `isys_catg_controller_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_controller_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_controller_list__sort` int(10) unsigned DEFAULT NULL,
  `isys_catg_controller_list__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_catg_controller_list__id`),
  KEY `isys_catg_controller_list_FKIndex1` (`isys_catg_controller_list__isys_controller_type__id`),
  KEY `isys_catg_controller_list_FKIndex3` (`isys_catg_controller_list__isys_controller_manufacturer__id`),
  KEY `isys_catg_controller_list_FKIndex4` (`isys_catg_controller_list__isys_controller_model__id`),
  KEY `isys_catg_controller_list__isys_obj__id` (`isys_catg_controller_list__isys_obj__id`),
  KEY `isys_catg_controller_list__status` (`isys_catg_controller_list__status`),
  CONSTRAINT `isys_catg_controller_list_ibfk_1` FOREIGN KEY (`isys_catg_controller_list__isys_controller_type__id`) REFERENCES `isys_controller_type` (`isys_controller_type__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_catg_controller_list_ibfk_5` FOREIGN KEY (`isys_catg_controller_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_controller_list_ibfk_6` FOREIGN KEY (`isys_catg_controller_list__isys_controller_manufacturer__id`) REFERENCES `isys_controller_manufacturer` (`isys_controller_manufacturer__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_controller_list_ibfk_7` FOREIGN KEY (`isys_catg_controller_list__isys_controller_model__id`) REFERENCES `isys_controller_model` (`isys_controller_model__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_cpu_frequency` (
  `isys_catg_cpu_frequency__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_cpu_frequency__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_cpu_frequency__description` text COLLATE utf8_unicode_ci,
  `isys_catg_cpu_frequency__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_cpu_frequency__sort` int(10) unsigned DEFAULT '5',
  `isys_catg_cpu_frequency__status` int(10) unsigned DEFAULT '2',
  `isys_catg_cpu_frequency__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_catg_cpu_frequency__id`),
  KEY `isys_catg_cpu_frequency__title` (`isys_catg_cpu_frequency__title`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_catg_cpu_frequency` VALUES (1,'1.6GHz',NULL,NULL,1,2,0);
INSERT INTO `isys_catg_cpu_frequency` VALUES (2,'1.8GHz',NULL,NULL,2,2,0);
INSERT INTO `isys_catg_cpu_frequency` VALUES (3,'2.0GHz',NULL,NULL,3,2,0);
INSERT INTO `isys_catg_cpu_frequency` VALUES (4,'2.8GHz',NULL,NULL,4,2,0);
INSERT INTO `isys_catg_cpu_frequency` VALUES (5,'3.0GHz',NULL,NULL,5,2,0);
INSERT INTO `isys_catg_cpu_frequency` VALUES (6,'3.2GHz',NULL,NULL,6,2,0);
INSERT INTO `isys_catg_cpu_frequency` VALUES (7,'3.4GHz',NULL,NULL,7,2,0);
INSERT INTO `isys_catg_cpu_frequency` VALUES (8,'1.66GHz',NULL,NULL,8,2,0);
INSERT INTO `isys_catg_cpu_frequency` VALUES (9,'2.66GHz',NULL,NULL,5,2,0);
INSERT INTO `isys_catg_cpu_frequency` VALUES (10,'2.33GHz',NULL,NULL,5,2,0);
INSERT INTO `isys_catg_cpu_frequency` VALUES (11,'2.4GHz',NULL,NULL,5,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_cpu_list` (
  `isys_catg_cpu_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_cpu_list__isys_catg_cpu_manufacturer__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_cpu_list__isys_catg_cpu_frequency__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_cpu_list__isys_catg_cpu_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_cpu_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_cpu_list__frequency` bigint(15) unsigned DEFAULT NULL,
  `isys_catg_cpu_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_cpu_list__status` int(10) unsigned DEFAULT '1',
  `isys_catg_cpu_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_cpu_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_cpu_list__isys_frequency_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_cpu_list__cores` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_cpu_list__id`),
  KEY `isys_catg_cpu_list_FKIndex2` (`isys_catg_cpu_list__isys_catg_cpu_manufacturer__id`),
  KEY `isys_catg_cpu_list_FKIndex3` (`isys_catg_cpu_list__isys_catg_cpu_type__id`),
  KEY `isys_catg_cpu_list_FKIndex4` (`isys_catg_cpu_list__isys_catg_cpu_frequency__id`),
  KEY `isys_catg_cpu_list__isys_obj__id` (`isys_catg_cpu_list__isys_obj__id`),
  KEY `isys_catg_cpu_list__isys_frequency_unit__id` (`isys_catg_cpu_list__isys_frequency_unit__id`),
  KEY `isys_catg_cpu_list__status` (`isys_catg_cpu_list__status`),
  CONSTRAINT `isys_catg_cpu_list__isys_frequency_unit__id` FOREIGN KEY (`isys_catg_cpu_list__isys_frequency_unit__id`) REFERENCES `isys_frequency_unit` (`isys_frequency_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cpu_list_ibfk_4` FOREIGN KEY (`isys_catg_cpu_list__isys_catg_cpu_frequency__id`) REFERENCES `isys_catg_cpu_frequency` (`isys_catg_cpu_frequency__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_catg_cpu_list_ibfk_5` FOREIGN KEY (`isys_catg_cpu_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cpu_list_ibfk_6` FOREIGN KEY (`isys_catg_cpu_list__isys_catg_cpu_manufacturer__id`) REFERENCES `isys_catg_cpu_manufacturer` (`isys_catg_cpu_manufacturer__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_cpu_list_ibfk_7` FOREIGN KEY (`isys_catg_cpu_list__isys_catg_cpu_type__id`) REFERENCES `isys_catg_cpu_type` (`isys_catg_cpu_type__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_cpu_manufacturer` (
  `isys_catg_cpu_manufacturer__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_cpu_manufacturer__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_cpu_manufacturer__description` text COLLATE utf8_unicode_ci,
  `isys_catg_cpu_manufacturer__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_cpu_manufacturer__sort` int(10) unsigned DEFAULT '5',
  `isys_catg_cpu_manufacturer__status` int(10) unsigned DEFAULT '2',
  `isys_catg_cpu_manufacturer__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_catg_cpu_manufacturer__id`),
  KEY `isys_catg_cpu_manufacturer__title` (`isys_catg_cpu_manufacturer__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_catg_cpu_manufacturer` VALUES (1,'AMD',NULL,NULL,1,2,0);
INSERT INTO `isys_catg_cpu_manufacturer` VALUES (2,'Intel',NULL,NULL,2,2,0);
INSERT INTO `isys_catg_cpu_manufacturer` VALUES (3,'IBM',NULL,NULL,3,2,0);
INSERT INTO `isys_catg_cpu_manufacturer` VALUES (4,'Motorola',NULL,NULL,4,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_cpu_type` (
  `isys_catg_cpu_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_cpu_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_cpu_type__description` text COLLATE utf8_unicode_ci,
  `isys_catg_cpu_type__sort` int(10) unsigned DEFAULT '5',
  `isys_catg_cpu_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_cpu_type__property` int(10) unsigned DEFAULT '0',
  `isys_catg_cpu_type__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_catg_cpu_type__id`),
  KEY `isys_catg_cpu_type__title` (`isys_catg_cpu_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_catg_cpu_type` VALUES (1,'Xeon',NULL,1,NULL,0,2);
INSERT INTO `isys_catg_cpu_type` VALUES (2,'Athlon',NULL,2,NULL,0,2);
INSERT INTO `isys_catg_cpu_type` VALUES (3,'Athlon 64',NULL,3,NULL,0,2);
INSERT INTO `isys_catg_cpu_type` VALUES (4,'Pentium III',NULL,4,NULL,0,2);
INSERT INTO `isys_catg_cpu_type` VALUES (5,'Pentium IV',NULL,5,NULL,0,2);
INSERT INTO `isys_catg_cpu_type` VALUES (6,'Opteron',NULL,6,NULL,0,2);
INSERT INTO `isys_catg_cpu_type` VALUES (7,'PowerPC',NULL,7,NULL,0,2);
INSERT INTO `isys_catg_cpu_type` VALUES (8,'Core 2 Duo',NULL,5,NULL,0,2);
INSERT INTO `isys_catg_cpu_type` VALUES (9,'Core 2 Quad',NULL,5,NULL,0,2);
INSERT INTO `isys_catg_cpu_type` VALUES (10,'Core 2 Extreme',NULL,5,NULL,0,2);
INSERT INTO `isys_catg_cpu_type` VALUES (11,'Core I7',NULL,5,NULL,0,2);
INSERT INTO `isys_catg_cpu_type` VALUES (12,'Core I7 Extreme',NULL,5,NULL,0,2);
INSERT INTO `isys_catg_cpu_type` VALUES (13,'Pentium',NULL,5,NULL,0,2);
INSERT INTO `isys_catg_cpu_type` VALUES (14,'Celeron',NULL,5,NULL,0,2);
INSERT INTO `isys_catg_cpu_type` VALUES (15,'Itanium',NULL,5,NULL,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_custom_fields_list` (
  `isys_catg_custom_fields_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_custom_fields_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_custom_fields_list__isysgui_catg_custom__id` int(10) unsigned NOT NULL,
  `isys_catg_custom_fields_list__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_custom_fields_list__field_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_custom_fields_list__field_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_custom_fields_list__field_content` text COLLATE utf8_unicode_ci,
  `isys_catg_custom_fields_list__status` int(10) NOT NULL,
  `isys_catg_custom_fields_list__sort` int(10) NOT NULL,
  `isys_catg_custom_fields_list__description` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_custom_fields_list__data__id` int(10) unsigned DEFAULT '1',
  `isys_catg_custom_fields_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_custom_fields_list__id`),
  KEY `isys_catg_custom_fields_list__isysgui_catg_custom__id` (`isys_catg_custom_fields_list__isysgui_catg_custom__id`),
  KEY `isys_catg_custom_fields_list__isys_obj__id` (`isys_catg_custom_fields_list__isys_obj__id`),
  KEY `isys_catg_custom_fields_list_ibfk_3` (`isys_catg_custom_fields_list__isys_catg_relation_list__id`),
  KEY `isys_catg_custom_fields_list__data__id` (`isys_catg_custom_fields_list__data__id`),
  KEY `isys_catg_custom_fields_list__field_key` (`isys_catg_custom_fields_list__field_key`),
  CONSTRAINT `isys_catg_custom_fields_list_ibfk_1` FOREIGN KEY (`isys_catg_custom_fields_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_custom_fields_list_ibfk_2` FOREIGN KEY (`isys_catg_custom_fields_list__isysgui_catg_custom__id`) REFERENCES `isysgui_catg_custom` (`isysgui_catg_custom__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_custom_fields_list_ibfk_3` FOREIGN KEY (`isys_catg_custom_fields_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_database_assignment_list` (
  `isys_catg_database_assignment_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_database_assignment_list__isys_connection__id` int(10) unsigned DEFAULT NULL COMMENT 'Connection to database schema',
  `isys_catg_database_assignment_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL COMMENT 'Implicit relation: database access',
  `isys_catg_database_assignment_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_database_assignment_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_database_assignment_list__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_catg_database_assignment_list__id`),
  KEY `isys_catg_database_assignment_list__isys_obj__id` (`isys_catg_database_assignment_list__isys_obj__id`),
  KEY `isys_catg_database_assignment_list__isys_connection__id` (`isys_catg_database_assignment_list__isys_connection__id`),
  KEY `isys_catg_database_assignment_list__isys_catg_relation_list__id` (`isys_catg_database_assignment_list__isys_catg_relation_list__id`),
  CONSTRAINT `isys_catg_database_assignment_list_ibfk_1` FOREIGN KEY (`isys_catg_database_assignment_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_database_assignment_list_ibfk_2` FOREIGN KEY (`isys_catg_database_assignment_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_database_assignment_list_ibfk_3` FOREIGN KEY (`isys_catg_database_assignment_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_drive_list` (
  `isys_catg_drive_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_drive_list__isys_stor_raid_level__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_drive_list__isys_filesystem_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_drive_list__isys_memory_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_drive_list__isys_catd_drive_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_drive_list__id__raid_pool` int(10) unsigned DEFAULT NULL,
  `isys_catg_drive_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_drive_list__capacity` bigint(20) DEFAULT NULL,
  `isys_catg_drive_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_drive_list__driveletter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_drive_list__partitionmapping` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_drive_list__filesystem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_drive_list__sort` int(10) unsigned DEFAULT '5',
  `isys_catg_drive_list__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_drive_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_drive_list__status` int(10) unsigned DEFAULT '2',
  `isys_catg_drive_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_drive_list__isys_catg_stor_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_drive_list__isys_catg_raid_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_drive_list__isys_catg_ldevclient_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_drive_list__system_drive` int(10) unsigned DEFAULT NULL,
  `isys_catg_drive_list__serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_drive_list__free_space` bigint(20) unsigned DEFAULT NULL,
  `isys_catg_drive_list__free_space__isys_memory_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_drive_list__used_space` bigint(20) unsigned DEFAULT NULL,
  `isys_catg_drive_list__used_space__isys_memory_unit__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_drive_list__id`),
  KEY `isys_catd_drive_list_FKIndex2` (`isys_catg_drive_list__id__raid_pool`),
  KEY `isys_catd_drive_list_FKIndex3` (`isys_catg_drive_list__isys_catd_drive_type__id`),
  KEY `isys_catd_drive_list_FKIndex5` (`isys_catg_drive_list__isys_filesystem_type__id`),
  KEY `isys_catd_drive_list_FKIndex6` (`isys_catg_drive_list__isys_stor_raid_level__id`),
  KEY `isys_catd_drive_list__isys_memory_unit__id` (`isys_catg_drive_list__isys_memory_unit__id`),
  KEY `isys_catg_drive_list__isys_obj__id` (`isys_catg_drive_list__isys_obj__id`),
  KEY `isys_catg_drive_list__isys_catg_stor_list__id` (`isys_catg_drive_list__isys_catg_stor_list__id`),
  KEY `isys_catg_drive_list__isys_catg_raid_list__id` (`isys_catg_drive_list__isys_catg_raid_list__id`),
  KEY `isys_catg_drive_list__isys_catg_ldevclient_list__id` (`isys_catg_drive_list__isys_catg_ldevclient_list__id`),
  KEY `isys_catg_drive_list__free_space__isys_memory_unit__id` (`isys_catg_drive_list__free_space__isys_memory_unit__id`),
  KEY `isys_catg_drive_list__used_space__isys_memory_unit__id` (`isys_catg_drive_list__used_space__isys_memory_unit__id`),
  KEY `isys_catg_drive_list__status` (`isys_catg_drive_list__status`),
  CONSTRAINT `isys_catg_drive_list__free_space__isys_memory_unit__id` FOREIGN KEY (`isys_catg_drive_list__free_space__isys_memory_unit__id`) REFERENCES `isys_memory_unit` (`isys_memory_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_drive_list__used_space__isys_memory_unit__id` FOREIGN KEY (`isys_catg_drive_list__used_space__isys_memory_unit__id`) REFERENCES `isys_memory_unit` (`isys_memory_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_drive_list_ibfk_1` FOREIGN KEY (`isys_catg_drive_list__isys_stor_raid_level__id`) REFERENCES `isys_stor_raid_level` (`isys_stor_raid_level__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_drive_list_ibfk_10` FOREIGN KEY (`isys_catg_drive_list__isys_catg_ldevclient_list__id`) REFERENCES `isys_catg_ldevclient_list` (`isys_catg_ldevclient_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_drive_list_ibfk_2` FOREIGN KEY (`isys_catg_drive_list__isys_filesystem_type__id`) REFERENCES `isys_filesystem_type` (`isys_filesystem_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_drive_list_ibfk_5` FOREIGN KEY (`isys_catg_drive_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_drive_list_ibfk_6` FOREIGN KEY (`isys_catg_drive_list__isys_memory_unit__id`) REFERENCES `isys_memory_unit` (`isys_memory_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_drive_list_ibfk_7` FOREIGN KEY (`isys_catg_drive_list__isys_catg_stor_list__id`) REFERENCES `isys_catg_stor_list` (`isys_catg_stor_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_drive_list_ibfk_8` FOREIGN KEY (`isys_catg_drive_list__id__raid_pool`) REFERENCES `isys_catg_raid_list` (`isys_catg_raid_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_drive_list_ibfk_9` FOREIGN KEY (`isys_catg_drive_list__isys_catg_raid_list__id`) REFERENCES `isys_catg_raid_list` (`isys_catg_raid_list__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_drive_list_2_isys_catg_cluster_service_list` (
  `isys_catg_drive_list__id` int(10) unsigned NOT NULL,
  `isys_catg_cluster_service_list__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_catg_drive_list__id`,`isys_catg_cluster_service_list__id`),
  KEY `isys_catg_cluster_service_list__id` (`isys_catg_cluster_service_list__id`),
  CONSTRAINT `isys_catg_drive_list_2_isys_catg_cluster_service_list_ibfk_1` FOREIGN KEY (`isys_catg_drive_list__id`) REFERENCES `isys_catg_drive_list` (`isys_catg_drive_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_drive_list_2_isys_catg_cluster_service_list_ibfk_2` FOREIGN KEY (`isys_catg_cluster_service_list__id`) REFERENCES `isys_catg_cluster_service_list` (`isys_catg_cluster_service_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_emergency_plan_list` (
  `isys_catg_emergency_plan_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_emergency_plan_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_emergency_plan_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_emergency_plan_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_emergency_plan_list__status` int(10) unsigned DEFAULT '2',
  `isys_catg_emergency_plan_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_emergency_plan_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_emergency_plan_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_emergency_plan_list__id`),
  KEY `isys_catg_emergency_plan_list_FKIndex2` (`isys_catg_emergency_plan_list__isys_obj__id`),
  KEY `isys_catg_emergency_plan_list__isys_connection__id` (`isys_catg_emergency_plan_list__isys_connection__id`),
  KEY `isys_catg_emergency_plan_list__isys_catg_relation_list__id` (`isys_catg_emergency_plan_list__isys_catg_relation_list__id`),
  KEY `isys_catg_emergency_plan_list__status` (`isys_catg_emergency_plan_list__status`),
  CONSTRAINT `isys_catg_emergency_plan_list__isys_catg_relation_list__id` FOREIGN KEY (`isys_catg_emergency_plan_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_emergency_plan_list_ibfk_3` FOREIGN KEY (`isys_catg_emergency_plan_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_emergency_plan_list_ibfk_4` FOREIGN KEY (`isys_catg_emergency_plan_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_fc_port_list` (
  `isys_catg_fc_port_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_fc_port_list__isys_catg_connector_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_fc_port_list__isys_catg_controller_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_fc_port_list__isys_fc_port_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_fc_port_list__isys_fc_port_medium__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_fc_port_list__isys_port_speed__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_fc_port_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_fc_port_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_fc_port_list__number` int(10) unsigned DEFAULT NULL,
  `isys_catg_fc_port_list__wwn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_fc_port_list__wwpn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_fc_port_list__const` int(10) unsigned DEFAULT NULL,
  `isys_catg_fc_port_list__sort` int(10) unsigned DEFAULT NULL,
  `isys_catg_fc_port_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_fc_port_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_fc_port_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_fc_port_list__port_speed` bigint(32) unsigned DEFAULT NULL,
  `isys_catg_fc_port_list__isys_catg_hba_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_fc_port_list__id`),
  KEY `isys_fc_port_FKIndex1` (`isys_catg_fc_port_list__isys_port_speed__id`),
  KEY `isys_catg_fc_port_list__isys_obj__id` (`isys_catg_fc_port_list__isys_obj__id`),
  KEY `isys_catg_fc_port_list__isys_catg_connector_list__id` (`isys_catg_fc_port_list__isys_catg_connector_list__id`),
  KEY `isys_fc_port_FKIndex2` (`isys_catg_fc_port_list__isys_fc_port_medium__id`),
  KEY `isys_fc_port_FKIndex3` (`isys_catg_fc_port_list__isys_fc_port_type__id`),
  KEY `isys_fc_port_FKIndex4` (`isys_catg_fc_port_list__isys_catg_controller_list__id`),
  KEY `isys_catg_fc_port_list__isys_catg_hba_list__id` (`isys_catg_fc_port_list__isys_catg_hba_list__id`),
  KEY `isys_catg_fc_port_list__status` (`isys_catg_fc_port_list__status`),
  CONSTRAINT `isys_catg_fc_port_list_ibfk_10` FOREIGN KEY (`isys_catg_fc_port_list__isys_catg_hba_list__id`) REFERENCES `isys_catg_hba_list` (`isys_catg_hba_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_fc_port_list_ibfk_4` FOREIGN KEY (`isys_catg_fc_port_list__isys_catg_controller_list__id`) REFERENCES `isys_catg_controller_list` (`isys_catg_controller_list__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_catg_fc_port_list_ibfk_5` FOREIGN KEY (`isys_catg_fc_port_list__isys_fc_port_type__id`) REFERENCES `isys_fc_port_type` (`isys_fc_port_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_fc_port_list_ibfk_6` FOREIGN KEY (`isys_catg_fc_port_list__isys_fc_port_medium__id`) REFERENCES `isys_fc_port_medium` (`isys_fc_port_medium__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_fc_port_list_ibfk_7` FOREIGN KEY (`isys_catg_fc_port_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_fc_port_list_ibfk_8` FOREIGN KEY (`isys_catg_fc_port_list__isys_catg_connector_list__id`) REFERENCES `isys_catg_connector_list` (`isys_catg_connector_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_fc_port_list_ibfk_9` FOREIGN KEY (`isys_catg_fc_port_list__isys_port_speed__id`) REFERENCES `isys_port_speed` (`isys_port_speed__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_fiber_lead_list` (
  `isys_catg_fiber_lead_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_fiber_lead_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_fiber_lead_list__label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_fiber_lead_list__isys_fiber_category__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_fiber_lead_list__isys_cable_colour__id` int(10) DEFAULT NULL,
  `isys_catg_fiber_lead_list__damping` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_fiber_lead_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_fiber_lead_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_catg_fiber_lead_list__id`),
  KEY `fk__fiber_lead__object` (`isys_catg_fiber_lead_list__isys_obj__id`),
  KEY `fk__fiber_lead__category` (`isys_catg_fiber_lead_list__isys_fiber_category__id`),
  KEY `fk__fiber_lead__color` (`isys_catg_fiber_lead_list__isys_cable_colour__id`),
  KEY `isys_catg_fiber_lead_list__status` (`isys_catg_fiber_lead_list__status`),
  CONSTRAINT `fk__fiber_lead__category` FOREIGN KEY (`isys_catg_fiber_lead_list__isys_fiber_category__id`) REFERENCES `isys_fiber_category` (`isys_fiber_category__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk__fiber_lead__color` FOREIGN KEY (`isys_catg_fiber_lead_list__isys_cable_colour__id`) REFERENCES `isys_cable_colour` (`isys_cable_colour__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk__fiber_lead__object` FOREIGN KEY (`isys_catg_fiber_lead_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='fiber/lead';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_file_list` (
  `isys_catg_file_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_file_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_file_list__link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_file_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_file_list__status` int(10) unsigned DEFAULT '1',
  `isys_catg_file_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_file_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_file_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_file_list__id`),
  KEY `isys_catg_file_list_FKIndex2` (`isys_catg_file_list__isys_obj__id`),
  KEY `isys_catg_file_list__isys_connection__id` (`isys_catg_file_list__isys_connection__id`),
  KEY `isys_catg_file_list__isys_catg_relation_list__id` (`isys_catg_file_list__isys_catg_relation_list__id`),
  KEY `isys_catg_file_list__status` (`isys_catg_file_list__status`),
  CONSTRAINT `isys_catg_file_list__isys_catg_relation_list__id` FOREIGN KEY (`isys_catg_file_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_file_list_ibfk_12` FOREIGN KEY (`isys_catg_file_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_file_list_ibfk_3` FOREIGN KEY (`isys_catg_file_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_formfactor_list` (
  `isys_catg_formfactor_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_formfactor_list__isys_catg_formfactor_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_formfactor_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_formfactor_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_formfactor_list__rackunits` int(10) unsigned DEFAULT NULL,
  `isys_catg_formfactor_list__installation_height` float DEFAULT NULL,
  `isys_catg_formfactor_list__installation_width` float DEFAULT NULL,
  `isys_catg_formfactor_list__installation_depth` float DEFAULT NULL,
  `isys_catg_formfactor_list__isys_depth_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_formfactor_list__status` int(10) unsigned DEFAULT '2',
  `isys_catg_formfactor_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_formfactor_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_formfactor_list__isys_weight_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_formfactor_list__installation_weight` float unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_formfactor_list__id`),
  KEY `isys_catg_formfactor_list_FKIndex2` (`isys_catg_formfactor_list__isys_catg_formfactor_type__id`),
  KEY `isys_catg_formfactor_list_FKIndex3` (`isys_catg_formfactor_list__isys_depth_unit__id`),
  KEY `isys_catg_formfactor_list__isys_obj__id` (`isys_catg_formfactor_list__isys_obj__id`),
  KEY `isys_catg_formfactor_list__isys_weight_unit__id` (`isys_catg_formfactor_list__isys_weight_unit__id`),
  CONSTRAINT `isys_catg_formfactor_list_ibfk_3` FOREIGN KEY (`isys_catg_formfactor_list__isys_depth_unit__id`) REFERENCES `isys_depth_unit` (`isys_depth_unit__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_catg_formfactor_list_ibfk_4` FOREIGN KEY (`isys_catg_formfactor_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_formfactor_list_ibfk_5` FOREIGN KEY (`isys_catg_formfactor_list__isys_catg_formfactor_type__id`) REFERENCES `isys_catg_formfactor_type` (`isys_catg_formfactor_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_formfactor_list_ibfk_6` FOREIGN KEY (`isys_catg_formfactor_list__isys_weight_unit__id`) REFERENCES `isys_weight_unit` (`isys_weight_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_formfactor_type` (
  `isys_catg_formfactor_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_formfactor_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_formfactor_type__description` text COLLATE utf8_unicode_ci,
  `isys_catg_formfactor_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_formfactor_type__sort` int(10) unsigned DEFAULT '5',
  `isys_catg_formfactor_type__property` int(10) unsigned DEFAULT '0',
  `isys_catg_formfactor_type__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_catg_formfactor_type__id`),
  KEY `isys_catg_formfactor_type__title` (`isys_catg_formfactor_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_catg_formfactor_type` VALUES (1,'19\"',NULL,'C__FORMFACTOR_TYPE__19INCH',1,0,2);
INSERT INTO `isys_catg_formfactor_type` VALUES (2,'Desktop',NULL,'C__FORMFACTOR_TYPE__DESKTOP',2,0,2);
INSERT INTO `isys_catg_formfactor_type` VALUES (3,'Tower',NULL,'C__FORMFACTOR_TYPE__TOWER',3,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_global_category` (
  `isys_catg_global_category__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_global_category__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_global_category__description` text COLLATE utf8_unicode_ci,
  `isys_catg_global_category__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_global_category__sort` int(10) unsigned DEFAULT '5',
  `isys_catg_global_category__status` int(10) unsigned DEFAULT '2',
  `isys_catg_global_category__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_catg_global_category__id`),
  KEY `isys_catg_global_category__title` (`isys_catg_global_category__title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_catg_global_category` VALUES (1,'LC__UNIVERSAL__OTHER','Andere','C__GLOBAL_CATEGORY__OTHER',5,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_global_list` (
  `isys_catg_global_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_global_list__isys_catg_global_category__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_global_list__isys_purpose__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_global_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_global_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_global_list__acquirementdate` datetime DEFAULT NULL,
  `isys_catg_global_list__status` int(10) unsigned DEFAULT '2',
  `isys_catg_global_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_global_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_global_list__id`),
  KEY `isys_catg_global_list_FKIndex1` (`isys_catg_global_list__isys_purpose__id`),
  KEY `isys_catg_global_list_FKIndex3` (`isys_catg_global_list__isys_catg_global_category__id`),
  KEY `isys_catg_global_list__isys_obj__id` (`isys_catg_global_list__isys_obj__id`),
  CONSTRAINT `isys_catg_global_list_ibfk_6` FOREIGN KEY (`isys_catg_global_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_global_list_ibfk_7` FOREIGN KEY (`isys_catg_global_list__isys_catg_global_category__id`) REFERENCES `isys_catg_global_category` (`isys_catg_global_category__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_global_list_ibfk_8` FOREIGN KEY (`isys_catg_global_list__isys_purpose__id`) REFERENCES `isys_purpose` (`isys_purpose__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_catg_global_list` VALUES (1,1,NULL,'Root-Lokation','',NULL,2,0,1);
INSERT INTO `isys_catg_global_list` VALUES (2,1,NULL,NULL,'',NULL,2,0,4);
INSERT INTO `isys_catg_global_list` VALUES (3,1,NULL,NULL,'',NULL,2,0,5);
INSERT INTO `isys_catg_global_list` VALUES (4,1,NULL,NULL,'',NULL,2,0,6);
INSERT INTO `isys_catg_global_list` VALUES (5,1,NULL,NULL,'',NULL,2,0,7);
INSERT INTO `isys_catg_global_list` VALUES (6,1,NULL,NULL,'',NULL,2,0,8);
INSERT INTO `isys_catg_global_list` VALUES (7,1,NULL,NULL,'',NULL,2,0,9);
INSERT INTO `isys_catg_global_list` VALUES (8,1,NULL,NULL,'',NULL,2,0,10);
INSERT INTO `isys_catg_global_list` VALUES (9,1,NULL,NULL,'',NULL,2,0,11);
INSERT INTO `isys_catg_global_list` VALUES (10,1,NULL,NULL,'',NULL,2,0,12);
INSERT INTO `isys_catg_global_list` VALUES (11,1,NULL,NULL,'',NULL,2,0,13);
INSERT INTO `isys_catg_global_list` VALUES (12,1,NULL,NULL,'',NULL,2,0,14);
INSERT INTO `isys_catg_global_list` VALUES (13,1,NULL,NULL,'',NULL,2,0,15);
INSERT INTO `isys_catg_global_list` VALUES (14,1,NULL,NULL,'',NULL,2,0,16);
INSERT INTO `isys_catg_global_list` VALUES (15,1,NULL,NULL,'',NULL,2,0,17);
INSERT INTO `isys_catg_global_list` VALUES (16,1,NULL,NULL,'',NULL,2,0,18);
INSERT INTO `isys_catg_global_list` VALUES (17,1,NULL,NULL,'',NULL,2,0,19);
INSERT INTO `isys_catg_global_list` VALUES (18,NULL,NULL,'Global v4',NULL,NULL,2,0,20);
INSERT INTO `isys_catg_global_list` VALUES (19,NULL,NULL,'Global v6',NULL,NULL,2,0,21);
INSERT INTO `isys_catg_global_list` VALUES (20,NULL,NULL,'Api System',NULL,NULL,2,0,22);
INSERT INTO `isys_catg_global_list` VALUES (21,NULL,NULL,'4-Slot',NULL,NULL,2,0,23);
INSERT INTO `isys_catg_global_list` VALUES (22,NULL,NULL,'8-Slot',NULL,NULL,2,0,24);
INSERT INTO `isys_catg_global_list` VALUES (23,NULL,NULL,'2-Slot',NULL,NULL,2,0,25);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_graphic_list` (
  `isys_catg_graphic_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_graphic_list__isys_memory_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_graphic_list__isys_graphic_manufacturer__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_graphic_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_graphic_list__memory` bigint(20) DEFAULT NULL,
  `isys_catg_graphic_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_graphic_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_graphic_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_graphic_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_graphic_list__id`),
  KEY `isys_catg_graphic_list_FKIndex2` (`isys_catg_graphic_list__isys_memory_unit__id`),
  KEY `isys_catg_graphic_list_FKIndex3` (`isys_catg_graphic_list__isys_graphic_manufacturer__id`),
  KEY `isys_catg_graphic_list__isys_obj__id` (`isys_catg_graphic_list__isys_obj__id`),
  KEY `isys_catg_graphic_list__status` (`isys_catg_graphic_list__status`),
  CONSTRAINT `isys_catg_graphic_list_ibfk_1` FOREIGN KEY (`isys_catg_graphic_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_guest_systems_list` (
  `isys_catg_guest_systems_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_guest_systems_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_guest_systems_list__status` int(10) unsigned NOT NULL,
  `isys_catg_guest_systems_list__property` int(10) unsigned NOT NULL,
  `isys_catg_guest_systems_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_guest_systems_list__description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_catg_guest_systems_list__id`),
  KEY `isys_catg_guest_systems_list__isys_obj__id` (`isys_catg_guest_systems_list__isys_obj__id`),
  KEY `isys_catg_guest_systems_list__isys_connection__id` (`isys_catg_guest_systems_list__isys_connection__id`),
  CONSTRAINT `isys_catg_guest_systems_list_ibfk_1` FOREIGN KEY (`isys_catg_guest_systems_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_guest_systems_list_ibfk_2` FOREIGN KEY (`isys_catg_guest_systems_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_hba_list` (
  `isys_catg_hba_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_hba_list__isys_controller_manufacturer__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_hba_list__isys_controller_model__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_hba_list__isys_hba_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_hba_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_hba_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_hba_list__portcount` int(10) unsigned DEFAULT '0',
  `isys_catg_hba_list__status` int(10) unsigned DEFAULT '1',
  `isys_catg_hba_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_hba_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_hba_list__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_hba_list__sort` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_hba_list__id`),
  KEY `isys_catg_hba_list_FKIndex1` (`isys_catg_hba_list__isys_hba_type__id`),
  KEY `isys_catg_hba_list_FKIndex2` (`isys_catg_hba_list__isys_controller_manufacturer__id`),
  KEY `isys_catg_hba_list_FKIndex3` (`isys_catg_hba_list__isys_controller_model__id`),
  KEY `isys_catg_hba_list_FKIndex4` (`isys_catg_hba_list__isys_obj__id`),
  KEY `isys_catg_hba_list__title` (`isys_catg_hba_list__title`),
  KEY `isys_catg_hba_list__status` (`isys_catg_hba_list__status`),
  CONSTRAINT `isys_catg_hba_list_ibfk_1` FOREIGN KEY (`isys_catg_hba_list__isys_hba_type__id`) REFERENCES `isys_hba_type` (`isys_hba_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_hba_list_ibfk_2` FOREIGN KEY (`isys_catg_hba_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_hba_list_ibfk_3` FOREIGN KEY (`isys_catg_hba_list__isys_controller_manufacturer__id`) REFERENCES `isys_controller_manufacturer` (`isys_controller_manufacturer__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_hba_list_ibfk_4` FOREIGN KEY (`isys_catg_hba_list__isys_controller_model__id`) REFERENCES `isys_controller_model` (`isys_controller_model__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_identifier_list` (
  `isys_catg_identifier_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_identifier_list__isys_catg_identifier_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_identifier_list__key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_identifier_list__value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_identifier_list__datetime` datetime DEFAULT NULL,
  `isys_catg_identifier_list__group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_identifier_list__last_scan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_identifier_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_identifier_list__status` int(10) NOT NULL DEFAULT '2',
  `isys_catg_identifier_list__isys_obj__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_catg_identifier_list__id`),
  KEY `isys_catg_identifier_list__key` (`isys_catg_identifier_list__key`),
  KEY `isys_catg_identifier_list__isys_catg_identifier_type__id` (`isys_catg_identifier_list__isys_catg_identifier_type__id`),
  KEY `isys_catg_identifier_list__isys_obj__id` (`isys_catg_identifier_list__isys_obj__id`),
  KEY `isys_catg_identifier_list__group` (`isys_catg_identifier_list__group`),
  KEY `identifier_search_index` (`isys_catg_identifier_list__isys_obj__id`,`isys_catg_identifier_list__isys_catg_identifier_type__id`,`isys_catg_identifier_list__key`),
  KEY `identifier_universal` (`isys_catg_identifier_list__key`,`isys_catg_identifier_list__isys_catg_identifier_type__id`,`isys_catg_identifier_list__value`,`isys_catg_identifier_list__isys_obj__id`,`isys_catg_identifier_list__status`),
  CONSTRAINT `isys_catg_identifier_list__isys_obj__id` FOREIGN KEY (`isys_catg_identifier_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_identifier_list_ibfk_7` FOREIGN KEY (`isys_catg_identifier_list__isys_catg_identifier_type__id`) REFERENCES `isys_catg_identifier_type` (`isys_catg_identifier_type__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_identifier_type` (
  `isys_catg_identifier_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_identifier_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_identifier_type__description` text COLLATE utf8_unicode_ci,
  `isys_catg_identifier_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_identifier_type__property` int(10) DEFAULT NULL,
  `isys_catg_identifier_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_catg_identifier_type__status` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_catg_identifier_type__id`),
  KEY `isys_catg_identifier_type__title` (`isys_catg_identifier_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_catg_identifier_type` VALUES (1,'OCS',NULL,'C__CATG__IDENTIFIER_TYPE__OCS',NULL,NULL,2);
INSERT INTO `isys_catg_identifier_type` VALUES (2,'JDisc',NULL,'C__CATG__IDENTIFIER_TYPE__JDISC',NULL,NULL,2);
INSERT INTO `isys_catg_identifier_type` VALUES (3,'Loginventory',NULL,'C__CATG__IDENTIFIER_TYPE__LOGINVENTORY',NULL,NULL,2);
INSERT INTO `isys_catg_identifier_type` VALUES (4,'openITCOCKPIT',NULL,'C__CATG__IDENTIFIER_TYPE__OPENITCOCKPIT',NULL,NULL,2);
INSERT INTO `isys_catg_identifier_type` VALUES (5,'OTRS',NULL,'C__CATG__IDENTIFIER_TYPE__OTRS',NULL,NULL,2);
INSERT INTO `isys_catg_identifier_type` VALUES (6,'RT',NULL,'C__CATG__IDENTIFIER_TYPE__RT',NULL,NULL,2);
INSERT INTO `isys_catg_identifier_type` VALUES (7,'JIRA',NULL,'C__CATG__IDENTIFIER_TYPE__JIRA',NULL,NULL,2);
INSERT INTO `isys_catg_identifier_type` VALUES (8,'H-Inventory',NULL,'C__CATG__IDENTIFIER_TYPE__H_INVENTORY',NULL,NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_image_list` (
  `isys_catg_image_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_image_list__image_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_image_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_image_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_image_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_image_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_image_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_image_list__id`),
  KEY `isys_catg_image_list__isys_obj__id` (`isys_catg_image_list__isys_obj__id`),
  CONSTRAINT `isys_catg_image_list_ibfk_2` FOREIGN KEY (`isys_catg_image_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_images_list` (
  `isys_catg_images_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_images_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_images_list__filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_images_list__filecontent` mediumblob,
  `isys_catg_images_list__filemime` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_images_list__uploaded` datetime NOT NULL,
  `isys_catg_images_list__status` int(10) unsigned DEFAULT '2',
  `isys_catg_images_list__order` int(5) unsigned DEFAULT '99999',
  PRIMARY KEY (`isys_catg_images_list__id`),
  KEY `isys_catg_images_list__isys_obj__id` (`isys_catg_images_list__isys_obj__id`),
  KEY `isys_catg_images_list__status` (`isys_catg_images_list__status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_invoice_list` (
  `isys_catg_invoice_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_invoice_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_invoice_list__status` int(10) unsigned DEFAULT '2',
  `isys_catg_invoice_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_invoice_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_invoice_list__date` date DEFAULT NULL,
  `isys_catg_invoice_list__edited` date DEFAULT NULL,
  `isys_catg_invoice_list__financial_accounting_delivery` date DEFAULT NULL,
  `isys_catg_invoice_list__charged` int(1) unsigned DEFAULT '0',
  `isys_catg_invoice_list__amount` double DEFAULT NULL,
  `isys_catg_invoice_list__denotation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_catg_invoice_list__id`),
  KEY `isys_catg_invoice_list__isys_obj__id` (`isys_catg_invoice_list__isys_obj__id`),
  KEY `isys_catg_invoice_list__status` (`isys_catg_invoice_list__status`),
  CONSTRAINT `isys_catg_invoice_list_ibfk_1` FOREIGN KEY (`isys_catg_invoice_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_ip_list` (
  `isys_catg_ip_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_ip_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ip_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ip_list__isys_ip_assignment__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ip_list__isys_ipv6_assignment__id` int(10) unsigned DEFAULT '1',
  `isys_catg_ip_list__isys_ipv6_scope__id` int(10) unsigned DEFAULT '1',
  `isys_catg_ip_list__isys_net_dns_server__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ip_list__isys_net_dns_domain__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ip_list__isys_net_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ip_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_ip_list__status` int(10) unsigned DEFAULT '1',
  `isys_catg_ip_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_ip_list__hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_ip_list__domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_ip_list__dhcp` int(10) unsigned DEFAULT '0',
  `isys_catg_ip_list__address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_ip_list__mask` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_ip_list__primary` int(10) unsigned DEFAULT NULL,
  `isys_catg_ip_list__gateway` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_ip_list__dns_domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_ip_list__dns_server` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_ip_list__active` int(10) unsigned DEFAULT NULL,
  `isys_catg_ip_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ip_list__isys_cats_net_ip_addresses_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ip_list__isys_catg_port_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ip_list__isys_catg_log_port_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ip_list__isys_obj__id__zone` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_ip_list__id`),
  KEY `isys_catp_ip_list_FKIndex2` (`isys_catg_ip_list__isys_ip_assignment__id`),
  KEY `isys_catg_ip_list__isys_obj__id` (`isys_catg_ip_list__isys_obj__id`),
  KEY `isys_catg_ip_list__isys_net_type__id` (`isys_catg_ip_list__isys_net_type__id`),
  KEY `isys_catg_ip_list__isys_connection__id` (`isys_catg_ip_list__isys_connection__id`),
  KEY `isys_catg_ip_list__isys_net_dns_domain__id` (`isys_catg_ip_list__isys_net_dns_domain__id`),
  KEY `isys_catg_ip_list__isys_net_dns_server__id` (`isys_catg_ip_list__isys_net_dns_server__id`),
  KEY `isys_catg_ip_list__isys_catg_relation_list__id` (`isys_catg_ip_list__isys_catg_relation_list__id`),
  KEY `isys_catg_ip_list__isys_cats_net_ip_addresses_list__id` (`isys_catg_ip_list__isys_cats_net_ip_addresses_list__id`),
  KEY `isys_catg_ip_list__isys_ipv6_assignment__id` (`isys_catg_ip_list__isys_ipv6_assignment__id`),
  KEY `isys_catg_ip_list__isys_ipv6_scope__id` (`isys_catg_ip_list__isys_ipv6_scope__id`),
  KEY `isys_catg_ip_list__isys_catg_port_list__id` (`isys_catg_ip_list__isys_catg_port_list__id`),
  KEY `isys_catg_ip_list__isys_catg_log_port_list__id` (`isys_catg_ip_list__isys_catg_log_port_list__id`),
  KEY `isys_catg_ip_list__hostname` (`isys_catg_ip_list__hostname`),
  KEY `isys_catg_ip_list__status` (`isys_catg_ip_list__status`),
  KEY `isys_catg_ip_list__isys_obj__id__zone` (`isys_catg_ip_list__isys_obj__id__zone`),
  CONSTRAINT `isys_catg_ip_list__isys_obj__id__zone` FOREIGN KEY (`isys_catg_ip_list__isys_obj__id__zone`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_ibfk_1` FOREIGN KEY (`isys_catg_ip_list__isys_ip_assignment__id`) REFERENCES `isys_ip_assignment` (`isys_ip_assignment__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_ibfk_10` FOREIGN KEY (`isys_catg_ip_list__isys_catg_log_port_list__id`) REFERENCES `isys_catg_log_port_list` (`isys_catg_log_port_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_ibfk_11` FOREIGN KEY (`isys_catg_ip_list__isys_cats_net_ip_addresses_list__id`) REFERENCES `isys_cats_net_ip_addresses_list` (`isys_cats_net_ip_addresses_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_ibfk_12` FOREIGN KEY (`isys_catg_ip_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_ibfk_2` FOREIGN KEY (`isys_catg_ip_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_ibfk_3` FOREIGN KEY (`isys_catg_ip_list__isys_net_type__id`) REFERENCES `isys_net_type` (`isys_net_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_ibfk_4` FOREIGN KEY (`isys_catg_ip_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_ibfk_5` FOREIGN KEY (`isys_catg_ip_list__isys_net_dns_domain__id`) REFERENCES `isys_net_dns_domain` (`isys_net_dns_domain__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_ibfk_6` FOREIGN KEY (`isys_catg_ip_list__isys_net_dns_server__id`) REFERENCES `isys_net_dns_server` (`isys_net_dns_server__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_ibfk_7` FOREIGN KEY (`isys_catg_ip_list__isys_ipv6_assignment__id`) REFERENCES `isys_ipv6_assignment` (`isys_ipv6_assignment__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_ibfk_8` FOREIGN KEY (`isys_catg_ip_list__isys_ipv6_scope__id`) REFERENCES `isys_ipv6_scope` (`isys_ipv6_scope__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_ibfk_9` FOREIGN KEY (`isys_catg_ip_list__isys_catg_port_list__id`) REFERENCES `isys_catg_port_list` (`isys_catg_port_list__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_ip_list_2_isys_catg_cluster_service_list` (
  `isys_catg_ip_list__id` int(10) unsigned NOT NULL,
  `isys_catg_cluster_service_list__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_catg_ip_list__id`,`isys_catg_cluster_service_list__id`),
  KEY `isys_catg_cluster_service_list__id` (`isys_catg_cluster_service_list__id`),
  CONSTRAINT `isys_catg_ip_list_2_isys_catg_cluster_service_list_ibfk_1` FOREIGN KEY (`isys_catg_ip_list__id`) REFERENCES `isys_catg_ip_list` (`isys_catg_ip_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_2_isys_catg_cluster_service_list_ibfk_2` FOREIGN KEY (`isys_catg_cluster_service_list__id`) REFERENCES `isys_catg_cluster_service_list` (`isys_catg_cluster_service_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_ip_list_2_isys_catg_ip_list` (
  `isys_catg_ip_list_2_isys_catg_ip_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_ip_list__id` int(10) unsigned NOT NULL,
  `isys_catg_ip_list__id__dns` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_catg_ip_list_2_isys_catg_ip_list__id`),
  KEY `isys_catg_ip_list__id` (`isys_catg_ip_list__id`),
  KEY `isys_catg_ip_list__id__dns` (`isys_catg_ip_list__id__dns`),
  CONSTRAINT `isys_catg_ip_list_2_isys_catg_ip_list_ibfk_1` FOREIGN KEY (`isys_catg_ip_list__id`) REFERENCES `isys_catg_ip_list` (`isys_catg_ip_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_2_isys_catg_ip_list_ibfk_2` FOREIGN KEY (`isys_catg_ip_list__id__dns`) REFERENCES `isys_catg_ip_list` (`isys_catg_ip_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_ip_list_2_isys_catg_log_port_list` (
  `isys_catg_ip_list__id` int(10) unsigned NOT NULL,
  `isys_catg_log_port_list__id` int(10) unsigned NOT NULL,
  KEY `isys_catg_ip_list__id` (`isys_catg_ip_list__id`),
  KEY `isys_catg_log_port_list__id` (`isys_catg_log_port_list__id`),
  CONSTRAINT `isys_catg_ip_list_2_isys_catg_log_port_list_ibfk_2` FOREIGN KEY (`isys_catg_ip_list__id`) REFERENCES `isys_catg_ip_list` (`isys_catg_ip_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_2_isys_catg_log_port_list_ibfk_3` FOREIGN KEY (`isys_catg_log_port_list__id`) REFERENCES `isys_catg_log_port_list` (`isys_catg_log_port_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_ip_list_2_isys_catg_port_list` (
  `isys_catg_ip_list_2_isys_catg_port_list__isys_catg_ip_list__id` int(10) unsigned NOT NULL,
  `isys_catg_ip_list_2_isys_catg_port_list__isys_catg_port_list__id` int(10) unsigned NOT NULL,
  KEY `isys_catg_ip_list_2_isys_catg_port_list__isys_catg_ip_list__id` (`isys_catg_ip_list_2_isys_catg_port_list__isys_catg_ip_list__id`),
  KEY `isys_catg_ip_list_2_isys_catg_port_list__isys_catg_port_list__id` (`isys_catg_ip_list_2_isys_catg_port_list__isys_catg_port_list__id`),
  CONSTRAINT `isys_catg_ip_list_2_isys_catg_port_list_ibfk_1` FOREIGN KEY (`isys_catg_ip_list_2_isys_catg_port_list__isys_catg_port_list__id`) REFERENCES `isys_catg_port_list` (`isys_catg_port_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_2_isys_catg_port_list_ibfk_2` FOREIGN KEY (`isys_catg_ip_list_2_isys_catg_port_list__isys_catg_ip_list__id`) REFERENCES `isys_catg_ip_list` (`isys_catg_ip_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_ip_list_2_isys_cats_router_list` (
  `isys_catg_ip_list__id` int(10) unsigned NOT NULL,
  `isys_cats_router_list__id` int(10) unsigned NOT NULL,
  KEY `isys_catg_ip_list__id` (`isys_catg_ip_list__id`),
  KEY `isys_cats_router_list__id` (`isys_cats_router_list__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_ip_list_2_isys_net_dns_domain` (
  `isys_catg_ip_list_2_isys_net_dns_domain__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_ip_list__id` int(10) unsigned NOT NULL,
  `isys_net_dns_domain__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_catg_ip_list_2_isys_net_dns_domain__id`),
  KEY `isys_catg_ip_list__id` (`isys_catg_ip_list__id`),
  KEY `isys_net_dns_domain__id` (`isys_net_dns_domain__id`),
  CONSTRAINT `isys_catg_ip_list_2_isys_net_dns_domain_ibfk_1` FOREIGN KEY (`isys_catg_ip_list__id`) REFERENCES `isys_catg_ip_list` (`isys_catg_ip_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_2_isys_net_dns_domain_ibfk_2` FOREIGN KEY (`isys_net_dns_domain__id`) REFERENCES `isys_net_dns_domain` (`isys_net_dns_domain__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_ip_list_2_isys_netp_ifacel` (
  `isys_catg_ip_list_2_isys_netp_ifacel__isys_catg_ip_list__id` int(10) unsigned NOT NULL,
  `isys_catg_ip_list_2_isys_netp_ifacel__isys_netp_ifacel__id` int(10) unsigned NOT NULL,
  KEY `isys_catg_ip_list_2_isys_netp_ifacel__isys_catg_ip_list__id` (`isys_catg_ip_list_2_isys_netp_ifacel__isys_catg_ip_list__id`),
  KEY `isys_catg_ip_list_2_isys_netp_ifacel__isys_netp_ifacel__id` (`isys_catg_ip_list_2_isys_netp_ifacel__isys_netp_ifacel__id`),
  CONSTRAINT `isys_catg_ip_list_2_isys_netp_ifacel_ibfk_1` FOREIGN KEY (`isys_catg_ip_list_2_isys_netp_ifacel__isys_catg_ip_list__id`) REFERENCES `isys_catg_ip_list` (`isys_catg_ip_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ip_list_2_isys_netp_ifacel_ibfk_2` FOREIGN KEY (`isys_catg_ip_list_2_isys_netp_ifacel__isys_netp_ifacel__id`) REFERENCES `isys_netp_ifacel` (`isys_netp_ifacel__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_its_components_list` (
  `isys_catg_its_components_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_its_components_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_its_components_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_its_components_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_its_components_list__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_its_components_list__sort` int(10) unsigned DEFAULT NULL,
  `isys_catg_its_components_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_its_components_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_its_components_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_its_components_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_its_components_list__id`),
  KEY `isys_catg_its_components_list__isys_obj__id` (`isys_catg_its_components_list__isys_obj__id`),
  KEY `isys_catg_its_components_list__isys_connection__id` (`isys_catg_its_components_list__isys_connection__id`),
  KEY `isys_catg_its_components_list_ibfk_3` (`isys_catg_its_components_list__isys_catg_relation_list__id`),
  KEY `isys_catg_its_components_list__status` (`isys_catg_its_components_list__status`),
  CONSTRAINT `isys_catg_its_components_list_ibfk_1` FOREIGN KEY (`isys_catg_its_components_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_its_components_list_ibfk_2` FOREIGN KEY (`isys_catg_its_components_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_its_components_list_ibfk_3` FOREIGN KEY (`isys_catg_its_components_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_its_type_list` (
  `isys_catg_its_type_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_its_type_list__isys_its_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_its_type_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_its_type_list__status` int(10) unsigned DEFAULT '2',
  `isys_catg_its_type_list__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_catg_its_type_list__id`),
  KEY `isys_catg_its_type_list__isys_obj__id` (`isys_catg_its_type_list__isys_obj__id`),
  KEY `isys_catg_its_type_list__isys_its_type__id` (`isys_catg_its_type_list__isys_its_type__id`),
  CONSTRAINT `isys_catg_its_type_list_ibfk_1` FOREIGN KEY (`isys_catg_its_type_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_its_type_list_ibfk_2` FOREIGN KEY (`isys_catg_its_type_list__isys_its_type__id`) REFERENCES `isys_its_type` (`isys_its_type__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_jdisc_ca_list` (
  `isys_catg_jdisc_ca_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_jdisc_ca_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_jdisc_ca_list__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_jdisc_ca_list__content` text COLLATE utf8_unicode_ci,
  `isys_catg_jdisc_ca_list__folder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_jdisc_ca_list__isys_jdisc_ca_type__id` int(10) unsigned NOT NULL,
  `isys_catg_jdisc_ca_list__status` int(10) unsigned DEFAULT '2',
  `isys_catg_jdisc_ca_list__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_catg_jdisc_ca_list__id`),
  KEY `isys_catg_jdisc_ca_list__isys_obj__id__FK` (`isys_catg_jdisc_ca_list__isys_obj__id`),
  KEY `isys_catg_jdisc_ca_list__isys_jdisc_ca_type__id__FK` (`isys_catg_jdisc_ca_list__isys_jdisc_ca_type__id`),
  KEY `isys_catg_jdisc_ca_list__status` (`isys_catg_jdisc_ca_list__status`),
  CONSTRAINT `isys_catg_jdisc_ca_list__isys_jdisc_ca_type__id__FK` FOREIGN KEY (`isys_catg_jdisc_ca_list__isys_jdisc_ca_type__id`) REFERENCES `isys_jdisc_ca_type` (`isys_jdisc_ca_type__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_jdisc_ca_list__isys_obj__id__FK` FOREIGN KEY (`isys_catg_jdisc_ca_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_last_login_user_list` (
  `isys_catg_last_login_user_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_last_login_user_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_last_login_user_list__last_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_last_login_user_list__type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_last_login_user_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_last_login_user_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_catg_last_login_user_list__id`),
  UNIQUE KEY `isys_catg_last_login_user_list__isys_obj__id2` (`isys_catg_last_login_user_list__isys_obj__id`),
  KEY `isys_catg_last_login_user_list__isys_obj__id` (`isys_catg_last_login_user_list__isys_obj__id`),
  CONSTRAINT `isys_catg_last_login_user_list__isys_obj__id` FOREIGN KEY (`isys_catg_last_login_user_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_ldap_dn_list` (
  `isys_catg_ldap_dn_list__id` int(10) NOT NULL AUTO_INCREMENT,
  `isys_catg_ldap_dn_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_ldap_dn_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_ldap_dn_list__description` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `isys_catg_ldap_dn_list__status` int(10) NOT NULL,
  PRIMARY KEY (`isys_catg_ldap_dn_list__id`),
  KEY `isys_catg_ldap_dn_list__isys_obj__id` (`isys_catg_ldap_dn_list__isys_obj__id`),
  CONSTRAINT `isys_catg_ldap_dn_list_ibfk_1` FOREIGN KEY (`isys_catg_ldap_dn_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_ldevclient_list` (
  `isys_catg_ldevclient_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_ldevclient_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ldevclient_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_ldevclient_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_ldevclient_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_ldevclient_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_ldevclient_list__isys_catg_sanpool_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ldevclient_list__sort` int(10) unsigned DEFAULT NULL,
  `isys_catg_ldevclient_list__isys_catg_hba_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ldevclient_list__primary_path` int(10) unsigned DEFAULT NULL,
  `isys_catg_ldevclient_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ldevclient_list__isys_ldev_multipath__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_ldevclient_list__id`),
  KEY `isys_catg_ldevclient_list__isys_catg_hba_list__id` (`isys_catg_ldevclient_list__isys_catg_hba_list__id`),
  KEY `isys_catg_ldevclient_list__isys_catg_sanpool_list__id` (`isys_catg_ldevclient_list__isys_catg_sanpool_list__id`),
  KEY `isys_catg_ldevclient_list__isys_obj__id` (`isys_catg_ldevclient_list__isys_obj__id`),
  KEY `isys_catg_ldevclient_list__isys_catg_relation_list__id` (`isys_catg_ldevclient_list__isys_catg_relation_list__id`),
  KEY `isys_catg_ldevclient_list__primary_path` (`isys_catg_ldevclient_list__primary_path`),
  KEY `isys_catg_ldevclient_list_ibfk_5` (`isys_catg_ldevclient_list__isys_ldev_multipath__id`),
  KEY `isys_catg_ldevclient_list__status` (`isys_catg_ldevclient_list__status`),
  CONSTRAINT `isys_catg_ldevclient_list__isys_catg_relation_list__id` FOREIGN KEY (`isys_catg_ldevclient_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ldevclient_list_ibfk_1` FOREIGN KEY (`isys_catg_ldevclient_list__isys_catg_hba_list__id`) REFERENCES `isys_catg_hba_list` (`isys_catg_hba_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ldevclient_list_ibfk_2` FOREIGN KEY (`isys_catg_ldevclient_list__isys_catg_sanpool_list__id`) REFERENCES `isys_catg_sanpool_list` (`isys_catg_sanpool_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ldevclient_list_ibfk_3` FOREIGN KEY (`isys_catg_ldevclient_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ldevclient_list_ibfk_4` FOREIGN KEY (`isys_catg_ldevclient_list__primary_path`) REFERENCES `isys_catg_fc_port_list` (`isys_catg_fc_port_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ldevclient_list_ibfk_5` FOREIGN KEY (`isys_catg_ldevclient_list__isys_ldev_multipath__id`) REFERENCES `isys_ldev_multipath` (`isys_ldev_multipath__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_ldevserver_list` (
  `isys_catg_ldevserver_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_ldevserver_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ldevserver_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_ldevserver_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_ldevserver_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_ldevserver_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_ldevserver_list__isys_ldevserver__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ldevserver_list__lun` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_catg_ldevserver_list__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_location_list` (
  `isys_catg_location_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_location_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_location_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_location_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_location_list__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_location_list__parentid` int(10) unsigned DEFAULT NULL,
  `isys_catg_location_list__lft` int(10) unsigned DEFAULT '0',
  `isys_catg_location_list__rgt` int(10) unsigned DEFAULT NULL,
  `isys_catg_location_list__pos` int(10) unsigned DEFAULT NULL COMMENT 'Start position inside the rack (counted from bottom to top)',
  `isys_catg_location_list__insertion` int(1) unsigned DEFAULT '1',
  `isys_catg_location_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_location_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_location_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_location_list__option` tinyint(1) unsigned DEFAULT NULL,
  `isys_catg_location_list__gps` geometry DEFAULT NULL,
  `isys_catg_location_list__snmp_syslocation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_catg_location_list__id`),
  KEY `isys_catg_location_list_FKIndex2` (`isys_catg_location_list__isys_obj__id`),
  KEY `isys_catg_location_list__parentid` (`isys_catg_location_list__parentid`),
  KEY `isys_catg_location_list__isys_catg_relation_list__id` (`isys_catg_location_list__isys_catg_relation_list__id`),
  CONSTRAINT `isys_catg_location_list__isys_obj__id` FOREIGN KEY (`isys_catg_location_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_location_list__parentid` FOREIGN KEY (`isys_catg_location_list__parentid`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_location_list_ibfk_5` FOREIGN KEY (`isys_catg_location_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_catg_location_list` VALUES (1,1,'[LocationRoot]',NULL,NULL,NULL,1,2,NULL,1,NULL,2,1,NULL,NULL,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_log_port_list` (
  `isys_catg_log_port_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_log_port_list__isys_netp_ifacel_standard__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_log_port_list__isys_netx_ifacel_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_log_port_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_log_port_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_log_port_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_log_port_list__active` int(10) unsigned NOT NULL DEFAULT '1',
  `isys_catg_log_port_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  `isys_catg_log_port_list__mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_log_port_list__parent` int(10) unsigned DEFAULT NULL COMMENT 'parent logical port',
  `isys_catg_log_port_list__isys_catg_log_port_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_log_port_list__id`),
  KEY `isys_catg_log_port_list__isys_netx_ifacel_type__id` (`isys_catg_log_port_list__isys_netx_ifacel_type__id`),
  KEY `isys_catg_log_port_list__isys_netp_ifacel_standard__id` (`isys_catg_log_port_list__isys_netp_ifacel_standard__id`),
  KEY `isys_catg_log_port_list__isys_obj__id` (`isys_catg_log_port_list__isys_obj__id`),
  KEY `isys_catg_log_port_list__isys_catg_log_port_list__id` (`isys_catg_log_port_list__isys_catg_log_port_list__id`),
  KEY `isys_catg_log_port_list__mac` (`isys_catg_log_port_list__mac`),
  KEY `isys_catg_log_port_list__title` (`isys_catg_log_port_list__title`),
  CONSTRAINT `isys_catg_log_port_list_ibfk_1` FOREIGN KEY (`isys_catg_log_port_list__isys_netx_ifacel_type__id`) REFERENCES `isys_netx_ifacel_type` (`isys_netx_ifacel_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_log_port_list_ibfk_2` FOREIGN KEY (`isys_catg_log_port_list__isys_netp_ifacel_standard__id`) REFERENCES `isys_netp_ifacel_standard` (`isys_netp_ifacel_standard__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_log_port_list_ibfk_3` FOREIGN KEY (`isys_catg_log_port_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_log_port_list_ibfk_4` FOREIGN KEY (`isys_catg_log_port_list__isys_catg_log_port_list__id`) REFERENCES `isys_catg_log_port_list` (`isys_catg_log_port_list__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_log_port_list_2_isys_obj` (
  `isys_catg_log_port_list_2_isys_obj__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_log_port_list__id` int(10) unsigned DEFAULT NULL,
  `isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_log_port_list_2_isys_obj__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_catg_log_port_list_2_isys_obj__id`),
  KEY `isys_catg_log_port_list__id` (`isys_catg_log_port_list__id`),
  KEY `isys_obj__id` (`isys_obj__id`),
  KEY `isys_catg_log_port_list_2_isys_obj__status` (`isys_catg_log_port_list_2_isys_obj__status`),
  CONSTRAINT `isys_catg_log_port_list_2_isys_obj_ibfk1` FOREIGN KEY (`isys_catg_log_port_list__id`) REFERENCES `isys_catg_log_port_list` (`isys_catg_log_port_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_log_port_list_2_isys_obj_ibfk2` FOREIGN KEY (`isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_logb_list` (
  `isys_catg_logb_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_logb_list__isys_logbook__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_catg_logb_list__status` int(10) unsigned DEFAULT '2',
  `isys_catg_logb_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_logb_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_logb_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_logb_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_logb_list__id`),
  KEY `isys_catg_logb_list_FKIndex2` (`isys_catg_logb_list__isys_logbook__id`),
  KEY `isys_catg_logb_list__isys_obj__id` (`isys_catg_logb_list__isys_obj__id`),
  KEY `isys_catg_logb_list__status` (`isys_catg_logb_list__status`),
  CONSTRAINT `isys_catg_logb_list_ibfk_3` FOREIGN KEY (`isys_catg_logb_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_logb_list_ibfk_4` FOREIGN KEY (`isys_catg_logb_list__isys_logbook__id`) REFERENCES `isys_logbook` (`isys_logbook__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_logical_unit_list` (
  `isys_catg_logical_unit_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_logical_unit_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_logical_unit_list__isys_obj__id__parent` int(10) unsigned DEFAULT NULL COMMENT 'Parent object',
  `isys_catg_logical_unit_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_logical_unit_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_logical_unit_list__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_catg_logical_unit_list__id`),
  KEY `isys_catg_logical_unit_list__isys_obj__id` (`isys_catg_logical_unit_list__isys_obj__id`),
  KEY `isys_catg_logical_unit_list__isys_obj__id__parent` (`isys_catg_logical_unit_list__isys_obj__id__parent`),
  KEY `isys_catg_logical_unit_list__isys_catg_relation_list__id` (`isys_catg_logical_unit_list__isys_catg_relation_list__id`),
  CONSTRAINT `isys_catg_logical_unit_list_ibfk_1` FOREIGN KEY (`isys_catg_logical_unit_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_logical_unit_list_ibfk_2` FOREIGN KEY (`isys_catg_logical_unit_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_logical_unit_list_ibfk_3` FOREIGN KEY (`isys_catg_logical_unit_list__isys_obj__id__parent`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_mail_addresses_list` (
  `isys_catg_mail_addresses_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_mail_addresses_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_mail_addresses_list__primary` tinyint(1) DEFAULT NULL,
  `isys_catg_mail_addresses_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_mail_addresses_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_mail_addresses_list__status` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_catg_mail_addresses_list__id`),
  KEY `isys_catg_mail_addresses_list__isys_obj__id` (`isys_catg_mail_addresses_list__isys_obj__id`),
  KEY `isys_catg_mail_addresses_list__primary` (`isys_catg_mail_addresses_list__primary`),
  KEY `isys_catg_mail_addresses_list__status` (`isys_catg_mail_addresses_list__status`),
  CONSTRAINT `isys_catg_mail_addresses_list_ibfk_1` FOREIGN KEY (`isys_catg_mail_addresses_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_manual_list` (
  `isys_catg_manual_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_manual_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_manual_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_manual_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_manual_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_manual_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_manual_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_manual_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_manual_list__id`),
  KEY `isys_catg_manual_list_FKIndex2` (`isys_catg_manual_list__isys_obj__id`),
  KEY `isys_catg_manual_list__isys_connection__id` (`isys_catg_manual_list__isys_connection__id`),
  KEY `isys_catg_manual_list__isys_catg_relation_list__id` (`isys_catg_manual_list__isys_catg_relation_list__id`),
  KEY `isys_catg_manual_list__status` (`isys_catg_manual_list__status`),
  CONSTRAINT `isys_catg_manual_list__isys_catg_relation_list__id` FOREIGN KEY (`isys_catg_manual_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_manual_list_ibfk_3` FOREIGN KEY (`isys_catg_manual_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_manual_list_ibfk_4` FOREIGN KEY (`isys_catg_manual_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_memory_list` (
  `isys_catg_memory_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_memory_list__isys_memory_title__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_memory_list__isys_memory_manufacturer__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_memory_list__isys_memory_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_memory_list__isys_memory_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_memory_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_memory_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_memory_list__capacity` bigint(20) DEFAULT NULL,
  `isys_catg_memory_list__quantity` int(10) unsigned DEFAULT NULL,
  `isys_catg_memory_list__status` int(10) unsigned DEFAULT '1',
  `isys_catg_memory_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_memory_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_memory_list__id`),
  KEY `isys_catg_memory_list_FKIndex2` (`isys_catg_memory_list__isys_memory_unit__id`),
  KEY `isys_catg_memory_list_FKIndex3` (`isys_catg_memory_list__isys_memory_type__id`),
  KEY `isys_catg_memory_list_FKIndex4` (`isys_catg_memory_list__isys_memory_manufacturer__id`),
  KEY `isys_catg_memory_list_FKIndex5` (`isys_catg_memory_list__isys_memory_title__id`),
  KEY `isys_catg_memory_list__isys_obj__id` (`isys_catg_memory_list__isys_obj__id`),
  KEY `isys_catg_memory_list__status` (`isys_catg_memory_list__status`),
  CONSTRAINT `isys_catg_memory_list_ibfk_2` FOREIGN KEY (`isys_catg_memory_list__isys_memory_unit__id`) REFERENCES `isys_memory_unit` (`isys_memory_unit__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_catg_memory_list_ibfk_6` FOREIGN KEY (`isys_catg_memory_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_memory_list_ibfk_7` FOREIGN KEY (`isys_catg_memory_list__isys_memory_title__id`) REFERENCES `isys_memory_title` (`isys_memory_title__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_memory_list_ibfk_8` FOREIGN KEY (`isys_catg_memory_list__isys_memory_manufacturer__id`) REFERENCES `isys_memory_manufacturer` (`isys_memory_manufacturer__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_memory_list_ibfk_9` FOREIGN KEY (`isys_catg_memory_list__isys_memory_type__id`) REFERENCES `isys_memory_type` (`isys_memory_type__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_model_list` (
  `isys_catg_model_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_model_list__isys_model_title__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_model_list__isys_model_manufacturer__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_model_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_model_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_model_list__firmware` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_model_list__serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_model_list__status` int(10) unsigned DEFAULT '2',
  `isys_catg_model_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_model_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_model_list__productid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_model_list__service_tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_catg_model_list__id`),
  KEY `isys_catg_model_list_FKIndex1` (`isys_catg_model_list__isys_model_manufacturer__id`),
  KEY `isys_catg_model_list_FKIndex3` (`isys_catg_model_list__isys_model_title__id`),
  KEY `isys_catg_model_list__isys_obj__id` (`isys_catg_model_list__isys_obj__id`),
  KEY `isys_catg_model_list__serial` (`isys_catg_model_list__serial`),
  CONSTRAINT `isys_catg_model_list_ibfk_4` FOREIGN KEY (`isys_catg_model_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_model_list_ibfk_5` FOREIGN KEY (`isys_catg_model_list__isys_model_manufacturer__id`) REFERENCES `isys_model_manufacturer` (`isys_model_manufacturer__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_model_list_ibfk_6` FOREIGN KEY (`isys_catg_model_list__isys_model_title__id`) REFERENCES `isys_model_title` (`isys_model_title__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_monitoring_list` (
  `isys_catg_monitoring_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_monitoring_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_monitoring_list__host_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_monitoring_list__host_name_selection` tinyint(1) unsigned DEFAULT '0',
  `isys_catg_monitoring_list__active` tinyint(1) unsigned DEFAULT '1',
  `isys_catg_monitoring_list__isys_monitoring_hosts__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_monitoring_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_monitoring_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_monitoring_list__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_catg_monitoring_list__id`),
  KEY `isys_catg_monitoring_list__isys_obj__id` (`isys_catg_monitoring_list__isys_obj__id`),
  KEY `isys_catg_monitoring_list__host` (`isys_catg_monitoring_list__isys_monitoring_hosts__id`),
  CONSTRAINT `isys_catg_monitoring_list__isys_monitoring_hosts__id` FOREIGN KEY (`isys_catg_monitoring_list__isys_monitoring_hosts__id`) REFERENCES `isys_monitoring_hosts` (`isys_monitoring_hosts__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_monitoring_list__isys_obj__id` FOREIGN KEY (`isys_catg_monitoring_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_net_connector_list` (
  `isys_catg_net_connector_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_net_connector_list__isys_obj__id` int(10) unsigned DEFAULT NULL COMMENT 'Connector (client, server etc.)',
  `isys_catg_net_connector_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_net_connector_list__ip_addresses_list__id` int(10) unsigned DEFAULT NULL COMMENT 'Source ip address',
  `isys_catg_net_connector_list__isys_catg_net_listener_list__id` int(10) unsigned NOT NULL,
  `isys_catg_net_connector_list__gateway` int(10) unsigned DEFAULT NULL,
  `isys_catg_net_connector_list__port_from` int(10) unsigned DEFAULT NULL COMMENT 'Source port from',
  `isys_catg_net_connector_list__port_to` int(10) unsigned DEFAULT NULL COMMENT 'Source port to',
  `isys_catg_net_connector_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_net_connector_list__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_catg_net_connector_list__id`),
  KEY `isys_obj__id` (`isys_catg_net_connector_list__isys_obj__id`),
  KEY `isys_cats_net_ip_addresses_list__id` (`isys_catg_net_connector_list__ip_addresses_list__id`),
  KEY `isys_catg_net_connector_list__isys_catg_net_listener_list__id` (`isys_catg_net_connector_list__isys_catg_net_listener_list__id`),
  KEY `isys_catg_net_connector_list__isys_catg_relation_list__id` (`isys_catg_net_connector_list__isys_catg_relation_list__id`),
  KEY `isys_catg_net_connector_list__gateway` (`isys_catg_net_connector_list__gateway`),
  KEY `isys_catg_net_connector_list__status` (`isys_catg_net_connector_list__status`),
  CONSTRAINT `isys_catg_net_connector_list_ibfk_1` FOREIGN KEY (`isys_catg_net_connector_list__isys_catg_net_listener_list__id`) REFERENCES `isys_catg_net_listener_list` (`isys_catg_net_listener_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_net_connector_list_ibfk_2` FOREIGN KEY (`isys_catg_net_connector_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_net_connector_list_ibfk_3` FOREIGN KEY (`isys_catg_net_connector_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_net_connector_list_ibfk_4` FOREIGN KEY (`isys_catg_net_connector_list__ip_addresses_list__id`) REFERENCES `isys_cats_net_ip_addresses_list` (`isys_cats_net_ip_addresses_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_net_connector_list_ibfk_5` FOREIGN KEY (`isys_catg_net_connector_list__gateway`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_net_listener_list` (
  `isys_catg_net_listener_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_net_listener_list__isys_obj__id` int(10) unsigned DEFAULT NULL COMMENT 'Software relation',
  `isys_catg_net_listener_list__isys_net_protocol__id` int(10) unsigned DEFAULT NULL COMMENT 'TCP/UDP/ICMP',
  `isys_catg_net_listener_list__isys_net_protocol_layer_5__id` int(10) unsigned DEFAULT NULL COMMENT 'Layer 5-7 protocol id',
  `isys_catg_net_listener_list__isys_cats_net_ip_addresses_list__id` int(10) unsigned DEFAULT NULL COMMENT 'Listening ip address',
  `isys_catg_net_listener_list__opened_by` int(10) unsigned DEFAULT NULL COMMENT 'relation object id',
  `isys_catg_net_listener_list__gateway` int(10) unsigned DEFAULT NULL,
  `isys_catg_net_listener_list__port_from` int(10) unsigned DEFAULT NULL COMMENT 'Port from',
  `isys_catg_net_listener_list__port_to` int(10) unsigned DEFAULT NULL COMMENT 'Port to',
  `isys_catg_net_listener_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_net_listener_list__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_catg_net_listener_list__id`),
  KEY `isys_catg_net_listener_list__isys_obj__id` (`isys_catg_net_listener_list__isys_obj__id`),
  KEY `isys_catg_net_listener_list__isys_cats_net_ip_addresses_list__id` (`isys_catg_net_listener_list__isys_cats_net_ip_addresses_list__id`),
  KEY `isys_catg_net_listener_list__isys_net_protocol__id` (`isys_catg_net_listener_list__isys_net_protocol__id`),
  KEY `isys_catg_net_listener_list__installed_application_id` (`isys_catg_net_listener_list__opened_by`),
  KEY `isys_catg_net_listener_list__gateway` (`isys_catg_net_listener_list__gateway`),
  KEY `isys_catg_net_listener_list__isys_net_protocol_layer_5__id` (`isys_catg_net_listener_list__isys_net_protocol_layer_5__id`),
  KEY `isys_catg_net_listener_list__status` (`isys_catg_net_listener_list__status`),
  CONSTRAINT `isys_catg_net_listener_list_ibfk_1` FOREIGN KEY (`isys_catg_net_listener_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_net_listener_list_ibfk_2` FOREIGN KEY (`isys_catg_net_listener_list__isys_net_protocol__id`) REFERENCES `isys_net_protocol` (`isys_net_protocol__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_net_listener_list_ibfk_3` FOREIGN KEY (`isys_catg_net_listener_list__isys_cats_net_ip_addresses_list__id`) REFERENCES `isys_cats_net_ip_addresses_list` (`isys_cats_net_ip_addresses_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_net_listener_list_ibfk_4` FOREIGN KEY (`isys_catg_net_listener_list__opened_by`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_net_listener_list_ibfk_5` FOREIGN KEY (`isys_catg_net_listener_list__gateway`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_net_listener_list_ibfk_6` FOREIGN KEY (`isys_catg_net_listener_list__isys_net_protocol_layer_5__id`) REFERENCES `isys_net_protocol_layer_5` (`isys_net_protocol_layer_5__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_net_type_list` (
  `isys_catg_net_type_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_net_type_list__isys_net_type_title__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_net_type_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_net_type_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_net_type_list__status` int(10) unsigned DEFAULT '2',
  `isys_catg_net_type_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_net_type_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_net_type_list__id`),
  KEY `isys_catg_net_type_list_FKIndex1` (`isys_catg_net_type_list__isys_net_type_title__id`),
  KEY `isys_catg_net_type_list_FKIndex2` (`isys_catg_net_type_list__isys_obj__id`),
  CONSTRAINT `isys_catg_net_type_list_ibfk_1` FOREIGN KEY (`isys_catg_net_type_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_net_type_list_ibfk_2` FOREIGN KEY (`isys_catg_net_type_list__isys_net_type_title__id`) REFERENCES `isys_net_type_title` (`isys_net_type_title__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_net_zone_options_list` (
  `isys_catg_net_zone_options_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_net_zone_options_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_net_zone_options_list__color` varchar(7) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_net_zone_options_list__domain` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_net_zone_options_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  `isys_catg_net_zone_options_list__description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`isys_catg_net_zone_options_list__id`),
  KEY `isys_catg_net_zone_options_list__isys_obj__id` (`isys_catg_net_zone_options_list__isys_obj__id`),
  KEY `isys_catg_net_zone_options_list__status` (`isys_catg_net_zone_options_list__status`),
  CONSTRAINT `isys_catg_net_zone_options_list__isys_obj__id` FOREIGN KEY (`isys_catg_net_zone_options_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_netp_list` (
  `isys_catg_netp_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_netp_list__isys_iface_model__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_netp_list__isys_iface_manufacturer__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_netp_list__isys_catg_netp__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_catg_netp_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_netp_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_netp_list__slotnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_netp_list__serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_netp_list__status` int(10) unsigned DEFAULT '0',
  `isys_catg_netp_list__property` int(10) unsigned DEFAULT '1',
  `isys_catg_netp_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_netp_list__id`),
  KEY `isys_netp_iface_list_FKIndex1` (`isys_catg_netp_list__isys_catg_netp__id`),
  KEY `isys_catg_netp_list_FKIndex2` (`isys_catg_netp_list__isys_iface_model__id`),
  KEY `isys_catg_netp_list_FKIndex3` (`isys_catg_netp_list__isys_iface_manufacturer__id`),
  KEY `isys_catg_netp_list__isys_obj__id` (`isys_catg_netp_list__isys_obj__id`),
  KEY `isys_catg_netp_list__title` (`isys_catg_netp_list__title`),
  KEY `isys_catg_netp_list__serial` (`isys_catg_netp_list__serial`),
  KEY `isys_catg_netp_list__status` (`isys_catg_netp_list__status`),
  CONSTRAINT `isys_catg_netp_list_ibfk_4` FOREIGN KEY (`isys_catg_netp_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_netp_list_ibfk_5` FOREIGN KEY (`isys_catg_netp_list__isys_iface_manufacturer__id`) REFERENCES `isys_iface_manufacturer` (`isys_iface_manufacturer__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_netp_list_ibfk_6` FOREIGN KEY (`isys_catg_netp_list__isys_iface_model__id`) REFERENCES `isys_iface_model` (`isys_iface_model__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_netv` (
  `isys_catg_netv__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`isys_catg_netv__id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_catg_netv` VALUES (1);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_netv_list` (
  `isys_catg_netv_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_netv_list__isys_catg_netv__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_catg_netv_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_netv_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_netv_list__slotnumber` int(10) unsigned DEFAULT NULL,
  `isys_catg_netv_list__serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_netv_list__status` int(10) unsigned DEFAULT '1',
  `isys_catg_netv_list__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_catg_netv_list__id`),
  KEY `isys_netv_iface_list_FKIndex1` (`isys_catg_netv_list__isys_catg_netv__id`),
  CONSTRAINT `isys_catg_netv_list_ibfk_1` FOREIGN KEY (`isys_catg_netv_list__isys_catg_netv__id`) REFERENCES `isys_catg_netv` (`isys_catg_netv__id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_odep_list` (
  `isys_catg_odep_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_odep_list__isys_dependency__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_odep_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_odep_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_odep_list__status` int(10) unsigned DEFAULT '2',
  `isys_catg_odep_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_odep_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_odep_list__id`),
  KEY `isys_catg_odep_list_FKIndex1` (`isys_catg_odep_list__isys_dependency__id`),
  KEY `isys_catg_odep_list__isys_obj__id` (`isys_catg_odep_list__isys_obj__id`),
  CONSTRAINT `isys_catg_odep_list_ibfk_1` FOREIGN KEY (`isys_catg_odep_list__isys_dependency__id`) REFERENCES `isys_dependency` (`isys_dependency__id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `isys_catg_odep_list_ibfk_3` FOREIGN KEY (`isys_catg_odep_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_overview_list` (
  `isys_catg_overview_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_overview_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_overview_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_overview_list__status` int(10) unsigned DEFAULT '2',
  `isys_catg_overview_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_overview_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_overview_list__id`),
  KEY `isys_catg_overview_list__isys_obj__id` (`isys_catg_overview_list__isys_obj__id`),
  CONSTRAINT `isys_catg_overview_list_ibfk_2` FOREIGN KEY (`isys_catg_overview_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_password_list` (
  `isys_catg_password_list__id` int(11) NOT NULL AUTO_INCREMENT,
  `isys_catg_password_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_password_list__username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_password_list__password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_password_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_password_list__isys_obj__id` int(11) NOT NULL,
  `isys_catg_password_list__status` int(11) NOT NULL,
  PRIMARY KEY (`isys_catg_password_list__id`),
  KEY `isys_catg_password_list__isys_obj__id` (`isys_catg_password_list__isys_obj__id`),
  KEY `isys_catg_password_list__status` (`isys_catg_password_list__status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_pc_list` (
  `isys_catg_pc_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_pc_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_pc_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_pc_list__isys_pc_manufacturer__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_pc_list__isys_pc_model__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_pc_list__isys_catg_connector_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_pc_list__volt` float unsigned DEFAULT NULL,
  `isys_catg_pc_list__watt` float unsigned DEFAULT NULL,
  `isys_catg_pc_list__ampere` float unsigned DEFAULT NULL,
  `isys_catg_pc_list__btu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_pc_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  `isys_catg_pc_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_pc_list__active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`isys_catg_pc_list__id`),
  KEY `isys_catg_pc_list__isys_obj__id` (`isys_catg_pc_list__isys_obj__id`),
  KEY `isys_catg_pc_list__isys_pc_manufacturer__id` (`isys_catg_pc_list__isys_pc_manufacturer__id`),
  KEY `isys_catg_pc_list__isys_pc_model__id` (`isys_catg_pc_list__isys_pc_model__id`),
  KEY `isys_catg_pc_list__isys_catg_connector_list__id` (`isys_catg_pc_list__isys_catg_connector_list__id`),
  KEY `isys_catg_pc_list__status` (`isys_catg_pc_list__status`),
  CONSTRAINT `isys_catg_pc_list_ibfk_1` FOREIGN KEY (`isys_catg_pc_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_pc_list_ibfk_2` FOREIGN KEY (`isys_catg_pc_list__isys_pc_manufacturer__id`) REFERENCES `isys_pc_manufacturer` (`isys_pc_manufacturer__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_pc_list_ibfk_3` FOREIGN KEY (`isys_catg_pc_list__isys_pc_model__id`) REFERENCES `isys_pc_model` (`isys_pc_model__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_pc_list_ibfk_4` FOREIGN KEY (`isys_catg_pc_list__isys_catg_connector_list__id`) REFERENCES `isys_catg_connector_list` (`isys_catg_connector_list__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_planning_list` (
  `isys_catg_planning_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_planning_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_planning_list__isys_cmdb_status__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_planning_list__type` int(1) NOT NULL DEFAULT '1',
  `isys_catg_planning_list__start` int(12) unsigned DEFAULT NULL,
  `isys_catg_planning_list__end` int(12) unsigned DEFAULT NULL,
  `isys_catg_planning_list__status` int(10) unsigned DEFAULT '2',
  `isys_catg_planning_list__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_catg_planning_list__id`),
  KEY `isys_catg_planning_list__isys_obj__id` (`isys_catg_planning_list__isys_obj__id`),
  KEY `isys_catg_planning_list__isys_cmdb_status__id` (`isys_catg_planning_list__isys_cmdb_status__id`),
  KEY `isys_catg_planning_list__status` (`isys_catg_planning_list__status`),
  CONSTRAINT `isys_catg_planning_list_ibfk1` FOREIGN KEY (`isys_catg_planning_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_planning_list_ibfk2` FOREIGN KEY (`isys_catg_planning_list__isys_cmdb_status__id`) REFERENCES `isys_cmdb_status` (`isys_cmdb_status__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_port_list` (
  `isys_catg_port_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_port_list__isys_catg_connector_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_port_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_port_list__isys_port_negotiation__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_port_list__isys_port_standard__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_port_list__isys_port_duplex__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_port_list__isys_plug_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_port_list__cable_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_port_list__isys_port_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_port_list__isys_port_mode__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_port_list__isys_port_speed__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_port_list__isys_catg_netp_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_port_list__isys_catg_hba_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_port_list__port_speed_value` bigint(32) DEFAULT NULL,
  `isys_catg_port_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_port_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_port_list__mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_port_list__state_enabled` int(10) unsigned DEFAULT '1',
  `isys_catg_port_list__number` int(10) unsigned DEFAULT '0',
  `isys_catg_port_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_port_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_port_list__mtu` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_port_list__id`),
  KEY `isys_netp_port_FKIndex1` (`isys_catg_port_list__isys_port_type__id`),
  KEY `isys_netp_port_FKIndex2` (`isys_catg_port_list__isys_catg_netp_list__id`),
  KEY `isys_netp_port_FKIndex3` (`isys_catg_port_list__isys_port_speed__id`),
  KEY `isys_netp_port_FKIndex5` (`isys_catg_port_list__isys_port_duplex__id`),
  KEY `isys_netp_port_FKIndex6` (`isys_catg_port_list__isys_port_negotiation__id`),
  KEY `isys_netp_port_FKIndex7` (`isys_catg_port_list__isys_port_standard__id`),
  KEY `isys_netp_port__isys_plug_type__id` (`isys_catg_port_list__isys_plug_type__id`),
  KEY `isys_netp_port__isys_obj__id` (`isys_catg_port_list__isys_obj__id`),
  KEY `isys_catg_port_list__isys_catg_connector_list__id` (`isys_catg_port_list__isys_catg_connector_list__id`),
  KEY `isys_catg_port_list__isys_catg_hba_list__id` (`isys_catg_port_list__isys_catg_hba_list__id`),
  KEY `isys_catg_port_list__mac` (`isys_catg_port_list__mac`),
  KEY `isys_catg_port_list__title` (`isys_catg_port_list__title`),
  KEY `isys_catg_port_list__mtu` (`isys_catg_port_list__mtu`),
  CONSTRAINT `isys_catg_port_list_ibfk_1` FOREIGN KEY (`isys_catg_port_list__isys_catg_netp_list__id`) REFERENCES `isys_catg_netp_list` (`isys_catg_netp_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_port_list_ibfk_10` FOREIGN KEY (`isys_catg_port_list__isys_port_type__id`) REFERENCES `isys_port_type` (`isys_port_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_port_list_ibfk_12` FOREIGN KEY (`isys_catg_port_list__isys_catg_connector_list__id`) REFERENCES `isys_catg_connector_list` (`isys_catg_connector_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_port_list_ibfk_13` FOREIGN KEY (`isys_catg_port_list__isys_catg_hba_list__id`) REFERENCES `isys_catg_hba_list` (`isys_catg_hba_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_port_list_ibfk_2` FOREIGN KEY (`isys_catg_port_list__isys_port_type__id`) REFERENCES `isys_port_type` (`isys_port_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_port_list_ibfk_3` FOREIGN KEY (`isys_catg_port_list__isys_plug_type__id`) REFERENCES `isys_plug_type` (`isys_plug_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_port_list_ibfk_4` FOREIGN KEY (`isys_catg_port_list__isys_port_speed__id`) REFERENCES `isys_port_speed` (`isys_port_speed__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_port_list_ibfk_5` FOREIGN KEY (`isys_catg_port_list__isys_plug_type__id`) REFERENCES `isys_plug_type` (`isys_plug_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_port_list_ibfk_6` FOREIGN KEY (`isys_catg_port_list__isys_port_duplex__id`) REFERENCES `isys_port_duplex` (`isys_port_duplex__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_port_list_ibfk_7` FOREIGN KEY (`isys_catg_port_list__isys_port_negotiation__id`) REFERENCES `isys_port_negotiation` (`isys_port_negotiation__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_port_list_ibfk_8` FOREIGN KEY (`isys_catg_port_list__isys_port_standard__id`) REFERENCES `isys_port_standard` (`isys_port_standard__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_port_list_ibfk_9` FOREIGN KEY (`isys_catg_port_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_port_list_2_isys_catg_log_port_list` (
  `isys_catg_port_list_2_isys_catg_log_port_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_log_port_list__id` int(10) unsigned NOT NULL,
  `isys_catg_port_list__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_catg_port_list_2_isys_catg_log_port_list__id`),
  KEY `isys_catg_port_list_2_isys_catg_log_port_list_FKIndex1` (`isys_catg_port_list__id`),
  KEY `isys_catg_port_list_2_isys_catg_log_port_list_FKIndex2` (`isys_catg_log_port_list__id`),
  CONSTRAINT `isys_catg_port_list_2_isys_catg_log_port_list_ibfk_1` FOREIGN KEY (`isys_catg_port_list__id`) REFERENCES `isys_catg_port_list` (`isys_catg_port_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_port_list_2_isys_catg_log_port_list_ibfk_2` FOREIGN KEY (`isys_catg_log_port_list__id`) REFERENCES `isys_catg_log_port_list` (`isys_catg_log_port_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_port_list_2_isys_netp_ifacel` (
  `isys_catg_port_list_2_isys_netp_ifacel__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_port_list_2_isys_netp_ifacel__isys_netp_ifacel__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_catg_port_list_2_isys_netp_ifacel__isys_catg_port_list__id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`isys_catg_port_list_2_isys_netp_ifacel__id`),
  KEY `isys_catg_net_port_2_isys_ifacel_FKIndex1` (`isys_catg_port_list_2_isys_netp_ifacel__isys_catg_port_list__id`),
  KEY `isys_catg_net_port_2_isys_ifacel_FKIndex2` (`isys_catg_port_list_2_isys_netp_ifacel__isys_netp_ifacel__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_power_supplier_list` (
  `isys_catg_power_supplier_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_power_supplier_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_power_supplier_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_power_supplier_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_power_supplier_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_power_supplier_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_power_supplier_list__volt` float unsigned DEFAULT NULL,
  `isys_catg_power_supplier_list__watt` float unsigned DEFAULT NULL,
  `isys_catg_power_supplier_list__ampere` float unsigned DEFAULT NULL,
  `isys_catg_power_supplier_list__isys_catg_connector_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_power_supplier_list__id`),
  KEY `isys_catg_power_supplier_list__isys_obj__id` (`isys_catg_power_supplier_list__isys_obj__id`),
  KEY `isys_catg_power_supplier_list__isys_catg_connector_list__id` (`isys_catg_power_supplier_list__isys_catg_connector_list__id`),
  CONSTRAINT `isys_catg_power_supplier_list_ibfk_1` FOREIGN KEY (`isys_catg_power_supplier_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_power_supplier_list_ibfk_2` FOREIGN KEY (`isys_catg_power_supplier_list__isys_catg_connector_list__id`) REFERENCES `isys_catg_connector_list` (`isys_catg_connector_list__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_qinq_list` (
  `isys_catg_qinq_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_qinq_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_qinq_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_qinq_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_qinq_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_qinq_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_catg_qinq_list__id`),
  KEY `fk__qinq__object` (`isys_catg_qinq_list__isys_obj__id`),
  KEY `fk__qinq__spvlan` (`isys_catg_qinq_list__isys_connection__id`),
  KEY `fk__qinq__relation` (`isys_catg_qinq_list__isys_catg_relation_list__id`),
  KEY `isys_catg_qinq_list__status` (`isys_catg_qinq_list__status`),
  CONSTRAINT `fk__qinq__object` FOREIGN KEY (`isys_catg_qinq_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__qinq__relation` FOREIGN KEY (`isys_catg_qinq_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__qinq__spvlan` FOREIGN KEY (`isys_catg_qinq_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='QinQ';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_raid_list` (
  `isys_catg_raid_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_raid_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_raid_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_raid_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_raid_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_raid_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_raid_list__isys_raid__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_raid_list__isys_stor_raid_level__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_raid_list__isys_catg_controller_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_raid_list__isys_raid_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_raid_list__isys_catg_stor_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_raid_list__sort` int(10) unsigned DEFAULT NULL,
  `isys_catg_raid_list__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_catg_raid_list__id`),
  KEY `isys_catg_raid_list__isys_stor_raid_level__id` (`isys_catg_raid_list__isys_stor_raid_level__id`),
  KEY `isys_catg_raid_list__isys_catg_controller_list__id` (`isys_catg_raid_list__isys_catg_controller_list__id`),
  KEY `isys_catg_raid_list__isys_raid_type__id` (`isys_catg_raid_list__isys_raid_type__id`),
  KEY `isys_catg_raid_list__isys_catg_stor_list__id` (`isys_catg_raid_list__isys_catg_stor_list__id`),
  KEY `isys_catg_raid_list__isys_obj__id` (`isys_catg_raid_list__isys_obj__id`),
  KEY `isys_catg_raid_list__status` (`isys_catg_raid_list__status`),
  CONSTRAINT `isys_catg_raid_list_ibfk_1` FOREIGN KEY (`isys_catg_raid_list__isys_stor_raid_level__id`) REFERENCES `isys_stor_raid_level` (`isys_stor_raid_level__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_raid_list_ibfk_2` FOREIGN KEY (`isys_catg_raid_list__isys_catg_controller_list__id`) REFERENCES `isys_catg_controller_list` (`isys_catg_controller_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_raid_list_ibfk_3` FOREIGN KEY (`isys_catg_raid_list__isys_raid_type__id`) REFERENCES `isys_raid_type` (`isys_raid_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_raid_list_ibfk_4` FOREIGN KEY (`isys_catg_raid_list__isys_catg_stor_list__id`) REFERENCES `isys_catg_stor_list` (`isys_catg_stor_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_raid_list_ibfk_5` FOREIGN KEY (`isys_catg_raid_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_relation_list` (
  `isys_catg_relation_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_relation_list__isys_obj__id__master` int(10) unsigned NOT NULL,
  `isys_catg_relation_list__isys_obj__id__slave` int(10) unsigned NOT NULL,
  `isys_catg_relation_list__isys_obj__id__itservice` int(10) unsigned DEFAULT NULL,
  `isys_catg_relation_list__isys_relation_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_relation_list__isys_weighting__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_relation_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_relation_list__type` int(10) DEFAULT NULL,
  `isys_catg_relation_list__status` int(10) DEFAULT NULL,
  `isys_catg_relation_list__property` int(10) DEFAULT NULL,
  `isys_catg_relation_list__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_catg_relation_list__id`),
  KEY `isys_catg_relation_list__isys_relation_type__id` (`isys_catg_relation_list__isys_relation_type__id`),
  KEY `isys_catg_relation_list__isys_weighting__id` (`isys_catg_relation_list__isys_weighting__id`),
  KEY `isys_catg_relation_list__isys_obj__id` (`isys_catg_relation_list__isys_obj__id`),
  KEY `isys_catg_relation_list__isys_obj__id__master` (`isys_catg_relation_list__isys_obj__id__master`),
  KEY `isys_catg_relation_list__isys_obj__id__slave` (`isys_catg_relation_list__isys_obj__id__slave`),
  KEY `isys_catg_relation_list__isys_obj__id__itservice` (`isys_catg_relation_list__isys_obj__id__itservice`),
  KEY `object_count_index` (`isys_catg_relation_list__type`,`isys_catg_relation_list__status`),
  CONSTRAINT `isys_catg_relation_list_ibfk_1` FOREIGN KEY (`isys_catg_relation_list__isys_obj__id__master`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_relation_list_ibfk_2` FOREIGN KEY (`isys_catg_relation_list__isys_obj__id__slave`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_relation_list_ibfk_3` FOREIGN KEY (`isys_catg_relation_list__isys_obj__id__itservice`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_relation_list_ibfk_4` FOREIGN KEY (`isys_catg_relation_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_relation_list_ibfk_5` FOREIGN KEY (`isys_catg_relation_list__isys_relation_type__id`) REFERENCES `isys_relation_type` (`isys_relation_type__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_relation_list_ibfk_6` FOREIGN KEY (`isys_catg_relation_list__isys_weighting__id`) REFERENCES `isys_weighting` (`isys_weighting__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_catg_relation_list` VALUES (1,10,5,NULL,17,5,15,NULL,2,NULL,'');
INSERT INTO `isys_catg_relation_list` VALUES (2,11,6,NULL,17,5,16,NULL,2,NULL,'');
INSERT INTO `isys_catg_relation_list` VALUES (3,12,7,NULL,17,5,17,NULL,2,NULL,'');
INSERT INTO `isys_catg_relation_list` VALUES (4,13,8,NULL,17,5,18,NULL,2,NULL,'');
INSERT INTO `isys_catg_relation_list` VALUES (5,14,9,NULL,17,5,19,NULL,2,NULL,'');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_rm_controller_list` (
  `isys_catg_rm_controller_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_rm_controller_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_rm_controller_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_rm_controller_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_rm_controller_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_rm_controller_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_rm_controller_list__id`),
  KEY `isys_catg_rm_controller_list__isys_obj__id` (`isys_catg_rm_controller_list__isys_obj__id`),
  KEY `isys_catg_rm_controller_list__isys_connection__id` (`isys_catg_rm_controller_list__isys_connection__id`),
  KEY `isys_catg_rm_controller_list__isys_catg_relation_list__id` (`isys_catg_rm_controller_list__isys_catg_relation_list__id`),
  CONSTRAINT `isys_catg_rm_controller_list__isys_catg_relation_list__id` FOREIGN KEY (`isys_catg_rm_controller_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_rm_controller_list__isys_connection__id` FOREIGN KEY (`isys_catg_rm_controller_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_rm_controller_list__isys_obj__id` FOREIGN KEY (`isys_catg_rm_controller_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_sanpool_list` (
  `isys_catg_sanpool_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_sanpool_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_sanpool_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_sanpool_list__isys_stor_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_sanpool_list__isys_memory_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_sanpool_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sanpool_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_sanpool_list__capacity` double DEFAULT NULL,
  `isys_catg_sanpool_list__status` int(10) unsigned DEFAULT '1',
  `isys_catg_sanpool_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_sanpool_list__lun` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sanpool_list__segment_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sanpool_list__primary_path` int(10) unsigned DEFAULT NULL,
  `isys_catg_sanpool_list__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sanpool_list__sort` int(10) unsigned DEFAULT NULL,
  `isys_catg_sanpool_list__isys_ldev_multipath__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_sanpool_list__isys_tierclass__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_sanpool_list__id`),
  KEY `isys_catd_sanpool_list_FKIndex2` (`isys_catg_sanpool_list__isys_stor_unit__id`),
  KEY `isys_catd_sanpool_list__isys_memory_unit__id` (`isys_catg_sanpool_list__isys_memory_unit__id`),
  KEY `isys_catg_sanpool_list__isys_obj__id` (`isys_catg_sanpool_list__isys_obj__id`),
  KEY `isys_catg_sanpool_list__isys_connection__id` (`isys_catg_sanpool_list__isys_connection__id`),
  KEY `isys_catg_sanpool_list__primary_path` (`isys_catg_sanpool_list__primary_path`),
  KEY `isys_catg_sanpool_list_ibfk_6` (`isys_catg_sanpool_list__isys_ldev_multipath__id`),
  KEY `isys_catg_sanpool_list__isys_tierclass__id` (`isys_catg_sanpool_list__isys_tierclass__id`),
  KEY `isys_catg_sanpool_list__status` (`isys_catg_sanpool_list__status`),
  CONSTRAINT `isys_catg_sanpool_list__isys_tierclass__id` FOREIGN KEY (`isys_catg_sanpool_list__isys_tierclass__id`) REFERENCES `isys_tierclass` (`isys_tierclass__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_sanpool_list_ibfk_1` FOREIGN KEY (`isys_catg_sanpool_list__isys_stor_unit__id`) REFERENCES `isys_stor_unit` (`isys_stor_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_sanpool_list_ibfk_2` FOREIGN KEY (`isys_catg_sanpool_list__isys_memory_unit__id`) REFERENCES `isys_memory_unit` (`isys_memory_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_sanpool_list_ibfk_3` FOREIGN KEY (`isys_catg_sanpool_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_sanpool_list_ibfk_4` FOREIGN KEY (`isys_catg_sanpool_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_sanpool_list_ibfk_5` FOREIGN KEY (`isys_catg_sanpool_list__primary_path`) REFERENCES `isys_catg_fc_port_list` (`isys_catg_fc_port_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_sanpool_list_ibfk_6` FOREIGN KEY (`isys_catg_sanpool_list__isys_ldev_multipath__id`) REFERENCES `isys_ldev_multipath` (`isys_ldev_multipath__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_sanpool_list_2_isys_catg_raid_list` (
  `isys_catg_sanpool_list_2_isys_catg_raid_list` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_sanpool_list_2_isys_catg_raid_list__sanpool__id` int(10) unsigned NOT NULL,
  `isys_catg_sanpool_list_2_isys_catg_raid_list__raid__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_catg_sanpool_list_2_isys_catg_raid_list`),
  KEY `isys_catg_sanpool_list_2_isys_catg_raid_list__sanpool__id` (`isys_catg_sanpool_list_2_isys_catg_raid_list__sanpool__id`),
  KEY `isys_catg_sanpool_list_2_isys_catg_raid_list__raid__id` (`isys_catg_sanpool_list_2_isys_catg_raid_list__raid__id`),
  CONSTRAINT `isys_catg_sanpool_list_2_isys_catg_raid_list_ibfk_1` FOREIGN KEY (`isys_catg_sanpool_list_2_isys_catg_raid_list__sanpool__id`) REFERENCES `isys_catg_sanpool_list` (`isys_catg_sanpool_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_sanpool_list_2_isys_catg_raid_list_ibfk_2` FOREIGN KEY (`isys_catg_sanpool_list_2_isys_catg_raid_list__raid__id`) REFERENCES `isys_catg_raid_list` (`isys_catg_raid_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_sanpool_list_2_isys_catg_stor_list` (
  `isys_catg_sanpool_list_2_isys_catg_stor_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_sanpool_list_2_isys_catg_stor_list__sanpool__id` int(10) unsigned NOT NULL,
  `isys_catg_sanpool_list_2_isys_catg_stor_list__stor__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_catg_sanpool_list_2_isys_catg_stor_list__id`),
  KEY `isys_catg_sanpool_list_2_isys_catg_stor_list__sanpool__id` (`isys_catg_sanpool_list_2_isys_catg_stor_list__sanpool__id`),
  KEY `isys_catg_sanpool_list_2_isys_catg_stor_list__stor__id` (`isys_catg_sanpool_list_2_isys_catg_stor_list__stor__id`),
  CONSTRAINT `isys_catg_sanpool_list_2_isys_catg_stor_list_ibfk_1` FOREIGN KEY (`isys_catg_sanpool_list_2_isys_catg_stor_list__sanpool__id`) REFERENCES `isys_catg_sanpool_list` (`isys_catg_sanpool_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_sanpool_list_2_isys_catg_stor_list_ibfk_2` FOREIGN KEY (`isys_catg_sanpool_list_2_isys_catg_stor_list__stor__id`) REFERENCES `isys_catg_stor_list` (`isys_catg_stor_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_service_list` (
  `isys_catg_service_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_service_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_service_list__service_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_service_list__status` int(10) unsigned DEFAULT '2',
  `isys_catg_service_list__isys_service_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_service_list__isys_service_category__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_service_list__isys_business_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_service_list__service_description_intern` text COLLATE utf8_unicode_ci,
  `isys_catg_service_list__service_description_extern` text COLLATE utf8_unicode_ci,
  `isys_catg_service_list__active` tinyint(1) unsigned DEFAULT '0',
  `isys_catg_service_list__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_catg_service_list__id`),
  UNIQUE KEY `isys_catg_service_list__object_rel` (`isys_catg_service_list__isys_obj__id`),
  KEY `isys_catg_service_list__isys_service_type__id` (`isys_catg_service_list__isys_service_type__id`),
  KEY `isys_catg_service_list__isys_service_category__id` (`isys_catg_service_list__isys_service_category__id`),
  KEY `isys_catg_service_list__isys_business_unit__id` (`isys_catg_service_list__isys_business_unit__id`),
  CONSTRAINT `isys_catg_service_list__isys_business_unit__id` FOREIGN KEY (`isys_catg_service_list__isys_business_unit__id`) REFERENCES `isys_business_unit` (`isys_business_unit__id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `isys_catg_service_list__isys_service_category__id` FOREIGN KEY (`isys_catg_service_list__isys_service_category__id`) REFERENCES `isys_service_category` (`isys_service_category__id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `isys_catg_service_list__isys_service_type__id` FOREIGN KEY (`isys_catg_service_list__isys_service_type__id`) REFERENCES `isys_service_type` (`isys_service_type__id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `isys_catg_service_list_ibfk_1` FOREIGN KEY (`isys_catg_service_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_service_list_2_isys_service_alias` (
  `isys_catg_service_list__id` int(10) unsigned NOT NULL,
  `isys_service_alias__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_catg_service_list__id`,`isys_service_alias__id`),
  KEY `isys_catg_service_list_2_isys_service_alias_ibfk2` (`isys_service_alias__id`),
  CONSTRAINT `isys_catg_service_list_2_isys_service_alias_ibfk1` FOREIGN KEY (`isys_catg_service_list__id`) REFERENCES `isys_catg_service_list` (`isys_catg_service_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_service_list_2_isys_service_alias_ibfk2` FOREIGN KEY (`isys_service_alias__id`) REFERENCES `isys_service_alias` (`isys_service_alias__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_share_access_list` (
  `isys_catg_share_access_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_share_access_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_share_access_list__isys_catg_shares_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_share_access_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_share_access_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  `isys_catg_share_access_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_share_access_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_share_access_list__mountpoint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`isys_catg_share_access_list__id`),
  KEY `isys_catg_share_access_list__isys_obj__id` (`isys_catg_share_access_list__isys_obj__id`),
  KEY `isys_catg_share_access_list__isys_catg_shares_list__id` (`isys_catg_share_access_list__isys_catg_shares_list__id`),
  KEY `isys_catg_share_access_list__isys_connection__id` (`isys_catg_share_access_list__isys_connection__id`),
  KEY `isys_catg_share_access_list__isys_catg_relation_list__id` (`isys_catg_share_access_list__isys_catg_relation_list__id`),
  KEY `isys_catg_share_access_list__status` (`isys_catg_share_access_list__status`),
  CONSTRAINT `isys_catg_share_access_list_ibfk_1` FOREIGN KEY (`isys_catg_share_access_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_share_access_list_ibfk_2` FOREIGN KEY (`isys_catg_share_access_list__isys_catg_shares_list__id`) REFERENCES `isys_catg_shares_list` (`isys_catg_shares_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_share_access_list_ibfk_3` FOREIGN KEY (`isys_catg_share_access_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_share_access_list_ibfk_4` FOREIGN KEY (`isys_catg_share_access_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_shares_list` (
  `isys_catg_shares_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_shares_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_shares_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_shares_list__unc_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_shares_list__path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_shares_list__isys_catg_drive_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_shares_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_shares_list__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_shares_list__sort` int(10) unsigned DEFAULT NULL,
  `isys_catg_shares_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_shares_list__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_shares_list__id`),
  KEY `isys_catg_shares_list__isys_catg_drive_list__id` (`isys_catg_shares_list__isys_catg_drive_list__id`),
  KEY `isys_catg_shares_list__isys_obj__id` (`isys_catg_shares_list__isys_obj__id`),
  KEY `isys_catg_shares_list__status` (`isys_catg_shares_list__status`),
  CONSTRAINT `isys_catg_shares_list_ibfk_1` FOREIGN KEY (`isys_catg_shares_list__isys_catg_drive_list__id`) REFERENCES `isys_catg_drive_list` (`isys_catg_drive_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_shares_list_ibfk_2` FOREIGN KEY (`isys_catg_shares_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_shares_list_2_isys_catg_cluster_service_list` (
  `isys_catg_shares_list__id` int(10) unsigned NOT NULL,
  `isys_catg_cluster_service_list__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_catg_shares_list__id`,`isys_catg_cluster_service_list__id`),
  KEY `isys_catg_cluster_service_list__id` (`isys_catg_cluster_service_list__id`),
  CONSTRAINT `isys_catg_shares_list_2_isys_catg_cluster_service_list_ibfk_1` FOREIGN KEY (`isys_catg_shares_list__id`) REFERENCES `isys_catg_shares_list` (`isys_catg_shares_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_shares_list_2_isys_catg_cluster_service_list_ibfk_2` FOREIGN KEY (`isys_catg_cluster_service_list__id`) REFERENCES `isys_catg_cluster_service_list` (`isys_catg_cluster_service_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_sim_card_list` (
  `isys_catg_sim_card_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_sim_card_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_sim_card_list__isys_cp_contract_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_sim_card_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sim_card_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_sim_card_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_sim_card_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_sim_card_list__serial_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sim_card_list__phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sim_card_list__pin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sim_card_list__pin2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sim_card_list__puk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sim_card_list__puk2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sim_card_list__tc_pin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sim_card_list__tc_serial_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sim_card_list__tc_phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sim_card_list__tc_card_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_sim_card_list__tc_pin2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sim_card_list__tc_puk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sim_card_list__tc_puk2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sim_card_list__optional_info` text COLLATE utf8_unicode_ci,
  `isys_catg_sim_card_list__twincard` int(10) unsigned DEFAULT '0',
  `isys_catg_sim_card_list__card_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sim_card_list__client_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sim_card_list__end_date` datetime DEFAULT NULL,
  `isys_catg_sim_card_list__start_date` datetime DEFAULT NULL,
  `isys_catg_sim_card_list__threshold_date` date DEFAULT NULL,
  `isys_catg_sim_card_list__isys_network_provider__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_sim_card_list__isys_telephone_rate__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_sim_card_list__id`),
  KEY `isys_catg_sim_card_list__isys_cp_contract_type__id` (`isys_catg_sim_card_list__isys_cp_contract_type__id`),
  KEY `isys_catg_sim_card_list__isys_network_provider__id` (`isys_catg_sim_card_list__isys_network_provider__id`),
  KEY `isys_catg_sim_card_list__isys_telephone_rate__id` (`isys_catg_sim_card_list__isys_telephone_rate__id`),
  KEY `isys_catg_sim_card_list__isys_obj__id` (`isys_catg_sim_card_list__isys_obj__id`),
  CONSTRAINT `isys_catg_sim_card_list_ibfk_1` FOREIGN KEY (`isys_catg_sim_card_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_sim_card_list_ibfk_2` FOREIGN KEY (`isys_catg_sim_card_list__isys_cp_contract_type__id`) REFERENCES `isys_cp_contract_type` (`isys_cp_contract_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_sim_card_list_ibfk_3` FOREIGN KEY (`isys_catg_sim_card_list__isys_network_provider__id`) REFERENCES `isys_network_provider` (`isys_network_provider__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_sim_card_list_ibfk_4` FOREIGN KEY (`isys_catg_sim_card_list__isys_telephone_rate__id`) REFERENCES `isys_telephone_rate` (`isys_telephone_rate__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_sla_list` (
  `isys_catg_sla_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_sla_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_sla_list__service_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sla_list__service_level` tinyint(1) unsigned DEFAULT '0',
  `isys_catg_sla_list__isys_sla_service_level__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_sla_list__days` int(7) unsigned DEFAULT '0',
  `isys_catg_sla_list__monday_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sla_list__tuesday_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sla_list__wednesday_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sla_list__thursday_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sla_list__friday_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sla_list__saturday_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sla_list__sunday_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sla_list__reaction_time` float DEFAULT NULL,
  `isys_catg_sla_list__reaction_time_unit` int(10) unsigned DEFAULT NULL,
  `isys_catg_sla_list__recovery_time` float DEFAULT NULL,
  `isys_catg_sla_list__recovery_time_unit` int(10) unsigned DEFAULT NULL,
  `isys_catg_sla_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_sla_list__status` int(10) NOT NULL DEFAULT '2',
  `isys_catg_sla_list__isys_calendar__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_sla_list__id`),
  KEY `isys_catg_sla_list__isys_obj__id` (`isys_catg_sla_list__isys_obj__id`),
  KEY `isys_catg_sla_list__isys_sla_service_level__id` (`isys_catg_sla_list__isys_sla_service_level__id`),
  KEY `isys_catg_sla_list__reaction_time_unit` (`isys_catg_sla_list__reaction_time_unit`),
  KEY `isys_catg_sla_list__recovery_time_unit` (`isys_catg_sla_list__recovery_time_unit`),
  KEY `isys_catg_sla_list__isys_calendar__id` (`isys_catg_sla_list__isys_calendar__id`),
  CONSTRAINT `isys_catg_sla_list__isys_calendar__id` FOREIGN KEY (`isys_catg_sla_list__isys_calendar__id`) REFERENCES `isys_calendar` (`isys_calendar__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_sla_list_ibfk_1` FOREIGN KEY (`isys_catg_sla_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_sla_list_ibfk_2` FOREIGN KEY (`isys_catg_sla_list__isys_sla_service_level__id`) REFERENCES `isys_sla_service_level` (`isys_sla_service_level__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_sla_list_ibfk_3` FOREIGN KEY (`isys_catg_sla_list__reaction_time_unit`) REFERENCES `isys_unit_of_time` (`isys_unit_of_time__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_sla_list_ibfk_4` FOREIGN KEY (`isys_catg_sla_list__recovery_time_unit`) REFERENCES `isys_unit_of_time` (`isys_unit_of_time__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_smartcard_certificate_list` (
  `isys_catg_smartcard_certificate_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_smartcard_certificate_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_smartcard_certificate_list__cardnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_smartcard_certificate_list__barring_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_smartcard_certificate_list__pin_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_smartcard_certificate_list__reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_smartcard_certificate_list__expires_on` date DEFAULT NULL,
  `isys_catg_smartcard_certificate_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_smartcard_certificate_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_catg_smartcard_certificate_list__id`),
  KEY `isys_catg_smartcard_certificate_list__isys_obj__id` (`isys_catg_smartcard_certificate_list__isys_obj__id`),
  CONSTRAINT `isys_catg_smartcard_certificate_list_ibfk_1` FOREIGN KEY (`isys_catg_smartcard_certificate_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_snmp_list` (
  `isys_catg_snmp_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_snmp_list__isys_snmp_community__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_snmp_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_snmp_list__oids` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_snmp_list__status` int(10) unsigned NOT NULL,
  `isys_catg_snmp_list__property` int(10) unsigned NOT NULL,
  `isys_catg_snmp_list__description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_catg_snmp_list__id`),
  KEY `isys_catg_snmp_list__isys_obj__id` (`isys_catg_snmp_list__isys_obj__id`),
  KEY `isys_catg_snmp_list__isys_snmp_community` (`isys_catg_snmp_list__isys_snmp_community__id`),
  CONSTRAINT `isys_catg_snmp_list_ibfk_1` FOREIGN KEY (`isys_catg_snmp_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_snmp_list_ibfk_2` FOREIGN KEY (`isys_catg_snmp_list__isys_snmp_community__id`) REFERENCES `isys_snmp_community` (`isys_snmp_community__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_soa_components_list` (
  `isys_catg_soa_components_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_soa_components_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_soa_components_list__isys_connection__id` int(10) unsigned NOT NULL,
  `isys_catg_soa_components_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_soa_components_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_soa_components_list__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_catg_soa_components_list__id`),
  KEY `isys_catg_soa_components_list__isys_obj__id` (`isys_catg_soa_components_list__isys_obj__id`),
  KEY `isys_catg_soa_components_list__isys_connection__id` (`isys_catg_soa_components_list__isys_connection__id`),
  KEY `isys_catg_soa_components_list__isys_catg_relation_list__id` (`isys_catg_soa_components_list__isys_catg_relation_list__id`),
  CONSTRAINT `isys_catg_soa_components_list_ibfk_1` FOREIGN KEY (`isys_catg_soa_components_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_soa_components_list_ibfk_2` FOREIGN KEY (`isys_catg_soa_components_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_soa_components_list_ibfk_3` FOREIGN KEY (`isys_catg_soa_components_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_soa_stacks_list` (
  `isys_catg_soa_stacks_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_soa_stacks_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_soa_stacks_list__isys_connection__id` int(10) unsigned NOT NULL,
  `isys_catg_soa_stacks_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_soa_stacks_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_soa_stacks_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_soa_stacks_list__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_catg_soa_stacks_list__id`),
  KEY `isys_catg_soa_stacks_list__isys_obj__id` (`isys_catg_soa_stacks_list__isys_obj__id`),
  KEY `isys_catg_soa_stacks_list__isys_catg_relation_list__id` (`isys_catg_soa_stacks_list__isys_catg_relation_list__id`),
  KEY `isys_catg_soa_stacks_list__isys_connection__id` (`isys_catg_soa_stacks_list__isys_connection__id`),
  KEY `isys_catg_soa_stacks_list__status` (`isys_catg_soa_stacks_list__status`),
  CONSTRAINT `isys_catg_soa_stacks_list_ibfk_1` FOREIGN KEY (`isys_catg_soa_stacks_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_soa_stacks_list_ibfk_2` FOREIGN KEY (`isys_catg_soa_stacks_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_soa_stacks_list_ibfk_3` FOREIGN KEY (`isys_catg_soa_stacks_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_sound_list` (
  `isys_catg_sound_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_sound_list__isys_sound_manufacturer__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_sound_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_sound_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_sound_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_sound_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_sound_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_sound_list__id`),
  KEY `isys_catg_sound_list_FKIndex2` (`isys_catg_sound_list__isys_sound_manufacturer__id`),
  KEY `isys_catg_sound_list__isys_obj__id` (`isys_catg_sound_list__isys_obj__id`),
  KEY `isys_catg_sound_list__status` (`isys_catg_sound_list__status`),
  CONSTRAINT `isys_catg_sound_list_ibfk_1` FOREIGN KEY (`isys_catg_sound_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_stack_member_list` (
  `isys_catg_stack_member_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_stack_member_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_stack_member_list__stack_member` int(10) unsigned DEFAULT NULL,
  `isys_catg_stack_member_list__mode` tinyint(1) unsigned DEFAULT NULL,
  `isys_catg_stack_member_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_stack_member_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_stack_member_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_catg_stack_member_list__id`),
  KEY `isys_catg_stack_member_list__isys_obj__id` (`isys_catg_stack_member_list__isys_obj__id`),
  KEY `isys_catg_stack_member_list__stack_member` (`isys_catg_stack_member_list__stack_member`),
  KEY `isys_catg_stack_member_list__isys_catg_relation_list__id` (`isys_catg_stack_member_list__isys_catg_relation_list__id`),
  KEY `isys_catg_stack_member_list__status` (`isys_catg_stack_member_list__status`),
  CONSTRAINT `isys_catg_stack_member_list__isys_catg_relation_list__id` FOREIGN KEY (`isys_catg_stack_member_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_stack_member_list__isys_obj__id` FOREIGN KEY (`isys_catg_stack_member_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_stack_member_list__stack_member` FOREIGN KEY (`isys_catg_stack_member_list__stack_member`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_stacking_list` (
  `isys_catg_stacking_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_stacking_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_stacking_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_stacking_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_stacking_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  `isys_catg_stacking_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_stacking_list__id`),
  KEY `isys_catg_stacking_list__isys_obj__id` (`isys_catg_stacking_list__isys_obj__id`),
  KEY `isys_catg_stacking_list__isys_connection__id` (`isys_catg_stacking_list__isys_connection__id`),
  KEY `isys_catg_stacking_list__isys_catg_relation_list__id` (`isys_catg_stacking_list__isys_catg_relation_list__id`),
  KEY `isys_catg_stacking_list__status` (`isys_catg_stacking_list__status`),
  CONSTRAINT `isys_catg_stacking_list_ibfk_1` FOREIGN KEY (`isys_catg_stacking_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_stacking_list_ibfk_2` FOREIGN KEY (`isys_catg_stacking_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_stacking_list_ibfk_3` FOREIGN KEY (`isys_catg_stacking_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_stor_list` (
  `isys_catg_stor_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_stor_list__isys_stor_manufacturer__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_stor_list__isys_stor_model__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_stor_list__id__raid_pool` int(10) unsigned DEFAULT NULL,
  `isys_catg_stor_list__isys_stor_raid_level__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_stor_list__isys_catg_controller_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_stor_list__isys_catg_sanpool_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_stor_list__isys_stor_con_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_stor_list__isys_stor_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_stor_list__isys_stor_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_stor_list__isys_memory_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_stor_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_stor_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_stor_list__capacity` double DEFAULT NULL,
  `isys_catg_stor_list__status` int(10) unsigned DEFAULT '1',
  `isys_catg_stor_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_stor_list__hotspare` int(10) unsigned DEFAULT NULL,
  `isys_catg_stor_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_stor_list__isys_catg_raid_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_stor_list__sort` int(10) unsigned DEFAULT NULL,
  `isys_catg_stor_list__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_stor_list__serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_stor_list__isys_stor_lto_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_stor_list__fc_address` text COLLATE utf8_unicode_ci,
  `isys_catg_stor_list__firmware` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_catg_stor_list__id`),
  KEY `isys_catg_stor_list_FKIndex1` (`isys_catg_stor_list__isys_stor_type__id`),
  KEY `isys_catg_stor_list_FKIndex2` (`isys_catg_stor_list__isys_stor_unit__id`),
  KEY `isys_catg_stor_list_FKIndex3` (`isys_catg_stor_list__isys_stor_con_type__id`),
  KEY `isys_catg_stor_list_FKIndex5` (`isys_catg_stor_list__isys_catg_controller_list__id`),
  KEY `isys_catg_stor_list_FKIndex6` (`isys_catg_stor_list__isys_catg_sanpool_list__id`),
  KEY `isys_catg_stor_list_FKIndex8` (`isys_catg_stor_list__isys_stor_manufacturer__id`),
  KEY `isys_catg_stor_list_FKIndex9` (`isys_catg_stor_list__isys_stor_raid_level__id`),
  KEY `isys_catg_stor_list_FKIndex10` (`isys_catg_stor_list__id__raid_pool`),
  KEY `isys_catg_stor_list_FKIndex11` (`isys_catg_stor_list__isys_stor_model__id`),
  KEY `isys_catg_stor_list__isys_memory_unit__id` (`isys_catg_stor_list__isys_memory_unit__id`),
  KEY `isys_catg_stor_list__isys_obj__id` (`isys_catg_stor_list__isys_obj__id`),
  KEY `isys_catg_stor_list__isys_catg_raid_list__id` (`isys_catg_stor_list__isys_catg_raid_list__id`),
  KEY `isys_catg_stor_list__isys_stor_lto_type__id` (`isys_catg_stor_list__isys_stor_lto_type__id`),
  KEY `isys_catg_stor_list__status` (`isys_catg_stor_list__status`),
  CONSTRAINT `isys_catg_stor_list__isys_stor_lto_type__id` FOREIGN KEY (`isys_catg_stor_list__isys_stor_lto_type__id`) REFERENCES `isys_stor_lto_type` (`isys_stor_lto_type__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_stor_list_ibfk_1` FOREIGN KEY (`isys_catg_stor_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_stor_list_ibfk_2` FOREIGN KEY (`isys_catg_stor_list__isys_stor_manufacturer__id`) REFERENCES `isys_stor_manufacturer` (`isys_stor_manufacturer__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_stor_list_ibfk_3` FOREIGN KEY (`isys_catg_stor_list__isys_stor_model__id`) REFERENCES `isys_stor_model` (`isys_stor_model__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_stor_list_ibfk_4` FOREIGN KEY (`isys_catg_stor_list__isys_catg_sanpool_list__id`) REFERENCES `isys_catg_sanpool_list` (`isys_catg_sanpool_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_stor_list_ibfk_5` FOREIGN KEY (`isys_catg_stor_list__isys_catg_raid_list__id`) REFERENCES `isys_catg_raid_list` (`isys_catg_raid_list__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_telephone_fax_list` (
  `isys_catg_telephone_fax_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_telephone_fax_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_telephone_fax_list__isys_telephone_fax_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_telephone_fax_list__telephone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_telephone_fax_list__fax_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_telephone_fax_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_telephone_fax_list__imei` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_telephone_fax_list__pincode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_telephone_fax_list__extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_telephone_fax_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_catg_telephone_fax_list__id`),
  KEY `isys_catg_telephone_fax_list__isys_obj__id` (`isys_catg_telephone_fax_list__isys_obj__id`),
  KEY `isys_catg_telephone_fax_list__isys_telephone_fax_type__id` (`isys_catg_telephone_fax_list__isys_telephone_fax_type__id`),
  CONSTRAINT `isys_catg_telephone_fax_list_ibfk_1` FOREIGN KEY (`isys_catg_telephone_fax_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_telephone_fax_list_ibfk_2` FOREIGN KEY (`isys_catg_telephone_fax_list__isys_telephone_fax_type__id`) REFERENCES `isys_telephone_fax_type` (`isys_telephone_fax_type__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_tsi_service_list` (
  `isys_catg_tsi_service_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_tsi_service_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_tsi_service_list__tsi_service_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_tsi_service_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_tsi_service_list__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_tsi_service_list__id`),
  KEY `isys_catg_tsi_service_list__isys_obj__id` (`isys_catg_tsi_service_list__isys_obj__id`),
  CONSTRAINT `isys_catg_tsi_service_list_ibfk_2` FOREIGN KEY (`isys_catg_tsi_service_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_ui_list` (
  `isys_catg_ui_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_ui_list__isys_catg_connector_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ui_list__id__connected` int(10) unsigned DEFAULT NULL,
  `isys_catg_ui_list__isys_ui_con_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ui_list__isys_ui_plugtype__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_ui_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_ui_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_ui_list__status` int(10) unsigned DEFAULT '1',
  `isys_catg_ui_list__property` int(10) unsigned DEFAULT '0',
  `isys_catg_ui_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_ui_list__id`),
  KEY `isys_catg_ui_list_FKIndex2` (`isys_catg_ui_list__isys_ui_con_type__id`),
  KEY `isys_catg_ui_list_FKIndex3` (`isys_catg_ui_list__isys_ui_plugtype__id`),
  KEY `isys_catg_ui_list_FKIndex4` (`isys_catg_ui_list__id__connected`),
  KEY `isys_catg_ui_list__isys_obj__id` (`isys_catg_ui_list__isys_obj__id`),
  KEY `isys_catg_ui_list__isys_catg_connector_list__id` (`isys_catg_ui_list__isys_catg_connector_list__id`),
  KEY `isys_catg_ui_list__status` (`isys_catg_ui_list__status`),
  CONSTRAINT `isys_catg_ui_list_ibfk_4` FOREIGN KEY (`isys_catg_ui_list__id__connected`) REFERENCES `isys_catg_ui_list` (`isys_catg_ui_list__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_catg_ui_list_ibfk_5` FOREIGN KEY (`isys_catg_ui_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ui_list_ibfk_6` FOREIGN KEY (`isys_catg_ui_list__isys_ui_con_type__id`) REFERENCES `isys_ui_con_type` (`isys_ui_con_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ui_list_ibfk_7` FOREIGN KEY (`isys_catg_ui_list__isys_ui_plugtype__id`) REFERENCES `isys_ui_plugtype` (`isys_ui_plugtype__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_ui_list_ibfk_8` FOREIGN KEY (`isys_catg_ui_list__isys_catg_connector_list__id`) REFERENCES `isys_catg_connector_list` (`isys_catg_connector_list__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_vehicle_list` (
  `isys_catg_vehicle_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_vehicle_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_vehicle_list__licence_plate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_vehicle_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_vehicle_list__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_catg_vehicle_list__id`),
  KEY `isys_catg_vehicle_list__isys_obj__id` (`isys_catg_vehicle_list__isys_obj__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_version_list` (
  `isys_catg_version_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_version_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_version_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_version_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_version_list__servicepack` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_version_list__hotfix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_version_list__kernel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_version_list__status` int(10) unsigned DEFAULT '2',
  `isys_catg_version_list__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_catg_version_list__id`),
  KEY `isys_catg_version_list__isys_obj__id__FKIndex` (`isys_catg_version_list__isys_obj__id`),
  KEY `isys_catg_version_list__title` (`isys_catg_version_list__title`),
  KEY `isys_catg_version_list__servicepack` (`isys_catg_version_list__servicepack`),
  KEY `isys_catg_version_list__hotfix` (`isys_catg_version_list__hotfix`),
  KEY `isys_catg_version_list__kernel` (`isys_catg_version_list__kernel`),
  KEY `isys_catg_version_list__status` (`isys_catg_version_list__status`),
  CONSTRAINT `isys_catg_version_list_ibfk_1` FOREIGN KEY (`isys_catg_version_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_virtual_device_list` (
  `isys_catg_virtual_device_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_virtual_device_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_virtual_device_list__disk_image_location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_virtual_device_list__network_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_virtual_device_list__description` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_virtual_device_list__status` int(11) NOT NULL,
  `isys_catg_virtual_device_list__device_type` int(10) DEFAULT NULL,
  PRIMARY KEY (`isys_catg_virtual_device_list__id`),
  KEY `isys_catg_virtual_device_list__isys_obj__id` (`isys_catg_virtual_device_list__isys_obj__id`),
  KEY `isys_catg_virtual_device_list__status` (`isys_catg_virtual_device_list__status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_virtual_host_list` (
  `isys_catg_virtual_host_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_virtual_host_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_virtual_host_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  `isys_catg_virtual_host_list__property` int(10) unsigned NOT NULL,
  `isys_catg_virtual_host_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_virtual_host_list__virtual_host` int(10) unsigned DEFAULT '0',
  `isys_catg_virtual_host_list__license_server` int(10) unsigned DEFAULT NULL,
  `isys_catg_virtual_host_list__administration_service` int(10) unsigned DEFAULT NULL,
  `isys_catg_virtual_host_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_virtual_host_list__id`),
  KEY `isys_catg_virtual_host_list__isys_obj__id` (`isys_catg_virtual_host_list__isys_obj__id`),
  KEY `isys_catg_virtual_host_list_ibfk_3` (`isys_catg_virtual_host_list__license_server`),
  KEY `isys_catg_virtual_host_list_ibfk_4` (`isys_catg_virtual_host_list__administration_service`),
  KEY `isys_catg_virtual_host_list__isys_catg_relation_list__id` (`isys_catg_virtual_host_list__isys_catg_relation_list__id`),
  CONSTRAINT `isys_catg_virtual_host_list__isys_catg_relation_list__id` FOREIGN KEY (`isys_catg_virtual_host_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_virtual_host_list_ibfk_2` FOREIGN KEY (`isys_catg_virtual_host_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_virtual_host_list_ibfk_3` FOREIGN KEY (`isys_catg_virtual_host_list__license_server`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_virtual_host_list_ibfk_4` FOREIGN KEY (`isys_catg_virtual_host_list__administration_service`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_virtual_list` (
  `isys_catg_virtual_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_virtual_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_virtual_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_virtual_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_virtual_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_virtual_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_virtual_list__id`),
  KEY `isys_catg_virtual_list__isys_obj__id` (`isys_catg_virtual_list__isys_obj__id`),
  CONSTRAINT `isys_catg_virtual_list_ibfk_1` FOREIGN KEY (`isys_catg_virtual_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_virtual_machine_list` (
  `isys_catg_virtual_machine_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_virtual_machine_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_virtual_machine_list__isys_vm_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_virtual_machine_list__system` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_virtual_machine_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_virtual_machine_list__vm` int(10) DEFAULT NULL,
  `isys_catg_virtual_machine_list__config_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_virtual_machine_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_virtual_machine_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catg_virtual_machine_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_virtual_machine_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_virtual_machine_list__primary` int(10) unsigned DEFAULT NULL,
  `isys_catg_virtual_machine_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_virtual_machine_list__id`),
  KEY `isys_catg_virtual_machine_list_FKIndex2` (`isys_catg_virtual_machine_list__isys_obj__id`),
  KEY `isys_catg_virtual_machine_list__isys_connection__id` (`isys_catg_virtual_machine_list__isys_connection__id`),
  KEY `isys_catg_virtual_machine_list__isys_vm_type__id` (`isys_catg_virtual_machine_list__isys_vm_type__id`),
  KEY `isys_catg_virtual_machine_list__primary` (`isys_catg_virtual_machine_list__primary`),
  KEY `isys_catg_virtual_machine_list__isys_catg_relation_list__id` (`isys_catg_virtual_machine_list__isys_catg_relation_list__id`),
  KEY `isys_catg_virtual_machine_list__status` (`isys_catg_virtual_machine_list__status`),
  CONSTRAINT `isys_catg_virtual_machine_list__isys_catg_relation_list__id` FOREIGN KEY (`isys_catg_virtual_machine_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_virtual_machine_list__isys_obj__id` FOREIGN KEY (`isys_catg_virtual_machine_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_virtual_machine_list__isys_vm_type__id` FOREIGN KEY (`isys_catg_virtual_machine_list__isys_vm_type__id`) REFERENCES `isys_vm_type` (`isys_vm_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_virtual_machine_list_ibfk_2` FOREIGN KEY (`isys_catg_virtual_machine_list__primary`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_virtual_machine_list_ibfk_3` FOREIGN KEY (`isys_catg_virtual_machine_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_virtual_switch_list` (
  `isys_catg_virtual_switch_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_virtual_switch_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  `isys_catg_virtual_switch_list__property` int(10) unsigned DEFAULT NULL,
  `isys_catg_virtual_switch_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_virtual_switch_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_virtual_switch_list__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_catg_virtual_switch_list__id`),
  KEY `isys_catg_virtual_switch_list__isys_obj__id` (`isys_catg_virtual_switch_list__isys_obj__id`),
  KEY `isys_catg_virtual_switch_list__status` (`isys_catg_virtual_switch_list__status`),
  CONSTRAINT `isys_catg_virtual_switch_list_ibfk_1` FOREIGN KEY (`isys_catg_virtual_switch_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_voip_phone_line_2_isys_obj` (
  `isys_catg_voip_phone_line__id` int(10) unsigned NOT NULL,
  `isys_obj__id` int(10) unsigned NOT NULL,
  KEY `isys_catg_voip_phone_line__id` (`isys_catg_voip_phone_line__id`),
  KEY `isys_obj__id` (`isys_obj__id`),
  CONSTRAINT `isys_catg_voip_phone_line_2_isys_obj_ibfk_1` FOREIGN KEY (`isys_catg_voip_phone_line__id`) REFERENCES `isys_catg_voip_phone_line_list` (`isys_catg_voip_phone_line_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_voip_phone_line_2_isys_obj_ibfk_2` FOREIGN KEY (`isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_voip_phone_line_list` (
  `isys_catg_voip_phone_line_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_voip_phone_line_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_voip_phone_line_list__directory_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__route_partition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__alerting_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__ascii_alerting_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__description2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_catg_voip_phone_line_list__allow_cti_control` tinyint(1) DEFAULT NULL,
  `isys_catg_voip_phone_line_list__voice_mail_profile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__calling_search_space` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__presence_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__user_hold_moh_audio_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__network_hold_moh_audio_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__auto_answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__call_forward_all` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__sec_calling_search_space` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__forward_busy_internal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__forward_busy_external` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__forward_no_answer_internal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__forward_no_answer_external` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__forward_no_coverage_internal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__forward_no_coverage_external` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__forward_on_cti_fail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__forward_unregistered_internal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__forward_unregistered_external` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__no_answer_ring_duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__call_pickup_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__display` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__ascii_display` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__line_text_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__ascii_line_text_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__visual_message_indicator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__audible_message_indicator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__ring_settings_idle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__ring_settings_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__call_pickup_group_idle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__call_pickup_group_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__recording_option` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__recording_profile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__monitoring_css` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__log_missed_calls` tinyint(1) DEFAULT NULL,
  `isys_catg_voip_phone_line_list__external_phone_number_mask` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__max_number_of_calls` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__busy_trigger` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_line_list__caller_name` tinyint(1) DEFAULT '0',
  `isys_catg_voip_phone_line_list__caller_number` tinyint(1) DEFAULT '0',
  `isys_catg_voip_phone_line_list__redirected_number` tinyint(1) DEFAULT '0',
  `isys_catg_voip_phone_line_list__dialed_number` tinyint(1) DEFAULT '0',
  `isys_catg_voip_phone_line_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_voip_phone_line_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_catg_voip_phone_line_list__id`),
  KEY `isys_catg_voip_phone_line_list__isys_obj__id` (`isys_catg_voip_phone_line_list__isys_obj__id`),
  KEY `isys_catg_voip_phone_line_list__status` (`isys_catg_voip_phone_line_list__status`),
  CONSTRAINT `isys_catg_voip_phone_line_list_ibfk_1` FOREIGN KEY (`isys_catg_voip_phone_line_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_voip_phone_list` (
  `isys_catg_voip_phone_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_voip_phone_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_voip_phone_list__device_protocol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__device_pool` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__common_device_configuration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__isys_voip_phone_button_template__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_voip_phone_list__isys_voip_phone_softkey_template__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_voip_phone_list__common_profile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__calling_search_space` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__aar_calling_search_space` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__media_resource_group_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__user_hold_moh_audio_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__network_hold_moh_audio_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__aar_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__user_locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__network_locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__built_in_bridge` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__privacy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__device_mobility_mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__phone_suite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__services_provisioning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__load_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_voip_phone_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  `isys_catg_voip_phone_list__description2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_voip_phone_list__owner_user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_catg_voip_phone_list__id`),
  KEY `isys_catg_voip_phone_list__isys_obj__id` (`isys_catg_voip_phone_list__isys_obj__id`),
  KEY `isys_catg_voip_phone_list__isys_voip_phone_button_template__id` (`isys_catg_voip_phone_list__isys_voip_phone_button_template__id`),
  KEY `isys_catg_voip_phone_list__isys_voip_phone_softkey_template__id` (`isys_catg_voip_phone_list__isys_voip_phone_softkey_template__id`),
  CONSTRAINT `isys_catg_voip_phone_list_ibfk_1` FOREIGN KEY (`isys_catg_voip_phone_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_voip_phone_list_ibfk_2` FOREIGN KEY (`isys_catg_voip_phone_list__isys_voip_phone_button_template__id`) REFERENCES `isys_voip_phone_button_template` (`isys_voip_phone_button_template__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_voip_phone_list_ibfk_3` FOREIGN KEY (`isys_catg_voip_phone_list__isys_voip_phone_softkey_template__id`) REFERENCES `isys_voip_phone_softkey_template` (`isys_voip_phone_softkey_template__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_vrrp_list` (
  `isys_catg_vrrp_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_vrrp_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_vrrp_list__isys_vrrp_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_vrrp_list__vr_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_vrrp_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_vrrp_list__status` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`isys_catg_vrrp_list__id`),
  KEY `isys_catg_vrrp_list__isys_obj__id` (`isys_catg_vrrp_list__isys_obj__id`),
  KEY `isys_catg_vrrp_list__isys_vrrp_type__id` (`isys_catg_vrrp_list__isys_vrrp_type__id`),
  KEY `isys_catg_vrrp_list__status` (`isys_catg_vrrp_list__status`),
  CONSTRAINT `isys_catg_vrrp_list__isys_obj__id` FOREIGN KEY (`isys_catg_vrrp_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_vrrp_list__isys_vrrp_type__id` FOREIGN KEY (`isys_catg_vrrp_list__isys_vrrp_type__id`) REFERENCES `isys_vrrp_type` (`isys_vrrp_type__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_vrrp_member_list` (
  `isys_catg_vrrp_member_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_vrrp_member_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_vrrp_member_list__isys_catg_log_port_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_vrrp_member_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_vrrp_member_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_vrrp_member_list__status` int(10) unsigned NOT NULL DEFAULT '1',
  `isys_catg_vrrp_member_list__isys_cats_relpool_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_vrrp_member_list__id`),
  KEY `isys_catg_vrrp_member_list__isys_obj__id` (`isys_catg_vrrp_member_list__isys_obj__id`),
  KEY `isys_catg_vrrp_member_list__isys_catg_log_port_list__id` (`isys_catg_vrrp_member_list__isys_catg_log_port_list__id`),
  KEY `isys_catg_vrrp_member_list__isys_catg_relation_list__id` (`isys_catg_vrrp_member_list__isys_catg_relation_list__id`),
  KEY `isys_catg_vrrp_member_list__status` (`isys_catg_vrrp_member_list__status`),
  KEY `isys_catg_vrrp_member_list__isys_cats_relpool_list__id` (`isys_catg_vrrp_member_list__isys_cats_relpool_list__id`),
  CONSTRAINT `isys_catg_vrrp_member_list__isys_catg_log_port_list__id` FOREIGN KEY (`isys_catg_vrrp_member_list__isys_catg_log_port_list__id`) REFERENCES `isys_catg_log_port_list` (`isys_catg_log_port_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_vrrp_member_list__isys_catg_relation_list__id` FOREIGN KEY (`isys_catg_vrrp_member_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_vrrp_member_list__isys_cats_relpool_list__id` FOREIGN KEY (`isys_catg_vrrp_member_list__isys_cats_relpool_list__id`) REFERENCES `isys_cats_relpool_list` (`isys_cats_relpool_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_vrrp_member_list__isys_obj__id` FOREIGN KEY (`isys_catg_vrrp_member_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_wan_list` (
  `isys_catg_wan_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catg_wan_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_wan_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_wan_list__isys_wan_role__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_wan_list__isys_wan_type__id` int(10) unsigned DEFAULT NULL,
  `isys_catg_wan_list__channels` int(10) unsigned DEFAULT NULL,
  `isys_catg_wan_list__call_numbers` text COLLATE utf8_unicode_ci,
  `isys_catg_wan_list__connection_location` int(10) unsigned DEFAULT NULL,
  `isys_catg_wan_list__capacity_up` bigint(20) unsigned DEFAULT NULL,
  `isys_catg_wan_list__capacity_up_unit` int(10) unsigned DEFAULT NULL,
  `isys_catg_wan_list__capacity_down` bigint(20) unsigned DEFAULT NULL,
  `isys_catg_wan_list__capacity_down_unit` int(10) unsigned DEFAULT NULL,
  `isys_catg_wan_list__max_capacity_up` bigint(20) unsigned DEFAULT NULL,
  `isys_catg_wan_list__max_capacity_up_unit` int(10) unsigned DEFAULT NULL,
  `isys_catg_wan_list__max_capacity_down` bigint(20) unsigned DEFAULT NULL,
  `isys_catg_wan_list__max_capacity_down_unit` int(10) unsigned DEFAULT NULL,
  `isys_catg_wan_list__project_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_wan_list__vlan` int(10) unsigned DEFAULT NULL,
  `isys_catg_wan_list__shopping_cart_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_wan_list__ticket_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_wan_list__customer_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catg_wan_list__description` text COLLATE utf8_unicode_ci,
  `isys_catg_wan_list__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catg_wan_list__id`),
  KEY `isys_catg_wan_list__isys_obj__id` (`isys_catg_wan_list__isys_obj__id`),
  KEY `isys_catg_wan_list__isys_wan_role__id` (`isys_catg_wan_list__isys_wan_role__id`),
  KEY `isys_catg_wan_list__isys_wan_type__id` (`isys_catg_wan_list__isys_wan_type__id`),
  KEY `isys_catg_wan_list__connection_location` (`isys_catg_wan_list__connection_location`),
  KEY `isys_catg_wan_list__capacity_up_unit` (`isys_catg_wan_list__capacity_up_unit`),
  KEY `isys_catg_wan_list__capacity_down_unit` (`isys_catg_wan_list__capacity_down_unit`),
  KEY `isys_catg_wan_list__max_capacity_up_unit` (`isys_catg_wan_list__max_capacity_up_unit`),
  KEY `isys_catg_wan_list__max_capacity_down_unit` (`isys_catg_wan_list__max_capacity_down_unit`),
  KEY `isys_catg_wan_list__vlan` (`isys_catg_wan_list__vlan`),
  CONSTRAINT `isys_catg_wan_list__capacity_down_unit` FOREIGN KEY (`isys_catg_wan_list__capacity_down_unit`) REFERENCES `isys_wan_capacity_unit` (`isys_wan_capacity_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_wan_list__capacity_up_unit` FOREIGN KEY (`isys_catg_wan_list__capacity_up_unit`) REFERENCES `isys_wan_capacity_unit` (`isys_wan_capacity_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_wan_list__connection_location` FOREIGN KEY (`isys_catg_wan_list__connection_location`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_wan_list__isys_obj__id` FOREIGN KEY (`isys_catg_wan_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_wan_list__isys_wan_role__id` FOREIGN KEY (`isys_catg_wan_list__isys_wan_role__id`) REFERENCES `isys_wan_role` (`isys_wan_role__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_wan_list__isys_wan_type__id` FOREIGN KEY (`isys_catg_wan_list__isys_wan_type__id`) REFERENCES `isys_wan_type` (`isys_wan_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_wan_list__max_capacity_down_unit` FOREIGN KEY (`isys_catg_wan_list__max_capacity_down_unit`) REFERENCES `isys_wan_capacity_unit` (`isys_wan_capacity_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_wan_list__max_capacity_up_unit` FOREIGN KEY (`isys_catg_wan_list__max_capacity_up_unit`) REFERENCES `isys_wan_capacity_unit` (`isys_wan_capacity_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_wan_list__vlan` FOREIGN KEY (`isys_catg_wan_list__vlan`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_wan_list_2_net` (
  `isys_catg_wan_list_2_net__isys_catg_wan_list__id` int(10) unsigned NOT NULL,
  `isys_catg_wan_list_2_net__isys_obj__id` int(10) unsigned NOT NULL,
  KEY `isys_catg_wan_list_2_net__isys_catg_wan_list__id` (`isys_catg_wan_list_2_net__isys_catg_wan_list__id`),
  KEY `isys_catg_wan_list_2_net__isys_obj__id` (`isys_catg_wan_list_2_net__isys_obj__id`),
  CONSTRAINT `isys_catg_wan_list_2_net__isys_catg_wan_list__id` FOREIGN KEY (`isys_catg_wan_list_2_net__isys_catg_wan_list__id`) REFERENCES `isys_catg_wan_list` (`isys_catg_wan_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_wan_list_2_net__isys_obj__id` FOREIGN KEY (`isys_catg_wan_list_2_net__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catg_wan_list_2_router` (
  `isys_catg_wan_list_2_router__isys_catg_wan_list__id` int(10) unsigned NOT NULL,
  `isys_catg_wan_list_2_router__isys_obj__id` int(10) unsigned NOT NULL,
  KEY `isys_catg_wan_list_2_router__isys_catg_wan_list__id` (`isys_catg_wan_list_2_router__isys_catg_wan_list__id`),
  KEY `isys_catg_wan_list_2_router__isys_obj__id` (`isys_catg_wan_list_2_router__isys_obj__id`),
  CONSTRAINT `isys_catg_wan_list_2_router__isys_catg_wan_list__id` FOREIGN KEY (`isys_catg_wan_list_2_router__isys_catg_wan_list__id`) REFERENCES `isys_catg_wan_list` (`isys_catg_wan_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_catg_wan_list_2_router__isys_obj__id` FOREIGN KEY (`isys_catg_wan_list_2_router__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catp_appletalk` (
  `isys_catp_appletalk__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catp_appletalk__visible` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catp_appletalk__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catp_appletalk_list` (
  `isys_catp_appletalk_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catp_appletalk_list__isys_catp_appletalk__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_catp_appletalk_list__address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catp_appletalk_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catp_appletalk_list__description` text COLLATE utf8_unicode_ci,
  `isys_catp_appletalk_list__status` int(10) unsigned DEFAULT '1',
  `isys_catp_appletalk_list__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_catp_appletalk_list__id`),
  KEY `isys_catp_appletalk_list_FKIndex2` (`isys_catp_appletalk_list__isys_catp_appletalk__id`),
  CONSTRAINT `isys_catp_appletalk_list_ibfk_1` FOREIGN KEY (`isys_catp_appletalk_list__isys_catp_appletalk__id`) REFERENCES `isys_catp_appletalk` (`isys_catp_appletalk__id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catp_ipx` (
  `isys_catp_ipx__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catp_ipx__visible` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_catp_ipx__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catp_ipx_list` (
  `isys_catp_ipx_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catp_ipx_list__isys_catp_ipx__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_catp_ipx_list__address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catp_ipx_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catp_ipx_list__description` text COLLATE utf8_unicode_ci,
  `isys_catp_ipx_list__status` int(10) unsigned DEFAULT '1',
  `isys_catp_ipx_list__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_catp_ipx_list__id`),
  KEY `isys_catp_ipx_list_FKIndex2` (`isys_catp_ipx_list__isys_catp_ipx__id`),
  CONSTRAINT `isys_catp_ipx_list_ibfk_1` FOREIGN KEY (`isys_catp_ipx_list__isys_catp_ipx__id`) REFERENCES `isys_catp_ipx` (`isys_catp_ipx__id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catp_qos` (
  `isys_catp_qos__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catp_qos__visible` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_catp_qos__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catp_qos_list` (
  `isys_catp_qos_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catp_qos_list__isys_catp_qos__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_catp_qos_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catp_qos_list__description` text COLLATE utf8_unicode_ci,
  `isys_catp_qos_list__port` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catp_qos_list__status` int(10) unsigned DEFAULT '1',
  `isys_catp_qos_list__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_catp_qos_list__id`),
  KEY `isys_catp_qos_list_FKIndex2` (`isys_catp_qos_list__isys_catp_qos__id`),
  CONSTRAINT `isys_catp_qos_list_ibfk_1` FOREIGN KEY (`isys_catp_qos_list__isys_catp_qos__id`) REFERENCES `isys_catp_qos` (`isys_catp_qos__id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catp_routing` (
  `isys_catp_routing__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catp_routing__visible` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_catp_routing__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catp_routing_list` (
  `isys_catp_routing_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catp_routing_list__isys_catp_routing__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_catp_routing_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catp_routing_list__description` text COLLATE utf8_unicode_ci,
  `isys_catp_routing_list__static_routing` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catp_routing_list__protocol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catp_routing_list__status` int(10) unsigned DEFAULT '1',
  `isys_catp_routing_list__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_catp_routing_list__id`),
  KEY `isys_catp_routing_list_FKIndex1` (`isys_catp_routing_list__isys_catp_routing__id`),
  CONSTRAINT `isys_catp_routing_list_ibfk_1` FOREIGN KEY (`isys_catp_routing_list__isys_catp_routing__id`) REFERENCES `isys_catp_routing` (`isys_catp_routing__id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catp_stp` (
  `isys_catp_stp__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catp_stp__visible` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_catp_stp__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catp_stp_list` (
  `isys_catp_stp_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catp_stp_list__isys_catp_stp__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_catp_stp_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catp_stp_list__description` text COLLATE utf8_unicode_ci,
  `isys_catp_stp_list__status` int(10) unsigned DEFAULT NULL,
  `isys_catp_stp_list__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_catp_stp_list__id`),
  KEY `isys_catp_stp_list_FKIndex1` (`isys_catp_stp_list__isys_catp_stp__id`),
  CONSTRAINT `isys_catp_stp_list_ibfk_1` FOREIGN KEY (`isys_catp_stp_list__isys_catp_stp__id`) REFERENCES `isys_catp_stp` (`isys_catp_stp__id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catp_wifi` (
  `isys_catp_wifi__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catp_wifi__visible` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_catp_wifi__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_catp_wifi_list` (
  `isys_catp_wifi_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_catp_wifi_list__isys_catp_wifi__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_catp_wifi_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_catp_wifi_list__description` text COLLATE utf8_unicode_ci,
  `isys_catp_wifi_list__status` int(10) unsigned DEFAULT '1',
  `isys_catp_wifi_list__ip_port` int(10) unsigned DEFAULT NULL,
  `isys_catp_wifi_list__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_catp_wifi_list__id`),
  KEY `isys_catp_wlan_list_FKIndex2` (`isys_catp_wifi_list__isys_catp_wifi__id`),
  CONSTRAINT `isys_catp_wifi_list_ibfk_1` FOREIGN KEY (`isys_catp_wifi_list__isys_catp_wifi__id`) REFERENCES `isys_catp_wifi` (`isys_catp_wifi__id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_ac_list` (
  `isys_cats_ac_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_ac_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_ac_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_ac_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_ac_list__property` int(10) DEFAULT NULL,
  `isys_cats_ac_list__sort` int(10) unsigned DEFAULT NULL,
  `isys_cats_ac_list__status` int(10) NOT NULL DEFAULT '1',
  `isys_cats_ac_list__threshold` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_ac_list__capacity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_ac_list__isys_ac_refrigerating_capacity_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_ac_list__air_quantity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_ac_list__width` float NOT NULL DEFAULT '0',
  `isys_cats_ac_list__height` float NOT NULL DEFAULT '0',
  `isys_cats_ac_list__depth` float NOT NULL DEFAULT '0',
  `isys_cats_ac_list__alarm` int(1) unsigned DEFAULT NULL,
  `isys_cats_ac_list__isys_ac_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_ac_list__isys_temp_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_ac_list__isys_ac_air_quantity_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_ac_list__isys_depth_unit__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_ac_list__id`),
  KEY `isys_cats_ac_list__isys_ac_type__id` (`isys_cats_ac_list__isys_ac_type__id`),
  KEY `isys_cats_ac_list__isys_temp_unit__id` (`isys_cats_ac_list__isys_temp_unit__id`),
  KEY `isys_cats_ac_list__isys_ac_air_quantity_unit__id` (`isys_cats_ac_list__isys_ac_air_quantity_unit__id`),
  KEY `isys_cats_ac_list__isys_ac_refrigerating_capacity_unit__id` (`isys_cats_ac_list__isys_ac_refrigerating_capacity_unit__id`),
  KEY `isys_cats_ac_list__isys_depth_unit__id` (`isys_cats_ac_list__isys_depth_unit__id`),
  KEY `isys_cats_ac_list__isys_obj__id` (`isys_cats_ac_list__isys_obj__id`),
  CONSTRAINT `isys_cats_ac_list_ibfk_10` FOREIGN KEY (`isys_cats_ac_list__isys_temp_unit__id`) REFERENCES `isys_temp_unit` (`isys_temp_unit__id`),
  CONSTRAINT `isys_cats_ac_list_ibfk_11` FOREIGN KEY (`isys_cats_ac_list__isys_ac_air_quantity_unit__id`) REFERENCES `isys_ac_air_quantity_unit` (`isys_ac_air_quantity_unit__id`),
  CONSTRAINT `isys_cats_ac_list_ibfk_12` FOREIGN KEY (`isys_cats_ac_list__isys_depth_unit__id`) REFERENCES `isys_depth_unit` (`isys_depth_unit__id`) ON DELETE SET NULL,
  CONSTRAINT `isys_cats_ac_list_ibfk_13` FOREIGN KEY (`isys_cats_ac_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_ac_list_ibfk_8` FOREIGN KEY (`isys_cats_ac_list__isys_ac_refrigerating_capacity_unit__id`) REFERENCES `isys_ac_refrigerating_capacity_unit` (`isys_ac_refrigerating_capacity_unit__id`),
  CONSTRAINT `isys_cats_ac_list_ibfk_9` FOREIGN KEY (`isys_cats_ac_list__isys_ac_type__id`) REFERENCES `isys_ac_type` (`isys_ac_type__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_access_point_list` (
  `isys_cats_access_point_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_access_point_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_access_point_list__isys_wlan_encryption__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_access_point_list__isys_wlan_function__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_access_point_list__isys_wlan_channel__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_access_point_list__isys_wlan_standard__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_access_point_list__isys_wlan_auth__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_access_point_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_access_point_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_access_point_list__ssid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_access_point_list__key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_cats_access_point_list__wep` int(10) unsigned DEFAULT NULL,
  `isys_cats_access_point_list__wpa` int(10) unsigned DEFAULT NULL,
  `isys_cats_access_point_list__psk` int(10) unsigned DEFAULT NULL,
  `isys_cats_access_point_list__tkip` int(10) unsigned DEFAULT NULL,
  `isys_cats_access_point_list__pbnac` int(10) unsigned DEFAULT NULL,
  `isys_cats_access_point_list__encryption` int(10) unsigned DEFAULT NULL,
  `isys_cats_access_point_list__cipher` int(10) unsigned DEFAULT NULL,
  `isys_cats_access_point_list__broadcast_ssid` int(10) unsigned DEFAULT NULL,
  `isys_cats_access_point_list__mac_filter` int(10) unsigned DEFAULT NULL,
  `isys_cats_access_point_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_access_point_list__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_access_point_list__id`),
  KEY `isys_cats_access_point_list_FKIndex1` (`isys_cats_access_point_list__isys_wlan_standard__id`),
  KEY `isys_cats_access_point_list_FKIndex2` (`isys_cats_access_point_list__isys_wlan_channel__id`),
  KEY `isys_cats_access_point_list_FKIndex3` (`isys_cats_access_point_list__isys_wlan_function__id`),
  KEY `isys_cats_access_point_list_FKIndex4` (`isys_cats_access_point_list__isys_wlan_encryption__id`),
  KEY `isys_cats_access_point_list__isys_wlan_auth__id` (`isys_cats_access_point_list__isys_wlan_auth__id`),
  KEY `isys_cats_access_point_list__i_2` (`isys_cats_access_point_list__isys_wlan_auth__id`),
  KEY `isys_cats_access_point_list__isys_obj__id` (`isys_cats_access_point_list__isys_obj__id`),
  KEY `isys_cats_access_point_list__status` (`isys_cats_access_point_list__status`),
  CONSTRAINT `isys_cats_access_point_list_ibfk_10` FOREIGN KEY (`isys_cats_access_point_list__isys_wlan_channel__id`) REFERENCES `isys_wlan_channel` (`isys_wlan_channel__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_access_point_list_ibfk_11` FOREIGN KEY (`isys_cats_access_point_list__isys_wlan_standard__id`) REFERENCES `isys_wlan_standard` (`isys_wlan_standard__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_access_point_list_ibfk_12` FOREIGN KEY (`isys_cats_access_point_list__isys_wlan_auth__id`) REFERENCES `isys_wlan_auth` (`isys_wlan_auth__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_access_point_list_ibfk_7` FOREIGN KEY (`isys_cats_access_point_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_access_point_list_ibfk_8` FOREIGN KEY (`isys_cats_access_point_list__isys_wlan_encryption__id`) REFERENCES `isys_wlan_encryption` (`isys_wlan_encryption__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_access_point_list_ibfk_9` FOREIGN KEY (`isys_cats_access_point_list__isys_wlan_function__id`) REFERENCES `isys_wlan_function` (`isys_wlan_function__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_app_variant_list` (
  `isys_cats_app_variant_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_app_variant_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_app_variant_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_app_variant_list__variant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_app_variant_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_app_variant_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_cats_app_variant_list__id`),
  KEY `isys_cats_app_variant_list__isys_obj__id` (`isys_cats_app_variant_list__isys_obj__id`),
  KEY `isys_cats_app_variant_list__status` (`isys_cats_app_variant_list__status`),
  CONSTRAINT `isys_cats_app_variant_list_ibfk_1` FOREIGN KEY (`isys_cats_app_variant_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_application_list` (
  `isys_cats_application_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_application_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_application_list__isys_application_manufacturer__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_application_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_application_list__specification` text COLLATE utf8_unicode_ci,
  `isys_cats_application_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_application_list__release` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_application_list__registration_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_application_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_application_list__property` int(10) unsigned DEFAULT NULL,
  `isys_cats_application_list__isys_installation_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_application_list__install_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_cats_application_list__id`),
  KEY `isys_cats_application_list_FKIndex1` (`isys_cats_application_list__isys_application_manufacturer__id`),
  KEY `isys_cats_application_list__isys_obj__id` (`isys_cats_application_list__isys_obj__id`),
  KEY `isys_cats_application_list__isys_installation_type__id` (`isys_cats_application_list__isys_installation_type__id`),
  CONSTRAINT `isys_cats_application_list_ibfk_2` FOREIGN KEY (`isys_cats_application_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_application_list_ibfk_3` FOREIGN KEY (`isys_cats_application_list__isys_application_manufacturer__id`) REFERENCES `isys_application_manufacturer` (`isys_application_manufacturer__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_application_list_ibfk_4` FOREIGN KEY (`isys_cats_application_list__isys_installation_type__id`) REFERENCES `isys_installation_type` (`isys_installation_type__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_building_list` (
  `isys_cats_building_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_building_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_building_list__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `isys_cats_building_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_building_list__count_floor` int(10) unsigned DEFAULT NULL,
  `isys_cats_building_list__postalcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_building_list__city_postal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_building_list__street_postal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_building_list__sort` int(10) unsigned DEFAULT NULL,
  `isys_cats_building_list__property` int(10) unsigned DEFAULT '0',
  `isys_cats_building_list__status` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_cats_building_list__id`),
  KEY `isys_cats_building_list__isys_obj__id` (`isys_cats_building_list__isys_obj__id`),
  CONSTRAINT `isys_cats_building_list_ibfk_1` FOREIGN KEY (`isys_cats_building_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_chassis_list` (
  `isys_cats_chassis_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_chassis_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_chassis_list__isys_chassis_connector_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_chassis_list__isys_chassis_role__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_chassis_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_chassis_list__isys_catg_netp_list__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_chassis_list__isys_catg_pc_list__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_chassis_list__isys_catg_hba_list__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_chassis_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_chassis_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  `isys_cats_chassis_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_chassis_list__id`),
  KEY `isys_cats_chassis_list__isys_obj__id` (`isys_cats_chassis_list__isys_obj__id`),
  KEY `isys_cats_chassis_list__isys_chassis_connector_type__id` (`isys_cats_chassis_list__isys_chassis_connector_type__id`),
  KEY `isys_cats_chassis_list__isys_chassis_role__id` (`isys_cats_chassis_list__isys_chassis_role__id`),
  KEY `isys_cats_chassis_list__isys_catg_relation_list__id` (`isys_cats_chassis_list__isys_catg_relation_list__id`),
  KEY `isys_cats_chassis_list__isys_connection__id` (`isys_cats_chassis_list__isys_connection__id`),
  KEY `isys_cats_chassis_list__isys_catg_netp_list__id` (`isys_cats_chassis_list__isys_catg_netp_list__id`),
  KEY `isys_cats_chassis_list__isys_catg_pc_list__id` (`isys_cats_chassis_list__isys_catg_pc_list__id`),
  KEY `isys_cats_chassis_list__isys_catg_hba_list__id` (`isys_cats_chassis_list__isys_catg_hba_list__id`),
  KEY `isys_cats_chassis_list__status` (`isys_cats_chassis_list__status`),
  CONSTRAINT `isys_cats_chassis_list_ibfk_1` FOREIGN KEY (`isys_cats_chassis_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_chassis_list_ibfk_2` FOREIGN KEY (`isys_cats_chassis_list__isys_chassis_connector_type__id`) REFERENCES `isys_chassis_connector_type` (`isys_chassis_connector_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_chassis_list_ibfk_3` FOREIGN KEY (`isys_cats_chassis_list__isys_chassis_role__id`) REFERENCES `isys_chassis_role` (`isys_chassis_role__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_chassis_list_ibfk_4` FOREIGN KEY (`isys_cats_chassis_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_chassis_list_ibfk_5` FOREIGN KEY (`isys_cats_chassis_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_chassis_list_ibfk_6` FOREIGN KEY (`isys_cats_chassis_list__isys_catg_netp_list__id`) REFERENCES `isys_catg_netp_list` (`isys_catg_netp_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_chassis_list_ibfk_7` FOREIGN KEY (`isys_cats_chassis_list__isys_catg_pc_list__id`) REFERENCES `isys_catg_pc_list` (`isys_catg_pc_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_chassis_list_ibfk_8` FOREIGN KEY (`isys_cats_chassis_list__isys_catg_hba_list__id`) REFERENCES `isys_catg_hba_list` (`isys_catg_hba_list__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_chassis_list_2_isys_cats_chassis_slot_list` (
  `isys_cats_chassis_list_2_isys_cats_chassis_slot_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_chassis_slot_list__id` int(10) unsigned NOT NULL,
  `isys_cats_chassis_list__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_cats_chassis_list_2_isys_cats_chassis_slot_list__id`),
  KEY `isys_cats_chassis_slot_list__id` (`isys_cats_chassis_slot_list__id`),
  KEY `isys_cats_chassis_list__id` (`isys_cats_chassis_list__id`),
  CONSTRAINT `isys_cats_chassis_list_2_isys_cats_chassis_slot_list_ibfk_1` FOREIGN KEY (`isys_cats_chassis_slot_list__id`) REFERENCES `isys_cats_chassis_slot_list` (`isys_cats_chassis_slot_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_chassis_list_2_isys_cats_chassis_slot_list_ibfk_2` FOREIGN KEY (`isys_cats_chassis_list__id`) REFERENCES `isys_cats_chassis_list` (`isys_cats_chassis_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_chassis_slot_list` (
  `isys_cats_chassis_slot_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_chassis_slot_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_chassis_slot_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_chassis_slot_list__isys_chassis_connector_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_chassis_slot_list__insertion` tinyint(1) unsigned DEFAULT '0',
  `isys_cats_chassis_slot_list__x_from` int(10) unsigned DEFAULT NULL,
  `isys_cats_chassis_slot_list__x_to` int(10) unsigned DEFAULT NULL,
  `isys_cats_chassis_slot_list__y_from` int(10) unsigned DEFAULT NULL,
  `isys_cats_chassis_slot_list__y_to` int(10) unsigned DEFAULT NULL,
  `isys_cats_chassis_slot_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_chassis_slot_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_cats_chassis_slot_list__id`),
  KEY `isys_cats_chassis_slot_list__isys_obj__id` (`isys_cats_chassis_slot_list__isys_obj__id`),
  KEY `isys_cats_chassis_slot_list__isys_chassis_connector_type__id` (`isys_cats_chassis_slot_list__isys_chassis_connector_type__id`),
  KEY `isys_cats_chassis_slot_list__title` (`isys_cats_chassis_slot_list__title`),
  KEY `isys_cats_chassis_slot_list__status` (`isys_cats_chassis_slot_list__status`),
  CONSTRAINT `isys_cats_chassis_slot_list_ibfk_1` FOREIGN KEY (`isys_cats_chassis_slot_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_chassis_slot_list_ibfk_2` FOREIGN KEY (`isys_cats_chassis_slot_list__isys_chassis_connector_type__id`) REFERENCES `isys_chassis_connector_type` (`isys_chassis_connector_type__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_cats_chassis_slot_list` VALUES (1,23,'Slot1',NULL,1,0,0,0,1,'',2);
INSERT INTO `isys_cats_chassis_slot_list` VALUES (2,23,'Slot2',NULL,1,1,1,0,1,'',2);
INSERT INTO `isys_cats_chassis_slot_list` VALUES (3,23,'Slot3',NULL,1,2,2,0,1,'',2);
INSERT INTO `isys_cats_chassis_slot_list` VALUES (4,23,'Slot4',NULL,1,3,3,0,1,'',2);
INSERT INTO `isys_cats_chassis_slot_list` VALUES (5,24,'Slot1',NULL,1,0,0,0,0,'',2);
INSERT INTO `isys_cats_chassis_slot_list` VALUES (6,24,'Slot2',NULL,1,1,1,0,0,'',2);
INSERT INTO `isys_cats_chassis_slot_list` VALUES (7,24,'Slot3',NULL,1,2,2,0,0,'',2);
INSERT INTO `isys_cats_chassis_slot_list` VALUES (8,24,'Slot4',NULL,1,3,3,0,0,'',2);
INSERT INTO `isys_cats_chassis_slot_list` VALUES (9,24,'Slot5',NULL,1,0,0,1,1,'',2);
INSERT INTO `isys_cats_chassis_slot_list` VALUES (10,24,'Slot6',NULL,1,1,1,1,1,'',2);
INSERT INTO `isys_cats_chassis_slot_list` VALUES (11,24,'Slot7',NULL,1,2,2,1,1,'',2);
INSERT INTO `isys_cats_chassis_slot_list` VALUES (12,24,'Slot8',NULL,1,3,3,1,1,'',2);
INSERT INTO `isys_cats_chassis_slot_list` VALUES (13,25,'Slot1',NULL,1,0,1,0,1,'',2);
INSERT INTO `isys_cats_chassis_slot_list` VALUES (14,25,'Slot2',NULL,1,2,3,0,1,'',2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_chassis_view_list` (
  `isys_cats_chassis_view_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_chassis_view_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_chassis_view_list__front_width` int(10) unsigned DEFAULT NULL,
  `isys_cats_chassis_view_list__front_height` int(10) unsigned DEFAULT NULL,
  `isys_cats_chassis_view_list__front_size` tinyint(1) unsigned DEFAULT NULL,
  `isys_cats_chassis_view_list__rear_width` int(10) unsigned DEFAULT NULL,
  `isys_cats_chassis_view_list__rear_height` int(10) unsigned DEFAULT NULL,
  `isys_cats_chassis_view_list__rear_size` tinyint(1) unsigned DEFAULT NULL,
  `isys_cats_chassis_view_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_chassis_view_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_cats_chassis_view_list__id`),
  KEY `isys_cats_chassis_view_list__isys_obj__id` (`isys_cats_chassis_view_list__isys_obj__id`),
  CONSTRAINT `isys_cats_chassis_view_list_ibfk_1` FOREIGN KEY (`isys_cats_chassis_view_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_cats_chassis_view_list` VALUES (1,23,4,2,3,0,0,3,'',2);
INSERT INTO `isys_cats_chassis_view_list` VALUES (2,24,4,2,3,0,0,3,'',2);
INSERT INTO `isys_cats_chassis_view_list` VALUES (3,25,4,2,3,0,0,3,'',2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_client_list` (
  `isys_cats_client_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_client_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_client_list__isys_client_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_client_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_client_list__keyboard_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_cats_client_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_client_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_client_list__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_client_list__id`),
  KEY `isys_cats_client_FKIndex1` (`isys_cats_client_list__isys_client_type__id`),
  KEY `isys_cats_client_list__isys_obj__id` (`isys_cats_client_list__isys_obj__id`),
  CONSTRAINT `isys_cats_client_list_ibfk_1` FOREIGN KEY (`isys_cats_client_list__isys_client_type__id`) REFERENCES `isys_client_type` (`isys_client_type__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_cats_client_list_ibfk_2` FOREIGN KEY (`isys_cats_client_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_contract_list` (
  `isys_cats_contract_list__id` int(11) NOT NULL AUTO_INCREMENT,
  `isys_cats_contract_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_contract_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_contract_list__isys_contract_type__id` int(11) DEFAULT NULL,
  `isys_cats_contract_list__contract_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_contract_list__customer_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_contract_list__internal_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_contract_list__costs` double DEFAULT NULL,
  `isys_cats_contract_list__product` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_contract_list__isys_contract_status__id` int(11) DEFAULT NULL,
  `isys_cats_contract_list__start_date` date DEFAULT NULL,
  `isys_cats_contract_list__end_date` date DEFAULT NULL,
  `isys_cats_contract_list__isys_contract_end_type__id` int(11) DEFAULT NULL,
  `isys_cats_contract_list__notice_date` date DEFAULT NULL,
  `isys_cats_contract_list__notice_period` int(11) DEFAULT NULL,
  `isys_cats_contract_list__notice_period_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_contract_list__isys_contract_reaction_rate__id` int(11) DEFAULT NULL,
  `isys_cats_contract_list__maintenance_period` int(11) DEFAULT NULL,
  `isys_cats_contract_list__maintenance_period_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_contract_list__status` int(11) NOT NULL DEFAULT '2',
  `isys_cats_contract_list__runtime` bigint(20) unsigned DEFAULT NULL,
  `isys_cats_contract_list__runtime_unit` int(10) unsigned DEFAULT NULL,
  `isys_cats_contract_list__isys_contract_notice_period_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_contract_list__isys_contract_payment_period__id` int(11) unsigned DEFAULT NULL,
  `isys_cats_contract_list__cost_calculation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'per_assignment',
  PRIMARY KEY (`isys_cats_contract_list__id`),
  KEY `isys_cats_contract_list__isys_obj__id` (`isys_cats_contract_list__isys_obj__id`),
  KEY `isys_cats_contract_list__isys_contract_type__id` (`isys_cats_contract_list__isys_contract_type__id`),
  KEY `isys_cats_contract_list__isys_contract_status__id` (`isys_cats_contract_list__isys_contract_status__id`),
  KEY `isys_cats_contract_list__isys_contract_end_type__id` (`isys_cats_contract_list__isys_contract_end_type__id`),
  KEY `isys_cats_contract_list__notice_period_unit__id` (`isys_cats_contract_list__notice_period_unit__id`),
  KEY `isys_cats_contract_list__maintenance_period_unit__id` (`isys_cats_contract_list__maintenance_period_unit__id`),
  KEY `isys_cats_contract_list__isys_contract_reaction_rate__id` (`isys_cats_contract_list__isys_contract_reaction_rate__id`),
  KEY `isys_cats_contract_list__runtime_unit` (`isys_cats_contract_list__runtime_unit`),
  KEY `isys_cats_contract_list__isys_contract_notice_period_type__id` (`isys_cats_contract_list__isys_contract_notice_period_type__id`),
  KEY `isys_cats_contract_list__isys_contract_payment_period__id` (`isys_cats_contract_list__isys_contract_payment_period__id`),
  CONSTRAINT `isys_cats_contract_list__isys_contract_payment_period__id` FOREIGN KEY (`isys_cats_contract_list__isys_contract_payment_period__id`) REFERENCES `isys_contract_payment_period` (`isys_contract_payment_period__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_contract_list_ibfk_1` FOREIGN KEY (`isys_cats_contract_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_contract_list_ibfk_2` FOREIGN KEY (`isys_cats_contract_list__isys_contract_type__id`) REFERENCES `isys_contract_type` (`isys_contract_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_contract_list_ibfk_3` FOREIGN KEY (`isys_cats_contract_list__isys_contract_status__id`) REFERENCES `isys_contract_status` (`isys_contract_status__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_contract_list_ibfk_4` FOREIGN KEY (`isys_cats_contract_list__isys_contract_end_type__id`) REFERENCES `isys_contract_end_type` (`isys_contract_end_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_contract_list_ibfk_5` FOREIGN KEY (`isys_cats_contract_list__notice_period_unit__id`) REFERENCES `isys_guarantee_period_unit` (`isys_guarantee_period_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_contract_list_ibfk_6` FOREIGN KEY (`isys_cats_contract_list__maintenance_period_unit__id`) REFERENCES `isys_guarantee_period_unit` (`isys_guarantee_period_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_contract_list_ibfk_7` FOREIGN KEY (`isys_cats_contract_list__isys_contract_reaction_rate__id`) REFERENCES `isys_contract_reaction_rate` (`isys_contract_reaction_rate__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_contract_list_ibfk_8` FOREIGN KEY (`isys_cats_contract_list__runtime_unit`) REFERENCES `isys_guarantee_period_unit` (`isys_guarantee_period_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_contract_list_ibfk_9` FOREIGN KEY (`isys_cats_contract_list__isys_contract_notice_period_type__id`) REFERENCES `isys_contract_notice_period_type` (`isys_contract_notice_period_type__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_cp_contract_list` (
  `isys_cats_cp_contract_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_cp_contract_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_cp_contract_list__isys_cp_contract_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_cp_contract_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_cp_contract_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_cp_contract_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_cp_contract_list__property` int(10) unsigned DEFAULT NULL,
  `isys_cats_cp_contract_list__serial_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_cp_contract_list__phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_cp_contract_list__pin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_cp_contract_list__pin2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_cp_contract_list__puk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_cp_contract_list__puk2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_cp_contract_list__tc_pin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_cp_contract_list__tc_serial_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_cp_contract_list__tc_phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_cp_contract_list__tc_card_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_cats_cp_contract_list__tc_pin2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_cp_contract_list__tc_puk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_cp_contract_list__tc_puk2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_cp_contract_list__optional_info` text COLLATE utf8_unicode_ci,
  `isys_cats_cp_contract_list__twincard` int(10) unsigned DEFAULT '0',
  `isys_cats_cp_contract_list__card_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_cp_contract_list__client_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_cp_contract_list__end_date` datetime DEFAULT NULL,
  `isys_cats_cp_contract_list__start_date` datetime DEFAULT NULL,
  `isys_cats_cp_contract_list__threshold_date` date NOT NULL,
  `isys_cats_cp_contract_list__isys_network_provider__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_cp_contract_list__isys_telephone_rate__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_cp_contract_list__id`),
  KEY `isys_cats_cp_contract_list_FKIndex1` (`isys_cats_cp_contract_list__isys_cp_contract_type__id`),
  KEY `isys_cats_cp_contract_list__isys_obj__id` (`isys_cats_cp_contract_list__isys_obj__id`),
  CONSTRAINT `isys_cats_cp_contract_list_ibfk_1` FOREIGN KEY (`isys_cats_cp_contract_list__isys_cp_contract_type__id`) REFERENCES `isys_cp_contract_type` (`isys_cp_contract_type__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_cats_cp_contract_list_ibfk_2` FOREIGN KEY (`isys_cats_cp_contract_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_database_access_list` (
  `isys_cats_database_access_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_database_access_list__isys_connection__id` int(10) unsigned DEFAULT NULL COMMENT 'Connection to database schema',
  `isys_cats_database_access_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL COMMENT 'Implicit relation: database access',
  `isys_cats_database_access_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_database_access_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_database_access_list__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_cats_database_access_list__id`),
  KEY `isys_cats_database_access_list__isys_obj__id` (`isys_cats_database_access_list__isys_obj__id`),
  KEY `isys_cats_database_access_list__isys_connection__id` (`isys_cats_database_access_list__isys_connection__id`),
  KEY `isys_cats_database_access_list__isys_catg_relation_list__id` (`isys_cats_database_access_list__isys_catg_relation_list__id`),
  KEY `isys_cats_database_access_list__status` (`isys_cats_database_access_list__status`),
  CONSTRAINT `isys_cats_database_access_list_ibfk_1` FOREIGN KEY (`isys_cats_database_access_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_database_access_list_ibfk_2` FOREIGN KEY (`isys_cats_database_access_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_database_access_list_ibfk_3` FOREIGN KEY (`isys_cats_database_access_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_database_gateway_list` (
  `isys_cats_database_gateway_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_database_gateway_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_database_gateway_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL COMMENT 'Implicit relation: database access',
  `isys_cats_database_gateway_list__type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_database_gateway_list__host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_database_gateway_list__port` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_database_gateway_list__user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_database_gateway_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_database_gateway_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_database_gateway_list__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_cats_database_gateway_list__id`),
  KEY `isys_cats_database_gateway_list__isys_obj__id` (`isys_cats_database_gateway_list__isys_obj__id`),
  KEY `isys_cats_database_gateway_list__isys_catg_relation_list__id` (`isys_cats_database_gateway_list__isys_catg_relation_list__id`),
  KEY `isys_cats_database_gateway_list__isys_connection__id` (`isys_cats_database_gateway_list__isys_connection__id`),
  KEY `isys_cats_database_gateway_list__status` (`isys_cats_database_gateway_list__status`),
  CONSTRAINT `isys_cats_database_gateway_list_ibfk_1` FOREIGN KEY (`isys_cats_database_gateway_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_database_gateway_list_ibfk_2` FOREIGN KEY (`isys_cats_database_gateway_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_database_gateway_list_ibfk_3` FOREIGN KEY (`isys_cats_database_gateway_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_database_instance_list` (
  `isys_cats_database_instance_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_database_instance_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_database_instance_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_database_instance_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_database_instance_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_database_instance_list__listener` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_database_instance_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_database_instance_list__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_database_instance_list__id`),
  KEY `isys_cats_database_instance_list__isys_obj__id` (`isys_cats_database_instance_list__isys_obj__id`),
  KEY `isys_cats_database_instance_list_ibfk_2` (`isys_cats_database_instance_list__isys_connection__id`),
  KEY `isys_cats_database_instance_list__isys_catg_relation_list__id` (`isys_cats_database_instance_list__isys_catg_relation_list__id`),
  CONSTRAINT `isys_cats_database_instance_list_ibfk_1` FOREIGN KEY (`isys_cats_database_instance_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_database_instance_list_ibfk_2` FOREIGN KEY (`isys_cats_database_instance_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_database_instance_list_ibfk_3` FOREIGN KEY (`isys_cats_database_instance_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_database_links_list` (
  `isys_cats_database_links_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_database_links_list__isys_connection__id` int(10) unsigned DEFAULT NULL COMMENT 'Connection to target database schema object',
  `isys_cats_database_links_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL COMMENT 'Implicit relation: database link',
  `isys_cats_database_links_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_database_links_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_database_links_list__target_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_database_links_list__owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_database_links_list__public` int(1) unsigned DEFAULT NULL COMMENT '0/1',
  `isys_cats_database_links_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_database_links_list__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_database_links_list__id`),
  KEY `isys_cats_database_links_list__isys_obj__id` (`isys_cats_database_links_list__isys_obj__id`),
  KEY `isys_cats_database_links_list__isys_connection__id` (`isys_cats_database_links_list__isys_connection__id`),
  KEY `isys_cats_database_links_list__isys_catg_relation_list__id` (`isys_cats_database_links_list__isys_catg_relation_list__id`),
  KEY `isys_cats_database_links_list__status` (`isys_cats_database_links_list__status`),
  CONSTRAINT `isys_cats_database_links_list_ibfk_1` FOREIGN KEY (`isys_cats_database_links_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_database_links_list_ibfk_2` FOREIGN KEY (`isys_cats_database_links_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_database_links_list_ibfk_3` FOREIGN KEY (`isys_cats_database_links_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_database_objects_list` (
  `isys_cats_database_objects_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_database_objects_list__isys_database_objects__id` int(10) unsigned DEFAULT NULL COMMENT 'Object description',
  `isys_cats_database_objects_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_database_objects_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_database_objects_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_database_objects_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_cats_database_objects_list__id`),
  KEY `isys_cats_database_objects_list__isys_obj__id` (`isys_cats_database_objects_list__isys_obj__id`),
  KEY `isys_cats_database_objects_list__isys_database_objects__id` (`isys_cats_database_objects_list__isys_database_objects__id`),
  KEY `isys_cats_database_objects_list__status` (`isys_cats_database_objects_list__status`),
  CONSTRAINT `isys_cats_database_objects_list_ibfk_1` FOREIGN KEY (`isys_cats_database_objects_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_database_objects_list_ibfk_2` FOREIGN KEY (`isys_cats_database_objects_list__isys_database_objects__id`) REFERENCES `isys_database_objects` (`isys_database_objects__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_database_schema_list` (
  `isys_cats_database_schema_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_database_schema_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_database_schema_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_database_schema_list__isys_cats_db_instance_list__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_database_schema_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_database_schema_list__storage_engine` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_database_schema_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_database_schema_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_database_schema_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_database_schema_list__id`),
  KEY `isys_cats_database_schema_list__isys_obj__id` (`isys_cats_database_schema_list__isys_obj__id`),
  KEY `isys_cats_database_schema_list__isys_cats_db_instance_list__id` (`isys_cats_database_schema_list__isys_cats_db_instance_list__id`),
  KEY `isys_cats_database_schema_list__isys_connection__id` (`isys_cats_database_schema_list__isys_connection__id`),
  KEY `isys_cats_database_schema_list_ibfk_4` (`isys_cats_database_schema_list__isys_catg_relation_list__id`),
  CONSTRAINT `isys_cats_database_schema_list_ibfk_1` FOREIGN KEY (`isys_cats_database_schema_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_database_schema_list_ibfk_2` FOREIGN KEY (`isys_cats_database_schema_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_database_schema_list_ibfk_3` FOREIGN KEY (`isys_cats_database_schema_list__isys_cats_db_instance_list__id`) REFERENCES `isys_cats_database_instance_list` (`isys_cats_database_instance_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_database_schema_list_ibfk_4` FOREIGN KEY (`isys_cats_database_schema_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_dbms_list` (
  `isys_cats_dbms_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_dbms_list__isys_dbms__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_dbms_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_dbms_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_dbms_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_dbms_list__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_dbms_list__id`),
  KEY `isys_cats_dbms_list__isys_obj__id` (`isys_cats_dbms_list__isys_obj__id`),
  KEY `isys_cats_dbms_list_ibfk_2` (`isys_cats_dbms_list__isys_dbms__id`),
  CONSTRAINT `isys_cats_dbms_list_ibfk_1` FOREIGN KEY (`isys_cats_dbms_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_dbms_list_ibfk_2` FOREIGN KEY (`isys_cats_dbms_list__isys_dbms__id`) REFERENCES `isys_dbms` (`isys_dbms__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_emergency_plan_list` (
  `isys_cats_emergency_plan_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_emergency_plan_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_emergency_plan_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_emergency_plan_list__isys_unit_of_time__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_emergency_plan_list__practice_future_date` datetime DEFAULT NULL,
  `isys_cats_emergency_plan_list__practice_actual_date` datetime DEFAULT NULL,
  `isys_cats_emergency_plan_list__calc_time_need` int(10) unsigned DEFAULT NULL,
  `isys_cats_emergency_plan_list__property` int(10) unsigned DEFAULT NULL,
  `isys_cats_emergency_plan_list__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_emergency_plan_list__id`),
  KEY `isys_cats_emergency_plan_list_FKIndex1` (`isys_cats_emergency_plan_list__isys_unit_of_time__id`),
  KEY `isys_cats_emergency_plan_list__isys_obj__id` (`isys_cats_emergency_plan_list__isys_obj__id`),
  CONSTRAINT `isys_cats_emergency_plan_list_ibfk_1` FOREIGN KEY (`isys_cats_emergency_plan_list__isys_unit_of_time__id`) REFERENCES `isys_unit_of_time` (`isys_unit_of_time__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_cats_emergency_plan_list_ibfk_2` FOREIGN KEY (`isys_cats_emergency_plan_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_enclosure_list` (
  `isys_cats_enclosure_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_enclosure_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_enclosure_list__isys_pos_gps__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_enclosure_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_enclosure_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_enclosure_list__status` int(10) unsigned DEFAULT '0',
  `isys_cats_enclosure_list__slot_sorting` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_enclosure_list__vertical_slots_front` int(2) unsigned DEFAULT NULL,
  `isys_cats_enclosure_list__vertical_slots_rear` int(2) unsigned DEFAULT NULL,
  `isys_cats_enclosure_list__position_in_room` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_enclosure_list__id`),
  KEY `isys_cats_enclosure_FKIndex1` (`isys_cats_enclosure_list__isys_pos_gps__id`),
  KEY `isys_cats_enclosure_list__isys_obj__id` (`isys_cats_enclosure_list__isys_obj__id`),
  CONSTRAINT `isys_cats_enclosure_list_ibfk_1` FOREIGN KEY (`isys_cats_enclosure_list__isys_pos_gps__id`) REFERENCES `isys_pos_gps` (`isys_pos_gps__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_cats_enclosure_list_ibfk_2` FOREIGN KEY (`isys_cats_enclosure_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_eps_list` (
  `isys_cats_eps_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_eps_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_eps_list__isys_cats_eps_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_eps_list__fuel_tank` bigint(20) unsigned DEFAULT NULL,
  `isys_cats_eps_list__isys_volume_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_eps_list__warmup_time` bigint(20) unsigned DEFAULT NULL,
  `isys_cats_eps_list__warmup_time__isys_unit_of_time__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_eps_list__autonomy_time` bigint(20) unsigned DEFAULT NULL,
  `isys_cats_eps_list__autonomy_time__isys_unit_of_time__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_eps_list__status` int(10) unsigned NOT NULL,
  `isys_cats_eps_list__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_cats_eps_list__id`),
  KEY `isys_cats_eps_list__isys_cats_eps_type__id` (`isys_cats_eps_list__isys_cats_eps_type__id`),
  KEY `isys_cats_eps_list__isys_volume_unit__id` (`isys_cats_eps_list__isys_volume_unit__id`),
  KEY `isys_cats_eps_list__warmup_time__isys_unit_of_time__id` (`isys_cats_eps_list__warmup_time__isys_unit_of_time__id`),
  KEY `isys_cats_eps_list__autonomy_time__isys_unit_of_time__id` (`isys_cats_eps_list__autonomy_time__isys_unit_of_time__id`),
  KEY `isys_cats_eps_list__isys_obj__id` (`isys_cats_eps_list__isys_obj__id`),
  CONSTRAINT `isys_cats_eps_list_ibfk_1` FOREIGN KEY (`isys_cats_eps_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_eps_list_ibfk_3` FOREIGN KEY (`isys_cats_eps_list__isys_volume_unit__id`) REFERENCES `isys_volume_unit` (`isys_volume_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_eps_list_ibfk_4` FOREIGN KEY (`isys_cats_eps_list__warmup_time__isys_unit_of_time__id`) REFERENCES `isys_unit_of_time` (`isys_unit_of_time__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_eps_list_ibfk_5` FOREIGN KEY (`isys_cats_eps_list__autonomy_time__isys_unit_of_time__id`) REFERENCES `isys_unit_of_time` (`isys_unit_of_time__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_eps_list_ibfk_6` FOREIGN KEY (`isys_cats_eps_list__isys_cats_eps_type__id`) REFERENCES `isys_cats_eps_type` (`isys_cats_eps_type__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_eps_type` (
  `isys_cats_eps_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_eps_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_eps_type__description` text COLLATE utf8_unicode_ci,
  `isys_cats_eps_type__sort` int(10) unsigned DEFAULT '1',
  `isys_cats_eps_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_eps_type__property` int(10) unsigned DEFAULT '0',
  `isys_cats_eps_type__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_cats_eps_type__id`),
  KEY `isys_cats_eps_type__title` (`isys_cats_eps_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_cats_eps_type` VALUES (1,'LC__CMDB__CATS__EPS__DIESEL_GENERATOR','',1,'C__CATS__EPS__DIESEL_GENERATOR',0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_file_list` (
  `isys_cats_file_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_file_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_file_list__isys_file_version__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_file_list__isys_file_category__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_file_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_file_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_file_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_file_list__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_file_list__id`),
  KEY `isys_cats_file_list_FKIndex2` (`isys_cats_file_list__isys_file_category__id`),
  KEY `isys_cats_file_list_FKIndex3` (`isys_cats_file_list__isys_file_version__id`),
  KEY `isys_cats_file_list__isys_obj__id` (`isys_cats_file_list__isys_obj__id`),
  KEY `isys_cats_file_list__status` (`isys_cats_file_list__status`),
  CONSTRAINT `isys_cats_file_list_ibfk_2` FOREIGN KEY (`isys_cats_file_list__isys_file_category__id`) REFERENCES `isys_file_category` (`isys_file_category__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_cats_file_list_ibfk_7` FOREIGN KEY (`isys_cats_file_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_file_list_ibfk_8` FOREIGN KEY (`isys_cats_file_list__isys_file_version__id`) REFERENCES `isys_file_version` (`isys_file_version__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_group_list` (
  `isys_cats_group_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_group_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_group_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_group_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_group_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_group_list__property` int(10) unsigned DEFAULT NULL,
  `isys_cats_group_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_group_list__id`),
  KEY `isys_cats_group_list__isys_obj__id__FKIndex` (`isys_cats_group_list__isys_obj__id`),
  KEY `isys_cats_group_list__isys_connection__id` (`isys_cats_group_list__isys_connection__id`),
  KEY `isys_cats_group_list__isys_catg_relation_list__id` (`isys_cats_group_list__isys_catg_relation_list__id`),
  KEY `isys_cats_group_list__status` (`isys_cats_group_list__status`),
  CONSTRAINT `isys_cats_group_list__isys_catg_relation_list__id` FOREIGN KEY (`isys_cats_group_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_group_list__isys_obj__id__FK` FOREIGN KEY (`isys_cats_group_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE SET NULL,
  CONSTRAINT `isys_cats_group_list_ibfk_1` FOREIGN KEY (`isys_cats_group_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_group_type_list` (
  `isys_cats_group_type_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_group_type_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_group_type_list__type` tinyint(1) unsigned DEFAULT '0',
  `isys_cats_group_type_list__isys_report__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_group_type_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_group_type_list__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_cats_group_type_list__id`),
  UNIQUE KEY `isys_cats_group_type_list__object_rel` (`isys_cats_group_type_list__isys_obj__id`),
  CONSTRAINT `isys_cats_group_type_list__object_rel` FOREIGN KEY (`isys_cats_group_type_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_krypto_card_list` (
  `isys_cats_krypto_card_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_krypto_card_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_krypto_card_list__certificate_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_krypto_card_list__certgate_card_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_krypto_card_list__certificate_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_krypto_card_list__certificate_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_krypto_card_list__certificate_procedure` datetime DEFAULT NULL,
  `isys_cats_krypto_card_list__date_of_issue` datetime DEFAULT NULL,
  `isys_cats_krypto_card_list__imei_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_krypto_card_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_krypto_card_list__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_krypto_card_list__id`),
  KEY `isys_cats_krypto_card_list__isys_obj__id` (`isys_cats_krypto_card_list__isys_obj__id`),
  CONSTRAINT `isys_cats_krypto_card_list_ibfk_2` FOREIGN KEY (`isys_cats_krypto_card_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_layer2_net_2_iphelper` (
  `isys_cats_layer2_net_2_iphelper__id` int(11) NOT NULL AUTO_INCREMENT,
  `isys_cats_layer2_net_2_iphelper__isys_cats_layer2_net_list__id` int(11) NOT NULL,
  `isys_cats_layer2_net_2_iphelper__isys_layer2_net_iphelper_type` int(11) DEFAULT NULL,
  `isys_cats_layer2_net_2_iphelper__ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_cats_layer2_net_2_iphelper__id`),
  KEY `isys_cats_layer2_net_2_iphelper__isys_cats_layer2_net_list__id` (`isys_cats_layer2_net_2_iphelper__isys_cats_layer2_net_list__id`),
  KEY `isys_cats_layer2_net_2_iphelper__isys_layer2_net_iphelper_type` (`isys_cats_layer2_net_2_iphelper__isys_layer2_net_iphelper_type`),
  CONSTRAINT `isys_cats_layer2_net_2_iphelper_ibfk_1` FOREIGN KEY (`isys_cats_layer2_net_2_iphelper__isys_cats_layer2_net_list__id`) REFERENCES `isys_cats_layer2_net_list` (`isys_cats_layer2_net_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_layer2_net_2_iphelper_ibfk_2` FOREIGN KEY (`isys_cats_layer2_net_2_iphelper__isys_layer2_net_iphelper_type`) REFERENCES `isys_layer2_iphelper_type` (`isys_layer2_iphelper_type__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_layer2_net_2_layer3` (
  `isys_cats_layer2_net_list__id` int(10) NOT NULL,
  `isys_obj__id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`isys_cats_layer2_net_list__id`,`isys_obj__id`),
  KEY `isys_obj__id` (`isys_obj__id`),
  CONSTRAINT `isys_cats_layer2_net_2_layer3_ibfk_2` FOREIGN KEY (`isys_cats_layer2_net_list__id`) REFERENCES `isys_cats_layer2_net_list` (`isys_cats_layer2_net_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_layer2_net_2_layer3_ibfk_3` FOREIGN KEY (`isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_layer2_net_assigned_ports_list` (
  `isys_cats_layer2_net_assigned_ports_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_layer2_net_assigned_ports_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_port_list__id` int(10) unsigned NOT NULL,
  `isys_cats_layer2_net_assigned_ports_list__default` int(1) NOT NULL DEFAULT '0',
  `isys_cats_layer2_net_assigned_ports_list__status` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_cats_layer2_net_assigned_ports_list__id`),
  KEY `isys_cats_layer2_net_assigned_ports_list__isys_obj__id` (`isys_cats_layer2_net_assigned_ports_list__isys_obj__id`),
  KEY `isys_cats_layer2_net_assigned_ports_list_ibfk_2` (`isys_catg_port_list__id`),
  CONSTRAINT `isys_cats_layer2_net_assigned_ports_list_ibfk_1` FOREIGN KEY (`isys_cats_layer2_net_assigned_ports_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_layer2_net_assigned_ports_list_ibfk_2` FOREIGN KEY (`isys_catg_port_list__id`) REFERENCES `isys_catg_port_list` (`isys_catg_port_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_layer2_net_list` (
  `isys_cats_layer2_net_list__id` int(11) NOT NULL AUTO_INCREMENT,
  `isys_cats_layer2_net_list__ident` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_layer2_net_list__isys_layer2_net_type__id` int(11) DEFAULT NULL,
  `isys_cats_layer2_net_list__isys_layer2_net_subtype__id` int(11) DEFAULT NULL,
  `isys_cats_layer2_net_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_layer2_net_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_layer2_net_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_layer2_net_list__standard` tinyint(1) unsigned DEFAULT NULL,
  `isys_cats_layer2_net_list__parent` int(10) unsigned DEFAULT NULL COMMENT 'parent VLAN',
  `isys_cats_layer2_net_list__vrf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_layer2_net_list__vrf_capacity` bigint(20) unsigned DEFAULT NULL,
  `isys_cats_layer2_net_list__isys_wan_capacity_unit` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_layer2_net_list__id`),
  KEY `isys_cats_layer2_net_list__isys_layer2_net_type__id` (`isys_cats_layer2_net_list__isys_layer2_net_type__id`),
  KEY `isys_cats_layer2_net_list__isys_layer2_net_subtype__id` (`isys_cats_layer2_net_list__isys_layer2_net_subtype__id`),
  KEY `isys_cats_layer2_net_list__isys_obj__id` (`isys_cats_layer2_net_list__isys_obj__id`),
  KEY `isys_cats_layer2_net_list__isys_wan_capacity_unit` (`isys_cats_layer2_net_list__isys_wan_capacity_unit`),
  CONSTRAINT `isys_cats_layer2_net_list__isys_wan_capacity_unit` FOREIGN KEY (`isys_cats_layer2_net_list__isys_wan_capacity_unit`) REFERENCES `isys_wan_capacity_unit` (`isys_wan_capacity_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_layer2_net_list_ibfk_1` FOREIGN KEY (`isys_cats_layer2_net_list__isys_layer2_net_type__id`) REFERENCES `isys_layer2_net_type` (`isys_layer2_net_type__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_layer2_net_list_ibfk_2` FOREIGN KEY (`isys_cats_layer2_net_list__isys_layer2_net_subtype__id`) REFERENCES `isys_layer2_net_subtype` (`isys_layer2_net_subtype__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_layer2_net_list_ibfk_3` FOREIGN KEY (`isys_cats_layer2_net_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_lic_list` (
  `isys_cats_lic_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_lic_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_lic_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_lic_list__status` int(10) unsigned DEFAULT '2',
  `isys_cats_lic_list__property` int(10) unsigned DEFAULT '0',
  `isys_cats_lic_list__const` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_cats_lic_list__sort` int(10) DEFAULT NULL,
  `isys_cats_lic_list__key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_lic_list__serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_lic_list__type` int(10) unsigned DEFAULT NULL,
  `isys_cats_lic_list__amount` int(10) DEFAULT NULL,
  `isys_cats_lic_list__cost` float unsigned DEFAULT NULL,
  `isys_cats_lic_list__start` date DEFAULT NULL,
  `isys_cats_lic_list__expire` date DEFAULT NULL,
  `isys_cats_lic_list__active` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_cats_lic_list__id`),
  KEY `isys_cats_lic_list__isys_obj__id` (`isys_cats_lic_list__isys_obj__id`),
  KEY `isys_cats_lic_list__status` (`isys_cats_lic_list__status`),
  CONSTRAINT `isys_cats_lic_list_ibfk_1` FOREIGN KEY (`isys_cats_lic_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_mobile_phone_list` (
  `isys_cats_mobile_phone_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_mobile_phone_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_mobile_phone_list__imei_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_mobile_phone_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_mobile_phone_list__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_mobile_phone_list__id`),
  KEY `isys_cats_mobile_phone_list__isys_obj__id` (`isys_cats_mobile_phone_list__isys_obj__id`),
  CONSTRAINT `isys_cats_mobile_phone_list_ibfk_2` FOREIGN KEY (`isys_cats_mobile_phone_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_monitor_list` (
  `isys_cats_monitor_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_monitor_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_monitor_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_monitor_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_monitor_list__isys_depth_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_monitor_list__isys_monitor_resolution__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_monitor_list__isys_monitor_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_monitor_list__display` float DEFAULT NULL,
  `isys_cats_monitor_list__property` int(10) unsigned DEFAULT NULL,
  `isys_cats_monitor_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_monitor_list__pivot` tinyint(1) DEFAULT NULL,
  `isys_cats_monitor_list__speaker` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`isys_cats_monitor_list__id`),
  KEY `isys_cats_monitor_list_FKIndex1` (`isys_cats_monitor_list__isys_monitor_type__id`),
  KEY `isys_cats_monitor_list_FKIndex2` (`isys_cats_monitor_list__isys_monitor_resolution__id`),
  KEY `isys_cats_monitor_list_FKIndex3` (`isys_cats_monitor_list__isys_depth_unit__id`),
  KEY `isys_cats_monitor_list__isys_obj__id` (`isys_cats_monitor_list__isys_obj__id`),
  CONSTRAINT `isys_cats_monitor_list_ibfk_10` FOREIGN KEY (`isys_cats_monitor_list__isys_monitor_type__id`) REFERENCES `isys_monitor_type` (`isys_monitor_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_monitor_list_ibfk_11` FOREIGN KEY (`isys_cats_monitor_list__isys_depth_unit__id`) REFERENCES `isys_depth_unit` (`isys_depth_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_monitor_list_ibfk_4` FOREIGN KEY (`isys_cats_monitor_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_monitor_list_ibfk_9` FOREIGN KEY (`isys_cats_monitor_list__isys_monitor_resolution__id`) REFERENCES `isys_monitor_resolution` (`isys_monitor_resolution__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_net_dhcp_list` (
  `isys_cats_net_dhcp_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_net_dhcp_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_net_dhcp_list__isys_net_dhcp_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_net_dhcp_list__isys_net_dhcpv6_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_net_dhcp_list__range_from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_cats_net_dhcp_list__range_from_long` int(15) unsigned DEFAULT NULL,
  `isys_cats_net_dhcp_list__range_to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_cats_net_dhcp_list__range_to_long` int(15) unsigned DEFAULT NULL,
  `isys_cats_net_dhcp_list__status` int(10) unsigned NOT NULL,
  `isys_cats_net_dhcp_list__description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`isys_cats_net_dhcp_list__id`),
  KEY `isys_cats_net_dhcp_list__isys_obj__id` (`isys_cats_net_dhcp_list__isys_obj__id`),
  KEY `isys_cats_net_dhcp_list__isys_net_dhcp_type__id` (`isys_cats_net_dhcp_list__isys_net_dhcp_type__id`),
  KEY `isys_cats_net_dhcp_list__isys_net_dhcpv6_type__id` (`isys_cats_net_dhcp_list__isys_net_dhcpv6_type__id`),
  KEY `isys_cats_net_dhcp_list__status` (`isys_cats_net_dhcp_list__status`),
  CONSTRAINT `isys_cats_net_dhcp_list_ibfk_1` FOREIGN KEY (`isys_cats_net_dhcp_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_net_dhcp_list_ibfk_2` FOREIGN KEY (`isys_cats_net_dhcp_list__isys_net_dhcp_type__id`) REFERENCES `isys_net_dhcp_type` (`isys_net_dhcp_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_net_dhcp_list_ibfk_3` FOREIGN KEY (`isys_cats_net_dhcp_list__isys_net_dhcpv6_type__id`) REFERENCES `isys_net_dhcpv6_type` (`isys_net_dhcpv6_type__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_net_ip_addresses_list` (
  `isys_cats_net_ip_addresses_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_net_ip_addresses_list__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_cats_net_ip_addresses_list__ip_address_long` int(15) unsigned NOT NULL,
  `isys_cats_net_ip_addresses_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_net_ip_addresses_list__isys_ip_assignment__id` int(10) unsigned NOT NULL,
  `isys_cats_net_ip_addresses_list__status` int(10) NOT NULL,
  PRIMARY KEY (`isys_cats_net_ip_addresses_list__id`),
  KEY `isys_cats_net_ip_addresses_list__isys_obj__id` (`isys_cats_net_ip_addresses_list__isys_obj__id`),
  KEY `isys_cats_net_ip_addresses_list__title` (`isys_cats_net_ip_addresses_list__title`),
  CONSTRAINT `isys_cats_net_ip_addresses_list_ibfk_1` FOREIGN KEY (`isys_cats_net_ip_addresses_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_net_list` (
  `isys_cats_net_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_net_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_net_list__isys_net_dns_domain__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_net_list__isys_net_dns_server__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_net_list__isys_net_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_net_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_net_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_net_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_net_list__property` int(10) unsigned DEFAULT NULL,
  `isys_cats_net_list__address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_net_list__mask` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_net_list__dhcp` int(10) unsigned DEFAULT '0',
  `isys_cats_net_list__address_range_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_net_list__address_range_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_net_list__def_gw` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_net_list__cidr_suffix` int(2) unsigned DEFAULT NULL,
  `isys_cats_net_list__isys_catg_ip_list__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_net_list__address_long` int(15) unsigned DEFAULT NULL,
  `isys_cats_net_list__mask_long` int(15) unsigned DEFAULT NULL,
  `isys_cats_net_list__address_range_from_long` int(15) unsigned DEFAULT NULL,
  `isys_cats_net_list__address_range_to_long` int(15) unsigned DEFAULT NULL,
  `isys_cats_net_list__reverse_dns` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_cats_net_list__id`),
  KEY `isys_cats_net_list_FKIndex1` (`isys_cats_net_list__isys_net_type__id`),
  KEY `isys_cats_net_list_FKIndex2` (`isys_cats_net_list__isys_net_dns_server__id`),
  KEY `isys_cats_net_list_FKIndex3` (`isys_cats_net_list__isys_net_dns_domain__id`),
  KEY `isys_cats_net_list__isys_catg_ip_list__id` (`isys_cats_net_list__isys_catg_ip_list__id`),
  KEY `isys_cats_net_list__isys_obj__id` (`isys_cats_net_list__isys_obj__id`),
  CONSTRAINT `isys_cats_net_list__isys_obj__id` FOREIGN KEY (`isys_cats_net_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_net_list_ibfk_5` FOREIGN KEY (`isys_cats_net_list__isys_net_dns_server__id`) REFERENCES `isys_net_dns_server` (`isys_net_dns_server__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_net_list_ibfk_6` FOREIGN KEY (`isys_cats_net_list__isys_net_dns_domain__id`) REFERENCES `isys_net_dns_domain` (`isys_net_dns_domain__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_net_list_ibfk_7` FOREIGN KEY (`isys_cats_net_list__isys_net_type__id`) REFERENCES `isys_net_type` (`isys_net_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_net_list_ibfk_8` FOREIGN KEY (`isys_cats_net_list__isys_catg_ip_list__id`) REFERENCES `isys_catg_ip_list` (`isys_catg_ip_list__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_cats_net_list` VALUES (1,20,NULL,NULL,1,NULL,NULL,2,NULL,'0.0.0.0','0.0.0.0',0,'0.0.0.1','255.255.255.254',NULL,0,NULL,1,0,1,4294967294,NULL);
INSERT INTO `isys_cats_net_list` VALUES (2,21,NULL,NULL,1000,NULL,NULL,2,NULL,'0000:0000:0000:0000:0000:0000:0000:0000','0',0,'0000:0000:0000:0000:0000:0000:0000:0001','ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff',NULL,0,NULL,1,0,0,0,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_net_list_2_isys_catg_ip_list` (
  `isys_cats_net_list_2_isys_catg_ip_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_net_list__id` int(10) unsigned NOT NULL,
  `isys_catg_ip_list__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_cats_net_list_2_isys_catg_ip_list__id`),
  KEY `isys_cats_net_list__id` (`isys_cats_net_list__id`),
  KEY `isys_catg_ip_list__id` (`isys_catg_ip_list__id`),
  CONSTRAINT `isys_cats_net_list_2_isys_catg_ip_list_ibfk_1` FOREIGN KEY (`isys_cats_net_list__id`) REFERENCES `isys_cats_net_list` (`isys_cats_net_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_net_list_2_isys_catg_ip_list_ibfk_2` FOREIGN KEY (`isys_catg_ip_list__id`) REFERENCES `isys_catg_ip_list` (`isys_catg_ip_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_net_list_2_isys_net_dns_domain` (
  `isys_cats_net_list_2_isys_net_dns_domain__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_net_list__id` int(10) unsigned NOT NULL,
  `isys_net_dns_domain__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_cats_net_list_2_isys_net_dns_domain__id`),
  KEY `isys_cats_net_list__id` (`isys_cats_net_list__id`),
  KEY `isys_net_dns_domain__id` (`isys_net_dns_domain__id`),
  CONSTRAINT `isys_cats_net_list_2_isys_net_dns_domain_ibfk_1` FOREIGN KEY (`isys_cats_net_list__id`) REFERENCES `isys_cats_net_list` (`isys_cats_net_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_net_list_2_isys_net_dns_domain_ibfk_2` FOREIGN KEY (`isys_net_dns_domain__id`) REFERENCES `isys_net_dns_domain` (`isys_net_dns_domain__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_net_zone_list` (
  `isys_cats_net_zone_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_net_zone_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_net_zone_list__isys_obj__id__zone` int(10) unsigned DEFAULT NULL,
  `isys_cats_net_zone_list__range_from` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `isys_cats_net_zone_list__range_from_long` int(15) unsigned DEFAULT NULL,
  `isys_cats_net_zone_list__range_to` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `isys_cats_net_zone_list__range_to_long` int(15) unsigned DEFAULT NULL,
  `isys_cats_net_zone_list__status` int(10) unsigned NOT NULL,
  `isys_cats_net_zone_list__description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_cats_net_zone_list__id`),
  KEY `isys_cats_net_zone_list__isys_obj__id` (`isys_cats_net_zone_list__isys_obj__id`),
  KEY `isys_cats_net_zone_list__isys_obj__id__zone` (`isys_cats_net_zone_list__isys_obj__id__zone`),
  KEY `isys_cats_net_zone_list__status` (`isys_cats_net_zone_list__status`),
  CONSTRAINT `isys_cats_net_zone_list__isys_obj__id` FOREIGN KEY (`isys_cats_net_zone_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_net_zone_list__isys_obj__id__zone` FOREIGN KEY (`isys_cats_net_zone_list__isys_obj__id__zone`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_organization_list` (
  `isys_cats_organization_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_organization_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_organization_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_organization_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_organization_list__status` int(10) unsigned DEFAULT '1',
  `isys_cats_organization_list__property` int(10) unsigned DEFAULT '0',
  `isys_cats_organization_list__sort` int(10) unsigned DEFAULT NULL,
  `isys_cats_organization_list__street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_organization_list__zip_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_organization_list__city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_organization_list__country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_organization_list__telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_organization_list__fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_organization_list__website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_organization_list__headquarter` int(10) unsigned DEFAULT NULL,
  `isys_cats_organization_list__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_organization_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_organization_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_organization_list__id`),
  UNIQUE KEY `isys_cats_organization_list__object_rel` (`isys_cats_organization_list__isys_obj__id`),
  KEY `isys_cats_organization_list__isys_connection__id` (`isys_cats_organization_list__isys_connection__id`),
  KEY `isys_cats_organization_list__isys_catg_relation_list__id` (`isys_cats_organization_list__isys_catg_relation_list__id`),
  KEY `isys_cats_organization_list__status` (`isys_cats_organization_list__status`),
  CONSTRAINT `isys_cats_organization_list_ibfk_1` FOREIGN KEY (`isys_cats_organization_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_organization_list_ibfk_2` FOREIGN KEY (`isys_cats_organization_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_organization_list_ibfk_3` FOREIGN KEY (`isys_cats_organization_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_pdu_branch_list` (
  `isys_cats_pdu_branch_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_pdu_branch_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_pdu_branch_list__pdu_id` int(10) unsigned NOT NULL,
  `isys_cats_pdu_branch_list__branch_id` int(10) unsigned NOT NULL,
  `isys_cats_pdu_branch_list__receptables` int(10) unsigned NOT NULL,
  `isys_cats_pdu_branch_list__description` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_cats_pdu_branch_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_cats_pdu_branch_list__id`),
  KEY `isys_cats_pdu_branch_list__isys_obj__id` (`isys_cats_pdu_branch_list__isys_obj__id`),
  KEY `isys_cats_pdu_branch_list__status` (`isys_cats_pdu_branch_list__status`),
  CONSTRAINT `isys_cats_pdu_branch_list_ibfk_1` FOREIGN KEY (`isys_cats_pdu_branch_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_pdu_list` (
  `isys_cats_pdu_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_pdu_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_pdu_list__pdu_id` int(10) unsigned NOT NULL,
  `isys_cats_pdu_list__description` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_cats_pdu_list__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_cats_pdu_list__id`),
  KEY `isys_cats_pdu_list__isys_obj__id` (`isys_cats_pdu_list__isys_obj__id`),
  CONSTRAINT `isys_cats_pdu_list_ibfk_1` FOREIGN KEY (`isys_cats_pdu_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_person_group_list` (
  `isys_cats_person_group_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_person_group_list__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `isys_cats_person_group_list__ldap_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_cats_person_group_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_person_group_list__email_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_group_list__phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_group_list__right_group` int(10) unsigned DEFAULT '0',
  `isys_cats_person_group_list__status` int(10) unsigned DEFAULT '1',
  `isys_cats_person_group_list__sort` int(10) unsigned DEFAULT '5',
  `isys_cats_person_group_list__property` int(10) unsigned DEFAULT '0',
  `isys_cats_person_group_list__isys_obj__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_cats_person_group_list__id`),
  KEY `isys_cats_person_group_list__isys_obj__id` (`isys_cats_person_group_list__isys_obj__id`),
  CONSTRAINT `isys_cats_person_group_list_ibfk_1` FOREIGN KEY (`isys_cats_person_group_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_cats_person_group_list` VALUES (1,'Reader','Reader','Reader','','',1,2,11,0,10);
INSERT INTO `isys_cats_person_group_list` VALUES (2,'Editor','Editor','Editor','','',1,2,12,0,11);
INSERT INTO `isys_cats_person_group_list` VALUES (3,'Author','Author','Author','','',1,2,13,0,12);
INSERT INTO `isys_cats_person_group_list` VALUES (4,'Archivar','Archivar','Archivar','','',1,2,14,0,13);
INSERT INTO `isys_cats_person_group_list` VALUES (5,'Admin','Admin','Admin','','',1,2,15,0,14);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_person_list` (
  `isys_cats_person_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_person_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_person_list__isys_ldap__id` int(10) DEFAULT NULL,
  `isys_cats_person_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__ldap_dn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_cats_person_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_person_list__sort` int(10) unsigned DEFAULT '5',
  `isys_cats_person_list__const` int(10) unsigned DEFAULT NULL,
  `isys_cats_person_list__personnel_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_cats_person_list__user_pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__mail_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__phone_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__phone_mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__phone_home` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__academic_degree` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__function` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__service_designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__zip_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__status` int(10) unsigned DEFAULT '2',
  `isys_cats_person_list__property` int(10) unsigned DEFAULT '0',
  `isys_cats_person_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_person_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_person_list__pager` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__salutation` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__last_login` datetime DEFAULT NULL,
  `isys_cats_person_list__custom1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__custom2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__custom3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__custom4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__custom5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__custom6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__custom7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_person_list__custom8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_cats_person_list__id`),
  KEY `isys_cats_person_list__isys_ldap__id` (`isys_cats_person_list__isys_ldap__id`),
  KEY `isys_cats_person_list__isys_obj__id` (`isys_cats_person_list__isys_obj__id`),
  KEY `isys_cats_person_list__isys_obj__id__organisation` (`isys_cats_person_list__isys_connection__id`),
  KEY `isys_cats_person_list__isys_catg_relation_list__id` (`isys_cats_person_list__isys_catg_relation_list__id`),
  CONSTRAINT `isys_cats_person_list_ibfk_1` FOREIGN KEY (`isys_cats_person_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_person_list_ibfk_3` FOREIGN KEY (`isys_cats_person_list__isys_ldap__id`) REFERENCES `isys_ldap` (`isys_ldap__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_person_list_ibfk_4` FOREIGN KEY (`isys_cats_person_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_person_list_ibfk_5` FOREIGN KEY (`isys_cats_person_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_cats_person_list` VALUES (1,1,NULL,'guest','','',5,NULL,'','084e0343a0486ff05530df6c705c8bb4','','guest','',NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,2,0,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `isys_cats_person_list` VALUES (2,2,NULL,'reader','','',5,NULL,'','1de9b0a30075ae8c303eb420c103c320','','reader','',NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,2,0,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `isys_cats_person_list` VALUES (3,3,NULL,'editor','','',5,NULL,'','5aee9dbd2a188839105073571bee1b1f','','editor','',NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,2,0,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `isys_cats_person_list` VALUES (4,4,NULL,'author','','',5,NULL,'','02bd92faa38aaa6cc0ea75e59937a1ef','','author','',NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,2,0,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `isys_cats_person_list` VALUES (5,5,NULL,'archivar','','',5,NULL,'','4baf8329be21a4ad4f4401295cc130a9','','archivar','',NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,2,0,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `isys_cats_person_list` VALUES (6,6,NULL,'admin','','',5,NULL,'','21232f297a57a5a743894a0e4a801fc3','','admin','',NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,2,0,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `isys_cats_person_list` VALUES (7,7,NULL,'systemapi','','',5,NULL,'','','System','Api','',NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,2,0,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_prt_emulation` (
  `isys_cats_prt_emulation__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_prt_emulation__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_prt_emulation__description` text COLLATE utf8_unicode_ci,
  `isys_cats_prt_emulation__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_prt_emulation__sort` int(10) unsigned DEFAULT '5',
  `isys_cats_prt_emulation__property` int(10) unsigned DEFAULT '0',
  `isys_cats_prt_emulation__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_cats_prt_emulation__id`),
  KEY `isys_cats_prt_emulation__title` (`isys_cats_prt_emulation__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_cats_prt_emulation` VALUES (1,'LC__UNIVERSAL__OTHER',NULL,'C__CATS_PRT_EMULATION__OTHER',10,0,2);
INSERT INTO `isys_cats_prt_emulation` VALUES (2,'PCL',NULL,'C__CATS_PRT_EMULATION__PCL',30,0,2);
INSERT INTO `isys_cats_prt_emulation` VALUES (3,'PS','Postscript','C__CATS_PRT_EMULATION__PS',20,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_prt_list` (
  `isys_cats_prt_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_prt_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_prt_list__isys_cats_prt_emulation__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_prt_list__isys_cats_prt_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_prt_list__isys_cats_prt_paper__id` int(10) unsigned DEFAULT NULL COMMENT 'Paper format',
  `isys_cats_prt_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_prt_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_prt_list__isduplex` int(10) unsigned DEFAULT NULL,
  `isys_cats_prt_list__iscolor` int(10) unsigned DEFAULT NULL,
  `isys_cats_prt_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_prt_list__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_prt_list__id`),
  KEY `isys_cats_prt_list_FKIndex1` (`isys_cats_prt_list__isys_cats_prt_type__id`),
  KEY `isys_cats_prt_list_FKIndex2` (`isys_cats_prt_list__isys_cats_prt_emulation__id`),
  KEY `isys_cats_prt_list__isys_cats_prt_type__id` (`isys_cats_prt_list__isys_cats_prt_paper__id`),
  KEY `isys_cats_prt_list__isys_obj__id` (`isys_cats_prt_list__isys_obj__id`),
  CONSTRAINT `isys_cats_prt_list_ibfk_10` FOREIGN KEY (`isys_cats_prt_list__isys_cats_prt_paper__id`) REFERENCES `isys_cats_prt_paper` (`isys_cats_prt_paper__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_prt_list_ibfk_4` FOREIGN KEY (`isys_cats_prt_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_prt_list_ibfk_8` FOREIGN KEY (`isys_cats_prt_list__isys_cats_prt_emulation__id`) REFERENCES `isys_cats_prt_emulation` (`isys_cats_prt_emulation__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_prt_list_ibfk_9` FOREIGN KEY (`isys_cats_prt_list__isys_cats_prt_type__id`) REFERENCES `isys_cats_prt_type` (`isys_cats_prt_type__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_prt_paper` (
  `isys_cats_prt_paper__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_prt_paper__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_prt_paper__description` text COLLATE utf8_unicode_ci,
  `isys_cats_prt_paper__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_prt_paper__sort` int(10) unsigned DEFAULT NULL,
  `isys_cats_prt_paper__property` int(10) unsigned DEFAULT NULL,
  `isys_cats_prt_paper__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_cats_prt_paper__id`),
  KEY `isys_cats_prt_paper__title` (`isys_cats_prt_paper__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Paper formats for printers';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_prt_type` (
  `isys_cats_prt_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_prt_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_prt_type__description` text COLLATE utf8_unicode_ci,
  `isys_cats_prt_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_prt_type__sort` int(10) unsigned DEFAULT '5',
  `isys_cats_prt_type__property` int(10) unsigned DEFAULT '0',
  `isys_cats_prt_type__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_cats_prt_type__id`),
  KEY `isys_cats_prt_type__title` (`isys_cats_prt_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_cats_prt_type` VALUES (1,'LC__CATS_PRT_TYPE__INK','Tinte / Ink','C__CATS_PRT_TYPE__INK',30,0,2);
INSERT INTO `isys_cats_prt_type` VALUES (2,'Laser','Laser ','C__CATS_PRT_TYPE__LASER',20,0,2);
INSERT INTO `isys_cats_prt_type` VALUES (3,'Thermo','Thermo','C__CATS_PRT_TYPE__THERMO',40,0,2);
INSERT INTO `isys_cats_prt_type` VALUES (4,'Plotter','Plotter','C__CATS_PRT_TYPE__PLOTTER',50,0,2);
INSERT INTO `isys_cats_prt_type` VALUES (5,'LC__UNIVERSAL__OTHER','Andere','C__CATS_PRT_TYPE__OTHER',10,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_relpool_list` (
  `isys_cats_relpool_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_relpool_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_relpool_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_relpool_list__threshold` int(10) unsigned DEFAULT NULL,
  `isys_cats_relpool_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_relpool_list__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_relpool_list__id`),
  KEY `isys_cats_relpool_list__isys_obj__id` (`isys_cats_relpool_list__isys_obj__id`),
  CONSTRAINT `isys_cats_relpool_list_ibfk_1` FOREIGN KEY (`isys_cats_relpool_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_relpool_list_2_isys_obj` (
  `isys_cats_relpool_list__id` int(10) unsigned NOT NULL,
  `isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_relpool_list_2_isys_obj__status` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_cats_relpool_list__id`,`isys_obj__id`),
  KEY `isys_cats_relpool_list_2_isys_obj_ibfk_2` (`isys_obj__id`),
  CONSTRAINT `isys_cats_relpool_list_2_isys_obj_ibfk_1` FOREIGN KEY (`isys_cats_relpool_list__id`) REFERENCES `isys_cats_relpool_list` (`isys_cats_relpool_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_relpool_list_2_isys_obj_ibfk_2` FOREIGN KEY (`isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_replication_list` (
  `isys_cats_replication_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_replication_list__isys_replication_mechanism__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_replication_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_replication_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_replication_list__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_cats_replication_list__id`),
  KEY `isys_cats_replication_list__isys_obj__id` (`isys_cats_replication_list__isys_obj__id`),
  KEY `isys_cats_replication_list__isys_replication_mechanism__id` (`isys_cats_replication_list__isys_replication_mechanism__id`),
  CONSTRAINT `isys_cats_replication_list_ibfk_1` FOREIGN KEY (`isys_cats_replication_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_replication_list_ibfk_2` FOREIGN KEY (`isys_cats_replication_list__isys_replication_mechanism__id`) REFERENCES `isys_replication_mechanism` (`isys_replication_mechanism__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_replication_partner_list` (
  `isys_cats_replication_partner_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_replication_partner_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cats_replication_partner_list__isys_connection__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_replication_partner_list__isys_replication_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_replication_partner_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_replication_partner_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_replication_partner_list__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_replication_partner_list__id`),
  KEY `isys_cats_replication_partner_list__isys_obj__id` (`isys_cats_replication_partner_list__isys_obj__id`),
  KEY `isys_cats_replication_partner_list__isys_connection__id` (`isys_cats_replication_partner_list__isys_connection__id`),
  KEY `isys_cats_replication_partner_list__isys_catg_relation_list__id` (`isys_cats_replication_partner_list__isys_catg_relation_list__id`),
  KEY `isys_cats_replication_partner_list_ibfk_3` (`isys_cats_replication_partner_list__isys_replication_type__id`),
  KEY `isys_cats_replication_partner_list__status` (`isys_cats_replication_partner_list__status`),
  CONSTRAINT `isys_cats_replication_partner_list_ibfk_1` FOREIGN KEY (`isys_cats_replication_partner_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_replication_partner_list_ibfk_2` FOREIGN KEY (`isys_cats_replication_partner_list__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_replication_partner_list_ibfk_3` FOREIGN KEY (`isys_cats_replication_partner_list__isys_replication_type__id`) REFERENCES `isys_replication_type` (`isys_replication_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_replication_partner_list_ibfk_4` FOREIGN KEY (`isys_cats_replication_partner_list__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_room_list` (
  `isys_cats_room_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_room_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_room_list__isys_room_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_room_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_room_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_room_list__number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_room_list__floor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_room_list__sort` int(10) unsigned DEFAULT NULL,
  `isys_cats_room_list__status` int(10) unsigned DEFAULT '0',
  `isys_cats_room_list__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_cats_room_list__id`),
  KEY `isys_cats_room_list_FKIndex1` (`isys_cats_room_list__isys_room_type__id`),
  KEY `isys_cats_room_list__isys_obj__id` (`isys_cats_room_list__isys_obj__id`),
  CONSTRAINT `isys_cats_room_list_ibfk_1` FOREIGN KEY (`isys_cats_room_list__isys_room_type__id`) REFERENCES `isys_room_type` (`isys_room_type__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_cats_room_list_ibfk_2` FOREIGN KEY (`isys_cats_room_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_router_list` (
  `isys_cats_router_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_router_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_router_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_router_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_router_list__property` int(10) unsigned DEFAULT NULL,
  `isys_cats_router_list__routing_protocol` int(10) unsigned DEFAULT '1',
  `isys_cats_router_list__isys_catg_ip_list__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_router_list__id`),
  KEY `isys_cats_router_list__isys_obj__id` (`isys_cats_router_list__isys_obj__id`),
  KEY `isys_cats_router_list__status` (`isys_cats_router_list__status`),
  CONSTRAINT `isys_cats_router_list_ibfk_1` FOREIGN KEY (`isys_cats_router_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_san_list` (
  `isys_cats_san_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_san_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_san_list__isys_memory_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_san_list__isys_stor_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_san_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_san_list__capacity` double DEFAULT NULL,
  `isys_cats_san_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_san_list__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_san_list__id`),
  KEY `isys_cats_san_list_FKIndex1` (`isys_cats_san_list__isys_stor_unit__id`),
  KEY `isys_cats_san_list__isys_memory_unit__id` (`isys_cats_san_list__isys_memory_unit__id`),
  KEY `isys_cats_san_list__isys_obj__id` (`isys_cats_san_list__isys_obj__id`),
  CONSTRAINT `isys_cats_san_list_ibfk_1` FOREIGN KEY (`isys_cats_san_list__isys_stor_unit__id`) REFERENCES `isys_stor_unit` (`isys_stor_unit__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_cats_san_list_ibfk_2` FOREIGN KEY (`isys_cats_san_list__isys_memory_unit__id`) REFERENCES `isys_memory_unit` (`isys_memory_unit__id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `isys_cats_san_list_ibfk_3` FOREIGN KEY (`isys_cats_san_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_san_zoning_list` (
  `isys_cats_san_zoning_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_san_zoning_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_san_zoning_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_san_zoning_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_san_zoning_list__status` int(10) unsigned DEFAULT '1',
  `isys_cats_san_zoning_list__property` int(10) unsigned DEFAULT '0',
  `isys_cats_san_zoning_list__sort` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_san_zoning_list__id`),
  KEY `isys_cats_san_zoning_list_FKIndex1` (`isys_cats_san_zoning_list__isys_obj__id`),
  CONSTRAINT `isys_cats_san_zoning_list_ibfk_1` FOREIGN KEY (`isys_cats_san_zoning_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_service_list` (
  `isys_cats_service_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_service_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_service_list__isys_service_manufacturer__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_service_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_service_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_service_list__release` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_service_list__specification` text COLLATE utf8_unicode_ci,
  `isys_cats_service_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_service_list__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_service_list__id`),
  KEY `isys_cats_service_list_FKIndex1` (`isys_cats_service_list__isys_service_manufacturer__id`),
  KEY `isys_cats_service_list__isys_obj__id` (`isys_cats_service_list__isys_obj__id`),
  CONSTRAINT `isys_cats_service_list_ibfk_2` FOREIGN KEY (`isys_cats_service_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_service_list_ibfk_3` FOREIGN KEY (`isys_cats_service_list__isys_service_manufacturer__id`) REFERENCES `isys_service_manufacturer` (`isys_service_manufacturer__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_switch_fc_list` (
  `isys_cats_switch_fc_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_switch_fc_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_switch_fc_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_switch_fc_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_switch_fc_list__unit_active` int(10) unsigned DEFAULT '0',
  `isys_cats_switch_fc_list__status` int(10) unsigned DEFAULT '2',
  `isys_cats_switch_fc_list__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_cats_switch_fc_list__id`),
  KEY `isys_cats_switch_fc_list__isys_obj__id` (`isys_cats_switch_fc_list__isys_obj__id`),
  CONSTRAINT `isys_cats_switch_fc_list_ibfk_1` FOREIGN KEY (`isys_cats_switch_fc_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_switch_net_list` (
  `isys_cats_switch_net_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_switch_net_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_switch_net_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_switch_net_list__isys_vlan_management_protocol__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_switch_net_list__isys_switch_role__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_switch_net_list__isys_switch_spanning_tree__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_switch_net_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_switch_net_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_switch_net_list__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_switch_net_list__id`),
  KEY `isys_cats_switch_net_list__isys_obj__id` (`isys_cats_switch_net_list__isys_obj__id`),
  CONSTRAINT `isys_cats_switch_net_list_ibfk_1` FOREIGN KEY (`isys_cats_switch_net_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_tapelib_list` (
  `isys_cats_tapelib_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_tapelib_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_tapelib_list__isys_tapelib_type__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_cats_tapelib_list__capacity` int(10) unsigned DEFAULT NULL,
  `isys_cats_tapelib_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_tapelib_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_tapelib_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_tapelib_list__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_tapelib_list__id`),
  KEY `isys_cats_tapelib_FKIndex1` (`isys_cats_tapelib_list__isys_tapelib_type__id`),
  KEY `isys_cats_tapelib_list__isys_obj__id` (`isys_cats_tapelib_list__isys_obj__id`),
  CONSTRAINT `isys_cats_tapelib_list_ibfk_1` FOREIGN KEY (`isys_cats_tapelib_list__isys_tapelib_type__id`) REFERENCES `isys_tapelib_type` (`isys_tapelib_type__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_cats_tapelib_list_ibfk_2` FOREIGN KEY (`isys_cats_tapelib_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_ups_list` (
  `isys_cats_ups_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_ups_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_ups_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_ups_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_ups_list__property` int(10) DEFAULT NULL,
  `isys_cats_ups_list__status` int(10) DEFAULT NULL,
  `isys_cats_ups_list__isys_ups_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_ups_list__isys_ups_battery_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_ups_list__battery_amount` int(10) unsigned DEFAULT NULL,
  `isys_cats_ups_list__charge_time` int(10) unsigned DEFAULT NULL,
  `isys_cats_ups_list__autonomy_time` int(10) unsigned DEFAULT NULL,
  `isys_cats_ups_list__charge_time__isys_unit_of_time__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_ups_list__autonomy_time__isys_unit_of_time__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_ups_list__id`),
  KEY `isys_cats_ups_list__isys_obj__id` (`isys_cats_ups_list__isys_obj__id`),
  CONSTRAINT `isys_cats_ups_list_ibfk_1` FOREIGN KEY (`isys_cats_ups_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_virtual` (
  `isys_cats_virtual__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_virtual__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_virtual__description` text COLLATE utf8_unicode_ci,
  `isys_cats_virtual__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_virtual__property` int(10) unsigned DEFAULT NULL,
  `isys_cats_virtual__isys_obj__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_virtual__id`),
  KEY `isys_cats_virtual__isys_obj__id` (`isys_cats_virtual__isys_obj__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_virtual_list` (
  `isys_cats_virtual_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_virtual_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_virtual_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_virtual_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_virtual_list__property` int(10) unsigned DEFAULT NULL,
  `isys_cats_virtual_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_virtual_list__id`),
  KEY `isys_cats_virtual_list__isys_obj__id` (`isys_cats_virtual_list__isys_obj__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_wan_list` (
  `isys_cats_wan_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_wan_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_wan_list__isys_wan_capacity_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_wan_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_wan_list__isys_wan_type__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_wan_list__isys_wan_role__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_wan_list__capacity` double unsigned DEFAULT NULL,
  `isys_cats_wan_list__status` int(10) unsigned DEFAULT NULL,
  `isys_cats_wan_list__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_wan_list__id`),
  KEY `isys_cats_wan_list_FKIndex2` (`isys_cats_wan_list__isys_wan_role__id`),
  KEY `isys_cats_wan_list_FKIndex3` (`isys_cats_wan_list__isys_wan_type__id`),
  KEY `isys_cats_wan_list__isys_wan_capacity_unit__id` (`isys_cats_wan_list__isys_wan_capacity_unit__id`),
  KEY `isys_cats_wan_list__isys_obj__id` (`isys_cats_wan_list__isys_obj__id`),
  CONSTRAINT `isys_cats_wan_list_ibfk_4` FOREIGN KEY (`isys_cats_wan_list__isys_wan_capacity_unit__id`) REFERENCES `isys_wan_capacity_unit` (`isys_wan_capacity_unit__id`) ON DELETE SET NULL,
  CONSTRAINT `isys_cats_wan_list_ibfk_5` FOREIGN KEY (`isys_cats_wan_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_wan_list_ibfk_6` FOREIGN KEY (`isys_cats_wan_list__isys_wan_type__id`) REFERENCES `isys_wan_type` (`isys_wan_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_wan_list_ibfk_7` FOREIGN KEY (`isys_cats_wan_list__isys_wan_role__id`) REFERENCES `isys_wan_role` (`isys_wan_role__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_ws_net_type_list` (
  `isys_cats_ws_net_type_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_ws_net_type_list__isys_net_type_title__id` int(10) unsigned DEFAULT NULL,
  `isys_cats_ws_net_type_list__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cats_ws_net_type_list__description` text COLLATE utf8_unicode_ci,
  `isys_cats_ws_net_type_list__status` int(10) unsigned DEFAULT '2',
  `isys_cats_ws_net_type_list__property` int(10) unsigned DEFAULT '0',
  `isys_cats_ws_net_type_list__isys_obj__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cats_ws_net_type_list__id`),
  KEY `isys_cats_ws_net_type_list__isys_net_type_title__id` (`isys_cats_ws_net_type_list__isys_net_type_title__id`),
  KEY `isys_cats_ws_net_type_list__isys_obj__id` (`isys_cats_ws_net_type_list__isys_obj__id`),
  KEY `isys_cats_ws_net_type_list__status` (`isys_cats_ws_net_type_list__status`),
  CONSTRAINT `isys_cats_ws_net_type_list_ibfk_1` FOREIGN KEY (`isys_cats_ws_net_type_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_ws_net_type_list_ibfk_2` FOREIGN KEY (`isys_cats_ws_net_type_list__isys_net_type_title__id`) REFERENCES `isys_net_type_title` (`isys_net_type_title__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cats_ws_net_type_list_2_isys_obj` (
  `isys_cats_ws_net_type_list_2_isys_obj__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cats_ws_net_type_list__id` int(10) unsigned NOT NULL,
  `isys_obj__id` int(10) unsigned NOT NULL,
  `isys_catg_relation_list__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_cats_ws_net_type_list_2_isys_obj__id`),
  KEY `isys_cats_ws_net_type_list_2_isys_obj_ibfk_1` (`isys_cats_ws_net_type_list__id`),
  KEY `isys_cats_ws_net_type_list_2_isys_obj_ibfk_2` (`isys_obj__id`),
  CONSTRAINT `isys_cats_ws_net_type_list_2_isys_obj_ibfk_1` FOREIGN KEY (`isys_cats_ws_net_type_list__id`) REFERENCES `isys_cats_ws_net_type_list` (`isys_cats_ws_net_type_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cats_ws_net_type_list_2_isys_obj_ibfk_2` FOREIGN KEY (`isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_certificate_type` (
  `isys_certificate_type__id` int(11) NOT NULL AUTO_INCREMENT,
  `isys_certificate_type__title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `isys_certificate_type__const` varchar(255) CHARACTER SET utf8 NOT NULL,
  `isys_certificate_type__description` text CHARACTER SET utf8,
  `isys_certificate_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_certificate_type__status` int(11) unsigned DEFAULT '1',
  `isys_certificate_type__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_certificate_type__id`),
  KEY `isys_certificate_type__title` (`isys_certificate_type__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_chassis_connector_type` (
  `isys_chassis_connector_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_chassis_connector_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_chassis_connector_type__description` text COLLATE utf8_unicode_ci,
  `isys_chassis_connector_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_chassis_connector_type__property` int(10) DEFAULT NULL,
  `isys_chassis_connector_type__sort` int(10) DEFAULT NULL,
  `isys_chassis_connector_type__status` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_chassis_connector_type__id`),
  KEY `isys_chassis_connector_type__title` (`isys_chassis_connector_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_chassis_connector_type` VALUES (1,'Blade Bay',NULL,NULL,NULL,1,2);
INSERT INTO `isys_chassis_connector_type` VALUES (2,'Interconnect Bay',NULL,NULL,NULL,2,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_chassis_role` (
  `isys_chassis_role__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_chassis_role__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_chassis_role__description` text COLLATE utf8_unicode_ci,
  `isys_chassis_role__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_chassis_role__property` int(11) DEFAULT NULL,
  `isys_chassis_role__sort` int(11) DEFAULT NULL,
  `isys_chassis_role__status` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_chassis_role__id`),
  KEY `isys_chassis_role__title` (`isys_chassis_role__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_chassis_role` VALUES (1,'LC__CMDB__CATS__CHASSIS__ADMINISTRATIVE_UNIT',NULL,NULL,NULL,1,2);
INSERT INTO `isys_chassis_role` VALUES (2,'iLo',NULL,NULL,NULL,2,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_client_type` (
  `isys_client_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_client_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_client_type__description` text COLLATE utf8_unicode_ci,
  `isys_client_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_client_type__sort` int(10) unsigned DEFAULT '5',
  `isys_client_type__property` int(10) unsigned DEFAULT '0',
  `isys_client_type__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_client_type__id`),
  KEY `isys_client_type__title` (`isys_client_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_client_type` VALUES (1,'LC__UNIVERSAL__OTHER','Andere','C__CLIENT_TYPE__OTHER',5,0,2);
INSERT INTO `isys_client_type` VALUES (2,'PDA',NULL,'C__CLIENT_TYPE__PDA',5,0,2);
INSERT INTO `isys_client_type` VALUES (3,'PC',NULL,'C__CLIENT_TYPE__PC',5,0,2);
INSERT INTO `isys_client_type` VALUES (4,'Notebook',NULL,'C__CLIENT_TYPE__NOTEBOOK',5,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cluster_type` (
  `isys_cluster_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cluster_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cluster_type__description` text COLLATE utf8_unicode_ci,
  `isys_cluster_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cluster_type__sort` int(10) unsigned DEFAULT '0',
  `isys_cluster_type__status` int(10) unsigned DEFAULT '2',
  `isys_cluster_type__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_cluster_type__id`),
  KEY `isys_cluster_type__title` (`isys_cluster_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_cluster_type` VALUES (1,'LC__CLUSTER_TYPE__ACTIVE_PASSIVE','active/passive','C__CLUSTER_TYPE__ACTIVE_PASSIVE',1,2,0);
INSERT INTO `isys_cluster_type` VALUES (2,'LC__CLUSTER_TYPE__ACTIVE_ACTIVE','active/active','C__CLUSTER_TYPE__ACTIVE_ACTIVE',2,2,0);
INSERT INTO `isys_cluster_type` VALUES (3,'LC__CLUSTER_TYPE__HPC','HPC','C__CLUSTER_TYPE__HPC',3,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cmdb_status` (
  `isys_cmdb_status__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cmdb_status__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cmdb_status__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cmdb_status__sort` int(10) unsigned DEFAULT NULL,
  `isys_cmdb_status__status` int(10) unsigned DEFAULT '2',
  `isys_cmdb_status__property` int(10) unsigned DEFAULT NULL,
  `isys_cmdb_status__description` text COLLATE utf8_unicode_ci,
  `isys_cmdb_status__editable` tinyint(1) unsigned DEFAULT NULL,
  `isys_cmdb_status__color` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'FFFFFF',
  PRIMARY KEY (`isys_cmdb_status__id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_cmdb_status` VALUES (1,'LC__CMDB_STATUS__PLANNED','C__CMDB_STATUS__PLANNED',NULL,2,NULL,NULL,1,'EFAA43');
INSERT INTO `isys_cmdb_status` VALUES (2,'LC__CMDB_STATUS__ORDERED','C__CMDB_STATUS__ORDERED',NULL,2,NULL,NULL,1,'838683');
INSERT INTO `isys_cmdb_status` VALUES (3,'LC__CMDB_STATUS__DELIVERED','C__CMDB_STATUS__DELIVERED',NULL,2,NULL,NULL,1,'DDECD5');
INSERT INTO `isys_cmdb_status` VALUES (4,'LC__CMDB_STATUS__ASSEMBLED','C__CMDB_STATUS__ASSEMBLED',NULL,2,NULL,NULL,1,'C6DFB9');
INSERT INTO `isys_cmdb_status` VALUES (5,'LC__CMDB_STATUS__TESTED','C__CMDB_STATUS__TESTED',NULL,2,NULL,NULL,1,'95C47C');
INSERT INTO `isys_cmdb_status` VALUES (6,'LC__CMDB_STATUS__IN_OPERATION','C__CMDB_STATUS__IN_OPERATION',NULL,2,NULL,NULL,1,'33C20A');
INSERT INTO `isys_cmdb_status` VALUES (7,'LC__CMDB_STATUS__DEFECT','C__CMDB_STATUS__DEFECT',NULL,2,NULL,NULL,1,'BC0A19');
INSERT INTO `isys_cmdb_status` VALUES (8,'LC__CMDB_STATUS__UNDER_REPAIR','C__CMDB_STATUS__UNDER_REPAIR',NULL,2,NULL,NULL,1,'F990BE');
INSERT INTO `isys_cmdb_status` VALUES (9,'LC__CMDB_STATUS__DELIVERED_FROM_REPAIR','C__CMDB_STATUS__DELIVERED_FROM_REPAIR',NULL,2,NULL,NULL,1,'F3EF15');
INSERT INTO `isys_cmdb_status` VALUES (10,'LC__CMDB_STATUS__INOPERATIVE','C__CMDB_STATUS__INOPERATIVE',NULL,2,NULL,NULL,1,'FF0000');
INSERT INTO `isys_cmdb_status` VALUES (11,'LC__CMDB_STATUS__STORED','C__CMDB_STATUS__STORED',NULL,2,NULL,NULL,1,'A2BCFA');
INSERT INTO `isys_cmdb_status` VALUES (12,'LC__CMDB_STATUS__SCRAPPED','C__CMDB_STATUS__SCRAPPED',NULL,2,NULL,NULL,1,'082B9A');
INSERT INTO `isys_cmdb_status` VALUES (13,'LC__CMDB_STATUS__IDOIT_STATUS','C__CMDB_STATUS__IDOIT_STATUS',NULL,2,NULL,NULL,0,'AAAAAA');
INSERT INTO `isys_cmdb_status` VALUES (14,'LC__CMDB_STATUS__IDOIT_STATUS_TEMPLATE','C__CMDB_STATUS__IDOIT_STATUS_TEMPLATE',NULL,2,NULL,NULL,0,'CCCCCC');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cmdb_status_changes` (
  `isys_cmdb_status_changes__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cmdb_status_changes__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_cmdb_status_changes__isys_cmdb_status__id` int(10) unsigned NOT NULL,
  `isys_cmdb_status_changes__timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`isys_cmdb_status_changes__id`),
  KEY `isys_cmdb_status_changes_ibfk1` (`isys_cmdb_status_changes__isys_obj__id`),
  KEY `isys_cmdb_status_changes_ibfk2` (`isys_cmdb_status_changes__isys_cmdb_status__id`),
  CONSTRAINT `isys_cmdb_status_changes_ibfk1` FOREIGN KEY (`isys_cmdb_status_changes__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_cmdb_status_changes_ibfk2` FOREIGN KEY (`isys_cmdb_status_changes__isys_cmdb_status__id`) REFERENCES `isys_cmdb_status` (`isys_cmdb_status__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_cmdb_status_changes` VALUES (1,1,6,NOW());
INSERT INTO `isys_cmdb_status_changes` VALUES (2,4,6,NOW());
INSERT INTO `isys_cmdb_status_changes` VALUES (3,5,6,NOW());
INSERT INTO `isys_cmdb_status_changes` VALUES (4,6,6,NOW());
INSERT INTO `isys_cmdb_status_changes` VALUES (5,7,6,NOW());
INSERT INTO `isys_cmdb_status_changes` VALUES (6,8,6,NOW());
INSERT INTO `isys_cmdb_status_changes` VALUES (7,9,6,NOW());
INSERT INTO `isys_cmdb_status_changes` VALUES (8,10,6,NOW());
INSERT INTO `isys_cmdb_status_changes` VALUES (9,11,6,NOW());
INSERT INTO `isys_cmdb_status_changes` VALUES (10,12,6,NOW());
INSERT INTO `isys_cmdb_status_changes` VALUES (11,13,6,NOW());
INSERT INTO `isys_cmdb_status_changes` VALUES (12,14,6,NOW());
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_connection` (
  `isys_connection__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_connection__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_connection__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_connection__id`),
  KEY `isys_connection__isys_obj__id` (`isys_connection__isys_obj__id`),
  CONSTRAINT `isys_connection_ibfk_1` FOREIGN KEY (`isys_connection__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_connection` VALUES (1,NULL,NULL);
INSERT INTO `isys_connection` VALUES (2,NULL,NULL);
INSERT INTO `isys_connection` VALUES (3,NULL,NULL);
INSERT INTO `isys_connection` VALUES (4,NULL,NULL);
INSERT INTO `isys_connection` VALUES (5,NULL,NULL);
INSERT INTO `isys_connection` VALUES (6,NULL,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_connection_type` (
  `isys_connection_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_connection_type__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_connection_type__description` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_connection_type__const` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_connection_type__sort` int(10) NOT NULL,
  `isys_connection_type__status` int(10) NOT NULL,
  `isys_connection_type__property` int(10) NOT NULL,
  PRIMARY KEY (`isys_connection_type__id`),
  KEY `isys_connection_type__title` (`isys_connection_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_connection_type` VALUES (1,'RJ-45','','C__CONNECTION_TYPE__RJ45',1,2,0);
INSERT INTO `isys_connection_type` VALUES (2,'RJ-11','','C__CONNECTION_TYPE__RJ11',2,2,0);
INSERT INTO `isys_connection_type` VALUES (3,'MTRJ','','C__CONNECTION_TYPE__MTRJ',3,2,0);
INSERT INTO `isys_connection_type` VALUES (4,'LC__CATG__CONNECTOR__SCHUKO','','C__CONNECTION_TYPE__SCHUKO',4,2,0);
INSERT INTO `isys_connection_type` VALUES (5,'LC__CATG__CONNECTOR__IEC_POWER_CONNECTOR','','C__CONNECTION_TYPE__IEC_POWER_CONNECTOR',5,2,0);
INSERT INTO `isys_connection_type` VALUES (6,'LC','lucent connector','C__CONNECTION_TYPE__LC',6,2,0);
INSERT INTO `isys_connection_type` VALUES (7,'SC','subscriber connector','C__CONNECTION_TYPE__SC',7,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_contact` (
  `isys_contact__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_contact__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_contact__description` text COLLATE utf8_unicode_ci,
  `isys_contact__status` int(10) unsigned DEFAULT NULL,
  `isys_contact__property` int(10) unsigned DEFAULT NULL,
  `isys_contact__isys_connection__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_contact__id`),
  KEY `isys_contact__isys_connection__id` (`isys_contact__isys_connection__id`),
  CONSTRAINT `isys_contact_ibfk_2` FOREIGN KEY (`isys_contact__isys_connection__id`) REFERENCES `isys_connection` (`isys_connection__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_contact_2_isys_obj` (
  `isys_contact_2_isys_obj__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_contact_2_isys_obj__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_contact_2_isys_obj__isys_contact__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_contact_2_isys_obj__id`),
  KEY `isys_contact_2_isys_obj__isys_obj__id` (`isys_contact_2_isys_obj__isys_obj__id`),
  KEY `isys_contact_2_isys_obj__isys_contact__id` (`isys_contact_2_isys_obj__isys_contact__id`),
  CONSTRAINT `isys_contact_2_isys_obj__isys_contact__id__FK` FOREIGN KEY (`isys_contact_2_isys_obj__isys_contact__id`) REFERENCES `isys_contact` (`isys_contact__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_contact_2_isys_obj__isys_obj__id__FK` FOREIGN KEY (`isys_contact_2_isys_obj__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_contact_tag` (
  `isys_contact_tag__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_contact_tag__description` text COLLATE utf8_unicode_ci,
  `isys_contact_tag__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_contact_tag__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_contact_tag__sort` int(10) unsigned DEFAULT NULL,
  `isys_contact_tag__property` int(10) unsigned DEFAULT NULL,
  `isys_contact_tag__status` int(10) unsigned DEFAULT '2',
  `isys_contact_tag__isys_relation_type__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_contact_tag__id`),
  KEY `isys_contact_tag_ibfk_1` (`isys_contact_tag__isys_relation_type__id`),
  CONSTRAINT `isys_contact_tag_ibfk_1` FOREIGN KEY (`isys_contact_tag__isys_relation_type__id`) REFERENCES `isys_relation_type` (`isys_relation_type__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_contact_tag` VALUES (1,NULL,'Administrator','C__CONTACT_TYPE__ADMIN',1,NULL,2,4);
INSERT INTO `isys_contact_tag` VALUES (2,NULL,'LC__CMDB__LOGBOOK__USER','C__CONTACT_TYPE__USER',2,NULL,2,5);
INSERT INTO `isys_contact_tag` VALUES (3,NULL,'LC__CMDB__CONTACT__ROLE__SUPPLIER','C__CONTACT_TYPE__SUPPLIER',2,NULL,2,5);
INSERT INTO `isys_contact_tag` VALUES (4,NULL,'LC__CMDB__CONTACT__ROLE__JURISDICTION','C__CONTACT_TYPE__JURISDICTION',2,NULL,2,5);
INSERT INTO `isys_contact_tag` VALUES (5,NULL,'LC__CMDB__CONTACT__ROLE__CONTACT','C__CONTACT_TYPE__CONTACT',2,NULL,2,5);
INSERT INTO `isys_contact_tag` VALUES (6,NULL,'LC__CMDB__CONTACT__ROLE__CONTRACT_PARTNER','C__CONTACT_TYPE__CONTRACT_PARTNER',2,NULL,2,5);
INSERT INTO `isys_contact_tag` VALUES (7,NULL,'LC__CMDB__CONTACT__ROLE__NOTIFICATIONS','C__CONTACT_TYPE__NOTIFICATIONS',2,NULL,2,5);
INSERT INTO `isys_contact_tag` VALUES (9,NULL,'LC__CMDB__CONTACT__ROLE__SERVICE_MANAGER','C__CONTACT_TYPE__SERVICE_MANAGER',NULL,NULL,2,4);
INSERT INTO `isys_contact_tag` VALUES (10,NULL,'LC__CMDB__CONTACT__ROLE__MONITORING','C__CONTACT_TYPE__MONITORING',NULL,NULL,2,4);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_container` (
  `isys_container__id` int(10) NOT NULL AUTO_INCREMENT,
  `isys_container__isys_obj__id` int(10) unsigned NOT NULL COMMENT 'connection to object of object-type container',
  `isys_container__isys_obj__id__parent` int(10) unsigned DEFAULT NULL,
  `isys_container__isys_obj__id__child` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_container__id`),
  KEY `isys_container__isys_obj__id__parent` (`isys_container__isys_obj__id__parent`),
  KEY `isys_container__isys_obj__id__child` (`isys_container__isys_obj__id__child`),
  KEY `isys_container__isys_obj__id` (`isys_container__isys_obj__id`),
  CONSTRAINT `isys_container_ibfk_1` FOREIGN KEY (`isys_container__isys_obj__id__child`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE,
  CONSTRAINT `isys_container_ibfk_2` FOREIGN KEY (`isys_container__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE,
  CONSTRAINT `isys_container_ibfk_3` FOREIGN KEY (`isys_container__isys_obj__id__parent`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_contract_end_type` (
  `isys_contract_end_type__id` int(11) NOT NULL AUTO_INCREMENT,
  `isys_contract_end_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_contract_end_type__description` text COLLATE utf8_unicode_ci,
  `isys_contract_end_type__const` int(11) DEFAULT NULL,
  `isys_contract_end_type__property` int(11) DEFAULT NULL,
  `isys_contract_end_type__sort` int(11) DEFAULT NULL,
  `isys_contract_end_type__status` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_contract_end_type__id`),
  KEY `isys_contract_end_type__title` (`isys_contract_end_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_contract_end_type` VALUES (1,'LC__DIALOG__NOTICE',NULL,NULL,NULL,NULL,2);
INSERT INTO `isys_contract_end_type` VALUES (2,'LC__DIALOG__PERIOD',NULL,NULL,NULL,NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_contract_notice_period_type` (
  `isys_contract_notice_period_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_contract_notice_period_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_contract_notice_period_type__description` text COLLATE utf8_unicode_ci,
  `isys_contract_notice_period_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_contract_notice_period_type__property` int(10) DEFAULT NULL,
  `isys_contract_notice_period_type__sort` int(10) DEFAULT NULL,
  `isys_contract_notice_period_type__status` int(10) DEFAULT '2',
  PRIMARY KEY (`isys_contract_notice_period_type__id`),
  KEY `isys_contract_notice_period_type__title` (`isys_contract_notice_period_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_contract_notice_period_type` VALUES (1,'LC__CATG__CONTRACT__FROM_NOTICE_DATE',NULL,'C__CONTRACT__FROM_NOTICE_DATE',NULL,NULL,2);
INSERT INTO `isys_contract_notice_period_type` VALUES (2,'LC__CATG__CONTRACT__ON_CONTRACT_END',NULL,'C__CONTRACT__ON_CONTRACT_END',NULL,NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_contract_payment_period` (
  `isys_contract_payment_period__id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `isys_contract_payment_period__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_contract_payment_period__description` text COLLATE utf8_unicode_ci,
  `isys_contract_payment_period__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_contract_payment_period__sort` int(11) DEFAULT NULL,
  `isys_contract_payment_period__status` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_contract_payment_period__id`),
  KEY `isys_contract_payment_period__title` (`isys_contract_payment_period__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_contract_payment_period` VALUES (1,'LC__CONTRACT__PAYMENT_PERIOD__MONTHLY','Monthly payment','C__CONTRACT__PAYMENT_PERIOD__MONTHLY',0,2);
INSERT INTO `isys_contract_payment_period` VALUES (2,'LC__CONTRACT__PAYMENT_PERIOD__QUARTERLY','Quarterly payment','C__CONTRACT__PAYMENT_PERIOD__QUARTERLY',1,2);
INSERT INTO `isys_contract_payment_period` VALUES (3,'LC__CONTRACT__PAYMENT_PERIOD__HALF_YEARLY','Half-yearly payment','C__CONTRACT__PAYMENT_PERIOD__HALF_YEARLY',2,2);
INSERT INTO `isys_contract_payment_period` VALUES (4,'LC__CONTRACT__PAYMENT_PERIOD__YEARLY','Yearly payment','C__CONTRACT__PAYMENT_PERIOD__YEARLY',3,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_contract_reaction_rate` (
  `isys_contract_reaction_rate__id` int(11) NOT NULL AUTO_INCREMENT,
  `isys_contract_reaction_rate__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_contract_reaction_rate__description` text COLLATE utf8_unicode_ci,
  `isys_contract_reaction_rate__const` int(11) DEFAULT NULL,
  `isys_contract_reaction_rate__property` int(11) DEFAULT NULL,
  `isys_contract_reaction_rate__sort` int(11) DEFAULT NULL,
  `isys_contract_reaction_rate__status` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_contract_reaction_rate__id`),
  KEY `isys_contract_reaction_rate__title` (`isys_contract_reaction_rate__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_contract_reaction_rate` VALUES (1,'8x5x4','8x5x4',NULL,0,0,2);
INSERT INTO `isys_contract_reaction_rate` VALUES (2,'24x7x4','24x7x4',NULL,0,0,2);
INSERT INTO `isys_contract_reaction_rate` VALUES (3,'LC__UNIVERSAL__OTHER','Andere / Other',NULL,0,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_contract_status` (
  `isys_contract_status__id` int(11) NOT NULL AUTO_INCREMENT,
  `isys_contract_status__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_contract_status__description` text COLLATE utf8_unicode_ci,
  `isys_contract_status__const` int(11) DEFAULT NULL,
  `isys_contract_status__property` int(11) DEFAULT NULL,
  `isys_contract_status__sort` int(11) DEFAULT NULL,
  `isys_contract_status__status` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_contract_status__id`),
  KEY `isys_contract_status__title` (`isys_contract_status__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_contract_status` VALUES (1,'LC__CMDB__CATS__MAINTENANCE_STATUS_ACTIVE','',NULL,0,1,2);
INSERT INTO `isys_contract_status` VALUES (2,'LC__CMDB__CATS__MAINTENANCE_STATUS_TERMINATED','',NULL,0,2,2);
INSERT INTO `isys_contract_status` VALUES (3,'LC__CMDB__CATS__MAINTENANCE_STATUS_FINISHED','',NULL,0,3,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_contract_type` (
  `isys_contract_type__id` int(11) NOT NULL AUTO_INCREMENT,
  `isys_contract_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_contract_type__description` text COLLATE utf8_unicode_ci,
  `isys_contract_type__const` int(11) DEFAULT NULL,
  `isys_contract_type__property` int(11) DEFAULT NULL,
  `isys_contract_type__sort` int(11) DEFAULT NULL,
  `isys_contract_type__status` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_contract_type__id`),
  KEY `isys_contract_type__title` (`isys_contract_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_contract_type` VALUES (1,'LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_AGREEMENT_GUARANTEE','',NULL,0,1,2);
INSERT INTO `isys_contract_type` VALUES (2,'LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_MAINTENANCE','LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_MAINTENANCE',NULL,0,2,2);
INSERT INTO `isys_contract_type` VALUES (3,'LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_LEASING','LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_LEASING',NULL,0,3,2);
INSERT INTO `isys_contract_type` VALUES (4,'LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_LEASING_WITH_MAINTENANCE','LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_LEASING_WITH_MAINTENANCE',NULL,0,4,2);
INSERT INTO `isys_contract_type` VALUES (5,'LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_LICENSE','LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_LICENSE',NULL,0,5,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_controller_manufacturer` (
  `isys_controller_manufacturer__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_controller_manufacturer__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_controller_manufacturer__description` text COLLATE utf8_unicode_ci,
  `isys_controller_manufacturer__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_controller_manufacturer__sort` int(10) unsigned DEFAULT NULL,
  `isys_controller_manufacturer__status` int(10) unsigned DEFAULT NULL,
  `isys_controller_manufacturer__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_controller_manufacturer__id`),
  KEY `isys_controller_manufacturer__title` (`isys_controller_manufacturer__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_controller_model` (
  `isys_controller_model__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_controller_model__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_controller_model__description` text COLLATE utf8_unicode_ci,
  `isys_controller_model__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_controller_model__sort` int(10) unsigned DEFAULT '5',
  `isys_controller_model__status` int(10) unsigned DEFAULT '2',
  `isys_controller_model__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_controller_model__id`),
  KEY `isys_controller_model__title` (`isys_controller_model__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_controller_type` (
  `isys_controller_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_controller_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_controller_type__description` text COLLATE utf8_unicode_ci,
  `isys_controller_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_controller_type__software_emulation` int(10) unsigned DEFAULT '0',
  `isys_controller_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_controller_type__status` int(10) unsigned DEFAULT '2',
  `isys_controller_type__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_controller_type__id`),
  KEY `isys_controller_type__title` (`isys_controller_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_controller_type` VALUES (1,'SCSI','Short for small computer system interface','C__STOR_TYPE_STANDARD_CONTROLLER',0,10,2,0);
INSERT INTO `isys_controller_type` VALUES (2,'ATA','ATA','C__STOR_TYPE_STANDARD_CONTROLLER',0,20,2,0);
INSERT INTO `isys_controller_type` VALUES (3,'SATA',NULL,'C__STOR_TYPE_STANDARD_CONTROLLER',0,30,2,0);
INSERT INTO `isys_controller_type` VALUES (4,'PATA','PATA','C__STOR_TYPE_STANDARD_CONTROLLER',0,40,2,0);
INSERT INTO `isys_controller_type` VALUES (7,'USB','USB','C__STOR_TYPE_STANDARD_CONTROLLER',0,60,2,0);
INSERT INTO `isys_controller_type` VALUES (8,'SAS','SAS','C__STOR_TYPE_STANDARD_SAS',0,70,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_cp_contract_type` (
  `isys_cp_contract_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_cp_contract_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cp_contract_type__description` int(10) unsigned DEFAULT NULL,
  `isys_cp_contract_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_cp_contract_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_cp_contract_type__property` int(10) unsigned DEFAULT NULL,
  `isys_cp_contract_type__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_cp_contract_type__id`),
  KEY `isys_cp_contract_type__title` (`isys_cp_contract_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_cp_contract_type` VALUES (1,'LC__CMDB__MAIN_CONTRACT',NULL,'C__CMDB__MAIN_CONTRACT',NULL,NULL,2);
INSERT INTO `isys_cp_contract_type` VALUES (2,'LC__CMDB__ALTERNATIVE_CONTRACT',NULL,'C__CMDB__ALTERNATIVE_CONTRACT',NULL,NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_csv_profile` (
  `isys_csv_profile__id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `isys_csv_profile__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_csv_profile__data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_csv_profile__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_currency` (
  `isys_currency__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_currency__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_currency__description` text COLLATE utf8_unicode_ci,
  `isys_currency__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_currency__sort` int(10) unsigned DEFAULT NULL,
  `isys_currency__status` int(10) unsigned DEFAULT NULL,
  `isys_currency__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_currency__id`),
  KEY `isys_currency__title` (`isys_currency__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_currency` VALUES (1,'EUR;€','Euro','C__CMDB__CURRENCY__EURO',NULL,2,NULL);
INSERT INTO `isys_currency` VALUES (2,'USD;$','Dollar','C__CMDB__CURRENCY__DOLLAR',NULL,2,NULL);
INSERT INTO `isys_currency` VALUES (3,'GBP;£','Pfund','C__CMDB__CURRENCY__POUND',NULL,2,NULL);
INSERT INTO `isys_currency` VALUES (4,'CHF;Sfr.','Schweizer Franken','C__CMDB__CURRENCY__SWISS_FRANC',NULL,2,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_custom_properties` (
  `isys_custom_properties__id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `isys_custom_properties__isysgui_catg__id` int(10) unsigned DEFAULT NULL,
  `isys_custom_properties__isysgui_cats__id` int(10) unsigned DEFAULT NULL,
  `isys_custom_properties__property` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_custom_properties__data` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`isys_custom_properties__id`),
  KEY `isys_custom_properties__isysgui_catg__id` (`isys_custom_properties__isysgui_catg__id`),
  KEY `isys_custom_properties__isysgui_cats__id` (`isys_custom_properties__isysgui_cats__id`),
  CONSTRAINT `isys_custom_properties_ibfk_1` FOREIGN KEY (`isys_custom_properties__isysgui_catg__id`) REFERENCES `isys_obj_type_2_isysgui_catg_overview` (`isysgui_catg__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_custom_properties_ibfk_2` FOREIGN KEY (`isys_custom_properties__isysgui_cats__id`) REFERENCES `isysgui_cats` (`isysgui_cats__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_database_objects` (
  `isys_database_objects__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_database_objects__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_database_objects__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_database_objects__description` text COLLATE utf8_unicode_ci,
  `isys_database_objects__status` int(10) unsigned DEFAULT '2',
  `isys_database_objects__sort` int(10) unsigned DEFAULT NULL,
  `isys_database_objects__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_database_objects__id`),
  KEY `isys_database_objects__title` (`isys_database_objects__title`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_database_objects` VALUES (1,'LC__DATABASE_OBJECTS__TABLE','C__DATABASE_OBJECTS__TABLE',NULL,2,NULL,NULL);
INSERT INTO `isys_database_objects` VALUES (2,'LC__DATABASE_OBJECTS__VIEW','C__DATABASE_OBJECTS__VIEW',NULL,2,NULL,NULL);
INSERT INTO `isys_database_objects` VALUES (3,'LC__DATABASE_OBJECTS__SEQUENCE','C__DATABASE_OBJECTS__SEQUENCE',NULL,2,NULL,NULL);
INSERT INTO `isys_database_objects` VALUES (4,'LC__DATABASE_OBJECTS__SYNONYM','C__DATABASE_OBJECTS__SYNONYM',NULL,2,NULL,NULL);
INSERT INTO `isys_database_objects` VALUES (5,'LC__DATABASE_OBJECTS__INDEX','C__DATABASE_OBJECTS__INDEX',NULL,2,NULL,NULL);
INSERT INTO `isys_database_objects` VALUES (6,'LC__DATABASE_OBJECTS__CLUSTER','C__DATABASE_OBJECTS__CLUSTER',NULL,2,NULL,NULL);
INSERT INTO `isys_database_objects` VALUES (7,'LC__DATABASE_OBJECTS__SNAPSHOT','C__DATABASE_OBJECTS__SNAPSHOT',NULL,2,NULL,NULL);
INSERT INTO `isys_database_objects` VALUES (8,'LC__DATABASE_OBJECTS__PROCEDURE','C__DATABASE_OBJECTS__PROCEDURE',NULL,2,NULL,NULL);
INSERT INTO `isys_database_objects` VALUES (9,'LC__DATABASE_OBJECTS__FUNCTION','C__DATABASE_OBJECTS__FUNCTION',NULL,2,NULL,NULL);
INSERT INTO `isys_database_objects` VALUES (10,'LC__DATABASE_OBJECTS__PACKAGE','C__DATABASE_OBJECTS__PACKAGE',NULL,2,NULL,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_db_init` (
  `isys_db_init__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_db_init__key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_db_init__value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_db_init__id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_db_init` VALUES (1,'title','i-doit 1.12.4');
INSERT INTO `isys_db_init` VALUES (2,'revision','201911204');
INSERT INTO `isys_db_init` VALUES (3,'version','1.12.4');
INSERT INTO `isys_db_init` VALUES (4,'type','pro');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_dbms` (
  `isys_dbms__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_dbms__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_dbms__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_dbms__description` text COLLATE utf8_unicode_ci,
  `isys_dbms__status` int(10) unsigned DEFAULT NULL,
  `isys_dbms__sort` int(10) unsigned DEFAULT NULL,
  `isys_dbms__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_dbms__id`),
  KEY `isys_dbms__title` (`isys_dbms__title`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_dbms` VALUES (1,'MySQL','C__DBMS__MYSQL',NULL,2,NULL,NULL);
INSERT INTO `isys_dbms` VALUES (2,'Oracle Database','C__DBMS__ORACLE',NULL,2,NULL,NULL);
INSERT INTO `isys_dbms` VALUES (3,'Microsoft SQL Server','C__DBMS__MYSQL',NULL,2,NULL,NULL);
INSERT INTO `isys_dbms` VALUES (4,'PostgreSQL','C__DBMS__PGSQL',NULL,2,NULL,NULL);
INSERT INTO `isys_dbms` VALUES (5,'SQLite','C__DBMS__SQLITE',NULL,2,NULL,NULL);
INSERT INTO `isys_dbms` VALUES (6,'DB2','C__DBMS__DB2',NULL,2,NULL,NULL);
INSERT INTO `isys_dbms` VALUES (7,'Lotus Notes','C__DBMS__LOTUSNOTES',NULL,2,NULL,NULL);
INSERT INTO `isys_dbms` VALUES (8,'MongoDB','C__DBMS__MONGODB',NULL,2,NULL,NULL);
INSERT INTO `isys_dbms` VALUES (9,'MaxDB','C__DBMS__MAXDB',NULL,2,NULL,NULL);
INSERT INTO `isys_dbms` VALUES (10,'Sybase','C__DBMS__SYBAE',NULL,2,NULL,NULL);
INSERT INTO `isys_dbms` VALUES (11,'Derby','C__DBMS__DERBY',NULL,2,NULL,NULL);
INSERT INTO `isys_dbms` VALUES (12,'dBASE','C__DBMS__DBASE',NULL,2,NULL,NULL);
INSERT INTO `isys_dbms` VALUES (13,'FrontBase','C__DBMS__FRONTBASE',NULL,2,NULL,NULL);
INSERT INTO `isys_dbms` VALUES (14,'InterBase','C__DBMS__INTERBASE',NULL,2,NULL,NULL);
INSERT INTO `isys_dbms` VALUES (15,'Berkeley DB','C__DBMS__BERKELEYDB',NULL,2,NULL,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_dependency` (
  `isys_dependency__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_dependency__isys_obj__id__master` int(10) unsigned DEFAULT NULL,
  `isys_dependency__isys_obj__id__slave` int(10) unsigned DEFAULT NULL,
  `isys_dependency__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_dependency__description` text COLLATE utf8_unicode_ci,
  `isys_dependency__datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isys_dependency__status` int(10) unsigned DEFAULT '2',
  `isys_dependency__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_dependency__id`),
  KEY `isys_dependency_FKIndex1` (`isys_dependency__isys_obj__id__slave`),
  KEY `isys_dependency_FKIndex2` (`isys_dependency__isys_obj__id__master`),
  CONSTRAINT `isys_dependency_ibfk_1` FOREIGN KEY (`isys_dependency__isys_obj__id__master`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_dependency_ibfk_2` FOREIGN KEY (`isys_dependency__isys_obj__id__slave`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_depth_unit` (
  `isys_depth_unit__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_depth_unit__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_depth_unit__description` text COLLATE utf8_unicode_ci,
  `isys_depth_unit__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_depth_unit__factor` float unsigned DEFAULT '1',
  `isys_depth_unit__sort` int(10) unsigned DEFAULT NULL,
  `isys_depth_unit__property` int(10) unsigned DEFAULT NULL,
  `isys_depth_unit__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_depth_unit__id`),
  KEY `isys_depth_unit__title` (`isys_depth_unit__title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_depth_unit` VALUES (1,'LC__DEPTH_UNIT__MM',NULL,'C__DEPTH_UNIT__MM',1,1,NULL,2);
INSERT INTO `isys_depth_unit` VALUES (2,'LC__DEPTH_UNIT__CM',NULL,'C__DEPTH_UNIT__CM',10,2,NULL,2);
INSERT INTO `isys_depth_unit` VALUES (3,'LC__DEPTH_UNIT__INCH',NULL,'C__DEPTH_UNIT__INCH',25.4,3,NULL,2);
INSERT INTO `isys_depth_unit` VALUES (4,'LC__DEPTH_UNIT__METER',NULL,'C__DEPTH_UNIT__METER',1000,4,NULL,2);
INSERT INTO `isys_depth_unit` VALUES (5,'LC__DEPTH_UNIT__FOOT',NULL,'C__DEPTH_UNIT__FOOT',304.8,5,NULL,2);
INSERT INTO `isys_depth_unit` VALUES (6,'LC__DEPTH_UNIT__KILOMETER',NULL,'C__DEPTH_UNIT__KILOMETER',1000000,6,NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_dialog_plus_custom` (
  `isys_dialog_plus_custom__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_dialog_plus_custom__identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_dialog_plus_custom__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_dialog_plus_custom__description` text COLLATE utf8_unicode_ci,
  `isys_dialog_plus_custom__property` int(10) unsigned DEFAULT '0',
  `isys_dialog_plus_custom__status` int(10) unsigned DEFAULT NULL,
  `isys_dialog_plus_custom__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_dialog_plus_custom__sort` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_dialog_plus_custom__id`),
  KEY `isys_dialog_plus_custom__identifier` (`isys_dialog_plus_custom__identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_drive_list_2_stor_list` (
  `isys_drive_list_2_stor_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_drive_list_2_stor_list__isys_catg_drive_list__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_drive_list_2_stor_list__isys_catg_stor_list__id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`isys_drive_list_2_stor_list__id`),
  KEY `isys_drive_list_2_stor_list_FKIndex1` (`isys_drive_list_2_stor_list__isys_catg_drive_list__id`),
  KEY `isys_drive_list_2_stor_list_FKIndex2` (`isys_drive_list_2_stor_list__isys_catg_stor_list__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_export` (
  `isys_export__id` int(10) NOT NULL AUTO_INCREMENT,
  `isys_export__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_export__params` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_export__exported` int(10) NOT NULL,
  `isys_export__datetime` datetime NOT NULL,
  PRIMARY KEY (`isys_export__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_fc_port_medium` (
  `isys_fc_port_medium__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_fc_port_medium__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_fc_port_medium__description` text COLLATE utf8_unicode_ci,
  `isys_fc_port_medium__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_fc_port_medium__sort` int(10) unsigned DEFAULT NULL,
  `isys_fc_port_medium__status` int(10) unsigned DEFAULT NULL,
  `isys_fc_port_medium__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_fc_port_medium__id`),
  KEY `isys_fc_port_medium__title` (`isys_fc_port_medium__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_fc_port_path` (
  `isys_fc_port_path__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_fc_port_path__isys_catg_sanpool_list__id` int(10) unsigned NOT NULL,
  `isys_fc_port_path__isys_catg_fc_port_list__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_fc_port_path__id`),
  KEY `isys_fc_port_path__isys_catg_sanpool_list__id` (`isys_fc_port_path__isys_catg_sanpool_list__id`),
  KEY `isys_fc_port_path__isys_catg_fc_port_list__id` (`isys_fc_port_path__isys_catg_fc_port_list__id`),
  CONSTRAINT `isys_fc_port_path_ibfk_1` FOREIGN KEY (`isys_fc_port_path__isys_catg_sanpool_list__id`) REFERENCES `isys_catg_sanpool_list` (`isys_catg_sanpool_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_fc_port_path_ibfk_2` FOREIGN KEY (`isys_fc_port_path__isys_catg_fc_port_list__id`) REFERENCES `isys_catg_fc_port_list` (`isys_catg_fc_port_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_fc_port_type` (
  `isys_fc_port_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_fc_port_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_fc_port_type__description` text COLLATE utf8_unicode_ci,
  `isys_fc_port_type__sort` int(10) unsigned DEFAULT '5',
  `isys_fc_port_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_fc_port_type__property` int(10) unsigned DEFAULT '0',
  `isys_fc_port_type__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_fc_port_type__id`),
  KEY `isys_fc_port_type__title` (`isys_fc_port_type__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_fiber_category` (
  `isys_fiber_category__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_fiber_category__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_fiber_category__description` text COLLATE utf8_unicode_ci,
  `isys_fiber_category__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_fiber_category__sort` int(10) unsigned DEFAULT '5',
  `isys_fiber_category__status` int(10) unsigned DEFAULT '2',
  `isys_fiber_category__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_fiber_category__id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='fiber category';
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_fiber_category` VALUES (1,'OM1',NULL,'C__CATEGORY_FIBER__OM1',1,2,0);
INSERT INTO `isys_fiber_category` VALUES (2,'OM2',NULL,'C__CATEGORY_FIBER__OM2',2,2,0);
INSERT INTO `isys_fiber_category` VALUES (3,'OM3',NULL,'C__CATEGORY_FIBER__OM3',3,2,0);
INSERT INTO `isys_fiber_category` VALUES (4,'OM4',NULL,'C__CATEGORY_FIBER__OM4',4,2,0);
INSERT INTO `isys_fiber_category` VALUES (5,'OS1',NULL,'C__CATEGORY_FIBER__OS1',5,2,0);
INSERT INTO `isys_fiber_category` VALUES (6,'OS2',NULL,'C__CATEGORY_FIBER__OS2',6,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_fiber_wave_length` (
  `isys_fiber_wave_length__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_fiber_wave_length__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_fiber_wave_length__description` text COLLATE utf8_unicode_ci,
  `isys_fiber_wave_length__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_fiber_wave_length__sort` int(10) unsigned DEFAULT '5',
  `isys_fiber_wave_length__status` int(10) unsigned DEFAULT '2',
  `isys_fiber_wave_length__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_fiber_wave_length__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='fiber wave lengths';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_file_category` (
  `isys_file_category__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_file_category__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_file_category__description` text COLLATE utf8_unicode_ci,
  `isys_file_category__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_file_category__sort` int(10) unsigned DEFAULT NULL,
  `isys_file_category__property` int(10) unsigned DEFAULT NULL,
  `isys_file_category__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_file_category__id`),
  KEY `isys_file_category__title` (`isys_file_category__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_file_physical` (
  `isys_file_physical__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_file_physical__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_file_physical__filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_file_physical__filename_original` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_file_physical__description` text COLLATE utf8_unicode_ci,
  `isys_file_physical__md5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_file_physical__date_uploaded` datetime DEFAULT NULL,
  `isys_file_physical__user_id_uploaded` int(10) unsigned DEFAULT NULL,
  `isys_file_physical__status` int(10) unsigned DEFAULT '2',
  `isys_file_physical__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_file_physical__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_file_version` (
  `isys_file_version__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_file_version__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_file_version__description` text COLLATE utf8_unicode_ci,
  `isys_file_version__revision` int(10) unsigned DEFAULT NULL,
  `isys_file_version__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_file_version__isys_file_physical__id` int(10) unsigned DEFAULT NULL,
  `isys_file_version__const` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_file_version__sort` int(10) unsigned DEFAULT NULL,
  `isys_file_version__status` int(10) unsigned DEFAULT NULL,
  `isys_file_version__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_file_version__id`),
  KEY `isys_file_version_FKIndex1` (`isys_file_version__isys_file_physical__id`),
  KEY `isys_file_version_FKIndex2` (`isys_file_version__isys_obj__id`),
  KEY `isys_file_version__status` (`isys_file_version__status`),
  CONSTRAINT `isys_file_version_ibfk_1` FOREIGN KEY (`isys_file_version__isys_file_physical__id`) REFERENCES `isys_file_physical` (`isys_file_physical__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_file_version_ibfk_2` FOREIGN KEY (`isys_file_version__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_filesystem_type` (
  `isys_filesystem_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_filesystem_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_filesystem_type__description` text COLLATE utf8_unicode_ci,
  `isys_filesystem_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_filesystem_type__sort` int(10) unsigned DEFAULT '5',
  `isys_filesystem_type__property` int(10) unsigned DEFAULT '0',
  `isys_filesystem_type__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_filesystem_type__id`),
  KEY `isys_filesystem_type__title` (`isys_filesystem_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_filesystem_type` VALUES (1,'FAT','','C__FILESYSTEM_TYPE__FAT',1,0,2);
INSERT INTO `isys_filesystem_type` VALUES (2,'FAT32',NULL,'C__FILESYSTEM_TYPE__FAT32',2,0,2);
INSERT INTO `isys_filesystem_type` VALUES (3,'NTFS',NULL,'C__FILESYSTEM_TYPE__NTFS',3,0,2);
INSERT INTO `isys_filesystem_type` VALUES (4,'LINUX SWAP',NULL,'C__FILESYSTEM_TYPE__LINUX_SWAP',4,0,2);
INSERT INTO `isys_filesystem_type` VALUES (5,'ReiserFS','','C__FILESYSTEM_TYPE__REISER_FS',5,0,2);
INSERT INTO `isys_filesystem_type` VALUES (6,'EXT2','','C__FILESYSTEM_TYPE__EXT2',6,0,2);
INSERT INTO `isys_filesystem_type` VALUES (7,'EXT3','','C__FILESYSTEM_TYPE__EXT3',7,0,2);
INSERT INTO `isys_filesystem_type` VALUES (8,'HPFS','','C__FILESYSTEM_TYPE__HPFS',8,0,2);
INSERT INTO `isys_filesystem_type` VALUES (9,'NSS','','C__FILESYSTEM_TYPE__NSS',9,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_frequency_unit` (
  `isys_frequency_unit__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_frequency_unit__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_frequency_unit__description` text COLLATE utf8_unicode_ci,
  `isys_frequency_unit__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_frequency_unit__factor` bigint(32) unsigned DEFAULT NULL,
  `isys_frequency_unit__sort` int(10) unsigned DEFAULT '5',
  `isys_frequency_unit__status` int(10) unsigned DEFAULT '2',
  `isys_frequency_unit__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_frequency_unit__id`),
  KEY `isys_frequency_unit__title` (`isys_frequency_unit__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_frequency_unit` VALUES (1,'KHz',NULL,'C__FREQUENCY_UNIT__KHZ',1000,1,2,0);
INSERT INTO `isys_frequency_unit` VALUES (2,'MHz',NULL,'C__FREQUENCY_UNIT__MHZ',1000000,2,2,0);
INSERT INTO `isys_frequency_unit` VALUES (3,'GHz',NULL,'C__FREQUENCY_UNIT__GHZ',1000000000,3,2,0);
INSERT INTO `isys_frequency_unit` VALUES (4,'THz',NULL,'C__FREQUENCY_UNIT__THZ',1000000000000,4,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_graphic_manufacturer` (
  `isys_graphic_manufacturer__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_graphic_manufacturer__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_graphic_manufacturer__description` text COLLATE utf8_unicode_ci,
  `isys_graphic_manufacturer__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_graphic_manufacturer__sort` int(10) unsigned DEFAULT NULL,
  `isys_graphic_manufacturer__status` int(10) unsigned DEFAULT NULL,
  `isys_graphic_manufacturer__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_graphic_manufacturer__id`),
  KEY `isys_graphic_manufacturer__title` (`isys_graphic_manufacturer__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_guarantee_period_unit` (
  `isys_guarantee_period_unit__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_guarantee_period_unit__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_guarantee_period_unit__description` text COLLATE utf8_unicode_ci,
  `isys_guarantee_period_unit__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_guarantee_period_unit__sort` int(10) unsigned DEFAULT NULL,
  `isys_guarantee_period_unit__status` int(10) unsigned DEFAULT NULL,
  `isys_guarantee_period_unit__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_guarantee_period_unit__id`),
  KEY `isys_guarantee_period_unit__title` (`isys_guarantee_period_unit__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_guarantee_period_unit` VALUES (1,'LC__UNIVERSAL__MONTHS','Months','C__GUARANTEE_PERIOD_UNIT_MONTH',3,2,0);
INSERT INTO `isys_guarantee_period_unit` VALUES (2,'LC__UNIVERSAL__DAYS','Days','C__GUARANTEE_PERIOD_UNIT_DAYS',1,2,NULL);
INSERT INTO `isys_guarantee_period_unit` VALUES (3,'LC__UNIVERSAL__WEEKS','Weeks','C__GUARANTEE_PERIOD_UNIT_WEEKS',2,2,NULL);
INSERT INTO `isys_guarantee_period_unit` VALUES (4,'LC__UNIVERSAL__YEARS','Years','C__GUARANTEE_PERIOD_UNIT_YEARS',4,2,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_hba_type` (
  `isys_hba_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_hba_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_hba_type__description` text COLLATE utf8_unicode_ci,
  `isys_hba_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_hba_type__software_emulation` int(10) unsigned DEFAULT '0',
  `isys_hba_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_hba_type__status` int(10) unsigned DEFAULT '2',
  `isys_hba_type__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_hba_type__id`),
  KEY `isys_hba_type__title` (`isys_hba_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_hba_type` VALUES (1,'FC','FiberChanel','C__STOR_TYPE_FC_CONTROLLER',0,10,2,0);
INSERT INTO `isys_hba_type` VALUES (2,'iSCSI/FCIP','iSCSI/FCIP','C__STOR_TYPE_ISCSI_CONTROLLER',0,20,2,0);
INSERT INTO `isys_hba_type` VALUES (3,'SAS','','C__STOR_TYPE_SAS_CONTROLLER',0,30,2,0);
INSERT INTO `isys_hba_type` VALUES (4,'SATA','','C__STOR_TYPE_SATA_CONTROLLER',0,40,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_hostaddress_pairs` (
  `isys_hostaddress_pairs__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_hostaddress_pairs__isys_catg_ip_list__id` int(10) unsigned NOT NULL,
  `isys_hostaddress_pairs__hostname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `isys_hostaddress_pairs__domain` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`isys_hostaddress_pairs__id`),
  KEY `isys_hostaddress_pairs__isys_catg_ip_list__id` (`isys_hostaddress_pairs__isys_catg_ip_list__id`),
  CONSTRAINT `isys_hostaddress_pairs__isys_catg_ip_list__id` FOREIGN KEY (`isys_hostaddress_pairs__isys_catg_ip_list__id`) REFERENCES `isys_catg_ip_list` (`isys_catg_ip_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_iface_manufacturer` (
  `isys_iface_manufacturer__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_iface_manufacturer__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_iface_manufacturer__description` text COLLATE utf8_unicode_ci,
  `isys_iface_manufacturer__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_iface_manufacturer__sort` int(10) unsigned DEFAULT NULL,
  `isys_iface_manufacturer__status` int(10) unsigned DEFAULT NULL,
  `isys_iface_manufacturer__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_iface_manufacturer__id`),
  KEY `isys_iface_manufacturer__title` (`isys_iface_manufacturer__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_iface_model` (
  `isys_iface_model__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_iface_model__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_iface_model__description` text COLLATE utf8_unicode_ci,
  `isys_iface_model__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_iface_model__sort` int(10) unsigned DEFAULT NULL,
  `isys_iface_model__status` int(10) unsigned DEFAULT NULL,
  `isys_iface_model__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_iface_model__id`),
  KEY `isys_iface_model__title` (`isys_iface_model__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_import` (
  `isys_import__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_import__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_import__import_date` datetime DEFAULT NULL,
  `isys_import__isys_import_type__id` int(10) unsigned DEFAULT NULL,
  `isys_import__isys_import_profile__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_import__id`),
  KEY `isys_import__isys_import_type__id` (`isys_import__isys_import_type__id`),
  CONSTRAINT `isys_import__isys_import_type__id` FOREIGN KEY (`isys_import__isys_import_type__id`) REFERENCES `isys_import_type` (`isys_import_type__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_import_type` (
  `isys_import_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_import_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_import_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_import_type__description` text COLLATE utf8_unicode_ci,
  `isys_import_type__property` int(10) unsigned DEFAULT NULL,
  `isys_import_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_import_type__status` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_import_type__id`),
  KEY `isys_import_type__title` (`isys_import_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_import_type` VALUES (1,'csv','C__IMPORT_TYPE__CSV',NULL,NULL,1,2);
INSERT INTO `isys_import_type` VALUES (2,'jdisc','C__IMPORT_TYPE__JDISC',NULL,NULL,2,2);
INSERT INTO `isys_import_type` VALUES (3,'xml','C__IMPORT_TYPE__XML',NULL,NULL,3,2);
INSERT INTO `isys_import_type` VALUES (4,'LC__MODULE__TEMPLATES','C__IMPORT_TYPE__TEMPLATE',NULL,NULL,4,2);
INSERT INTO `isys_import_type` VALUES (5,'LC__MASS_CHANGE','C__IMPORT_TYPE__MASS_CHANGES',NULL,NULL,5,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_installation_type` (
  `isys_installation_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_installation_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_installation_type__description` text COLLATE utf8_unicode_ci,
  `isys_installation_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_installation_type__sort` int(10) DEFAULT NULL,
  `isys_installation_type__status` int(10) DEFAULT '2',
  `isys_installation_type__property` int(10) DEFAULT NULL,
  PRIMARY KEY (`isys_installation_type__id`),
  KEY `isys_installation_type__title` (`isys_installation_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_installation_type` VALUES (1,'LC__CMDB__CATS__APPLICATION_INSTALLATION_TYPE__MANUAL',NULL,NULL,10,2,NULL);
INSERT INTO `isys_installation_type` VALUES (2,'LC__CMDB__CATS__APPLICATION_INSTALLATION_TYPE__AUTOMATIC',NULL,NULL,20,2,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_interface` (
  `isys_interface__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_interface__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_interface__description` text COLLATE utf8_unicode_ci,
  `isys_interface__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_interface__sort` int(10) unsigned DEFAULT '5',
  `isys_interface__status` int(10) unsigned DEFAULT '2',
  `isys_interface__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_interface__id`),
  KEY `isys_interface__title` (`isys_interface__title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='interface';
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_interface` VALUES (1,'GBIC',NULL,'C__INTERFACE__GBIC',1,2,0);
INSERT INTO `isys_interface` VALUES (2,'SFP',NULL,'C__INTERFACE__SFP',2,2,0);
INSERT INTO `isys_interface` VALUES (3,'SFP+',NULL,'C__INTERFACE__SFP_PLUS',3,2,0);
INSERT INTO `isys_interface` VALUES (4,'XFP',NULL,'C__INTERFACE__XFP',4,2,0);
INSERT INTO `isys_interface` VALUES (5,'XENPAK',NULL,'C__INTERFACE__XENPAK',5,2,0);
INSERT INTO `isys_interface` VALUES (6,'X2',NULL,'C__INTERFACE__X2',6,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_interval` (
  `isys_interval__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_interval__title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `isys_interval__description` text CHARACTER SET utf8,
  `isys_interval__const` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `isys_interval__sort` int(10) DEFAULT NULL,
  `isys_interval__status` int(10) DEFAULT '2',
  `isys_interval__property` int(10) DEFAULT NULL,
  PRIMARY KEY (`isys_interval__id`),
  KEY `isys_interval__title` (`isys_interval__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_interval` VALUES (1,'LC__UNIVERSAL__PER_DAY',NULL,'C__INTERVAL__PER_DAY',10,2,NULL);
INSERT INTO `isys_interval` VALUES (2,'LC__UNIVERSAL__PER_WEEK',NULL,'C__INTERVAL__PER_WEEK',20,2,NULL);
INSERT INTO `isys_interval` VALUES (3,'LC__UNIVERSAL__PER_MONTH',NULL,'C__INTERVAL__PER_MONTH',30,2,NULL);
INSERT INTO `isys_interval` VALUES (4,'LC__UNIVERSAL__PER_YEAR',NULL,'C__INTERVAL__PER_YEAR',40,2,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_ip_assignment` (
  `isys_ip_assignment__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_ip_assignment__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ip_assignment__description` text COLLATE utf8_unicode_ci,
  `isys_ip_assignment__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ip_assignment__sort` int(10) unsigned DEFAULT NULL,
  `isys_ip_assignment__status` int(10) unsigned DEFAULT NULL,
  `isys_ip_assignment__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_ip_assignment__id`),
  KEY `isys_ip_assignment__title` (`isys_ip_assignment__title`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_ip_assignment` VALUES (1,'LC__CATP__IP__ASSIGN__DHCP','DHCP','C__CATP__IP__ASSIGN__DHCP',10,2,NULL);
INSERT INTO `isys_ip_assignment` VALUES (2,'LC__CATP__IP__ASSIGN__STATIC','static','C__CATP__IP__ASSIGN__STATIC',20,2,NULL);
INSERT INTO `isys_ip_assignment` VALUES (3,'LC__CATP__IP__ASSIGN__UNNUMBERED','unnumbered','C__CATP__IP__ASSIGN__UNNUMBERED',30,2,NULL);
INSERT INTO `isys_ip_assignment` VALUES (1000,'LC__CATP__IP__ASSIGN__DHCP_RESERVED','DHCP reserved','C__CATP__IP__ASSIGN__DHCP_RESERVED',15,2,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_ipv6_assignment` (
  `isys_ipv6_assignment__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_ipv6_assignment__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ipv6_assignment__description` text COLLATE utf8_unicode_ci,
  `isys_ipv6_assignment__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ipv6_assignment__sort` int(10) unsigned NOT NULL DEFAULT '5',
  `isys_ipv6_assignment__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_ipv6_assignment__id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='IPv6 assignments';
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_ipv6_assignment` VALUES (1,'LC__CMDB__CATG__IP__DHCPV6','Stateful Address Configuration via DHCPv6','C__CMDB__CATG__IP__DHCPV6',5,2);
INSERT INTO `isys_ipv6_assignment` VALUES (2,'LC__CMDB__CATG__IP__SLAAC_AND_DHCPV6','SLAAC and DHCPv6','C__CMDB__CATG__IP__SLAAC_AND_DHCPV6',5,2);
INSERT INTO `isys_ipv6_assignment` VALUES (3,'LC__CMDB__CATG__IP__SLAAC','Stateless Address Autoconfiguration (SLAAC)','C__CMDB__CATG__IP__SLAAC',5,2);
INSERT INTO `isys_ipv6_assignment` VALUES (4,'LC__CMDB__CATG__IP__SLAAC_AND_DHCPV6_RESERVED','SLAAC and DHCPv6 (reserved)','C__CMDB__CATG__IP__SLAAC_AND_DHCPV6_RESERVED',5,2);
INSERT INTO `isys_ipv6_assignment` VALUES (5,'LC__CMDB__CATG__IP__DHCPV6_RESERVED','Stateful Address Configuration via DHCPv6 (reserved)','C__CMDB__CATG__IP__DHCPV6_RESERVED',5,2);
INSERT INTO `isys_ipv6_assignment` VALUES (6,'LC__CMDB__CATG__IP__STATIC','static/manual','C__CMDB__CATG__IP__STATIC',5,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_ipv6_scope` (
  `isys_ipv6_scope__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_ipv6_scope__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ipv6_scope__description` text COLLATE utf8_unicode_ci,
  `isys_ipv6_scope__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ipv6_scope__sort` int(10) unsigned NOT NULL DEFAULT '5',
  `isys_ipv6_scope__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_ipv6_scope__id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='IPv6 scopes';
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_ipv6_scope` VALUES (1,'LC__CMDB__CATG__IP__GLOBAL_UNICAST','Global Unicast','C__CMDB__CATG__IP__GLOBAL_UNICAST',5,2);
INSERT INTO `isys_ipv6_scope` VALUES (2,'LC__CMDB__CATG__IP__UNIQUE_LOCAL_UNICAST','Unique Local Unicast','C__CMDB__CATG__IP__UNIQUE_LOCAL_UNICAST',5,2);
INSERT INTO `isys_ipv6_scope` VALUES (3,'LC__CMDB__CATG__IP__LINK_LOCAL_UNICAST','Link Local Unicast','C__CMDB__CATG__IP__LINK_LOCAL_UNICAST',5,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_its_type` (
  `isys_its_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_its_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_its_type__description` text COLLATE utf8_unicode_ci,
  `isys_its_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_its_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_its_type__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_its_type__id`),
  KEY `isys_its_type__title` (`isys_its_type__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_itservice_filter_config` (
  `isys_itservice_filter_config__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_itservice_filter_config__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_itservice_filter_config__data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_itservice_filter_config__id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_itservice_filter_config` VALUES (1,'Level 1','{\"priority\":null,\"level\":\"1\"}');
INSERT INTO `isys_itservice_filter_config` VALUES (2,'Level 2','{\"priority\":null,\"level\":\"2\"}');
INSERT INTO `isys_itservice_filter_config` VALUES (3,'Level 3','{\"priority\":null,\"level\":\"3\"}');
INSERT INTO `isys_itservice_filter_config` VALUES (4,'Level 4','{\"priority\":null,\"level\":\"4\"}');
INSERT INTO `isys_itservice_filter_config` VALUES (5,'Level 5','{\"priority\":null,\"level\":\"5\"}');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_jdisc_ca_type` (
  `isys_jdisc_ca_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_jdisc_ca_type__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_jdisc_ca_type__const` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_jdisc_ca_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_jdisc_ca_type__status` int(10) unsigned DEFAULT '2',
  `isys_jdisc_ca_type__property` int(10) unsigned DEFAULT NULL,
  `isys_jdisc_ca_type__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_jdisc_ca_type__id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_jdisc_ca_type` VALUES (1,'LC__CATG__JDISC__CUSTOM_ATTRIBUTES_TYPE__TEXT','C__JDISC__CA_TYPE__TEXT',1,2,NULL,'Text');
INSERT INTO `isys_jdisc_ca_type` VALUES (2,'LC__CATG__JDISC__CUSTOM_ATTRIBUTES_TYPE__MULTITEXT','C__JDISC__CA_TYPE__MULTITEXT',2,2,NULL,'Multiline text');
INSERT INTO `isys_jdisc_ca_type` VALUES (3,'LC__CATG__JDISC__CUSTOM_ATTRIBUTES_TYPE__INTEGER','C__JDISC__CA_TYPE__INTEGER',3,2,NULL,'Integer');
INSERT INTO `isys_jdisc_ca_type` VALUES (4,'LC__CATG__JDISC__CUSTOM_ATTRIBUTES_TYPE__DATE','C__JDISC__CA_TYPE__DATE',4,2,NULL,'Date');
INSERT INTO `isys_jdisc_ca_type` VALUES (5,'LC__CATG__JDISC__CUSTOM_ATTRIBUTES_TYPE__TIME','C__JDISC__CA_TYPE__TIME',5,2,NULL,'Time');
INSERT INTO `isys_jdisc_ca_type` VALUES (6,'LC__CATG__JDISC__CUSTOM_ATTRIBUTES_TYPE__ENUMERATION','C__JDISC__CA_TYPE__ENUMERATION',6,2,NULL,'Enumeration');
INSERT INTO `isys_jdisc_ca_type` VALUES (7,'LC__CATG__JDISC__CUSTOM_ATTRIBUTES_TYPE__CURRENCY','C__JDISC__CA_TYPE__CURRENCY',7,2,NULL,'Currency');
INSERT INTO `isys_jdisc_ca_type` VALUES (8,'LC__CATG__JDISC__CUSTOM_ATTRIBUTES_TYPE__DOCUMENT','C__JDISC__CA_TYPE__DOCUMENT',8,2,NULL,'Document');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_jdisc_db` (
  `isys_jdisc_db__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_jdisc_db__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_jdisc_db__host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_jdisc_db__port` int(10) unsigned NOT NULL,
  `isys_jdisc_db__database` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_jdisc_db__username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_jdisc_db__password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_jdisc_db__version_check` tinyint(1) DEFAULT NULL,
  `isys_jdisc_db__default_server` tinyint(1) unsigned DEFAULT '0',
  `isys_jdisc_db__discovery_username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_jdisc_db__discovery_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_jdisc_db__discovery_port` int(10) DEFAULT NULL,
  `isys_jdisc_db__discovery_protocol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_jdisc_db__discovery_timeout` int(10) unsigned DEFAULT '60',
  `isys_jdisc_db__discovery_import_retries` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_jdisc_db__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_jdisc_device_type` (
  `isys_jdisc_device_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_jdisc_device_type__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_jdisc_device_type__description` text COLLATE utf8_unicode_ci,
  `isys_jdisc_device_type__const` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_jdisc_device_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_jdisc_device_type__status` int(10) unsigned DEFAULT '2',
  `isys_jdisc_device_type__property` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`isys_jdisc_device_type__id`),
  KEY `isys_jdisc_device_type__title` (`isys_jdisc_device_type__title`),
  KEY `isys_jdisc_device_type__const` (`isys_jdisc_device_type__const`),
  KEY `isys_jdisc_device_type__status` (`isys_jdisc_device_type__status`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_jdisc_device_type` VALUES (1,'Access Point','6','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (2,'Access Point Controller','24','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (3,'Analyser','8','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (4,'Appliance','500','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (5,'Automation Controller','1400','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (6,'Backup Device','159','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (7,'Barcode Scanner','108','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (8,'Blade Enclosure','251','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (9,'Bridge','11','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (10,'Card Printer','110','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (11,'Card Reader','1200','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (12,'Client Computer','51','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (13,'Cluster Service','1000','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (14,'Communication Controller','1451','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (15,'Computer','50','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (16,'Concentrator','10','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (17,'Console Server','15','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (18,'Console Switch','14','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (19,'Data Terminal Controller','60','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (20,'Desktop','55','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (21,'Device Connector','26','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (22,'Digital Sender','107','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (23,'Disk Array','156','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (24,'Disk Array (Blade)','161','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (25,'Disk Array Controller','169','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (26,'Environment Monitor','1450','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (27,'Fax','103','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (28,'Fibre Channel Analyser','155','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (29,'Fibre Channel Bridge','154','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (30,'Fibre Channel Converter','164','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (31,'Fibre Channel Gateway','163','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (32,'Fibre Channel Hub','152','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (33,'Fibre Channel Router','158','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (34,'Fibre Channel Switch','153','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (35,'Fibre Channel Switch (Blade)','165','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (36,'Field Bus Controller','1350','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (37,'Firewall','5','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (38,'Gateway','9','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (39,'HP Integrity VM','76','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (40,'Hub','1','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (41,'HyperV Instance','77','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (42,'Imaging and Printing Device','100','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (43,'Industrial Control System','1300','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (44,'InfiniBand Switch','19','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (45,'InfiniBand Switch (Blade)','20','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (46,'IO Module','800','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (47,'IO Module (Blade)','801','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (48,'IP Phone','201','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (49,'IP Telephony Device','200','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (50,'IP Telephony Gateway','202','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (51,'ISDN Gateway','203','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (52,'KVM Instance','79','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (53,'Laptop','56','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (54,'Load Balancer','25','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (55,'LPAR','75','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (56,'Management Device','250','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (57,'Media Server','61','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (58,'Microsoft Virtual Instance','72','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (59,'Mini Tower','58','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (60,'Modem','7','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (61,'Monitor','700','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (62,'Multifunctional Device','105','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (63,'Multifunctional Terminal','1452','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (64,'NAS','168','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (65,'Optical Switch','21','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (66,'Parallels Instance','83','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (67,'Patch Field','22','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (68,'PDA/Thin Client','57','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (69,'PDU','352','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (70,'PinPad','1201','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (71,'Pizza Box','86','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (72,'Port Server','13','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (73,'Power Device','350','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (74,'Power Supply','353','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (75,'Power Supply (Blade)','354','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (76,'Print Server','104','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (77,'Print Server Appliance','503','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (78,'Printer','101','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (79,'Projector','106','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (80,'Rack','400','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (81,'Receipt Printer','109','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (82,'Repeater','12','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (83,'Router','2','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (84,'Routing Switch','4','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (85,'Scanner','102','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (86,'Security Appliance','501','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (87,'Serial Attached SCSI Switch','166','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (88,'Serial Attached SCSI Switch (Blade)','167','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (89,'Server','52','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (90,'Server (Blade)','54','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (91,'Server (Mini Tower)','70','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (92,'Server (Rack)','53','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (93,'Server (Tower)','71','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (94,'ServerNet Switch','17','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (95,'ServerNet Switch (Blade)','18','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (96,'ServiceGuard Package','1002','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (97,'Solaris LDOM','85','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (98,'Solaris Zone','74','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (99,'Storage Device','150','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (100,'Storage Device (Blade)','160','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (101,'Switch','3','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (102,'Switch (Blade)','16','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (103,'Tape Drive','157','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (104,'Tape Drive (Blade)','162','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (105,'Tape Library','151','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (106,'Terminal','66','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (107,'Terminal Server','62','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (108,'Thin Client','73','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (109,'Tower','59','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (110,'Unassigned Device','300','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (111,'Unidentified Device','301','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (112,'Unknown SNMP Device','302','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (113,'UPS','351','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (114,'Veritas Cluster Service','1001','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (115,'Video Communication Device','600','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (116,'Video Conferencing Device','602','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (117,'Video Telephone','601','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (118,'Virtual Computer','68','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (119,'Virtual Iron Instance','82','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (120,'VirtualBox Instance','81','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (121,'VMware Instance','69','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (122,'VMware Management Appliance','80','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (123,'VPN Appliance','505','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (124,'VPN Router','23','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (125,'WAN Appliance','502','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (126,'Web-caching Appliance','504','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (127,'Wireless DSL Router','27','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (128,'WLAN Controller','252','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (129,'Workstation','63','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (130,'Workstation (Blade)','84','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (131,'X-Terminal','67','',NULL,2,'');
INSERT INTO `isys_jdisc_device_type` VALUES (132,'Xen Instance','78','',NULL,2,'');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_jdisc_object_type_assignment` (
  `isys_jdisc_object_type_assignment__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_jdisc_object_type_assignment__isys_jdisc_profile__id` int(10) unsigned NOT NULL,
  `isys_jdisc_object_type_assignment__jdisc_type` int(10) unsigned DEFAULT NULL,
  `isys_jdisc_object_type_assignment__jdisc_type_customized` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_jdisc_object_type_assignment__jdisc_os` int(10) unsigned DEFAULT NULL,
  `isys_jdisc_object_type_assignment__jdisc_os_customized` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_jdisc_object_type_assignment__isys_obj_type__id` int(10) unsigned DEFAULT NULL,
  `isys_jdisc_object_type_assignment__port_filter` text COLLATE utf8_unicode_ci,
  `isys_jdisc_object_type_assignment__port_filter_type` text COLLATE utf8_unicode_ci,
  `isys_jdisc_object_type_assignment__object_location__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_jdisc_object_type_assignment__id`),
  KEY `isys_jdisc_object_type_assignment__object_location__id` (`isys_jdisc_object_type_assignment__object_location__id`),
  CONSTRAINT `isys_jdisc_object_type_assignment__object_location__id` FOREIGN KEY (`isys_jdisc_object_type_assignment__object_location__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (1,2,153,'',NULL,'',8,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (2,2,165,'',NULL,'',8,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (3,2,22,'',NULL,'',43,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (4,2,2,'',NULL,'',7,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (5,2,50,'',NULL,'*IOS*',7,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (6,2,14,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (7,2,5,'',NULL,'',7,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (8,2,9,'',NULL,'',7,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (9,2,19,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (10,2,20,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (11,2,4,'',NULL,'',73,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (12,2,166,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (13,2,167,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (14,2,17,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (15,2,18,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (16,2,3,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (17,2,16,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (18,3,51,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (19,3,50,'',NULL,'*Windows XP*',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (20,3,50,'',NULL,'*Windows 7*',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (21,3,50,'',NULL,'*Windows Server*',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (22,3,50,'',NULL,'*Linux*',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (23,3,50,'',NULL,'*Debian*',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (24,3,50,'',NULL,'*Ubuntu*',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (25,3,50,'',NULL,'*Redhat*',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (26,3,50,'',NULL,'*SuSE*',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (27,3,15,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (28,3,55,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (29,3,61,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (30,3,58,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (31,3,57,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (32,3,86,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (33,3,13,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (34,3,104,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (35,3,52,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (36,3,54,'',NULL,'',75,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (37,3,70,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (38,3,53,'',NULL,'',74,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (39,3,71,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (40,3,66,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (41,3,62,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (42,3,73,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (43,3,59,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (44,3,63,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (45,3,84,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (46,3,67,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (47,4,6,'',NULL,'',27,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (48,4,500,'',NULL,'',23,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (49,4,159,'',NULL,'',23,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (50,4,251,'',NULL,'',74,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (51,4,1000,'',NULL,'',56,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (52,4,50,'',NULL,'*VMware*',58,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (53,4,76,'',NULL,'',59,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (54,4,77,'',NULL,'',59,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (55,4,100,'',NULL,'',11,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (56,4,201,'',NULL,'',38,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (57,4,200,'',NULL,'',38,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (58,4,202,'',NULL,'',24,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (59,4,79,'',NULL,'',59,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (60,4,72,'',NULL,'',59,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (61,4,700,'',NULL,'',22,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (62,4,168,'',NULL,'',9,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (63,4,83,'',NULL,'',59,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (64,4,352,'',NULL,'',49,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (65,4,350,'',NULL,'',50,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (66,4,353,'',NULL,'',50,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (67,4,354,'',NULL,'',50,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (68,4,503,'',NULL,'',23,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (69,4,101,'',NULL,'',11,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (70,4,106,'',NULL,'',22,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (71,4,400,'',NULL,'',4,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (72,4,12,'',NULL,'',44,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (73,4,501,'',NULL,'',23,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (74,4,150,'',NULL,'',9,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (75,4,160,'',NULL,'',9,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (76,4,157,'',NULL,'',9,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (77,4,162,'',NULL,'',9,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (78,4,151,'',NULL,'',9,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (79,4,351,'',NULL,'',50,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (80,4,1001,'',NULL,'',56,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (81,4,600,'',NULL,'',38,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (82,4,602,'',NULL,'',38,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (83,4,601,'',NULL,'',38,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (84,4,68,'',NULL,'',57,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (85,4,82,'',NULL,'',59,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (86,4,81,'',NULL,'',57,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (87,4,69,'',NULL,'',59,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (88,4,80,'',NULL,'',23,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (89,4,505,'',NULL,'',23,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (90,4,502,'',NULL,'',23,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (91,4,504,'',NULL,'',23,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (92,4,78,'',NULL,'',59,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (93,4,74,'',NULL,'',59,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (94,3,250,NULL,NULL,NULL,88,NULL,NULL,NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (95,1,6,'',NULL,'',27,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (96,1,24,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (97,1,8,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (98,1,500,'',NULL,'',23,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (99,1,1400,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (100,1,159,'',NULL,'',23,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (101,1,108,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (102,1,251,'',NULL,'',4,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (103,1,11,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (104,1,110,'',NULL,'',11,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (105,1,51,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (106,1,1000,'',NULL,'',56,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (107,1,50,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (108,1,50,'',NULL,'*Windows XP*',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (109,1,50,'',NULL,'*Windows 7*',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (110,1,50,'',NULL,'*Windows Server*',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (111,1,50,'',NULL,'*IOS*',7,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (112,1,50,'',NULL,'*VMware*',58,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (113,1,50,'',NULL,'*Linux*',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (114,1,50,'',NULL,'*Debian*',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (115,1,50,'',NULL,'*Ubuntu*',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (116,1,50,'',NULL,'*Redhat*',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (117,1,50,'',NULL,'*SuSE*',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (118,1,10,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (119,1,15,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (120,1,14,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (121,1,60,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (122,1,55,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (123,1,26,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (124,1,107,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (125,1,156,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (126,1,161,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (127,1,169,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (128,1,1450,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (129,1,103,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (130,1,155,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (131,1,154,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (132,1,164,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (133,1,163,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (134,1,152,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (135,1,158,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (136,1,153,'',NULL,'',8,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (137,1,165,'',NULL,'',8,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (138,1,1350,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (139,1,5,'',NULL,'',7,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (140,1,9,'',NULL,'',7,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (141,1,76,'',NULL,'',59,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (142,1,1,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (143,1,77,'',NULL,'',59,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (144,1,100,'',NULL,'',11,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (145,1,1300,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (146,1,19,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (147,1,20,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (148,1,800,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (149,1,801,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (150,1,201,'',NULL,'',38,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (151,1,200,'',NULL,'',38,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (152,1,202,'',NULL,'',24,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (153,1,79,'',NULL,'',59,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (154,1,56,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (155,1,25,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (156,1,75,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (157,1,250,'',NULL,'',88,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (158,1,61,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (159,1,72,'',NULL,'',59,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (160,1,58,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (161,1,7,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (162,1,700,'',NULL,'',22,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (163,1,105,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (164,1,1452,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (165,1,168,'',NULL,'',9,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (166,1,21,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (167,1,83,'',NULL,'',59,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (168,1,22,'',NULL,'',43,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (169,1,57,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (170,1,352,'',NULL,'',49,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (171,1,1201,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (172,1,86,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (173,1,13,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (174,1,350,'',NULL,'',50,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (175,1,353,'',NULL,'',50,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (176,1,354,'',NULL,'',50,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (177,1,104,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (178,1,503,'',NULL,'',23,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (179,1,101,'',NULL,'',11,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (180,1,106,'',NULL,'',22,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (181,1,400,'',NULL,'',4,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (182,1,109,'',NULL,'',11,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (183,1,12,'',NULL,'',44,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (184,1,2,'',NULL,'',7,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (185,1,4,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (186,1,102,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (187,1,501,'',NULL,'',23,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (188,1,166,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (189,1,167,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (190,1,52,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (191,1,54,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (192,1,70,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (193,1,53,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (194,1,71,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (195,1,17,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (196,1,18,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (197,1,1002,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (198,1,85,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (199,1,74,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (200,1,150,'',NULL,'',9,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (201,1,160,'',NULL,'',9,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (202,1,3,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (203,1,16,'',NULL,'',6,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (204,1,157,'',NULL,'',9,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (205,1,162,'',NULL,'',9,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (206,1,151,'',NULL,'',9,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (207,1,66,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (208,1,62,'',NULL,'',5,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (209,1,73,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (210,1,59,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (211,1,300,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (212,1,301,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (213,1,302,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (214,1,351,'',NULL,'',50,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (215,1,1001,'',NULL,'',56,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (216,1,600,'',NULL,'',38,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (217,1,602,'',NULL,'',38,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (218,1,601,'',NULL,'',38,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (219,1,68,'',NULL,'',57,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (220,1,82,'',NULL,'',59,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (221,1,81,'',NULL,'',57,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (222,1,69,'',NULL,'',59,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (223,1,80,'',NULL,'',23,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (224,1,505,'',NULL,'',23,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (225,1,23,'',NULL,'',7,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (226,1,502,'',NULL,'',23,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (227,1,504,'',NULL,'',23,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (228,1,27,'',NULL,'',7,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (229,1,252,'',NULL,'',NULL,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (230,1,63,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (231,1,84,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (232,1,67,'',NULL,'',10,'[\"\"]','[\"0\"]',NULL);
INSERT INTO `isys_jdisc_object_type_assignment` VALUES (233,1,78,'',NULL,'',59,'[\"\"]','[\"0\"]',NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_jdisc_profile` (
  `isys_jdisc_profile__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_jdisc_profile__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_jdisc_profile__description` text COLLATE utf8_unicode_ci,
  `isys_jdisc_profile__categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_jdisc_profile__import_all_software` tinyint(1) unsigned DEFAULT NULL,
  `isys_jdisc_profile__import_software_licences` tinyint(1) unsigned DEFAULT NULL,
  `isys_jdisc_profile__import_all_networks` tinyint(1) unsigned DEFAULT NULL,
  `isys_jdisc_profile__import_all_clusters` tinyint(1) unsigned DEFAULT NULL,
  `isys_jdisc_profile__import_all_blade_connections` tinyint(1) unsigned DEFAULT NULL,
  `isys_jdisc_profile__jdisc_server` int(10) unsigned DEFAULT NULL,
  `isys_jdisc_profile__import_custom_attributes` tinyint(1) unsigned DEFAULT NULL,
  `isys_jdisc_profile__import_all_vlans` tinyint(1) unsigned DEFAULT NULL,
  `isys_jdisc_profile__import_type_interfaces` tinyint(1) unsigned DEFAULT '2',
  `isys_jdisc_profile__cmdb_status` int(10) unsigned DEFAULT NULL,
  `isys_jdisc_profile__use_default_templates` tinyint(1) unsigned DEFAULT NULL,
  `isys_jdisc_profile__software_filter` text COLLATE utf8_unicode_ci,
  `isys_jdisc_profile__software_filter_type` tinyint(1) DEFAULT '0',
  `isys_jdisc_profile__software_obj_title` tinyint(1) unsigned DEFAULT '0',
  `isys_jdisc_profile__isys_obj_match__id` int(10) unsigned DEFAULT NULL,
  `isys_jdisc_profile__isys_obj_type__id__chassis_module` int(10) unsigned DEFAULT NULL,
  `isys_jdisc_profile__update_objtype` tinyint(1) DEFAULT '1',
  `isys_jdisc_profile__update_obj_title` tinyint(1) unsigned DEFAULT '0',
  `isys_jdisc_profile__chassis_module_update_objtype` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_jdisc_profile__id`),
  KEY `isys_jdisc_profile__jdisc_server` (`isys_jdisc_profile__jdisc_server`),
  KEY `isys_jdisc_profile__cmdb_status` (`isys_jdisc_profile__cmdb_status`),
  KEY `isys_jdisc_profile__isys_obj_match__id` (`isys_jdisc_profile__isys_obj_match__id`),
  KEY `isys_jdisc_profile__isys_obj_type__id__chassis_module` (`isys_jdisc_profile__isys_obj_type__id__chassis_module`),
  CONSTRAINT `isys_jdisc_profile__cmdb_status` FOREIGN KEY (`isys_jdisc_profile__cmdb_status`) REFERENCES `isys_cmdb_status` (`isys_cmdb_status__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_jdisc_profile__isys_obj_match__id` FOREIGN KEY (`isys_jdisc_profile__isys_obj_match__id`) REFERENCES `isys_obj_match` (`isys_obj_match__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_jdisc_profile__isys_obj_type__id__chassis_module` FOREIGN KEY (`isys_jdisc_profile__isys_obj_type__id__chassis_module`) REFERENCES `isys_obj_type` (`isys_obj_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_jdisc_profile_ibfk_1` FOREIGN KEY (`isys_jdisc_profile__jdisc_server`) REFERENCES `isys_jdisc_db` (`isys_jdisc_db__id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_jdisc_profile` VALUES (1,'Complete import',NULL,'a:20:{i:0;i:10;i:1;i:12;i:2;i:140;i:3;i:154;i:4;i:161;i:5;i:168;i:6;i:170;i:7;i:2;i:8;i:35;i:9;i:36;i:10;i:39;i:11;i:4;i:12;i:40;i:13;i:42;i:14;i:45;i:15;i:47;i:16;i:5;i:17;i:65;i:18;i:71;i:19;i:8;}',1,1,1,1,1,NULL,NULL,1,2,6,NULL,NULL,0,0,1,NULL,1,NULL,0);
INSERT INTO `isys_jdisc_profile` VALUES (2,'Network','','a:4:{i:0;i:47;i:1;i:40;i:2;i:2;i:3;i:39;}',0,NULL,1,1,1,NULL,1,1,2,6,NULL,NULL,0,0,1,NULL,1,NULL,0);
INSERT INTO `isys_jdisc_profile` VALUES (3,'Server and Clients','','a:15:{i:0;i:4;i:1;i:65;i:2;i:35;i:3;i:47;i:4;i:40;i:5;i:42;i:6;i:8;i:7;i:2;i:8;i:39;i:9;i:12;i:10;i:5;i:11;i:36;i:12;s:3:\"161\";i:13;s:3:\"154\";i:14;s:2:\"71\";}',1,NULL,1,1,1,NULL,1,1,2,6,NULL,NULL,0,0,1,NULL,1,NULL,0);
INSERT INTO `isys_jdisc_profile` VALUES (4,'Others','','a:12:{i:0;i:4;i:1;i:65;i:2;i:35;i:3;i:47;i:4;i:40;i:5;i:42;i:6;i:8;i:7;i:2;i:8;i:39;i:9;i:12;i:10;i:5;i:11;i:36;}',1,NULL,1,1,1,NULL,1,1,2,6,NULL,NULL,0,0,1,NULL,1,NULL,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_layer2_iphelper_type` (
  `isys_layer2_iphelper_type__id` int(11) NOT NULL AUTO_INCREMENT,
  `isys_layer2_iphelper_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_layer2_iphelper_type__description` text COLLATE utf8_unicode_ci,
  `isys_layer2_iphelper_type__sort` int(11) DEFAULT NULL,
  `isys_layer2_iphelper_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_layer2_iphelper_type__property` int(11) DEFAULT '0',
  `isys_layer2_iphelper_type__status` int(11) DEFAULT NULL,
  PRIMARY KEY (`isys_layer2_iphelper_type__id`),
  KEY `isys_layer2_iphelper_type__title` (`isys_layer2_iphelper_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_layer2_iphelper_type` VALUES (1,'ip-helper-address',NULL,NULL,NULL,NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_layer2_net_subtype` (
  `isys_layer2_net_subtype__id` int(11) NOT NULL AUTO_INCREMENT,
  `isys_layer2_net_subtype__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_layer2_net_subtype__description` text COLLATE utf8_unicode_ci,
  `isys_layer2_net_subtype__sort` int(11) DEFAULT NULL,
  `isys_layer2_net_subtype__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_layer2_net_subtype__property` int(11) DEFAULT '0',
  `isys_layer2_net_subtype__status` int(11) DEFAULT NULL,
  PRIMARY KEY (`isys_layer2_net_subtype__id`),
  KEY `isys_layer2_net_subtype__title` (`isys_layer2_net_subtype__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_layer2_net_subtype` VALUES (1,'LC__LAYER2_NET__SUBTYPE__STATIC_VLAN',NULL,NULL,'C__CATS__LAYER2_NET__SUBTYPE__STATIC_VLAN',0,2);
INSERT INTO `isys_layer2_net_subtype` VALUES (2,'LC__LAYER2_NET__SUBTYPE__DYNAMIC_VLAN',NULL,NULL,'C__CATS__LAYER2_NET__SUBTYPE__DYNAMIC_VLAN',0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_layer2_net_type` (
  `isys_layer2_net_type__id` int(11) NOT NULL AUTO_INCREMENT,
  `isys_layer2_net_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_layer2_net_type__description` text COLLATE utf8_unicode_ci,
  `isys_layer2_net_type__sort` int(11) DEFAULT NULL,
  `isys_layer2_net_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_layer2_net_type__property` int(11) DEFAULT '0',
  `isys_layer2_net_type__status` int(11) DEFAULT NULL,
  PRIMARY KEY (`isys_layer2_net_type__id`),
  KEY `isys_layer2_net_type__title` (`isys_layer2_net_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_layer2_net_type` VALUES (1,'LC__LAYER2_NET__TYPE_VLAN',NULL,NULL,'C__LAYER2_NET__TYPE_VLAN',0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_ldap` (
  `isys_ldap__id` int(10) NOT NULL AUTO_INCREMENT,
  `isys_ldap__isys_ldap_directory__id` int(10) DEFAULT NULL,
  `isys_ldap__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_ldap__active` int(10) NOT NULL,
  `isys_ldap__hostname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_ldap__port` int(10) NOT NULL,
  `isys_ldap__dn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_ldap__password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_ldap__user_search` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_ldap__group_search` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_ldap__filter` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_ldap__timelimit` int(10) NOT NULL,
  `isys_ldap__tls` int(10) NOT NULL,
  `isys_ldap__version` int(10) NOT NULL,
  `isys_ldap__recursive` int(10) NOT NULL,
  `isys_ldap__sort` int(10) NOT NULL,
  `isys_ldap__status` int(10) NOT NULL,
  `isys_ldap__filter_array` text COLLATE utf8_unicode_ci,
  `isys_ldap__use_admin_only` int(1) unsigned DEFAULT '0',
  `isys_ldap__enable_paging` tinyint(1) unsigned DEFAULT '0',
  `isys_ldap__page_limit` int(10) unsigned DEFAULT '500',
  PRIMARY KEY (`isys_ldap__id`),
  KEY `isys_ldap__isys_ldap_directory__id` (`isys_ldap__isys_ldap_directory__id`),
  CONSTRAINT `isys_ldap_ibfk_1` FOREIGN KEY (`isys_ldap__isys_ldap_directory__id`) REFERENCES `isys_ldap_directory` (`isys_ldap_directory__id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_ldap_directory` (
  `isys_ldap_directory__id` int(10) NOT NULL AUTO_INCREMENT,
  `isys_ldap_directory__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_ldap_directory__mapping` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_ldap_directory__const` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_ldap_directory__sort` int(10) NOT NULL,
  `isys_ldap_directory__status` int(10) NOT NULL,
  `isys_ldap_directory__property` int(10) NOT NULL,
  PRIMARY KEY (`isys_ldap_directory__id`),
  KEY `isys_ldap_directory__title` (`isys_ldap_directory__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_ldap_directory` VALUES (1,'Active Directory','a:6:{i:0;s:8:\"memberof\";i:1;s:11:\"objectClass\";i:2;s:9:\"givenName\";i:3;s:2:\"sn\";i:4;s:4:\"mail\";i:5;s:14:\"sAMAccountName\";}','C__LDAP__AD',1,2,0);
INSERT INTO `isys_ldap_directory` VALUES (2,'Novell Directory Services','a:6:{i:0;s:15:\"groupMembership\";i:1;s:11:\"objectClass\";i:2;s:9:\"givenName\";i:3;s:2:\"sn\";i:4;s:4:\"mail\";i:5;s:2:\"cn\";}','C__LDAP__NDS',2,2,0);
INSERT INTO `isys_ldap_directory` VALUES (3,'Open LDAP','a:6:{i:0;s:9:\"memberUid\";i:1;s:11:\"objectClass\";i:2;s:9:\"givenname\";i:3;s:2:\"sn\";i:4;s:4:\"mail\";i:5;s:3:\"uid\";}','C__LDAP__OPENLDAP',2,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_ldev_multipath` (
  `isys_ldev_multipath__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_ldev_multipath__title` varchar(255) NOT NULL,
  `isys_ldev_multipath__description` text,
  `isys_ldev_multipath__const` varchar(255) DEFAULT NULL,
  `isys_ldev_multipath__sort` int(10) unsigned DEFAULT NULL,
  `isys_ldev_multipath__status` int(10) unsigned NOT NULL DEFAULT '2',
  `isys_ldev_multipath__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_ldev_multipath__id`),
  KEY `isys_ldev_multipath__title` (`isys_ldev_multipath__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_ldev_multipath` VALUES (1,'LC__LDEV_MULTIPATH__ROUND_ROBIN',NULL,NULL,NULL,2,0);
INSERT INTO `isys_ldev_multipath` VALUES (2,'LC__LDEV_MULTIPATH__FAIL_OVER',NULL,NULL,NULL,2,0);
INSERT INTO `isys_ldev_multipath` VALUES (3,'LC__LDEV_MULTIPATH__FAIL_BACK',NULL,NULL,NULL,2,0);
INSERT INTO `isys_ldev_multipath` VALUES (4,'LC__LDEV_MULTIPATH__WEIGHTED_PATH',NULL,NULL,NULL,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_ldevclient_fc_port_path` (
  `isys_ldevclient_fc_port_path__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_ldevclient_fc_port_path__isys_catg_ldevclient_list__id` int(10) unsigned NOT NULL,
  `isys_ldevclient_fc_port_path__isys_catg_fc_port_list__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_ldevclient_fc_port_path__id`),
  KEY `isys_ldevclient_fc_port_path__isys_catg_ldevclient_list__id` (`isys_ldevclient_fc_port_path__isys_catg_ldevclient_list__id`),
  KEY `isys_ldevclient_fc_port_path__isys_catg_fc_port_list__id` (`isys_ldevclient_fc_port_path__isys_catg_fc_port_list__id`),
  CONSTRAINT `isys_ldevclient_fc_port_path_ibfk_1` FOREIGN KEY (`isys_ldevclient_fc_port_path__isys_catg_ldevclient_list__id`) REFERENCES `isys_catg_ldevclient_list` (`isys_catg_ldevclient_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_ldevclient_fc_port_path_ibfk_2` FOREIGN KEY (`isys_ldevclient_fc_port_path__isys_catg_fc_port_list__id`) REFERENCES `isys_catg_fc_port_list` (`isys_catg_fc_port_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_lock` (
  `isys_lock__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_lock__isys_user_session__id` int(10) unsigned NOT NULL,
  `isys_lock__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_lock__datetime` datetime NOT NULL,
  `isys_lock__table_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_lock__table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_lock__table_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_lock__field_value` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_lock__id`),
  KEY `isys_lock__isys_user_session__id` (`isys_lock__isys_user_session__id`),
  KEY `isys_lock__isys_obj__id` (`isys_lock__isys_obj__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_logbook` (
  `isys_logbook__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_logbook__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_logbook__isys_logbook_event__id` int(10) unsigned DEFAULT NULL,
  `isys_logbook__isys_logbook_level__id` int(10) unsigned DEFAULT NULL,
  `isys_logbook__isys_logbook_source__id` int(10) unsigned DEFAULT NULL,
  `isys_logbook__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook__description` text COLLATE utf8_unicode_ci,
  `isys_logbook__comment` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_logbook__changes` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_logbook__date` datetime DEFAULT NULL,
  `isys_logbook__status` int(10) unsigned DEFAULT '1',
  `isys_logbook__property` int(10) unsigned DEFAULT '0',
  `isys_logbook__user_name_static` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook__event_static` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_logbook__obj_name_static` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook__category_static` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook__entry_identifier_static` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook__obj_type_static` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook__isys_logbook_reason__id` int(10) unsigned DEFAULT NULL,
  `isys_logbook__changecount` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_logbook__id`),
  KEY `isys_logbook_FKIndex2` (`isys_logbook__isys_logbook_source__id`),
  KEY `isys_logbook_FKIndex3` (`isys_logbook__isys_logbook_level__id`),
  KEY `isys_logbook_FKIndex4` (`isys_logbook__isys_logbook_event__id`),
  KEY `isys_logbook__isys_obj__id` (`isys_logbook__isys_obj__id`),
  KEY `isys_logbook_ibfk_5` (`isys_logbook__isys_logbook_reason__id`),
  CONSTRAINT `isys_logbook_ibfk_2` FOREIGN KEY (`isys_logbook__isys_logbook_source__id`) REFERENCES `isys_logbook_source` (`isys_logbook_source__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_logbook_ibfk_3` FOREIGN KEY (`isys_logbook__isys_logbook_level__id`) REFERENCES `isys_logbook_level` (`isys_logbook_level__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_logbook_ibfk_4` FOREIGN KEY (`isys_logbook__isys_logbook_event__id`) REFERENCES `isys_logbook_event` (`isys_logbook_event__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_logbook_ibfk_5` FOREIGN KEY (`isys_logbook__isys_logbook_reason__id`) REFERENCES `isys_logbook_reason` (`isys_logbook_reason__id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_logbook_2_isys_import` (
  `isys_logbook_2_isys_import__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_logbook_2_isys_import__isys_logbook__id` int(10) unsigned DEFAULT NULL,
  `isys_logbook_2_isys_import__isys_import__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_logbook_2_isys_import__id`),
  KEY `isys_logbook_2_isys_import__isys_logbook__id` (`isys_logbook_2_isys_import__isys_logbook__id`),
  KEY `isys_logbook_2_isys_import__isys_import__id` (`isys_logbook_2_isys_import__isys_import__id`),
  CONSTRAINT `isys_logbook_2_isys_import__isys_import__id` FOREIGN KEY (`isys_logbook_2_isys_import__isys_import__id`) REFERENCES `isys_import` (`isys_import__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_logbook_2_isys_import__isys_logbook__id` FOREIGN KEY (`isys_logbook_2_isys_import__isys_logbook__id`) REFERENCES `isys_logbook` (`isys_logbook__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_logbook_archive` (
  `isys_logbook_archive__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_logbook_archive__interval` int(5) unsigned NOT NULL DEFAULT '90',
  `isys_logbook_archive__destination` int(2) unsigned NOT NULL DEFAULT '0',
  `isys_logbook_archive__host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_logbook_archive__port` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_logbook_archive__db` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_logbook_archive__user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_logbook_archive__pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`isys_logbook_archive__id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_logbook_archive` VALUES (1,90,0,'','','','','');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_logbook_configuration` (
  `isys_logbook_configuration__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_logbook_configuration__status` int(10) NOT NULL DEFAULT '2',
  `isys_logbook_configuration__type` tinyint(1) unsigned DEFAULT '0',
  `isys_logbook_configuration__placeholder_string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_logbook_configuration__id`),
  KEY `isys_logbook_configuration__status` (`isys_logbook_configuration__status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_logbook_event` (
  `isys_logbook_event__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_logbook_event__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook_event__description` text COLLATE utf8_unicode_ci,
  `isys_logbook_event__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook_event__sort` int(10) unsigned DEFAULT NULL,
  `isys_logbook_event__class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook_event__property` int(10) unsigned DEFAULT NULL,
  `isys_logbook_event__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_logbook_event__id`),
  KEY `isys_logbook_event__title` (`isys_logbook_event__title`),
  KEY `isys_logbook_event__const` (`isys_logbook_event__const`),
  KEY `isys_logbook_event__status` (`isys_logbook_event__status`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_logbook_event` VALUES (1,'LC__LOGBOOK_ENTRY__OBJECTTYPE_DELETED_PERMANENTLY','cmdb objecttype was physically deleted (purged)!!!\r\r\nthis is only possible in exceptional cases (not ITIL conform)','C__LOGBOOK_EVENT__OBJECTTYPE_PURGED',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (2,'LC__LOGBOOK_ENTRY__OBJECTTYPE_DELETED','cmdb objecttype was archived','C__LOGBOOK_EVENT__OBJECTTYPE_ARCHIVED',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (3,'LC__LOGBOOK_ENTRY__OBJECTTYPE_RECYCLED','cmdb objecttype was recycled','C__LOGBOOK_EVENT__OBJECTTYPE_RECYCLED',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (4,'LC__LOGBOOK_ENTRY__OBJECTTYPE_CHANGED','cmdb objecttype was changed','C__LOGBOOK_EVENT__OBJECTTYPE_CHANGED',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (5,'LC__LOGBOOK_ENTRY__OBJECTTYPE_CREATED','cmdb objecttype was created','C__LOGBOOK_EVENT__OBJECTTYPE_CREATED',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (6,'LC__LOGBOOK_ENTRY__OBJECT_DELETED_PERMANENTLY','cmdb object was physically deleted (purged)!!!\r\r\nthis is only possible in exceptional cases (not ITIL conform)','C__LOGBOOK_EVENT__OBJECT_PURGED',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (7,'LC__LOGBOOK_ENTRY__OBJECT_DELETED','cmdb object was archived','C__LOGBOOK_EVENT__OBJECT_ARCHIVED',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (8,'LC__LOGBOOK_ENTRY__OBJECT_RECYCLED','cmdb object was recycled','C__LOGBOOK_EVENT__OBJECT_RECYCLED',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (9,'LC__LOGBOOK_ENTRY__OBJECT_CHANGED','cmdb object was changed','C__LOGBOOK_EVENT__OBJECT_CHANGED',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (10,'LC__LOGBOOK_ENTRY__OBJECT_CREATED','cmdb object was created','C__LOGBOOK_EVENT__OBJECT_CREATED',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (11,'LC__LOGBOOK_ENTRY__OBJECTTYPE_DELETED_PERMANENTLY__NOT','cmdb objecttype could not be deleted','C__LOGBOOK_EVENT__OBJECTTYPE_PURGED__NOT',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (12,'LC__LOGBOOK_ENTRY__OBJECTTYPE_DELETED__NOT','cmdb objecttype could not be archived','C__LOGBOOK_EVENT__OBJECTTYPE_ARCHIVED__NOT',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (13,'LC__LOGBOOK_ENTRY__OBJECTTYPE_RECYCLED__NOT','cmdb objecttype could not be recycled','C__LOGBOOK_EVENT__OBJECTTYPE_RECYCLED__NOT',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (14,'LC__LOGBOOK_ENTRY__OBJECTTYPE_CHANGED__NOT','cmdb objecttype could not be changed','C__LOGBOOK_EVENT__OBJECTTYPE_CHANGED__NOT',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (15,'LC__LOGBOOK_ENTRY__OBJECTTYPE_CREATED__NOT','cmdb objecttype could not be created','C__LOGBOOK_EVENT__OBJECTTYPE_CREATED__NOT',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (16,'LC__LOGBOOK_ENTRY__OBJECT_DELETED_PERMANENTLY__NOT','cmdb object could not be deleted physically','C__LOGBOOK_EVENT__OBJECT_PURGED__NOT',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (17,'LC__LOGBOOK_ENTRY__OBJECT_DELETED__NOT','cmdb object could not be archived','C__LOGBOOK_EVENT__OBJECT_ARCHIVED__NOT',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (18,'LC__LOGBOOK_ENTRY__OBJECT_RECYCLED__NOT','cmdb object could not be recycled','C__LOGBOOK_EVENT__OBJECT_RECYCLED__NOT',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (19,'LC__LOGBOOK_ENTRY__OBJECT_CHANGED__NOT','cmdb object could not be changed','C__LOGBOOK_EVENT__OBJECT_CHANGED__NOT',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (20,'LC__LOGBOOK_ENTRY__OBJECT_CREATED__NOT','cmdb object could not be created','C__LOGBOOK_EVENT__OBJECT_CREATED__NOT',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (21,'LC__LOGBOOK_ENTRY__POBJECT_FEMALE_SOCKET_CREATED__NOT','female socket could not be created','C__LOGBOOK_EVENT__POBJECT_FEMALE_SOCKET_CREATED__NOT',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (22,'LC__LOGBOOK_ENTRY__POBJECT_MALE_PLUG_CREATED__NOT','male plug could not be created','C__LOGBOOK_EVENT__POBJECT_MALE_PLUG_CREATED__NOT',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (1000,'LC__LOGBOOK_ENTRY__CATEGORY_PURGED','','C__LOGBOOK_EVENT__CATEGORY_PURGED',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (1001,'LC__LOGBOOK_ENTRY__CATEGORY_CHANGED','','C__LOGBOOK_EVENT__CATEGORY_CHANGED',NULL,NULL,NULL,NULL);
INSERT INTO `isys_logbook_event` VALUES (1002,'LC__LOGBOOK_ENTRY__CATEGORY_ARCHIVED','','C__LOGBOOK_EVENT__CATEGORY_ARCHIVED',NULL,NULL,NULL,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_logbook_event_class` (
  `isys_logbook_event_class__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_logbook_event_class__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook_event_class__description` text COLLATE utf8_unicode_ci,
  `isys_logbook_event_class__status` int(10) unsigned DEFAULT NULL,
  `isys_logbook_event_class__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_logbook_event_class__id`),
  KEY `isys_logbook_event_class__title` (`isys_logbook_event_class__title`),
  KEY `isys_logbook_event_class__status` (`isys_logbook_event_class__status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_logbook_lc_parameter` (
  `isys_logbook_lc_parameter__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_logbook_lc_parameter__isys_logbook__id` int(10) unsigned NOT NULL,
  `isys_logbook_lc_parameter__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook_lc_parameter__description` text COLLATE utf8_unicode_ci,
  `isys_logbook_lc_parameter__key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook_lc_parameter__value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook_lc_parameter__status` int(10) unsigned DEFAULT NULL,
  `isys_logbook_lc_parameter__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_logbook_lc_parameter__id`),
  KEY `isys_logbook_lc_parameter_FKIndex1` (`isys_logbook_lc_parameter__isys_logbook__id`),
  KEY `isys_logbook_lc_parameter__title` (`isys_logbook_lc_parameter__title`),
  KEY `isys_logbook_lc_parameter__key` (`isys_logbook_lc_parameter__key`),
  KEY `isys_logbook_lc_parameter__status` (`isys_logbook_lc_parameter__status`),
  CONSTRAINT `isys_logbook_lc_parameter_ibfk_1` FOREIGN KEY (`isys_logbook_lc_parameter__isys_logbook__id`) REFERENCES `isys_logbook` (`isys_logbook__id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_logbook_level` (
  `isys_logbook_level__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_logbook_level__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook_level__description` text COLLATE utf8_unicode_ci,
  `isys_logbook_level__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook_level__css` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook_level__sort` int(10) unsigned DEFAULT NULL,
  `isys_logbook_level__property` int(10) unsigned DEFAULT '0',
  `isys_logbook_level__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_logbook_level__id`),
  KEY `isys_logbook_level__title` (`isys_logbook_level__title`),
  KEY `isys_logbook_level__const` (`isys_logbook_level__const`),
  KEY `isys_logbook_level__status` (`isys_logbook_level__status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_logbook_level` VALUES (1,'LC__CMDB__LOGBOOK__ALERT_LEVEL_0','blue','C__LOGBOOK__ALERT_LEVEL__0',NULL,1,0,1);
INSERT INTO `isys_logbook_level` VALUES (2,'LC__CMDB__LOGBOOK__ALERT_LEVEL_1','green','C__LOGBOOK__ALERT_LEVEL__1',NULL,2,0,1);
INSERT INTO `isys_logbook_level` VALUES (3,'LC__CMDB__LOGBOOK__ALERT_LEVEL_2','yellow','C__LOGBOOK__ALERT_LEVEL__2',NULL,3,0,1);
INSERT INTO `isys_logbook_level` VALUES (4,'LC__CMDB__LOGBOOK__ALERT_LEVEL_3','red','C__LOGBOOK__ALERT_LEVEL__3',NULL,4,0,1);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_logbook_reason` (
  `isys_logbook_reason__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_logbook_reason__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook_reason__description` text COLLATE utf8_unicode_ci,
  `isys_logbook_reason__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook_reason__sort` int(10) unsigned DEFAULT '5',
  `isys_logbook_reason__status` int(10) unsigned DEFAULT '2',
  `isys_logbook_reason__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_logbook_reason__id`),
  KEY `isys_logbook_reason__title` (`isys_logbook_reason__title`),
  KEY `isys_logbook_reason__const` (`isys_logbook_reason__const`),
  KEY `isys_logbook_reason__status` (`isys_logbook_reason__status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_logbook_source` (
  `isys_logbook_source__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_logbook_source__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook_source__description` text COLLATE utf8_unicode_ci,
  `isys_logbook_source__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_logbook_source__property` int(10) unsigned DEFAULT '0',
  `isys_logbook_source__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_logbook_source__id`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_logbook_source` VALUES (1,'LC__CMDB__LOGBOOK__SOURCE__INTERNAL','internal logbook message','C__LOGBOOK_SOURCE__INTERNAL',0,1);
INSERT INTO `isys_logbook_source` VALUES (2,'LC__CMDB__LOGBOOK__SOURCE__EXTERNAL','external logbook message','C__LOGBOOK_SOURCE__EXTERNAL',0,1);
INSERT INTO `isys_logbook_source` VALUES (3,'LC__CMDB__LOGBOOK__SOURCE__MANUAL_ENTRIES','user defined logbook message','C__LOGBOOK_SOURCE__USER',0,1);
INSERT INTO `isys_logbook_source` VALUES (4,'LC__CMDB__LOGBOOK__SOURCE__ALL',NULL,'C__LOGBOOK_SOURCE__ALL',0,1);
INSERT INTO `isys_logbook_source` VALUES (1001,'RT Ticket','','C__LOGBOOK_SOURCE__RT',0,1);
INSERT INTO `isys_logbook_source` VALUES (1004,'JDisc Import','Identifier where the changes are from','C__LOGBOOK_SOURCE__JDISC',0,2);
INSERT INTO `isys_logbook_source` VALUES (1005,'Import','Identifier for the import.','C__LOGBOOK_SOURCE__IMPORT',0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_maintenance_contract_type` (
  `isys_maintenance_contract_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_maintenance_contract_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_maintenance_contract_type__description` text COLLATE utf8_unicode_ci,
  `isys_maintenance_contract_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_maintenance_contract_type__sort` int(10) unsigned DEFAULT '5',
  `isys_maintenance_contract_type__property` int(10) unsigned DEFAULT '0',
  `isys_maintenance_contract_type__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_maintenance_contract_type__id`),
  KEY `isys_maintenance_contract_type__title` (`isys_maintenance_contract_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_maintenance_contract_type` VALUES (1,'LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_AGREEMENT_GUARANTEE',NULL,'C__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_AGREEMENT_GUARANTEE',1,0,2);
INSERT INTO `isys_maintenance_contract_type` VALUES (2,'LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_MAINTENANCE','LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_MAINTENANCE','C__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_MAINTENANCE',2,0,2);
INSERT INTO `isys_maintenance_contract_type` VALUES (3,'LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_LEASING','LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_LEASING','C__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_LEASING',3,0,2);
INSERT INTO `isys_maintenance_contract_type` VALUES (4,'LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_LEASING_WITH_MAINTENANCE','LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_LEASING_WITH_MAINTENANCE','C__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_LEASING_WITH_MAINTENANCE',4,0,2);
INSERT INTO `isys_maintenance_contract_type` VALUES (5,'LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_LICENSE','LC__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_LICENSE','C__CMDB__CATS__MAINTENANCE_CONTRACT_TYPE_LICENSE',5,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_maintenance_reaction_rate` (
  `isys_maintenance_reaction_rate__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_maintenance_reaction_rate__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_maintenance_reaction_rate__description` text COLLATE utf8_unicode_ci,
  `isys_maintenance_reaction_rate__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_maintenance_reaction_rate__sort` int(10) unsigned DEFAULT '5',
  `isys_maintenance_reaction_rate__property` int(10) unsigned DEFAULT '0',
  `isys_maintenance_reaction_rate__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_maintenance_reaction_rate__id`),
  KEY `isys_maintenance_reaction_rate__title` (`isys_maintenance_reaction_rate__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_maintenance_reaction_rate` VALUES (1,'8x5x4','8x5x4','C__MAINTENANCE_REACTION_RATE__8x5x4',0,0,2);
INSERT INTO `isys_maintenance_reaction_rate` VALUES (2,'24x7x4','24x7x4','C__MAINTENANCE_REACTION_RATE__24x7x4',0,0,2);
INSERT INTO `isys_maintenance_reaction_rate` VALUES (3,'LC__UNIVERSAL__OTHER','Andere / Other','C__MAINTENANCE_REACTION_RATE__OTHER',0,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_maintenance_status` (
  `isys_maintenance_status__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_maintenance_status__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_maintenance_status__description` text COLLATE utf8_unicode_ci,
  `isys_maintenance_status__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_maintenance_status__sort` int(10) unsigned DEFAULT '5',
  `isys_maintenance_status__property` int(10) unsigned DEFAULT '0',
  `isys_maintenance_status__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_maintenance_status__id`),
  KEY `isys_maintenance_status__title` (`isys_maintenance_status__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_maintenance_status` VALUES (1,'LC__CMDB__CATS__MAINTENANCE_STATUS_ACTIVE',NULL,'C__CMDB__CATS__MAINTENANCE_STATUS_ACTIVE',1,0,2);
INSERT INTO `isys_maintenance_status` VALUES (2,'LC__CMDB__CATS__MAINTENANCE_STATUS_TERMINATED',NULL,'C__CMDB__CATS__MAINTENANCE_STATUS_TERMINATED',2,0,2);
INSERT INTO `isys_maintenance_status` VALUES (3,'LC__CMDB__CATS__MAINTENANCE_STATUS_FINISHED',NULL,'C__CMDB__CATS__MAINTENANCE_STATUS_FINISHED',3,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_memory_manufacturer` (
  `isys_memory_manufacturer__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_memory_manufacturer__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_memory_manufacturer__description` text COLLATE utf8_unicode_ci,
  `isys_memory_manufacturer__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_memory_manufacturer__sort` int(10) unsigned DEFAULT NULL,
  `isys_memory_manufacturer__status` int(10) unsigned DEFAULT '2',
  `isys_memory_manufacturer__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_memory_manufacturer__id`),
  KEY `isys_memory_manufacturer__title` (`isys_memory_manufacturer__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_memory_manufacturer` VALUES (1,'Kingston',NULL,NULL,1,2,NULL);
INSERT INTO `isys_memory_manufacturer` VALUES (2,'Infineon',NULL,NULL,2,2,NULL);
INSERT INTO `isys_memory_manufacturer` VALUES (3,'Transcend',NULL,NULL,3,2,NULL);
INSERT INTO `isys_memory_manufacturer` VALUES (4,'Samsung',NULL,NULL,4,2,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_memory_title` (
  `isys_memory_title__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_memory_title__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_memory_title__description` text COLLATE utf8_unicode_ci,
  `isys_memory_title__sort` int(10) unsigned DEFAULT NULL,
  `isys_memory_title__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_memory_title__status` int(10) unsigned DEFAULT '2',
  `isys_memory_title__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_memory_title__id`),
  KEY `isys_memory_title__title` (`isys_memory_title__title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_memory_title` VALUES (1,'DDRAM',NULL,1,NULL,2,NULL);
INSERT INTO `isys_memory_title` VALUES (2,'SDRAM',NULL,2,NULL,2,NULL);
INSERT INTO `isys_memory_title` VALUES (3,'Flash',NULL,3,NULL,2,NULL);
INSERT INTO `isys_memory_title` VALUES (4,'MemoryStick',NULL,4,NULL,2,NULL);
INSERT INTO `isys_memory_title` VALUES (5,'NVRAM',NULL,5,NULL,2,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_memory_type` (
  `isys_memory_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_memory_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_memory_type__description` text COLLATE utf8_unicode_ci,
  `isys_memory_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_memory_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_memory_type__status` int(10) unsigned DEFAULT '2',
  `isys_memory_type__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_memory_type__id`),
  KEY `isys_memory_type__title` (`isys_memory_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_memory_type` VALUES (1,'DDR',NULL,NULL,NULL,2,NULL);
INSERT INTO `isys_memory_type` VALUES (2,'DDR2',NULL,NULL,NULL,2,NULL);
INSERT INTO `isys_memory_type` VALUES (3,'DDR3',NULL,NULL,NULL,2,NULL);
INSERT INTO `isys_memory_type` VALUES (4,'SDRAM',NULL,NULL,NULL,2,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_memory_unit` (
  `isys_memory_unit__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_memory_unit__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_memory_unit__description` text COLLATE utf8_unicode_ci,
  `isys_memory_unit__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_memory_unit__factor` bigint(32) DEFAULT NULL,
  `isys_memory_unit__sort` int(10) unsigned DEFAULT '5',
  `isys_memory_unit__status` int(10) unsigned DEFAULT '2',
  `isys_memory_unit__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_memory_unit__id`),
  KEY `isys_memory_unit__title` (`isys_memory_unit__title`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_memory_unit` VALUES (1,'KB',NULL,'C__MEMORY_UNIT__KB',1024,5,2,0);
INSERT INTO `isys_memory_unit` VALUES (2,'MB',NULL,'C__MEMORY_UNIT__MB',1048576,5,2,0);
INSERT INTO `isys_memory_unit` VALUES (3,'GB',NULL,'C__MEMORY_UNIT__GB',1073741824,5,2,0);
INSERT INTO `isys_memory_unit` VALUES (4,'TB',NULL,'C__MEMORY_UNIT__TB',1099511627776,5,2,0);
INSERT INTO `isys_memory_unit` VALUES (1000,'B',NULL,'C__MEMORY_UNIT__B',8,1,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_migration` (
  `isys_migration__id` int(10) NOT NULL AUTO_INCREMENT,
  `isys_migration__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_migration__version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_migration__done` int(10) NOT NULL,
  PRIMARY KEY (`isys_migration__id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_migration` VALUES (1,'ac_isys_ac_refrigerating_capacity_unit','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (2,'accounting_guarantee_period','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (3,'cpu_frequency','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (4,'drive_memory_unit','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (5,'drive_capacity','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (6,'emergency_plan_calc_time_needed','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (7,'formfactor_unit','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (8,'ac_units','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (9,'graphic_memory','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (10,'memory_capacity','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (11,'monitor_unit','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (12,'port_speed','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (13,'san_isys_stor_unit','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (14,'san_pool_unit','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (15,'san_pool_capacity','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (16,'stor_memory_unit','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (17,'stor_device_capacity','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (18,'wan_isys_wan_capacity_unit','0.9.8-2',1);
INSERT INTO `isys_migration` VALUES (19,'catd_distributor','0.9.9',1);
INSERT INTO `isys_migration` VALUES (20,'catg_distributor','0.9.9',1);
INSERT INTO `isys_migration` VALUES (21,'cats_distributor','0.9.9',1);
INSERT INTO `isys_migration` VALUES (22,'dialogplus','0.9.9',1);
INSERT INTO `isys_migration` VALUES (23,'log_interface','0.9.9',1);
INSERT INTO `isys_migration` VALUES (24,'cats_pobj','0.9.9',1);
INSERT INTO `isys_migration` VALUES (25,'interfaces_2_cabling','0.9.9-1',1);
INSERT INTO `isys_migration` VALUES (26,'fc_port_cable_connections','0.9.9-1',1);
INSERT INTO `isys_migration` VALUES (27,'port_cable_connections','0.9.9-1',1);
INSERT INTO `isys_migration` VALUES (28,'ui_cable_connections','0.9.9-1',1);
INSERT INTO `isys_migration` VALUES (29,'power_objects','0.9.9-2',1);
INSERT INTO `isys_migration` VALUES (30,'power_object_connections','0.9.9-2',1);
INSERT INTO `isys_migration` VALUES (31,'old_power_object_deletion','0.9.9-2',1);
INSERT INTO `isys_migration` VALUES (32,'power_object_new_cable_types','0.9.9-2',1);
INSERT INTO `isys_migration` VALUES (33,'catg_hba','0.9.9-3',1);
INSERT INTO `isys_migration` VALUES (34,'contact','0.9.9-3',1);
INSERT INTO `isys_migration` VALUES (35,'licence_system','0.9.9-3',1);
INSERT INTO `isys_migration` VALUES (36,'mandator','0.9.9-3',1);
INSERT INTO `isys_migration` VALUES (37,'sanpoolAssignmets','0.9.9-3',1);
INSERT INTO `isys_migration` VALUES (41,'cpu_frequency','0.9.9-5',1);
INSERT INTO `isys_migration` VALUES (43,'virtual_devices','0.9.9-5',1);
INSERT INTO `isys_migration` VALUES (44,'relation_to_all_objectypes','0.9.9-6',1);
INSERT INTO `isys_migration` VALUES (45,'migration_database_instance','0.9.9-6',1);
INSERT INTO `isys_migration` VALUES (46,'migration_database_instance','0.9.9-6',1);
INSERT INTO `isys_migration` VALUES (47,'relpool_cluster','0.9.9-6',1);
INSERT INTO `isys_migration` VALUES (48,'relpool_cluster','0.9.9-6',1);
INSERT INTO `isys_migration` VALUES (49,'object_status','0.9.9-6',1);
INSERT INTO `isys_migration` VALUES (50,'object_status','0.9.9-6',1);
INSERT INTO `isys_migration` VALUES (51,'dependency','0.9.9-6',1);
INSERT INTO `isys_migration` VALUES (52,'dependency_fix_groups','0.9.9-6',1);
INSERT INTO `isys_migration` VALUES (53,'dependency_fix_groups','0.9.9-6',1);
INSERT INTO `isys_migration` VALUES (54,'add_it_service_components_relation','0.9.9-6',1);
INSERT INTO `isys_migration` VALUES (55,'add_it_service_components_relation','0.9.9-6',1);
INSERT INTO `isys_migration` VALUES (56,'fix_guarantee_period','0.9.9-6',1);
INSERT INTO `isys_migration` VALUES (57,'fix_guarantee_period','0.9.9-6',1);
INSERT INTO `isys_migration` VALUES (58,'fix_port_speed','0.9.9-6',1);
INSERT INTO `isys_migration` VALUES (59,'cats_subcategory_migration','0.9.9-6',1);
INSERT INTO `isys_migration` VALUES (60,'mobile_phone_modification','0.9.9-7',1);
INSERT INTO `isys_migration` VALUES (61,'orga_fix','0.9.9-7',1);
INSERT INTO `isys_migration` VALUES (62,'model_combination_migration','0.9.9-8',1);
INSERT INTO `isys_migration` VALUES (63,'net_ip_migration','0.9.9-8',1);
INSERT INTO `isys_migration` VALUES (64,'net_ip_migration_ipv6','0.9.9-8',1);
INSERT INTO `isys_migration` VALUES (65,'contract_migration','0.9.9-9',1);
INSERT INTO `isys_migration` VALUES (66,'data_model','0.9.9-9',1);
INSERT INTO `isys_migration` VALUES (67,'repair_ipv4_range_migration','0.9.9-9',1);
INSERT INTO `isys_migration` VALUES (68,'generic_template_update','0.9.9-9',1);
INSERT INTO `isys_migration` VALUES (69,'repair_obj_sysid','0.9.9-9',1);
INSERT INTO `isys_migration` VALUES (70,'contact_email','1.0',1);
INSERT INTO `isys_migration` VALUES (71,'contract_relation','1.0',1);
INSERT INTO `isys_migration` VALUES (72,'new_currency_table_migration','1.0',1);
INSERT INTO `isys_migration` VALUES (73,'rack_sort_and_vslot_migration','1.0',1);
INSERT INTO `isys_migration` VALUES (74,'assign_categories_2_blade_server','1.0',1);
INSERT INTO `isys_migration` VALUES (75,'migrate_ldevclient_property_hba','1.0',1);
INSERT INTO `isys_migration` VALUES (76,'remove_unassigned_ip_relations','1.0',1);
INSERT INTO `isys_migration` VALUES (77,'connector_relation_update','1.1',1);
INSERT INTO `isys_migration` VALUES (78,'new_right_system','1.1',1);
INSERT INTO `isys_migration` VALUES (79,'new_dashboard','1.2',1);
INSERT INTO `isys_migration` VALUES (80,'dashboard_rights','1.2',1);
INSERT INTO `isys_migration` VALUES (81,'config','1.3',1);
INSERT INTO `isys_migration` VALUES (82,'migration_building_to_address','1.3',1);
INSERT INTO `isys_migration` VALUES (83,'migration_cluster_administration_service','1.4',1);
INSERT INTO `isys_migration` VALUES (84,'migration_auth_report2','1.4',1);
INSERT INTO `isys_migration` VALUES (85,'physical_filename_migration','1.4',1);
INSERT INTO `isys_migration` VALUES (86,'migration_cats_cable_to_catg_cable','1.4',1);
INSERT INTO `isys_migration` VALUES (87,'migration_auth_check_mk','1.4',1);
INSERT INTO `isys_migration` VALUES (88,'duplicated_apps','1.5',1);
INSERT INTO `isys_migration` VALUES (89,'migration_archive_rights','1.5',1);
INSERT INTO `isys_migration` VALUES (90,'migration_cmdb_explorer_widget','1.5',1);
INSERT INTO `isys_migration` VALUES (91,'migration_contact_obj_list','1.5',1);
INSERT INTO `isys_migration` VALUES (92,'migration_csv_profiles','1.5',1);
INSERT INTO `isys_migration` VALUES (93,'migration_custom_field_constants','1.5',1);
INSERT INTO `isys_migration` VALUES (94,'migration_tenant_settings','1.5',1);
INSERT INTO `isys_migration` VALUES (95,'migration_logbook_archive_restore','1.5',1);
INSERT INTO `isys_migration` VALUES (96,'migration_service_to_application','1.6',1);
INSERT INTO `isys_migration` VALUES (97,'migration_exported_cmk_tags_language','1.6',1);
INSERT INTO `isys_migration` VALUES (98,'migration_jdisc_profile_update','1.6',1);
INSERT INTO `isys_migration` VALUES (99,'migration_wan_category','1.6',1);
INSERT INTO `isys_migration` VALUES (100,'migration_app_version_to_own_category','1.6',1);
INSERT INTO `isys_migration` VALUES (101,'migration_custom_categories_cleanup','1.6',1);
INSERT INTO `isys_migration` VALUES (102,'migration_file_relation','1.6',1);
INSERT INTO `isys_migration` VALUES (103,'migration_registry','1.7',1);
INSERT INTO `isys_migration` VALUES (104,'migration_search_index','1.7',1);
INSERT INTO `isys_migration` VALUES (105,'migration_stor_manufacturer_model','1.7',1);
INSERT INTO `isys_migration` VALUES (106,'migration_rebuild_location_relations','1.7',1);
INSERT INTO `isys_migration` VALUES (107,'migration_reset_object_list_cable','1.7',1);
INSERT INTO `isys_migration` VALUES (108,'migration_cleanup_identifier','1.7',1);
INSERT INTO `isys_migration` VALUES (109,'migration_primary_secondary_os','1.7',1);
INSERT INTO `isys_migration` VALUES (110,'migration_custom_description','1.7',1);
INSERT INTO `isys_migration` VALUES (111,'migration_search_index','1.7.2',1);
INSERT INTO `isys_migration` VALUES (112,'migration_search_index','1.7.3',1);
INSERT INTO `isys_migration` VALUES (113,'migration_notification_rebuild_report','1.7.3',1);
INSERT INTO `isys_migration` VALUES (114,'migration_search_index','1.7.4',1);
INSERT INTO `isys_migration` VALUES (115,'migration_notification_rebuild_report','1.7.4',1);
INSERT INTO `isys_migration` VALUES (116,'migration_dialog','1.8',1);
INSERT INTO `isys_migration` VALUES (117,'migration_csv_profiles','1.8',1);
INSERT INTO `isys_migration` VALUES (118,'object_type_lists','1.8',1);
INSERT INTO `isys_migration` VALUES (119,'relocate_ci_constant_error','1.8.2',1);
INSERT INTO `isys_migration` VALUES (120,'migration_search_index','1.8.2',1);
INSERT INTO `isys_migration` VALUES (121,'dns_domain_to_fqdn_pairs','1.9',1);
INSERT INTO `isys_migration` VALUES (122,'cleanup_relation_type_clustermemberships','1.9.3',1);
INSERT INTO `isys_migration` VALUES (123,'set_event_log_command','1.9.3',1);
INSERT INTO `isys_migration` VALUES (124,'set_logbook_event','1.9.3',1);
INSERT INTO `isys_migration` VALUES (125,'cleanup_relation_type_clustermemberships','1.9.4',1);
INSERT INTO `isys_migration` VALUES (126,'set_event_log_command','1.9.4',1);
INSERT INTO `isys_migration` VALUES (127,'set_logbook_event','1.9.4',1);
INSERT INTO `isys_migration` VALUES (128,'cleanup_relation_type_clustermemberships','1.10',1);
INSERT INTO `isys_migration` VALUES (129,'migrate_handler_rights_for_commands','1.10',1);
INSERT INTO `isys_migration` VALUES (130,'set_event_log_command','1.10',1);
INSERT INTO `isys_migration` VALUES (131,'set_logbook_event','1.10',1);
INSERT INTO `isys_migration` VALUES (132,'power_migration','1.10.2',1);
INSERT INTO `isys_migration` VALUES (133,'api_update_migration','1.12',1);
INSERT INTO `isys_migration` VALUES (134,'check_mk_update_migration','1.12',1);
INSERT INTO `isys_migration` VALUES (135,'nagios_update_migration','1.12',1);
INSERT INTO `isys_migration` VALUES (136,'workflow_update_migration','1.12',1);
INSERT INTO `isys_migration` VALUES (137,'legacy_license_migration','1.12.2',1);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_model_manufacturer` (
  `isys_model_manufacturer__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_model_manufacturer__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_model_manufacturer__description` text COLLATE utf8_unicode_ci,
  `isys_model_manufacturer__sort` int(10) unsigned DEFAULT '5',
  `isys_model_manufacturer__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_model_manufacturer__status` int(10) unsigned DEFAULT '1',
  `isys_model_manufacturer__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_model_manufacturer__id`),
  KEY `isys_model_manufacturer__title` (`isys_model_manufacturer__title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_model_manufacturer` VALUES (1,'LC__UNIVERSAL__NOT_SPECIFIED',NULL,NULL,'C__MODEL_NOT_SPECIFIED',2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_model_title` (
  `isys_model_title__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_model_title__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_model_title__description` text COLLATE utf8_unicode_ci,
  `isys_model_title__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_model_title__sort` int(10) unsigned DEFAULT NULL,
  `isys_model_title__status` int(10) unsigned DEFAULT NULL,
  `isys_model_title__property` int(10) unsigned DEFAULT NULL,
  `isys_model_title__isys_model_manufacturer__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_model_title__id`),
  UNIQUE KEY `unique_title` (`isys_model_title__title`,`isys_model_title__isys_model_manufacturer__id`),
  KEY `isys_model_title_ibfk1` (`isys_model_title__isys_model_manufacturer__id`),
  CONSTRAINT `isys_model_title_ibfk1` FOREIGN KEY (`isys_model_title__isys_model_manufacturer__id`) REFERENCES `isys_model_manufacturer` (`isys_model_manufacturer__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_module` (
  `isys_module__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_module__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_module__identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `isys_module__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_module__date_install` datetime DEFAULT NULL,
  `isys_module__class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_module__persistent` int(1) unsigned NOT NULL DEFAULT '0',
  `isys_module__status` int(10) unsigned DEFAULT '2',
  `isys_module__parent` int(10) unsigned DEFAULT NULL,
  `isys_module__icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_module__id`)
) ENGINE=InnoDB AUTO_INCREMENT=1023 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_module` VALUES (1,'Modulmanager','manager','C__MODULE__MANAGER',NOW(),'isys_module_manager',0,2,NULL,'images/icons/silk/brick.png');
INSERT INTO `isys_module` VALUES (2,'CMDB','cmdb','C__MODULE__CMDB',NOW(),'isys_module_cmdb',1,2,NULL,'images/icons/silk/database.png');
INSERT INTO `isys_module` VALUES (7,'LC__MODULE__LOGBOOK__TITLE','logbook','C__MODULE__LOGBOOK',NOW(),'isys_module_logbook',0,2,2,'images/icons/silk/book_open.png');
INSERT INTO `isys_module` VALUES (8,'LC__NAVIGATION__MAINMENU__TITLE_ADMINISTRATION','system','C__MODULE__SYSTEM',NOW(),'isys_module_system',0,2,NULL,'images/icons/silk/brick.png');
INSERT INTO `isys_module` VALUES (9,'LC__MODULE__USER_SETTINGS__TITLE','user_settings','C__MODULE__USER_SETTINGS',NOW(),'isys_module_user_settings',0,2,NULL,'images/icons/silk/brick.png');
INSERT INTO `isys_module` VALUES (10,'LC__MODULE__SEARCH__TITLE','search','C__MODULE__SEARCH',NOW(),'isys_module_search',1,2,2,'images/icons/silk/zoom.png');
INSERT INTO `isys_module` VALUES (11,'LC__MODULE__SYSTEM_SETTINGS__TITLE','system_settings','C__MODULE__SYSTEM_SETTINGS',NOW(),'isys_module_system_settings',0,2,NULL,'images/icons/silk/brick.png');
INSERT INTO `isys_module` VALUES (12,'Dialog-Admin','','C__MODULE__DIALOG_ADMIN',NOW(),'isys_module_dialog_admin',0,2,NULL,'images/icons/silk/brick.png');
INSERT INTO `isys_module` VALUES (50,'Import','import','C__MODULE__IMPORT',NOW(),'isys_module_import',0,2,2,'images/icons/silk/database_copy.png');
INSERT INTO `isys_module` VALUES (1002,'Export','export','C__MODULE__EXPORT',NOW(),'isys_module_export',0,2,2,'images/icons/silk/database_table.png');
INSERT INTO `isys_module` VALUES (1003,'Templates','templates','C__MODULE__TEMPLATES',NOW(),'isys_module_templates',1,2,2,'images/icons/silk/table_multiple.png');
INSERT INTO `isys_module` VALUES (1004,'LC__MODULE__REPORT__REPORT_MANAGER','reports','C__MODULE__REPORT',NOW(),'isys_module_report',1,2,NULL,'images/icons/silk/report.png');
INSERT INTO `isys_module` VALUES (1006,'LC__CMDB__CATG__CUSTOM_CATEGORY','custom_fields','C__MODULE__CUSTOM_FIELDS',NOW(),'isys_module_custom_fields',0,2,NULL,'images/icons/silk/brick.png');
INSERT INTO `isys_module` VALUES (1007,'LC__MODULE__TTS','tts','C__MODULE__TTS',NOW(),'isys_module_tts',1,2,NULL,'images/icons/silk/brick.png');
INSERT INTO `isys_module` VALUES (1008,'LC__MODULE__NOTIFICATIONS','notifications','C__MODULE__NOTIFICATIONS',NOW(),'isys_module_notifications',0,2,2,'images/icons/silk/email.png');
INSERT INTO `isys_module` VALUES (1009,'LC__MODULE__QCW','quick_configuration_wizard','C__MODULE__QCW',NOW(),'isys_module_quick_configuration_wizard',0,2,NULL,'images/icons/silk/brick.png');
INSERT INTO `isys_module` VALUES (1010,'Loginventory','loginventory','C__MODULE__LOGINVENTORY',NOW(),'isys_module_loginventory',0,2,NULL,'images/icons/silk/brick.png');
INSERT INTO `isys_module` VALUES (1011,'LDAP','ldap','C__MODULE__LDAP',NOW(),'isys_module_ldap',1,2,NULL,'images/icons/silk/brick.png');
INSERT INTO `isys_module` VALUES (1012,'LC__MODULE__AUTH','auth','C__MODULE__AUTH',NOW(),'isys_module_auth',0,2,NULL,'images/icons/silk/brick.png');
INSERT INTO `isys_module` VALUES (1013,'LC__MODULE__JDISC','jdisc','C__MODULE__JDISC',NOW(),'isys_module_jdisc',1,2,NULL,'images/icons/silk/brick.png');
INSERT INTO `isys_module` VALUES (1016,'LC__MODULE__DASHBOARD','dashboard','C__MODULE__DASHBOARD',NOW(),'isys_module_dashboard',0,2,NULL,'images/icons/silk/brick.png');
INSERT INTO `isys_module` VALUES (1018,'LC__MODULE__QRCODE','qrcode','C__MODULE__QRCODE',NOW(),'isys_module_qrcode',0,2,NULL,'images/icons/silk/brick.png');
INSERT INTO `isys_module` VALUES (1019,'LC__MONITORING','monitoring','C__MODULE__MONITORING',NOW(),'isys_module_monitoring',0,2,NULL,'images/icons/silk/brick.png');
INSERT INTO `isys_module` VALUES (1021,'LC__MODULE__ITSERVICE','itservice','C__MODULE__ITSERVICE',NOW(),'isys_module_itservice',0,2,NULL,'images/icons/silk/chart_pie.png');
INSERT INTO `isys_module` VALUES (1022,'LC__MODULE__MULTIEDIT','multiedit','C__MODULE__MULTIEDIT',NOW(),'isys_module_multiedit',1,2,2,'images/icons/silk/table_edit.png');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_module_sorting` (
  `isys_module_sorting__id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `isys_module_sorting__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_module_sorting__isys_module__id` int(10) unsigned DEFAULT NULL,
  `isys_module_sorting__sort` int(10) NOT NULL,
  PRIMARY KEY (`isys_module_sorting__id`),
  KEY `isys_module_sorting_ibfk_1` (`isys_module_sorting__isys_module__id`),
  CONSTRAINT `isys_module_sorting_ibfk_1` FOREIGN KEY (`isys_module_sorting__isys_module__id`) REFERENCES `isys_module` (`isys_module__id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_module_sorting` VALUES (1,'Templates',1003,1);
INSERT INTO `isys_module_sorting` VALUES (2,'LC__MASS_CHANGE',1003,2);
INSERT INTO `isys_module_sorting` VALUES (3,'LC__MULTIEDIT__MULTIEDIT',1022,3);
INSERT INTO `isys_module_sorting` VALUES (4,'LC__CMDB__CATG__RELATION',2,4);
INSERT INTO `isys_module_sorting` VALUES (5,'Import',50,5);
INSERT INTO `isys_module_sorting` VALUES (6,'Export',1002,6);
INSERT INTO `isys_module_sorting` VALUES (7,'LC__MODULE__LOGBOOK__TITLE',7,7);
INSERT INTO `isys_module_sorting` VALUES (8,'LC__MODULE__SEARCH__TITLE',10,8);
INSERT INTO `isys_module_sorting` VALUES (9,'LC__MODULE__NOTIFICATIONS',1008,9);
INSERT INTO `isys_module_sorting` VALUES (10,'LC__UNIVERSAL__REPORTS',1004,10);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_monitor_resolution` (
  `isys_monitor_resolution__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_monitor_resolution__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_monitor_resolution__description` text COLLATE utf8_unicode_ci,
  `isys_monitor_resolution__x` int(10) unsigned DEFAULT NULL,
  `isys_monitor_resolution__y` int(10) unsigned DEFAULT NULL,
  `isys_monitor_resolution__sort` int(10) unsigned DEFAULT '5',
  `isys_monitor_resolution__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_monitor_resolution__status` int(10) unsigned DEFAULT '1',
  `isys_monitor_resolution__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_monitor_resolution__id`),
  KEY `isys_monitor_resolution__title` (`isys_monitor_resolution__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_monitor_type` (
  `isys_monitor_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_monitor_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_monitor_type__description` text COLLATE utf8_unicode_ci,
  `isys_monitor_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_monitor_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_monitor_type__property` int(10) unsigned DEFAULT '0',
  `isys_monitor_type__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_monitor_type__id`),
  KEY `isys_monitor_type__title` (`isys_monitor_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_monitor_type` VALUES (1,'TFT','TFT','C__MONITOR_TYPE__TFT',20,0,2);
INSERT INTO `isys_monitor_type` VALUES (2,'CRT','CRT','C__MONITOR_TYPE__CRT',30,0,2);
INSERT INTO `isys_monitor_type` VALUES (3,'LC__UNIVERSAL__OTHER','Andere / Other','C__MONITOR_TYPE__OTHER',10,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_monitor_unit` (
  `isys_monitor_unit__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_monitor_unit__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_monitor_unit__description` text COLLATE utf8_unicode_ci,
  `isys_monitor_unit__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_monitor_unit__sort` int(10) unsigned DEFAULT NULL,
  `isys_monitor_unit__property` int(10) unsigned DEFAULT '0',
  `isys_monitor_unit__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_monitor_unit__id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_monitor_unit` VALUES (1,'\"','Zoll /Inch','C__MONITOR_UNIT__INCH',10,0,2);
INSERT INTO `isys_monitor_unit` VALUES (2,'cm','Zentimeter / Cm','C__MONITOR_UNIT__CENTIMETER',20,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_monitoring_export_config` (
  `isys_monitoring_export_config__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_monitoring_export_config__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_monitoring_export_config__path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_monitoring_export_config__address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_monitoring_export_config__type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_monitoring_export_config__options` text COLLATE utf8_unicode_ci,
  `isys_monitoring_export_config__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_monitoring_export_config__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_monitoring_hosts` (
  `isys_monitoring_hosts__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_monitoring_hosts__active` tinyint(1) unsigned NOT NULL,
  `isys_monitoring_hosts__type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `isys_monitoring_hosts__connection` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `isys_monitoring_hosts__export_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_monitoring_hosts__dbname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_monitoring_hosts__dbprefix` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_monitoring_hosts__username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_monitoring_hosts__password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_monitoring_hosts__path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_monitoring_hosts__address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_monitoring_hosts__port` int(10) unsigned NOT NULL,
  `isys_monitoring_hosts__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`isys_monitoring_hosts__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_net_dhcp_type` (
  `isys_net_dhcp_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_net_dhcp_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_net_dhcp_type__description` text COLLATE utf8_unicode_ci,
  `isys_net_dhcp_type__sort` int(10) unsigned DEFAULT '5',
  `isys_net_dhcp_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_net_dhcp_type__status` int(10) unsigned DEFAULT '1',
  `isys_net_dhcp_type__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_net_dhcp_type__id`),
  KEY `isys_net_dhcp_type__title` (`isys_net_dhcp_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_net_dhcp_type` VALUES (1,'LC__CMDB__CATS__NET__DHCP_DYNAMIC',NULL,1,'C__NET__DHCP_DYNAMIC',2,0);
INSERT INTO `isys_net_dhcp_type` VALUES (2,'LC__CMDB__CATS__NET__DHCP_RESERVED',NULL,2,'C__NET__DHCP_RESERVED',2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_net_dhcpv6_type` (
  `isys_net_dhcpv6_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_net_dhcpv6_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_net_dhcpv6_type__description` text COLLATE utf8_unicode_ci,
  `isys_net_dhcpv6_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_net_dhcpv6_type__sort` int(10) unsigned NOT NULL DEFAULT '5',
  `isys_net_dhcpv6_type__status` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_net_dhcpv6_type__id`),
  KEY `isys_net_dhcpv6_type__title` (`isys_net_dhcpv6_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_net_dhcpv6_type` VALUES (1,'LC__CMDB__CATG__IP__DHCPV6','Stateful Address Configuration via DHCPv6','C__NET__DHCPV6__DHCPV6',5,2);
INSERT INTO `isys_net_dhcpv6_type` VALUES (2,'LC__CMDB__CATG__IP__SLAAC_AND_DHCPV6','SLAAC and DHCPv6','C__NET__DHCPV6__SLAAC_AND_DHCPV6',5,2);
INSERT INTO `isys_net_dhcpv6_type` VALUES (3,'LC__CMDB__CATG__IP__DHCPV6_RESERVED','Stateful Address Configuration via DHCPv6 (reserved)','C__NET__DHCPV6__DHCPV6_RESERVED',5,2);
INSERT INTO `isys_net_dhcpv6_type` VALUES (4,'LC__CMDB__CATG__IP__SLAAC_AND_DHCPV6_RESERVED','SLAAC and DHCPv6 (reserved)','C__NET__DHCPV6__SLAAC_AND_DHCPV6_RESERVED',5,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_net_dns_domain` (
  `isys_net_dns_domain__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_net_dns_domain__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_net_dns_domain__description` text COLLATE utf8_unicode_ci,
  `isys_net_dns_domain__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_net_dns_domain__sort` int(10) unsigned DEFAULT NULL,
  `isys_net_dns_domain__status` int(10) unsigned DEFAULT NULL,
  `isys_net_dns_domain__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_net_dns_domain__id`),
  KEY `isys_net_dns_domain__title` (`isys_net_dns_domain__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_net_dns_server` (
  `isys_net_dns_server__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_net_dns_server__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_net_dns_server__description` text COLLATE utf8_unicode_ci,
  `isys_net_dns_server__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_net_dns_server__sort` int(10) unsigned DEFAULT NULL,
  `isys_net_dns_server__status` int(10) unsigned DEFAULT NULL,
  `isys_net_dns_server__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_net_dns_server__id`),
  KEY `isys_net_dns_server__title` (`isys_net_dns_server__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_net_protocol` (
  `isys_net_protocol__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_net_protocol__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_net_protocol__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_net_protocol__description` text COLLATE utf8_unicode_ci,
  `isys_net_protocol__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_net_protocol__id`),
  KEY `isys_net_protocol__title` (`isys_net_protocol__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_net_protocol` VALUES (1,'C__NET_PROTOCOL__TCP','TCP',NULL,2);
INSERT INTO `isys_net_protocol` VALUES (2,'C__NET_PROTOCOL__UDP','UDP',NULL,2);
INSERT INTO `isys_net_protocol` VALUES (3,'C__NET_PROTOCOL__ICMP','ICMP',NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_net_protocol_layer_5` (
  `isys_net_protocol_layer_5__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_net_protocol_layer_5__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_net_protocol_layer_5__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_net_protocol_layer_5__description` text COLLATE utf8_unicode_ci,
  `isys_net_protocol_layer_5__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_net_protocol_layer_5__id`),
  KEY `isys_net_protocol_layer_5__title` (`isys_net_protocol_layer_5__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_net_type` (
  `isys_net_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_net_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_net_type__description` text COLLATE utf8_unicode_ci,
  `isys_net_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_net_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_net_type__status` int(10) unsigned DEFAULT NULL,
  `isys_net_type__property` int(10) unsigned DEFAULT NULL,
  `isys_net_type__js_function` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_net_type__id`),
  KEY `isys_net_type__title` (`isys_net_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_net_type` VALUES (1,'IPv4 (Internet Protocol v4)','IPv4','C__CATS_NET_TYPE__IPV4',1,2,0,NULL);
INSERT INTO `isys_net_type` VALUES (2,'IPX (Internet Packet Exchange)','IPX','C__CATS_NET_TYPE__IPX',4,2,0,NULL);
INSERT INTO `isys_net_type` VALUES (3,'AT (AppleTalk)','AT','C__CATS_NET_TYPE__AT',3,2,0,NULL);
INSERT INTO `isys_net_type` VALUES (1000,'IPv6 (Internet Protocol v6)','IPv6','C__CATS_NET_TYPE__IPV6',2,2,NULL,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_net_type_title` (
  `isys_net_type_title__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_net_type_title__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_net_type_title__description` text COLLATE utf8_unicode_ci,
  `isys_net_type_title__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_net_type_title__sort` int(10) unsigned DEFAULT NULL,
  `isys_net_type_title__status` int(10) unsigned DEFAULT NULL,
  `isys_net_type_title__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_net_type_title__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_netp_ifacel` (
  `isys_netp_ifacel__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_netp_ifacel__isys_netp_ifacel_standard__id` int(10) unsigned DEFAULT NULL,
  `isys_netp_ifacel__isys_netx_ifacel_type__id` int(10) unsigned DEFAULT NULL,
  `isys_netp_ifacel__isys_obj__id` int(10) DEFAULT NULL,
  `isys_netp_ifacel__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_netp_ifacel__description` text COLLATE utf8_unicode_ci,
  `isys_netp_ifacel__active` int(10) unsigned DEFAULT '1',
  `isys_netp_ifacel__property` int(10) unsigned DEFAULT NULL,
  `isys_netp_ifacel__status` int(10) unsigned DEFAULT '1',
  `isys_netp_ifacel__mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_netp_ifacel__id`),
  KEY `isys_netp_ifacel_FKIndex1` (`isys_netp_ifacel__isys_netx_ifacel_type__id`),
  KEY `isys_netp_ifacel_FKIndex3` (`isys_netp_ifacel__isys_netp_ifacel_standard__id`),
  CONSTRAINT `isys_netp_ifacel_ibfk_3` FOREIGN KEY (`isys_netp_ifacel__isys_netx_ifacel_type__id`) REFERENCES `isys_netx_ifacel_type` (`isys_netx_ifacel_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_netp_ifacel_ibfk_4` FOREIGN KEY (`isys_netp_ifacel__isys_netp_ifacel_standard__id`) REFERENCES `isys_netp_ifacel_standard` (`isys_netp_ifacel_standard__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_netp_ifacel_2_isys_obj` (
  `isys_netp_ifacel_2_isys_obj__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_netp_ifacel__id` int(10) unsigned DEFAULT NULL,
  `isys_obj__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_netp_ifacel_2_isys_obj__id`),
  KEY `isys_netp_ifacel__id` (`isys_netp_ifacel__id`),
  KEY `isys_obj__id` (`isys_obj__id`),
  CONSTRAINT `isys_netp_ifacel_2_isys_obj_ibfk1` FOREIGN KEY (`isys_netp_ifacel__id`) REFERENCES `isys_netp_ifacel` (`isys_netp_ifacel__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_netp_ifacel_2_isys_obj_ibfk2` FOREIGN KEY (`isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_netp_ifacel_standard` (
  `isys_netp_ifacel_standard__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_netp_ifacel_standard__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_netp_ifacel_standard__description` text COLLATE utf8_unicode_ci,
  `isys_netp_ifacel_standard__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_netp_ifacel_standard__sort` int(10) unsigned DEFAULT NULL,
  `isys_netp_ifacel_standard__property` int(10) unsigned DEFAULT NULL,
  `isys_netp_ifacel_standard__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_netp_ifacel_standard__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_netv_ifacel` (
  `isys_netv_ifacel__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_netv_ifacel__isys_netx_ifacel_type__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_netv_ifacel__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_netv_ifacel__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_netv_ifacel__id`),
  KEY `isys_netv_ifacel_FKIndex1` (`isys_netv_ifacel__isys_netx_ifacel_type__id`),
  CONSTRAINT `isys_netv_ifacel_ibfk_1` FOREIGN KEY (`isys_netv_ifacel__isys_netx_ifacel_type__id`) REFERENCES `isys_netx_ifacel_type` (`isys_netx_ifacel_type__id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_network_provider` (
  `isys_network_provider__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_network_provider__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_network_provider__description` text COLLATE utf8_unicode_ci,
  `isys_network_provider__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_network_provider__sort` int(10) unsigned DEFAULT NULL,
  `isys_network_provider__status` int(10) unsigned DEFAULT NULL,
  `isys_network_provider__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_network_provider__id`),
  KEY `isys_network_provider__title` (`isys_network_provider__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_netx_ifacel_type` (
  `isys_netx_ifacel_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_netx_ifacel_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_netx_ifacel_type__description` text COLLATE utf8_unicode_ci,
  `isys_netx_ifacel_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_netx_ifacel_type__sort` int(10) unsigned DEFAULT '5',
  `isys_netx_ifacel_type__status` int(10) unsigned DEFAULT '1',
  `isys_netx_ifacel_type__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_netx_ifacel_type__id`),
  KEY `isys_netx_ifacel_type__title` (`isys_netx_ifacel_type__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_notification` (
  `isys_notification__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_notification__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_notification__description` text COLLATE utf8_unicode_ci,
  `isys_notification__status` int(10) unsigned NOT NULL DEFAULT '1',
  `isys_notification__isys_notification_type__id` int(10) unsigned DEFAULT NULL,
  `isys_notification__isys_notification_role__id` int(10) unsigned DEFAULT NULL,
  `isys_notification__isys_contact__id` int(10) unsigned DEFAULT NULL,
  `isys_notification__limit` int(11) NOT NULL DEFAULT '1',
  `isys_notification__count` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_notification__last_run` datetime DEFAULT NULL,
  `isys_notification__threshold` float DEFAULT NULL,
  `isys_notification__threshold_unit` int(10) unsigned DEFAULT NULL,
  `isys_notification__only_normal` tinyint(1) unsigned DEFAULT NULL,
  `isys_notification__isys_notification_template__id__de` int(10) unsigned DEFAULT NULL,
  `isys_notification__isys_notification_template__id__en` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_notification__id`),
  KEY `isys_notification__isys_notification_type__id` (`isys_notification__isys_notification_type__id`),
  KEY `isys_notification__isys_notification_role__id` (`isys_notification__isys_notification_role__id`),
  KEY `isys_notification__isys_contact__id` (`isys_notification__isys_contact__id`),
  KEY `isys_notification__isys_notification_template__id__de` (`isys_notification__isys_notification_template__id__de`),
  KEY `isys_notification__isys_notification_template__id__en` (`isys_notification__isys_notification_template__id__en`),
  CONSTRAINT `isys_notification_ibfk_1` FOREIGN KEY (`isys_notification__isys_notification_type__id`) REFERENCES `isys_notification_type` (`isys_notification_type__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_notification_ibfk_2` FOREIGN KEY (`isys_notification__isys_notification_role__id`) REFERENCES `isys_notification_role` (`isys_notification_role__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_notification_ibfk_3` FOREIGN KEY (`isys_notification__isys_contact__id`) REFERENCES `isys_contact` (`isys_contact__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_notification_ibfk_4` FOREIGN KEY (`isys_notification__isys_notification_template__id__de`) REFERENCES `isys_notification_template` (`isys_notification_template__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_notification_ibfk_5` FOREIGN KEY (`isys_notification__isys_notification_template__id__en`) REFERENCES `isys_notification_template` (`isys_notification_template__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_notification_domain` (
  `isys_notification_domain__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_notification_domain__isys_notification__id` int(10) unsigned DEFAULT NULL,
  `isys_notification_domain__isys_obj__id` int(10) unsigned DEFAULT NULL,
  `isys_notification_domain__isys_obj_type__id` int(10) unsigned DEFAULT NULL,
  `isys_notification_domain__isys_report__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_notification_domain__id`),
  KEY `isys_notification_domain__isys_notification__id` (`isys_notification_domain__isys_notification__id`),
  KEY `isys_notification_domain__isys_obj__id` (`isys_notification_domain__isys_obj__id`),
  KEY `isys_notification_domain__isys_obj_type__id` (`isys_notification_domain__isys_obj_type__id`),
  KEY `isys_notification_domain__isys_report__id` (`isys_notification_domain__isys_report__id`),
  CONSTRAINT `isys_notification_domain_ibfk_1` FOREIGN KEY (`isys_notification_domain__isys_notification__id`) REFERENCES `isys_notification` (`isys_notification__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_notification_domain_ibfk_2` FOREIGN KEY (`isys_notification_domain__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_notification_domain_ibfk_3` FOREIGN KEY (`isys_notification_domain__isys_obj_type__id`) REFERENCES `isys_obj_type` (`isys_obj_type__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_notification_role` (
  `isys_notification_role__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_notification_role__isys_notification__id` int(10) unsigned DEFAULT NULL,
  `isys_notification_role__isys_contact_tag__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_notification_role__id`),
  KEY `isys_notification_role__isys_notification__id` (`isys_notification_role__isys_notification__id`),
  KEY `isys_notification_role__isys_contact_tag__id` (`isys_notification_role__isys_contact_tag__id`),
  CONSTRAINT `isys_notification_role_ibfk_1` FOREIGN KEY (`isys_notification_role__isys_notification__id`) REFERENCES `isys_notification` (`isys_notification__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_notification_role_ibfk_2` FOREIGN KEY (`isys_notification_role__isys_contact_tag__id`) REFERENCES `isys_contact_tag` (`isys_contact_tag__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_notification_template` (
  `isys_notification_template__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_notification_template__isys_notification_type__id` int(10) unsigned DEFAULT NULL,
  `isys_notification_template__locale` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `isys_notification_template__subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_notification_template__text` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_notification_template__report` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_notification_template__id`),
  KEY `isys_notification_template__isys_notification_type__id` (`isys_notification_template__isys_notification_type__id`),
  CONSTRAINT `isys_notification_template_ibfk_1` FOREIGN KEY (`isys_notification_template__isys_notification_type__id`) REFERENCES `isys_notification_type` (`isys_notification_type__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_notification_template` VALUES (1,1,'en','%notifications__title%','Hello, %receivers__title%!\n\n%notification_types__description%\n\nList of affected objects:\n\n%notification_templates__report%\n\nThis email was generated automatically. Please do not reply.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}}]');
INSERT INTO `isys_notification_template` VALUES (2,1,'de','%notifications__title%','Hallo, %receivers__title%!\n\n%notification_types__description%\n\nListe der betroffenen Objekte:\n\n%notification_templates__report%\n\nDies ist eine automatisch generierte E-Mail von i-doit. Bitte antworten Sie nicht darauf.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}}]');
INSERT INTO `isys_notification_template` VALUES (3,2,'en','%notifications__title%','Hello, %receivers__title%!\n\n%notification_types__description%\n\nList of affected objects:\n\n%notification_templates__report%\n\nThis email was generated automatically. Please do not reply.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}},{\"s\":{\"C__CATS__CONTRACT\":[\"start_date\"]}},{\"s\":{\"C__CATS__CONTRACT\":[\"maintenance_period\"]}}]');
INSERT INTO `isys_notification_template` VALUES (4,2,'de','%notifications__title%','Hallo, %receivers__title%!\n\n%notification_types__description%\n\nListe der betroffenen Objekte:\n\n%notification_templates__report%\n\nDies ist eine automatisch generierte E-Mail von i-doit. Bitte antworten Sie nicht darauf.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}},{\"s\":{\"C__CATS__CONTRACT\":[\"start_date\"]}},{\"s\":{\"C__CATS__CONTRACT\":[\"maintenance_period\"]}}]');
INSERT INTO `isys_notification_template` VALUES (5,3,'en','%notifications__title%','Hello, %receivers__title%!\n\n%notification_types__description%\n\nThis email was generated automatically. Please do not reply.\n',NULL);
INSERT INTO `isys_notification_template` VALUES (6,3,'de','%notifications__title%','Hallo, %receivers__title%!\n\n%notification_types__description%\n\nDies ist eine automatisch generierte E-Mail von i-doit. Bitte antworten Sie nicht darauf.\n',NULL);
INSERT INTO `isys_notification_template` VALUES (7,4,'en','%notifications__title%','Hello, %receivers__title%!\n\n%notification_types__description%\n\nList of affected objects:\n\n%notification_templates__report%\n\nThis email was generated automatically. Please do not reply.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}},{\"s\":{\"C__CATS__CONTRACT\":[\"start_date\"]}},{\"s\":{\"C__CATS__CONTRACT\":[\"end_date\"]}},{\"s\":{\"C__CATS__CONTRACT\":[\"notice_period\"]}},{\"s\":{\"C__CATS__CONTRACT\":[\"notice_date\"]}}]');
INSERT INTO `isys_notification_template` VALUES (8,4,'de','%notifications__title%','Hallo, %receivers__title%!\n\n%notification_types__description%\n\nListe der betroffenen Objekte:\n\n%notification_templates__report%\n\nDies ist eine automatisch generierte E-Mail von i-doit. Bitte antworten Sie nicht darauf.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}},{\"s\":{\"C__CATS__CONTRACT\":[\"start_date\"]}},{\"s\":{\"C__CATS__CONTRACT\":[\"end_date\"]}},{\"s\":{\"C__CATS__CONTRACT\":[\"notice_period\"]}},{\"s\":{\"C__CATS__CONTRACT\":[\"notice_date\"]}}]');
INSERT INTO `isys_notification_template` VALUES (9,5,'en','%notifications__title%','Hello, %receivers__title%!\n\n%notification_types__description%\n\nLast run: %notifications__last_run%\n\nList of affected objects:\n\n%notification_templates__report%\n\nThis email was generated automatically. Please do not reply.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}}]');
INSERT INTO `isys_notification_template` VALUES (10,5,'de','%notifications__title%','Hallo, %receivers__title%!\n\n%notification_types__description%\n\nLetzter Durchlauf: %notifications__last_run%\n\nListe der betroffenen Objekte:\n\n%notification_templates__report%\n\nDies ist eine automatisch generierte E-Mail von i-doit. Bitte antworten Sie nicht darauf.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}}]');
INSERT INTO `isys_notification_template` VALUES (11,6,'en','%notifications__title%','Hello, %receivers__title%!\n\n%notification_types__description%\n\nThreshold: %notifications__threshold% %notifications__threshold_unit%\n\nList of affected objects:\n\n%notification_templates__report%\n\nThis email was generated automatically. Please do not reply.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}}]');
INSERT INTO `isys_notification_template` VALUES (12,6,'de','%notifications__title%','Hallo, %receivers__title%!\n\n%notification_types__description%\n\nSchwellwert: %notifications__threshold% %notifications__threshold_unit%\n\nListe der betroffenen Objekte:\n\n%notification_templates__report%\n\nDies ist eine automatisch generierte E-Mail von i-doit. Bitte antworten Sie nicht darauf.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}}]');
INSERT INTO `isys_notification_template` VALUES (13,7,'en','%notifications__title%','Hello, %receivers__title%!\n\n%notification_types__description%\n\nThreshold: %notifications__threshold% %notifications__threshold_unit%\n\nList of affected licenses:\n\n%notification_templates__report%\n\nThis email was generated automatically. Please do not reply.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}},{\"s\":{\"C__CATS__LICENCE_OVERVIEW\":[\"start\"]}},{\"s\":{\"C__CATS__LICENCE_OVERVIEW\":[\"expire\"]}}]');
INSERT INTO `isys_notification_template` VALUES (14,7,'de','%notifications__title%','Hallo, %receivers__title%!\n\n%notification_types__description%\n\nSchwellwert: %notifications__threshold% %notifications__threshold_unit%\n\nListe der betroffenen Lizenzen:\n\n%notification_templates__report%\n\nDies ist eine automatisch generierte E-Mail von i-doit. Bitte antworten Sie nicht darauf.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}},{\"s\":{\"C__CATS__LICENCE_OVERVIEW\":[\"start\"]}},{\"s\":{\"C__CATS__LICENCE_OVERVIEW\":[\"expire\"]}}]');
INSERT INTO `isys_notification_template` VALUES (15,8,'en','%notifications__title%','Hello, %receivers__title%!\n\n%notification_types__description%\n\nThreshold: %notifications__threshold%\n\nList of affected licenses:\n\n%notification_templates__report%\n\nThis email was generated automatically. Please do not reply.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}},{\"s\":{\"C__CATS__LICENCE_OVERVIEW\":[\"amount\"]}}]');
INSERT INTO `isys_notification_template` VALUES (16,8,'de','%notifications__title%','Hallo, %receivers__title%!\n\n%notification_types__description%\n\nSchwellwert: %notifications__threshold%\n\nListe der betroffenen Lizenzen:\n\n%notification_templates__report%\n\nDies ist eine automatisch generierte E-Mail von i-doit. Bitte antworten Sie nicht darauf.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}},{\"s\":{\"C__CATS__LICENCE_OVERVIEW\":[\"amount\"]}}]');
INSERT INTO `isys_notification_template` VALUES (17,9,'en','%notifications__title%','Hello, %receivers__title%!\n\n%notification_types__description%\n\nList of affected objects:\n\n%notification_templates__report%\n\nThis email was generated automatically. Please do not reply.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}},{\"g\":{\"C__CATG__PLANNING\":[\"cmdb_status\"]}},{\"g\":{\"C__CATG__PLANNING\":[\"end\"]}},{\"g\":{\"C__CATG__PLANNING\":[\"start\"]}}]');
INSERT INTO `isys_notification_template` VALUES (18,9,'de','%notifications__title%','Hallo, %receivers__title%!\n\n%notification_types__description%\n\nListe der betroffenen Objekte:\n\n%notification_templates__report%\n\nDies ist eine automatisch generierte E-Mail von i-doit. Bitte antworten Sie nicht darauf.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}},{\"g\":{\"C__CATG__PLANNING\":[\"cmdb_status\"]}},{\"g\":{\"C__CATG__PLANNING\":[\"end\"]}},{\"g\":{\"C__CATG__PLANNING\":[\"start\"]}}]');
INSERT INTO `isys_notification_template` VALUES (19,10,'en','%notifications__title%','Hello, %receivers__title%!\n\n%notification_types__description%\n\nList of affected objects:\n\n%notification_templates__report%\n\nThis email was generated automatically. Please do not reply.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}},{\"g\":{\"C__CATG__PLANNING\":[\"cmdb_status\"]}},{\"g\":{\"C__CATG__PLANNING\":[\"end\"]}},{\"g\":{\"C__CATG__PLANNING\":[\"start\"]}}]');
INSERT INTO `isys_notification_template` VALUES (20,10,'de','%notifications__title%','Hallo, %receivers__title%!\n\n%notification_types__description%\n\nListe der betroffenen Objekte:\n\n%notification_templates__report%\n\nDies ist eine automatisch generierte E-Mail von i-doit. Bitte antworten Sie nicht darauf.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}},{\"g\":{\"C__CATG__PLANNING\":[\"cmdb_status\"]}},{\"g\":{\"C__CATG__PLANNING\":[\"end\"]}},{\"g\":{\"C__CATG__PLANNING\":[\"start\"]}}]');
INSERT INTO `isys_notification_template` VALUES (21,12,'en','%notifications__title%','Hello, %receivers__title%!\n\n%notification_types__description%\n\nLast run: %notifications__last_run%\n\nList of affected objects:\n\n%notification_templates__report%\n\nThis email was generated automatically. Please do not reply.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}}]');
INSERT INTO `isys_notification_template` VALUES (22,12,'de','%notifications__title%','Hallo, %receivers__title%!\n\n%notification_types__description%\n\nLetzter Durchlauf: %notifications__last_run%\n\nListe der betroffenen Objekte:\n\n%notification_templates__report%\n\nDies ist eine automatisch generierte E-Mail von i-doit. Bitte antworten Sie nicht darauf.\n','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"sysid\"]}}]');
INSERT INTO `isys_notification_template` VALUES (23,11,'de','%notifications__title%','Hallo, %receivers__title%!\r\n\r\n%notification_types__description%\r\n\r\nLetzter Durchlauf: %notifications__last_run%\r\n\r\nListe der betroffenen Zertificate:\r\n\r\n%notification_templates__report%\r\n\r\nDies ist eine automatisch generierte E-Mail von i-doit. Bitte antworten Sie nicht darauf.','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__CERTIFICATE\":[\"common_name\"]}},{\"g\":{\"C__CATG__CERTIFICATE\":[\"type\"]}},{\"g\":{\"C__CATG__CERTIFICATE\":[\"expire_date\"]}},{\"g\":{\"C__CATG__CERTIFICATE\":[\"create_date\"]}}]');
INSERT INTO `isys_notification_template` VALUES (24,11,'en','%notifications__title%','Hello, %receivers__title%!\r\n\r\n%notification_types__description%\r\n\r\nLast run: %notifications__last_run%\r\n\r\nList of affected certificates:\r\n\r\n%notification_templates__report%\r\n\r\nThis email was generated automatically. Please do not reply.','[{\"g\":{\"C__CATG__GLOBAL\":[\"title\"]}},{\"g\":{\"C__CATG__CERTIFICATE\":[\"common_name\"]}},{\"g\":{\"C__CATG__CERTIFICATE\":[\"type\"]}},{\"g\":{\"C__CATG__CERTIFICATE\":[\"expire_date\"]}},{\"g\":{\"C__CATG__CERTIFICATE\":[\"create_date\"]}}]');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_notification_type` (
  `isys_notification_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_notification_type__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_notification_type__description` text COLLATE utf8_unicode_ci,
  `isys_notification_type__status` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_notification_type__callback` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_notification_type__domains` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_notification_type__isys_unit__id` int(10) unsigned DEFAULT NULL,
  `isys_notification_type__default_unit` int(10) unsigned DEFAULT NULL,
  `isys_notification_type__threshold` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`isys_notification_type__id`),
  KEY `isys_notification_type__isys_unit__id` (`isys_notification_type__isys_unit__id`),
  CONSTRAINT `isys_notification_type_ibfk_1` FOREIGN KEY (`isys_notification_type__isys_unit__id`) REFERENCES `isys_unit` (`isys_unit__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_notification_type` VALUES (1,'LC__NOTIFICATION_TYPE__STORED_OBJECTS','LC__NOTIFICATION_TYPE__STORED_OBJECTS__DESCRIPTION',1,'isys_notification_stored_objects',7,NULL,NULL,1);
INSERT INTO `isys_notification_type` VALUES (2,'LC__NOTIFICATION_TYPE__MAINTENANCE_PERIOD','LC__NOTIFICATION_TYPE__MAINTENANCE_PERIOD__DESCRIPTION',1,'isys_notification_maintenance_period',7,1,4,1);
INSERT INTO `isys_notification_type` VALUES (3,'LC__NOTIFICATION_TYPE__UPDATE','LC__NOTIFICATION_TYPE__UPDATE__DESCRIPTION',1,'isys_notification_update',0,NULL,NULL,0);
INSERT INTO `isys_notification_type` VALUES (4,'LC__NOTIFICATION_TYPE__NOTICE_PERIOD','LC__NOTIFICATION_TYPE__NOTICE_PERIOD__DESCRIPTION',1,'isys_notification_notice_period',7,1,4,1);
INSERT INTO `isys_notification_type` VALUES (5,'LC__NOTIFICATION_TYPE__CHANGED_OBJECTS','LC__NOTIFICATION_TYPE__CHANGED_OBJECTS__DESCRIPTION',1,'isys_notification_changed_objects',7,NULL,NULL,0);
INSERT INTO `isys_notification_type` VALUES (6,'LC__NOTIFICATION_TYPE__UNCHANGED_OBJECTS','LC__NOTIFICATION_TYPE__UNCHANGED_OBJECTS__DESCRIPTION',1,'isys_notification_unchanged_objects',7,1,4,1);
INSERT INTO `isys_notification_type` VALUES (7,'LC__NOTIFICATION_TYPE__LICENSE_EXPIRATION','LC__NOTIFICATION_TYPE__LICENSE_EXPIRATION__DESCRIPTION',1,'isys_notification_license_expiration',7,1,4,1);
INSERT INTO `isys_notification_type` VALUES (8,'LC__NOTIFICATION_TYPE__COUNT_LICENSES','LC__NOTIFICATION_TYPE__COUNT_LICENSES__DESCRIPTION',1,'isys_notification_count_licenses',7,NULL,NULL,1);
INSERT INTO `isys_notification_type` VALUES (9,'LC__NOTIFICATION_TYPE__STATUS_PLANNING_START','LC__NOTIFICATION_TYPE__STATUS_PLANNING_START__DESCRIPTION',1,'isys_notification_status_planning_start',7,1,4,1);
INSERT INTO `isys_notification_type` VALUES (10,'LC__NOTIFICATION_TYPE__STATUS_PLANNING_END','LC__NOTIFICATION_TYPE__STATUS_PLANNING_END__DESCRIPTION',1,'isys_notification_status_planning_end',7,1,4,1);
INSERT INTO `isys_notification_type` VALUES (11,'LC__NOTIFICATION_TYPE__CERTIFICATE_EXPIRATION','LC__NOTIFICATION_TYPE__CERTIFICATE_EXPIRATION__DESCRIPTION',1,'isys_notification_certificate_expiration',7,1,4,1);
INSERT INTO `isys_notification_type` VALUES (12,'LC__NOTIFICATION_TYPE__GENERIC_REPORT','LC__NOTIFICATION_TYPE__GENERIC_REPORT__DESCRIPTION',1,'isys_notification_generic_report',4,1,4,1);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_obj` (
  `isys_obj__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_obj__isys_obj_type__id` int(10) unsigned DEFAULT NULL,
  `isys_obj__owner_id` int(10) unsigned DEFAULT NULL,
  `isys_obj__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_obj__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_obj__description` text COLLATE utf8_unicode_ci,
  `isys_obj__created` datetime DEFAULT NULL,
  `isys_obj__created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_obj__updated` datetime DEFAULT NULL,
  `isys_obj__updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_obj__property` int(10) unsigned DEFAULT '0',
  `isys_obj__status` int(10) unsigned DEFAULT '1',
  `isys_obj__sysid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_obj__scantime` datetime DEFAULT NULL,
  `isys_obj__imported` datetime DEFAULT NULL,
  `isys_obj__hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_obj__undeletable` int(1) unsigned NOT NULL DEFAULT '0',
  `isys_obj__rt_cf__id` int(11) unsigned DEFAULT NULL,
  `isys_obj__isys_cmdb_status__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_obj__id`),
  KEY `isys_obj_FKIndex1` (`isys_obj__isys_obj_type__id`),
  KEY `isys_obj_ibfk_2` (`isys_obj__isys_cmdb_status__id`),
  KEY `isys_obj__sysid` (`isys_obj__sysid`),
  KEY `isys_obj__title` (`isys_obj__title`),
  KEY `isys_obj__const` (`isys_obj__const`),
  KEY `isys_obj__hostname` (`isys_obj__hostname`),
  KEY `isys_obj__updated_by` (`isys_obj__updated_by`),
  KEY `isys_obj__updated_by_2` (`isys_obj__updated_by`),
  KEY `default_list` (`isys_obj__status`,`isys_obj__isys_obj_type__id`,`isys_obj__title`,`isys_obj__isys_cmdb_status__id`),
  KEY `isys_obj__updated` (`isys_obj__updated`),
  KEY `isys_obj__owner_id` (`isys_obj__owner_id`),
  CONSTRAINT `isys_obj__owner_id` FOREIGN KEY (`isys_obj__owner_id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_obj_ibfk_1` FOREIGN KEY (`isys_obj__isys_obj_type__id`) REFERENCES `isys_obj_type` (`isys_obj_type__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_obj_ibfk_2` FOREIGN KEY (`isys_obj__isys_cmdb_status__id`) REFERENCES `isys_cmdb_status` (`isys_cmdb_status__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_obj` VALUES (1,30,NULL,'Root location','C__OBJ__ROOT_LOCATION',NULL,NOW(),'system',NOW(),'system',0,2,'SYSID_1132672018',NULL,NULL,NULL,1,NULL,6);
INSERT INTO `isys_obj` VALUES (4,53,NULL,'guest ','C__OBJ__PERSON_GUEST',NULL,NOW(),'system',NOW(),'system',0,3,'SYSID_1280838782',NULL,NULL,NULL,0,NULL,6);
INSERT INTO `isys_obj` VALUES (5,53,NULL,'reader ','C__OBJ__PERSON_READER',NULL,NOW(),'system',NOW(),'system',0,3,'SYSID_1280838783',NULL,NULL,NULL,0,NULL,6);
INSERT INTO `isys_obj` VALUES (6,53,NULL,'editor ','C__OBJ__PERSON_EDITOR',NULL,NOW(),'system',NOW(),'system',0,3,'SYSID_1280838784',NULL,NULL,NULL,0,NULL,6);
INSERT INTO `isys_obj` VALUES (7,53,NULL,'author ','C__OBJ__PERSON_AUTHOR',NULL,NOW(),'system',NOW(),'system',0,3,'SYSID_1280838785',NULL,NULL,NULL,0,NULL,6);
INSERT INTO `isys_obj` VALUES (8,53,NULL,'archivar ','C__OBJ__PERSON_ARCHIVAR',NULL,NOW(),'system',NOW(),'system',0,3,'SYSID_1280838786',NULL,NULL,NULL,0,NULL,6);
INSERT INTO `isys_obj` VALUES (9,53,NULL,'admin ','C__OBJ__PERSON_ADMIN',NULL,NOW(),'system',NOW(),'system',0,2,'SYSID_1280838787',NULL,NULL,NULL,1,NULL,6);
INSERT INTO `isys_obj` VALUES (10,54,NULL,'Reader','C__OBJ__PERSON_GROUP_READER',NULL,NOW(),'system',NOW(),'system',0,2,'SYSID_1280838788',NULL,NULL,NULL,1,NULL,6);
INSERT INTO `isys_obj` VALUES (11,54,NULL,'Editor','C__OBJ__PERSON_GROUP_EDITOR',NULL,NOW(),'system',NOW(),'system',0,2,'SYSID_1280838789',NULL,NULL,NULL,1,NULL,6);
INSERT INTO `isys_obj` VALUES (12,54,NULL,'Author','C__OBJ__PERSON_GROUP_AUTHOR',NULL,NOW(),'system',NOW(),'system',0,2,'SYSID_1280838790',NULL,NULL,NULL,1,NULL,6);
INSERT INTO `isys_obj` VALUES (13,54,NULL,'Archivar','C__OBJ__PERSON_GROUP_ARCHIVAR',NULL,NOW(),'system',NOW(),'system',0,2,'SYSID_1280838792',NULL,NULL,NULL,1,NULL,6);
INSERT INTO `isys_obj` VALUES (14,54,NULL,'Admin','C__OBJ__PERSON_GROUP_ADMIN',NULL,NOW(),'system',NOW(),'system',0,2,'SYSID_1280838793',NULL,NULL,NULL,1,NULL,6);
INSERT INTO `isys_obj` VALUES (15,60,NULL,'Reader hat Mitglied reader ',NULL,NULL,NOW(),'system',NOW(),'system',0,2,'SYSID_1305295658',NULL,NULL,NULL,0,NULL,6);
INSERT INTO `isys_obj` VALUES (16,60,NULL,'Editor hat Mitglied editor ',NULL,NULL,NOW(),'system',NOW(),'system',0,2,'SYSID_1305295659',NULL,NULL,NULL,0,NULL,6);
INSERT INTO `isys_obj` VALUES (17,60,NULL,'Author hat Mitglied author ',NULL,NULL,NOW(),'system',NOW(),'system',0,2,'SYSID_1305295660',NULL,NULL,NULL,0,NULL,6);
INSERT INTO `isys_obj` VALUES (18,60,NULL,'Archivar hat Mitglied archivar ',NULL,NULL,NOW(),'system',NOW(),'system',0,2,'SYSID_1305295661',NULL,NULL,NULL,0,NULL,6);
INSERT INTO `isys_obj` VALUES (19,60,NULL,'Admin hat Mitglied admin ',NULL,NULL,NOW(),'system',NOW(),'system',0,2,'SYSID_1305295662',NULL,NULL,NULL,0,NULL,6);
INSERT INTO `isys_obj` VALUES (20,31,NULL,'Global v4','C__OBJ__NET_GLOBAL_IPV4','Please do not edit this global net.',NOW(),'system',NOW(),'system',0,2,'SYSID_1323964017',NULL,NULL,NULL,1,NULL,6);
INSERT INTO `isys_obj` VALUES (21,31,NULL,'Global v6','C__OBJ__NET_GLOBAL_IPV6','Please do not edit this global net.',NOW(),'system',NOW(),'system',0,2,'SYSID_1323964018',NULL,NULL,NULL,1,NULL,6);
INSERT INTO `isys_obj` VALUES (22,53,NULL,'Api System','C__OBJ__PERSON_API_SYSTEM','System user used for API-calls',NOW(),'system',NOW(),'system',0,2,'SYSID_1323964020',NULL,NULL,NULL,1,NULL,6);
INSERT INTO `isys_obj` VALUES (23,92,NULL,'4-Slot','C__OBJ__RACK_SEGMENT__4SLOT','',NOW(),'system',NOW(),'system',NULL,6,'SYSID_1495441358',NULL,NULL,NULL,1,NULL,6);
INSERT INTO `isys_obj` VALUES (24,92,NULL,'8-Slot','C__OBJ__RACK_SEGMENT__8SLOT','',NOW(),'system',NOW(),'system',NULL,6,'SYSID_1495441400',NULL,NULL,NULL,1,NULL,6);
INSERT INTO `isys_obj` VALUES (25,92,NULL,'2-Slot','C__OBJ__RACK_SEGMENT__2SLOT','',NOW(),'system',NOW(),'system',NULL,6,'SYSID_1495441401',NULL,NULL,NULL,1,NULL,6);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_obj_2_itcockpit` (
  `isys_obj_2_itcockpit__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_obj_2_itcockpit__id_host` int(10) unsigned NOT NULL COMMENT 'it-cockpit host mapping: nag_hosts.id_host',
  PRIMARY KEY (`isys_obj_2_itcockpit__isys_obj__id`,`isys_obj_2_itcockpit__id_host`),
  CONSTRAINT `isys_obj_2_itcockpit_ibfk_1` FOREIGN KEY (`isys_obj_2_itcockpit__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_obj_match` (
  `isys_obj_match__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_obj_match__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_obj_match__bits` int(10) unsigned DEFAULT NULL,
  `isys_obj_match__min_match` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_obj_match__id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_obj_match` VALUES (1,'Default',124,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_obj_type` (
  `isys_obj_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_obj_type__isys_obj_type_group__id` int(10) unsigned DEFAULT NULL,
  `isys_obj_type__isysgui_cats__id` int(10) unsigned DEFAULT NULL,
  `isys_obj_type__default_template` int(10) unsigned DEFAULT NULL,
  `isys_obj_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_obj_type__description` text COLLATE utf8_unicode_ci,
  `isys_obj_type__selfdefined` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_obj_type__container` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_obj_type__idoit_obj_type_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_obj_type__obj_img_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'empty.png',
  `isys_obj_type__icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_obj_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_obj_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_obj_type__property` int(10) unsigned DEFAULT '0',
  `isys_obj_type__status` int(10) unsigned NOT NULL DEFAULT '2',
  `isys_obj_type__show_in_tree` int(10) unsigned NOT NULL DEFAULT '1',
  `isys_obj_type__show_in_rack` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_obj_type__overview` int(10) DEFAULT '0',
  `isys_obj_type__color` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'FFFFFF',
  `isys_obj_type__class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'isys_cmdb_dao_list_objects_all',
  `isys_obj_type__sysid_prefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_obj_type__relation_master` int(10) NOT NULL DEFAULT '0',
  `isys_obj_type__isys_jdisc_profile__id` int(10) unsigned DEFAULT NULL,
  `isys_obj_type__use_template_title` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`isys_obj_type__id`),
  KEY `isys_obj_type__isysgui_cats__id` (`isys_obj_type__isysgui_cats__id`),
  KEY `isys_obj_type__isys_obj_type_group__id` (`isys_obj_type__isys_obj_type_group__id`),
  KEY `isys_obj_type__default_template` (`isys_obj_type__default_template`),
  KEY `isys_obj_type__isys_jdisc_profile__id` (`isys_obj_type__isys_jdisc_profile__id`),
  KEY `isys_obj_type__const` (`isys_obj_type__const`),
  KEY `isys_obj_type__title` (`isys_obj_type__title`),
  CONSTRAINT `isys_obj_type__default_template` FOREIGN KEY (`isys_obj_type__default_template`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `isys_obj_type__isys_jdisc_profile__id` FOREIGN KEY (`isys_obj_type__isys_jdisc_profile__id`) REFERENCES `isys_jdisc_profile` (`isys_jdisc_profile__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_obj_type__isys_obj_type_group__id` FOREIGN KEY (`isys_obj_type__isys_obj_type_group__id`) REFERENCES `isys_obj_type_group` (`isys_obj_type_group__id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `isys_obj_type__isysgui_cats__id` FOREIGN KEY (`isys_obj_type__isysgui_cats__id`) REFERENCES `isysgui_cats` (`isysgui_cats__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_obj_type` VALUES (1,1,4,NULL,'LC__CMDB__OBJTYPE__SERVICE','',0,0,'','service.jpg','images/icons/silk/application_osx_terminal.png','C__OBJTYPE__SERVICE',1000,0,2,1,0,0,'987384','isys_cmdb_dao_list_objects_service',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (2,1,20,NULL,'LC__CMDB__OBJTYPE__APPLICATION','',0,0,'','application.jpg','images/icons/silk/application_xp.png','C__OBJTYPE__APPLICATION',1010,0,2,1,0,0,'E4B9D7','isys_cmdb_dao_list_objects_application',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (3,2,NULL,NULL,'LC__CMDB__OBJTYPE__BUILDING','',0,1,'','building.png','images/icons/silk/building.png','C__OBJTYPE__BUILDING',10,0,2,1,0,0,'D1695E','isys_cmdb_dao_list_objects_building',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (4,2,1,NULL,'LC__CMDB__OBJTYPE__ENCLOSURE','',0,1,'','enclosure.png','images/icons/silk/timeline_marker_rotated.png','C__OBJTYPE__ENCLOSURE',30,0,2,1,0,1,'D3E3FA','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (5,2,NULL,NULL,'LC__CMDB__OBJTYPE__SERVER','',0,0,'','server.png','images/icons/silk/server.png','C__OBJTYPE__SERVER',40,0,2,1,1,1,'A2BCFA','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (6,2,5,NULL,'LC__CMDB__OBJTYPE__SWITCH','',0,0,'','switch.png','images/icons/silk/drive_network.png','C__OBJTYPE__SWITCH',50,0,2,1,1,1,'B8BED1','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (7,2,17,NULL,'LC__CMDB__OBJTYPE__ROUTER','',0,0,'','router.png','images/icons/silk/drive_web.png','C__OBJTYPE__ROUTER',60,0,2,1,1,1,'97D414','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (8,2,16,NULL,'LC__CMDB__OBJTYPE__FC_SWITCH','',0,0,'','fcswitch.png','images/icons/silk/drive_network.png','C__OBJTYPE__FC_SWITCH',130,0,2,1,1,1,'9FC380','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (9,2,NULL,NULL,'LC__CMDB__OBJTYPE__SAN','',0,0,'','san.png','images/icons/silk/drive_cd_empty.png','C__OBJTYPE__SAN',120,0,2,1,1,1,'F0F0E3','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (10,2,15,NULL,'LC__CMDB__OBJTYPE__CLIENT','',0,0,'','client.png','images/icons/silk/computer.png','C__OBJTYPE__CLIENT',90,0,2,1,0,1,'B9E1BE','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (11,2,18,NULL,'LC__CMDB__OBJTYPE__PRINTER','',0,0,'','printer.png','images/icons/silk/printer.png','C__OBJTYPE__PRINTER',100,0,2,1,1,1,'4E93BE','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (12,2,9,NULL,'LC__CMDB__OBJTYPE__AIR_CONDITION_SYSTEM','',0,0,'','aircond.png','klima.gif','C__OBJTYPE__AIR_CONDITION_SYSTEM',170,0,2,1,0,0,'A88AA7','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (13,3,NULL,NULL,'LC__CMDB__OBJTYPE__WAN','',0,0,'','router.png','images/icons/silk/weather_clouds.png','C__OBJTYPE__WAN',1020,0,2,1,0,1,'BAE1D2','isys_cmdb_dao_list_objects_wan',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (14,3,8,NULL,'LC__CMDB__OBJTYPE__EMERGENCY_PLAN','',0,0,'','emergency.jpg','images/icons/silk/text_horizontalrule.png','C__OBJTYPE__EMERGENCY_PLAN',1030,0,2,1,0,0,'C4FFF9','isys_cmdb_dao_list_objects_emergency_plan',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (19,2,NULL,NULL,'LC__CMDB__OBJTYPE__KVM_SWITCH','',0,0,'','router.png','images/icons/silk/image_link.png','C__OBJTYPE__KVM_SWITCH',140,0,2,1,1,1,'7EDF8D','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (22,2,14,NULL,'LC__CMDB__OBJTYPE__MONITOR','',0,0,'','monitor.png','images/icons/silk/monitor.png','C__OBJTYPE__MONITOR',150,0,2,1,1,1,'DCE0D7','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (23,2,NULL,NULL,'LC__CMDB__OBJTYPE__APPLIANCE','',0,0,'','appliances.png','images/icons/silk/drive_disk.png','C__OBJTYPE__APPLIANCE',80,0,2,1,1,1,'6EAEBF','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (24,2,NULL,NULL,'LC__CMDB__OBJTYPE__TELEPHONE_SYSTEM','',0,0,'','phonesys.png','images/icons/silk/telephone_link.png','C__OBJTYPE__TELEPHONE_SYSTEM',160,0,2,1,1,1,'DDEFFC','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (25,2,NULL,NULL,'LC__CMDB__OBJTYPE__PRINTBOX','',0,0,'','printerbox.png','images/icons/silk/printer_empty.png','C__OBJTYPE__PRINTBOX',110,0,2,1,1,1,'90AD8B','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (26,2,3,NULL,'LC__CMDB__OBJTYPE__ROOM','',0,1,'','room.png','room.gif','C__OBJTYPE__ROOM',20,0,2,1,0,1,'E4FF9E','isys_cmdb_dao_list_objects_room',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (27,2,13,NULL,'LC__CMDB__OBJTYPE__ACCESS_POINT','',0,0,'','wlan.jpg','images/icons/silk/television.png','C__OBJTYPE__ACCESS_POINT',70,0,2,1,1,1,'C5C8B4','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (28,3,81,NULL,'LC__CMDB__OBJTYPE__CONTRACT','',0,0,'','maintenance.jpg','images/icons/silk/text_signature.png','C__OBJTYPE__MAINTENANCE',1040,0,2,1,0,1,'7AD3C6','isys_cmdb_dao_list_objects_contract',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (29,3,19,NULL,'LC__CMDB__OBJTYPE__FILE','',0,0,'','application.jpg','images/icons/silk/disk.png','C__OBJTYPE__FILE',2080,0,2,1,0,1,'CDFCF6','isys_cmdb_dao_list_objects_file',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (30,2,NULL,NULL,'LC__CMDB__OBJTYPE__LOCATION_GENERIC','',0,1,'','','images/icons/silk/house.png','C__OBJTYPE__LOCATION_GENERIC',10,0,2,0,0,0,'FFFFFF','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (31,3,22,NULL,'LC__CMDB__OBJTYPE__LAYER3_NET','',0,0,'','wlan.jpg','images/icons/silk/world_link.png','C__OBJTYPE__LAYER3_NET',10,0,2,1,0,1,'7EE0EB','isys_cmdb_dao_list_objects_layer_3_net',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (32,3,23,NULL,'LC__CMDB__OBJTYPE__CELL_PHONE_CONTRACT','',0,0,'','appliances.png','images/icons/silk/phone.png','C__OBJTYPE__CELL_PHONE_CONTRACT',10,0,2,1,0,1,'F2F3BA','isys_cmdb_dao_list_objects_cell_phone',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (33,1,24,NULL,'LC__CMDB__OBJTYPE__LICENCE','',0,0,'','licence.png','images/icons/silk/key.png','C__OBJTYPE__LICENCE',10,0,2,1,0,0,'EADEAC','isys_cmdb_dao_list_objects_licence',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (34,NULL,NULL,NULL,'Container','',0,0,'','','','C__OBJTYPE__CONTAINER',0,0,0,0,0,0,'1ED7E4','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (35,1,98,NULL,'LC__OBJTYPE__OPERATING_SYSTEM','',0,0,'','application.jpg','images/icons/silk/application_osx.png','C__OBJTYPE__OPERATING_SYSTEM',100,0,2,1,0,0,'838683','isys_cmdb_dao_list_objects_operating_system',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (36,3,25,NULL,'LC__OBJTYPE__GROUP','',0,0,'','printerbox.png','images/icons/silk/sitemap_color.png','C__OBJECT_TYPE__GROUP',65535,0,2,1,0,0,'E1B9DC','isys_cmdb_dao_list_objects_group',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (37,3,NULL,NULL,'LC__OBJECT_TYPE__GENERIC_TEMPLATE','Generic template for unspecified template categories',0,0,'','','','C__OBJTYPE__GENERIC_TEMPLATE',65535,0,1,0,0,0,'9739B4','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (38,2,NULL,NULL,'LC__CMDB__OBJTYPE__PHONE','Phone',0,0,'','phone.png','images/icons/silk/telephone.png','C__OBJTYPE__PHONE',65535,0,2,1,0,0,'6886B4','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (39,2,NULL,NULL,'Host','Host',0,0,'','server.png','images/icons/silk/server.png','C__OBJTYPE__HOST',500,0,2,1,0,1,'DADA5E','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (40,2,NULL,NULL,'LC__CMDB__OBJTYPE__CABLE',NULL,0,0,NULL,'fcswitch.png','kabel.gif','C__OBJTYPE__CABLE',10000,0,2,1,0,0,'B39E92','isys_cmdb_dao_list_objects_cable',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (41,2,NULL,NULL,'LC__CMDB__OBJTYPE__CONVERTER',NULL,0,0,NULL,'fcswitch.png','images/icons/silk/connect.png','C__OBJTYPE__CONVERTER',10001,0,2,1,0,0,'CAB97D','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (42,2,40,NULL,'LC__CMDB__OBJTYPE__WIRING_SYSTEM',NULL,0,0,NULL,'fcswitch.png','images/icons/silk/text_letter_omega.png','C__OBJTYPE__WIRING_SYSTEM',10002,0,2,1,0,0,'D1695E','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (43,2,NULL,NULL,'LC__CMDB__OBJTYPE__PATCH_PANEL',NULL,0,0,NULL,'switch.png','images/icons/silk/drive_rename_dotted.png','C__OBJTYPE__PATCH_PANEL',10003,0,2,1,1,0,'BCDCB9','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (44,2,NULL,NULL,'LC__CMDB__OBJTYPE__AMPLIFIER',NULL,0,0,NULL,'appliances.png','verstaerker.gif','C__OBJTYPE__AMPLIFIER',10000,0,2,1,0,0,'AF7FF1','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (45,3,NULL,NULL,'LC__OBJTYPE__IT_SERVICE',NULL,0,0,NULL,'service.jpg','images/icons/silk/chart_pie.png','C__OBJTYPE__IT_SERVICE',11000,0,2,1,0,1,'C7F464','isys_cmdb_dao_list_objects_it_service',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (46,2,NULL,NULL,'LC__CMDB__OBJTYPE__ESC',NULL,0,0,NULL,'power.jpg','images/icons/silk/lightbulb.png','C__OBJTYPE__ESC',20000,0,2,1,0,0,'EB8348','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (47,2,43,NULL,'LC__CMDB__OBJTYPE__EPS',NULL,0,0,NULL,'power.jpg','nea.gif','C__OBJTYPE__EPS',20001,0,2,1,0,0,'E1E79E','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (48,2,NULL,NULL,'LC__CMDB__OBJTYPE__DISTRIBUTION_BOX',NULL,0,0,NULL,'power.jpg','verteiler.gif','C__OBJTYPE__DISTRIBUTION_BOX',20002,0,2,1,0,0,'A5EEA0','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (49,2,64,NULL,'LC__CMDB__OBJTYPE__PDU',NULL,0,0,NULL,'power.jpg','pdu.gif','C__OBJTYPE__PDU',20003,0,2,1,0,0,'43CBE1','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (50,2,42,NULL,'LC__CMDB__OBJTYPE__UPS',NULL,0,0,NULL,'power.jpg','images/icons/silk/lightning.png','C__OBJTYPE__UPS',20004,0,2,1,1,0,'FDD84E','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (51,3,44,NULL,'LC__CMDB__OBJTYPE__SAN_ZONING',NULL,0,0,NULL,'san.png','images/icons/silk/layers.png','C__OBJTYPE__SAN_ZONING',20006,0,2,1,0,0,'DDE143','isys_cmdb_dao_list_objects_san_zoning',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (52,1000,45,NULL,'LC__CMDB__OBJTYPE__ORGANIZATION',NULL,0,0,NULL,'building.png','images/icons/silk/sitemap.png','C__OBJTYPE__ORGANIZATION',110,0,2,1,0,1,'82E27E','isys_cmdb_dao_list_objects_organization',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (53,1000,48,NULL,'LC__CONTACT__TREE__PERSON',NULL,0,0,NULL,'empty.png','images/tree/person_intern.gif','C__OBJTYPE__PERSON',10,0,2,1,0,1,'EFAA43','isys_cmdb_dao_list_objects_person',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (54,1000,52,NULL,'LC__CONTACT__TREE__PERSON_GROUP',NULL,0,0,NULL,'empty.png','images/tree/group.gif','C__OBJTYPE__PERSON_GROUP',20,0,2,1,0,1,'F3FFEF','isys_cmdb_dao_list_objects_person_group',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (55,3,NULL,NULL,'LC__CMDB__OBJTYPE__CLUSTER','',0,0,'','server.png','images/icons/silk/application_cascade.png','C__OBJTYPE__CLUSTER',65535,0,2,1,0,1,'9FAAB7','isys_cmdb_dao_list_objects_cluster',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (56,1,58,NULL,'LC__CMDB__OBJTYPE__CLUSTER_SERVICE',NULL,0,0,NULL,'application.jpg','images/icons/silk/application_cascade.png','C__OBJTYPE__CLUSTER_SERVICE',20006,0,2,1,0,0,'B6BFC9','isys_cmdb_dao_list_objects_cluster_service',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (57,2,15,NULL,'LC__CMDB__OBJTYPE__VIRTUAL_CLIENT','',0,0,'','client.png','images/icons/silk/computer_link.png','C__OBJTYPE__VIRTUAL_CLIENT',91,0,2,1,0,0,'9FAA7C','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (58,2,NULL,NULL,'LC__CMDB__OBJTYPE__VIRTUAL_HOST','',0,0,'','server.png','images/icons/silk/server_database.png','C__OBJTYPE__VIRTUAL_HOST',501,0,2,1,0,0,'E6E9DC','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (59,2,NULL,NULL,'LC__CMDB__OBJTYPE__VIRTUAL_SERVER','',0,0,'','server.png','images/icons/silk/server_chart.png','C__OBJTYPE__VIRTUAL_SERVER',45,0,2,1,0,0,'6D7F92','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (60,NULL,59,NULL,'LC__CMDB__OBJTYPE__RELATION','',0,0,'','','','C__OBJTYPE__RELATION',65535,0,2,0,0,1,'C5CCD4','isys_cmdb_dao_list_objects_relation',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (61,1,62,NULL,'DBMS','',0,0,'','san.png','images/icons/silk/database.png','C__OBJTYPE__DBMS',40,0,2,1,0,0,'AAAAAA','isys_cmdb_dao_list_objects_dbms',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (62,1,60,NULL,'LC__OBJTYPE__DATABASE_SCHEMA','',0,0,'','application.jpg','images/icons/silk/database_table.png','C__OBJTYPE__DATABASE_SCHEMA',41,0,2,1,0,0,'B0C4DE','isys_cmdb_dao_list_objects_database_schema',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (63,NULL,67,NULL,'LC__RELATION__PARALLEL_RELATIONS','',0,0,'','','','C__OBJTYPE__PARALLEL_RELATION',65535,0,2,1,0,1,'E2C2B9','isys_cmdb_dao_list_objects_parallel_relation',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (64,2,71,NULL,'LC__CMDB__OBJTYPE__REPLICATION',NULL,0,0,NULL,'empty.png','images/icons/silk/arrow_branch.png','C__OBJTYPE__REPLICATION',200,0,2,1,0,0,'C9BAEF','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (65,1,63,NULL,'LC__OBJTYPE__DATABASE_INSTANCE','',0,0,'','service.jpg','images/icons/silk/database_connect.png','C__OBJTYPE__DATABASE_INSTANCE',40,0,2,1,0,0,'61C384','isys_cmdb_dao_list_objects_database_instance',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (66,1,75,NULL,'LC__CMDB__OBJTYPE__MIDDLEWARE',NULL,0,0,NULL,'empty.png','middleware.png','C__OBJTYPE__MIDDLEWARE',NULL,0,2,1,0,0,'EEFFDE','isys_cmdb_dao_list_objects_middleware',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (67,NULL,25,NULL,'LC__CMDB__OBJTYPE__SOA_STACK',NULL,0,0,NULL,'empty.png','','C__OBJTYPE__SOA_STACK',NULL,0,2,1,0,0,'D8BFD8','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (68,3,76,NULL,'LC__CMDB__OBJTYPE__KRYPTO_CARD','',0,0,'','application.jpg','images/icons/silk/page_white_key.png','C__OBJTYPE__KRYPTO_CARD',65535,0,2,1,0,1,'FFFFFF','isys_cmdb_dao_list_objects_kryptocard',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (69,3,NULL,NULL,'LC__CMDB__OBJTYPE__SIM_CARD','',0,0,'','application.jpg','images/icons/silk/page_white_database.png','C__OBJTYPE__SIM_CARD',65535,0,2,1,0,1,'FFFFFF','isys_cmdb_dao_list_objects_sim_card',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (70,3,79,NULL,'LC__CMDB__OBJTYPE__LAYER2_NET',NULL,0,0,NULL,'fcswitch.png','images/icons/silk/page_white_gear.png','C__OBJTYPE__LAYER2_NET',10,0,2,1,0,1,'7EE0EB','isys_cmdb_dao_list_objects_layer_2_net',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (71,2,NULL,NULL,'LC__CMDB__OBJTYPE__WORKSTATION',NULL,0,0,NULL,'client.png','images/icons/silk/drive_user.png','C__OBJTYPE__WORKSTATION',35,0,2,1,0,0,'FFFFFF','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (72,3,22,NULL,'LC__CMDB__OBJTYPE__MIGRATION_OBJECTS',NULL,0,0,NULL,'empty.png','','C__OBJTYPE__MIGRATION_OBJECT',NULL,0,2,1,0,0,'FFFFFF','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (73,2,84,NULL,'LC__OBJTYPE__SWITCH_CHASSIS',NULL,0,1,NULL,'enclosure.png','images/icons/silk/timeline_marker.png','C__OBJTYPE__SWITCH_CHASSIS',NULL,0,2,1,1,0,'FFFFFF','isys_cmdb_dao_list_objects_all',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (74,2,84,NULL,'LC__OBJTYPE__BLADE_CHASSIS',NULL,0,1,NULL,'enclosure.png','images/icons/silk/timeline_marker.png','C__OBJTYPE__BLADE_CHASSIS',NULL,0,2,1,1,0,'FFFFFF','isys_cmdb_dao_list_objects_all',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (75,2,NULL,NULL,'LC__OBJTYPE__BLADE_SERVER',NULL,0,0,NULL,'server.png','images/icons/silk/drive.png','C__OBJTYPE__BLADE_SERVER',NULL,0,2,1,1,0,'FFFFFF','isys_cmdb_dao_list_objects_all',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (76,2,NULL,NULL,'LC__CMDB__OBJTYPE__VOIP_PHONE','Voice over IP phone',0,0,NULL,'phone.png','images/icons/silk/phone_sound.png','C__OBJTYPE__VOIP_PHONE',65535,0,2,1,0,0,'FF8800','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (77,3,22,NULL,'LC__OBJTYPE__SUPERNET',NULL,0,1,NULL,'wlan.jpg','images/icons/silk/world.png','C__OBJTYPE__SUPERNET',NULL,0,2,1,1,0,'FFFFFF','isys_cmdb_dao_list_objects_supernet',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (81,3,NULL,NULL,'LC__OBJTYPE__VEHICLE',NULL,0,0,NULL,'empty.png','images/icons/silk/car.png','C__OBJTYPE__VEHICLE',NULL,0,2,1,0,0,'83C5E1','isys_cmdb_dao_list_objects_vehicle',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (82,3,NULL,NULL,'LC__OBJTYPE__AIRCRAFT',NULL,0,0,NULL,'empty.png','images/icons/airplane.png','C__OBJTYPE__AIRCRAFT',NULL,0,2,1,0,0,'479FC4','isys_cmdb_dao_list_objects_aircraft',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (83,3,NULL,NULL,'LC__CMDB__OBJTYPE__CLUSTER_VRRP_HSRP','',0,0,'','server.png','images/icons/silk/application_cascade.png','C__OBJTYPE__CLUSTER_VRRP_HSRP',65536,0,2,1,0,1,'9FAAB7','isys_cmdb_dao_list_objects_cluster_vrrp_hsrp',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (84,2,NULL,NULL,'LC__OBJTYPE__COUNTRY',NULL,0,1,NULL,'empty.png','images/icons/silk/map.png','C__OBJTYPE__COUNTRY',NULL,0,2,1,0,0,'ACE177','isys_cmdb_dao_list_objects_country',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (85,2,NULL,NULL,'LC__OBJTYPE__CITY',NULL,0,1,NULL,'empty.png','images/icons/city.png','C__OBJTYPE__CITY',NULL,0,2,1,0,0,'DFB0E1','isys_cmdb_dao_list_objects_city',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (86,NULL,NULL,NULL,'LC__CMDB__OBJTYPE__CABLE_TRAY',NULL,0,1,NULL,'empty.png','images/icons/silk/control_equalizer_blue.png','C__CMDB__OBJTYPE__CABLE_TRAY',NULL,0,2,1,0,0,'FFFFFF','isys_cmdb_dao_list_objects_all',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (87,NULL,NULL,NULL,'LC__CMDB__OBJTYPE__CONDUIT',NULL,0,1,NULL,'empty.png','images/icons/silk/control_equalizer_blue.png','C__CMDB__OBJTYPE__CONDUIT',NULL,0,2,1,0,0,'FFFFFF','isys_cmdb_dao_list_objects_all',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (88,2,NULL,NULL,'LC__CMDB__OBJTYPE__RM_CONTROLLER','',0,0,'','','images/icons/silk/bullet_picture.png','C__OBJTYPE__RM_CONTROLLER',65536,0,2,1,0,0,'FFFFFF','isys_cmdb_dao_list_objects_all',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (89,3,NULL,NULL,'LC__OBJTYPE__VRRP',NULL,0,0,NULL,'switch.png','images/icons/silk/disconnect.png','C__OBJTYPE__VRRP',99,0,2,1,0,0,'ABCDEF','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (90,3,NULL,NULL,'LC__OBJTYPE__STACKING',NULL,0,0,NULL,'switch.png','images/icons/silk/drive_stack.png','C__OBJTYPE__STACKING',99,0,2,1,0,0,'FEDCBA','isys_cmdb_dao_list_objects',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (91,3,NULL,NULL,'LC__OBJTYPE__NET_ZONE',NULL,0,0,NULL,'wlan.jpg','images/icons/silk/page_white_gear.png','C__OBJTYPE__NET_ZONE',NULL,0,2,1,0,0,'59BDFF','isys_cmdb_dao_list_objects_all',NULL,0,NULL,0);
INSERT INTO `isys_obj_type` VALUES (92,2,84,NULL,'LC__OBJTYPE__RACK_SEGMENT',NULL,0,1,NULL,'enclosure.png','images/icons/silk/timeline_marker.png','C__OBJTYPE__RACK_SEGMENT',NULL,0,2,1,1,0,'FFE3A1','isys_cmdb_dao_list_objects_all',NULL,0,NULL,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_obj_type_2_isysgui_catg` (
  `isys_obj_type_2_isysgui_catg__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_obj_type_2_isysgui_catg__isys_obj_type__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_obj_type_2_isysgui_catg__isysgui_catg__id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`isys_obj_type_2_isysgui_catg__id`),
  KEY `isysgui_obj_type_catg_FKIndex2` (`isys_obj_type_2_isysgui_catg__isysgui_catg__id`),
  KEY `isys_obj_type_2_isysgui_catg_FKIndex2` (`isys_obj_type_2_isysgui_catg__isys_obj_type__id`),
  CONSTRAINT `isys_obj_type_2_isysgui_catg_ibfk_10` FOREIGN KEY (`isys_obj_type_2_isysgui_catg__isysgui_catg__id`) REFERENCES `isysgui_catg` (`isysgui_catg__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_obj_type_2_isysgui_catg_ibfk_9` FOREIGN KEY (`isys_obj_type_2_isysgui_catg__isys_obj_type__id`) REFERENCES `isys_obj_type` (`isys_obj_type__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3708 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (619,1,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (620,1,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (621,1,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (623,1,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (624,1,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (625,1,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (626,1,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (627,1,30);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (628,1,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (629,1,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (630,1,15);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (631,2,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (632,2,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (633,2,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (635,2,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (636,2,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (637,2,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (638,2,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (639,2,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (640,2,30);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (641,3,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (642,3,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (643,3,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (644,3,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (645,3,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (647,3,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (648,3,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (649,3,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (650,3,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (651,4,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (652,4,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (653,4,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (654,4,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (655,4,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (656,4,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (657,4,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (658,4,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (659,4,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (660,4,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (661,4,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (662,4,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (663,5,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (664,5,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (665,5,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (666,5,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (667,5,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (668,5,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (669,5,4);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (670,5,5);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (671,5,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (672,5,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (673,5,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (676,5,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (677,5,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (679,5,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (680,5,12);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (681,5,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (682,5,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (683,5,15);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (684,5,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (685,5,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (686,6,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (687,6,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (688,6,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (689,6,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (690,6,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (691,6,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (692,6,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (693,6,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (694,6,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (696,6,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (697,6,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (699,6,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (700,6,12);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (701,6,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (702,6,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (703,6,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (704,6,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (706,7,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (707,7,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (708,7,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (709,7,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (710,7,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (711,7,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (712,7,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (713,7,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (714,7,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (716,7,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (717,7,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (719,7,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (720,7,12);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (721,7,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (722,7,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (723,7,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (724,7,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (746,9,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (747,9,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (748,9,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (749,9,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (750,9,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (751,9,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (752,9,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (753,9,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (754,9,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (757,9,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (758,9,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (760,9,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (761,9,12);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (762,9,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (763,9,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (764,9,15);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (765,9,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (766,9,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (767,10,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (768,10,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (769,10,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (770,10,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (771,10,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (772,10,4);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (773,10,5);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (774,10,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (775,10,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (776,10,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (779,10,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (781,10,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (782,10,12);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (783,10,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (784,10,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (785,10,15);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (786,10,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (787,10,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (788,11,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (789,11,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (790,11,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (791,11,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (792,11,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (793,11,5);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (794,11,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (795,11,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (796,11,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (798,11,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (800,11,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (801,11,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (802,11,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (803,11,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (804,11,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (822,12,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (823,12,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (824,12,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (825,12,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (826,12,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (827,12,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (828,12,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (829,12,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (831,12,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (832,12,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (834,12,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (835,12,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (836,12,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (837,12,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (838,12,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (839,13,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (840,13,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (841,13,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (843,13,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (845,13,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (846,13,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (847,13,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (848,13,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (849,14,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (850,14,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (851,14,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (852,14,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (853,14,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (854,14,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (855,14,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (873,18,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (874,18,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (875,18,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (876,18,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (877,18,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (878,18,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (879,18,4);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (880,18,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (881,18,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (883,18,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (884,18,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (886,18,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (887,18,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (888,18,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (889,18,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (890,19,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (891,19,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (892,19,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (893,19,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (894,19,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (895,19,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (896,19,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (897,19,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (898,19,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (899,19,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (901,19,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (902,19,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (903,19,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (904,19,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (905,19,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (906,22,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (907,22,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (908,22,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (909,22,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (910,22,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (911,22,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (912,22,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (913,22,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (914,22,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (916,22,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (917,22,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (918,22,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (919,22,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (920,23,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (921,23,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (922,23,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (923,23,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (924,23,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (925,23,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (926,23,4);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (927,23,5);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (928,23,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (929,23,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (930,23,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (933,23,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (934,23,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (936,23,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (937,23,12);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (938,23,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (939,23,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (940,23,15);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (941,23,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (942,24,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (943,24,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (944,24,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (945,24,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (946,24,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (947,24,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (948,24,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (949,24,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (950,24,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (952,24,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (953,24,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (955,24,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (956,24,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (957,24,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (958,24,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (959,24,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (960,25,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (961,25,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (962,25,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (963,25,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (964,25,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (965,25,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (966,25,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (967,25,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (969,25,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (971,25,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (972,25,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (973,25,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (974,25,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (975,25,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (976,26,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (977,26,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (978,26,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (979,26,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (980,26,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (981,26,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (982,26,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (983,26,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (984,26,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (985,26,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (986,27,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (987,27,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (988,27,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (989,27,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (990,27,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (991,27,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (992,27,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (994,27,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (995,27,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (996,27,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (997,27,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (998,27,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (999,27,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1000,28,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1001,28,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1002,28,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1003,28,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1004,28,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1005,28,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1006,29,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1007,29,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1008,29,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1009,29,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1010,29,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1011,29,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1012,30,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1013,30,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1014,30,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1015,31,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1016,31,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1017,31,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1018,31,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1020,32,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1021,32,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1022,32,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1023,32,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1024,32,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1025,32,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1026,32,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1027,32,5);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1028,32,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1029,32,12);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1030,32,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1031,32,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1032,33,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1033,33,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1034,33,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1035,33,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1036,33,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1037,33,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1038,33,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1039,5,33);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1040,10,33);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1041,26,34);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1042,4,34);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1043,3,34);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1047,10,35);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1048,5,35);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1049,36,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1050,36,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1051,36,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1052,36,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1054,36,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1055,36,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1056,36,30);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1057,36,15);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1058,36,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1059,5,72);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1060,10,72);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1061,38,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1062,38,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1063,38,12);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1065,38,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1072,39,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1073,39,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1074,39,4);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1075,39,5);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1076,39,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1078,39,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1079,39,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1080,39,12);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1081,39,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1082,39,15);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1084,39,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1085,39,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1086,39,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1089,39,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1090,39,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1091,39,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1092,39,30);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1093,39,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1094,39,35);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1096,39,33);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1097,39,72);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1099,1,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1100,2,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1101,3,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1102,4,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1103,5,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1104,6,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1105,7,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1107,9,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1108,10,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1109,11,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1110,12,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1111,13,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1112,14,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1113,18,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1114,19,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1115,22,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1116,23,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1117,24,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1118,25,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1119,26,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1120,27,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1121,28,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1122,29,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1123,30,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1124,31,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1125,32,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1126,33,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1127,34,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1128,35,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1129,36,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1130,37,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1131,38,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1133,10,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1134,5,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1135,35,30);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1136,35,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1137,35,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1139,35,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1140,35,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1141,35,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1142,35,48);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1145,40,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1146,40,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1147,40,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1148,40,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1149,40,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1152,40,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1153,40,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1154,41,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1155,41,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1156,41,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1157,41,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1158,41,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1161,41,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1162,41,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1163,42,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1164,42,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1165,42,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1166,42,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1167,42,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1170,42,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1171,42,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1172,43,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1173,43,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1174,43,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1175,43,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1176,43,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1179,43,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1180,43,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1181,44,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1182,44,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1183,44,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1184,44,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1185,44,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1188,44,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1189,44,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1190,40,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1191,41,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1192,43,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1193,44,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1194,5,51);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1195,6,51);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1196,5,52);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1197,10,52);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1198,45,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1199,45,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1200,45,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1202,45,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1203,45,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1204,45,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1205,45,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1207,45,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1208,45,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1209,45,52);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1210,45,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1212,46,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1213,46,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1214,46,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1215,46,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1216,46,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1219,46,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1220,46,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1221,46,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1222,46,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1223,46,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1224,46,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1225,47,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1226,47,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1227,47,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1228,47,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1229,47,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1232,47,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1233,47,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1234,47,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1235,47,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1236,47,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1237,47,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1238,47,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1241,47,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1242,47,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1243,48,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1244,48,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1245,48,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1246,48,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1250,48,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1251,48,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1252,48,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1253,48,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1254,48,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1255,48,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1256,48,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1259,48,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1260,48,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1261,49,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1262,49,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1263,49,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1264,49,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1265,49,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1268,49,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1269,49,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1270,49,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1271,49,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1272,49,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1273,49,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1274,49,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1277,49,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1278,49,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1279,50,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1280,50,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1281,50,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1282,50,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1283,50,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1286,50,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1287,50,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1288,50,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1289,50,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1290,50,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1291,50,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1292,50,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1295,50,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1296,50,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1297,46,54);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1298,50,54);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1299,47,54);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1318,51,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1319,5,42);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1320,39,42);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1321,23,42);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1322,10,42);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1323,9,42);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1325,5,8);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1326,39,8);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1327,23,8);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1328,10,8);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1329,9,8);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1331,5,46);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1332,39,46);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1333,23,46);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1334,10,46);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1335,9,46);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1337,51,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1338,51,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1340,51,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1341,51,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1343,51,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1344,51,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1345,51,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1346,51,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1347,51,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1348,53,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1349,53,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1350,53,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1351,54,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1352,54,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1353,54,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1354,52,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1355,52,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1358,8,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1359,8,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1360,8,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1361,8,4);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1362,8,5);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1363,8,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1364,8,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1365,8,12);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1366,8,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1368,8,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1369,8,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1370,8,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1371,8,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1373,8,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1374,8,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1375,8,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1376,8,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1377,8,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1378,8,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1379,8,42);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1380,8,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1383,55,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1384,55,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1385,55,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1386,55,59);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1387,56,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1388,56,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1389,56,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1390,56,42);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1391,56,61);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1392,5,61);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1393,10,61);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1394,5,65);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1395,2,66);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1396,1,66);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1397,56,66);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1398,57,52);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1399,57,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1400,57,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1401,57,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1402,57,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1403,57,33);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1404,57,35);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1405,57,72);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1407,57,4);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1408,57,5);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1409,57,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1410,57,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1411,57,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1412,57,42);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1413,57,8);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1414,57,46);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1415,57,61);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1417,57,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1419,57,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1420,57,12);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1421,57,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1423,57,15);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1424,57,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1425,57,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1426,58,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1427,58,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1428,58,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1429,58,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1430,58,35);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1431,58,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1432,58,4);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1433,58,5);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1434,58,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1435,58,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1436,58,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1437,58,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1438,58,42);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1439,58,8);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1440,58,46);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1441,58,61);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1443,58,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1445,58,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1446,58,12);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1447,58,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1449,58,15);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1450,58,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1451,58,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1452,58,69);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1453,5,69);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1454,59,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1455,59,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1456,59,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1457,59,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1458,59,35);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1459,59,4);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1460,59,5);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1461,59,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1462,59,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1463,59,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1464,59,42);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1465,59,8);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1466,59,46);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1467,59,61);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1469,59,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1471,59,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1472,59,12);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1473,59,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1474,59,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1475,59,15);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1476,59,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1477,59,72);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1478,59,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1479,5,76);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1480,5,77);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1481,55,69);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1482,60,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1483,60,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1485,5,81);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1486,59,81);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1487,57,81);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1488,58,81);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1489,10,81);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1490,39,81);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1491,35,66);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1492,61,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1493,61,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1494,61,52);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1495,61,30);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1497,61,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1498,61,48);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1499,61,66);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1500,62,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1501,62,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1502,62,52);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1503,62,30);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1507,45,153);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1508,5,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1509,2,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1510,55,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1511,29,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1512,14,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1513,28,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1514,56,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1515,33,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1516,35,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1517,1,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1518,3,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1519,6,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1520,7,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1521,8,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1522,58,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1523,57,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1524,59,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1525,39,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1526,10,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1527,63,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1528,63,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1529,63,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1530,63,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1531,2,84);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1532,1,84);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1533,62,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1534,61,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1535,61,61);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1536,61,42);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1537,1,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1538,2,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1539,3,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1540,4,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1541,5,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1542,6,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1543,7,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1544,8,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1545,9,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1546,10,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1547,11,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1548,12,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1549,13,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1550,14,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1551,19,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1552,22,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1553,23,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1554,24,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1555,25,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1556,26,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1557,27,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1558,28,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1559,29,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1560,30,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1561,31,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1562,32,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1563,33,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1564,34,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1565,35,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1566,36,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1567,37,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1568,38,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1569,39,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1570,40,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1571,41,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1572,42,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1573,43,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1574,44,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1575,46,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1576,47,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1577,48,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1578,49,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1579,50,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1580,51,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1581,52,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1582,53,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1583,54,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1584,55,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1585,56,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1586,57,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1587,58,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1588,59,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1589,60,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1590,61,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1591,62,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1592,63,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1593,64,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1594,64,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1595,64,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1596,65,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1597,65,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1598,65,52);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1599,65,30);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1601,65,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1602,65,48);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1603,65,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1605,66,61);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1606,66,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1607,66,42);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1608,67,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1609,66,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1610,66,12);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1611,66,88);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1612,60,12);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1613,60,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1614,60,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1615,4,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1616,9,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1617,11,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1618,12,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1619,13,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1620,19,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1621,22,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1622,23,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1623,24,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1624,25,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1625,26,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1626,27,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1627,31,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1628,32,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1629,36,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1630,38,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1631,40,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1632,41,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1633,42,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1634,43,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1635,44,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1636,45,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1637,46,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1638,47,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1639,48,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1640,49,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1641,50,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1642,51,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1643,61,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1646,32,90);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1647,68,92);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1648,68,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1649,68,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1650,68,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1651,68,91);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1652,69,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1653,69,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1654,69,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1655,69,91);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1659,39,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1660,39,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1661,57,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1662,7,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1663,70,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1664,71,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1665,71,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1666,71,95);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1667,71,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1668,71,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1669,71,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1670,71,96);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1671,10,97);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1672,38,97);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1673,22,97);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1674,11,97);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1675,71,98);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1676,53,99);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1677,6,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1678,28,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1679,56,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1680,66,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1681,67,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1682,35,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1683,71,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1684,37,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1685,37,42);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1686,37,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1687,37,84);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1688,37,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1689,37,46);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1690,37,48);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1691,37,59);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1692,37,65);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1693,37,68);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1694,37,69);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1695,37,76);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1696,37,77);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1697,37,153);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1698,37,87);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1699,37,90);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1700,37,91);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1701,37,92);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1702,37,93);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1703,37,95);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1704,37,96);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1705,37,97);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1706,37,99);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1707,37,100);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1708,37,66);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1709,37,81);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1710,37,72);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1711,37,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1712,37,86);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1713,37,98);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1714,37,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1715,37,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1716,37,34);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1717,37,35);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1718,37,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1719,37,54);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1720,37,61);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1721,37,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1722,37,33);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1723,37,4);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1724,37,5);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1725,37,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1726,37,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1727,37,8);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1728,37,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1729,37,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1730,37,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1731,37,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1732,37,12);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1733,37,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1734,37,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1735,37,15);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1736,37,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1737,37,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1738,37,30);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1739,37,51);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1740,37,52);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1741,37,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1743,75,101);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1744,26,103);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1746,73,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1748,73,102);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1749,73,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1750,73,34);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1751,73,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1752,73,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1753,73,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1755,74,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1757,74,102);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1758,74,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1759,74,34);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1760,74,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1761,74,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1762,74,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1763,53,104);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1764,54,104);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1765,76,105);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1766,76,106);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1767,38,107);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1768,5,109);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1769,10,109);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1770,56,109);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1771,57,109);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1772,58,109);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1773,59,109);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1774,61,109);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1775,66,109);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1776,77,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1777,77,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1778,77,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1779,77,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1780,77,110);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1781,66,111);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1782,33,111);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1783,61,111);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1784,65,111);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1785,62,111);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1786,35,111);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1787,1,111);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1788,2,111);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1789,56,111);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1790,45,112);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1791,75,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1792,75,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1793,75,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1794,75,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1795,75,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1796,75,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1797,75,4);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1798,75,5);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1799,75,9);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1800,75,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1801,75,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1802,75,28);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1803,75,18);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1804,75,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1805,75,12);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1806,75,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1807,75,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1808,75,15);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1809,75,32);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1810,75,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1811,75,33);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1812,75,35);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1813,75,72);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1814,75,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1815,75,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1816,75,51);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1817,75,52);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1818,75,42);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1819,75,8);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1820,75,46);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1821,75,61);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1822,75,65);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1823,75,69);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1824,75,76);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1825,75,77);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1826,75,81);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1827,75,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1828,75,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1829,75,109);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1830,74,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1831,5,125);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1832,6,125);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1833,7,125);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1834,37,125);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1835,36,116);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1836,78,117);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1837,78,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1838,78,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1839,78,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1840,79,118);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1841,79,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1842,79,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1843,79,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1844,80,123);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1845,80,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1846,80,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1847,80,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1851,35,128);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1852,2,128);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1853,1,128);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1854,48,49);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1855,5,100);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1856,74,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1857,3,134);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1858,52,134);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1859,81,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1860,81,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1861,81,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1862,81,137);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1863,81,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1864,81,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1865,81,51);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1866,81,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1867,82,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1868,82,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1869,82,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1870,82,138);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1871,82,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1872,82,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1873,82,51);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1874,82,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1875,5,139);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1876,10,139);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1877,59,139);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1878,57,139);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1879,83,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1880,83,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1881,83,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1882,83,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1883,83,59);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1884,83,69);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1885,83,80);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1886,83,46);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1887,5,143);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1888,59,143);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1889,58,143);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1890,6,143);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1891,75,143);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1892,2,148);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1893,84,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1894,84,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1895,84,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1896,84,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1897,84,34);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1898,85,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1899,85,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1900,85,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1901,85,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1902,85,34);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1903,40,175);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1904,76,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1905,70,156);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1906,86,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1907,86,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1908,86,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1909,86,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1910,86,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1911,86,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1912,86,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1913,86,34);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1914,87,38);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1915,87,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1916,87,20);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1917,87,3);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1918,87,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1919,87,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1920,87,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1921,87,34);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1922,40,157);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1923,70,158);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1924,5,154);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1925,6,154);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1926,7,154);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1927,9,154);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1928,10,154);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1929,23,154);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1930,32,154);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1931,38,154);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1932,39,154);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1933,8,154);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1934,57,154);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1935,58,154);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1936,59,154);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1937,66,154);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1938,60,154);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1939,37,154);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1940,75,154);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1955,75,145);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1956,5,145);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1957,59,145);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1958,58,145);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1959,7,145);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1960,6,145);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1961,34,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1962,76,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1963,78,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1964,79,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1965,80,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1966,81,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1967,82,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1968,84,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1969,85,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1970,86,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1971,87,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1972,35,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1973,72,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1974,67,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1975,66,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1976,70,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1977,73,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1978,74,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1992,5,161);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1993,88,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1994,88,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1995,88,14);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1996,88,86);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1997,88,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1998,88,31);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (1999,88,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2000,88,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2001,88,2);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2002,13,160);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2003,88,163);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2004,1,48);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2005,2,48);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2007,56,48);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2009,66,48);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2010,89,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2011,89,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2012,89,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2013,89,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2014,89,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2015,89,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2016,89,165);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2017,90,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2018,90,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2019,90,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2020,90,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2021,90,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2022,90,47);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2023,90,7);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2024,90,168);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2025,83,165);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2026,53,27);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2027,91,171);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2028,91,21);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2029,92,26);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2030,92,34);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2031,92,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2032,90,174);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2036,1,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2037,1,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2041,2,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2042,2,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2046,3,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2047,3,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2051,4,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2052,4,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2056,5,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2057,5,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2061,6,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2062,6,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2066,7,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2067,7,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2071,8,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2072,8,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2076,9,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2077,9,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2081,10,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2082,10,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2086,11,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2087,11,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2091,12,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2092,12,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2096,13,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2097,13,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2101,14,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2102,14,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2106,19,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2107,19,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2111,22,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2112,22,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2116,23,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2117,23,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2121,24,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2122,24,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2126,25,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2127,25,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2131,26,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2132,26,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2136,27,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2137,27,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2141,28,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2142,28,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2146,29,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2147,29,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2150,30,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2151,30,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2152,30,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2156,31,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2157,31,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2161,32,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2162,32,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2166,33,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2167,33,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2168,34,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2170,34,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2171,34,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2172,34,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2176,35,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2177,35,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2181,36,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2182,36,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2186,37,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2191,38,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2192,38,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2196,39,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2197,39,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2201,40,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2202,40,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2206,41,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2207,41,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2211,42,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2212,42,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2216,43,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2217,43,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2221,44,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2222,44,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2226,45,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2227,45,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2231,46,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2232,46,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2236,47,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2237,47,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2241,48,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2242,48,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2246,49,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2247,49,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2251,50,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2252,50,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2256,51,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2257,51,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2260,52,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2261,52,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2262,52,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2265,53,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2266,53,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2267,53,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2270,54,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2271,54,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2272,54,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2276,55,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2277,55,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2281,56,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2282,56,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2286,57,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2287,57,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2291,58,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2292,58,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2296,59,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2297,59,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2301,60,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2302,60,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2306,61,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2307,61,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2311,62,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2312,62,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2316,63,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2317,63,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2321,64,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2322,64,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2326,65,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2327,65,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2331,66,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2332,66,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2336,67,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2337,67,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2341,68,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2342,68,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2346,69,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2347,69,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2350,70,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2351,70,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2352,70,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2356,71,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2357,71,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2358,72,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2360,72,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2361,72,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2362,72,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2363,73,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2366,73,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2367,73,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2371,74,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2372,74,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2376,75,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2377,75,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2380,76,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2381,76,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2382,76,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2385,77,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2386,77,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2387,77,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2390,78,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2391,78,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2392,78,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2395,79,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2396,79,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2397,79,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2400,80,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2401,80,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2402,80,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2405,81,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2406,81,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2407,81,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2410,82,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2411,82,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2412,82,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2416,83,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2417,83,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2420,84,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2421,84,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2422,84,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2425,85,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2426,85,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2427,85,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2428,86,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2430,86,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2431,86,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2432,86,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2433,87,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2435,87,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2436,87,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2437,87,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2441,88,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2442,88,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2446,89,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2451,90,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2453,91,1);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2454,91,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2455,91,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2456,91,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2457,91,89);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2459,92,22);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2460,92,82);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2461,92,114);
INSERT INTO `isys_obj_type_2_isysgui_catg` VALUES (2462,92,89);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_obj_type_2_isysgui_catg_custom` (
  `isys_obj_type_2_isysgui_catg_custom__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_obj_type_2_isysgui_catg_custom__isys_obj_type__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_obj_type_2_isysgui_catg_custom__isysgui_catg_custom__id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`isys_obj_type_2_isysgui_catg_custom__id`),
  KEY `isys_obj_type_2_isysgui_catg_custom__isysgui_catg_custom__id` (`isys_obj_type_2_isysgui_catg_custom__isysgui_catg_custom__id`),
  KEY `isys_obj_type_2_isysgui_catg_custom__isys_obj_type__id` (`isys_obj_type_2_isysgui_catg_custom__isys_obj_type__id`),
  CONSTRAINT `isys_obj_type_2_isysgui_catg_custom_ibfk_4` FOREIGN KEY (`isys_obj_type_2_isysgui_catg_custom__isys_obj_type__id`) REFERENCES `isys_obj_type` (`isys_obj_type__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_obj_type_2_isysgui_catg_custom_ibfk_5` FOREIGN KEY (`isys_obj_type_2_isysgui_catg_custom__isysgui_catg_custom__id`) REFERENCES `isysgui_catg_custom` (`isysgui_catg_custom__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_obj_type_2_isysgui_catg_custom_overview` (
  `isys_obj_type__id` int(10) unsigned NOT NULL,
  `isysgui_catg_custom__id` int(10) unsigned NOT NULL,
  `isys_obj_type_2_isysgui_catg_custom_overview__sort` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`isys_obj_type__id`,`isysgui_catg_custom__id`),
  KEY `isysgui_catg_custom__id` (`isysgui_catg_custom__id`),
  CONSTRAINT `isys_obj_type_2_isysgui_catg_custom_overview_ibfk_1` FOREIGN KEY (`isys_obj_type__id`) REFERENCES `isys_obj_type` (`isys_obj_type__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_obj_type_2_isysgui_catg_custom_overview_ibfk_2` FOREIGN KEY (`isysgui_catg_custom__id`) REFERENCES `isysgui_catg_custom` (`isysgui_catg_custom__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_obj_type_2_isysgui_catg_overview` (
  `isys_obj_type__id` int(10) unsigned NOT NULL,
  `isysgui_catg__id` int(10) unsigned NOT NULL,
  `isys_obj_type_2_isysgui_catg_overview__sort` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`isys_obj_type__id`,`isysgui_catg__id`),
  KEY `isysgui_catg__id` (`isysgui_catg__id`),
  CONSTRAINT `isys_obj_type_2_isysgui_catg_overview_ibfk_5` FOREIGN KEY (`isys_obj_type__id`) REFERENCES `isys_obj_type` (`isys_obj_type__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_obj_type_2_isysgui_catg_overview_ibfk_6` FOREIGN KEY (`isysgui_catg__id`) REFERENCES `isysgui_catg` (`isysgui_catg__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Connection for the overview view';
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (4,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (4,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (4,3,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (4,26,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (5,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (5,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (5,3,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (5,14,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (5,26,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (5,47,11);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (6,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (6,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (6,3,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (6,14,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (6,26,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (7,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (7,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (7,3,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (7,14,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (7,26,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (8,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (8,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (8,3,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (8,14,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (8,26,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (9,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (9,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (9,3,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (9,14,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (9,26,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (10,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (10,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (10,4,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (10,5,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (10,12,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (10,26,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (11,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (11,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (11,14,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (11,21,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (11,26,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (12,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (12,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (12,14,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (12,21,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (13,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (13,21,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (14,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (18,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (18,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (18,3,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (18,26,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (19,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (19,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (19,3,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (19,26,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (22,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (22,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (22,3,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (22,26,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (23,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (24,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (24,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (24,14,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (24,26,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (25,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (25,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (25,26,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (26,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (26,21,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (26,26,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (27,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (27,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (27,26,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (28,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (29,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (29,21,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (29,32,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (31,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (32,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (32,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (32,5,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (32,28,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (33,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (39,1,1);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (39,47,2);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (55,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (61,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (68,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (68,91,1);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (69,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (69,91,1);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (70,1,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (86,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (86,3,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (86,26,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (86,34,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (87,2,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (87,3,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (87,26,0);
INSERT INTO `isys_obj_type_2_isysgui_catg_overview` VALUES (87,34,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_obj_type_group` (
  `isys_obj_type_group__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_obj_type_group__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_obj_type_group__description` int(10) unsigned DEFAULT NULL,
  `isys_obj_type_group__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_obj_type_group__sort` int(10) unsigned DEFAULT '5',
  `isys_obj_type_group__property` int(10) unsigned DEFAULT '0',
  `isys_obj_type_group__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_obj_type_group__id`),
  KEY `isys_obj_type_group__title` (`isys_obj_type_group__title`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_obj_type_group` VALUES (1,'LC__CMDB__OBJTYPE_GROUP__SOFTWARE',NULL,'C__OBJTYPE_GROUP__SOFTWARE',1,1,2);
INSERT INTO `isys_obj_type_group` VALUES (2,'LC__CMDB__OBJTYPE_GROUP__INFRASTRUCTURE',NULL,'C__OBJTYPE_GROUP__INFRASTRUCTURE',2,1,2);
INSERT INTO `isys_obj_type_group` VALUES (3,'LC__CMDB__OBJTYPE_GROUP__OTHER',NULL,'C__OBJTYPE_GROUP__OTHER',3,0,2);
INSERT INTO `isys_obj_type_group` VALUES (1000,'LC__NAVIGATION__MAINMENU__TITLE_CONTACT',NULL,'C__OBJTYPE_GROUP__CONTACT',4,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_obj_type_list` (
  `isys_obj_type_list__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_obj_type_list__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_obj_type_list__isys_obj_type__id` int(10) unsigned NOT NULL,
  `isys_obj_type_list__query` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_obj_type_list__config` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_obj_type_list__table_config` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_obj_type_list__row_clickable` tinyint(1) unsigned DEFAULT '1',
  `isys_obj_type_list__isys_property_2_cat__id` int(10) unsigned DEFAULT NULL,
  `isys_obj_type_list__sorting_direction` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_obj_type_list__default_filter_wildcard` tinyint(1) unsigned DEFAULT '0',
  `isys_obj_type_list__default_filter_broadsearch` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_obj_type_list__id`),
  KEY `isys_obj_type_list__isys_obj__id` (`isys_obj_type_list__isys_obj__id`),
  KEY `isys_obj_type_list__isys_obj_type__id` (`isys_obj_type_list__isys_obj_type__id`),
  KEY `isys_obj_type_list__isys_property_2_cat__id` (`isys_obj_type_list__isys_property_2_cat__id`),
  CONSTRAINT `isys_obj_type_list_ibfk_1` FOREIGN KEY (`isys_obj_type_list__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE,
  CONSTRAINT `isys_obj_type_list_ibfk_2` FOREIGN KEY (`isys_obj_type_list__isys_obj_type__id`) REFERENCES `isys_obj_type` (`isys_obj_type__id`) ON DELETE CASCADE,
  CONSTRAINT `isys_obj_type_list_ibfk_5` FOREIGN KEY (`isys_obj_type_list__isys_property_2_cat__id`) REFERENCES `isys_property_2_cat` (`isys_property_2_cat__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_ocs_db` (
  `isys_ocs_db__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_ocs_db__host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ocs_db__port` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ocs_db__schema` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ocs_db__user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ocs_db__pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_ocs_db__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_organisation_intern_iop` (
  `isys_organisation_intern_iop__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_organisation_intern_iop__id__headquarter` int(10) unsigned DEFAULT NULL,
  `isys_organisation_intern_iop__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_organisation_intern_iop__description` text COLLATE utf8_unicode_ci,
  `isys_organisation_intern_iop__postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_organisation_intern_iop__city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_organisation_intern_iop__postal_office_box` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_organisation_intern_iop__state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_organisation_intern_iop__street_adress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_organisation_intern_iop__phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_organisation_intern_iop__fax_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_organisation_intern_iop__website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_organisation_intern_iop__sort` int(10) unsigned DEFAULT '5',
  `isys_organisation_intern_iop__status` int(10) unsigned DEFAULT '2',
  `isys_organisation_intern_iop__property` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_organisation_intern_iop__id`),
  KEY `isys_organisation_intern_iop_FKIndex1` (`isys_organisation_intern_iop__id__headquarter`),
  CONSTRAINT `isys_organisation_intern_iop_ibfk_1` FOREIGN KEY (`isys_organisation_intern_iop__id__headquarter`) REFERENCES `isys_organisation_intern_iop` (`isys_organisation_intern_iop__id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_p_mode` (
  `isys_p_mode__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_p_mode__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_p_mode__description` text COLLATE utf8_unicode_ci,
  `isys_p_mode__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_p_mode__sort` int(10) unsigned DEFAULT '5',
  `isys_p_mode__property` int(10) unsigned DEFAULT '0',
  `isys_p_mode__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_p_mode__id`),
  KEY `isys_p_mode__title` (`isys_p_mode__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_p_mode` VALUES (1,'LC__UNIVERSAL__OTHER','DRUCKERMODUS ANDERE','C__PRINTERMODE__OTHER',5,0,2);
INSERT INTO `isys_p_mode` VALUES (2,'RAW','DRUCKERMODUS RAW','C__PRINTERMODE__RAW',5,0,2);
INSERT INTO `isys_p_mode` VALUES (3,'LPR','LPR','C__PRINTERMODE__LPR',5,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_pc_manufacturer` (
  `isys_pc_manufacturer__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_pc_manufacturer__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_pc_manufacturer__description` text COLLATE utf8_unicode_ci,
  `isys_pc_manufacturer__status` int(10) unsigned DEFAULT NULL,
  `isys_pc_manufacturer__property` int(10) unsigned DEFAULT NULL,
  `isys_pc_manufacturer__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_pc_manufacturer__sort` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_pc_manufacturer__id`),
  KEY `isys_pc_manufacturer__title` (`isys_pc_manufacturer__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_pc_model` (
  `isys_pc_model__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_pc_model__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_pc_model__description` text COLLATE utf8_unicode_ci,
  `isys_pc_model__sort` int(10) unsigned DEFAULT NULL,
  `isys_pc_model__status` int(10) unsigned DEFAULT '5',
  `isys_pc_model__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_pc_model_property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_pc_model__id`),
  KEY `isys_pc_model__title` (`isys_pc_model__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_pc_title` (
  `isys_pc_title__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_pc_title__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_pc_title__description` text COLLATE utf8_unicode_ci,
  `isys_pc_title__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_pc_title__sort` int(10) unsigned DEFAULT NULL,
  `isys_pc_title__property` int(10) unsigned DEFAULT NULL,
  `isys_pc_title__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_pc_title__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_person_2_group` (
  `isys_person_2_group__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_person_2_group__isys_obj__id__person` int(10) unsigned NOT NULL,
  `isys_person_2_group__isys_obj__id__group` int(10) unsigned NOT NULL,
  `isys_person_2_group__isys_catg_relation_list__id` int(10) unsigned DEFAULT NULL,
  `isys_person_2_group__ldap` int(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_person_2_group__id`),
  KEY `isys_person_2_group__isys_obj__id__person` (`isys_person_2_group__isys_obj__id__person`),
  KEY `isys_person_2_group__isys_obj__id__group` (`isys_person_2_group__isys_obj__id__group`),
  KEY `isys_person_2_group__isys_catg_relation_list__id` (`isys_person_2_group__isys_catg_relation_list__id`),
  CONSTRAINT `isys_person_2_group__isys_catg_relation_list__id` FOREIGN KEY (`isys_person_2_group__isys_catg_relation_list__id`) REFERENCES `isys_catg_relation_list` (`isys_catg_relation_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_person_2_group_ibfk_1` FOREIGN KEY (`isys_person_2_group__isys_obj__id__person`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_person_2_group_ibfk_2` FOREIGN KEY (`isys_person_2_group__isys_obj__id__group`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_person_2_group` VALUES (2,5,10,1,NULL);
INSERT INTO `isys_person_2_group` VALUES (3,6,11,2,NULL);
INSERT INTO `isys_person_2_group` VALUES (4,7,12,3,NULL);
INSERT INTO `isys_person_2_group` VALUES (5,8,13,4,NULL);
INSERT INTO `isys_person_2_group` VALUES (6,9,14,5,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_plug_type` (
  `isys_plug_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_plug_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_plug_type__description` text COLLATE utf8_unicode_ci,
  `isys_plug_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_plug_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_plug_type__status` int(10) unsigned DEFAULT '5',
  `isys_plug_type__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_plug_type__id`),
  KEY `isys_plug_type__title` (`isys_plug_type__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_pobj_type` (
  `isys_pobj_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_pobj_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_pobj_type__description` text COLLATE utf8_unicode_ci,
  `isys_pobj_type__min_male_plug` int(10) unsigned NOT NULL DEFAULT '1',
  `isys_pobj_type__max_male_plug` int(10) unsigned NOT NULL DEFAULT '999',
  `isys_pobj_type__male_plug_define_by_create_pobj` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_pobj_type__min_female_socket` int(10) unsigned NOT NULL DEFAULT '1',
  `isys_pobj_type__max_female_socket` int(10) unsigned NOT NULL DEFAULT '999',
  `isys_pobj_type__female_socket_define_by_create_pobj` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_pobj_type__fuse_4_female_socket` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_pobj_type__fuse_4_all_female_socket` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_pobj_type__icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_pobj_type__property` int(10) unsigned DEFAULT '1',
  `isys_pobj_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_pobj_type__listed_for_manual_creation` int(10) unsigned NOT NULL DEFAULT '1',
  `isys_pobj_type__visible_in_pobj_list` int(10) unsigned NOT NULL DEFAULT '1',
  `isys_pobj_type__sort` int(10) unsigned DEFAULT '5',
  `isys_pobj_type__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_pobj_type__id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_pobj_type` VALUES (1,'LC__POBJ_TYPE__ELECTRICITY_SUPPLIER','ELECTRICITY_SUPPLIER / Stromversorger\r\r\n\r\r\n\r\r\n\r\r\n\r\r\n\r\r\n',0,0,0,0,999,0,0,0,NULL,1,'C__POBJ_TYPE__ELECTRICITY_SUPPLIER',1,1,5,2);
INSERT INTO `isys_pobj_type` VALUES (2,'LC__POBJ_TYPE__USV','uninterruptible power supply / USV',1,999,0,1,999,0,0,0,NULL,1,'C__POBJ_TYPE__USV',1,1,5,2);
INSERT INTO `isys_pobj_type` VALUES (3,'LC__POBJ_TYPE__POWER_DISTRIBUTOR','POWER_DISTRIBUTOR^/ Stromverteiler',0,999,0,0,999,0,0,0,NULL,1,'C__POBJ_TYPE__POWER_DISTRIBUTOR',1,1,5,2);
INSERT INTO `isys_pobj_type` VALUES (4,'LC__POBJ_TYPE__FUSE_BOX','FUSE_BOX / Sicherungskasten',0,999,0,0,999,0,1,1,NULL,1,'C__POBJ_TYPE__FUSE_BOX',1,1,5,2);
INSERT INTO `isys_pobj_type` VALUES (5,'LC__POBJ_TYPE__CURRENT_CONSUMER',NULL,1,1,1,0,0,0,0,0,NULL,0,'C__POBJ_TYPE__CURRENT_CONSUMER',0,0,5,2);
INSERT INTO `isys_pobj_type` VALUES (6,'LC__POBJ_TYPE__UNREADY',NULL,0,0,0,0,0,0,0,0,NULL,0,'C__POBJ_TYPE__UNREADY',1,1,5,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_port_duplex` (
  `isys_port_duplex__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_port_duplex__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_port_duplex__description` text COLLATE utf8_unicode_ci,
  `isys_port_duplex__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_port_duplex__sort` int(10) unsigned DEFAULT '5',
  `isys_port_duplex__property` int(10) unsigned DEFAULT NULL,
  `isys_port_duplex__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_port_duplex__id`),
  KEY `isys_port_duplex__title` (`isys_port_duplex__title`),
  KEY `isys_port_duplex__const` (`isys_port_duplex__const`),
  KEY `isys_port_duplex__status` (`isys_port_duplex__status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_port_duplex` VALUES (1,'LC__PORT_DUPLEX__HALF','half duplex','C__PORT_DUPLEX__HALF',2,0,2);
INSERT INTO `isys_port_duplex` VALUES (2,'LC__PORT_DUPLEX__FULL','full duplex','C__PORT_DUPLEX__FULL',1,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_port_mode` (
  `isys_port_mode__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_port_mode__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_port_mode__description` text COLLATE utf8_unicode_ci,
  `isys_port_mode__sort` int(11) DEFAULT '5',
  `isys_port_mode__property` int(10) unsigned DEFAULT '0',
  `isys_port_mode__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_port_mode__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_port_mode__id`),
  KEY `isys_port_mode__title` (`isys_port_mode__title`),
  KEY `isys_port_mode__const` (`isys_port_mode__const`),
  KEY `isys_port_mode__status` (`isys_port_mode__status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_port_mode` VALUES (1,'Standard',NULL,5,0,'C__PORT_MODE__STANDARD',2);
INSERT INTO `isys_port_mode` VALUES (2,'Link Aggregation/Trunk',NULL,5,0,'C__PORT_MODE__LINK_AGGREGATION',2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_port_negotiation` (
  `isys_port_negotiation__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_port_negotiation__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_port_negotiation__description` text COLLATE utf8_unicode_ci,
  `isys_port_negotiation__sort` int(10) unsigned DEFAULT '5',
  `isys_port_negotiation__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_port_negotiation__status` int(10) unsigned DEFAULT NULL,
  `isys_port_negotiation__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_port_negotiation__id`),
  KEY `isys_port_negotiation__title` (`isys_port_negotiation__title`),
  KEY `isys_port_negotiation__const` (`isys_port_negotiation__const`),
  KEY `isys_port_negotiation__status` (`isys_port_negotiation__status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_port_negotiation` VALUES (1,'LC__PORT_NEGOTIATION__AUTO','auto negotiation',1,'C__PORT_NEGOTIATION__AUTO',2,0);
INSERT INTO `isys_port_negotiation` VALUES (2,'LC__PORT_NEGOTIATION__MANUAL','manual negotiation',2,'C__PORT_NEGOTIATION__MANUAL',2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_port_speed` (
  `isys_port_speed__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_port_speed__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_port_speed__description` text COLLATE utf8_unicode_ci,
  `isys_port_speed__factor` int(10) unsigned DEFAULT NULL,
  `isys_port_speed__sort` int(10) unsigned DEFAULT '5',
  `isys_port_speed__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_port_speed__property` int(10) unsigned DEFAULT '0',
  `isys_port_speed__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_port_speed__id`),
  KEY `isys_port_speed__title` (`isys_port_speed__title`),
  KEY `isys_port_speed__const` (`isys_port_speed__const`),
  KEY `isys_port_speed__factor` (`isys_port_speed__factor`),
  KEY `isys_port_speed__status` (`isys_port_speed__status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_port_speed` VALUES (1,'bit/s','value * 1 bit/s',1,20,'C__PORT_SPEED__BIT_S',1,2);
INSERT INTO `isys_port_speed` VALUES (2,'kbit/s','',1000,30,'C__PORT_SPEED__KBIT_S',1,2);
INSERT INTO `isys_port_speed` VALUES (3,'Mbit/s','',1000000,40,'C__PORT_SPEED__MBIT_S',1,2);
INSERT INTO `isys_port_speed` VALUES (4,'Gbit/s','',1000000000,50,'C__PORT_SPEED__GBIT_S',1,2);
INSERT INTO `isys_port_speed` VALUES (1000,'LC__UNIVERSAL__NOT_SELECTED','',1,10,'C__PORT_SPEED__NOT_SELECTED',1,1);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_port_standard` (
  `isys_port_standard__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_port_standard__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_port_standard__description` text COLLATE utf8_unicode_ci,
  `isys_port_standard__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT '5',
  `isys_port_standard__sort` int(10) unsigned DEFAULT NULL,
  `isys_port_standard__property` int(10) unsigned DEFAULT NULL,
  `isys_port_standard__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_port_standard__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_port_type` (
  `isys_port_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_port_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_port_type__description` text COLLATE utf8_unicode_ci,
  `isys_port_type__sort` int(11) DEFAULT '5',
  `isys_port_type__property` int(10) unsigned DEFAULT '0',
  `isys_port_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_port_type__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_port_type__id`),
  KEY `isys_port_type__title` (`isys_port_type__title`),
  KEY `isys_port_type__const` (`isys_port_type__const`),
  KEY `isys_port_type__status` (`isys_port_type__status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_port_type` VALUES (1,'WLAN','WLAN',5,1,'C__PORT_TYPE__WLAN',2);
INSERT INTO `isys_port_type` VALUES (2,'WAN','WAN',5,1,'C__PORT_TYPE__WAN',2);
INSERT INTO `isys_port_type` VALUES (3,'Ethernet','Ethernet',5,1,'C__PORT_TYPE__ETHERNET',2);
INSERT INTO `isys_port_type` VALUES (4,'ISDN','ISDN',5,1,'C__PORT_TYPE__ISDN',2);
INSERT INTO `isys_port_type` VALUES (5,'FR','FR',5,1,'C__PORT_TYPE__FR',2);
INSERT INTO `isys_port_type` VALUES (6,'LC__UNIVERSAL__NOT_SELECTED',NULL,0,1,'C__PORT_TYPE__NOT_SELECTED',2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_pos_gps` (
  `isys_pos_gps__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_pos_gps__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_pos_gps__description` text COLLATE utf8_unicode_ci,
  `isys_pos_gps__x` decimal(65,30) DEFAULT NULL,
  `isys_pos_gps__y` decimal(65,30) DEFAULT NULL,
  `isys_pos_gps__z` decimal(65,30) DEFAULT NULL,
  `isys_pos_gps__status` int(10) unsigned DEFAULT '1',
  `isys_pos_gps__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_pos_gps__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_power_connection_type` (
  `isys_power_connection_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_power_connection_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_power_connection_type__description` text COLLATE utf8_unicode_ci,
  `isys_power_connection_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_power_connection_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_power_connection_type__property` int(10) unsigned DEFAULT '0',
  `isys_power_connection_type__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_power_connection_type__id`),
  KEY `isys_power_connection_type__title` (`isys_power_connection_type__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_power_fuse_ampere` (
  `isys_power_fuse_ampere__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_power_fuse_ampere__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_power_fuse_ampere__description` text COLLATE utf8_unicode_ci,
  `isys_power_fuse_ampere__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_power_fuse_ampere__sort` int(10) unsigned DEFAULT NULL,
  `isys_power_fuse_ampere__property` int(10) unsigned DEFAULT NULL,
  `isys_power_fuse_ampere__status` int(10) unsigned DEFAULT NULL,
  `isys_power_fuse_ampere__milli_ampere` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_power_fuse_ampere__id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_power_fuse_ampere` VALUES (1,'1','1','C_POWER_FUSE_MILLI_AMPERE_1000',5,NULL,2,1000);
INSERT INTO `isys_power_fuse_ampere` VALUES (2,'2','2','C_POWER_FUSE_MILLI_AMPERE_2000',10,NULL,2,2000);
INSERT INTO `isys_power_fuse_ampere` VALUES (3,'4','4','C_POWER_FUSE_MILLI_AMPERE_4000',15,NULL,2,4000);
INSERT INTO `isys_power_fuse_ampere` VALUES (4,'6','6','C_POWER_FUSE_MILLI_AMPERE_6000',20,NULL,2,6000);
INSERT INTO `isys_power_fuse_ampere` VALUES (5,'8','8','C_POWER_FUSE_MILLI_AMPERE_8000',25,NULL,2,8000);
INSERT INTO `isys_power_fuse_ampere` VALUES (6,'16','16','C_POWER_FUSE_MILLI_AMPERE_16000',30,NULL,2,16000);
INSERT INTO `isys_power_fuse_ampere` VALUES (7,'20','20','C_POWER_FUSE_MILLI_AMPERE_20000',35,NULL,2,20000);
INSERT INTO `isys_power_fuse_ampere` VALUES (8,'25','25','C_POWER_FUSE_MILLI_AMPERE_25000',40,NULL,2,25000);
INSERT INTO `isys_power_fuse_ampere` VALUES (9,'35','35','C_POWER_FUSE_MILLI_AMPERE_35000',45,NULL,2,35000);
INSERT INTO `isys_power_fuse_ampere` VALUES (10,'50','50','C_POWER_FUSE_MILLI_AMPERE_50000',50,NULL,2,50000);
INSERT INTO `isys_power_fuse_ampere` VALUES (11,'63','63','C_POWER_FUSE_MILLI_AMPERE_63000',55,NULL,2,63000);
INSERT INTO `isys_power_fuse_ampere` VALUES (12,'80','80','C_POWER_FUSE_MILLI_AMPERE_80000',60,NULL,2,80000);
INSERT INTO `isys_power_fuse_ampere` VALUES (13,'100','100','C_POWER_FUSE_MILLI_AMPERE_100000',65,NULL,2,100000);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_power_fuse_type` (
  `isys_power_fuse_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_power_fuse_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_power_fuse_type__description` text COLLATE utf8_unicode_ci,
  `isys_power_fuse_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_power_fuse_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_power_fuse_type__property` int(10) unsigned DEFAULT NULL,
  `isys_power_fuse_type__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_power_fuse_type__id`),
  KEY `isys_power_fuse_type__title` (`isys_power_fuse_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_power_fuse_type` VALUES (1,'LC__POWER_FUSE_TYPE__MINIATURE_CIRCUIT_BREAKER','Miniature Circuit Breaker = \r\r\nSicherungsautomaten bzw. Leitungsschutzschalter','C__POWER_FUSE_TYPE__MINIATURE_CIRCUIT_BREAKER',NULL,NULL,2);
INSERT INTO `isys_power_fuse_type` VALUES (2,'LC__POWER_FUSE_TYPE__TERMAL_BLAST_CAMBER','Schmelzsicherungen\r\r\nThermal blast chamber','C__POWER_FUSE_TYPE__TERMAL_BLAST_CAMBER',NULL,NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_property_2_cat` (
  `isys_property_2_cat__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_property_2_cat__isysgui_catg__id` int(10) unsigned DEFAULT NULL,
  `isys_property_2_cat__isysgui_cats__id` int(10) unsigned DEFAULT NULL,
  `isys_property_2_cat__isysgui_catg_custom__id` int(10) unsigned DEFAULT NULL,
  `isys_property_2_cat__cat_const` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_property_2_cat__prop_type` int(10) unsigned DEFAULT NULL,
  `isys_property_2_cat__prop_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_property_2_cat__prop_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_property_2_cat__prop_provides` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_property_2_cat__id`),
  KEY `isys_property_2_cat__isysgui_catg__id` (`isys_property_2_cat__isysgui_catg__id`),
  KEY `isys_property_2_cat__isysgui_cats__id` (`isys_property_2_cat__isysgui_cats__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_purpose` (
  `isys_purpose__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_purpose__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_purpose__description` text COLLATE utf8_unicode_ci,
  `isys_purpose__property` int(10) unsigned DEFAULT '0',
  `isys_purpose__status` int(10) unsigned DEFAULT NULL,
  `isys_purpose__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_purpose__sort` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_purpose__id`),
  KEY `isys_purpose__title` (`isys_purpose__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_purpose` VALUES (1,'LC__CMDB__CATG__PURPOSE_PRODUCTION',NULL,0,2,NULL,1);
INSERT INTO `isys_purpose` VALUES (2,'LC__CMDB__CATG__PURPOSE_ASSURANCE',NULL,0,2,NULL,2);
INSERT INTO `isys_purpose` VALUES (3,'LC__CMDB__CATG__PURPOSE_TEST',NULL,0,2,NULL,3);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_qr_code_configuration` (
  `isys_qr_code_configuration__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_qr_code_configuration__default_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_qr_code_configuration__type` tinyint(1) unsigned DEFAULT '0',
  `isys_qr_code_configuration__status` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_qr_code_configuration__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_raid_type` (
  `isys_raid_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_raid_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_raid_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_raid_type__description` text COLLATE utf8_unicode_ci,
  `isys_raid_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_raid_type__property` int(10) unsigned DEFAULT NULL,
  `isys_raid_type__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_raid_type__id`),
  KEY `isys_raid_type__title` (`isys_raid_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_raid_type` VALUES (1,'LC__CMDB__RAID_TYPE__HARDWARE','C__CMDB__RAID_TYPE__HARDWARE',NULL,NULL,NULL,2);
INSERT INTO `isys_raid_type` VALUES (2,'LC__CMDB__RAID_TYPE__SOFTWARE','C__CMDB__RAID_TYPE__SOFTWARE',NULL,NULL,NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_relation_type` (
  `isys_relation_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_relation_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_relation_type__master` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_relation_type__slave` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_relation_type__type` int(1) unsigned NOT NULL DEFAULT '2',
  `isys_relation_type__default` int(10) DEFAULT NULL,
  `isys_relation_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_relation_type__category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_relation_type__editable` int(1) unsigned DEFAULT '0',
  `isys_relation_type__sort` int(10) DEFAULT NULL,
  `isys_relation_type__status` int(10) NOT NULL DEFAULT '2',
  `isys_relation_type__isys_weighting__id` int(10) unsigned DEFAULT '5',
  PRIMARY KEY (`isys_relation_type__id`),
  KEY `isys_relation_type__isys_weighting__id` (`isys_relation_type__isys_weighting__id`),
  KEY `isys_relation_type__type` (`isys_relation_type__type`),
  CONSTRAINT `isys_relation_type__isys_weighting__id` FOREIGN KEY (`isys_relation_type__isys_weighting__id`) REFERENCES `isys_weighting` (`isys_weighting__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_relation_type` VALUES (1,'LC__CMDB__CATG__APPLICATION','LC__RELATION_TYPE__MASTER__APPLICATION_RUNS_ON','LC__RELATION_TYPE__SLAVE__APPLICATION_RUNS_ON',1,1,'C__RELATION_TYPE__SOFTWARE','C__CATG__APPLICATION',0,1,2,5);
INSERT INTO `isys_relation_type` VALUES (2,'LC__CMDB__CATG__CLUSTER_SERVICES','LC__RELATION_TYPE__MASTER__RUNS_ON','LC__RELATION_TYPE__SLAVE__RUNS_ON',1,1,'C__RELATION_TYPE__CLUSTER_SERVICE','C__CATG__CLUSTER_SERVICE',0,2,2,5);
INSERT INTO `isys_relation_type` VALUES (3,'LC__CMDB__CATG__BACKUP','LC__RELATION_TYPE__MASTER__SAVES','LC__RELATION_TYPE__SLAVE__SAVES',1,2,'C__RELATION_TYPE__BACKUP','C__CATG__BACKUP',0,3,2,5);
INSERT INTO `isys_relation_type` VALUES (4,'LC__CMDB__CATG__CONTACT','LC__RELATION_TYPE__MASTER__ADMINISTRATES','LC__RELATION_TYPE__SLAVE__ADMINISTRATES',1,2,'C__RELATION_TYPE__ADMIN','C__CATG__CONTACT',0,4,2,5);
INSERT INTO `isys_relation_type` VALUES (5,'LC__CMDB__CATG__CONTACT','LC__RELATION_TYPE__MASTER__USES','LC__RELATION_TYPE__SLAVE__USES',1,1,'C__RELATION_TYPE__USER','C__CATG__CONTACT',0,5,2,5);
INSERT INTO `isys_relation_type` VALUES (6,'LC__CMDB__CATG__CLUSTER_MEMBERSHIPS','LC__RELATION_TYPE__MASTER__CLUSTER_MEMBERSHIP_HAS_MEMBER','LC__RELATION_TYPE__SLAVE__CLUSTER_MEMBERSHIP_HAS_MEMBER',1,1,'C__RELATION_TYPE__CLUSTER_MEMBERSHIPS','C__CATG__CLUSTER_MEMBERSHIPS',0,6,2,5);
INSERT INTO `isys_relation_type` VALUES (7,'LC__CMDB__CATG__POWER_CONSUMER','LC__RELATION_TYPE__MASTER__SUPPLIES_POWER_TO','LC__RELATION_TYPE__SLAVE__SUPPLIES_POWER_TO',1,2,'C__RELATION_TYPE__POWER_CONSUMER','C__CATG__POWER_CONSUMER',0,7,2,5);
INSERT INTO `isys_relation_type` VALUES (8,'LC__CMDB__CATG__NETWORK_TREE_CONFIG_PORTS','LC__RELATION_TYPE__MASTER__SUPPLIES_NETWORK_TO','LC__RELATION_TYPE__SLAVE__SUPPLIES_NETWORK_TO',1,1,'C__RELATION_TYPE__NETWORK_PORT','C__CATG__NETWORK_PORT',1,8,2,5);
INSERT INTO `isys_relation_type` VALUES (9,'LC__CMDB__CATG__VIRTUAL_MACHINE','LC__RELATION_TYPE__MASTER__VIRTUAL_MACHINE_RUNS_ON','LC__RELATION_TYPE__SLAVE__VIRTUAL_MACHINE_RUNS_ON',1,2,'C__RELATION_TYPE__VIRTUAL_MACHINE','C__CATG__VIRTUAL_MACHINE',0,9,2,5);
INSERT INTO `isys_relation_type` VALUES (10,'LC__CMDB__CATG__LOCATION','LC__RELATION_TYPE__MASTER__IS_LOCATION_OF','LC__RELATION_TYPE__SLAVE__IS_LOCATION_OF',1,2,'C__RELATION_TYPE__LOCATION','C__CATG__LOCATION',0,10,2,5);
INSERT INTO `isys_relation_type` VALUES (11,'LC__CMDB__CATG__UNIVERSAL_INTERFACE','LC__RELATION_TYPE__MASTER__DEPENDS_ON_ME','LC__RELATION_TYPE__SLAVE__DEPENDS_ON_ME',1,1,'C__RELATION_TYPE__UNIVERSAL_INTERFACE','C__CATG__UNIVERSAL_INTERFACE',1,11,2,5);
INSERT INTO `isys_relation_type` VALUES (12,'LC__CATG__IP_ADDRESS','LC__RELATION_TYPE__MASTER__SUPPLIES_NETWORK_TO','LC__RELATION_TYPE__SLAVE__SUPPLIES_NETWORK_TO',1,1,'C__RELATION_TYPE__IP_ADDRESS','C__CATG__IP',1,12,2,5);
INSERT INTO `isys_relation_type` VALUES (13,'LC__STORAGE_FCPORT','LC__RELATION_TYPE__MASTER__SUPPLIES_NETWORK_TO','LC__RELATION_TYPE__SLAVE__SUPPLIES_NETWORK_TO',1,1,'C__RELATION_TYPE__CONTROLLER_FC_PORT','C__CATG__CONTROLLER_FC_PORT',1,13,2,5);
INSERT INTO `isys_relation_type` VALUES (14,'LC__CMDB__CATG__CONNECTORS','LC__RELATION_TYPE__MASTER__CONNECTS','LC__RELATION_TYPE__SLAVE__CONNECTS',1,1,'C__RELATION_TYPE__CONNECTORS','C__CATG__CONNECTOR',1,14,2,5);
INSERT INTO `isys_relation_type` VALUES (15,'LC__CMDB__CATG__LDEV_CLIENT','LC__RELATION_TYPE__MASTER__CONNECTS','LC__RELATION_TYPE__SLAVE__CONNECTS',1,2,'C__RELATION_TYPE__LDEV_CLIENT','C__CATG__LDEV_CLIENT',0,15,2,5);
INSERT INTO `isys_relation_type` VALUES (16,'LC__CMDB__CATG__GROUP_MEMBERSHIPS','LC__RELATION_TYPE__MASTER__GROUP_HAS_MEMBER','LC__RELATION_TYPE__SLAVE__GROUP_HAS_MEMBER',1,1,'C__RELATION_TYPE__GROUP_MEMBERSHIPS','C__CATG__GROUP_MEMBERSHIPS',0,18,2,5);
INSERT INTO `isys_relation_type` VALUES (17,'LC__CONTACT__TREE__GROUP_MEMBERS','LC__RELATION_TYPE__MASTER__HAS_MEMBERS','LC__RELATION_TYPE__SLAVE__HAS_MEMBERS',1,2,'C__RELATION_TYPE__PERSON_ASSIGNED_GROUPS','C__CATS__PERSON_ASSIGNED_GROUPS',0,19,2,5);
INSERT INTO `isys_relation_type` VALUES (18,'LC__UNIVERSAL__DEPENDENCY','LC__RELATION_DIRECTION__DEPENDS_ON_ME','LC__RELATION_DIRECTION__I_DEPEND_ON',2,1,'C__RELATION_TYPE__DEFAULT',NULL,0,NULL,2,5);
INSERT INTO `isys_relation_type` VALUES (19,'LC__CMDB__TREE__DATABASE_ACCESS','LC__RELATION_TYPE__MASTER__DATABASE_ACCESS','LC__RELATION_TYPE__SLAVE__DATABASE_ACCESS',1,1,'C__RELATION_TYPE__DATABASE_ACCESS','C__CATS__DATABASE_ACCESS',1,24,2,5);
INSERT INTO `isys_relation_type` VALUES (20,'LC__CMDB__TREE__DATABASE_LINKS','LC__RELATION_TYPE__MASTER__DATABASE_LINK','LC__RELATION_TYPE__SLAVE__DATABASE_LINK',1,1,'C__RELATION_TYPE__DATABASE_LINK','C__CATS__DATABASE_LINKS',1,25,2,5);
INSERT INTO `isys_relation_type` VALUES (21,'LC__CMDB__TREE__DATABASE_GATEWAY','LC__RELATION_TYPE__MASTER__DATABASE_GATEWAY','LC__RELATION_TYPE__SLAVE__DATABASE_GATEWAY',1,1,'C__RELATION_TYPE__DATABASE_GATEWAY','C__CATS__DATABASE_GATEWAY',0,26,2,5);
INSERT INTO `isys_relation_type` VALUES (22,'LC__CMDB__CATS__DATABASE_INSTANCE','LC__RELATION_TYPE__MASTER__DATABASE_INSTANCE','LC__RELATION_TYPE__SLAVE__DATABASE_INSTANCE',1,1,'C__RELATION_TYPE__DATABASE_INSTANCE','C__CATS__DATABASE_SCHEMA',0,27,2,5);
INSERT INTO `isys_relation_type` VALUES (23,'LC__CATG__RELATION__IT_SERVICE_COMPONENT','LC__RELATION_TYPE__MASTER__IT_SERVICE_COMPONENT','LC__RELATION_TYPE__SLAVE__IT_SERVICE_COMPONENT',1,2,'C__RELATION_TYPE__IT_SERVICE_COMPONENT','C__CATG__IT_SERVICE_COMPONENTS',0,28,2,5);
INSERT INTO `isys_relation_type` VALUES (24,'LC__CATS__REPLICATION_PARTNER','LC__RELATION_TYPE__MASTER__REPLICATION_PARTNER_TO','LC__RELATION_TYPE__SLAVE__REPLICATION_PARTNER_TO',1,2,'C__RELATION_TYPE__REPLICATION_PARTNER','C__CATS__REPLICATION_PARTNER',0,29,2,5);
INSERT INTO `isys_relation_type` VALUES (25,'LC__CMDB__CATG__SOA_COMPONENTS','LC__RELATION_TYPE__MASTER__SOA_COMPONENT','LC__RELATION_TYPE__SLAVE__SOA_COMPONENT',1,1,'C__RELATION_TYPE__SOA_COMPONENTS','C__CATG__SOA_COMPONENTS',0,30,2,5);
INSERT INTO `isys_relation_type` VALUES (26,'LC__CMDB__CATG__SOA_STACKS','LC__RELATION_TYPE__MASTER__SOA_STACK','LC__RELATION_TYPE__SLAVE__SOA_STACK',1,1,'C__RELATION_TYPE__SOA_STACKS','C__CATG__SOA_STACKS',0,31,2,5);
INSERT INTO `isys_relation_type` VALUES (27,'DBMS','LC__RELATION_TYPE__MASTER__DBMS','LC__RELATION_TYPE__SLAVE__DBMS',1,2,'C__RELATION_TYPE__DBMS','C__CATS__DATABASE_INSTANCE',0,28,2,5);
INSERT INTO `isys_relation_type` VALUES (28,'LC__CMDB__CATG__ASSIGNED_CARDS','LC__RELATION_TYPE__MASTER__ASSIGNED_CARDS','LC__RELATION_TYPE__SLAVE__ASSIGNED_CARDS',1,2,'C__RELATION_TYPE__MOBILE_PHONE','C__CATG__ASSIGNED_CARDS',0,32,2,5);
INSERT INTO `isys_relation_type` VALUES (29,'LC__CMDB__CATS__ORGANIZATION','LC__RELATION_TYPE__MASTER__BELONGS_TO','LC__RELATION_TYPE__SLAVE__BELONGS_TO',1,2,'C__RELATION_TYPE__ORGANIZATION','C__CATS__PERSON',0,33,2,5);
INSERT INTO `isys_relation_type` VALUES (30,'LC__CMDB__CATG__LOGICAL_UNIT','LC__RELATION_TYPE__MASTER__LOGICAL_UNIT','LC__RELATION_TYPE__SLAVE__LOGICAL_UNIT',1,1,'C__RELATION_TYPE__LOGICAL_UNIT','C__CATG__LOGICAL_UNIT',0,33,2,5);
INSERT INTO `isys_relation_type` VALUES (31,'LC__CMDB__CATS__ORGANIZATION','LC__RELATION_TYPE__MASTER__BELONGS_TO','LC__RELATION_TYPE__SLAVE__BELONGS_TO',1,1,'C__RELATION_TYPE__ORGANIZATION','C__CATS__ORGANIZATION',0,20,2,5);
INSERT INTO `isys_relation_type` VALUES (32,'LC__CMDB__CATG__CONTRACT_ASSIGNMENT','LC__RELATION_TYPE__MASTER__HAS_CONTRACT_ASSIGNMENT_TO','LC__RELATION_TYPE__SLAVE__HAS_CONTRACT_ASSIGNMENT_TO',1,2,'C__RELATION_TYPE__CONTRACT','C__CATG__CONTRACT_ASSIGNMENT',0,34,2,5);
INSERT INTO `isys_relation_type` VALUES (33,'LC__CMDB__CATS__CHASSIS','LC__RELATION_TYPE__MASTER__CHASSIS','LC__RELATION_TYPE__SLAVE__CHASSIS',1,1,'C__RELATION_TYPE__CHASSIS','C__CATS__CHASSIS_DEVICES',0,35,2,5);
INSERT INTO `isys_relation_type` VALUES (34,'LC__CMDB__CATG__STACKING','LC__RELATION_TYPE__MASTER__STACKING','LC__RELATION_TYPE__SLAVE__STACKING',1,1,'C__RELATION_TYPE__STACKING','C__CATG__STACKING',0,36,2,5);
INSERT INTO `isys_relation_type` VALUES (35,'LC__CMDB__CATG__SHARE_ACCESS','LC__RELATION_TYPE__MASTER__HAS_SHARE_ACCESS_TO','LC__RELATION_TYPE__SLAVE__HAS_SHARE_ACCESS_TO',1,2,'C__RELATION_TYPE__SHARE_ACCESS','C__CATG__SHARE_ACCESS',0,37,2,5);
INSERT INTO `isys_relation_type` VALUES (37,'LC__CATG__NET_CONNECTIONS','LC__RELATION_TYPE__MASTER__NET_CONNECTIONS','LC__RELATION_TYPE__SLAVE__NET_CONNECTIONS',1,1,'C__RELATION_TYPE__NET_CONNECTIONS','C__CATG__NET_CONNECTOR',0,38,2,5);
INSERT INTO `isys_relation_type` VALUES (38,'LC__CMDB__CATG__CLUSTER_ADM_SERVICE','LC__RELATION_TYPE__MASTER__CLUSTER_ADM_SERVICE','LC__RELATION_TYPE__SLAVE__CLUSTER_ADM_SERVICE',1,1,'C__RELATION_TYPE__CLUSTER_ADM_SERVICE','C__CATG__CLUSTER_ADM_SERVICE',0,39,2,5);
INSERT INTO `isys_relation_type` VALUES (39,'LC__RELATION_TYPE__OPERATION_SYSTEM','LC__RELATION_TYPE__MASTER__OPERATING_SYSTEM_RUNS_ON','LC__RELATION_TYPE__SLAVE__OPERATING_SYSTEM_RUNS_ON',1,1,'C__RELATION_TYPE__OPERATION_SYSTEM','C__CATG__OPERATING_SYSTEM',0,NULL,2,5);
INSERT INTO `isys_relation_type` VALUES (40,'LC__RELATION_TYPE__LAYER2_TRANSPORT','LC__RELATION_TYPE__MASTER__LAYER2_TRANSPORT','LC__RELATION_TYPE__SLAVE__LAYER2_TRANSPORT',1,1,'C__RELATION_TYPE__LAYER2_TRANSPORT','C__CATG__QINQ_SP',1,42,2,5);
INSERT INTO `isys_relation_type` VALUES (41,'LC__RELATION_TYPE__LAYER2_TRANSPORT','LC__RELATION_TYPE__MASTER__LAYER2_TRANSPORT','LC__RELATION_TYPE__SLAVE__LAYER2_TRANSPORT',1,1,'C__RELATION_TYPE__LAYER2_TRANSPORT','C__CATG__QINQ_SP',1,42,2,5);
INSERT INTO `isys_relation_type` VALUES (42,'LC__CMDB__CATG__RM_CONTROLLER','LC__RELATION_TYPE__MASTER__RM_CONTROLLER','LC__RELATION_TYPE__SLAVE__RM_CONTROLLER',1,2,'C__RELATION_TYPE__RM_CONTROLLER','C__CATG__RM_CONTROLLER',0,43,2,5);
INSERT INTO `isys_relation_type` VALUES (43,'LC__CMDB__CATG__FILE','LC__RELATION_TYPE__MASTER__LAYS_ON','LC__RELATION_TYPE__SLAVE__LAYS_ON',1,1,'C__RELATION_TYPE__FILE','C__CATG__FILE',0,44,2,5);
INSERT INTO `isys_relation_type` VALUES (44,'LC__RELATION_TYPE__ORGANIZATION_HEADQUARTER','LC__RELATION_TYPE__MASTER__ORGANIZATION_HEADQUARTER','LC__RELATION_TYPE__SLAVE__ORGANIZATION_HEADQUARTER',1,1,'C__RELATION_TYPE__ORGANIZATION_HEADQUARTER','C__CATS__ORGANIZATION',1,43,2,5);
INSERT INTO `isys_relation_type` VALUES (45,'LC__RELATION_TYPE__VHOST_ADMIN_SERVICE','LC__RELATION_TYPE__MASTER__VHOST_ADMIN_SERVICE','LC__RELATION_TYPE__SLAVE__VHOST_ADMIN_SERVICE',1,1,'C__RELATION_TYPE__VHOST_ADMIN_SERVICE','C__CATG__VIRTUAL_HOST',0,44,2,5);
INSERT INTO `isys_relation_type` VALUES (46,'LC__RELATION_TYPE__VRRP','LC__RELATION_TYPE__VRRP__MASTER','LC__RELATION_TYPE__VRRP__SLAVE',1,1,'C__RELATION_TYPE__VRRP','C__CATG__VRRP',1,99,2,5);
INSERT INTO `isys_relation_type` VALUES (47,'LC__CMDB__CATG__MANUAL','LC__RELATION_TYPE__MASTER__MANUAL_LAYS_ON','LC__RELATION_TYPE__SLAVE__MANUAL_LAYS_ON',1,1,'C__RELATION_TYPE__MANUAL','C__CATG__MANUAL',0,100,2,5);
INSERT INTO `isys_relation_type` VALUES (48,'LC__CMDB__CATG__EMERGENCY_PLAN','LC__RELATION_TYPE__MASTER__EMERGENCY_PLAN_LAYS_ON','LC__RELATION_TYPE__SLAVE__EMERGENCY_PLAN_LAYS_ON',1,1,'C__RELATION_TYPE__EMERGENCY_PLAN','C__CATG__EMERGENCY_PLAN',0,100,2,5);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_replication_mechanism` (
  `isys_replication_mechanism__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_replication_mechanism__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_replication_mechanism__description` text COLLATE utf8_unicode_ci,
  `isys_replication_mechanism__status` int(10) unsigned DEFAULT NULL,
  `isys_replication_mechanism__sort` int(10) unsigned DEFAULT NULL,
  `isys_replication_mechanism__property` int(10) unsigned DEFAULT NULL,
  `isys_replication_mechanism__const` int(11) DEFAULT NULL,
  PRIMARY KEY (`isys_replication_mechanism__id`),
  KEY `isys_replication_mechanism__title` (`isys_replication_mechanism__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_replication_type` (
  `isys_replication_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_replication_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_replication_type__description` text COLLATE utf8_unicode_ci,
  `isys_replication_type__status` int(10) unsigned DEFAULT NULL,
  `isys_replication_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_replication_type__property` int(10) unsigned DEFAULT NULL,
  `isys_replication_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_replication_type__id`),
  KEY `isys_replication_type__title` (`isys_replication_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_replication_type` VALUES (1,'LC__CMDB__REPLICATIONTYPE__MASTER',NULL,2,NULL,NULL,NULL);
INSERT INTO `isys_replication_type` VALUES (2,'LC__CMDB__REPLICATIONTYPE__SLAVE',NULL,2,NULL,NULL,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_request_tracker_config` (
  `isys_request_tracker_config__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_request_tracker_config__db_active` int(1) NOT NULL,
  `isys_request_tracker_config__ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_request_tracker_config__port` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_request_tracker_config__schema` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_request_tracker_config__prefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_request_tracker_config__user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_request_tracker_config__pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_request_tracker_config__link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_request_tracker_config__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_right` (
  `isys_right__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_right__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_right__description` text COLLATE utf8_unicode_ci,
  `isys_right__status` int(10) unsigned DEFAULT NULL,
  `isys_right__property` int(10) unsigned DEFAULT NULL,
  `isys_right__sort` int(10) unsigned DEFAULT NULL,
  `isys_right__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_right__value` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_right__id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_right` VALUES (1,'browse','Browse',2,NULL,1,'C__RS__RIGHT_BROWSE',1);
INSERT INTO `isys_right` VALUES (2,'read','Read',2,NULL,2,'C__RS__RIGHT_READ',2);
INSERT INTO `isys_right` VALUES (3,'new','New',2,NULL,3,'C__RS__RIGHT_NEW',4);
INSERT INTO `isys_right` VALUES (4,'edit','Edit',2,NULL,4,'C__RS__RIGHT_EDIT',8);
INSERT INTO `isys_right` VALUES (5,'archive','Archive',2,NULL,5,'C__RS__RIGHT_ARCHIVE',16);
INSERT INTO `isys_right` VALUES (6,'delete','Delete',2,NULL,6,'C__RS__RIGHT_DELETE',32);
INSERT INTO `isys_right` VALUES (7,'purge','Purge',2,NULL,7,'C__RS__RIGHT_PURGE',64);
INSERT INTO `isys_right` VALUES (8,'recycle','Recycle',2,NULL,8,'C__RS__RIGHT_RECYCLE',128);
INSERT INTO `isys_right` VALUES (9,'salvage','Salvage',2,NULL,9,'C__RS__RIGHT_SALVAGE',256);
INSERT INTO `isys_right` VALUES (10,'sysop','Sysop',2,NULL,10,'C__RS__RIGHT_SYSOP',512);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_right_2_isys_role` (
  `isys_right_2_isys_role__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_right_2_isys_role__isys_role__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_right_2_isys_role__isys_right__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_right_2_isys_role__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_right_2_isys_role__description` text COLLATE utf8_unicode_ci,
  `isys_right_2_isys_role__status` int(10) unsigned DEFAULT NULL,
  `isys_right_2_isys_role__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_right_2_isys_role__id`),
  KEY `isys_right_2_isys_role_FKIndex1` (`isys_right_2_isys_role__isys_right__id`),
  KEY `isys_right_2_isys_role_FKIndex2` (`isys_right_2_isys_role__isys_role__id`),
  CONSTRAINT `isys_right_2_isys_role_ibfk_1` FOREIGN KEY (`isys_right_2_isys_role__isys_right__id`) REFERENCES `isys_right` (`isys_right__id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `isys_right_2_isys_role_ibfk_2` FOREIGN KEY (`isys_right_2_isys_role__isys_role__id`) REFERENCES `isys_role` (`isys_role__id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_right_2_isys_role` VALUES (1,1,1,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (2,1,2,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (3,2,1,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (4,2,2,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (5,2,4,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (6,3,1,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (7,3,2,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (8,3,3,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (9,3,4,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (10,3,5,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (11,4,1,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (12,4,2,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (13,4,4,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (14,4,6,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (15,4,8,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (16,5,1,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (17,5,2,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (18,5,3,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (19,5,4,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (20,5,5,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (21,5,6,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (22,5,7,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (23,5,8,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (24,5,9,NULL,NULL,2,NULL);
INSERT INTO `isys_right_2_isys_role` VALUES (25,5,10,NULL,NULL,2,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_role` (
  `isys_role__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_role__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_role__description` text COLLATE utf8_unicode_ci,
  `isys_role__status` int(10) unsigned DEFAULT NULL,
  `isys_role__property` int(10) unsigned DEFAULT NULL,
  `isys_role__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_role__sort` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_role__id`),
  KEY `isys_role__title` (`isys_role__title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_role` VALUES (1,'Reader','Reader',2,NULL,'C__RS__ROLE__READER',1);
INSERT INTO `isys_role` VALUES (2,'Editor','Editor',2,NULL,'C__RS__ROLE__EDITOR',2);
INSERT INTO `isys_role` VALUES (3,'Author','Author',2,NULL,'C__RS__ROLE__AUTHOR',3);
INSERT INTO `isys_role` VALUES (4,'Archivar','Archivar',2,NULL,'C__RS__ROLE__ARCHIVAR',4);
INSERT INTO `isys_role` VALUES (5,'Admin','Admin',2,NULL,'C__RS__ROLE__ADMIN',5);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_room_type` (
  `isys_room_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_room_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_room_type__description` text COLLATE utf8_unicode_ci,
  `isys_room_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_room_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_room_type__property` int(10) unsigned DEFAULT NULL,
  `isys_room_type__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_room_type__id`),
  KEY `isys_room_type__title` (`isys_room_type__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_routing_protocol` (
  `isys_routing_protocol__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_routing_protocol__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_routing_protocol__description` text COLLATE utf8_unicode_ci,
  `isys_routing_protocol__sort` int(10) unsigned DEFAULT '5',
  `isys_routing_protocol__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_routing_protocol__status` int(10) unsigned DEFAULT '1',
  `isys_routing_protocol__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_routing_protocol__id`),
  KEY `isys_routing_protocol__title` (`isys_routing_protocol__title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_routing_protocol` VALUES (1,'Static',NULL,1,NULL,2,0);
INSERT INTO `isys_routing_protocol` VALUES (2,'BGP',NULL,2,NULL,2,0);
INSERT INTO `isys_routing_protocol` VALUES (3,'IGRP/EIGRP',NULL,3,NULL,2,0);
INSERT INTO `isys_routing_protocol` VALUES (4,'OSPF',NULL,4,NULL,2,0);
INSERT INTO `isys_routing_protocol` VALUES (5,'RIP',NULL,5,NULL,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_san_capacity_unit` (
  `isys_san_capacity_unit__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_san_capacity_unit__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_san_capacity_unit__description` text COLLATE utf8_unicode_ci,
  `isys_san_capacity_unit__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_san_capacity_unit__sort` int(10) unsigned DEFAULT '5',
  `isys_san_capacity_unit__property` int(10) unsigned DEFAULT '0',
  `isys_san_capacity_unit__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_san_capacity_unit__id`),
  KEY `isys_san_capacity_unit__title` (`isys_san_capacity_unit__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_san_capacity_unit` VALUES (1,'MBits','MegaBits','C__SAN_CAPACITY_UNIT__MBITS',5,0,2);
INSERT INTO `isys_san_capacity_unit` VALUES (2,'KBits','KiloBits','C__SAN_CAPACITY_UNIT__KBITS',5,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_san_zoning_fc_port` (
  `isys_san_zoning_fc_port__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_san_zoning_fc_port__isys_catg_fc_port_list__id` int(10) unsigned DEFAULT NULL,
  `isys_san_zoning_fc_port__isys_cats_san_zoning_list__id` int(10) unsigned DEFAULT NULL,
  `isys_san_zoning_fc_port__port_selected` tinyint(1) unsigned DEFAULT '0',
  `isys_san_zoning_fc_port__wwn_selected` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_san_zoning_fc_port__id`),
  KEY `isys_san_zoning_fc_port_FKIndex1` (`isys_san_zoning_fc_port__isys_catg_fc_port_list__id`),
  KEY `isys_san_zoning_fc_port_FKIndex2` (`isys_san_zoning_fc_port__isys_cats_san_zoning_list__id`),
  CONSTRAINT `isys_san_zoning_fc_port_ibfk_1` FOREIGN KEY (`isys_san_zoning_fc_port__isys_catg_fc_port_list__id`) REFERENCES `isys_catg_fc_port_list` (`isys_catg_fc_port_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_san_zoning_fc_port_ibfk_2` FOREIGN KEY (`isys_san_zoning_fc_port__isys_cats_san_zoning_list__id`) REFERENCES `isys_cats_san_zoning_list` (`isys_cats_san_zoning_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_search` (
  `isys_search__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_search__isys_user_setting__id` int(10) unsigned NOT NULL,
  `isys_search__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_search__description` text COLLATE utf8_unicode_ci,
  `isys_search__link` text COLLATE utf8_unicode_ci,
  `isys_search__date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`isys_search__id`),
  KEY `FK_isys_search` (`isys_search__isys_user_setting__id`),
  CONSTRAINT `FK_isys_search` FOREIGN KEY (`isys_search__isys_user_setting__id`) REFERENCES `isys_user_setting` (`isys_user_setting__id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_search_idx` (
  `isys_search_idx__version` int(10) unsigned NOT NULL DEFAULT '1',
  `isys_search_idx__type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `isys_search_idx__key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `isys_search_idx__value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `isys_search_idx__reference` int(10) unsigned DEFAULT NULL,
  `isys_search_idx__metadata` blob,
  PRIMARY KEY (`isys_search_idx__version`,`isys_search_idx__key`),
  KEY `type` (`isys_search_idx__type`),
  KEY `reference` (`isys_search_idx__reference`),
  FULLTEXT KEY `fulltext_value` (`isys_search_idx__value`),
  FULLTEXT KEY `fulltext_key` (`isys_search_idx__key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_service_alias` (
  `isys_service_alias__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_service_alias__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_service_alias__description` text COLLATE utf8_unicode_ci,
  `isys_service_alias__const` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_service_alias__sort` int(10) unsigned DEFAULT NULL,
  `isys_service_alias__status` int(10) unsigned DEFAULT '2',
  `isys_service_alias__property` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`isys_service_alias__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_service_category` (
  `isys_service_category__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_service_category__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_service_category__description` text COLLATE utf8_unicode_ci,
  `isys_service_category__const` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_service_category__sort` int(10) unsigned DEFAULT NULL,
  `isys_service_category__status` int(10) unsigned DEFAULT '2',
  `isys_service_category__property` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`isys_service_category__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_service_console_port` (
  `isys_service_console_port__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_service_console_port__isys_catg_virtual_switch_list__id` int(10) unsigned NOT NULL,
  `isys_service_console_port__isys_catg_ip_list__id` int(10) unsigned DEFAULT NULL,
  `isys_service_console_port__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_service_console_port__id`),
  KEY `isys_service_console_port__isys_catg_ip_list__id` (`isys_service_console_port__isys_catg_ip_list__id`),
  KEY `isys_service_console_port__isys_catg_virtual_switch_list__id` (`isys_service_console_port__isys_catg_virtual_switch_list__id`),
  CONSTRAINT `isys_service_console_port_ibfk_1` FOREIGN KEY (`isys_service_console_port__isys_catg_virtual_switch_list__id`) REFERENCES `isys_catg_virtual_switch_list` (`isys_catg_virtual_switch_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_service_console_port_ibfk_2` FOREIGN KEY (`isys_service_console_port__isys_catg_ip_list__id`) REFERENCES `isys_catg_ip_list` (`isys_catg_ip_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_service_manufacturer` (
  `isys_service_manufacturer__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_service_manufacturer__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_service_manufacturer__description` text COLLATE utf8_unicode_ci,
  `isys_service_manufacturer__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_service_manufacturer__sort` int(10) unsigned DEFAULT NULL,
  `isys_service_manufacturer__status` int(10) unsigned DEFAULT NULL,
  `isys_service_manufacturer__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_service_manufacturer__id`),
  KEY `isys_service_manufacturer__title` (`isys_service_manufacturer__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_service_type` (
  `isys_service_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_service_type__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_service_type__description` text COLLATE utf8_unicode_ci,
  `isys_service_type__const` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_service_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_service_type__status` int(10) unsigned DEFAULT '2',
  `isys_service_type__property` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`isys_service_type__id`),
  KEY `isys_service_type__title` (`isys_service_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_service_type` VALUES (1,'LC__CMDB__CATG__SERVICE_TYPE__IT_SERVICE',NULL,'C__SERVICE_TYPE__IT_SERVICE',NULL,2,'');
INSERT INTO `isys_service_type` VALUES (2,'LC__CMDB__CATG__SERVICE_TYPE__BUSINESS_SERVICE',NULL,'C__SERVICE_TYPE__BUSINESS_SERVICE',NULL,2,'');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_setting` (
  `isys_setting__id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `isys_setting__isys_setting_key__id` int(10) unsigned NOT NULL,
  `isys_setting__value` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`isys_setting__id`),
  KEY `isys_setting__id` (`isys_setting__id`),
  KEY `isys_setting__isys_setting_key__id` (`isys_setting__isys_setting_key__id`),
  CONSTRAINT `isys_setting_ibfk_1` FOREIGN KEY (`isys_setting__isys_setting_key__id`) REFERENCES `isys_setting_key` (`isys_setting_key__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_setting` VALUES (1,1,'1');
INSERT INTO `isys_setting` VALUES (2,2,'0');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_setting_key` (
  `isys_setting_key__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_setting_key__title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `isys_setting_key__const` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`isys_setting_key__id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_setting_key` VALUES (1,'LC__MANDATOR_SETTING__CURRENCY','C__MANDATORY_SETTING__CURRENCY');
INSERT INTO `isys_setting_key` VALUES (2,'LC__MANDATOR_SETTING__IP_HANDLING','C__MANDATORY_SETTING__IP_HANDLING');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_settings` (
  `isys_settings__key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_settings__value` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_settings__isys_obj__id` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `isys_settings__unique_idx` (`isys_settings__key`,`isys_settings__isys_obj__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_settings` VALUES ('jdisc.import-unidentified-devices','0',NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_site` (
  `isys_site__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_site__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_site__status` int(10) DEFAULT '2',
  `isys_site__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_site__sort` int(10) DEFAULT NULL,
  `isys_site__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_site__id`),
  KEY `isys_site__title` (`isys_site__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_sla_service_level` (
  `isys_sla_service_level__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_sla_service_level__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_sla_service_level__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_sla_service_level__property` int(10) unsigned DEFAULT NULL,
  `isys_sla_service_level__sort` int(10) unsigned DEFAULT NULL,
  `isys_sla_service_level__status` int(10) unsigned DEFAULT NULL,
  `isys_sla_service_level__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_sla_service_level__id`),
  KEY `isys_sla_service_level__title` (`isys_sla_service_level__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_snmp_community` (
  `isys_snmp_community__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_snmp_community__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_snmp_community__description` text COLLATE utf8_unicode_ci,
  `isys_snmp_community__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_snmp_community__sort` int(10) unsigned DEFAULT '5',
  `isys_snmp_community__status` int(10) unsigned DEFAULT '2',
  `isys_snmp_community__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_snmp_community__id`),
  KEY `isys_snmp_community__title` (`isys_snmp_community__title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_snmp_community` VALUES (1,'public',NULL,'C__SNMP_COMMUNITY__PUBLIC',1,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_sound_manufacturer` (
  `isys_sound_manufacturer__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_sound_manufacturer__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_sound_manufacturer__description` text COLLATE utf8_unicode_ci,
  `isys_sound_manufacturer__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_sound_manufacturer__sort` int(10) unsigned DEFAULT NULL,
  `isys_sound_manufacturer__status` int(10) unsigned DEFAULT NULL,
  `isys_sound_manufacturer__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_sound_manufacturer__id`),
  KEY `isys_sound_manufacturer__title` (`isys_sound_manufacturer__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_stor_con_type` (
  `isys_stor_con_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_stor_con_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_stor_con_type__description` text COLLATE utf8_unicode_ci,
  `isys_stor_con_type__sort` int(10) unsigned DEFAULT '5',
  `isys_stor_con_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_stor_con_type__status` int(10) unsigned DEFAULT '2',
  `isys_stor_con_type__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_stor_con_type__id`),
  KEY `isys_stor_con_type__title` (`isys_stor_con_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_stor_con_type` VALUES (1,'INTERN','INTERN',5,'C__STOR_CON_TYPE__INTERN',2,0);
INSERT INTO `isys_stor_con_type` VALUES (2,'EXTERN','EXTERN',5,'C__STOR_CON_TYPE__EXTERN',2,0);
INSERT INTO `isys_stor_con_type` VALUES (3,'LC__UNIVERSAL__OTHER','ANDERE',5,'C__STOR_CON_TYPE__OTHER',2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_stor_lto_type` (
  `isys_stor_lto_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_stor_lto_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_stor_lto_type__description` text COLLATE utf8_unicode_ci,
  `isys_stor_lto_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_stor_lto_type__property` int(10) DEFAULT NULL,
  `isys_stor_lto_type__sort` int(10) DEFAULT NULL,
  `isys_stor_lto_type__status` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_stor_lto_type__id`),
  KEY `isys_stor_lto_type__title` (`isys_stor_lto_type__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_stor_manufacturer` (
  `isys_stor_manufacturer__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_stor_manufacturer__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_stor_manufacturer__description` text COLLATE utf8_unicode_ci,
  `isys_stor_manufacturer__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_stor_manufacturer__sort` int(10) unsigned DEFAULT '5',
  `isys_stor_manufacturer__status` int(10) unsigned DEFAULT '2',
  `isys_stor_manufacturer__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_stor_manufacturer__id`),
  KEY `isys_stor_manufacturer__title` (`isys_stor_manufacturer__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_stor_model` (
  `isys_stor_model__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_stor_model__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_stor_model__description` text COLLATE utf8_unicode_ci,
  `isys_stor_model__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_stor_model__sort` int(10) unsigned DEFAULT '5',
  `isys_stor_model__property` int(10) unsigned DEFAULT '0',
  `isys_stor_model__status` int(10) unsigned DEFAULT '2',
  `isys_stor_model__isys_stor_manufacturer__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_stor_model__id`),
  KEY `isys_stor_model__isys_stor_manufacturer__id` (`isys_stor_model__isys_stor_manufacturer__id`),
  KEY `isys_stor_model__title` (`isys_stor_model__title`),
  CONSTRAINT `isys_stor_model__isys_stor_manufacturer__id` FOREIGN KEY (`isys_stor_model__isys_stor_manufacturer__id`) REFERENCES `isys_stor_manufacturer` (`isys_stor_manufacturer__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_stor_raid_level` (
  `isys_stor_raid_level__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_stor_raid_level__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_stor_raid_level__description` text COLLATE utf8_unicode_ci,
  `isys_stor_raid_level__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_stor_raid_level__sort` int(10) unsigned DEFAULT '5',
  `isys_stor_raid_level__property` int(10) unsigned DEFAULT '0',
  `isys_stor_raid_level__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_stor_raid_level__id`),
  KEY `isys_stor_raid_level__title` (`isys_stor_raid_level__title`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_stor_raid_level` VALUES (1,'0',NULL,'C__STOR_RAID_LEVEL__0',10,0,2);
INSERT INTO `isys_stor_raid_level` VALUES (2,'1',NULL,'C__STOR_RAID_LEVEL__1',20,0,2);
INSERT INTO `isys_stor_raid_level` VALUES (3,'2',NULL,'C__STOR_RAID_LEVEL__2',30,0,2);
INSERT INTO `isys_stor_raid_level` VALUES (4,'5',NULL,'C__STOR_RAID_LEVEL__5',40,0,2);
INSERT INTO `isys_stor_raid_level` VALUES (5,'10',NULL,'C__STOR_RAID_LEVEL__10',50,0,2);
INSERT INTO `isys_stor_raid_level` VALUES (6,'JBOD',NULL,'C__STOR_RAID_LEVEL__JBOD',60,0,2);
INSERT INTO `isys_stor_raid_level` VALUES (1000,'6',NULL,'C__STOR_RAID_LEVEL__6',70,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_stor_type` (
  `isys_stor_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_stor_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_stor_type__description` text COLLATE utf8_unicode_ci,
  `isys_stor_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_stor_type__sort` int(10) unsigned DEFAULT '5',
  `isys_stor_type__property` int(10) unsigned DEFAULT '0',
  `isys_stor_type__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_stor_type__id`),
  KEY `isys_stor_type__title` (`isys_stor_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_stor_type` VALUES (1,'LC__STORAGE_TYPE__HARD_DISK',NULL,'C__STOR_TYPE_DEVICE_HD',10,0,2);
INSERT INTO `isys_stor_type` VALUES (2,'LC__STORAGE_TYPE__FLOPPY',NULL,'C__STOR_TYPE_DEVICE_FLOPPY',20,0,2);
INSERT INTO `isys_stor_type` VALUES (3,'LC__STORAGE_TYPE__CD_ROM',NULL,'C__STOR_TYPE_DEVICE_CD_ROM',30,0,2);
INSERT INTO `isys_stor_type` VALUES (5,'LC__STORAGE_TYPE__TAPE',NULL,'C__STOR_TYPE_DEVICE_TAPE',50,0,2);
INSERT INTO `isys_stor_type` VALUES (6,'LC__STORAGE_TYPE__STICK',NULL,'C__STOR_TYPE_DEVICE_STICK',60,0,2);
INSERT INTO `isys_stor_type` VALUES (7,'SSD',NULL,'C__STOR_TYPE_DEVICE_SSD',11,0,2);
INSERT INTO `isys_stor_type` VALUES (8,'LC__STORAGE_TYPE__SD_CARD',NULL,'C__STOR_TYPE_DEVICE_SD_CARD',11,0,2);
INSERT INTO `isys_stor_type` VALUES (11,'LC__STORAGE_TYPE__STREAMER',NULL,'C__STOR_TYPE_DEVICE_STREAMER',11,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_stor_unit` (
  `isys_stor_unit__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_stor_unit__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_stor_unit__description` text COLLATE utf8_unicode_ci,
  `isys_stor_unit__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_stor_unit__sort` int(10) unsigned DEFAULT '5',
  `isys_stor_unit__byte` int(10) unsigned DEFAULT NULL,
  `isys_stor_unit__status` int(10) unsigned DEFAULT '2',
  `isys_stor_unit__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_stor_unit__id`),
  KEY `isys_stor_unit__title` (`isys_stor_unit__title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_stor_unit` VALUES (1,'KB','KiloByte\r1 024 Byte','C__STOR_UNIT__KB',5,NULL,2,0);
INSERT INTO `isys_stor_unit` VALUES (2,'MB','MegaByte\r1 048 576 Byte','C__STOR_UNIT__MB',5,NULL,2,0);
INSERT INTO `isys_stor_unit` VALUES (3,'GB','GigaByte\r1 073 741 824 = Byte','C__STOR_UNIT__GB',5,NULL,2,0);
INSERT INTO `isys_stor_unit` VALUES (4,'TB','TerraByte\r1 099 511 627 776 Byte','C__STOR_UNIT__TB',5,NULL,2,0);
INSERT INTO `isys_stor_unit` VALUES (5,'PB','PebiByte\r1 125 899 906 842 624 Byte','C__STOR_UNIT__PB',5,NULL,2,0);
INSERT INTO `isys_stor_unit` VALUES (6,'EB','ExbiByte\r1 152 921 504 606 846 976  Byte','C__STOR_UNIT__EB',5,NULL,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_switch_role` (
  `isys_switch_role__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_switch_role__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_switch_role__description` text COLLATE utf8_unicode_ci,
  `isys_switch_role__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_switch_role__sort` int(10) unsigned DEFAULT NULL,
  `isys_switch_role__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_switch_role__id`),
  KEY `isys_switch_role__title` (`isys_switch_role__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_switch_role` VALUES (1,'Master',NULL,'C__CMDB__SWITCH_ROLE__MASTER',NULL,2);
INSERT INTO `isys_switch_role` VALUES (2,'Slave',NULL,'C__CMDB__SWITCH_ROLE__SLAVE',NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_switch_spanning_tree` (
  `isys_switch_spanning_tree__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_switch_spanning_tree__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_switch_spanning_tree__description` text COLLATE utf8_unicode_ci,
  `isys_switch_spanning_tree__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_switch_spanning_tree__sort` int(10) unsigned DEFAULT NULL,
  `isys_switch_spanning_tree__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_switch_spanning_tree__id`),
  KEY `isys_switch_spanning_tree__title` (`isys_switch_spanning_tree__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_switch_spanning_tree` VALUES (1,'STP',NULL,'C__CMDB__SWITCH_SPANNING_TREE__STP',NULL,2);
INSERT INTO `isys_switch_spanning_tree` VALUES (2,'RSTP',NULL,'C__CMDB__SWITCH_SPANNING_TREE__RSTP',NULL,2);
INSERT INTO `isys_switch_spanning_tree` VALUES (3,'MSTP',NULL,'C__CMDB__SWITCH_SPANNING_TREE__MSTP',NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_tag` (
  `isys_tag__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_tag__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_tag__description` text COLLATE utf8_unicode_ci,
  `isys_tag__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_tag__sort` int(10) unsigned DEFAULT NULL,
  `isys_tag__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_tag__id`),
  KEY `isys_tag__title` (`isys_tag__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_tag_2_isys_obj` (
  `isys_obj__id` int(10) unsigned NOT NULL,
  `isys_tag__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_obj__id`,`isys_tag__id`),
  KEY `isys_obj__id` (`isys_obj__id`),
  KEY `isys_tag__id` (`isys_tag__id`),
  CONSTRAINT `isys_tag_2_isys_obj__ibfk1` FOREIGN KEY (`isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_tag_2_isys_obj__ibfk2` FOREIGN KEY (`isys_tag__id`) REFERENCES `isys_tag` (`isys_tag__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_tapelib_type` (
  `isys_tapelib_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_tapelib_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_tapelib_type__description` text COLLATE utf8_unicode_ci,
  `isys_tapelib_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_tapelib_type__sort` int(10) unsigned DEFAULT '5',
  `isys_tapelib_type__property` int(10) unsigned DEFAULT '0',
  `isys_tapelib_type__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_tapelib_type__id`),
  KEY `isys_tapelib_type__title` (`isys_tapelib_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_tapelib_type` VALUES (1,'LC__UNIVERSAL__OTHER',NULL,'C__TAPELIB_TYPE__OTHER',5,0,2);
INSERT INTO `isys_tapelib_type` VALUES (2,'DDS','DDS','C__TAPELIB_TYPE__DDS',4,0,2);
INSERT INTO `isys_tapelib_type` VALUES (3,'DAT','DAT','C__TAPELIB_TYPE__DAT',4,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_telephone_fax_type` (
  `isys_telephone_fax_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_telephone_fax_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_telephone_fax_type__description` text COLLATE utf8_unicode_ci,
  `isys_telephone_fax_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_telephone_fax_type__property` int(10) DEFAULT NULL,
  `isys_telephone_fax_type__sort` int(10) DEFAULT NULL,
  `isys_telephone_fax_type__status` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_telephone_fax_type__id`),
  KEY `isys_telephone_fax_type__title` (`isys_telephone_fax_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_telephone_fax_type` VALUES (1,'LC__CMDB__CATG__TELEPHONE_FAX__TYPE_ANALOG',NULL,'C__CMDB__TELEPHONE_FAX__TYPE_ANALOG',NULL,1,2);
INSERT INTO `isys_telephone_fax_type` VALUES (2,'LC__CMDB__CATG__TELEPHONE_FAX__TYPE_VOIP',NULL,'C__CMDB__TELEPHONE_FAX__TYPE_VOIP',NULL,2,2);
INSERT INTO `isys_telephone_fax_type` VALUES (3,'LC__CMDB__CATG__TELEPHONE_FAX__TYPE_ISDN',NULL,'C__CMDB__TELEPHONE_FAX__TYPE_ISDN',NULL,3,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_telephone_rate` (
  `isys_telephone_rate__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_telephone_rate__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_telephone_rate__description` text COLLATE utf8_unicode_ci,
  `isys_telephone_rate__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_telephone_rate__sort` int(10) unsigned DEFAULT NULL,
  `isys_telephone_rate__status` int(10) unsigned DEFAULT NULL,
  `isys_telephone_rate__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_telephone_rate__id`),
  KEY `isys_telephone_rate__title` (`isys_telephone_rate__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_temp_unit` (
  `isys_temp_unit__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_temp_unit__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_temp_unit__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_temp_unit__description` text COLLATE utf8_unicode_ci,
  `isys_temp_unit__property` int(10) DEFAULT NULL,
  `isys_temp_unit__sort` int(10) unsigned DEFAULT NULL,
  `isys_temp_unit__status` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`isys_temp_unit__id`),
  KEY `isys_temp_unit__title` (`isys_temp_unit__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_temp_unit` VALUES (1,'C__TEMP_UNIT__CELSIUS','°C',NULL,NULL,NULL,2);
INSERT INTO `isys_temp_unit` VALUES (2,'C__TEMP_UNIT__FAHRENHEIT','°F',NULL,NULL,NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_tierclass` (
  `isys_tierclass__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_tierclass__title` varchar(255) NOT NULL,
  `isys_tierclass__description` text,
  `isys_tierclass__const` varchar(255) DEFAULT NULL,
  `isys_tierclass__sort` int(10) unsigned DEFAULT NULL,
  `isys_tierclass__status` int(10) unsigned NOT NULL DEFAULT '2',
  `isys_tierclass__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_tierclass__id`),
  KEY `isys_tierclass__title` (`isys_tierclass__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_tree_group` (
  `isys_tree_group__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_tree_group__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_tree_group__description` text COLLATE utf8_unicode_ci,
  `isys_tree_group__image_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_tree_group__color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_tree_group__sort` int(10) unsigned DEFAULT '0',
  `isys_tree_group__status` int(10) unsigned DEFAULT '2',
  `isys_tree_group__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_tree_group__id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_tree_group` VALUES (1,NULL,'blue1','10.png',NULL,10,2,0);
INSERT INTO `isys_tree_group` VALUES (2,NULL,'blue2','20.png',NULL,20,2,0);
INSERT INTO `isys_tree_group` VALUES (3,NULL,'blue3','30.png',NULL,30,2,0);
INSERT INTO `isys_tree_group` VALUES (4,NULL,'blue4','40.png',NULL,40,2,0);
INSERT INTO `isys_tree_group` VALUES (5,NULL,'green1','50.png',NULL,50,2,0);
INSERT INTO `isys_tree_group` VALUES (6,NULL,'green2','60.png',NULL,60,2,0);
INSERT INTO `isys_tree_group` VALUES (7,NULL,'green3','70.png',NULL,70,2,0);
INSERT INTO `isys_tree_group` VALUES (8,NULL,'green4','80.png',NULL,80,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_tts_config` (
  `isys_tts_config__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_tts_config__isys_tts_type__id` int(10) unsigned DEFAULT NULL,
  `isys_tts_config__active` tinyint(1) unsigned DEFAULT NULL,
  `isys_tts_config__user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_tts_config__pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_tts_config__service_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_tts_config__id`),
  KEY `isys_tts_config__isys_tts_type__id` (`isys_tts_config__isys_tts_type__id`),
  CONSTRAINT `isys_tts_config_ibfk_1` FOREIGN KEY (`isys_tts_config__isys_tts_type__id`) REFERENCES `isys_tts_type` (`isys_tts_type__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_tts_type` (
  `isys_tts_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_tts_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_tts_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_tts_type__class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_tts_type__protocol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_tts_type__connector` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_tts_type__url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_tts_type__description` text COLLATE utf8_unicode_ci,
  `isys_tts_type__sort` int(10) DEFAULT '1',
  PRIMARY KEY (`isys_tts_type__id`),
  KEY `isys_tts_type__title` (`isys_tts_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_tts_type` VALUES (1,'LC__TTS_TYPE__RT','C__TTS__REQUEST_TRACKER','','isys_protocol_http','isys_connector_ticketing_rt','https://bestpractical.com/rt/',NULL,1);
INSERT INTO `isys_tts_type` VALUES (2,'LC__TTS_TYPE__OTRS','C__TTS__OTRS','','isys_protocol_soap','isys_connector_ticketing_otrs','https://www.otrs.org/',NULL,2);
INSERT INTO `isys_tts_type` VALUES (3,'LC__TTS_TYPE__ITOP','C__TTS__ITOP','','isys_protocol_http','isys_connector_ticketing_itop','https://www.itomig.de/produkte/itop.html',NULL,3);
INSERT INTO `isys_tts_type` VALUES (4,'LC__TTS_TYPE__ZAMMAD','C__TTS__ZAMMAD','','isys_protocol_http','isys_connector_ticketing_zammad','https://zammad.com',NULL,4);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_ui_con_type` (
  `isys_ui_con_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_ui_con_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ui_con_type__description` text COLLATE utf8_unicode_ci,
  `isys_ui_con_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ui_con_type__sort` int(10) unsigned DEFAULT '5',
  `isys_ui_con_type__property` int(10) unsigned DEFAULT '0',
  `isys_ui_con_type__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_ui_con_type__id`),
  KEY `isys_ui_con_type__title` (`isys_ui_con_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_ui_con_type` VALUES (1,'LC__CMDB__UI_CON_TYPE__MONITOR','LC fuer conType MONITOR','C__UI_CON_TYPE__MONITOR',5,0,2);
INSERT INTO `isys_ui_con_type` VALUES (2,'LC__UI_CON_TYPE__MOUSE','Mouse','C__UI_CON_TYPE__MOUSE',5,0,2);
INSERT INTO `isys_ui_con_type` VALUES (3,'LC__UI_CON_TYPE__KEYBOARD','KEYBOARD','C__UI_CON_TYPE__KEYBOARD',5,0,2);
INSERT INTO `isys_ui_con_type` VALUES (4,'LC__UI_CON_TYPE__KVM','KVM','C__UI_CON_TYPE__KVM',5,0,2);
INSERT INTO `isys_ui_con_type` VALUES (5,'LC__UI_CON_TYPE__PRINTER','PRINTER','C__UI_CON_TYPE__PRINTER',5,0,2);
INSERT INTO `isys_ui_con_type` VALUES (6,'LC__UI_CON_TYPE__MEMORY_DISK','MEMORY_DISK','C__UI_CON_TYPE__MEMORY_DISK',5,0,2);
INSERT INTO `isys_ui_con_type` VALUES (7,'LC__UI_CON_TYPE__CONSOLE','CONSOLE','C__UI_CON_TYPE__CONSOLE',5,0,2);
INSERT INTO `isys_ui_con_type` VALUES (8,'LC__UI_CON_TYPE__PHONE_DIGITAL','PHONE_DIGITAL','C__UI_CON_TYPE__PHONE_DIGITAL',5,0,2);
INSERT INTO `isys_ui_con_type` VALUES (9,'LC__UI_CON_TYPE__PHONE_ANALOG','Analog (Telefon)','C__UI_CON_TYPE__PHONE_ANALOG',5,0,2);
INSERT INTO `isys_ui_con_type` VALUES (10,'LC__UI_CON_TYPE__PHONE_S0','S0 (Telefon)','C__UI_CON_TYPE__PHONE_S0',5,0,2);
INSERT INTO `isys_ui_con_type` VALUES (11,'LC__UI_CON_TYPE__MULTIMEDIA','Multimedia','C__UI_CON_TYPE__MULTIMEDIA',5,0,2);
INSERT INTO `isys_ui_con_type` VALUES (12,'LC__UI_CON_TYPE__OTHER','Sonstiges','C__UI_CON_TYPE__OTHER',5,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_ui_plugtype` (
  `isys_ui_plugtype__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_ui_plugtype__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ui_plugtype__description` text COLLATE utf8_unicode_ci,
  `isys_ui_plugtype__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ui_plugtype__sort` int(10) unsigned DEFAULT '5',
  `isys_ui_plugtype__property` int(10) unsigned DEFAULT '0',
  `isys_ui_plugtype__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_ui_plugtype__id`),
  KEY `isys_ui_plugtype__title` (`isys_ui_plugtype__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_ui_plugtype` VALUES (1,'LC__UNIVERSAL__OTHER',NULL,'C__UI_PLUGTYPE__OTHER',0,0,2);
INSERT INTO `isys_ui_plugtype` VALUES (2,'Serial',NULL,'C__UI_PLUGTYPE__SERIAL',10,0,2);
INSERT INTO `isys_ui_plugtype` VALUES (3,'USB',NULL,'',5,0,2);
INSERT INTO `isys_ui_plugtype` VALUES (4,'FireWire',NULL,'',5,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_unit` (
  `isys_unit__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_unit__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_unit__description` text COLLATE utf8_unicode_ci,
  `isys_unit__table` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_unit__default` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_unit__id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_unit` VALUES (1,'LC__UNIT__TIME_PERIOD',NULL,'isys_unit_of_time',3);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_unit_of_time` (
  `isys_unit_of_time__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_unit_of_time__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_unit_of_time__description` text COLLATE utf8_unicode_ci,
  `isys_unit_of_time__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_unit_of_time__factor` int(10) unsigned DEFAULT '1',
  `isys_unit_of_time__sort` int(10) unsigned DEFAULT NULL,
  `isys_unit_of_time__property` int(10) unsigned DEFAULT NULL,
  `isys_unit_of_time__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_unit_of_time__id`),
  KEY `isys_unit_of_time__title` (`isys_unit_of_time__title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_unit_of_time` VALUES (1,'LC__CMDB__UNIT_OF_TIME__SECOND',NULL,'C__CMDB__UNIT_OF_TIME__SECOND',1,1,NULL,2);
INSERT INTO `isys_unit_of_time` VALUES (2,'LC__CMDB__UNIT_OF_TIME__MINUTE',NULL,'C__CMDB__UNIT_OF_TIME__MINUTE',60,2,NULL,2);
INSERT INTO `isys_unit_of_time` VALUES (3,'LC__CMDB__UNIT_OF_TIME__HOUR',NULL,'C__CMDB__UNIT_OF_TIME__HOUR',3600,3,NULL,2);
INSERT INTO `isys_unit_of_time` VALUES (4,'LC__CMDB__UNIT_OF_TIME__DAY',NULL,'C__CMDB__UNIT_OF_TIME__DAY',86400,4,NULL,2);
INSERT INTO `isys_unit_of_time` VALUES (5,'LC__CMDB__UNIT_OF_TIME__MONTH',NULL,'C__CMDB__UNIT_OF_TIME__MONTH',2592000,5,NULL,2);
INSERT INTO `isys_unit_of_time` VALUES (6,'LC__CMDB__UNIT_OF_TIME__YEAR',NULL,'C__CMDB__UNIT_OF_TIME__YEAR',31104000,6,NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_ups_battery_type` (
  `isys_ups_battery_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_ups_battery_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ups_battery_type__description` text COLLATE utf8_unicode_ci,
  `isys_ups_battery_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ups_battery_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_ups_battery_type__property` int(10) unsigned DEFAULT NULL,
  `isys_ups_battery_type__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_ups_battery_type__id`),
  KEY `isys_ups_battery_type__title` (`isys_ups_battery_type__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_ups_type` (
  `isys_ups_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_ups_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ups_type__description` text COLLATE utf8_unicode_ci,
  `isys_ups_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_ups_type__sort` int(10) unsigned DEFAULT NULL,
  `isys_ups_type__property` int(10) unsigned DEFAULT NULL,
  `isys_ups_type__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_ups_type__id`),
  KEY `isys_ups_type__title` (`isys_ups_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_ups_type` VALUES (1,'Online',NULL,NULL,1,0,2);
INSERT INTO `isys_ups_type` VALUES (2,'Offline',NULL,NULL,2,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_user_locale` (
  `isys_user_locale__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_user_locale__isys_user_setting__id` int(10) unsigned NOT NULL,
  `isys_user_locale__language` int(11) unsigned NOT NULL,
  `isys_user_locale__language_time` int(10) unsigned DEFAULT NULL,
  `isys_user_locale__language_monetary` int(10) unsigned DEFAULT NULL,
  `isys_user_locale__language_numeric` int(10) unsigned DEFAULT NULL,
  `isys_user_locale__default_tree_view` int(10) unsigned NOT NULL,
  `isys_user_locale__default_tree_type` tinyint(1) unsigned DEFAULT NULL,
  `isys_user_locale__property` int(10) unsigned DEFAULT '0',
  `isys_user_locale__status` int(10) unsigned DEFAULT '2',
  `isys_user_locale__isys_currency__id` int(10) unsigned DEFAULT NULL,
  `isys_user_locale__browser_language` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`isys_user_locale__id`),
  UNIQUE KEY `isys_user_locale__isys_user_setting__id` (`isys_user_locale__isys_user_setting__id`),
  KEY `isys_user_locale__language_time` (`isys_user_locale__language_time`,`isys_user_locale__language_monetary`,`isys_user_locale__language_numeric`),
  KEY `isys_user_locale__isys_currency__id` (`isys_user_locale__isys_currency__id`),
  CONSTRAINT `isys_user_locale__isys_user_setting__id` FOREIGN KEY (`isys_user_locale__isys_user_setting__id`) REFERENCES `isys_user_setting` (`isys_user_setting__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_user_locale_ibfk_1` FOREIGN KEY (`isys_user_locale__isys_currency__id`) REFERENCES `isys_currency` (`isys_currency__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_user_locale` VALUES (9,1,0,0,NULL,0,0,NULL,0,2,NULL,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_user_mydoit` (
  `isys_user_mydoit__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_user_mydoit__isys_user_setting__id` int(10) unsigned NOT NULL DEFAULT '0',
  `isys_user_mydoit__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_user_mydoit__description` text COLLATE utf8_unicode_ci,
  `isys_user_mydoit__link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_user_mydoit__date_added` datetime DEFAULT NULL,
  `isys_user_mydoit__status` int(10) unsigned DEFAULT '2',
  `isys_user_mydoit__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_user_mydoit__id`),
  KEY `isys_user_mydoit_FKIndex1` (`isys_user_mydoit__isys_user_setting__id`),
  CONSTRAINT `isys_user_mydoit__isys_user_setting__id` FOREIGN KEY (`isys_user_mydoit__isys_user_setting__id`) REFERENCES `isys_user_setting` (`isys_user_setting__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_user_session` (
  `isys_user_session__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_user_session__isys_obj__id` int(10) unsigned DEFAULT NULL COMMENT 'Person object',
  `isys_user_session__php_sid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_user_session__modus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_user_session__status` int(10) unsigned DEFAULT NULL,
  `isys_user_session__time_login` datetime DEFAULT NULL,
  `isys_user_session__time_last_action` datetime DEFAULT NULL,
  `isys_user_session__description` text COLLATE utf8_unicode_ci,
  `isys_user_session__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_user_session__ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_user_session__id`),
  KEY `isys_user_session__isys_obj__id` (`isys_user_session__isys_obj__id`),
  KEY `isys_user_session__time_last_action` (`isys_user_session__time_last_action`),
  KEY `isys_user_session__php_sid` (`isys_user_session__php_sid`),
  CONSTRAINT `isys_user_session_ibfk_2` FOREIGN KEY (`isys_user_session__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_user_setting` (
  `isys_user_setting__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_user_setting__isys_obj__id` int(10) unsigned DEFAULT NULL COMMENT 'Person object',
  PRIMARY KEY (`isys_user_setting__id`),
  KEY `isys_user_setting__isys_obj__id` (`isys_user_setting__isys_obj__id`),
  CONSTRAINT `isys_user_setting_ibfk_1` FOREIGN KEY (`isys_user_setting__isys_obj__id`) REFERENCES `isys_obj` (`isys_obj__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_user_setting` VALUES (4,1);
INSERT INTO `isys_user_setting` VALUES (2,4);
INSERT INTO `isys_user_setting` VALUES (1,9);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_user_ui` (
  `isys_user_ui__id` int(10) NOT NULL AUTO_INCREMENT,
  `isys_user_ui__isys_user_setting__id` int(10) unsigned NOT NULL,
  `isys_user_ui__theme` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_user_ui__archive_color` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#FFFF00',
  `isys_user_ui__del_color` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#FF0000',
  `isys_user_ui__tree_visible` tinyint(2) DEFAULT '3',
  PRIMARY KEY (`isys_user_ui__id`),
  KEY `isys_user_setting_FKIndex1` (`isys_user_ui__isys_user_setting__id`),
  CONSTRAINT `isys_user_ui__isys_user_setting__id` FOREIGN KEY (`isys_user_ui__isys_user_setting__id`) REFERENCES `isys_user_setting` (`isys_user_setting__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_user_ui` VALUES (1,1,'default','#FFFF00','#FF0000',3);
INSERT INTO `isys_user_ui` VALUES (2,2,'default','#FFFF00','#FF0000',3);
INSERT INTO `isys_user_ui` VALUES (4,4,'default','#FFFF00','#FF0000',3);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_validation_config` (
  `isys_validation_config__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_validation_config__isysgui_catg__id` int(10) DEFAULT NULL,
  `isys_validation_config__isysgui_cats__id` int(10) DEFAULT NULL,
  `isys_validation_config__json` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_validation_config__isysgui_catg_custom__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_validation_config__id`),
  KEY `isys_validation_config__isysgui_catg_custom__id` (`isys_validation_config__isysgui_catg_custom__id`),
  CONSTRAINT `isys_validation_config__isysgui_catg_custom__id` FOREIGN KEY (`isys_validation_config__isysgui_catg_custom__id`) REFERENCES `isysgui_catg_custom` (`isysgui_catg_custom__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_virtual_device_host` (
  `isys_virtual_device_host__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_virtual_device_host__isys_catg_virtual_device_list__id` int(10) unsigned NOT NULL,
  `isys_virtual_device_host__isys_catg_ldevclient_list__id` int(10) unsigned DEFAULT NULL,
  `isys_virtual_device_host__isys_catg_drive_list__id` int(10) unsigned DEFAULT NULL,
  `isys_virtual_device_host__isys_catg_stor_list__id` int(10) unsigned DEFAULT NULL,
  `isys_virtual_device_host__isys_catg_port_list__id` int(10) unsigned DEFAULT NULL,
  `isys_virtual_device_host__isys_catg_ui_list__id` int(10) unsigned DEFAULT NULL,
  `isys_virtual_device_host__switch_port_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `isys_virtual_device_host__cluster_storage` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `isys_virtual_device_host__cluster_ui` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`isys_virtual_device_host__id`),
  KEY `isys_virtual_device_host__isys_catg_virtual_device_list__id` (`isys_virtual_device_host__isys_catg_virtual_device_list__id`),
  KEY `isys_virtual_device_host__isys_catg_ldevclient_list__id` (`isys_virtual_device_host__isys_catg_ldevclient_list__id`),
  KEY `isys_virtual_device_host__isys_catg_drive_list__id` (`isys_virtual_device_host__isys_catg_drive_list__id`),
  KEY `isys_virtual_device_host__isys_catg_stor_list__id` (`isys_virtual_device_host__isys_catg_stor_list__id`),
  KEY `isys_virtual_device_host__isys_catg_port_list__id` (`isys_virtual_device_host__isys_catg_port_list__id`),
  KEY `isys_virtual_device_host__isys_catg_ui_list__id` (`isys_virtual_device_host__isys_catg_ui_list__id`),
  CONSTRAINT `isys_virtual_device_host_ibfk_1` FOREIGN KEY (`isys_virtual_device_host__isys_catg_ldevclient_list__id`) REFERENCES `isys_catg_ldevclient_list` (`isys_catg_ldevclient_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_virtual_device_host_ibfk_2` FOREIGN KEY (`isys_virtual_device_host__isys_catg_drive_list__id`) REFERENCES `isys_catg_drive_list` (`isys_catg_drive_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_virtual_device_host_ibfk_3` FOREIGN KEY (`isys_virtual_device_host__isys_catg_stor_list__id`) REFERENCES `isys_catg_stor_list` (`isys_catg_stor_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_virtual_device_host_ibfk_4` FOREIGN KEY (`isys_virtual_device_host__isys_catg_port_list__id`) REFERENCES `isys_catg_port_list` (`isys_catg_port_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_virtual_device_host_ibfk_5` FOREIGN KEY (`isys_virtual_device_host__isys_catg_ui_list__id`) REFERENCES `isys_catg_ui_list` (`isys_catg_ui_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_virtual_device_host_ibfk_6` FOREIGN KEY (`isys_virtual_device_host__isys_catg_virtual_device_list__id`) REFERENCES `isys_catg_virtual_device_list` (`isys_catg_virtual_device_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_virtual_device_local` (
  `isys_virtual_device_local__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_virtual_device_local__isys_catg_virtual_device_list__id` int(10) unsigned NOT NULL,
  `isys_virtual_device_local__isys_catg_stor_list__id` int(10) unsigned DEFAULT NULL,
  `isys_virtual_device_local__isys_catg_port_list__id` int(10) unsigned DEFAULT NULL,
  `isys_virtual_device_local__isys_catg_ui_list__id` int(10) unsigned DEFAULT NULL,
  `isys_virtual_device_local__isys_virtual_storage_type__id` int(10) unsigned DEFAULT NULL,
  `isys_virtual_device_local__isys_virtual_network_type__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_virtual_device_local__id`),
  KEY `isys_virtual_device_local__isys_catg_virtual_device_list__id` (`isys_virtual_device_local__isys_catg_virtual_device_list__id`),
  KEY `isys_virtual_device_local__isys_catg_stor_list__id` (`isys_virtual_device_local__isys_catg_stor_list__id`),
  KEY `isys_virtual_device_local__isys_virtual_storage_type__id` (`isys_virtual_device_local__isys_virtual_storage_type__id`),
  KEY `isys_virtual_device_local__isys_virtual_network_type__id` (`isys_virtual_device_local__isys_virtual_network_type__id`),
  KEY `isys_virtual_device_local__isys_catg_ui_list__id` (`isys_virtual_device_local__isys_catg_ui_list__id`),
  KEY `isys_virtual_device_local__isys_catg_port_list__id` (`isys_virtual_device_local__isys_catg_port_list__id`),
  CONSTRAINT `isys_virtual_device_local_ibfk_1` FOREIGN KEY (`isys_virtual_device_local__isys_catg_stor_list__id`) REFERENCES `isys_catg_stor_list` (`isys_catg_stor_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_virtual_device_local_ibfk_2` FOREIGN KEY (`isys_virtual_device_local__isys_virtual_storage_type__id`) REFERENCES `isys_virtual_storage_type` (`isys_virtual_storage_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_virtual_device_local_ibfk_3` FOREIGN KEY (`isys_virtual_device_local__isys_virtual_network_type__id`) REFERENCES `isys_virtual_network_type` (`isys_virtual_network_type__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_virtual_device_local_ibfk_4` FOREIGN KEY (`isys_virtual_device_local__isys_catg_ui_list__id`) REFERENCES `isys_catg_ui_list` (`isys_catg_ui_list__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isys_virtual_device_local_ibfk_5` FOREIGN KEY (`isys_virtual_device_local__isys_catg_virtual_device_list__id`) REFERENCES `isys_catg_virtual_device_list` (`isys_catg_virtual_device_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_virtual_network_type` (
  `isys_virtual_network_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_virtual_network_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_virtual_network_type__description` text COLLATE utf8_unicode_ci,
  `isys_virtual_network_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_virtual_network_type__sort` int(10) unsigned DEFAULT '0',
  `isys_virtual_network_type__status` int(10) unsigned DEFAULT '2',
  `isys_virtual_network_type__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_virtual_network_type__id`),
  KEY `isys_virtual_network_type__title` (`isys_virtual_network_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_virtual_network_type` VALUES (1,'Bridged','','C__NETWORK_TYPE__BRIDGED',1,2,0);
INSERT INTO `isys_virtual_network_type` VALUES (2,'NAT','','C__NETWORK_TYPE__NAT',1,2,0);
INSERT INTO `isys_virtual_network_type` VALUES (3,'Host-only','','C__NETWORK_TYPE__HOSTONLY',1,2,0);
INSERT INTO `isys_virtual_network_type` VALUES (4,'Virtual Switch','','C__NETWORK_TYPE__VIRTUALSWITCH',1,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_virtual_port_group` (
  `isys_virtual_port_group__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_virtual_port_group__isys_catg_virtual_switch_list__id` int(10) unsigned NOT NULL,
  `isys_virtual_port_group__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_virtual_port_group__vlanid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`isys_virtual_port_group__id`),
  KEY `isys_virtual_port_group__isys_catg_virtual_switch_list__id` (`isys_virtual_port_group__isys_catg_virtual_switch_list__id`),
  CONSTRAINT `isys_virtual_port_group_ibfk_1` FOREIGN KEY (`isys_virtual_port_group__isys_catg_virtual_switch_list__id`) REFERENCES `isys_catg_virtual_switch_list` (`isys_catg_virtual_switch_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_virtual_storage_type` (
  `isys_virtual_storage_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_virtual_storage_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_virtual_storage_type__description` text COLLATE utf8_unicode_ci,
  `isys_virtual_storage_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_virtual_storage_type__sort` int(10) unsigned DEFAULT '0',
  `isys_virtual_storage_type__status` int(10) unsigned DEFAULT '2',
  `isys_virtual_storage_type__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_virtual_storage_type__id`),
  KEY `isys_virtual_storage_type__title` (`isys_virtual_storage_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_virtual_storage_type` VALUES (1,'Raw Device/LUN','',NULL,1,2,0);
INSERT INTO `isys_virtual_storage_type` VALUES (2,'Disk File','',NULL,1,2,0);
INSERT INTO `isys_virtual_storage_type` VALUES (3,'Folder','',NULL,1,2,0);
INSERT INTO `isys_virtual_storage_type` VALUES (4,'Client Device','',NULL,1,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_virtual_switch_2_port` (
  `isys_virtual_switch_2_port__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_virtual_switch_2_port__isys_catg_virtual_switch_list__id` int(10) unsigned NOT NULL,
  `isys_virtual_switch_2_port__isys_catg_port_list__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_virtual_switch_2_port__id`),
  KEY `isys_virtual_switch_2_port__isys_catg_virtual_switch_list__id` (`isys_virtual_switch_2_port__isys_catg_virtual_switch_list__id`),
  KEY `isys_virtual_switch_2_port__isys_catg_port_list__id` (`isys_virtual_switch_2_port__isys_catg_port_list__id`),
  CONSTRAINT `isys_virtual_switch_2_port_ibfk_1` FOREIGN KEY (`isys_virtual_switch_2_port__isys_catg_virtual_switch_list__id`) REFERENCES `isys_catg_virtual_switch_list` (`isys_catg_virtual_switch_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_virtual_switch_2_port_ibfk_2` FOREIGN KEY (`isys_virtual_switch_2_port__isys_catg_port_list__id`) REFERENCES `isys_catg_port_list` (`isys_catg_port_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_visualization_profile` (
  `isys_visualization_profile__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_visualization_profile__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_visualization_profile__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_visualization_profile__type_blacklist` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_visualization_profile__defaults` text COLLATE utf8_unicode_ci,
  `isys_visualization_profile__obj_info_config` text COLLATE utf8_unicode_ci,
  `isys_visualization_profile__config` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_visualization_profile__id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_visualization_profile` VALUES (1,'LC__VISUALIZATION_PROFILES__DEFAULT','C__VISUALIZATION_PROFILES__DEFAULT',NULL,'{\"orientation\":\"vertical\",\"service-filter\":\"-1\"}','{\"main_obj\":[{\"g\":{\"C__CATG__GLOBAL\":[\"0\",\"type\",\"Objekttyp (Allgemein)\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"0\",\"title\",\"Name (Allgemein)\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"0\",\"sysid\",\"SYSID (Allgemein)\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"0\",\"cmdb_status\",\"CMDB-Status (Allgemein)\"]}}],\"lvls\":[],\"query\":\"SELECT \\nobj_main.isys_obj__id AS \\n\'__id__\\n\', \\nj3.isys_obj_type__title AS \\n\'LC__REPORT__FORM__OBJECT_TYPE###1\\n\', \\nobj_main.isys_obj__title AS \\n\'LC__UNIVERSAL__TITLE###1\\n\', \\nobj_main.isys_obj__sysid AS \\n\'SYSID###1\\n\', \\nobj_main_status.isys_cmdb_status__title AS \\n\'LC__UNIVERSAL__CMDB_STATUS\\n\' \\n\\nFROM isys_obj AS obj_main \\nINNER JOIN isys_cmdb_status AS obj_main_status ON obj_main_status.isys_cmdb_status__id = obj_main.isys_obj__isys_cmdb_status__id \\nLEFT JOIN isys_cmdb_status AS j4 ON j4.isys_cmdb_status__id = obj_main.isys_obj__isys_cmdb_status__id \\nLEFT JOIN isys_obj_type AS j3 ON j3.isys_obj_type__id = obj_main.isys_obj__isys_obj_type__id \\n\\nWHERE TRUE \\n AND obj_main.isys_obj__id = %s  \\n ORDER BY obj_main.isys_obj__id ASC LIMIT 0, 1;\"}','{\"width\":\"160\",\"master_top\":false,\"highlight-color\":\"#AA0000\",\"show-cmdb-path\":true,\"tooltip\":false,\"rows\":[{\"fontcolor\":\"#FFFFFF\",\"option\":\"obj-type-title-icon\",\"font-bold\":true,\"fillcolor\":\"#000000\"},{\"fontcolor\":\"#000000\",\"option\":\"obj-title-cmdb-status\",\"fillcolor_obj_type\":true}]}');
INSERT INTO `isys_visualization_profile` VALUES (2,'LC__VISUALIZATION_PROFILES__MICRO','C__VISUALIZATION_PROFILES__MICRO',NULL,'{\"orientation\":\"vertical\",\"service-filter\":\"-1\"}','{\"main_obj\":[{\"g\":{\"C__CATG__GLOBAL\":[\"0\",\"type\",\"Objekttyp (Allgemein)\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"0\",\"title\",\"Name (Allgemein)\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"0\",\"sysid\",\"SYSID (Allgemein)\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"0\",\"cmdb_status\",\"CMDB-Status (Allgemein)\"]}}],\"lvls\":[],\"query\":\"SELECT \\nobj_main.isys_obj__id AS \\n\'__id__\\n\', \\nj3.isys_obj_type__title AS \\n\'LC__REPORT__FORM__OBJECT_TYPE###1\\n\', \\nobj_main.isys_obj__title AS \\n\'LC__UNIVERSAL__TITLE###1\\n\', \\nobj_main.isys_obj__sysid AS \\n\'SYSID###1\\n\', \\nobj_main_status.isys_cmdb_status__title AS \\n\'LC__UNIVERSAL__CMDB_STATUS\\n\' \\n\\nFROM isys_obj AS obj_main \\nINNER JOIN isys_cmdb_status AS obj_main_status ON obj_main_status.isys_cmdb_status__id = obj_main.isys_obj__isys_cmdb_status__id \\nLEFT JOIN isys_cmdb_status AS j4 ON j4.isys_cmdb_status__id = obj_main.isys_obj__isys_cmdb_status__id \\nLEFT JOIN isys_obj_type AS j3 ON j3.isys_obj_type__id = obj_main.isys_obj__isys_obj_type__id \\n\\nWHERE TRUE \\n AND obj_main.isys_obj__id = %s  \\n ORDER BY obj_main.isys_obj__id ASC LIMIT 0, 1;\"}','{\"width\":\"23\",\"master_top\":false,\"highlight-color\":\"#AA0000\",\"show-cmdb-path\":true,\"tooltip\":true,\"rows\":[{\"fontcolor\":\"#000000\",\"option\":\"obj-type-title-icon\",\"fillcolor_obj_type\":true}]}');
INSERT INTO `isys_visualization_profile` VALUES (3,'LC__VISUALIZATION_PROFILES__POINT','C__VISUALIZATION_PROFILES__POINT','tree','{\"orientation\":\"vertical\",\"service-filter\":\"-1\"}','{\"main_obj\":[{\"g\":{\"C__CATG__GLOBAL\":[\"0\",\"type\",\"Objekttyp (Allgemein)\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"0\",\"title\",\"Name (Allgemein)\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"0\",\"sysid\",\"SYSID (Allgemein)\"]}},{\"g\":{\"C__CATG__GLOBAL\":[\"0\",\"cmdb_status\",\"CMDB-Status (Allgemein)\"]}}],\"lvls\":[],\"query\":\"SELECT \\nobj_main.isys_obj__id AS \\n\'__id__\\n\', \\nj3.isys_obj_type__title AS \\n\'LC__REPORT__FORM__OBJECT_TYPE###1\\n\', \\nobj_main.isys_obj__title AS \\n\'LC__UNIVERSAL__TITLE###1\\n\', \\nobj_main.isys_obj__sysid AS \\n\'SYSID###1\\n\', \\nobj_main_status.isys_cmdb_status__title AS \\n\'LC__UNIVERSAL__CMDB_STATUS\\n\' \\n\\nFROM isys_obj AS obj_main \\nINNER JOIN isys_cmdb_status AS obj_main_status ON obj_main_status.isys_cmdb_status__id = obj_main.isys_obj__isys_cmdb_status__id \\nLEFT JOIN isys_cmdb_status AS j4 ON j4.isys_cmdb_status__id = obj_main.isys_obj__isys_cmdb_status__id \\nLEFT JOIN isys_obj_type AS j3 ON j3.isys_obj_type__id = obj_main.isys_obj__isys_obj_type__id \\n\\nWHERE TRUE \\n AND obj_main.isys_obj__id = %s  \\n ORDER BY obj_main.isys_obj__id ASC LIMIT 0, 1;\"}','{\"width\":\"90\",\"mikro\":true,\"master_top\":false,\"highlight-color\":\"#AA0000\",\"show-cmdb-path\":true,\"tooltip\":true,\"rows\":[]}');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_vlan_management_protocol` (
  `isys_vlan_management_protocol__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_vlan_management_protocol__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_vlan_management_protocol__description` text COLLATE utf8_unicode_ci,
  `isys_vlan_management_protocol__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_vlan_management_protocol__sort` int(10) unsigned DEFAULT NULL,
  `isys_vlan_management_protocol__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_vlan_management_protocol__id`),
  KEY `isys_vlan_management_protocol__title` (`isys_vlan_management_protocol__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_vlan_management_protocol` VALUES (1,'VTPv2',NULL,'C__CMDB__VLAN_MANAGEMENT_PROTOCOL__VTPV2',NULL,2);
INSERT INTO `isys_vlan_management_protocol` VALUES (2,'VTPv3',NULL,'C__CMDB__VLAN_MANAGEMENT_PROTOCOL__VTPV3',NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_vm_type` (
  `isys_vm_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_vm_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_vm_type__description` text COLLATE utf8_unicode_ci,
  `isys_vm_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_vm_type__sort` int(10) unsigned DEFAULT '0',
  `isys_vm_type__status` int(10) unsigned DEFAULT '2',
  `isys_vm_type__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_vm_type__id`),
  KEY `isys_vm_type__title` (`isys_vm_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_vm_type` VALUES (1,'VMWare ESX','',NULL,1,2,0);
INSERT INTO `isys_vm_type` VALUES (2,'VMWare Workstation','',NULL,1,2,0);
INSERT INTO `isys_vm_type` VALUES (3,'WMWare Server','',NULL,1,2,0);
INSERT INTO `isys_vm_type` VALUES (4,'VMWare Fusion','',NULL,1,2,0);
INSERT INTO `isys_vm_type` VALUES (5,'Microsoft Virtual PC','',NULL,1,2,0);
INSERT INTO `isys_vm_type` VALUES (6,'Parallels Desktop','',NULL,1,2,0);
INSERT INTO `isys_vm_type` VALUES (7,'Parallels Virtuozzo','',NULL,1,2,0);
INSERT INTO `isys_vm_type` VALUES (8,'Parallels Workstation','',NULL,1,2,0);
INSERT INTO `isys_vm_type` VALUES (9,'VServer','',NULL,1,2,0);
INSERT INTO `isys_vm_type` VALUES (10,'XEN','',NULL,1,2,0);
INSERT INTO `isys_vm_type` VALUES (11,'KVM','',NULL,1,2,0);
INSERT INTO `isys_vm_type` VALUES (12,'QEMU','',NULL,1,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_vmkernel_port` (
  `isys_vmkernel_port__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_vmkernel_port__isys_catg_virtual_switch_list__id` int(10) unsigned NOT NULL,
  `isys_vmkernel_port__isys_catg_ip_list__id` int(10) unsigned DEFAULT NULL,
  `isys_vmkernel_port__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`isys_vmkernel_port__id`),
  KEY `isys_vmkernel_port__isys_catg_virtual_switch_list__id` (`isys_vmkernel_port__isys_catg_virtual_switch_list__id`),
  KEY `isys_vmkernel_port__isys_catg_ip_list__id` (`isys_vmkernel_port__isys_catg_ip_list__id`),
  CONSTRAINT `isys_vmkernel_port_ibfk_1` FOREIGN KEY (`isys_vmkernel_port__isys_catg_virtual_switch_list__id`) REFERENCES `isys_catg_virtual_switch_list` (`isys_catg_virtual_switch_list__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isys_vmkernel_port_ibfk_2` FOREIGN KEY (`isys_vmkernel_port__isys_catg_ip_list__id`) REFERENCES `isys_catg_ip_list` (`isys_catg_ip_list__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_voip_phone_button_template` (
  `isys_voip_phone_button_template__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_voip_phone_button_template__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_voip_phone_button_template__description` text COLLATE utf8_unicode_ci,
  `isys_voip_phone_button_template__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_voip_phone_button_template__sort` int(10) unsigned DEFAULT '5',
  `isys_voip_phone_button_template__status` int(10) unsigned DEFAULT '2',
  `isys_voip_phone_button_template__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_voip_phone_button_template__id`),
  KEY `isys_voip_phone_button_template__title` (`isys_voip_phone_button_template__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_voip_phone_softkey_template` (
  `isys_voip_phone_softkey_template__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_voip_phone_softkey_template__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_voip_phone_softkey_template__description` text COLLATE utf8_unicode_ci,
  `isys_voip_phone_softkey_template__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_voip_phone_softkey_template__sort` int(10) unsigned DEFAULT '5',
  `isys_voip_phone_softkey_template__status` int(10) unsigned DEFAULT '2',
  `isys_voip_phone_softkey_template__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_voip_phone_softkey_template__id`),
  KEY `isys_voip_phone_softkey_template__title` (`isys_voip_phone_softkey_template__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_volume_unit` (
  `isys_volume_unit__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_volume_unit__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_volume_unit__description` text COLLATE utf8_unicode_ci,
  `isys_volume_unit__factor` int(10) unsigned DEFAULT '1',
  `isys_volume_unit__sort` int(10) unsigned DEFAULT '1',
  `isys_volume_unit__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_volume_unit__property` int(10) unsigned DEFAULT '0',
  `isys_volume_unit__status` int(10) unsigned DEFAULT '2',
  PRIMARY KEY (`isys_volume_unit__id`),
  KEY `isys_volume_unit__title` (`isys_volume_unit__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_volume_unit` VALUES (1,'ml',NULL,1,1,'C__VOLUME_UNIT__ML',0,2);
INSERT INTO `isys_volume_unit` VALUES (2,'l',NULL,100,2,'C__VOLUME_UNIT__L',0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_vrrp_type` (
  `isys_vrrp_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_vrrp_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_vrrp_type__description` text COLLATE utf8_unicode_ci,
  `isys_vrrp_type__sort` int(11) DEFAULT '5',
  `isys_vrrp_type__property` int(10) unsigned DEFAULT '0',
  `isys_vrrp_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_vrrp_type__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_vrrp_type__id`),
  KEY `isys_vrrp_type__title` (`isys_vrrp_type__title`),
  KEY `isys_vrrp_type__const` (`isys_vrrp_type__const`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_vrrp_type` VALUES (1,'LC__VRRP__TYPE__VRRP',NULL,5,0,'C__VRRP__TYPE__VRRP',2);
INSERT INTO `isys_vrrp_type` VALUES (2,'LC__VRRP__TYPE__HSRP',NULL,5,0,'C__VRRP__TYPE__HSRP',2);
INSERT INTO `isys_vrrp_type` VALUES (3,'LC__VRRP__TYPE__GLBT',NULL,5,0,'C__VRRP__TYPE__GLBT',2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_wan_capacity_unit` (
  `isys_wan_capacity_unit__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_wan_capacity_unit__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wan_capacity_unit__description` text COLLATE utf8_unicode_ci,
  `isys_wan_capacity_unit__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wan_capacity_unit__factor` float unsigned DEFAULT '1',
  `isys_wan_capacity_unit__sort` int(10) unsigned DEFAULT '5',
  `isys_wan_capacity_unit__property` int(10) unsigned DEFAULT '0',
  `isys_wan_capacity_unit__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_wan_capacity_unit__id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_wan_capacity_unit` VALUES (1,'MBit','MegaBit','C__WAN_CAPACITY_UNIT__MBITS',1000000,5,0,2);
INSERT INTO `isys_wan_capacity_unit` VALUES (2,'KBit','KiloBit','C__WAN_CAPACITY_UNIT__KBITS',1000,5,0,2);
INSERT INTO `isys_wan_capacity_unit` VALUES (3,'GBit','GigaBit','C__WAN_CAPACITY_UNIT__GBITS',1000000000,5,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_wan_role` (
  `isys_wan_role__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_wan_role__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wan_role__description` text COLLATE utf8_unicode_ci,
  `isys_wan_role__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wan_role__sort` int(10) unsigned DEFAULT '5',
  `isys_wan_role__status` int(10) unsigned DEFAULT NULL,
  `isys_wan_role__property` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_wan_role__id`),
  KEY `isys_wan_role__title` (`isys_wan_role__title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_wan_role` VALUES (1,'LC__WAN_ROLE__PRIMARY','LC__WAN_ROLE__PRIMARY','C__WAN_ROLE__PRIMARY',5,2,0);
INSERT INTO `isys_wan_role` VALUES (2,'LC__WAN_ROLE__BACKUP','LC__WAN_ROLE__BACKUP\r\r\n(Backupleitung)','C__WAN_ROLE__BACKUP',5,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_wan_type` (
  `isys_wan_type__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_wan_type__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wan_type__description` text COLLATE utf8_unicode_ci,
  `isys_wan_type__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wan_type__sort` int(10) unsigned DEFAULT '5',
  `isys_wan_type__property` int(10) unsigned DEFAULT '0',
  `isys_wan_type__status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`isys_wan_type__id`),
  KEY `isys_wan_type__title` (`isys_wan_type__title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_wan_type` VALUES (1,'LC__UNIVERSAL__NOT_KNOWN','Unknown / Nicht Bekannt','C__WAN_TYPE__NOT_KNOWN',5,0,2);
INSERT INTO `isys_wan_type` VALUES (2,'FrameRelay',NULL,'C__WAN_TYPE__FRAME_RELAY',5,0,2);
INSERT INTO `isys_wan_type` VALUES (3,'ATM',NULL,'C__WAN_TYPE__ATM',5,0,2);
INSERT INTO `isys_wan_type` VALUES (4,'ISDN',NULL,'C__WAN_TYPE__ISDN',5,0,2);
INSERT INTO `isys_wan_type` VALUES (5,'xDSL',NULL,'C__WAN_TYPE__XDSL',5,0,2);
INSERT INTO `isys_wan_type` VALUES (6,'X21',NULL,'C__WAN_TYPE__X21',5,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_wato_folder` (
  `isys_wato_folder__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_wato_folder__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wato_folder__status` int(10) DEFAULT '2',
  `isys_wato_folder__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wato_folder__sort` int(10) DEFAULT NULL,
  `isys_wato_folder__description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`isys_wato_folder__id`),
  KEY `isys_wato_folder__title` (`isys_wato_folder__title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_weight_unit` (
  `isys_weight_unit__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_weight_unit__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_weight_unit__description` text COLLATE utf8_unicode_ci,
  `isys_weight_unit__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_weight_unit__factor` float unsigned DEFAULT '1',
  `isys_weight_unit__sort` int(10) unsigned DEFAULT NULL,
  `isys_weight_unit__property` int(10) unsigned DEFAULT NULL,
  `isys_weight_unit__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_weight_unit__id`),
  KEY `isys_weight_unit__title` (`isys_weight_unit__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_weight_unit` VALUES (1,'g',NULL,'C__WEIGHT_UNIT__G',1,2,NULL,2);
INSERT INTO `isys_weight_unit` VALUES (2,'kg',NULL,'C__WEIGHT_UNIT__KG',1000,3,NULL,2);
INSERT INTO `isys_weight_unit` VALUES (3,'t',NULL,'C__WEIGHT_UNIT__T',1000000,4,NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_weighting` (
  `isys_weighting__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_weighting__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_weighting__key` int(10) unsigned DEFAULT NULL,
  `isys_weighting__description` text COLLATE utf8_unicode_ci,
  `isys_weighting__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_weighting__sort` int(10) unsigned DEFAULT NULL,
  `isys_weighting__property` int(10) unsigned DEFAULT NULL,
  `isys_weighting__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_weighting__id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_weighting` VALUES (1,'LC__WEIGHTING__1',1,NULL,'C__WEIGHTING__1',1,NULL,2);
INSERT INTO `isys_weighting` VALUES (2,'LC__WEIGHTING__2',2,NULL,'C__WEIGHTING__2',2,NULL,2);
INSERT INTO `isys_weighting` VALUES (3,'LC__WEIGHTING__3',3,NULL,'C__WEIGHTING__3',3,NULL,2);
INSERT INTO `isys_weighting` VALUES (4,'LC__WEIGHTING__4',4,NULL,'C__WEIGHTING__4',4,NULL,2);
INSERT INTO `isys_weighting` VALUES (5,'LC__WEIGHTING__5',5,NULL,'C__WEIGHTING__5',5,NULL,2);
INSERT INTO `isys_weighting` VALUES (6,'LC__WEIGHTING__6',6,NULL,'C__WEIGHTING__6',6,NULL,2);
INSERT INTO `isys_weighting` VALUES (7,'LC__WEIGHTING__7',7,NULL,'C__WEIGHTING__7',7,NULL,2);
INSERT INTO `isys_weighting` VALUES (8,'LC__WEIGHTING__8',8,NULL,'C__WEIGHTING__8',8,NULL,2);
INSERT INTO `isys_weighting` VALUES (9,'LC__WEIGHTING__9',9,NULL,'C__WEIGHTING__9',9,NULL,2);
INSERT INTO `isys_weighting` VALUES (10,'LC__WEIGHTING__10',19,NULL,'C__WEIGHTING__10',10,NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_widgets` (
  `isys_widgets__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_widgets__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_widgets__description` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_widgets__identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_widgets__const` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isys_widgets__default_config` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_widgets__sorting` int(10) unsigned DEFAULT '99',
  `isys_widgets__default` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_widgets__id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_widgets` VALUES (1,'LC__WIDGET__TIPS','A small summary of helpful tips for beginners.','tips','C__WIDGET__TIPS','',6,1);
INSERT INTO `isys_widgets` VALUES (2,'LC__WIDGET__QUICKLAUNCH','A small list of links which may come in handy.','quicklaunch','C__WIDGET__QUICKLAUNCH','',4,1);
INSERT INTO `isys_widgets` VALUES (3,'LC__WIDGET__MYOBJECTS','A list of objects the current user has frequently changed.','myobjects','C__WIDGET__MYOBJECTS','{\"objects\":25}',5,1);
INSERT INTO `isys_widgets` VALUES (4,'LC__WIDGET__STATS','Displays a small pie chart with some statistics','stats','C__WIDGET__STATS','{\"title\":\"LC__CMDB__CATG__OBJECT\",\"chart_type\":\"Pie\",\"legend\":\"on\",\"obj_types\":[\"C__OBJTYPE__SERVER\",\"C__OBJTYPE__CLIENT\",\"C__OBJTYPE__SWITCH\",\"C__OBJTYPE__BUILDING\",\"C__OBJTYPE__ENCLOSURE\",\"C__OBJTYPE__ROOM\",\"C__OBJTYPE__PHONE\",\"C__OBJTYPE__PERSON\",\"C__OBJTYPE__PERSON_GROUP\"]}',3,1);
INSERT INTO `isys_widgets` VALUES (5,'LC__WIDGET__STATSTABLE','A formal table of various statistics.','statstable','C__WIDGET__STATSTABLE','',99,0);
INSERT INTO `isys_widgets` VALUES (6,'LC__WIDGET__WELCOME','This is a \"welcome\" widget with a small introduction to the new dashboard.','welcome','C__WIDGET__WELCOME','{\"animate\":false,\"salutation\":\"a\"}',1,1);
INSERT INTO `isys_widgets` VALUES (7,'LC__WIDGET__REPORTS','This is a \"report\" for displaying any of your reports on the dashboard.','reports','C__WIDGET__REPORTS','{\"report_id\":0,\"count\":\"25\"}',99,0);
INSERT INTO `isys_widgets` VALUES (8,'LC__WIDGET__RSS','This is a generic RSS feed reader','rss','C__WIDGET__RSS','{\"url\":\"https://www.i-doit.com/feed/\",\"count\":\"5\"}',99,0);
INSERT INTO `isys_widgets` VALUES (9,'LC__WIDGET__IFRAME','This is a generic iframe widget to display various external content','iframe','C__WIDGET__IFRAME','{\"title\":\"Web-Browser\",\"url\":\"https://www.i-doit.com/\",\"height\":\"400\"}',99,0);
INSERT INTO `isys_widgets` VALUES (10,'LC__WIDGET__NOTES','With this widget you can save notes on colored background','notes','C__WIDGET__NOTES','{\"fontcolor\":\"#000\",\"color\":\"#f3e890\",\"title\":\"Note\",\"note\":\"\"}',99,0);
INSERT INTO `isys_widgets` VALUES (11,'LC__WIDGET__BOOKMARKS','This is a \"report\" for displaying any of your reports on the dashboard.','bookmarks','C__WIDGET__BOOKMARKS','',99,0);
INSERT INTO `isys_widgets` VALUES (12,'LC__WIDGET__OBJINFO','Shows vital information about an object','objinfo','C__WIDGET__OBJINFO','null',99,0);
INSERT INTO `isys_widgets` VALUES (13,'LC__WIDGET__CALCULATOR','Calculator','calculator','C__WIDGET__CALCULATOR','null',99,0);
INSERT INTO `isys_widgets` VALUES (14,'CMDB-Explorer','CMDB-Explorer object view','cmdbexplorer','C__WIDGET__CMDB_EXPLORER','null',99,0);
INSERT INTO `isys_widgets` VALUES (15,'LC__WIDGET__CALENDAR','A calendar widget with options to display misc information.','calendar','C__WIDGET__CALENDAR','null',99,0);
INSERT INTO `isys_widgets` VALUES (16,'LC__WIDGET__OBJECT_INFORMATION_LIST','Properties','properties','C__WIDGET__OBJECT_INFORMATION_LIST','null',99,0);
INSERT INTO `isys_widgets` VALUES (17,'LC__WIDGET__IT_SERVICE_CONSISTENCY','This widget is similar like the report view','itserviceconsistency','C__WIDGET__IT_SERVICE_CONSISTENCY','{\"show_all\":\"0\"}',99,0);
INSERT INTO `isys_widgets` VALUES (18,'LC__WIDGET__EVAL_OVERVIEW','This widget displays information about your eval/subscription','eval','C__WIDGET__EVAL_OVERVIEW','{\"layout\":\"vertical\",\"short_form\":\"0\"}',2,1);
INSERT INTO `isys_widgets` VALUES (19,'LC__MONITORING__WIDGET__NOT_OK_HOSTS','This widget will load and display \"not ok\" hosts.','not_ok_hosts','C__WIDGET__MONITORING__NOT_OK_HOSTS','',99,0);
INSERT INTO `isys_widgets` VALUES (20,'LC__WIDGET__LIVECYCLE_CMDBSTATUS','This widget will display a CMDB-Status livecycle of selected objects.','cmdb_statuslivecycle','C__WIDGET__LIVECYCLE_CMDBSTATUS','',99,0);
INSERT INTO `isys_widgets` VALUES (21,'LC__WIDGET__LOGGED_IN_USERS','This widget shows all the logged in user.','loggedinusers','C__WIDGET__LOGGED_IN_USERS','',99,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_widgets_config` (
  `isys_widgets_config__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_widgets_config__isys_widgets__id` int(10) unsigned NOT NULL,
  `isys_widgets_config__isys_obj__id` int(10) unsigned NOT NULL,
  `isys_widgets_config__configuration` text COLLATE utf8_unicode_ci NOT NULL,
  `isys_widgets_config__sorting` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isys_widgets_config__id`),
  KEY `isys_widgets_config__isys_widgets__id` (`isys_widgets_config__isys_widgets__id`,`isys_widgets_config__isys_obj__id`),
  KEY `isys_widgets_config__isys_obj__id` (`isys_widgets_config__isys_obj__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_wlan_auth` (
  `isys_wlan_auth__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_wlan_auth__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wlan_auth__description` text COLLATE utf8_unicode_ci,
  `isys_wlan_auth__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wlan_auth__sort` int(10) unsigned DEFAULT NULL,
  `isys_wlan_auth__property` int(10) unsigned DEFAULT NULL,
  `isys_wlan_auth__status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`isys_wlan_auth__id`),
  KEY `isys_wlan_auth__status` (`isys_wlan_auth__status`),
  KEY `isys_wlan_auth__title` (`isys_wlan_auth__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Authentification rank';
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_wlan_auth` VALUES (1,'LC__WLAN_AUTH__FREE','without authentification',NULL,10,NULL,2);
INSERT INTO `isys_wlan_auth` VALUES (2,'WPA','WPA',NULL,20,NULL,2);
INSERT INTO `isys_wlan_auth` VALUES (3,'WPA2','WPA2',NULL,30,NULL,2);
INSERT INTO `isys_wlan_auth` VALUES (4,'WEP','WEP',NULL,40,NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_wlan_channel` (
  `isys_wlan_channel__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_wlan_channel__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wlan_channel__description` text COLLATE utf8_unicode_ci,
  `isys_wlan_channel__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wlan_channel__sort` int(10) unsigned DEFAULT '5',
  `isys_wlan_channel__status` int(1) DEFAULT NULL,
  `isys_wlan_channel__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_wlan_channel__id`),
  KEY `isys_wlan_channel__status` (`isys_wlan_channel__status`),
  KEY `isys_wlan_channel__title` (`isys_wlan_channel__title`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_wlan_channel` VALUES (1,'LC__UNIVERSAL__AUTOMATIC','','C__WLAN_CHANNEL__AUTO',5,2,0);
INSERT INTO `isys_wlan_channel` VALUES (2,'1',NULL,NULL,5,2,0);
INSERT INTO `isys_wlan_channel` VALUES (3,'2',NULL,NULL,5,2,0);
INSERT INTO `isys_wlan_channel` VALUES (4,'3',NULL,NULL,5,2,0);
INSERT INTO `isys_wlan_channel` VALUES (5,'4',NULL,NULL,5,2,0);
INSERT INTO `isys_wlan_channel` VALUES (6,'5',NULL,NULL,5,2,0);
INSERT INTO `isys_wlan_channel` VALUES (7,'6',NULL,NULL,5,2,0);
INSERT INTO `isys_wlan_channel` VALUES (8,'7',NULL,NULL,5,2,0);
INSERT INTO `isys_wlan_channel` VALUES (9,'8',NULL,NULL,5,2,0);
INSERT INTO `isys_wlan_channel` VALUES (10,'9',NULL,NULL,5,2,0);
INSERT INTO `isys_wlan_channel` VALUES (11,'10',NULL,NULL,5,2,0);
INSERT INTO `isys_wlan_channel` VALUES (12,'11',NULL,NULL,5,2,0);
INSERT INTO `isys_wlan_channel` VALUES (13,'12',NULL,NULL,5,2,0);
INSERT INTO `isys_wlan_channel` VALUES (14,'13',NULL,NULL,5,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_wlan_encryption` (
  `isys_wlan_encryption__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_wlan_encryption__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wlan_encryption__description` text COLLATE utf8_unicode_ci,
  `isys_wlan_encryption__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wlan_encryption__sort` int(10) unsigned DEFAULT NULL,
  `isys_wlan_encryption__property` int(10) unsigned DEFAULT NULL,
  `isys_wlan_encryption__status` int(1) DEFAULT NULL,
  PRIMARY KEY (`isys_wlan_encryption__id`),
  KEY `isys_wlan_encryption__status` (`isys_wlan_encryption__status`),
  KEY `isys_wlan_encryption__title` (`isys_wlan_encryption__title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_wlan_encryption` VALUES (1,'RC4',NULL,NULL,1,NULL,2);
INSERT INTO `isys_wlan_encryption` VALUES (2,'TKIP',NULL,NULL,2,NULL,2);
INSERT INTO `isys_wlan_encryption` VALUES (3,'AES',NULL,NULL,3,NULL,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_wlan_function` (
  `isys_wlan_function__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_wlan_function__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wlan_function__description` text COLLATE utf8_unicode_ci,
  `isys_wlan_function__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wlan_function__sort` int(10) unsigned DEFAULT '5',
  `isys_wlan_function__status` int(1) DEFAULT NULL,
  `isys_wlan_function__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_wlan_function__id`),
  KEY `isys_wlan_function__status` (`isys_wlan_function__status`),
  KEY `isys_wlan_function__title` (`isys_wlan_function__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_wlan_function` VALUES (1,'LC__WLAN_FUNCTION__ACCESSPOINT',NULL,'C__WLAN_FUNCTION__ACCESSPOINT',5,2,1);
INSERT INTO `isys_wlan_function` VALUES (2,'LC__WLAN_FUNCTION__BRIDGE',NULL,'C__WLAN_FUNCTION__BRIDGE',5,2,1);
INSERT INTO `isys_wlan_function` VALUES (3,'LC__WLAN_FUNCTION__REPEATER',NULL,'C__WLAN_FUNCTION__REPEATER',5,2,1);
INSERT INTO `isys_wlan_function` VALUES (4,'LC__UNIVERSAL__OTHER',NULL,'C__WLAN_FUNCTION__OTHER',5,2,1);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isys_wlan_standard` (
  `isys_wlan_standard__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isys_wlan_standard__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wlan_standard__description` text COLLATE utf8_unicode_ci,
  `isys_wlan_standard__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isys_wlan_standard__sort` int(10) unsigned DEFAULT '5',
  `isys_wlan_standard__status` int(1) DEFAULT NULL,
  `isys_wlan_standard__property` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`isys_wlan_standard__id`),
  KEY `isys_wlan_standard__status` (`isys_wlan_standard__status`),
  KEY `isys_wlan_standard__title` (`isys_wlan_standard__title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isys_wlan_standard` VALUES (1,'802.11a','802.11a',NULL,5,2,0);
INSERT INTO `isys_wlan_standard` VALUES (2,'802.11b','802.11b',NULL,5,2,0);
INSERT INTO `isys_wlan_standard` VALUES (3,'802.11g','802.11g',NULL,5,2,0);
INSERT INTO `isys_wlan_standard` VALUES (4,'LC__UNIVERSAL__OTHER','Andere','C__WLAN_STANDARD_OTHER',5,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isysgui_catg` (
  `isysgui_catg__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isysgui_catg__isys_tree_group__id` int(10) unsigned DEFAULT NULL,
  `isysgui_catg__type` int(10) unsigned DEFAULT '0' COMMENT 'Bitwise type categorization of this category',
  `isysgui_catg__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isysgui_catg__description` text COLLATE utf8_unicode_ci,
  `isysgui_catg__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isysgui_catg__source_table` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isysgui_catg__class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isysgui_catg__sort` int(10) unsigned DEFAULT '5',
  `isysgui_catg__parent` int(10) unsigned DEFAULT NULL,
  `isysgui_catg__list_multi_value` int(10) unsigned DEFAULT '0',
  `isysgui_catg__property` int(10) unsigned DEFAULT '0',
  `isysgui_catg__search` int(10) unsigned DEFAULT '1',
  `isysgui_catg__status` int(1) DEFAULT NULL,
  `isysgui_catg__standard` int(10) unsigned DEFAULT '0',
  `isysgui_catg__overview` int(10) unsigned DEFAULT '0' COMMENT 'Is this category allowed in the overview view?',
  PRIMARY KEY (`isysgui_catg__id`),
  KEY `isysgui_catg_FKIndex1` (`isysgui_catg__isys_tree_group__id`),
  KEY `isysgui_catg__parent` (`isysgui_catg__parent`),
  KEY `isysgui_catg__type` (`isysgui_catg__type`),
  KEY `isysgui_catg__const` (`isysgui_catg__const`),
  KEY `isysgui_catg__status` (`isysgui_catg__status`),
  CONSTRAINT `isysgui_catg__parent` FOREIGN KEY (`isysgui_catg__parent`) REFERENCES `isysgui_catg` (`isysgui_catg__id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `isysgui_catg_ibfk_1` FOREIGN KEY (`isysgui_catg__isys_tree_group__id`) REFERENCES `isys_tree_group` (`isys_tree_group__id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isysgui_catg` VALUES (1,2,2,'LC__CMDB__CATG__GLOBAL',NULL,'C__CATG__GLOBAL','isys_catg_global','isys_cmdb_dao_category_g_global',10,NULL,0,0,1,2,1,1);
INSERT INTO `isysgui_catg` VALUES (2,2,2,'LC__CMDB__CATG__MODEL',NULL,'C__CATG__MODEL','isys_catg_model','isys_cmdb_dao_category_g_model',40,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (3,2,2,'LC__CMDB__CATG__FORMFACTOR',NULL,'C__CATG__FORMFACTOR','isys_catg_formfactor','isys_cmdb_dao_category_g_formfactor',50,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (4,3,2,'LC__CMDB__CATG__CPU',NULL,'C__CATG__CPU','isys_catg_cpu','isys_cmdb_dao_category_g_cpu',60,NULL,1,0,0,2,0,1);
INSERT INTO `isysgui_catg` VALUES (5,3,2,'LC__CMDB__CATG__MEMORY','Memory / Hauptspeicher','C__CATG__MEMORY','isys_catg_memory','isys_cmdb_dao_category_g_memory',80,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (7,4,10,'LC__CMDB__CATG__NETWORK','Network','C__CATG__NETWORK','isys_catg_netp','isys_cmdb_dao_category_g_network_interface',110,NULL,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (8,5,10,'LC__CMDB__CATG__DAS','Lokaler Massenspeicher','C__CATG__STORAGE','isys_catg_stor','isys_cmdb_dao_category_g_stor_view',120,NULL,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (9,3,2,'LC__CMDB__CATG__POWER_CONSUMER','Stromverbraucher','C__CATG__POWER_CONSUMER','isys_catg_pc','isys_cmdb_dao_category_g_power_consumer',90,NULL,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (10,3,2,'LC__CMDB__CATG__UNIVERSAL_INTERFACE',NULL,'C__CATG__UNIVERSAL_INTERFACE','isys_catg_ui','isys_cmdb_dao_category_g_ui',2,49,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (12,7,2,'LC__CMDB__CATG__APPLICATION',NULL,'C__CATG__APPLICATION','isys_catg_application','isys_cmdb_dao_category_g_application',180,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (14,8,2,'LC__CMDB__CATG__ACCESS',NULL,'C__CATG__ACCESS','isys_catg_access','isys_cmdb_dao_category_g_access',220,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (15,8,2,'LC__CMDB__CATG__BACKUP','BACKUP','C__CATG__BACKUP','isys_catg_backup','isys_cmdb_dao_category_g_backup',230,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (18,6,2,'LC__CATG_EMERGENCY_PLAN',NULL,'C__CATG__EMERGENCY_PLAN','isys_catg_emergency_plan','isys_cmdb_dao_category_g_emergency_plan',150,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (20,6,2,'LC__CMDB__CATG__FILE',NULL,'C__CATG__FILE','isys_catg_file','isys_cmdb_dao_category_g_file',170,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (21,2,4,'LC__CMDB__CATG__CONTACT',NULL,'C__CATG__CONTACT','isys_catg_contact','isys_cmdb_dao_category_g_contact',20,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (22,8,2,'LC__CMDB__CATG__LOGBOOK',NULL,'C__CATG__LOGBOOK','isys_catg_logb','isys_cmdb_dao_category_g_logb',210,NULL,1,0,1,2,1,1);
INSERT INTO `isysgui_catg` VALUES (25,3,2,'LC__CMDB__CATG__CONTROLLER','CONTROLLER','C__CATG__CONTROLLER','isys_catg_controller','isys_cmdb_dao_category_g_controller',70,8,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (26,2,2,'LC__CMDB__CATG__LOCATION','Location','C__CATG__LOCATION','isys_catg_location','isys_cmdb_dao_category_g_location',30,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (27,8,2,'LC__CMDB__CATG__IMAGE','Image','C__CATG__IMAGE','isys_catg_image','isys_cmdb_dao_category_g_image',240,NULL,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (28,6,2,'LC__CMDB__CATG__MANUAL',NULL,'C__CATG__MANUAL','isys_catg_manual','isys_cmdb_dao_category_g_manual',140,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (31,NULL,1,'LC__CMDB__CATG__OVERVIEW',NULL,'C__CATG__OVERVIEW','isys_catg_overview','isys_cmdb_dao_category_g_overview',0,NULL,0,16,1,2,1,0);
INSERT INTO `isysgui_catg` VALUES (33,2,2,'LC__CMDB__CATG__SOUND','sound','C__CATG__SOUND','isys_catg_sound','isys_cmdb_dao_category_g_sound',50,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (34,2,3,'LC__CMDB__CATG__SPATIALLY_CONNECTED_OBJECTS','Object 2 Location','C__CATG__OBJECT','isys_catg_virtual','isys_cmdb_dao_category_g_virtual_object',30,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (35,2,2,'LC__CMDB__CATG__GRAPHIC','Graphic adapter','C__CATG__GRAPHIC','isys_catg_graphic','isys_cmdb_dao_category_g_graphic',30,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (36,2,2,'LC__CMDB__CATG__VIRTUAL_MACHINE','virtual_machine','C__CATG__VIRTUAL_MACHINE','isys_catg_virtual_machine','isys_cmdb_dao_category_g_virtual_machine',10,72,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (38,2,2,'LC__CMDB__CATG__ACCOUNTING',NULL,'C__CATG__ACCOUNTING','isys_catg_accounting','isys_cmdb_dao_category_g_accounting',5,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (39,4,2,'LC__CMDB__CATG__NETWORK_TREE_CONFIG_PORT','Network','C__CATG__NETWORK_PORT','isys_catg_port','isys_cmdb_dao_category_g_network_port',110,7,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (40,4,2,'LC__CMDB__CATG__NETWORK_TREE_CONFIG_INTERFACE_P','Network','C__CATG__NETWORK_INTERFACE','isys_catg_netp','isys_cmdb_dao_category_g_network_interface',100,7,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (41,4,2,'LC__CMDB__CATG__NETWORK_TREE_CONFIG_PORT_L','Network','C__CATG__NETWORK_LOG_PORT','isys_catg_log_port','isys_cmdb_dao_category_g_network_ifacel',120,7,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (42,5,2,'LC__STORAGE_DRIVE','','C__CATG__DRIVE','isys_catg_drive','isys_cmdb_dao_category_g_drive',1,NULL,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (43,4,2,'LC__STORAGE_DEVICE','','C__CATG__STORAGE_DEVICE','isys_catg_stor','isys_cmdb_dao_category_g_stor',2,8,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (45,4,2,'LC__STORAGE_FCPORT','','C__CATG__CONTROLLER_FC_PORT','isys_catg_fc_port','isys_cmdb_dao_category_g_controller_fcport',4,46,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (46,5,10,'LC__CMDB__CATG__SAN','','C__CATG__SANPOOL','isys_catg_virtual','isys_cmdb_dao_category_g_sanpool_view',5,NULL,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (47,4,2,'LC__CATG__IP_ADDRESS','','C__CATG__IP','isys_catg_ip','isys_cmdb_dao_category_g_ip',150,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (48,2,2,'LC__CATG__VERSION','Version','C__CATG__VERSION','isys_catg_version','isys_cmdb_dao_category_g_version',5,NULL,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (49,3,10,'LC__CMDB__CATG__CABLING',NULL,'C__CATG__CABLING','isys_catg_virtual','isys_cmdb_dao_category_g_virtual_cabling',3001,NULL,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (50,3,2,'LC__CMDB__CATG__CONNECTORS',NULL,'C__CATG__CONNECTOR','isys_catg_connector','isys_cmdb_dao_category_g_connector',1,49,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (51,3,2,'LC__CMDB__CATG__INVOICE',NULL,'C__CATG__INVOICE','isys_catg_invoice','isys_cmdb_dao_category_g_invoice',500,NULL,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (53,3,1,'LC__CMDB__CATG__CUSTOM_FIELDS',NULL,'C__CATG__CUSTOM_FIELDS','isys_catg_custom_fields','isys_cmdb_dao_category_g_custom_fields',3001,NULL,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (54,2,2,'LC__CMDB__CATG__POWER_SUPPLIER',NULL,'C__CATG__POWER_SUPPLIER','isys_catg_power_supplier','isys_cmdb_dao_category_g_power_supplier',40,NULL,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (55,4,2,'LC__CMDB__CATG__RAID','Raid-Verbunde','C__CATG__RAID','isys_catg_raid','isys_cmdb_dao_category_g_raid',6,8,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (56,4,2,'LC__CMDB__CATG__LDEV_SERVER','Logical devices (LDEV Server)','C__CATG__LDEV_SERVER','isys_catg_sanpool','isys_cmdb_dao_category_g_sanpool',2,46,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (57,4,2,'LC__CMDB__CATG__LDEV_CLIENT','Logical devices (Client)','C__CATG__LDEV_CLIENT','isys_catg_ldevclient','isys_cmdb_dao_category_g_ldevclient',3,46,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (58,4,2,'LC__CMDB__CATG__HBA','Hostadapter','C__CATG__HBA','isys_catg_hba','isys_cmdb_dao_category_g_hba',4,46,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (59,7,10,'LC__CMDB__CATG__CLUSTER',NULL,'C__CATG__CLUSTER_ROOT','isys_catg_cluster','isys_cmdb_dao_category_g_cluster',5,NULL,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (60,7,2,'LC__CMDB__CATG__CLUSTER',NULL,'C__CATG__CLUSTER','isys_catg_cluster','isys_cmdb_dao_category_g_cluster',5,59,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (61,5,2,'LC__CMDB__CATG__SHARES',NULL,'C__CATG__SHARES','isys_catg_shares','isys_cmdb_dao_category_g_shares',40,NULL,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (62,7,2,'LC__CMDB__CATG__CLUSTER_SERVICES',NULL,'C__CATG__CLUSTER_SERVICE','isys_catg_cluster_service','isys_cmdb_dao_category_g_cluster_service',5,59,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (63,7,3,'LC__CMDB__CATG__CLUSTER_MEMBERS',NULL,'C__CATG__CLUSTER_MEMBERS','isys_catg_cluster_members','isys_cmdb_dao_category_g_cluster_members',5,59,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (64,7,1,'LC__CMDB__CATG__CLUSTER_SHARED_STORAGE',NULL,'C__CATG__CLUSTER_SHARED_STORAGE','isys_catg_virtual','isys_cmdb_dao_category_g_cluster_shared_storage',5,59,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (65,7,3,'LC__CMDB__CATG__CLUSTER_MEMBERSHIPS',NULL,'C__CATG__CLUSTER_MEMBERSHIPS','isys_catg_cluster_members','isys_cmdb_dao_category_g_cluster_memberships',5,NULL,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (66,5,2,'LC__CMDB__CATG__COMPUTING_RESOURCES',NULL,'C__CATG__COMPUTING_RESOURCES','isys_catg_computing_resources','isys_cmdb_dao_category_g_computing_resources',6,NULL,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (67,7,1,'LC__CMDB__CATG__CLUSTER_VITALITY',NULL,'C__CATG__CLUSTER_VITALITY','isys_catg_virtual','isys_cmdb_dao_category_g_cluster_vitality',6,59,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (68,7,1,'SNMP',NULL,'C__CATG__SNMP','isys_catg_snmp','isys_cmdb_dao_category_g_snmp',5,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (69,7,10,'LC__CMDB__CATG__VIRTUAL_HOST',NULL,'C__CATG__VIRTUAL_HOST_ROOT','isys_catg_virtual_host','isys_cmdb_dao_category_g_virtual_host',5,NULL,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (70,7,2,'LC__CMDB__CATG__VIRTUAL_HOST',NULL,'C__CATG__VIRTUAL_HOST','isys_catg_virtual_host','isys_cmdb_dao_category_g_virtual_host',5,69,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (71,7,3,'LC__CMDB__CATG__GUEST_SYSTEMS',NULL,'C__CATG__GUEST_SYSTEMS','isys_catg_virtual_machine','isys_cmdb_dao_category_g_guest_systems',5,69,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (72,2,10,'LC__CMDB__CATG__VIRTUAL_MACHINE',NULL,'C__CATG__VIRTUAL_MACHINE__ROOT','isys_catg_virtual_machine','isys_cmdb_dao_category_g_virtual_machine',9,NULL,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (73,2,2,'LC__CMDB__CATG__VIRTUAL_SWITCHES',NULL,'C__CATG__VIRTUAL_SWITCH','isys_catg_virtual_switch','isys_cmdb_dao_category_g_virtual_switch',5,69,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (74,7,2,'LC__CMDB__CATG__VIRTUAL_DEVICES',NULL,'C__CATG__VIRTUAL_DEVICE','isys_catg_virtual_device','isys_cmdb_dao_category_g_virtual_devices',5,72,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (75,7,1,'LC__CMDB__CATG__CLUSTER_SHARED_VIRTUAL_SWITCH',NULL,'C__CATG__CLUSTER_SHARED_VIRTUAL_SWITCH','isys_catg_virtual','isys_cmdb_dao_category_g_cluster_shared_virtual_switch',5,59,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (76,8,3,'LC__CMDB__CATG__BACKUP__ASSIGNED_OBJECTS',NULL,'C__CATG__BACKUP__ASSIGNED_OBJECTS','isys_catg_backup','isys_cmdb_dao_category_g_backup_assigned_objects',5,NULL,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (77,8,3,'LC__CMDB__CATG__GROUP_MEMBERSHIPS',NULL,'C__CATG__GROUP_MEMBERSHIPS','isys_cats_group','isys_cmdb_dao_category_g_group_memberships',5,NULL,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (78,1,3,'LC__CMDB__TREE__IT_SERVICE_COMPONENTS',NULL,'C__CATG__IT_SERVICE_COMPONENTS','isys_catg_its_components','isys_cmdb_dao_category_g_it_service_components',5,153,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (79,6,1,'LC__CMDB__CATG__ITS_LOGBOOK',NULL,'C__CATG__ITS_LOGBOOK','isys_catg_logb','isys_cmdb_dao_category_g_its_logb',5,153,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (80,1,3,'LC__CMDB__CATG__IT_SERVICE_ASSIGNMENT',NULL,'C__CATG__IT_SERVICE','isys_catg_its_components','isys_cmdb_dao_category_g_itservice',1,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (81,2,1,'LC__CMDB__CATG__OBJECT_VITALITY',NULL,'C__CATG__OBJECT_VITALITY','isys_catg_virtual','isys_cmdb_dao_category_g_object_vitality',6,NULL,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (82,6,2,'LC__CMDB__CATG__RELATION',NULL,'C__CATG__RELATION','isys_catg_relation','isys_cmdb_dao_category_g_relation',1,NULL,1,0,1,2,1,0);
INSERT INTO `isysgui_catg` VALUES (83,1,2,'LC__CMDB__CATG__IT_SERVICE_RELATION',NULL,'C__CATG__IT_SERVICE_RELATIONS','isys_catg_relation','isys_cmdb_dao_category_g_relation',5,153,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (84,NULL,2,'LC__CMDB__TREE__DATABASE_ASSIGNMENT',NULL,'C__CATG__DATABASE_ASSIGNMENT','isys_cats_database_access','isys_cmdb_dao_category_g_database_assignment',1,NULL,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (85,1,2,'LC__CMDB__CATG__ITS_TYPE',NULL,'C__CATG__ITS_TYPE','isys_catg_its_type','isys_cmdb_dao_category_g_its_type',5,153,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (86,1,2,'LC__CMDB__CATG__PASSWORD',NULL,'C__CATG__PASSWD','isys_catg_password','isys_cmdb_dao_category_g_password',10,NULL,1,0,0,2,0,0);
INSERT INTO `isysgui_catg` VALUES (88,2,2,'LC__CMDB__CATG__SOA_STACKS',NULL,'C__CATG__SOA_STACKS','isys_catg_soa_stacks','isys_cmdb_dao_category_g_soa_stacks',5,NULL,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (89,6,2,'LC__CMDB__CATG__PLANNING',NULL,'C__CATG__PLANNING','isys_catg_planning','isys_cmdb_dao_category_g_planning',1,NULL,1,0,1,2,1,1);
INSERT INTO `isysgui_catg` VALUES (90,7,3,'LC__CMDB__CATG__ASSIGNED_CARDS',NULL,'C__CATG__ASSIGNED_CARDS','isys_catg_assigned_cards','isys_cmdb_dao_category_g_assigned_cards',5,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (91,1,2,'LC__CMDB__CATS__SIM_CARD',NULL,'C__CATG__SIM_CARD','isys_catg_sim_card','isys_cmdb_dao_category_g_sim_card',5,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (92,7,2,'LC__CMDB__CATG__TSI_SERVICE',NULL,'C__CATG__TSI_SERVICE','isys_catg_tsi_service','isys_cmdb_dao_category_g_tsi_service',5,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (93,7,2,'LC__CMDB__CATG__AUDIT',NULL,'C__CATG__AUDIT','isys_catg_audit','isys_cmdb_dao_category_g_audit',5,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (94,4,1,'LC__CMDB__CATG__NETWORK_PORT_OVERVIEW','Network port overview','C__CATG__NETWORK_PORT_OVERVIEW','isys_catg_port','isys_cmdb_dao_category_g_network_port_overview',110,7,0,0,0,2,0,0);
INSERT INTO `isysgui_catg` VALUES (95,NULL,2,'LC__CMDB__CATG__LOGICAL_UNIT','','C__CATG__LOGICAL_UNIT','isys_catg_logical_unit','isys_cmdb_dao_category_g_logical_unit',5,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (96,NULL,3,'LC__CMDB__CATG__ASSIGNED_LOGICAL_UNITS','','C__CATG__ASSIGNED_LOGICAL_UNIT','isys_catg_virtual','isys_cmdb_dao_category_g_assigned_logical_unit',5,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (97,NULL,3,'LC__CMDB__CATG__ASSIGNED_WORKSTATION','','C__CATG__ASSIGNED_WORKSTATION','isys_catg_logical_unit','isys_cmdb_dao_category_g_assigned_workstation',5,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (98,NULL,1,'LC__CMDB__CATG__VIRTUAL_TICKETS',NULL,'C__CATG__VIRTUAL_TICKETS','isys_catg_virtual','isys_cmdb_dao_category_g_virtual_tickets',10,NULL,0,0,1,2,1,1);
INSERT INTO `isysgui_catg` VALUES (99,NULL,3,'LC__CMDB__CATG__PERSON_ASSIGNED_WORKSTATION','','C__CATG__PERSON_ASSIGNED_WORKSTATION','isys_catg_logical_unit','isys_cmdb_dao_category_g_person_assigned_workstation',5,NULL,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (100,NULL,3,'LC__CMDB__CATG__CONTRACT_ASSIGNMENT',NULL,'C__CATG__CONTRACT_ASSIGNMENT','isys_catg_contract_assignment','isys_cmdb_dao_category_g_contract_assignment',5,NULL,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (103,NULL,1,'LC__CMDB__CATG__RACK_VIEW',NULL,'C__CATG__RACK_VIEW','isys_catg_virtual','isys_cmdb_dao_category_g_rack_view',5,NULL,0,NULL,0,2,0,0);
INSERT INTO `isysgui_catg` VALUES (104,NULL,2,'LC__CMDB__CATG__MAIL_ADDRESSES__EMAIL_ADDRESSES',NULL,'C__CATG__MAIL_ADDRESSES','isys_catg_mail_addresses','isys_cmdb_dao_category_g_mail_addresses',5,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (105,NULL,2,'LC__CMDB__CATG__VOIP_PHONE',NULL,'C__CATG__VOIP_PHONE','isys_catg_voip_phone','isys_cmdb_dao_category_g_voip_phone',5,NULL,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (106,NULL,2,'LC__CMDB__CATG__VOIP_PHONE_LINE',NULL,'C__CATG__VOIP_PHONE_LINE','isys_catg_voip_phone_line','isys_cmdb_dao_category_g_voip_phone_line',5,NULL,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (107,NULL,2,'LC__CMDB__CATG__TELEPHONE_FAX',NULL,'C__CATG__TELEPHONE_FAX','isys_catg_telephone_fax','isys_cmdb_dao_category_g_telephone_fax',5,NULL,0,NULL,0,2,0,0);
INSERT INTO `isysgui_catg` VALUES (108,NULL,2,'LC__CMDB__CATG__SMARTCARD_CERTIFICATE',NULL,'C__CATG__SMARTCARD_CERTIFICATE','isys_catg_smartcard_certificate','isys_cmdb_dao_category_g_smartcard_certificate',5,NULL,0,NULL,0,2,0,0);
INSERT INTO `isysgui_catg` VALUES (109,NULL,2,'LC__CMDB__CATG__SHARE_ACCESS',NULL,'C__CATG__SHARE_ACCESS','isys_catg_share_access','isys_cmdb_dao_category_g_share_access',5,NULL,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (110,NULL,1,'LC__CMDB__CATG__SUPERNET',NULL,'C__CATG__VIRTUAL_SUPERNET','isys_catg_virtual','isys_cmdb_dao_category_g_virtual_supernet',0,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (111,3,2,'LC__CMDB__CATG__CERTIFICATE',NULL,'C__CATG__CERTIFICATE','isys_catg_certificate','isys_cmdb_dao_category_g_certificate',60,NULL,1,0,0,2,0,1);
INSERT INTO `isysgui_catg` VALUES (112,NULL,2,'LC__CMDB__CATG__SLA','SLA Configuration','C__CATG__SLA','isys_catg_sla','isys_cmdb_dao_category_g_sla',0,NULL,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (113,NULL,1,'LC__CMDB__CATG__LDAP_DN',NULL,'C__CATG__LDAP_DN','isys_catg_ldap_dn','isys_cmdb_dao_category_g_ldap_dn',5,NULL,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (114,NULL,1,'LC__CMDB__CATG__AUTH',NULL,'C__CATG__VIRTUAL_AUTH','isys_catg_virtual','isys_cmdb_dao_category_g_virtual_auth',5,NULL,0,0,1,2,1,0);
INSERT INTO `isysgui_catg` VALUES (134,NULL,2,'LC__CATG__ADDRESS','Category address for object type building','C__CATG__ADDRESS','isys_catg_address','isys_cmdb_dao_category_g_address',5,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (135,NULL,2,'LC__CATG__MONITORING','Monitoring folder category','C__CATG__MONITORING','isys_catg_monitoring','isys_cmdb_dao_category_g_monitoring',NULL,NULL,0,NULL,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (136,NULL,1,'LC__CATG__LIVESTATUS','Livestatus category','C__CATG__LIVESTATUS','isys_catg_virtual','isys_cmdb_dao_category_g_livestatus',NULL,135,0,NULL,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (137,NULL,2,'LC__CATG__VEHICLE','Vehicle category','C__CATG__VEHICLE','isys_catg_vehicle','isys_cmdb_dao_category_g_vehicle',5,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (138,NULL,2,'LC__CATG__AIRCRAFT','Aircraft category','C__CATG__AIRCRAFT','isys_catg_aircraft','isys_cmdb_dao_category_g_aircraft',5,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (139,NULL,10,'LC__CATG__NET_CONNECTIONS','Network connection category','C__CATG__NET_CONNECTIONS_FOLDER','isys_catg_net_listener','isys_cmdb_dao_category_g_net_listener',5,NULL,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (140,NULL,2,'LC__CATG__NET_LISTENER','Network listener category','C__CATG__NET_LISTENER','isys_catg_net_listener','isys_cmdb_dao_category_g_net_listener',5,139,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (141,NULL,2,'LC__CATG__NET_CONNECTOR','Network connector category','C__CATG__NET_CONNECTOR','isys_catg_net_connector','isys_cmdb_dao_category_g_net_connector',5,139,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (142,7,2,'LC__CMDB__CATG__CLUSTER_ADM_SERVICE','Subcategory administration service for global category cluster','C__CATG__CLUSTER_ADM_SERVICE','isys_catg_cluster_adm_service','isys_cmdb_dao_category_g_cluster_adm_service',NULL,59,1,NULL,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (144,NULL,2,'LC__CMDB__CATG__JDISC_CUSTOM_ATTRIBUTES',NULL,'C__CATG__JDISC_CA','isys_catg_jdisc_ca','isys_cmdb_dao_category_g_jdisc_ca',5,NULL,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (150,NULL,0,'LC__CATG__NDO','NDO category','C__CATG__NDO','isys_catg_virtual','isys_cmdb_dao_category_g_ndo',NULL,135,0,NULL,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (151,NULL,2,'LC__CATG__CABLE','Cable category','C__CATG__CABLE','isys_catg_cable','isys_cmdb_dao_category_g_cable',245,175,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (152,7,2,'LC__CMDB__CATG__IDENTIFIER',NULL,'C__CATG__IDENTIFIER','isys_catg_identifier','isys_cmdb_dao_category_g_identifier',5,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (153,NULL,2,'LC__CMDB__CATG__SERVICE','Category service','C__CATG__SERVICE','isys_catg_service','isys_cmdb_dao_category_g_service',5,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (154,NULL,2,'LC__CATG__OPERATING_SYSTEM',NULL,'C__CATG__OPERATING_SYSTEM','isys_catg_application','isys_cmdb_dao_category_g_operating_system',5,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (155,NULL,0,'LC__CMDB__CATG__JDISC_DISCOVERY',NULL,'C__CATG__JDISC_DISCOVERY','isys_catg_virtual','isys_cmdb_dao_category_g_jdisc_discovery',5,NULL,0,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (156,NULL,2,'LC__CMDB__CATG__QINQ_SP','QinQ SP-VLAN','C__CATG__QINQ_SP','isys_catg_qinq','isys_cmdb_dao_category_g_qinq_sp',123,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (157,NULL,2,'LC__CMDB__CATG__FIBER_LEAD','fiber/lead','C__CATG__FIBER_LEAD','isys_catg_fiber_lead','isys_cmdb_dao_category_g_fiber_lead',123,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (158,NULL,3,'LC__CMDB__CATG__QINQ_CE','QinQ CE-VLAN','C__CATG__QINQ_CE','isys_catg_qinq','isys_cmdb_dao_category_g_qinq_ce',123,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (159,NULL,2,'LC__CATG__IMAGES',NULL,'C__CATG__IMAGES','isys_catg_images','isys_cmdb_dao_category_g_images',5,NULL,1,0,1,2,0,0);
INSERT INTO `isysgui_catg` VALUES (160,NULL,2,'LC__CATG__WAN',NULL,'C__CATG__WAN','isys_catg_wan','isys_cmdb_dao_category_g_wan',255,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (161,NULL,2,'LC__CMDB__CATG__RM_CONTROLLER',NULL,'C__CATG__RM_CONTROLLER','isys_catg_rm_controller','isys_cmdb_dao_category_g_rm_controller',5,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (163,NULL,2,'LC__CMDB__CATG__MANAGED_DEVICES',NULL,'C__CATG__RM_CONTROLLER_BACKWARD','isys_catg_virtual','isys_cmdb_dao_category_g_rm_controller_backward',5,NULL,1,0,0,2,0,0);
INSERT INTO `isysgui_catg` VALUES (164,NULL,4,'LC__CMDB__CATG__MANAGED_OBJECTS',NULL,'C__CATG__MANAGED_OBJECTS','isys_catg_virtual','isys_cmdb_dao_category_g_managed_objects',5,NULL,1,0,0,2,0,1);
INSERT INTO `isysgui_catg` VALUES (165,NULL,2,'LC__CATG__VRRP','','C__CATG__VRRP','isys_catg_vrrp','isys_cmdb_dao_category_g_vrrp',255,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (166,NULL,2,'LC__CATG__VRRP_MEMBER','','C__CATG__VRRP_MEMBER','isys_catg_vrrp_member','isys_cmdb_dao_category_g_vrrp_member',255,165,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (167,NULL,4,'LC__CATG__VRRP_VIEW','','C__CATG__VRRP_VIEW','isys_catg_virtual','isys_cmdb_dao_category_g_vrrp_view',255,7,0,0,0,2,0,1);
INSERT INTO `isysgui_catg` VALUES (168,NULL,2,'LC__CATG__STACK_MEMBER','','C__CATG__STACK_MEMBER','isys_catg_stack_member','isys_cmdb_dao_category_g_stack_member',255,NULL,1,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (169,NULL,1,'LC__CATG__STACK_MEMBERSHIP','','C__CATG__STACK_MEMBERSHIP','isys_catg_virtual','isys_cmdb_dao_category_g_stack_membership',255,NULL,0,0,0,2,0,1);
INSERT INTO `isysgui_catg` VALUES (170,NULL,2,'LC__CATG__LAST_LOGIN_USER','','C__CATG__LAST_LOGIN_USER','isys_catg_last_login_user','isys_cmdb_dao_category_g_last_login_user',255,NULL,0,0,1,2,0,1);
INSERT INTO `isysgui_catg` VALUES (171,NULL,10,'LC__CATG__NET_ZONE',NULL,'C__CATG__NET_ZONE','isys_catg_virtual','isys_cmdb_dao_category_g_net_zone',5,NULL,0,0,0,2,0,0);
INSERT INTO `isysgui_catg` VALUES (172,NULL,2,'LC__CATG__NET_ZONE_OPTIONS',NULL,'C__CATG__NET_ZONE_OPTIONS','isys_catg_net_zone_options','isys_cmdb_dao_category_g_net_zone_options',5,171,0,0,0,2,0,0);
INSERT INTO `isysgui_catg` VALUES (173,NULL,1,'LC__CATG__NET_ZONE_SCOPES',NULL,'C__CATG__NET_ZONE_SCOPES','isys_catg_virtual','isys_cmdb_dao_category_g_net_zone_scopes',5,171,0,0,0,2,0,0);
INSERT INTO `isysgui_catg` VALUES (174,NULL,1,'LC__CATG__STACK_PORT_OVERVIEW',NULL,'C__CATG__STACK_PORT_OVERVIEW','isys_catg_virtual','isys_cmdb_dao_category_g_stack_port_overview',5,NULL,1,0,0,2,0,0);
INSERT INTO `isysgui_catg` VALUES (175,NULL,1,'LC__CATG__CABLE_CONNECTION','Cable connection category','C__CATG__CABLE_CONNECTION','isys_catg_virtual','isys_cmdb_dao_category_g_cable_connection',5,NULL,0,0,0,2,0,0);
INSERT INTO `isysgui_catg` VALUES (176,NULL,1,'LC__MODULE__MULTIEDIT_CATEGORY',NULL,'C__CATG__MULTIEDIT','isys_catg_virtual','isys_cmdb_dao_category_g_multiedit',10,NULL,0,0,0,2,1,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isysgui_catg_custom` (
  `isysgui_catg_custom__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isysgui_catg_custom__type` int(10) unsigned DEFAULT '0' COMMENT 'Bitwise type categorization of this category',
  `isysgui_catg_custom__title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isysgui_catg_custom__config` text COLLATE utf8_unicode_ci NOT NULL,
  `isysgui_catg_custom__parent` int(10) NOT NULL,
  `isysgui_catg_custom__sort` int(10) NOT NULL,
  `isysgui_catg_custom__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isysgui_catg_custom__source_table` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'isys_catg_custom_fields_list',
  `isysgui_catg_custom__class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'isys_cmdb_dao_category_g_custom_fields',
  `isysgui_catg_custom__list_multi_value` int(10) DEFAULT '0',
  `isysgui_catg_custom__status` int(1) DEFAULT '2',
  PRIMARY KEY (`isysgui_catg_custom__id`),
  KEY `isysgui_catg_custom__type` (`isysgui_catg_custom__type`),
  KEY `isysgui_catg_custom__const` (`isysgui_catg_custom__const`),
  KEY `isysgui_catg_custom__status` (`isysgui_catg_custom__status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isysgui_cats` (
  `isysgui_cats__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isysgui_cats__type` int(10) unsigned DEFAULT '0' COMMENT 'Bitwise type categorization of this category',
  `isysgui_cats__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isysgui_cats__description` text COLLATE utf8_unicode_ci,
  `isysgui_cats__class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isysgui_cats__idoit_cats_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isysgui_cats__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isysgui_cats__sort` int(10) unsigned DEFAULT '5',
  `isysgui_cats__parent` int(10) unsigned DEFAULT NULL,
  `isysgui_cats__list_multi_value` int(10) NOT NULL,
  `isysgui_cats__source_table` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isysgui_cats__property` int(10) unsigned DEFAULT '0',
  `isysgui_cats__search` int(10) unsigned DEFAULT '1',
  `isysgui_cats__status` int(1) DEFAULT NULL,
  PRIMARY KEY (`isysgui_cats__id`),
  KEY `isysgui_cats__parent` (`isysgui_cats__parent`),
  KEY `isysgui_cats__type` (`isysgui_cats__type`),
  KEY `isysgui_cats__const` (`isysgui_cats__const`),
  KEY `isysgui_cats__status` (`isysgui_cats__status`),
  CONSTRAINT `isysgui_cats__parent` FOREIGN KEY (`isysgui_cats__parent`) REFERENCES `isysgui_cats` (`isysgui_cats__id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isysgui_cats` VALUES (1,2,'LC__CMDB__CATS__ENCLOSURE','Schrank (im Raum)','isys_cmdb_dao_category_s_enclosure',NULL,'C__CATS__ENCLOSURE',5,NULL,0,'isys_cats_enclosure_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (3,2,'LC__CMDB__CATS__ROOM','Raum','isys_cmdb_dao_category_s_room',NULL,'C__CATS__ROOM',5,NULL,0,'isys_cats_room_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (4,2,'LC__CMDB__CATS__SERVICE','(03301) Dienste','isys_cmdb_dao_category_s_service','(03301) Dienste','C__CATS__SERVICE',5,NULL,0,'isys_cats_application_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (5,2,'LC__CMDB__CATS__SWITCH_NET','isys_cats_switch_net / ','isys_cmdb_dao_category_s_switch_net','(03402) Switch','C__CATS__SWITCH_NET',5,NULL,0,'isys_cats_switch_net_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (7,2,'LC__CMDB__CATS__WAN','(03502) WAN-Leitungen','isys_cmdb_dao_category_s_wan','(03502) WAN-Leitung','C__CATS__WAN',5,NULL,0,'isys_cats_wan_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (8,10,'LC__CMDB__CATS__EMERGENCY_PLAN','(03503) Notfallplan','isys_cmdb_dao_category_s_emergency_plan','(03503) Notfallplan','C__CATS__EMERGENCY_PLAN',5,NULL,0,'isys_cats_emergency_plan_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (9,2,'LC__CMDB__CATS__AC','Air conditioning','isys_cmdb_dao_category_s_ac','','C__CATS__AC',5,NULL,0,'isys_cats_ac_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (13,2,'LC__CMDB__CATS__ACCESS_POINT','(03414) WLAN - Access Point','isys_cmdb_dao_category_s_access_point','(03414) WLAN - Acces','C__CATS__ACCESS_POINT',5,NULL,1,'isys_cats_access_point_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (14,2,'LC__CMDB__CATS__MONITOR','(03413) Monitor','isys_cmdb_dao_category_s_monitor','(03413) Monitor','C__CATS__MONITOR',5,NULL,0,'isys_cats_monitor_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (15,2,'LC__CMDB__CATS__CLIENT','(03407) Client\r\r\n.','isys_cmdb_dao_category_s_client','(03407) Client','C__CATS__CLIENT',5,NULL,0,'isys_cats_client_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (16,2,'LC__CMDB__CATS__SWITCH_FC','(03404) FC-Switch\r\r\n.','isys_cmdb_dao_category_s_switch_fc','(03404) FC-Switch','C__CATS__SWITCH_FC',5,NULL,0,'isys_cats_switch_fc_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (17,2,'LC__CMDB__CATS__ROUTER','(03403) Router','isys_cmdb_dao_category_s_router','(03403) Router','C__CATS__ROUTER',5,NULL,1,'isys_cats_router_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (18,2,'LC__CMDB__CATS__PRT','(03408) Drucker','isys_cmdb_dao_category_s_prt','(03408) Drucker','C__CATS__PRT',5,NULL,0,'isys_cats_prt_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (19,10,'LC__CMDB__CATS__FILE','new - File is obj','isys_cmdb_dao_category_s_file','new file is obj','C__CATS__FILE',5,NULL,0,'isys_cats_file_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (20,10,'LC__CMDB__CATS__APPLICATION','new - application','isys_cmdb_dao_category_s_application','','C__CATS__APPLICATION',5,62,0,'isys_cats_application_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (22,2,'LC__CMDB__CATS__NET','new - objtype net','isys_cmdb_dao_category_s_net','','C__CATS__NET',5,NULL,0,'isys_cats_net_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (23,2,'LC__CMDB__CATS__CELL_PHONE_CONTRACT','new - objtype cellphone contract','isys_cmdb_dao_category_s_cp_contract','','C__CATS__CELL_PHONE_CONTRACT',5,NULL,0,'isys_cats_mobile_phone_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (24,10,'LC__CMDB__CATS__LICENCE','new - objtype lizenz','isys_cmdb_dao_category_s_lic_overview','','C__CATS__LICENCE',5,NULL,0,'isys_cats_lic_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (25,2,'LC__OBJTYPE__GROUP','arbitrary object groups','isys_cmdb_dao_category_s_group',NULL,'C__CATS__GROUP',5,NULL,1,'isys_cats_group_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (26,2,'LC__CMDB__CATS__LICENCE_LIST','','isys_cmdb_dao_category_s_lic','','C__CATS__LICENCE_LIST',3,24,1,'isys_cats_lic_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (28,1,'LC__CMDB__CATS__LICENCE_OVERVIEW','','isys_cmdb_dao_category_s_lic_overview','','C__CATS__LICENCE_OVERVIEW',1,24,0,'isys_cats_lic_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (29,2,'LC__CATS__CMDB__FILE__ACTUAL','','isys_cmdb_dao_category_s_file','','C__CATS__FILE_ACTUAL',1,19,0,'isys_cats_file_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (30,2,'LC__CATS__CMDB__FILE__VERSIONS','','isys_cmdb_dao_category_s_file_version','','C__CATS__FILE_VERSIONS',2,19,1,'isys_file_version',0,1,2);
INSERT INTO `isysgui_cats` VALUES (31,2,'LC__CATS__CMDB__FILE__OBJECTS','','isys_cmdb_dao_category_s_file_object','','C__CATS__FILE_OBJECTS',3,19,1,'isys_cats_file_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (32,2,'LC__CMDB__CATS__EMERGENCY_PLAN_PROPERTY','','isys_cmdb_dao_category_s_emergency_plan','','C__CATS__EMERGENCY_PLAN_ATTRIBUTE',1,8,0,'isys_cats_emergency_plan_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (33,2,'LC__CMDB__CATS__EMERGENCY_PLAN_LINKED_OBJECT_LIST','','isys_cmdb_dao_category_s_emergency_plan_assigned_obj','','C__CATS__EMERGENCY_PLAN_LINKED_OBJECTS',2,8,1,'isys_catg_emergency_plan_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (38,2,'LC__CMDB__CATS__WS_NET_TYPE','','isys_cmdb_dao_category_s_ws_net_type','','C__CATS__WS_NET_TYPE',600,40,0,'isys_cats_ws_net_type_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (39,3,'LC__CMDB__CATS__MAINTENANCE_LINKED_OBJECT_LIST','','isys_cmdb_dao_category_s_ws_assignment','','C__CATS__WS_ASSIGNMENT',601,40,1,'isys_cats_ws_net_type_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (40,10,'LC__CMDB__OBJTYPE__WIRING_SYSTEM','','isys_cmdb_dao_category_s_ws_net_type','','C__CATS__WS',5,NULL,0,'isys_cats_ws_net_type_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (42,2,'LC__CMDB__OBJTYPE__UPS',NULL,'isys_cmdb_dao_category_s_ups',NULL,'C__CATS__UPS',5,NULL,0,'isys_cats_ups_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (43,2,'LC__CMDB__OBJTYPE__EPS','','isys_cmdb_dao_category_s_eps','','C__CATS__EPS',600,39,0,'isys_cats_eps_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (44,2,'LC__CMDB__CATS__SAN_ZONING','SAN Zoning','isys_cmdb_dao_category_s_san_zoning',NULL,'C__CATS__SAN_ZONING',5,NULL,0,'isys_cats_san_zoning_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (45,10,'LC__CMDB__CATS__ORGANIZATION',NULL,'isys_cmdb_dao_category_s_organization_master',NULL,'C__CATS__ORGANIZATION',5,NULL,0,'isys_cats_organization_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (46,2,'LC__CMDB__CATS__ORGANIZATION_MASTER_DATA',NULL,'isys_cmdb_dao_category_s_organization_master',NULL,'C__CATS__ORGANIZATION_MASTER_DATA',5,45,0,'isys_cats_organization_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (47,2,'LC__CMDB__CATS__ORGANIZATION_PERSONS',NULL,'isys_cmdb_dao_category_s_organization_person',NULL,'C__CATS__ORGANIZATION_PERSONS',5,45,1,'isys_cats_organization_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (48,10,'LC__CONTACT__TREE__PERSON',NULL,'isys_cmdb_dao_category_s_person_master',NULL,'C__CATS__PERSON',5,NULL,0,'isys_cats_person_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (49,2,'LC__CONTACT__TREE__MASTER_DATA',NULL,'isys_cmdb_dao_category_s_person_master',NULL,'C__CATS__PERSON_MASTER',5,48,0,'isys_cats_person_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (50,2,'LC__UNIVERSAL__LOGIN',NULL,'isys_cmdb_dao_category_s_person_login',NULL,'C__CATS__PERSON_LOGIN',5,48,0,'isys_cats_person_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (51,3,'LC__CONTACT__TREE__GROUP_MEMBERS',NULL,'isys_cmdb_dao_category_s_person_assigned_groups',NULL,'C__CATS__PERSON_ASSIGNED_GROUPS',5,48,1,'isys_person_2_group',0,1,2);
INSERT INTO `isysgui_cats` VALUES (52,10,'LC__CONTACT__TREE__PERSON_GROUP',NULL,'isys_cmdb_dao_category_s_person_group_master',NULL,'C__CATS__PERSON_GROUP',5,NULL,0,'isys_cats_person_group_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (53,2,'LC__CONTACT__TREE__MASTER_DATA',NULL,'isys_cmdb_dao_category_s_person_group_master',NULL,'C__CATS__PERSON_GROUP_MASTER',5,52,0,'isys_cats_person_group_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (54,3,'LC__CONTACT__TREE__MEMBERS',NULL,'isys_cmdb_dao_category_s_person_group_members',NULL,'C__CATS__PERSON_GROUP_MEMBERS',5,52,1,'isys_person_2_group',0,1,2);
INSERT INTO `isysgui_cats` VALUES (55,3,'LC__CMDB__CONTACT_ASSIGNMENT',NULL,'isys_cmdb_dao_category_s_organization_contact_assign',NULL,'C__CATS__ORGANIZATION_CONTACT_ASSIGNMENT',5,45,1,'isys_catg_contact_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (56,3,'LC__CMDB__CONTACT_ASSIGNMENT',NULL,'isys_cmdb_dao_category_s_person_contact_assign',NULL,'C__CATS__PERSON_CONTACT_ASSIGNMENT',5,48,1,'isys_catg_contact_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (57,3,'LC__CMDB__CONTACT_ASSIGNMENT',NULL,'isys_cmdb_dao_category_s_person_group_contact_assign',NULL,'C__CATS__PERSON_GROUP_CONTACT_ASSIGNMENT',5,52,1,'isys_catg_contact_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (58,2,'LC__CMDB__CATS__CLUSTER_SERVICE__ASSIGNED_CLUSTER',NULL,'isys_cmdb_dao_category_s_cluster_service',NULL,'C__CATS__CLUSTER_SERVICE',5,62,1,'isys_catg_cluster_service_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (59,2,'LC__CMDB__CATS__RELATION_DETAILS',NULL,'isys_cmdb_dao_category_s_relation_details',NULL,'C__CATS__RELATION_DETAILS',5,NULL,0,'isys_catg_relation_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (60,2,'LC__OBJTYPE__DATABASE_SCHEMA',NULL,'isys_cmdb_dao_category_s_database_schema',NULL,'C__CATS__DATABASE_SCHEMA',5,NULL,0,'isys_cats_database_schema_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (61,2,'LC__CMDB__TREE__DATABASE_LINKS',NULL,'isys_cmdb_dao_category_s_database_links',NULL,'C__CATS__DATABASE_LINKS',3,60,1,'isys_cats_database_links_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (62,2,'DBMS',NULL,'isys_cmdb_dao_category_s_dbms',NULL,'C__CATS__DBMS',2,NULL,0,'isys_cats_dbms_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (63,2,'LC__CMDB__TREE__DATABASE_INSTANCE',NULL,'isys_cmdb_dao_category_s_database_instance',NULL,'C__CATS__DATABASE_INSTANCE',3,NULL,0,'isys_cats_database_instance_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (64,2,'PDU',NULL,'isys_cmdb_dao_category_s_pdu',NULL,'C__CATS__PDU',5,NULL,0,'isys_cats_pdu_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (65,2,'Branch',NULL,'isys_cmdb_dao_category_s_pdu_branch',NULL,'C__CATS__PDU_BRANCH',5,64,1,'isys_cats_pdu_branch_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (66,1,'LC__CMDB__CATS__PDU__OVERVIEW',NULL,'isys_cmdb_dao_category_s_pdu_overview',NULL,'C__CATS__PDU_OVERVIEW',5,64,0,'isys_catg_virtual_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (67,2,'LC__RELATION__PARALLEL_RELATIONS',NULL,'isys_cmdb_dao_category_s_parallel_relation',NULL,'C__CATS__PARALLEL_RELATION',5,NULL,0,'isys_cats_relpool_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (68,2,'LC__CMDB__TREE__DATABASE_OBJECTS',NULL,'isys_cmdb_dao_category_s_database_objects',NULL,'C__CATS__DATABASE_OBJECTS',1,60,1,'isys_cats_database_objects_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (69,2,'LC__CMDB__TREE__DATABASE_ACCESS',NULL,'isys_cmdb_dao_category_s_database_access',NULL,'C__CATS__DATABASE_ACCESS',2,60,1,'isys_cats_database_access_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (70,2,'LC__CMDB__TREE__DATABASE_GATEWAY',NULL,'isys_cmdb_dao_category_s_database_gateway',NULL,'C__CATS__DATABASE_GATEWAY',5,60,1,'isys_cats_database_gateway_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (71,2,'LC__CATS__REPLICATION',NULL,'isys_cmdb_dao_category_s_replication',NULL,'C__CATS__REPLICATION',5,NULL,0,'isys_cats_replication_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (72,2,'LC__CATS__REPLICATION_PARTNER',NULL,'isys_cmdb_dao_category_s_replication_partner',NULL,'C__CATS__REPLICATION_PARTNER',5,71,1,'isys_cats_replication_partner_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (73,3,'LC__CATS__APPLICATION_ASSIGNMENT',NULL,'isys_cmdb_dao_category_s_application_assigned_obj',NULL,'C__CATS__APPLICATION_ASSIGNED_OBJ',5,20,1,'isys_catg_application_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (74,3,'LC__CATS__CLUSTER_SERVICE_ASSIGNMENT',NULL,'isys_cmdb_dao_category_s_cluster_service_assigned_obj',NULL,'C__CATS__CLUSTER_SERVICE_ASSIGNED_OBJ',5,58,1,'isys_catg_cluster_service_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (75,10,'LC__CMDB__OBJTYPE__MIDDLEWARE',NULL,'isys_cmdb_dao_category_s_middleware',NULL,'C__CATS__MIDDLEWARE',5,NULL,0,'isys_cats_application_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (76,2,'LC__CMDB__CATS__KRYPTO_CARD',NULL,'isys_cmdb_dao_category_s_krypto_card',NULL,'C__CATS__KRYPTO_CARD',5,NULL,0,'isys_cats_krypto_card_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (77,1,'LC__CMDB__CATS__NET_IP_ADDRESSES','','isys_cmdb_dao_category_s_net_ip_addresses','','C__CATS__NET_IP_ADDRESSES',5,22,0,'isys_cats_net_ip_addresses_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (78,2,'LC__CMDB__CATS__NET_DHCP','','isys_cmdb_dao_category_s_net_dhcp','','C__CATS__NET_DHCP',5,22,1,'isys_cats_net_dhcp_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (79,2,'LC__CMDB__CATS__LAYER2_NET',NULL,'isys_cmdb_dao_category_s_layer2_net',NULL,'C__CATS__LAYER2_NET',5,NULL,0,'isys_cats_layer2_net_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (80,3,'LC__CMDB__CATS__LAYER2_NET_ASSIGNED_PORTS',NULL,'isys_cmdb_dao_category_s_layer2_net_assigned_ports',NULL,'C__CATS__LAYER2_NET_ASSIGNED_PORTS',5,NULL,1,'isys_cats_layer2_net_assigned_ports_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (81,10,'LC__CMDB__CATS__CONTRACT',NULL,'isys_cmdb_dao_category_s_contract',NULL,'C__CATS__CONTRACT',5,NULL,0,'isys_cats_contract_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (82,2,'LC__CMDB__CATS__CONTRACT_INFORMATION',NULL,'isys_cmdb_dao_category_s_contract',NULL,'C__CATS__CONTRACT_INFORMATION',5,81,0,'isys_cats_contract_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (83,1,'LC__CMDB__CATS__CONTRACT_ALLOCATION',NULL,'isys_cmdb_dao_category_s_contract_allocation',NULL,'C__CATS__CONTRACT_ALLOCATION',5,81,1,'isys_catg_contract_assignment_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (84,10,'LC__CMDB__CATS__CHASSIS_ENCLOSURE',NULL,'isys_cmdb_dao_category_s_chassis_view',NULL,'C__CATS__CHASSIS',5,NULL,0,'isys_cats_chassis_view_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (85,2,'LC__CMDB__CATS__CHASSIS_SLOTS',NULL,'isys_cmdb_dao_category_s_chassis_slot',NULL,'C__CATS__CHASSIS_SLOT',5,84,1,'isys_cats_chassis_slot_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (86,3,'LC__CMDB__CATS__CHASSIS_DEVICES',NULL,'isys_cmdb_dao_category_s_chassis',NULL,'C__CATS__CHASSIS_DEVICES',5,84,1,'isys_cats_chassis_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (87,1,'LC__CMDB__CATS__CHASSIS_VIEW',NULL,'isys_cmdb_dao_category_s_chassis_view',NULL,'C__CATS__CHASSIS_VIEW',5,NULL,0,'isys_cats_chassis_view_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (88,1,'LC__CMDB__CATS__CHASSIS_CABLING',NULL,'isys_cmdb_dao_category_s_chassis_cabling',NULL,'C__CATS__CHASSIS_CABLING',5,NULL,0,'isys_cats_virtual',0,1,2);
INSERT INTO `isysgui_cats` VALUES (89,2,'LC__CMDB__CATS__APPLICATION__VARIANT',NULL,'isys_cmdb_dao_category_s_application_variant',NULL,'C__CATS__APPLICATION_VARIANT',5,NULL,1,'isys_cats_app_variant_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (90,2,'LC__CMDB__CATS__BASIC_AUTH','This category replaces the old \"persongroup\" right-config.','isys_cmdb_dao_category_s_basic_auth',NULL,'C__CATS__BASIC_AUTH',5,52,0,'isys_cats_virtual_list',0,0,2);
INSERT INTO `isysgui_cats` VALUES (93,2,'LC__CMDB__CATS__GROUP_TYPE','Group type folder','isys_cmdb_dao_category_s_group_type',NULL,'C__CATS__GROUP_TYPE',NULL,NULL,0,'isys_cats_group_type_list',NULL,1,2);
INSERT INTO `isysgui_cats` VALUES (94,3,'LC__CMDB__CATS__LAYER2_NET_ASSIGNED_LOGICAL_PORTS','Assigned logical ports','isys_cmdb_dao_category_s_layer2_net_assigned_logical_ports',NULL,'C__CATS__LAYER2_NET_ASSIGNED_LOGICAL_PORTS',5,NULL,1,'isys_catg_log_port_list_2_isys_obj',0,1,2);
INSERT INTO `isysgui_cats` VALUES (95,3,'LC__CATS__APPLICATION_ASSIGNMENT',NULL,'isys_cmdb_dao_category_s_application_assigned_obj',NULL,'C__CATS__APPLICATION_SERVICE_ASSIGNED_OBJ',5,4,1,'isys_catg_application_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (96,3,'LC__CATS__APPLICATION_ASSIGNMENT',NULL,'isys_cmdb_dao_category_s_application_assigned_obj',NULL,'C__CATS__APPLICATION_DBMS_ASSIGNED_OBJ',5,62,1,'isys_catg_application_list',0,1,2);
INSERT INTO `isysgui_cats` VALUES (97,2,'LC__CATS__NET_ZONE',NULL,'isys_cmdb_dao_category_s_net_zone',NULL,'C__CATS__NET_ZONE',5,22,1,'isys_cats_net_zone_list',0,0,2);
INSERT INTO `isysgui_cats` VALUES (98,10,'LC__CMDB__CATS__OPERATING_SYSTEM',NULL,'isys_cmdb_dao_category_s_operating_system',NULL,'C__CATS__OPERATING_SYSTEM',5,NULL,0,'isys_cats_application_list',0,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isysgui_cats_2_subcategory` (
  `isysgui_cats_2_subcategory__isysgui_cats__id__parent` int(10) unsigned NOT NULL,
  `isysgui_cats_2_subcategory__isysgui_cats__id__child` int(10) unsigned NOT NULL,
  PRIMARY KEY (`isysgui_cats_2_subcategory__isysgui_cats__id__parent`,`isysgui_cats_2_subcategory__isysgui_cats__id__child`),
  KEY `isysgui_cats_2_subcategory__isysgui_cats__id__parent` (`isysgui_cats_2_subcategory__isysgui_cats__id__parent`),
  KEY `isysgui_cats_2_subcategory__isysgui_cats__id__child` (`isysgui_cats_2_subcategory__isysgui_cats__id__child`),
  CONSTRAINT `isysgui_cats_2_subcategory_ibfk_1` FOREIGN KEY (`isysgui_cats_2_subcategory__isysgui_cats__id__parent`) REFERENCES `isysgui_cats` (`isysgui_cats__id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `isysgui_cats_2_subcategory_ibfk_2` FOREIGN KEY (`isysgui_cats_2_subcategory__isysgui_cats__id__child`) REFERENCES `isysgui_cats` (`isysgui_cats__id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `isysgui_cats_2_subcategory` VALUES (4,73);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (4,89);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (8,32);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (8,33);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (11,34);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (11,35);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (19,29);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (19,30);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (19,31);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (20,73);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (20,89);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (22,77);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (22,78);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (22,97);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (24,26);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (24,27);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (24,28);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (25,93);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (40,38);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (40,39);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (45,46);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (45,47);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (45,55);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (48,49);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (48,50);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (48,51);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (48,56);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (48,90);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (52,53);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (52,54);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (52,57);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (52,90);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (58,74);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (60,61);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (60,68);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (60,69);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (60,70);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (62,20);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (62,58);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (62,73);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (62,74);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (62,89);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (64,65);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (64,66);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (71,72);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (75,58);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (75,73);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (75,74);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (75,89);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (79,80);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (79,94);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (81,82);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (81,83);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (84,85);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (84,86);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (84,87);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (84,88);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (98,73);
INSERT INTO `isysgui_cats_2_subcategory` VALUES (98,89);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_obj_data` (
  `temp_obj_data__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `temp_obj_data__table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Name of the temporary table',
  `temp_obj_data__view_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Unique ID for a list view which is assigned to a specific temporary table',
  PRIMARY KEY (`temp_obj_data__id`),
  UNIQUE KEY `temp_obj_data__view_id` (`temp_obj_data__view_id`),
  KEY `temp_obj_data__table_name` (`temp_obj_data__table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Information about the temporary table of a user.';
/*!40101 SET character_set_client = @saved_cs_client */;
DELETE FROM isys_widgets WHERE isys_widgets__const IN ('C__WIDGET__STATS', 'C__WIDGET__STATSTABLE', 'C__WIDGET__REPORTS', 'C__WIDGET__CMDB_EXPLORER', 'C__WIDGET__IT_SERVICE_CONSISTENCY', 'C__WIDGET__EVAL_OVERVIEW');
UPDATE isys_widgets SET isys_widgets__default_config = '{\"title\":\"i-doit News\",\"url\":\"https://www.i-doit.com/en/dashboard-news/\",\"height\":\"800\"}', isys_widgets__sorting = 0, isys_widgets__default = 1 WHERE isys_widgets__const = 'C__WIDGET__IFRAME';
DELETE FROM isys_module WHERE isys_module__const IN('C__MODULE__QCW', 'C__MODULE__REPORT', 'C__MODULE__VERINICE', 'C__MODULE__LOGINVENTORY', 'C__MODULE__ITSERVICE');
DELETE FROM isysgui_catg WHERE isysgui_catg__const IN('C__CATG__NETWORK_PORT_OVERVIEW', 'C__CMDB__SUBCAT__NETWORK_PORT_OVERVIEW', 'C__CATG__CLUSTER_SHARED_STORAGE', 'C__CATG__CLUSTER_SHARED_VIRTUAL_SWITCH', 'C__CATG__CLUSTER_VITALITY', 'C__CATG__OBJECT_VITALITY', 'C__CATG__PLANNING', 'C__CATG__RACK_VIEW', 'C__CATG__VIRTUAL_SUPERNET', 'C__CATG__VIRTUAL_AUTH', 'C__CATG__STACK_PORT_OVERVIEW');
DELETE FROM isysgui_cats WHERE isysgui_cats__const IN('C__CATS__CHASSIS_VIEW', 'C__CATS__ENCLOSURE', 'C__CATS__LICENCE_OVERVIEW', 'C__CMDB__SUBCAT__LICENCE_OVERVIEW', 'C__CATS__NET_IP_ADDRESSES', 'C__CATS__PDU_OVERVIEW');
