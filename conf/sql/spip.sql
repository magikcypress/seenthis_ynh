-- MySQL dump 10.15  Distrib 10.0.29-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: seenthis    Database: seenthis
-- ------------------------------------------------------
-- Server version 10.0.29-MariaDB-0+deb8u1

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
-- Table structure for table `spip_articles`
--

DROP TABLE IF EXISTS `spip_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_articles` (
  `id_article` bigint(21) NOT NULL AUTO_INCREMENT,
  `surtitre` text NOT NULL,
  `titre` text NOT NULL,
  `soustitre` text NOT NULL,
  `id_rubrique` bigint(21) NOT NULL DEFAULT '0',
  `descriptif` text NOT NULL,
  `chapo` mediumtext NOT NULL,
  `texte` longtext NOT NULL,
  `ps` mediumtext NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `statut` varchar(10) NOT NULL DEFAULT '0',
  `id_secteur` bigint(21) NOT NULL DEFAULT '0',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `export` varchar(10) DEFAULT 'oui',
  `date_redac` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `visites` int(11) NOT NULL DEFAULT '0',
  `referers` int(11) NOT NULL DEFAULT '0',
  `popularite` double NOT NULL DEFAULT '0',
  `accepter_forum` char(3) NOT NULL DEFAULT '',
  `date_modif` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(10) NOT NULL DEFAULT '',
  `langue_choisie` varchar(3) DEFAULT 'non',
  `id_trad` bigint(21) NOT NULL DEFAULT '0',
  `extra` longtext,
  `id_version` int(10) unsigned NOT NULL DEFAULT '0',
  `nom_site` tinytext NOT NULL,
  `url_site` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_article`),
  KEY `id_rubrique` (`id_rubrique`),
  KEY `id_secteur` (`id_secteur`),
  KEY `id_trad` (`id_trad`),
  KEY `lang` (`lang`),
  KEY `statut` (`statut`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_articles`
--

LOCK TABLES `spip_articles` WRITE;
/*!40000 ALTER TABLE `spip_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_auteurs`
--

DROP TABLE IF EXISTS `spip_auteurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_auteurs` (
  `id_auteur` bigint(21) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `bio` text NOT NULL,
  `email` tinytext NOT NULL,
  `nom_site` tinytext NOT NULL,
  `url_site` text NOT NULL,
  `login` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `pass` tinytext NOT NULL,
  `low_sec` tinytext NOT NULL,
  `statut` varchar(255) NOT NULL DEFAULT '0',
  `webmestre` varchar(3) NOT NULL DEFAULT 'non',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pgp` text NOT NULL,
  `htpass` tinytext NOT NULL,
  `en_ligne` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `imessage` varchar(3) DEFAULT NULL,
  `messagerie` varchar(3) DEFAULT NULL,
  `alea_actuel` tinytext,
  `alea_futur` tinytext,
  `prefs` tinytext,
  `cookie_oubli` tinytext,
  `source` varchar(10) NOT NULL DEFAULT 'spip',
  `lang` varchar(10) NOT NULL DEFAULT '',
  `extra` longtext,
  `couleur` varchar(6) NOT NULL DEFAULT '24b8dd',
  `troll` bigint(21) DEFAULT NULL,
  `troll_forcer` bigint(21) DEFAULT NULL,
  `copyright` varchar(10) NOT NULL DEFAULT 'C',
  `mail_nouv_billet` tinyint(1) NOT NULL DEFAULT '1',
  `mail_rep_moi` tinyint(1) NOT NULL DEFAULT '1',
  `mail_rep_billet` tinyint(1) NOT NULL DEFAULT '0',
  `mail_rep_conv` tinyint(1) NOT NULL DEFAULT '0',
  `mail_suivre_moi` tinyint(1) NOT NULL DEFAULT '1',
  `mail_mes_billets` tinyint(1) NOT NULL DEFAULT '1',
  `twitter` varchar(100) NOT NULL DEFAULT '',
  `facebook` varchar(100) NOT NULL DEFAULT '',
  `gplus` varchar(100) NOT NULL DEFAULT '',
  `rss` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id_auteur`),
  KEY `login` (`login`),
  KEY `statut` (`statut`),
  KEY `en_ligne` (`en_ligne`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_auteurs`
--

LOCK TABLES `spip_auteurs` WRITE;
/*!40000 ALTER TABLE `spip_auteurs` DISABLE KEYS */;
INSERT INTO `spip_auteurs` VALUES (1,'__ADMIN_SPIP__','','__ADMIN_SPIP__@__DOMAIN__','','','__ADMIN_SPIP__','__DB_SHA__','','0minirezo','oui','2017-02-27 00:27:53','','__DB_PWD__','2017-02-25 21:14:22',NULL,NULL,'__ALEA_ACTUEL__','__ALEA_FUTUR__','a:1:{s:3:\"cnx\";s:0:\"\";}','','spip','__LANG_SPIP__',NULL,'24b8dd',NULL,NULL,'C',1,1,0,0,1,1,'','','',NULL),(2,'admin','','admin@__DOMAIN__','','','admin','__DB_SHA__','','0minirezo','oui','2017-02-27 01:09:52','','__DB_PWD__','2017-02-27 01:09:52',NULL,NULL,'__ALEA_ACTUEL__','__ALEA_FUTUR__','a:1:{s:3:\"cnx\";s:0:\"\";}',NULL,'spip','__LANG_SPIP__',NULL,'24b8dd',NULL,NULL,'C',1,1,0,0,1,1,'','','',NULL),(3,'seenthis','','seenthis@__DOMAIN__','','','seenthis','__DB_SHA__','','0minirezo','non','2017-02-27 00:29:31','','__DB_PWD__','0000-00-00 00:00:00',NULL,NULL,'__ALEA_ACTUEL__','__ALEA_FUTUR__',NULL,NULL,'spip','',NULL,'24b8dd',NULL,NULL,'C',1,1,0,0,1,1,'','','',NULL);
/*!40000 ALTER TABLE `spip_auteurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_auteurs_articles`
--

DROP TABLE IF EXISTS `spip_auteurs_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_auteurs_articles` (
  `id_auteur` bigint(21) NOT NULL DEFAULT '0',
  `id_article` bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_auteur`,`id_article`),
  KEY `id_article` (`id_article`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_auteurs_articles`
--

LOCK TABLES `spip_auteurs_articles` WRITE;
/*!40000 ALTER TABLE `spip_auteurs_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_auteurs_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_auteurs_messages`
--

DROP TABLE IF EXISTS `spip_auteurs_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_auteurs_messages` (
  `id_auteur` bigint(21) NOT NULL DEFAULT '0',
  `id_message` bigint(21) NOT NULL DEFAULT '0',
  `vu` char(3) DEFAULT NULL,
  PRIMARY KEY (`id_auteur`,`id_message`),
  KEY `id_message` (`id_message`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_auteurs_messages`
--

LOCK TABLES `spip_auteurs_messages` WRITE;
/*!40000 ALTER TABLE `spip_auteurs_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_auteurs_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_auteurs_rubriques`
--

DROP TABLE IF EXISTS `spip_auteurs_rubriques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_auteurs_rubriques` (
  `id_auteur` bigint(21) NOT NULL DEFAULT '0',
  `id_rubrique` bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_auteur`,`id_rubrique`),
  KEY `id_rubrique` (`id_rubrique`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_auteurs_rubriques`
--

LOCK TABLES `spip_auteurs_rubriques` WRITE;
/*!40000 ALTER TABLE `spip_auteurs_rubriques` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_auteurs_rubriques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_breves`
--

DROP TABLE IF EXISTS `spip_breves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_breves` (
  `id_breve` bigint(21) NOT NULL AUTO_INCREMENT,
  `date_heure` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titre` text NOT NULL,
  `texte` longtext NOT NULL,
  `lien_titre` text NOT NULL,
  `lien_url` text NOT NULL,
  `statut` varchar(6) NOT NULL DEFAULT '0',
  `id_rubrique` bigint(21) NOT NULL DEFAULT '0',
  `lang` varchar(10) NOT NULL DEFAULT '',
  `langue_choisie` varchar(3) DEFAULT 'non',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `extra` longtext,
  PRIMARY KEY (`id_breve`),
  KEY `id_rubrique` (`id_rubrique`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_breves`
--

LOCK TABLES `spip_breves` WRITE;
/*!40000 ALTER TABLE `spip_breves` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_breves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_documents`
--

DROP TABLE IF EXISTS `spip_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_documents` (
  `id_document` bigint(21) NOT NULL AUTO_INCREMENT,
  `id_vignette` bigint(21) NOT NULL DEFAULT '0',
  `extension` varchar(10) NOT NULL DEFAULT '',
  `titre` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `descriptif` text NOT NULL,
  `fichier` varchar(255) NOT NULL DEFAULT '',
  `taille` int(11) DEFAULT NULL,
  `largeur` int(11) DEFAULT NULL,
  `hauteur` int(11) DEFAULT NULL,
  `mode` enum('vignette','image','document') NOT NULL DEFAULT 'document',
  `distant` varchar(3) DEFAULT 'non',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `contenu` text NOT NULL,
  `extrait` varchar(3) NOT NULL DEFAULT 'non',
  PRIMARY KEY (`id_document`),
  KEY `id_vignette` (`id_vignette`),
  KEY `mode` (`mode`),
  KEY `extension` (`extension`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_documents`
--

LOCK TABLES `spip_documents` WRITE;
/*!40000 ALTER TABLE `spip_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_documents_liens`
--

DROP TABLE IF EXISTS `spip_documents_liens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_documents_liens` (
  `id_document` bigint(21) NOT NULL DEFAULT '0',
  `id_objet` bigint(21) NOT NULL DEFAULT '0',
  `objet` varchar(25) NOT NULL DEFAULT '',
  `vu` enum('non','oui') NOT NULL DEFAULT 'non',
  PRIMARY KEY (`id_document`,`id_objet`,`objet`),
  KEY `id_document` (`id_document`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_documents_liens`
--

LOCK TABLES `spip_documents_liens` WRITE;
/*!40000 ALTER TABLE `spip_documents_liens` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_documents_liens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_forum`
--

DROP TABLE IF EXISTS `spip_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_forum` (
  `id_forum` bigint(21) NOT NULL AUTO_INCREMENT,
  `id_parent` bigint(21) NOT NULL DEFAULT '0',
  `id_thread` bigint(21) NOT NULL DEFAULT '0',
  `id_rubrique` bigint(21) NOT NULL DEFAULT '0',
  `id_article` bigint(21) NOT NULL DEFAULT '0',
  `id_breve` bigint(21) NOT NULL DEFAULT '0',
  `date_heure` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_thread` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titre` text NOT NULL,
  `texte` mediumtext NOT NULL,
  `auteur` text NOT NULL,
  `email_auteur` text NOT NULL,
  `nom_site` text NOT NULL,
  `url_site` text NOT NULL,
  `statut` varchar(8) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_auteur` bigint(20) NOT NULL DEFAULT '0',
  `id_message` bigint(21) NOT NULL DEFAULT '0',
  `id_syndic` bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_forum`),
  KEY `id_auteur` (`id_auteur`),
  KEY `id_parent` (`id_parent`),
  KEY `id_thread` (`id_thread`),
  KEY `optimal` (`statut`,`id_parent`,`id_article`,`date_heure`,`id_breve`,`id_syndic`,`id_rubrique`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_forum`
--

LOCK TABLES `spip_forum` WRITE;
/*!40000 ALTER TABLE `spip_forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_groupes_mots`
--

DROP TABLE IF EXISTS `spip_groupes_mots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_groupes_mots` (
  `id_groupe` bigint(21) NOT NULL AUTO_INCREMENT,
  `titre` text NOT NULL,
  `descriptif` text NOT NULL,
  `texte` longtext NOT NULL,
  `unseul` varchar(3) NOT NULL DEFAULT '',
  `obligatoire` varchar(3) NOT NULL DEFAULT '',
  `tables_liees` text NOT NULL,
  `minirezo` varchar(3) NOT NULL DEFAULT '',
  `comite` varchar(3) NOT NULL DEFAULT '',
  `forum` varchar(3) NOT NULL DEFAULT '',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_groupe`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_groupes_mots`
--

LOCK TABLES `spip_groupes_mots` WRITE;
/*!40000 ALTER TABLE `spip_groupes_mots` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_groupes_mots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_jobs`
--

DROP TABLE IF EXISTS `spip_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_jobs` (
  `id_job` bigint(21) NOT NULL AUTO_INCREMENT,
  `descriptif` text NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `args` longblob NOT NULL,
  `md5args` char(32) NOT NULL DEFAULT '',
  `inclure` varchar(255) NOT NULL,
  `priorite` smallint(6) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_job`),
  KEY `date` (`date`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_jobs`
--

LOCK TABLES `spip_jobs` WRITE;
/*!40000 ALTER TABLE `spip_jobs` DISABLE KEYS */;
INSERT INTO `spip_jobs` VALUES (1,'Tache CRON queue_watch (toutes les 86400 s)','queue_watch','a:1:{i:0;d:1488154413;}','d8753f0a9722c24fdda12b88eff761de','genie/',0,'2017-02-28 00:13:33',1),(2,'Tache CRON optimiser (toutes les 172800 s)','optimiser','a:1:{i:0;d:1488132433;}','dba6b32f7a9297d7d02fbdcbab5adcc1','genie/',0,'2017-02-28 18:07:13',1),(5,'Tache CRON maintenance (toutes les 7200 s)','maintenance','a:1:{i:0;d:1488152554;}','16387e76e410bb8d2a4d959d843e69f2','genie/',0,'2017-02-27 01:42:34',1),(6,'Tache CRON mise_a_jour (toutes les 259200 s)','mise_a_jour','a:1:{i:0;d:1488120430;}','7f40c6881c426b654ea4fd8b30a0754b','genie/',0,'2017-03-01 14:47:10',1),(26,'Tache CRON syndic (toutes les 90 s)','syndic','a:1:{i:0;i:1488157826;}','e77006731e3f159e75f20ef5782cbf50','genie/',0,'2017-02-27 01:11:56',1),(25,'Tache CRON seenthis_importer_flux (toutes les 10 s)','seenthis_importer_flux','a:1:{i:0;i:1488157826;}','e77006731e3f159e75f20ef5782cbf50','genie/',0,'2017-02-27 01:10:36',1),(21,'Tache CRON fulltext_index_document (toutes les 600 s)','fulltext_index_document','a:1:{i:0;i:1488157730;}','2dcf01d3235353357db335e54bc990a7','genie/',0,'2017-02-27 01:18:50',1),(20,'Tache CRON invalideur (toutes les 600 s)','invalideur','a:1:{i:0;i:1488157730;}','2dcf01d3235353357db335e54bc990a7','genie/',0,'2017-02-27 01:18:50',1);
/*!40000 ALTER TABLE `spip_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_jobs_liens`
--

DROP TABLE IF EXISTS `spip_jobs_liens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_jobs_liens` (
  `id_job` bigint(21) NOT NULL DEFAULT '0',
  `id_objet` bigint(21) NOT NULL DEFAULT '0',
  `objet` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_job`,`id_objet`,`objet`),
  KEY `id_job` (`id_job`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_jobs_liens`
--

LOCK TABLES `spip_jobs_liens` WRITE;
/*!40000 ALTER TABLE `spip_jobs_liens` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_jobs_liens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_me`
--

DROP TABLE IF EXISTS `spip_me`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_me` (
  `id_me` bigint(21) NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL,
  `date` datetime NOT NULL,
  `date_modif` datetime NOT NULL,
  `date_parent` datetime NOT NULL,
  `id_auteur` bigint(21) NOT NULL,
  `id_parent` bigint(21) NOT NULL,
  `statut` varchar(5) NOT NULL DEFAULT 'oui',
  `ip` varchar(40) NOT NULL,
  `id_dest` bigint(21) NOT NULL,
  `troll` bigint(21) NOT NULL,
  PRIMARY KEY (`id_me`),
  KEY `uuid` (`uuid`),
  KEY `id_auteur` (`id_auteur`),
  KEY `id_parent` (`id_parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_me`
--

LOCK TABLES `spip_me` WRITE;
/*!40000 ALTER TABLE `spip_me` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_me` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_me_auteur`
--

DROP TABLE IF EXISTS `spip_me_auteur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_me_auteur` (
  `id_me` bigint(21) NOT NULL,
  `id_auteur` bigint(21) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `id_me` (`id_me`),
  KEY `id_auteur` (`id_auteur`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_me_auteur`
--

LOCK TABLES `spip_me_auteur` WRITE;
/*!40000 ALTER TABLE `spip_me_auteur` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_me_auteur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_me_block`
--

DROP TABLE IF EXISTS `spip_me_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_me_block` (
  `id_block` bigint(21) NOT NULL,
  `id_auteur` bigint(21) NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  KEY `id_block` (`id_block`),
  KEY `id_auteur` (`id_auteur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_me_block`
--

LOCK TABLES `spip_me_block` WRITE;
/*!40000 ALTER TABLE `spip_me_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_me_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_me_follow`
--

DROP TABLE IF EXISTS `spip_me_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_me_follow` (
  `id_follow` bigint(21) NOT NULL,
  `id_auteur` bigint(21) NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  KEY `id_follow` (`id_follow`),
  KEY `id_auteur` (`id_auteur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_me_follow`
--

LOCK TABLES `spip_me_follow` WRITE;
/*!40000 ALTER TABLE `spip_me_follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_me_follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_me_follow_tag`
--

DROP TABLE IF EXISTS `spip_me_follow_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_me_follow_tag` (
  `tag` text NOT NULL,
  `id_follow` bigint(21) NOT NULL,
  `date` datetime NOT NULL,
  KEY `id_follow` (`id_follow`),
  KEY `tag` (`tag`(60))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_me_follow_tag`
--

LOCK TABLES `spip_me_follow_tag` WRITE;
/*!40000 ALTER TABLE `spip_me_follow_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_me_follow_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_me_follow_url`
--

DROP TABLE IF EXISTS `spip_me_follow_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_me_follow_url` (
  `id_syndic` bigint(21) NOT NULL,
  `id_follow` bigint(21) NOT NULL,
  `date` datetime NOT NULL,
  KEY `id_syndic` (`id_syndic`),
  KEY `id_follow` (`id_follow`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_me_follow_url`
--

LOCK TABLES `spip_me_follow_url` WRITE;
/*!40000 ALTER TABLE `spip_me_follow_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_me_follow_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_me_recherche`
--

DROP TABLE IF EXISTS `spip_me_recherche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_me_recherche` (
  `id_me` bigint(21) NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL,
  `date` datetime NOT NULL,
  `id_auteur` bigint(21) NOT NULL,
  `titre` text NOT NULL,
  `texte` longtext NOT NULL,
  `troll` bigint(21) NOT NULL,
  PRIMARY KEY (`id_me`),
  KEY `uuid` (`uuid`),
  KEY `id_auteur` (`id_auteur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_me_recherche`
--

LOCK TABLES `spip_me_recherche` WRITE;
/*!40000 ALTER TABLE `spip_me_recherche` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_me_recherche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_me_share`
--

DROP TABLE IF EXISTS `spip_me_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_me_share` (
  `id_me` bigint(20) NOT NULL,
  `id_auteur` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `id_me` (`id_me`),
  KEY `id_auteur` (`id_auteur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_me_share`
--

LOCK TABLES `spip_me_share` WRITE;
/*!40000 ALTER TABLE `spip_me_share` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_me_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_me_syndic`
--

DROP TABLE IF EXISTS `spip_me_syndic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_me_syndic` (
  `id_me` bigint(21) NOT NULL,
  `id_syndic` bigint(21) NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  KEY `date` (`date`),
  KEY `id_me` (`id_me`),
  KEY `id_syndic` (`id_syndic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_me_syndic`
--

LOCK TABLES `spip_me_syndic` WRITE;
/*!40000 ALTER TABLE `spip_me_syndic` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_me_syndic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_me_tags`
--

DROP TABLE IF EXISTS `spip_me_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_me_tags` (
  `id_me` bigint(21) NOT NULL DEFAULT '0',
  `uuid` char(36) NOT NULL DEFAULT '',
  `tag` text NOT NULL,
  `class` char(6) NOT NULL DEFAULT '',
  `date` datetime NOT NULL,
  `relevance` int(11) NOT NULL,
  `off` char(3) NOT NULL DEFAULT 'non',
  KEY `uuid` (`uuid`),
  KEY `date` (`date`),
  KEY `id_me` (`id_me`),
  KEY `tag` (`tag`(60))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_me_tags`
--

LOCK TABLES `spip_me_tags` WRITE;
/*!40000 ALTER TABLE `spip_me_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_me_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_me_texte`
--

DROP TABLE IF EXISTS `spip_me_texte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_me_texte` (
  `id_me` bigint(21) NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL,
  `texte` longtext NOT NULL,
  PRIMARY KEY (`id_me`),
  KEY `uuid` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_me_texte`
--

LOCK TABLES `spip_me_texte` WRITE;
/*!40000 ALTER TABLE `spip_me_texte` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_me_texte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_messages`
--

DROP TABLE IF EXISTS `spip_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_messages` (
  `id_message` bigint(21) NOT NULL AUTO_INCREMENT,
  `titre` text NOT NULL,
  `texte` longtext NOT NULL,
  `type` varchar(6) NOT NULL DEFAULT '',
  `date_heure` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_fin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rv` varchar(3) NOT NULL DEFAULT '',
  `statut` varchar(6) NOT NULL DEFAULT '0',
  `id_auteur` bigint(21) NOT NULL,
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_message`),
  KEY `id_auteur` (`id_auteur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_messages`
--

LOCK TABLES `spip_messages` WRITE;
/*!40000 ALTER TABLE `spip_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_meta`
--

DROP TABLE IF EXISTS `spip_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_meta` (
  `nom` varchar(255) NOT NULL,
  `valeur` text,
  `impt` enum('non','oui') NOT NULL DEFAULT 'oui',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`nom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_meta`
--

LOCK TABLES `spip_meta` WRITE;
/*!40000 ALTER TABLE `spip_meta` DISABLE KEYS */;
INSERT INTO `spip_meta` VALUES ('charset_sql_base','utf8','non','2017-02-25 20:40:41'),('charset_collation_sql_base','utf8_general_ci','non','2017-02-25 20:40:41'),('charset_sql_connexion','utf8','non','2017-02-25 20:40:41'),('version_installee','15830','non','2017-02-25 20:40:41'),('nouvelle_install','1','non','2017-02-25 20:40:41'),('pcre_u','','oui','2017-02-25 20:41:03'),('charset','utf-8','oui','2017-02-25 20:41:03'),('alea_ephemere_ancien','7317d97d678ce6ce29c14232026c640f','non','2017-02-27 00:26:35'),('alea_ephemere','19c02e036ba0257946e8e7331de2c72b','non','2017-02-27 00:26:35'),('alea_ephemere_date','1488155195','non','2017-02-27 00:26:35'),('langues_proposees','ar,ast,bg,br,bs,ca,cpf,cpf_hat,cs,da,de,en,eo,es,eu,fa,fon,fr,gl,hu,id,it,it_fem,ja,km,lb,my,nl,oc_auv,oc_gsc,oc_lms,oc_lnc,oc_ni,oc_ni_la,oc_prv,oc_va,pl,pt,pt_br,ro,ru,sv,tr,vi,zh','non','2017-02-25 20:41:04'),('langue_site','fr','non','2017-02-25 20:41:04'),('email_webmaster','cyp@debile.ddns.net','oui','2017-02-25 20:41:04'),('nom_site','My SPIP site','oui','2017-02-25 20:41:04'),('adresse_site','https://debile.ddns.net/seenthis','non','2017-02-27 00:26:36'),('descriptif_site','','oui','2017-02-25 20:41:04'),('activer_breves','non','oui','2017-02-25 20:41:04'),('activer_logos','oui','oui','2017-02-25 20:41:04'),('activer_logos_survol','non','oui','2017-02-25 20:41:04'),('config_precise_groupes','non','oui','2017-02-25 20:41:04'),('mots_cles_forums','non','oui','2017-02-25 20:41:04'),('articles_surtitre','non','oui','2017-02-25 20:41:04'),('articles_soustitre','non','oui','2017-02-25 20:41:04'),('articles_descriptif','non','oui','2017-02-25 20:41:04'),('articles_chapeau','non','oui','2017-02-25 20:41:04'),('articles_texte','oui','oui','2017-02-25 20:41:04'),('articles_ps','non','oui','2017-02-25 20:41:04'),('articles_redac','non','oui','2017-02-25 20:41:04'),('articles_mots','non','oui','2017-02-25 20:41:04'),('post_dates','non','oui','2017-02-25 20:41:04'),('articles_urlref','non','oui','2017-02-25 20:41:04'),('articles_redirection','non','oui','2017-02-25 20:41:04'),('creer_preview','non','non','2017-02-27 00:26:36'),('taille_preview','150','non','2017-02-27 00:26:36'),('articles_modif','non','oui','2017-02-25 20:41:04'),('rubriques_descriptif','non','oui','2017-02-25 20:41:04'),('rubriques_texte','oui','oui','2017-02-25 20:41:04'),('forums_titre','oui','oui','2017-02-25 20:41:04'),('forums_texte','oui','oui','2017-02-25 20:41:04'),('forums_urlref','non','oui','2017-02-25 20:41:04'),('forums_afficher_barre','oui','oui','2017-02-25 20:41:04'),('formats_documents_forum','','oui','2017-02-25 20:41:04'),('activer_sites','non','oui','2017-02-25 20:41:04'),('proposer_sites','0','oui','2017-02-25 20:41:04'),('activer_syndic','oui','oui','2017-02-25 20:41:04'),('moderation_sites','non','oui','2017-02-25 20:41:04'),('forums_publics','posteriori','oui','2017-02-25 20:41:04'),('accepter_inscriptions','oui','oui','2017-02-27 01:10:04'),('accepter_visiteurs','non','oui','2017-02-25 20:41:04'),('prevenir_auteurs','non','oui','2017-02-25 20:41:04'),('suivi_edito','non','oui','2017-02-25 20:41:04'),('adresse_suivi','','oui','2017-02-25 20:41:04'),('adresse_suivi_inscription','','oui','2017-02-25 20:41:04'),('adresse_neuf','','oui','2017-02-25 20:41:04'),('jours_neuf','','oui','2017-02-25 20:41:04'),('quoi_de_neuf','non','oui','2017-02-25 20:41:04'),('forum_prive','oui','oui','2017-02-25 20:41:04'),('forum_prive_objets','oui','oui','2017-02-25 20:41:04'),('forum_prive_admin','non','oui','2017-02-25 20:41:04'),('messagerie_agenda','oui','oui','2017-02-25 20:41:04'),('articles_versions','non','oui','2017-02-25 20:41:04'),('activer_statistiques','non','oui','2017-02-25 20:41:04'),('activer_captures_referers','non','oui','2017-02-25 20:41:04'),('documents_article','oui','oui','2017-02-25 20:41:04'),('documents_rubrique','non','oui','2017-02-25 20:41:04'),('documents_date','non','oui','2017-02-25 20:41:04'),('syndication_integrale','oui','oui','2017-02-25 20:41:04'),('dir_img','IMG/','oui','2017-02-25 20:41:04'),('multi_articles','non','oui','2017-02-25 20:41:04'),('multi_rubriques','non','oui','2017-02-25 20:41:04'),('multi_secteurs','non','oui','2017-02-25 20:41:04'),('gerer_trad','non','oui','2017-02-25 20:41:04'),('langues_multilingue','','oui','2017-02-25 20:41:04'),('type_urls','page','oui','2017-02-25 20:41:04'),('email_envoi','','oui','2017-02-25 20:41:04'),('auto_compress_http','non','oui','2017-02-25 20:41:04'),('auto_compress_js','non','oui','2017-02-25 20:41:04'),('auto_compress_css','non','oui','2017-02-25 20:41:04'),('iecompat','ifixpng','oui','2017-02-25 20:41:04'),('barre_outils_public','oui','oui','2017-02-25 20:41:04'),('auto_compress_closure','non','oui','2017-02-25 20:41:04'),('langues_utilisees','fr','oui','2017-02-25 20:41:04'),('plugin','a:29:{s:6:\"IMAGES\";a:5:{s:3:\"nom\";s:26:\"Filtres Images et Couleurs\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:15:\"_DIR_EXTENSIONS\";s:3:\"dir\";s:14:\"filtres_images\";s:7:\"version\";s:5:\"1.0.1\";}s:11:\"MSIE_COMPAT\";a:5:{s:3:\"nom\";s:90:\"<multi>[fr]Support vieux navigateurs[de]Unterst&#252;tzung &#228;lterer Webbrowser</multi>\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:15:\"_DIR_EXTENSIONS\";s:3:\"dir\";s:11:\"msie_compat\";s:7:\"version\";s:5:\"1.0.0\";}s:11:\"PORTE_PLUME\";a:5:{s:3:\"nom\";s:100:\"<multi>[fr]Porte plume[en]Quill[ar]&#1575;&#1604;&#1585;&#1610;&#1588;&#1577;[de]Federhalter</multi>\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:15:\"_DIR_EXTENSIONS\";s:3:\"dir\";s:11:\"porte_plume\";s:7:\"version\";s:5:\"1.7.9\";}s:8:\"SAFEHTML\";a:5:{s:3:\"nom\";s:8:\"SafeHTML\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:15:\"_DIR_EXTENSIONS\";s:3:\"dir\";s:8:\"safehtml\";s:7:\"version\";s:5:\"1.3.7\";}s:9:\"VERTEBRES\";a:5:{s:3:\"nom\";s:14:\"Vert&#232;bres\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:15:\"_DIR_EXTENSIONS\";s:3:\"dir\";s:9:\"vertebres\";s:7:\"version\";s:5:\"1.0.0\";}s:15:\"INCLUREAJAXLOAD\";a:5:{s:3:\"nom\";s:22:\"AjaxLoad pour #INCLURE\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:16:\"inclure-ajaxload\";s:7:\"version\";s:5:\"1.4.0\";}s:12:\"ARBO_ANGLAIS\";a:5:{s:3:\"nom\";s:21:\" \n   Arbo en anglais\n \";s:4:\"etat\";s:4:\"test\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:12:\"arbo_anglais\";s:7:\"version\";s:3:\"0.1\";}s:3:\"CFG\";a:5:{s:3:\"nom\";s:3:\"CFG\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:3:\"cfg\";s:7:\"version\";s:6:\"1.16.1\";}s:13:\"CSS_IMBRIQUES\";a:5:{s:3:\"nom\";s:18:\"CSS imbriqu&#233;s\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:13:\"css_imbriques\";s:7:\"version\";s:5:\"3.3.1\";}s:11:\"CALCUL_DATE\";a:5:{s:3:\"nom\";s:26:\"Dates relatives dynamiques\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:23:\"date_relative_dynamique\";s:7:\"version\";s:5:\"1.4.0\";}s:15:\"DETECTER_LANGUE\";a:5:{s:3:\"nom\";s:32:\"D&#233;tecter la langue du texte\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:15:\"detecter_langue\";s:7:\"version\";s:5:\"1.0.0\";}s:7:\"SAISIES\";a:5:{s:3:\"nom\";s:64:\"<multi>[fr]Saisies pour formulaires[en]Entries for forms</multi>\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:19:\"saisies/branches/v1\";s:7:\"version\";s:7:\"1.42.10\";}s:8:\"FULLTEXT\";a:5:{s:3:\"nom\";s:8:\"Fulltext\";s:4:\"etat\";s:4:\"test\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:20:\"fulltext/branches/v1\";s:7:\"version\";s:5:\"0.8.5\";}s:8:\"GRAVATAR\";a:5:{s:3:\"nom\";s:8:\"Gravatar\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:8:\"gravatar\";s:7:\"version\";s:5:\"1.6.5\";}s:15:\"TYPO_GUILLEMETS\";a:5:{s:3:\"nom\";s:25:\"Guillemets typographiques\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:15:\"typo_guillemets\";s:7:\"version\";s:5:\"1.5.3\";}s:10:\"ITERATEURS\";a:5:{s:3:\"nom\";s:15:\"It&#233;rateurs\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:10:\"iterateurs\";s:7:\"version\";s:5:\"1.0.6\";}s:5:\"QUEUE\";a:5:{s:3:\"nom\";s:9:\"Job Queue\";s:4:\"etat\";s:4:\"test\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:9:\"job_queue\";s:7:\"version\";s:5:\"0.6.8\";}s:10:\"LIEN_COURT\";a:5:{s:3:\"nom\";s:10:\"Lien court\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:10:\"lien_court\";s:7:\"version\";s:5:\"1.1.0\";}s:8:\"MEDIABOX\";a:5:{s:3:\"nom\";s:140:\"<multi>\r\n      [fr]MediaBox\r\n      [en]MediaBox\r\n      [ar]&#1589;&#1606;&#1583;&#1608;&#1602; &#1575;&#1604;&#1601;&#1585;&#1580;&#1577;\r\n    </multi>\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:8:\"mediabox\";s:7:\"version\";s:6:\"0.6.10\";}s:11:\"MEMOIZATION\";a:5:{s:3:\"nom\";s:11:\"Memoization\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:11:\"memoization\";s:7:\"version\";s:5:\"1.6.0\";}s:10:\"MICROCACHE\";a:5:{s:3:\"nom\";s:10:\"Microcache\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:10:\"microcache\";s:7:\"version\";s:5:\"1.1.0\";}s:10:\"OPENSEARCH\";a:5:{s:3:\"nom\";s:10:\"OpenSearch\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:10:\"opensearch\";s:7:\"version\";s:5:\"0.2.2\";}s:17:\"RECUPERER_FAVICON\";a:5:{s:3:\"nom\";s:31:\"R&eacute;cup&eacute;rer Favicon\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:17:\"recuperer_favicon\";s:7:\"version\";s:5:\"1.0.1\";}s:8:\"SEENTHIS\";a:5:{s:3:\"nom\";s:8:\"Seenthis\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:8:\"seenthis\";s:7:\"version\";s:5:\"1.0.5\";}s:10:\"SEENTHISOC\";a:5:{s:3:\"nom\";s:21:\"Seenthis - OpenCalais\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:19:\"seenthis_opencalais\";s:7:\"version\";s:5:\"1.0.2\";}s:22:\"SEENTHIS_IMPORTER_FLUX\";a:5:{s:3:\"nom\";s:38:\"Seenthis Importer flux RSS des auteurs\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:22:\"seenthis_importer_flux\";s:7:\"version\";s:3:\"1.0\";}s:10:\"SEENTHISSQ\";a:5:{s:3:\"nom\";s:19:\"Squelettes Seenthis\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:19:\"seenthis_squelettes\";s:7:\"version\";s:5:\"1.0.3\";}s:2:\"TW\";a:5:{s:3:\"nom\";s:9:\"TextWheel\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:12:\"_DIR_PLUGINS\";s:3:\"dir\";s:9:\"textwheel\";s:7:\"version\";s:5:\"0.8.8\";}s:11:\"COMPRESSEUR\";a:5:{s:3:\"nom\";s:11:\"Compresseur\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:15:\"_DIR_EXTENSIONS\";s:3:\"dir\";s:11:\"compresseur\";s:7:\"version\";s:5:\"1.0.2\";}}','non','2017-02-27 00:41:05'),('plugin_header','images(1.0.1),msie_compat(1.0.0),porte_plume(1.7.9),safehtml(1.3.7),vertebres(1.0.0),inclureajaxload(1.4.0),arbo_anglais(0.1),cfg(1.16.1),css_imbriques(3.3.1),calcul_date(1.4.0),detecter_langue(1.0.0),saisies(1.42.10),fulltext(0.8.5),gravatar(1.6.5),typo_guillemets(1.5.3),iterateurs(1.0.6),queue(0.6.8),lien_court(1.1.0),mediabox(0.6.10),memoization(1.6.0),microcache(1.1.0),opensearch(0.2.2),recuperer_favicon(1.0.1),seenthis(1.0.5),seenthisoc(1.0.2),seenthis_importer_flux(1.0),seenthissq(1.0.3),tw(0.8.8),compresseur(1.0.2)','non','2017-02-27 00:41:05'),('plugin_installes','a:5:{i:0;s:20:\"fulltext/branches/v1\";i:1;s:9:\"job_queue\";i:2;s:8:\"seenthis\";i:3;s:19:\"seenthis_opencalais\";i:4;s:22:\"seenthis_importer_flux\";}','non','2017-02-27 00:56:58'),('secret_du_site','14630e65367e5078308b012e70a32a6312823c07e3731f6296fa329993fdc28b','oui','2017-02-25 20:41:24'),('tour_quota_cache','4','oui','2017-02-27 01:08:50'),('optimiser_table','1','non','2017-02-27 01:08:49'),('info_maj_spip','2.1.29|3.1.3','oui','2017-02-27 00:28:31'),('derniere_modif_auteur','1488155371','oui','2017-02-27 00:29:31'),('derniere_modif','1488157836','non','2017-02-27 01:10:36'),('Fulltext_base_version','0.2','oui','2017-02-27 00:31:42'),('queue_base_version','0.3.4','oui','2017-02-27 00:31:43'),('seenthis_importer_flux_base_version','1.0.0','oui','2017-02-27 00:31:43'),('plugins_interessants','a:23:{s:16:\"inclure-ajaxload\";i:10;s:12:\"arbo_anglais\";i:10;s:3:\"cfg\";i:10;s:13:\"css_imbriques\";i:10;s:23:\"date_relative_dynamique\";i:10;s:15:\"detecter_langue\";i:10;s:19:\"saisies/branches/v1\";i:10;s:20:\"fulltext/branches/v1\";i:10;s:8:\"gravatar\";i:10;s:15:\"typo_guillemets\";i:10;s:10:\"iterateurs\";i:10;s:9:\"job_queue\";i:10;s:10:\"lien_court\";i:10;s:8:\"mediabox\";i:10;s:10:\"microcache\";i:10;s:10:\"opensearch\";i:10;s:17:\"recuperer_favicon\";i:10;s:8:\"seenthis\";i:10;s:19:\"seenthis_opencalais\";i:10;s:22:\"seenthis_importer_flux\";i:10;s:19:\"seenthis_squelettes\";i:10;s:9:\"textwheel\";i:10;s:11:\"memoization\";i:10;}','oui','2017-02-27 00:41:08'),('cache_namespace','72677fd7','oui','2017-02-27 00:41:08'),('seenthis_base_version','1.1.3','oui','2017-02-27 00:56:58'),('seenthisoc_base_version','1.0.2','oui','2017-02-27 00:56:58'),('gd_formats_read','gif,jpg,png','non','2017-02-27 01:08:55'),('gd_formats','gif,jpg,png','non','2017-02-27 01:08:55'),('netpbm_formats','','non','2017-02-27 01:08:55'),('formats_graphiques','gif,jpg,png','non','2017-02-27 01:09:28'),('image_process','gd2','non','2017-02-27 01:09:28'),('max_taille_vignettes','9000000','oui','2017-02-27 01:09:03'),('gravatar_salt','32b9eab44eabe966fe625dd3d31f5386a01237778065b9fed6f357ae05996a62','oui','2017-02-27 01:10:23'),('gravatar','a:2:{s:12:\"image_defaut\";s:3:\"404\";s:6:\"taille\";s:2:\"48\";}','oui','2017-02-27 01:10:36');
/*!40000 ALTER TABLE `spip_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_mots`
--

DROP TABLE IF EXISTS `spip_mots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_mots` (
  `id_mot` bigint(21) NOT NULL AUTO_INCREMENT,
  `titre` text NOT NULL,
  `descriptif` text NOT NULL,
  `texte` longtext NOT NULL,
  `id_groupe` bigint(21) NOT NULL DEFAULT '0',
  `type` text NOT NULL,
  `extra` longtext,
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_mot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_mots`
--

LOCK TABLES `spip_mots` WRITE;
/*!40000 ALTER TABLE `spip_mots` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_mots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_mots_articles`
--

DROP TABLE IF EXISTS `spip_mots_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_mots_articles` (
  `id_mot` bigint(21) NOT NULL DEFAULT '0',
  `id_article` bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_article`,`id_mot`),
  KEY `id_mot` (`id_mot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_mots_articles`
--

LOCK TABLES `spip_mots_articles` WRITE;
/*!40000 ALTER TABLE `spip_mots_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_mots_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_mots_breves`
--

DROP TABLE IF EXISTS `spip_mots_breves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_mots_breves` (
  `id_mot` bigint(21) NOT NULL DEFAULT '0',
  `id_breve` bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_breve`,`id_mot`),
  KEY `id_mot` (`id_mot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_mots_breves`
--

LOCK TABLES `spip_mots_breves` WRITE;
/*!40000 ALTER TABLE `spip_mots_breves` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_mots_breves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_mots_documents`
--

DROP TABLE IF EXISTS `spip_mots_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_mots_documents` (
  `id_mot` bigint(21) NOT NULL DEFAULT '0',
  `id_document` bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_document`,`id_mot`),
  KEY `id_mot` (`id_mot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_mots_documents`
--

LOCK TABLES `spip_mots_documents` WRITE;
/*!40000 ALTER TABLE `spip_mots_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_mots_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_mots_forum`
--

DROP TABLE IF EXISTS `spip_mots_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_mots_forum` (
  `id_mot` bigint(21) NOT NULL DEFAULT '0',
  `id_forum` bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_forum`,`id_mot`),
  KEY `id_mot` (`id_mot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_mots_forum`
--

LOCK TABLES `spip_mots_forum` WRITE;
/*!40000 ALTER TABLE `spip_mots_forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_mots_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_mots_rubriques`
--

DROP TABLE IF EXISTS `spip_mots_rubriques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_mots_rubriques` (
  `id_mot` bigint(21) NOT NULL DEFAULT '0',
  `id_rubrique` bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_rubrique`,`id_mot`),
  KEY `id_mot` (`id_mot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_mots_rubriques`
--

LOCK TABLES `spip_mots_rubriques` WRITE;
/*!40000 ALTER TABLE `spip_mots_rubriques` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_mots_rubriques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_mots_syndic`
--

DROP TABLE IF EXISTS `spip_mots_syndic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_mots_syndic` (
  `id_mot` bigint(21) NOT NULL DEFAULT '0',
  `id_syndic` bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_syndic`,`id_mot`),
  KEY `id_mot` (`id_mot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_mots_syndic`
--

LOCK TABLES `spip_mots_syndic` WRITE;
/*!40000 ALTER TABLE `spip_mots_syndic` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_mots_syndic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_petitions`
--

DROP TABLE IF EXISTS `spip_petitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_petitions` (
  `id_article` bigint(21) NOT NULL DEFAULT '0',
  `email_unique` char(3) NOT NULL DEFAULT '',
  `site_obli` char(3) NOT NULL DEFAULT '',
  `site_unique` char(3) NOT NULL DEFAULT '',
  `message` char(3) NOT NULL DEFAULT '',
  `texte` longtext NOT NULL,
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_article`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_petitions`
--

LOCK TABLES `spip_petitions` WRITE;
/*!40000 ALTER TABLE `spip_petitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_petitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_referers`
--

DROP TABLE IF EXISTS `spip_referers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_referers` (
  `referer_md5` bigint(20) unsigned NOT NULL,
  `date` date NOT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `visites` int(10) unsigned NOT NULL,
  `visites_jour` int(10) unsigned NOT NULL,
  `visites_veille` int(10) unsigned NOT NULL,
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`referer_md5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_referers`
--

LOCK TABLES `spip_referers` WRITE;
/*!40000 ALTER TABLE `spip_referers` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_referers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_referers_articles`
--

DROP TABLE IF EXISTS `spip_referers_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_referers_articles` (
  `id_article` int(10) unsigned NOT NULL,
  `referer_md5` bigint(20) unsigned NOT NULL,
  `referer` varchar(255) NOT NULL DEFAULT '',
  `visites` int(10) unsigned NOT NULL,
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_article`,`referer_md5`),
  KEY `referer_md5` (`referer_md5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_referers_articles`
--

LOCK TABLES `spip_referers_articles` WRITE;
/*!40000 ALTER TABLE `spip_referers_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_referers_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_resultats`
--

DROP TABLE IF EXISTS `spip_resultats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_resultats` (
  `recherche` char(16) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL,
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_resultats`
--

LOCK TABLES `spip_resultats` WRITE;
/*!40000 ALTER TABLE `spip_resultats` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_resultats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_rubriques`
--

DROP TABLE IF EXISTS `spip_rubriques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_rubriques` (
  `id_rubrique` bigint(21) NOT NULL AUTO_INCREMENT,
  `id_parent` bigint(21) NOT NULL DEFAULT '0',
  `titre` text NOT NULL,
  `descriptif` text NOT NULL,
  `texte` longtext NOT NULL,
  `id_secteur` bigint(21) NOT NULL DEFAULT '0',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `export` varchar(10) DEFAULT 'oui',
  `id_import` bigint(20) DEFAULT '0',
  `statut` varchar(10) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(10) NOT NULL DEFAULT '',
  `langue_choisie` varchar(3) DEFAULT 'non',
  `extra` longtext,
  `statut_tmp` varchar(10) NOT NULL DEFAULT '0',
  `date_tmp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_rubrique`),
  KEY `lang` (`lang`),
  KEY `id_parent` (`id_parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_rubriques`
--

LOCK TABLES `spip_rubriques` WRITE;
/*!40000 ALTER TABLE `spip_rubriques` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_rubriques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_signatures`
--

DROP TABLE IF EXISTS `spip_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_signatures` (
  `id_signature` bigint(21) NOT NULL AUTO_INCREMENT,
  `id_article` bigint(21) NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nom_email` text NOT NULL,
  `ad_email` text NOT NULL,
  `nom_site` text NOT NULL,
  `url_site` text NOT NULL,
  `message` mediumtext NOT NULL,
  `statut` varchar(10) NOT NULL DEFAULT '0',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_signature`),
  KEY `id_article` (`id_article`),
  KEY `statut` (`statut`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_signatures`
--

LOCK TABLES `spip_signatures` WRITE;
/*!40000 ALTER TABLE `spip_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_syndic`
--

DROP TABLE IF EXISTS `spip_syndic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_syndic` (
  `id_syndic` bigint(21) NOT NULL AUTO_INCREMENT,
  `id_rubrique` bigint(21) NOT NULL DEFAULT '0',
  `id_secteur` bigint(21) NOT NULL DEFAULT '0',
  `nom_site` text NOT NULL,
  `url_site` text NOT NULL,
  `url_syndic` text NOT NULL,
  `descriptif` text NOT NULL,
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `syndication` varchar(3) NOT NULL DEFAULT '',
  `statut` varchar(10) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_syndic` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_index` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extra` longtext,
  `moderation` varchar(3) DEFAULT 'non',
  `miroir` varchar(3) DEFAULT 'non',
  `oubli` varchar(3) DEFAULT 'non',
  `resume` varchar(3) DEFAULT 'oui',
  `recup` int(11) NOT NULL DEFAULT '0',
  `id_parent` bigint(21) DEFAULT NULL,
  `titre` text NOT NULL,
  `texte` longtext NOT NULL,
  `lang` varchar(10) NOT NULL,
  `md5` char(32) DEFAULT NULL,
  PRIMARY KEY (`id_syndic`),
  KEY `id_rubrique` (`id_rubrique`),
  KEY `id_secteur` (`id_secteur`),
  KEY `statut` (`statut`,`date_syndic`),
  KEY `id_parent` (`id_parent`),
  KEY `url` (`url_site`(255)),
  KEY `md5` (`md5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_syndic`
--

LOCK TABLES `spip_syndic` WRITE;
/*!40000 ALTER TABLE `spip_syndic` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_syndic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_syndic_articles`
--

DROP TABLE IF EXISTS `spip_syndic_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_syndic_articles` (
  `id_syndic_article` bigint(21) NOT NULL AUTO_INCREMENT,
  `id_syndic` bigint(21) NOT NULL DEFAULT '0',
  `titre` text NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lesauteurs` text NOT NULL,
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `statut` varchar(10) NOT NULL DEFAULT '0',
  `descriptif` text NOT NULL,
  `lang` varchar(10) NOT NULL DEFAULT '',
  `url_source` tinytext NOT NULL,
  `source` tinytext NOT NULL,
  `tags` text NOT NULL,
  PRIMARY KEY (`id_syndic_article`),
  KEY `id_syndic` (`id_syndic`),
  KEY `statut` (`statut`),
  KEY `url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_syndic_articles`
--

LOCK TABLES `spip_syndic_articles` WRITE;
/*!40000 ALTER TABLE `spip_syndic_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_syndic_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_traductions`
--

DROP TABLE IF EXISTS `spip_traductions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_traductions` (
  `hash` varchar(32) NOT NULL,
  `langue` varchar(5) NOT NULL,
  `texte` text NOT NULL,
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_traductions`
--

LOCK TABLES `spip_traductions` WRITE;
/*!40000 ALTER TABLE `spip_traductions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_traductions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_types_documents`
--

DROP TABLE IF EXISTS `spip_types_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_types_documents` (
  `extension` varchar(10) NOT NULL DEFAULT '',
  `titre` text NOT NULL,
  `descriptif` text NOT NULL,
  `mime_type` varchar(100) NOT NULL DEFAULT '',
  `inclus` enum('non','image','embed') NOT NULL DEFAULT 'non',
  `upload` enum('oui','non') NOT NULL DEFAULT 'oui',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`extension`),
  KEY `inclus` (`inclus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_types_documents`
--

LOCK TABLES `spip_types_documents` WRITE;
/*!40000 ALTER TABLE `spip_types_documents` DISABLE KEYS */;
INSERT INTO `spip_types_documents` VALUES ('jpg','JPEG','','image/jpeg','image','oui','2017-02-27 00:26:20'),('png','PNG','','image/png','image','oui','2017-02-27 00:26:20'),('gif','GIF','','image/gif','image','oui','2017-02-27 00:26:20'),('bmp','BMP','','image/x-ms-bmp','image','oui','2017-02-27 00:26:20'),('tif','TIFF','','image/tiff','image','oui','2017-02-27 00:26:20'),('aac','Advanced Audio Coding','','audio/mp4a-latm','embed','oui','2017-02-27 00:26:20'),('ac3','AC-3 Compressed Audio','','audio/x-aac','embed','oui','2017-02-27 00:26:20'),('aifc','Compressed AIFF Audio','','audio/x-aifc','embed','oui','2017-02-27 00:26:20'),('aiff','AIFF','','audio/x-aiff','embed','oui','2017-02-27 00:26:20'),('amr','Adaptive Multi-Rate Audio','','audio/amr','embed','oui','2017-02-27 00:26:20'),('ape','Monkey\'s Audio File','','audio/x-monkeys-audio','embed','oui','2017-02-27 00:26:20'),('asf','Windows Media','','video/x-ms-asf','embed','oui','2017-02-27 00:26:20'),('avi','AVI','','video/x-msvideo','embed','oui','2017-02-27 00:26:20'),('anx','Annodex','','application/annodex','embed','oui','2017-02-27 00:26:20'),('axa','Annodex Audio','','audio/annodex','embed','oui','2017-02-27 00:26:20'),('axv','Annodex Video','','video/annodex','embed','oui','2017-02-27 00:26:20'),('dv','Digital Video','','video/x-dv','embed','oui','2017-02-27 00:26:20'),('f4a','Audio for Adobe Flash Player','','audio/mp4','embed','oui','2017-02-27 00:26:20'),('f4b','Audio Book for Adobe Flash Player','','audio/mp4','embed','oui','2017-02-27 00:26:20'),('f4p','Protected Video for Adobe Flash Player','','video/mp4','embed','oui','2017-02-27 00:26:20'),('f4v','Video for Adobe Flash Player','','video/mp4','embed','oui','2017-02-27 00:26:20'),('flac','Free Lossless Audio Codec','','audio/x-flac','embed','oui','2017-02-27 00:26:20'),('flv','Flash Video','','video/x-flv','embed','oui','2017-02-27 00:26:20'),('m2p','MPEG-PS','','video/MP2P','embed','oui','2017-02-27 00:26:20'),('m2ts','BDAV MPEG-2 Transport Stream','','video/MP2T','embed','oui','2017-02-27 00:26:20'),('m4a','MPEG4 Audio','','audio/mp4a-latm','embed','oui','2017-02-27 00:26:20'),('m4b','MPEG4 Audio','','audio/mp4a-latm','embed','oui','2017-02-27 00:26:20'),('m4p','MPEG4 Audio','','audio/mp4a-latm','embed','oui','2017-02-27 00:26:20'),('m4r','iPhone Ringtone','','audio/aac','embed','oui','2017-02-27 00:26:20'),('m4u','MPEG4 Playlist','','video/vnd.mpegurl','non','oui','2017-02-27 00:26:20'),('m4v','MPEG4 Video','','video/x-m4v','embed','oui','2017-02-27 00:26:20'),('mid','Midi','','audio/midi','embed','oui','2017-02-27 00:26:20'),('mka','Matroska Audio','','audio/mka','embed','oui','2017-02-27 00:26:20'),('mkv','Matroska Video','','video/mkv','embed','oui','2017-02-27 00:26:20'),('mng','MNG','','video/x-mng','embed','oui','2017-02-27 00:26:20'),('mov','QuickTime','','video/quicktime','embed','oui','2017-02-27 00:26:20'),('mp3','MP3','','audio/mpeg','embed','oui','2017-02-27 00:26:20'),('mp4','MPEG4','','application/mp4','embed','oui','2017-02-27 00:26:20'),('mpc','Musepack','','audio/x-musepack','embed','oui','2017-02-27 00:26:20'),('mts','AVCHD MPEG-2 transport stream','','video/MP2T','embed','oui','2017-02-27 00:26:20'),('mpg','MPEG','','video/mpeg','embed','oui','2017-02-27 00:26:20'),('oga','Ogg Audio','','audio/ogg','embed','oui','2017-02-27 00:26:20'),('ogg','Ogg Vorbis','','audio/ogg','embed','oui','2017-02-27 00:26:20'),('ogv','Ogg Video','','video/ogg','embed','oui','2017-02-27 00:26:20'),('ogx','Ogg Multiplex','','application/ogg','embed','oui','2017-02-27 00:26:20'),('qt','QuickTime','','video/quicktime','embed','oui','2017-02-27 00:26:20'),('ra','RealAudio','','audio/x-pn-realaudio','embed','oui','2017-02-27 00:26:20'),('ram','RealAudio','','audio/x-pn-realaudio','embed','oui','2017-02-27 00:26:20'),('rm','RealAudio','','audio/x-pn-realaudio','embed','oui','2017-02-27 00:26:20'),('spx','Ogg Speex','','audio/ogg','embed','oui','2017-02-27 00:26:20'),('svg','Scalable Vector Graphics','','image/svg+xml','embed','oui','2017-02-27 00:26:20'),('svgz','Compressed Scalable Vector Graphic','','image/svg+xml','embed','oui','2017-02-27 00:26:20'),('swf','Flash','','application/x-shockwave-flash','embed','oui','2017-02-27 00:26:20'),('ts','MPEG transport stream','','video/MP2T','embed','oui','2017-02-27 00:26:20'),('wav','WAV','','audio/x-wav','embed','oui','2017-02-27 00:26:20'),('webm','WebM','','video/webm','embed','oui','2017-02-27 00:26:20'),('wma','Windows Media Audio','','audio/x-ms-wma','embed','oui','2017-02-27 00:26:20'),('wmv','Windows Media Video','','video/x-ms-wmv','embed','oui','2017-02-27 00:26:20'),('y4m','YUV4MPEG2','','video/x-raw-yuv','embed','oui','2017-02-27 00:26:20'),('3ga','3GP Audio File','','audio/3ga','embed','oui','2017-02-27 00:26:20'),('3gp','3rd Generation Partnership Project','','video/3gpp','embed','oui','2017-02-27 00:26:20'),('7z','7 Zip','','application/x-7z-compressed','non','oui','2017-02-27 00:26:20'),('ai','Adobe Illustrator','','application/illustrator','non','oui','2017-02-27 00:26:20'),('abw','Abiword','','application/abiword','non','oui','2017-02-27 00:26:20'),('asx','Advanced Stream Redirector','','video/x-ms-asf','non','oui','2017-02-27 00:26:20'),('bib','BibTeX','','application/x-bibtex','non','oui','2017-02-27 00:26:20'),('bin','Binary Data','','application/octet-stream','non','oui','2017-02-27 00:26:20'),('blend','Blender','','application/x-blender','non','oui','2017-02-27 00:26:20'),('bz2','BZip','','application/x-bzip2','non','oui','2017-02-27 00:26:20'),('c','C source','','text/x-csrc','non','oui','2017-02-27 00:26:20'),('csl','Citation Style Language','','application/xml','non','oui','2017-02-27 00:26:20'),('css','Cascading Style Sheet','','text/css','non','oui','2017-02-27 00:26:20'),('csv','Comma Separated Values','','text/csv','non','oui','2017-02-27 00:26:20'),('deb','Debian','','application/x-debian-package','non','oui','2017-02-27 00:26:20'),('doc','Word','','application/msword','non','oui','2017-02-27 00:26:20'),('dot','Word Template','','application/msword','non','oui','2017-02-27 00:26:20'),('djvu','DjVu','','image/vnd.djvu','non','oui','2017-02-27 00:26:20'),('dvi','LaTeX DVI','','application/x-dvi','non','oui','2017-02-27 00:26:20'),('emf','Enhanced Metafile','','image/x-emf','non','oui','2017-02-27 00:26:20'),('enl','EndNote Library','','application/octet-stream','non','oui','2017-02-27 00:26:20'),('ens','EndNote Style','','application/octet-stream','non','oui','2017-02-27 00:26:20'),('eps','PostScript','','application/postscript','non','oui','2017-02-27 00:26:20'),('epub','ePub','','application/epub+zip','non','oui','2017-02-27 00:26:20'),('gpx','GPS eXchange Format','','application/gpx+xml','non','oui','2017-02-27 00:26:20'),('gz','GZ','','application/x-gzip','non','oui','2017-02-27 00:26:20'),('h','C header','','text/x-chdr','non','oui','2017-02-27 00:26:20'),('html','HTML','','text/html','non','oui','2017-02-27 00:26:20'),('jar','Java Archive','','application/java-archive','non','oui','2017-02-27 00:26:20'),('kml','Keyhole Markup Language','','application/vnd.google-earth.kml+xml','non','oui','2017-02-27 00:26:20'),('kmz','Google Earth Placemark File','','application/vnd.google-earth.kmz','non','oui','2017-02-27 00:26:20'),('lyx','Lyx file','','application/x-lyx','non','oui','2017-02-27 00:26:20'),('m3u','M3U Playlist','','text/plain','non','oui','2017-02-27 00:26:20'),('m3u8','M3U8 Playlist','','text/plain','non','oui','2017-02-27 00:26:20'),('mathml','MathML','','application/mathml+xml','non','oui','2017-02-27 00:26:20'),('pas','Pascal','','text/x-pascal','non','oui','2017-02-27 00:26:20'),('pdf','PDF','','application/pdf','non','oui','2017-02-27 00:26:20'),('pgn','Portable Game Notation','','application/x-chess-pgn','non','oui','2017-02-27 00:26:20'),('pls','Playlist','','text/plain','non','oui','2017-02-27 00:26:20'),('ppt','PowerPoint','','application/vnd.ms-powerpoint','non','oui','2017-02-27 00:26:20'),('pot','PowerPoint Template','','application/vnd.ms-powerpoint','non','oui','2017-02-27 00:26:20'),('ps','PostScript','','application/postscript','non','oui','2017-02-27 00:26:20'),('psd','Photoshop','','image/x-photoshop','non','oui','2017-02-27 00:26:20'),('rar','WinRAR','','application/x-rar-compressed','non','oui','2017-02-27 00:26:20'),('rdf','Resource Description Framework','','application/rdf+xml','non','oui','2017-02-27 00:26:20'),('ris','RIS','','application/x-research-info-systems','non','oui','2017-02-27 00:26:20'),('rpm','RedHat/Mandrake/SuSE','','application/x-redhat-package-manager','non','oui','2017-02-27 00:26:20'),('rtf','RTF','','application/rtf','non','oui','2017-02-27 00:26:20'),('sdc','StarOffice Spreadsheet','','application/vnd.stardivision.calc','non','oui','2017-02-27 00:26:20'),('sdd','StarOffice Presentation','','application/vnd.stardivision.impress','non','oui','2017-02-27 00:26:20'),('sdw','StarOffice Writer document','','application/vnd.stardivision.writer','non','oui','2017-02-27 00:26:20'),('sit','Stuffit','','application/x-stuffit','non','oui','2017-02-27 00:26:20'),('sla','Scribus','','application/x-scribus','non','oui','2017-02-27 00:26:20'),('srt','SubRip Subtitle','','text/plain','non','oui','2017-02-27 00:26:20'),('ssa','SubStation Alpha Subtitle','','text/plain','non','oui','2017-02-27 00:26:20'),('sxc','OpenOffice.org Calc','','application/vnd.sun.xml.calc','non','oui','2017-02-27 00:26:20'),('sxi','OpenOffice.org Impress','','application/vnd.sun.xml.impress','non','oui','2017-02-27 00:26:20'),('sxw','OpenOffice.org','','application/vnd.sun.xml.writer','non','oui','2017-02-27 00:26:20'),('tex','LaTeX','','text/x-tex','non','oui','2017-02-27 00:26:20'),('tgz','TGZ','','application/x-gtar','non','oui','2017-02-27 00:26:20'),('torrent','BitTorrent','','application/x-bittorrent','non','oui','2017-02-27 00:26:20'),('ttf','TTF Font','','application/x-font-ttf','non','oui','2017-02-27 00:26:20'),('txt','texte','','text/plain','non','oui','2017-02-27 00:26:20'),('usf','Universal Subtitle Format','','application/xml','non','oui','2017-02-27 00:26:20'),('xcf','GIMP multi-layer','','application/x-xcf','non','oui','2017-02-27 00:26:20'),('xls','Excel','','application/vnd.ms-excel','non','oui','2017-02-27 00:26:20'),('xlt','Excel Template','','application/vnd.ms-excel','non','oui','2017-02-27 00:26:20'),('xspf','XSPF','','application/xspf+xml','non','oui','2017-02-27 00:26:20'),('xml','XML','','application/xml','non','oui','2017-02-27 00:26:20'),('wmf','Windows Metafile','','image/x-emf','non','oui','2017-02-27 00:26:20'),('wpl','Windows Media Player Playlist','','application/vnd.ms-wpl','non','oui','2017-02-27 00:26:20'),('yaml','YAML','','text/yaml','non','oui','2017-02-27 00:26:20'),('zip','Zip','','application/zip','non','oui','2017-02-27 00:26:20'),('odt','opendocument text','','application/vnd.oasis.opendocument.text','non','oui','2017-02-27 00:26:20'),('ods','opendocument spreadsheet','','application/vnd.oasis.opendocument.spreadsheet','non','oui','2017-02-27 00:26:20'),('odp','opendocument presentation','','application/vnd.oasis.opendocument.presentation','non','oui','2017-02-27 00:26:20'),('odg','opendocument graphics','','application/vnd.oasis.opendocument.graphics','non','oui','2017-02-27 00:26:20'),('odc','opendocument chart','','application/vnd.oasis.opendocument.chart','non','oui','2017-02-27 00:26:20'),('odf','opendocument formula','','application/vnd.oasis.opendocument.formula','non','oui','2017-02-27 00:26:20'),('odb','opendocument database','','application/vnd.oasis.opendocument.database','non','oui','2017-02-27 00:26:20'),('odi','opendocument image','','application/vnd.oasis.opendocument.image','non','oui','2017-02-27 00:26:20'),('odm','opendocument text-master','','application/vnd.oasis.opendocument.text-master','non','oui','2017-02-27 00:26:20'),('ott','opendocument text-template','','application/vnd.oasis.opendocument.text-template','non','oui','2017-02-27 00:26:20'),('ots','opendocument spreadsheet-template','','application/vnd.oasis.opendocument.spreadsheet-template','non','oui','2017-02-27 00:26:20'),('otp','opendocument presentation-template','','application/vnd.oasis.opendocument.presentation-template','non','oui','2017-02-27 00:26:20'),('otg','opendocument graphics-template','','application/vnd.oasis.opendocument.graphics-template','non','oui','2017-02-27 00:26:20'),('cls','LaTeX Class','','text/x-tex','non','oui','2017-02-27 00:26:20'),('sty','LaTeX Style Sheet','','text/x-tex','non','oui','2017-02-27 00:26:20'),('docm','Word','','application/vnd.ms-word.document.macroEnabled.12','non','oui','2017-02-27 00:26:20'),('docx','Word','','application/vnd.openxmlformats-officedocument.wordprocessingml.document','non','oui','2017-02-27 00:26:20'),('dotm','Word template','','application/vnd.ms-word.template.macroEnabled.12','non','oui','2017-02-27 00:26:20'),('dotx','Word template','','application/vnd.openxmlformats-officedocument.wordprocessingml.template','non','oui','2017-02-27 00:26:20'),('potm','Powerpoint template','','application/vnd.ms-powerpoint.template.macroEnabled.12','non','oui','2017-02-27 00:26:20'),('potx','Powerpoint template','','application/vnd.openxmlformats-officedocument.presentationml.template','non','oui','2017-02-27 00:26:20'),('ppam','Powerpoint addin','','application/vnd.ms-powerpoint.addin.macroEnabled.12','non','oui','2017-02-27 00:26:20'),('ppsm','Powerpoint slideshow','','application/vnd.ms-powerpoint.slideshow.macroEnabled.12','non','oui','2017-02-27 00:26:20'),('ppsx','Powerpoint slideshow','','application/vnd.openxmlformats-officedocument.presentationml.slideshow','non','oui','2017-02-27 00:26:20'),('pptm','Powerpoint','','application/vnd.ms-powerpoint.presentation.macroEnabled.12','non','oui','2017-02-27 00:26:20'),('pptx','Powerpoint','','application/vnd.openxmlformats-officedocument.presentationml.presentation','non','oui','2017-02-27 00:26:20'),('xlam','Excel','','application/vnd.ms-excel.addin.macroEnabled.12','non','oui','2017-02-27 00:26:20'),('xlsb','Excel binary','','application/vnd.ms-excel.sheet.binary.macroEnabled.12','non','oui','2017-02-27 00:26:20'),('xlsm','Excel','','application/vnd.ms-excel.sheet.macroEnabled.12','non','oui','2017-02-27 00:26:20'),('xlsx','Excel','','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','non','oui','2017-02-27 00:26:20'),('xltm','Excel template','','application/vnd.ms-excel.template.macroEnabled.12','non','oui','2017-02-27 00:26:20'),('xltx','Excel template','','application/vnd.openxmlformats-officedocument.spreadsheetml.template','non','oui','2017-02-27 00:26:20');
/*!40000 ALTER TABLE `spip_types_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_urls`
--

DROP TABLE IF EXISTS `spip_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_urls` (
  `url` varchar(255) NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT 'article',
  `id_objet` bigint(21) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`url`),
  KEY `type` (`type`,`id_objet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_urls`
--

LOCK TABLES `spip_urls` WRITE;
/*!40000 ALTER TABLE `spip_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_versions`
--

DROP TABLE IF EXISTS `spip_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_versions` (
  `id_article` bigint(21) NOT NULL,
  `id_version` bigint(21) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_auteur` varchar(23) NOT NULL DEFAULT '',
  `titre_version` text NOT NULL,
  `permanent` char(3) DEFAULT NULL,
  `champs` text,
  PRIMARY KEY (`id_article`,`id_version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_versions`
--

LOCK TABLES `spip_versions` WRITE;
/*!40000 ALTER TABLE `spip_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_versions_fragments`
--

DROP TABLE IF EXISTS `spip_versions_fragments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_versions_fragments` (
  `id_fragment` int(10) unsigned NOT NULL DEFAULT '0',
  `version_min` int(10) unsigned NOT NULL DEFAULT '0',
  `version_max` int(10) unsigned NOT NULL DEFAULT '0',
  `id_article` bigint(21) NOT NULL,
  `compress` tinyint(4) NOT NULL,
  `fragment` longblob,
  PRIMARY KEY (`id_article`,`id_fragment`,`version_min`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_versions_fragments`
--

LOCK TABLES `spip_versions_fragments` WRITE;
/*!40000 ALTER TABLE `spip_versions_fragments` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_versions_fragments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_visites`
--

DROP TABLE IF EXISTS `spip_visites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_visites` (
  `date` date NOT NULL,
  `visites` int(10) unsigned NOT NULL DEFAULT '0',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_visites`
--

LOCK TABLES `spip_visites` WRITE;
/*!40000 ALTER TABLE `spip_visites` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_visites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_visites_articles`
--

DROP TABLE IF EXISTS `spip_visites_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_visites_articles` (
  `date` date NOT NULL,
  `id_article` int(10) unsigned NOT NULL,
  `visites` int(10) unsigned NOT NULL DEFAULT '0',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`date`,`id_article`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_visites_articles`
--

LOCK TABLES `spip_visites_articles` WRITE;
/*!40000 ALTER TABLE `spip_visites_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_visites_articles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-27  1:28:30
