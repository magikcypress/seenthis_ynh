-- MySQL dump 10.15  Distrib 10.0.29-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: spip2    Database: spip2
-- ------------------------------------------------------
-- Server version	10.0.29-MariaDB-0+deb8u1

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
  PRIMARY KEY (`id_auteur`),
  KEY `login` (`login`),
  KEY `statut` (`statut`),
  KEY `en_ligne` (`en_ligne`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_auteurs`
--

LOCK TABLES `spip_auteurs` WRITE;
/*!40000 ALTER TABLE `spip_auteurs` DISABLE KEYS */;
INSERT INTO `spip_auteurs` VALUES (1,'__ADMIN_SPIP__','','__ADMIN_SPIP__@__DOMAIN__','','','__ADMIN_SPIP__','__DB_SHA__','','0minirezo','oui','2017-02-25 21:14:22','','__DB_PWD__','2017-02-25 21:14:22',NULL,NULL,'__ALEA_ACTUEL__','__ALEA_FUTUR__','a:1:{s:3:\"cnx\";s:0:\"\";}',NULL,'spip','__LANG_SPIP__',NULL);
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
INSERT INTO `spip_meta` VALUES ('charset_sql_base','utf8','non','2017-02-25 20:40:41'),('charset_collation_sql_base','utf8_general_ci','non','2017-02-25 20:40:41'),('charset_sql_connexion','utf8','non','2017-02-25 20:40:41'),('version_installee','15830','non','2017-02-25 20:40:41'),('nouvelle_install','1','non','2017-02-25 20:40:41'),('pcre_u','','oui','2017-02-25 20:41:03'),('charset','utf-8','oui','2017-02-25 20:41:03'),('alea_ephemere_ancien',NULL,'non','2017-02-25 20:41:04'),('alea_ephemere','7317d97d678ce6ce29c14232026c640f','non','2017-02-25 20:41:04'),('alea_ephemere_date','1488055263','non','2017-02-25 20:41:04'),('langues_proposees','ar,ast,bg,br,bs,ca,cpf,cpf_hat,cs,da,de,en,eo,es,eu,fa,fon,fr,gl,hu,id,it,it_fem,ja,km,lb,my,nl,oc_auv,oc_gsc,oc_lms,oc_lnc,oc_ni,oc_ni_la,oc_prv,oc_va,pl,pt,pt_br,ro,ru,sv,tr,vi,zh','non','2017-02-25 20:41:04'),('langue_site','fr','non','2017-02-25 20:41:04'),('email_webmaster','cyp@debile.ddns.net','oui','2017-02-25 20:41:04'),('nom_site','My SPIP site','oui','2017-02-25 20:41:04'),('adresse_site','https://__DOMAIN____PATH__','oui','2017-02-25 20:41:04'),('descriptif_site','','oui','2017-02-25 20:41:04'),('activer_breves','non','oui','2017-02-25 20:41:04'),('activer_logos','oui','oui','2017-02-25 20:41:04'),('activer_logos_survol','non','oui','2017-02-25 20:41:04'),('config_precise_groupes','non','oui','2017-02-25 20:41:04'),('mots_cles_forums','non','oui','2017-02-25 20:41:04'),('articles_surtitre','non','oui','2017-02-25 20:41:04'),('articles_soustitre','non','oui','2017-02-25 20:41:04'),('articles_descriptif','non','oui','2017-02-25 20:41:04'),('articles_chapeau','non','oui','2017-02-25 20:41:04'),('articles_texte','oui','oui','2017-02-25 20:41:04'),('articles_ps','non','oui','2017-02-25 20:41:04'),('articles_redac','non','oui','2017-02-25 20:41:04'),('articles_mots','non','oui','2017-02-25 20:41:04'),('post_dates','non','oui','2017-02-25 20:41:04'),('articles_urlref','non','oui','2017-02-25 20:41:04'),('articles_redirection','non','oui','2017-02-25 20:41:04'),('creer_preview','non','oui','2017-02-25 20:41:04'),('taille_preview','150','oui','2017-02-25 20:41:04'),('articles_modif','non','oui','2017-02-25 20:41:04'),('rubriques_descriptif','non','oui','2017-02-25 20:41:04'),('rubriques_texte','oui','oui','2017-02-25 20:41:04'),('forums_titre','oui','oui','2017-02-25 20:41:04'),('forums_texte','oui','oui','2017-02-25 20:41:04'),('forums_urlref','non','oui','2017-02-25 20:41:04'),('forums_afficher_barre','oui','oui','2017-02-25 20:41:04'),('formats_documents_forum','','oui','2017-02-25 20:41:04'),('activer_sites','non','oui','2017-02-25 20:41:04'),('proposer_sites','0','oui','2017-02-25 20:41:04'),('activer_syndic','oui','oui','2017-02-25 20:41:04'),('moderation_sites','non','oui','2017-02-25 20:41:04'),('forums_publics','posteriori','oui','2017-02-25 20:41:04'),('accepter_inscriptions','non','oui','2017-02-25 20:41:04'),('accepter_visiteurs','non','oui','2017-02-25 20:41:04'),('prevenir_auteurs','non','oui','2017-02-25 20:41:04'),('suivi_edito','non','oui','2017-02-25 20:41:04'),('adresse_suivi','','oui','2017-02-25 20:41:04'),('adresse_suivi_inscription','','oui','2017-02-25 20:41:04'),('adresse_neuf','','oui','2017-02-25 20:41:04'),('jours_neuf','','oui','2017-02-25 20:41:04'),('quoi_de_neuf','non','oui','2017-02-25 20:41:04'),('forum_prive','oui','oui','2017-02-25 20:41:04'),('forum_prive_objets','oui','oui','2017-02-25 20:41:04'),('forum_prive_admin','non','oui','2017-02-25 20:41:04'),('messagerie_agenda','oui','oui','2017-02-25 20:41:04'),('articles_versions','non','oui','2017-02-25 20:41:04'),('activer_statistiques','non','oui','2017-02-25 20:41:04'),('activer_captures_referers','non','oui','2017-02-25 20:41:04'),('documents_article','oui','oui','2017-02-25 20:41:04'),('documents_rubrique','non','oui','2017-02-25 20:41:04'),('documents_date','non','oui','2017-02-25 20:41:04'),('syndication_integrale','oui','oui','2017-02-25 20:41:04'),('dir_img','IMG/','oui','2017-02-25 20:41:04'),('multi_articles','non','oui','2017-02-25 20:41:04'),('multi_rubriques','non','oui','2017-02-25 20:41:04'),('multi_secteurs','non','oui','2017-02-25 20:41:04'),('gerer_trad','non','oui','2017-02-25 20:41:04'),('langues_multilingue','','oui','2017-02-25 20:41:04'),('type_urls','page','oui','2017-02-25 20:41:04'),('email_envoi','','oui','2017-02-25 20:41:04'),('auto_compress_http','non','oui','2017-02-25 20:41:04'),('auto_compress_js','non','oui','2017-02-25 20:41:04'),('auto_compress_css','non','oui','2017-02-25 20:41:04'),('iecompat','ifixpng','oui','2017-02-25 20:41:04'),('barre_outils_public','oui','oui','2017-02-25 20:41:04'),('auto_compress_closure','non','oui','2017-02-25 20:41:04'),('langues_utilisees','fr','oui','2017-02-25 20:41:04'),('plugin','a:6:{s:6:\"IMAGES\";a:5:{s:3:\"nom\";s:26:\"Filtres Images et Couleurs\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:15:\"_DIR_EXTENSIONS\";s:3:\"dir\";s:14:\"filtres_images\";s:7:\"version\";s:5:\"1.0.1\";}s:11:\"MSIE_COMPAT\";a:5:{s:3:\"nom\";s:90:\"<multi>[fr]Support vieux navigateurs[de]Unterst&#252;tzung &#228;lterer Webbrowser</multi>\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:15:\"_DIR_EXTENSIONS\";s:3:\"dir\";s:11:\"msie_compat\";s:7:\"version\";s:5:\"1.0.0\";}s:11:\"PORTE_PLUME\";a:5:{s:3:\"nom\";s:100:\"<multi>[fr]Porte plume[en]Quill[ar]&#1575;&#1604;&#1585;&#1610;&#1588;&#1577;[de]Federhalter</multi>\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:15:\"_DIR_EXTENSIONS\";s:3:\"dir\";s:11:\"porte_plume\";s:7:\"version\";s:5:\"1.7.9\";}s:8:\"SAFEHTML\";a:5:{s:3:\"nom\";s:8:\"SafeHTML\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:15:\"_DIR_EXTENSIONS\";s:3:\"dir\";s:8:\"safehtml\";s:7:\"version\";s:5:\"1.3.7\";}s:9:\"VERTEBRES\";a:5:{s:3:\"nom\";s:14:\"Vert&#232;bres\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:15:\"_DIR_EXTENSIONS\";s:3:\"dir\";s:9:\"vertebres\";s:7:\"version\";s:5:\"1.0.0\";}s:11:\"COMPRESSEUR\";a:5:{s:3:\"nom\";s:11:\"Compresseur\";s:4:\"etat\";s:6:\"stable\";s:8:\"dir_type\";s:15:\"_DIR_EXTENSIONS\";s:3:\"dir\";s:11:\"compresseur\";s:7:\"version\";s:5:\"1.0.2\";}}','oui','2017-02-25 20:41:04'),('plugin_header','images(1.0.1),msie_compat(1.0.0),porte_plume(1.7.9),safehtml(1.3.7),vertebres(1.0.0),compresseur(1.0.2)','oui','2017-02-25 20:41:04'),('plugin_installes','a:0:{}','oui','2017-02-25 20:41:07'),('secret_du_site','14630e65367e5078308b012e70a32a6312823c07e3731f6296fa329993fdc28b','oui','2017-02-25 20:41:24');
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
  PRIMARY KEY (`id_syndic`),
  KEY `id_rubrique` (`id_rubrique`),
  KEY `id_secteur` (`id_secteur`),
  KEY `statut` (`statut`,`date_syndic`)
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

-- Dump completed on 2017-02-25 20:42:13
