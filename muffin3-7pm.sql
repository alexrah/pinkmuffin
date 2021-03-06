-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2013 at 06:53 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `muffin3`
--
CREATE DATABASE IF NOT EXISTS `muffin3` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `muffin3`;

-- --------------------------------------------------------

--
-- Table structure for table `os914_assets`
--

CREATE TABLE IF NOT EXISTS `os914_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `os914_assets`
--

INSERT INTO `os914_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 85, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 40, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 41, 42, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 43, 44, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 45, 46, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 47, 48, 1, 'com_login', 'com_login', '{}'),
(13, 1, 49, 50, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 51, 52, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 53, 54, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 55, 56, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 57, 58, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 59, 60, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 61, 64, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 65, 66, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 67, 68, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 69, 70, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 71, 72, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 73, 76, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 77, 80, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 81, 82, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 62, 63, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 78, 79, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 74, 75, 1, 'com_users.notes.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 83, 84, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 27, 19, 20, 3, 'com_content.article.1', 'Chi siamo', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(35, 8, 22, 25, 2, 'com_content.category.8', 'Featured', ''),
(36, 8, 26, 39, 2, 'com_content.category.9', 'Articles', ''),
(37, 35, 23, 24, 3, 'com_content.article.2', 'Post', ''),
(38, 36, 27, 28, 3, 'com_content.article.3', 'Home', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(39, 36, 29, 30, 3, 'com_content.article.4', 'MENÚ &Cakes', ''),
(40, 36, 31, 32, 3, 'com_content.article.5', 'Contacts', ''),
(41, 36, 33, 34, 3, 'com_content.article.6', 'Veniteci a trovare di persona', ''),
(42, 36, 35, 36, 3, 'com_content.article.7', 'Le ultime novitá', ''),
(43, 36, 37, 38, 3, 'com_content.article.8', 'New Page', '');

-- --------------------------------------------------------

--
-- Table structure for table `os914_associations`
--

CREATE TABLE IF NOT EXISTS `os914_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_banners`
--

CREATE TABLE IF NOT EXISTS `os914_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `os914_banner_clients`
--

CREATE TABLE IF NOT EXISTS `os914_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `os914_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `os914_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_categories`
--

CREATE TABLE IF NOT EXISTS `os914_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `os914_categories`
--

INSERT INTO `os914_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 17, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 35, 1, 13, 14, 1, 'featured', 'com_content', 'Featured', 'featured', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-07-26 16:05:50', 0, '0000-00-00 00:00:00', 0, '*'),
(9, 36, 1, 15, 16, 1, 'articles', 'com_content', 'Articles', 'articles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-07-26 16:05:50', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `os914_contact_details`
--

CREATE TABLE IF NOT EXISTS `os914_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `os914_content`
--

CREATE TABLE IF NOT EXISTS `os914_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `os914_content`
--

INSERT INTO `os914_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 34, 'Chi siamo', 'chi-siamo', '', '<p><span style="color: #000000; font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam rutrum pretium mi eu blandit. Phasellus non risus dapibus, ultrices nibh nec, iaculis quam. Donec ut ornare nisi. Nunc quam mauris, auctor sed felis in, suscipit rhoncus purus. Ut a semper lectus. Nunc tincidunt tellus a orci aliquet, sed euismod libero adipiscing. Donec posuere nulla ante, at eleifend orci fermentum non. Pellentesque vel adipiscing dolor. Quisque eu euismod velit. Nam felis tellus, molestie eget sagittis nec, malesuada at urna.</span></p>', '', 1, 0, 0, 2, '2013-07-19 14:40:02', 42, '', '2013-07-19 14:40:12', 42, 42, '2013-07-19 14:40:12', '2013-07-19 14:40:02', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 37, 'Post', 'article', '', '\n            <p><br/></p>\n        \n        ', '', 1, 0, 0, 8, '2013-07-26 16:05:50', 42, '', '2013-07-26 16:05:50', 42, 0, '0000-00-00 00:00:00', '2013-07-26 16:05:50', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 38, 'Home', 'article-1', '', '<script type="text/javascript">// <![CDATA[\r\n/*Artisteer scripts*/\r\njQuery(function($) {\r\n    ''use strict'';\r\n    if ($.fn.slider) {\r\n        $(".art-slidecontainer177760_448951335125328_352108249_o").each(function () {\r\n            var slideContainer = $(this), tmp;\r\n            var inner = $(".art-slider-inner", slideContainer);\r\n            var helper = null;\r\n\r\n            if ($.support.transition) {\r\n                helper = new BackgroundHelper();\r\n                helper.init("fade", "next", $(".art-slide-item", inner).first().css($.support.transition.prefix + "transition-duration"));\r\n                inner.children().each(function () {\r\n                    helper.processSlide($(this));\r\n                });\r\n\r\n            }\r\n\r\n\r\n            inner.children().eq(0).addClass("active");\r\n            slideContainer.slider({\r\n                pause: 2600,\r\n                speed: 600,\r\n                repeat: true,\r\n                animation: "fade",\r\n                direction: "next",\r\n                navigator: slideContainer.siblings(".art-slidenavigator177760_448951335125328_352108249_o"),\r\n                helper: helper                \r\n            });\r\n        });\r\n    }\r\n});\r\njQuery(function($) {\r\n    ''use strict'';\r\n    if ($.fn.slider) {\r\n        $(".art-slidecontainer472411_410748855612243_997031747_o").each(function () {\r\n            var slideContainer = $(this), tmp;\r\n            var inner = $(".art-slider-inner", slideContainer);\r\n            var helper = null;\r\n\r\n            if ($.support.transition) {\r\n                helper = new BackgroundHelper();\r\n                helper.init("fade", "next", $(".art-slide-item", inner).first().css($.support.transition.prefix + "transition-duration"));\r\n                inner.children().each(function () {\r\n                    helper.processSlide($(this));\r\n                });\r\n\r\n            }\r\n\r\n\r\n            inner.children().eq(0).addClass("active");\r\n            slideContainer.slider({\r\n                pause: 2600,\r\n                speed: 600,\r\n                repeat: true,\r\n                animation: "fade",\r\n                direction: "next",\r\n                navigator: slideContainer.siblings(".art-slidenavigator472411_410748855612243_997031747_o"),\r\n                helper: helper                \r\n            });\r\n        });\r\n    }\r\n});\r\njQuery(function($) {\r\n    ''use strict'';\r\n    if ($.fn.slider) {\r\n        $(".art-slidecontainer598588_503782639642197_2082942957_n1").each(function () {\r\n            var slideContainer = $(this), tmp;\r\n            var inner = $(".art-slider-inner", slideContainer);\r\n            var helper = null;\r\n\r\n            if ($.support.transition) {\r\n                helper = new BackgroundHelper();\r\n                helper.init("fade", "next", $(".art-slide-item", inner).first().css($.support.transition.prefix + "transition-duration"));\r\n                inner.children().each(function () {\r\n                    helper.processSlide($(this));\r\n                });\r\n\r\n            }\r\n\r\n\r\n            inner.children().eq(0).addClass("active");\r\n            slideContainer.slider({\r\n                pause: 2600,\r\n                speed: 600,\r\n                repeat: true,\r\n                animation: "fade",\r\n                direction: "next",\r\n                navigator: slideContainer.siblings(".art-slidenavigator598588_503782639642197_2082942957_n1"),\r\n                helper: helper                \r\n            });\r\n        });\r\n    }\r\n});\r\n// ]]></script>\r\n<script type="text/javascript">// <![CDATA[\r\ndocument.write(''<style>.art-slidecontainer177760_448951335125328_352108249_o {    position: relative;        width: 198px;    height: 148px;        }.art-slidecontainer177760_448951335125328_352108249_o .art-slide-item{}.art-slidecontainer177760_448951335125328_352108249_o .art-slide-item {    -webkit-transition: 600ms ease-in-out opacity;    -moz-transition: 600ms ease-in-out opacity;    -ms-transition: 600ms ease-in-out opacity;    -o-transition: 600ms ease-in-out opacity;    transition: 600ms ease-in-out opacity;    position: absolute;    display: none;	left: 0;	top: 0;	opacity: 0;    width:  100%;    height: 100%;}.art-slidecontainer177760_448951335125328_352108249_o .active, .art-slidecontainer177760_448951335125328_352108249_o .next, .art-slidecontainer177760_448951335125328_352108249_o .prev {    display: block;}.art-slidecontainer177760_448951335125328_352108249_o .active {    opacity: 1;}.art-slidecontainer177760_448951335125328_352108249_o .next, .art-slidecontainer177760_448951335125328_352108249_o .prev {    width: 100%;}.art-slidecontainer177760_448951335125328_352108249_o .next.forward, .art-slidecontainer177760_448951335125328_352108249_o .prev.back {    opacity: 1;}.art-slidecontainer177760_448951335125328_352108249_o .active.forward {    opacity: 0;}.art-slidecontainer177760_448951335125328_352108249_o .active.back {    opacity: 0;}.art-slide177760_448951335125328_352108249_o0 {    background-image:  url(\\''/muffincakes3/images/template-content/slide177760_448951335125328_352108249_o0.jpg\\'');        background-size:  100%;        background-position:  0 0;    background-repeat: no-repeat;}.art-slide177760_448951335125328_352108249_o1 {    background-image:  url(\\''/muffincakes3/images/template-content/slide177760_448951335125328_352108249_o1.jpg\\'');        background-size:  100%;        background-position:  0 0;    background-repeat: no-repeat;}.art-slidenavigator177760_448951335125328_352108249_o {  display: inline-block;  position: absolute;  direction: ltr !important;  top: 124px;  left: 77.78%;  z-index: 101;  line-height: 0 !important;  -webkit-background-origin: border !important;  -moz-background-origin: border !important;  background-origin: border-box !important;  -webkit-box-sizing: border-box;  -moz-box-sizing: border-box;  box-sizing: border-box;  text-align: center;    white-space: nowrap;    }.art-slidenavigator177760_448951335125328_352108249_o{background: #7A8399;background: linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -webkit-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -moz-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -o-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -ms-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;-svg-background: linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;padding:7px;}.art-slidenavigator177760_448951335125328_352108249_o > a{background: #454B59;background: #454B59;background: #454B59;background: #454B59;background: #454B59;background: #454B59;background: #454B59;-svg-background: #454B59;-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;margin:0 10px 0 0;width: 10px;height: 10px;}.art-slidenavigator177760_448951335125328_352108249_o > a.active{background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;-svg-background: #EE6DA9;-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;margin:0 10px 0 0;width: 10px;height: 10px;}.art-slidenavigator177760_448951335125328_352108249_o > a:hover{background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;-svg-background: #AD145C;-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;margin:0 10px 0 0;width: 10px;height: 10px;}.art-slidecontainer472411_410748855612243_997031747_o {    position: relative;        width: 198px;    height: 148px;        }.art-slidecontainer472411_410748855612243_997031747_o .art-slide-item{}.art-slidecontainer472411_410748855612243_997031747_o .art-slide-item {    -webkit-transition: 600ms ease-in-out opacity;    -moz-transition: 600ms ease-in-out opacity;    -ms-transition: 600ms ease-in-out opacity;    -o-transition: 600ms ease-in-out opacity;    transition: 600ms ease-in-out opacity;    position: absolute;    display: none;	left: 0;	top: 0;	opacity: 0;    width:  100%;    height: 100%;}.art-slidecontainer472411_410748855612243_997031747_o .active, .art-slidecontainer472411_410748855612243_997031747_o .next, .art-slidecontainer472411_410748855612243_997031747_o .prev {    display: block;}.art-slidecontainer472411_410748855612243_997031747_o .active {    opacity: 1;}.art-slidecontainer472411_410748855612243_997031747_o .next, .art-slidecontainer472411_410748855612243_997031747_o .prev {    width: 100%;}.art-slidecontainer472411_410748855612243_997031747_o .next.forward, .art-slidecontainer472411_410748855612243_997031747_o .prev.back {    opacity: 1;}.art-slidecontainer472411_410748855612243_997031747_o .active.forward {    opacity: 0;}.art-slidecontainer472411_410748855612243_997031747_o .active.back {    opacity: 0;}.art-slide472411_410748855612243_997031747_o0 {    background-image:  url(\\''/muffincakes3/images/template-content/slide472411_410748855612243_997031747_o0.jpg\\'');        background-size:  100%;        background-position:  0 0;    background-repeat: no-repeat;}.art-slide472411_410748855612243_997031747_o1 {    background-image:  url(\\''/muffincakes3/images/template-content/slide472411_410748855612243_997031747_o1.jpg\\'');        background-size:  100%;        background-position:  0 0;    background-repeat: no-repeat;}.art-slidenavigator472411_410748855612243_997031747_o {  display: inline-block;  position: absolute;  direction: ltr !important;  top: 124px;  left: 77.78%;  z-index: 101;  line-height: 0 !important;  -webkit-background-origin: border !important;  -moz-background-origin: border !important;  background-origin: border-box !important;  -webkit-box-sizing: border-box;  -moz-box-sizing: border-box;  box-sizing: border-box;  text-align: center;    white-space: nowrap;    }.art-slidenavigator472411_410748855612243_997031747_o{background: #7A8399;background: linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -webkit-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -moz-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -o-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -ms-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;-svg-background: linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;padding:7px;}.art-slidenavigator472411_410748855612243_997031747_o > a{background: #454B59;background: #454B59;background: #454B59;background: #454B59;background: #454B59;background: #454B59;background: #454B59;-svg-background: #454B59;-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;margin:0 10px 0 0;width: 10px;height: 10px;}.art-slidenavigator472411_410748855612243_997031747_o > a.active{background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;-svg-background: #EE6DA9;-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;margin:0 10px 0 0;width: 10px;height: 10px;}.art-slidenavigator472411_410748855612243_997031747_o > a:hover{background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;-svg-background: #AD145C;-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;margin:0 10px 0 0;width: 10px;height: 10px;}.art-slidecontainer598588_503782639642197_2082942957_n1 {    position: relative;        width: 200px;    height: 149px;        }.art-slidecontainer598588_503782639642197_2082942957_n1 .art-slide-item{}.art-slidecontainer598588_503782639642197_2082942957_n1 .art-slide-item {    -webkit-transition: 600ms ease-in-out opacity;    -moz-transition: 600ms ease-in-out opacity;    -ms-transition: 600ms ease-in-out opacity;    -o-transition: 600ms ease-in-out opacity;    transition: 600ms ease-in-out opacity;    position: absolute;    display: none;	left: 0;	top: 0;	opacity: 0;    width:  100%;    height: 100%;}.art-slidecontainer598588_503782639642197_2082942957_n1 .active, .art-slidecontainer598588_503782639642197_2082942957_n1 .next, .art-slidecontainer598588_503782639642197_2082942957_n1 .prev {    display: block;}.art-slidecontainer598588_503782639642197_2082942957_n1 .active {    opacity: 1;}.art-slidecontainer598588_503782639642197_2082942957_n1 .next, .art-slidecontainer598588_503782639642197_2082942957_n1 .prev {    width: 100%;}.art-slidecontainer598588_503782639642197_2082942957_n1 .next.forward, .art-slidecontainer598588_503782639642197_2082942957_n1 .prev.back {    opacity: 1;}.art-slidecontainer598588_503782639642197_2082942957_n1 .active.forward {    opacity: 0;}.art-slidecontainer598588_503782639642197_2082942957_n1 .active.back {    opacity: 0;}.art-slide598588_503782639642197_2082942957_n10 {    background-image:  url(\\''/muffincakes3/images/template-content/slide598588_503782639642197_2082942957_n10.jpg\\'');        background-size:  100%;        background-position:  0 0;    background-repeat: no-repeat;}.art-slide598588_503782639642197_2082942957_n11 {    background-image:  url(\\''/muffincakes3/images/template-content/slide598588_503782639642197_2082942957_n11.jpg\\'');        background-size:  100%;        background-position:  0 0;    background-repeat: no-repeat;}.art-slidenavigator598588_503782639642197_2082942957_n1 {  display: inline-block;  position: absolute;  direction: ltr !important;  top: 125px;  left: 78%;  z-index: 101;  line-height: 0 !important;  -webkit-background-origin: border !important;  -moz-background-origin: border !important;  background-origin: border-box !important;  -webkit-box-sizing: border-box;  -moz-box-sizing: border-box;  box-sizing: border-box;  text-align: center;    white-space: nowrap;    }.art-slidenavigator598588_503782639642197_2082942957_n1{background: #7A8399;background: linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -webkit-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -moz-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -o-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -ms-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;-svg-background: linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;padding:7px;}.art-slidenavigator598588_503782639642197_2082942957_n1 > a{background: #454B59;background: #454B59;background: #454B59;background: #454B59;background: #454B59;background: #454B59;background: #454B59;-svg-background: #454B59;-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;margin:0 10px 0 0;width: 10px;height: 10px;}.art-slidenavigator598588_503782639642197_2082942957_n1 > a.active{background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;-svg-background: #EE6DA9;-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;margin:0 10px 0 0;width: 10px;height: 10px;}.art-slidenavigator598588_503782639642197_2082942957_n1 > a:hover{background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;-svg-background: #AD145C;-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;margin:0 10px 0 0;width: 10px;height: 10px;}</style>'');\r\n// ]]></script>\r\n<div class="art-content-layout">\r\n<div class="art-content-layout-row">\r\n<div class="art-layout-cell" style="padding: 0px; width: 100%;">\r\n<p> </p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="art-content-layout" style="border-collapse: separate;">\r\n<div class="art-content-layout-row">\r\n<div class="art-layout-cell" style="padding: 0px; width: 40%;">\r\n<p><img class="art-lightbox" src="images/template-content/522387_496569737030154_1187332681_n.jpg" border="0" alt="" width="272" height="364" style="margin-top: 0px;" /></p>\r\n</div>\r\n<div class="art-layout-cell" style="padding-top: 0px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; width: 60%;">\r\n<h3>bENVENUTI DA mUFFIN&amp;cAKES</h3>\r\n<p><span style="font-weight: bold;"><span style="font-style: italic; color: #424857;">Fusce et mauris eget arcu sagittis lacinia laoreet et arcu. Praesent eleifend molestie lacus ac convallis. Proin non lectus non risus auctor venenatis. Proin gravida elit sed erat rutrum porttitor dapibus augue mollis.</span></span><span style="color: #424857;"> </span></p>\r\n<p><span style="color: #333742;">Cras quis egestas leo. Praesent nec turpis odio, a placerat orci. Duis nisl libero, dignissim in tristique et, pellentesque at nisl. Duis tempor sem ac neque facilisis varius. Nam aliquet imperdiet consectetur. Morbi varius pretium turpis, nec condimentum quam pulvinar vitae. Curabitur vitae ante in elit commodo faucibus. Pellentesque sit amet urna nunc.</span></p>\r\n<p><span style="color: #333742;">Duis neque nulla, sodales non tristique non, sagittis eu purus. Nullam ac eros leo, a sagittis lacus. Duis aliquet cursus massa eu sodales. Etiam nec erat a felis egestas consectetur vitae ut diam. Nunc tortor nunc, hendrerit consectetur volutpat non, consequat eu massa. Donec accumsan diam semper odio lobortis sed pretium nisl pretium. </span></p>\r\n<p> <a class="art-button" href="#"> </a> </p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="art-content-layout">\r\n<div class="art-content-layout-row">\r\n<div class="art-layout-cell" style="padding-right: 10px; padding-left: 10px; width: 100%;">\r\n<h3>Gli specialisti del DeSsert</h3>\r\n<hr style="border: none; background-color: #b50a56; color: #b50a56; height: 2px;" /></div>\r\n</div>\r\n</div>\r\n<div class="art-content-layout">\r\n<div class="art-content-layout-row">\r\n<div class="art-layout-cell" style="padding-right: 10px; padding-left: 10px; width: 33%;">\r\n<p> </p>\r\n<div id="177760_448951335125328_352108249_o" style="position: relative; display: inline-block; z-index: 0; margin: 7px; border-width: 0px;" class="art-collage">\r\n<div class="art-slider art-slidecontainer177760_448951335125328_352108249_o" data-width="198" data-height="148">\r\n<div class="art-slider-inner">\r\n<div class="art-slide-item art-slide177760_448951335125328_352108249_o0"></div>\r\n<div class="art-slide-item art-slide177760_448951335125328_352108249_o1"></div>\r\n</div>\r\n</div>\r\n<div class="art-slidenavigator art-slidenavigator177760_448951335125328_352108249_o" data-left="77.78"><a class="art-slidenavigatoritem" href="#"> </a><a class="art-slidenavigatoritem" href="#"> </a></div>\r\n</div>\r\n<p> </p>\r\n</div>\r\n<div class="art-layout-cell" style="padding-right: 10px; padding-left: 10px; width: 34%;">\r\n<p> </p>\r\n<div id="472411_410748855612243_997031747_o" style="position: relative; display: inline-block; z-index: 0; margin: 7px; border-width: 0px;" class="art-collage">\r\n<div class="art-slider art-slidecontainer472411_410748855612243_997031747_o" data-width="198" data-height="148">\r\n<div class="art-slider-inner">\r\n<div class="art-slide-item art-slide472411_410748855612243_997031747_o0"></div>\r\n<div class="art-slide-item art-slide472411_410748855612243_997031747_o1"></div>\r\n</div>\r\n</div>\r\n<div class="art-slidenavigator art-slidenavigator472411_410748855612243_997031747_o" data-left="77.78"><a class="art-slidenavigatoritem" href="#"> </a><a class="art-slidenavigatoritem" href="#"> </a></div>\r\n</div>\r\n<p> </p>\r\n</div>\r\n<div class="art-layout-cell" style="padding-right: 10px; padding-left: 10px; width: 33%;">\r\n<p> </p>\r\n<div id="598588_503782639642197_2082942957_n1" style="position: relative; display: inline-block; z-index: 0; margin: 7px; border-width: 0px;" class="art-collage">\r\n<div class="art-slider art-slidecontainer598588_503782639642197_2082942957_n1" data-width="200" data-height="149">\r\n<div class="art-slider-inner">\r\n<div class="art-slide-item art-slide598588_503782639642197_2082942957_n10"></div>\r\n<div class="art-slide-item art-slide598588_503782639642197_2082942957_n11"></div>\r\n</div>\r\n</div>\r\n<div class="art-slidenavigator art-slidenavigator598588_503782639642197_2082942957_n1" data-left="78"><a class="art-slidenavigatoritem" href="#"> </a><a class="art-slidenavigatoritem" href="#"> </a></div>\r\n</div>\r\n<p> </p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="art-content-layout">\r\n<div class="art-content-layout-row">\r\n<div class="art-layout-cell" style="padding-right: 10px; padding-left: 10px; width: 100%;">\r\n<p><span style="font-weight: bold;"><span style="font-style: italic; color: #424857;">Fusce et mauris eget arcu sagittis lacinia laoreet et arcu. Praesent eleifend molestie lacus ac convallis. Proin non lectus non risus auctor venenatis. Proin gravida elit sed erat rutrum porttitor dapibus augue mollis.</span></span> </p>\r\n</div>\r\n</div>\r\n</div>', '', 1, 0, 0, 9, '2013-07-26 16:05:50', 42, '', '2013-07-26 16:35:55', 42, 0, '0000-00-00 00:00:00', '2013-07-26 16:05:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 6, '', '', 1, 18, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 39, 'MENÚ &Cakes', 'article-2', '', '\n            <div class="art-content-layout-wrapper" style="margin-top: 15px;margin-bottom: 10px;">\n<div class="art-content-layout" style="border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-width:0px;border-top-color:#565E71;border-right-color:#565E71;border-bottom-color:#565E71;border-left-color:#565E71; color: #000000; ">\n    <div class="art-content-layout-row">\n    <div class="art-layout-cell" style="border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-width:0px;border-top-color:#565E71;border-right-color:#565E71;border-bottom-color:#565E71;border-left-color:#565E71; color: #000000; background: #DADCE2;background: rgba(218, 220, 226, 0.65); padding-right: 10px;padding-left: 10px; width:33%" >\n        <ul><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Menu 1:</span></h5><h5><span style="font-size: 11px;">&nbsp;elementum mauris purus, a lobortis nulla rhoncus vel. Vestibulum no</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">n augue lobortis, consectetur enim quis, tempus dolor.</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Vestibulum et magna ipsum. Aliquam interdum nulla vel elementum.</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Mauris mi nunc, convallis bibendum ante id, tristique iaculis odio. Sed sit amet ultrices dui. Suspendisse venenatis felis ut mi fringilla porttitor. Vivamus tristique, neque vitae&nbsp;</span></h5></li></ul><p><br></p>\n    </div><div class="art-layout-cell" style="border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-width:0px;border-top-color:#565E71;border-right-color:#565E71;border-bottom-color:#565E71;border-left-color:#565E71; color: #000000; padding-right: 10px;padding-left: 10px; width:34%" >\n        <ul><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Menu 2:</span></h5><h5><span style="font-size: 11px;">&nbsp;elementum mauris purus, a lobortis nulla rhoncus vel. Vestibulum no</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">n augue lobortis, consectetur enim quis, tempus dolor.</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Vestibulum et magna ipsum. Aliquam interdum nulla vel elementum.</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Mauris mi nunc, convallis bibendum ante id, tristique iaculis odio. Sed sit amet ultrices dui. Suspendisse venenatis felis ut mi fringilla porttitor. Vivamus tristique, neque vitae&nbsp;</span></h5></li></ul><p><br></p>\n    </div><div class="art-layout-cell" style="border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-width:0px;border-top-color:#565E71;border-right-color:#565E71;border-bottom-color:#565E71;border-left-color:#565E71; color: #000000; background: #DADCE2;background: rgba(218, 220, 226, 0.65); padding-right: 10px;padding-left: 10px; width:33%" >\n        <ul><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Menu 3:</span></h5><h5><span style="font-size: 11px;">&nbsp;elementum mauris purus, a lobortis nulla rhoncus vel. Vestibulum no</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">n augue lobortis, consectetur enim quis, tempus dolor.</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Vestibulum et magna ipsum. Aliquam interdum nulla vel elementum.</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Mauris mi nunc, convallis bibendum ante id, tristique iaculis odio. Sed sit amet ultrices dui. Suspendisse venenatis felis ut mi fringilla porttitor. Vivamus tristique, neque vitae&nbsp;</span></h5></li></ul><p><br></p>\n    </div>\n    </div>\n</div>\n</div>\n<div class="art-content-layout">\n    <div class="art-content-layout-row">\n    <div class="art-layout-cell" style="border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-width:0px;border-top-color:#565E71;border-right-color:#565E71;border-bottom-color:#565E71;border-left-color:#565E71; padding-right: 10px;padding-left: 10px; width:33%" >\n        <p><img width="201" height="150" alt="" class="art-lightbox" src="images/template-content/581672_603003319720128_874705406_n.jpg"><br></p>\n    </div><div class="art-layout-cell" style="border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-width:0px;border-top-color:#565E71;border-right-color:#565E71;border-bottom-color:#565E71;border-left-color:#565E71; color: #000000; background: #DADCE2;background: rgba(218, 220, 226, 0.65); padding-right: 10px;padding-left: 10px; width:34%" >\n        <p><img width="211" height="157" alt="" class="art-lightbox" src="images/template-content/998322_597188263634967_1839534392_n.jpg"><br></p>\n    </div><div class="art-layout-cell" style="border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-width:0px;border-top-color:#565E71;border-right-color:#565E71;border-bottom-color:#565E71;border-left-color:#565E71; padding-right: 10px;padding-left: 10px; width:33%" >\n        <p><img width="201" height="150" alt="" class="art-lightbox" src="images/template-content/179757_593611427325984_1711719587_n.jpg"><br></p>\n    </div>\n    </div>\n</div>\n<div class="art-content-layout">\n    <div class="art-content-layout-row">\n    <div class="art-layout-cell" style="border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-width:0px;border-top-color:#565E71;border-right-color:#565E71;border-bottom-color:#565E71;border-left-color:#565E71;border-top:none !important; color: #000000; background: #DADCE2;background: rgba(218, 220, 226, 0.65); padding-right: 10px;padding-left: 10px; width:33%" >\n        <ul><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Menu 4:</span></h5><h5><span style="font-size: 11px;">&nbsp;elementum mauris purus, a lobortis nulla rhoncus vel. Vestibulum no</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">n augue lobortis, consectetur enim quis, tempus dolor.</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Vestibulum et magna ipsum. Aliquam interdum nulla vel elementum.</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Mauris mi nunc, convallis bibendum ante id, tristique iaculis odio. Sed sit amet ultrices dui. Suspendisse venenatis felis ut mi fringilla porttitor. Vivamus tristique, neque vitae&nbsp;</span></h5></li></ul><p><br></p>\n    </div><div class="art-layout-cell" style="border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-width:0px;border-top-color:#565E71;border-right-color:#565E71;border-bottom-color:#565E71;border-left-color:#565E71;border-top:none !important; padding-right: 10px;padding-left: 10px; width:34%" >\n        <ul><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Menu 5:</span></h5><h5><span style="font-size: 11px;">&nbsp;elementum mauris purus, a lobortis nulla rhoncus vel. Vestibulum no</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">n augue lobortis, consectetur enim quis, tempus dolor.</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Vestibulum et magna ipsum. Aliquam interdum nulla vel elementum.</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Mauris mi nunc, convallis bibendum ante id, tristique iaculis odio. Sed sit amet ultrices dui. Suspendisse venenatis felis ut mi fringilla porttitor. Vivamus tristique, neque vitae&nbsp;</span></h5></li></ul><p><br></p>\n    </div><div class="art-layout-cell" style="border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-width:0px;border-top-color:#565E71;border-right-color:#565E71;border-bottom-color:#565E71;border-left-color:#565E71;border-top:none !important; color: #000000; background: #DADCE2;background: rgba(218, 220, 226, 0.65); padding-right: 10px;padding-left: 10px; width:33%" >\n        <ul><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Menu 6:</span></h5><h5><span style="font-size: 11px;">&nbsp;elementum mauris purus, a lobortis nulla rhoncus vel. Vestibulum no</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">n augue lobortis, consectetur enim quis, tempus dolor.</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Vestibulum et magna ipsum. Aliquam interdum nulla vel elementum.</span></h5></li><li style="text-align: left;"><h5><span style="line-height: 14px; font-weight: normal; font-size: 11px;">Mauris mi nunc, convallis bibendum ante id, tristique iaculis odio. Sed sit amet ultrices dui. Suspendisse venenatis felis ut mi fringilla porttitor. Vivamus tristique, neque vitae&nbsp;</span></h5></li></ul><p><br></p>\n    </div>\n    </div>\n</div>\n\n        \n        ', '', 1, 0, 0, 9, '2013-07-26 16:05:50', 42, '', '2013-07-26 16:05:50', 42, 0, '0000-00-00 00:00:00', '2013-07-26 16:05:50', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 5, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `os914_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(5, 40, 'Contacts', 'article-3', '', '\n            <script>\n/*Artisteer scripts*/\njQuery(function($) {\n    ''use strict'';\n    if ($.fn.slider) {\n        $(".art-slidecontainer177760_448951335125328_352108249_o1").each(function () {\n            var slideContainer = $(this), tmp;\n            var inner = $(".art-slider-inner", slideContainer);\n            var helper = null;\n\n            if ($.support.transition) {\n                helper = new BackgroundHelper();\n                helper.init("fade", "next", $(".art-slide-item", inner).first().css($.support.transition.prefix + "transition-duration"));\n                inner.children().each(function () {\n                    helper.processSlide($(this));\n                });\n\n            }\n\n\n            inner.children().eq(0).addClass("active");\n            slideContainer.slider({\n                pause: 2600,\n                speed: 600,\n                repeat: true,\n                animation: "fade",\n                direction: "next",\n                navigator: slideContainer.siblings(".art-slidenavigator177760_448951335125328_352108249_o1"),\n                helper: helper                \n            });\n        });\n    }\n});\njQuery(function($) {\n    ''use strict'';\n    if ($.fn.slider) {\n        $(".art-slidecontainer598588_503782639642197_2082942957_n").each(function () {\n            var slideContainer = $(this), tmp;\n            var inner = $(".art-slider-inner", slideContainer);\n            var helper = null;\n\n            if ($.support.transition) {\n                helper = new BackgroundHelper();\n                helper.init("fade", "next", $(".art-slide-item", inner).first().css($.support.transition.prefix + "transition-duration"));\n                inner.children().each(function () {\n                    helper.processSlide($(this));\n                });\n\n            }\n\n\n            inner.children().eq(0).addClass("active");\n            slideContainer.slider({\n                pause: 2600,\n                speed: 600,\n                repeat: true,\n                animation: "fade",\n                direction: "next",\n                navigator: slideContainer.siblings(".art-slidenavigator598588_503782639642197_2082942957_n"),\n                helper: helper                \n            });\n        });\n    }\n});\n</script><script>document.write(''<style>.art-slidecontainer177760_448951335125328_352108249_o1 {    position: relative;        width: 332px;    height: 248px;        }.art-slidecontainer177760_448951335125328_352108249_o1 .art-slide-item{}.art-slidecontainer177760_448951335125328_352108249_o1 .art-slide-item {    -webkit-transition: 600ms ease-in-out opacity;    -moz-transition: 600ms ease-in-out opacity;    -ms-transition: 600ms ease-in-out opacity;    -o-transition: 600ms ease-in-out opacity;    transition: 600ms ease-in-out opacity;    position: absolute;    display: none;	left: 0;	top: 0;	opacity: 0;    width:  100%;    height: 100%;}.art-slidecontainer177760_448951335125328_352108249_o1 .active, .art-slidecontainer177760_448951335125328_352108249_o1 .next, .art-slidecontainer177760_448951335125328_352108249_o1 .prev {    display: block;}.art-slidecontainer177760_448951335125328_352108249_o1 .active {    opacity: 1;}.art-slidecontainer177760_448951335125328_352108249_o1 .next, .art-slidecontainer177760_448951335125328_352108249_o1 .prev {    width: 100%;}.art-slidecontainer177760_448951335125328_352108249_o1 .next.forward, .art-slidecontainer177760_448951335125328_352108249_o1 .prev.back {    opacity: 1;}.art-slidecontainer177760_448951335125328_352108249_o1 .active.forward {    opacity: 0;}.art-slidecontainer177760_448951335125328_352108249_o1 .active.back {    opacity: 0;}.art-slide177760_448951335125328_352108249_o10 {    background-image:  url(\\''/muffincakes3/images/template-content/slide177760_448951335125328_352108249_o10.jpg\\'');        background-size:  100%;        background-position:  0 0;    background-repeat: no-repeat;}.art-slide177760_448951335125328_352108249_o11 {    background-image:  url(\\''/muffincakes3/images/template-content/slide177760_448951335125328_352108249_o11.jpg\\'');        background-size:  100%;        background-position:  0 0;    background-repeat: no-repeat;}.art-slidenavigator177760_448951335125328_352108249_o1 {  display: inline-block;  position: absolute;  direction: ltr !important;  top: 224px;  left: 86.75%;  z-index: 101;  line-height: 0 !important;  -webkit-background-origin: border !important;  -moz-background-origin: border !important;  background-origin: border-box !important;  -webkit-box-sizing: border-box;  -moz-box-sizing: border-box;  box-sizing: border-box;  text-align: center;    white-space: nowrap;    }.art-slidenavigator177760_448951335125328_352108249_o1{background: #7A8399;background: linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -webkit-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -moz-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -o-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -ms-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;-svg-background: linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;padding:7px;}.art-slidenavigator177760_448951335125328_352108249_o1 > a{background: #454B59;background: #454B59;background: #454B59;background: #454B59;background: #454B59;background: #454B59;background: #454B59;-svg-background: #454B59;-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;margin:0 10px 0 0;width: 10px;height: 10px;}.art-slidenavigator177760_448951335125328_352108249_o1 > a.active{background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;-svg-background: #EE6DA9;-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;margin:0 10px 0 0;width: 10px;height: 10px;}.art-slidenavigator177760_448951335125328_352108249_o1 > a:hover{background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;-svg-background: #AD145C;-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;margin:0 10px 0 0;width: 10px;height: 10px;}.art-slidecontainer598588_503782639642197_2082942957_n {    position: relative;        width: 325px;    height: 242px;        }.art-slidecontainer598588_503782639642197_2082942957_n .art-slide-item{}.art-slidecontainer598588_503782639642197_2082942957_n .art-slide-item {    -webkit-transition: 600ms ease-in-out opacity;    -moz-transition: 600ms ease-in-out opacity;    -ms-transition: 600ms ease-in-out opacity;    -o-transition: 600ms ease-in-out opacity;    transition: 600ms ease-in-out opacity;    position: absolute;    display: none;	left: 0;	top: 0;	opacity: 0;    width:  100%;    height: 100%;}.art-slidecontainer598588_503782639642197_2082942957_n .active, .art-slidecontainer598588_503782639642197_2082942957_n .next, .art-slidecontainer598588_503782639642197_2082942957_n .prev {    display: block;}.art-slidecontainer598588_503782639642197_2082942957_n .active {    opacity: 1;}.art-slidecontainer598588_503782639642197_2082942957_n .next, .art-slidecontainer598588_503782639642197_2082942957_n .prev {    width: 100%;}.art-slidecontainer598588_503782639642197_2082942957_n .next.forward, .art-slidecontainer598588_503782639642197_2082942957_n .prev.back {    opacity: 1;}.art-slidecontainer598588_503782639642197_2082942957_n .active.forward {    opacity: 0;}.art-slidecontainer598588_503782639642197_2082942957_n .active.back {    opacity: 0;}.art-slide598588_503782639642197_2082942957_n0 {    background-image:  url(\\''/muffincakes3/images/template-content/slide598588_503782639642197_2082942957_n0.jpg\\'');        background-size:  100%;        background-position:  0 0;    background-repeat: no-repeat;}.art-slide598588_503782639642197_2082942957_n1 {    background-image:  url(\\''/muffincakes3/images/template-content/slide598588_503782639642197_2082942957_n1.jpg\\'');        background-size:  100%;        background-position:  0 0;    background-repeat: no-repeat;}.art-slidenavigator598588_503782639642197_2082942957_n {  display: inline-block;  position: absolute;  direction: ltr !important;  top: 218px;  left: 86.46%;  z-index: 101;  line-height: 0 !important;  -webkit-background-origin: border !important;  -moz-background-origin: border !important;  background-origin: border-box !important;  -webkit-box-sizing: border-box;  -moz-box-sizing: border-box;  box-sizing: border-box;  text-align: center;    white-space: nowrap;    }.art-slidenavigator598588_503782639642197_2082942957_n{background: #7A8399;background: linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -webkit-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -moz-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -o-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: -ms-linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;background: linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;-svg-background: linear-gradient(top, rgba(166, 171, 186, 0.6) 0, rgba(111, 120, 144, 0.6) 63%, rgba(87, 94, 112, 0.6) 100%) no-repeat;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;padding:7px;}.art-slidenavigator598588_503782639642197_2082942957_n > a{background: #454B59;background: #454B59;background: #454B59;background: #454B59;background: #454B59;background: #454B59;background: #454B59;-svg-background: #454B59;-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;margin:0 10px 0 0;width: 10px;height: 10px;}.art-slidenavigator598588_503782639642197_2082942957_n > a.active{background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;background: #EE6DA9;-svg-background: #EE6DA9;-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;margin:0 10px 0 0;width: 10px;height: 10px;}.art-slidenavigator598588_503782639642197_2082942957_n > a:hover{background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;background: #AD145C;-svg-background: #AD145C;-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%;margin:0 10px 0 0;width: 10px;height: 10px;}</style>'');</script><div class="art-content-layout-wrapper" style="margin-top: 42px;margin-bottom: 10px;">\n<div class="art-content-layout" style="border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-width:0px;border-top-color:#565E71;border-right-color:#565E71;border-bottom-color:#565E71;border-left-color:#565E71; color: #000000; background: #DADCE2; ">\n    <div class="art-content-layout-row">\n    <div class="art-layout-cell" style="color: #000000; padding-right: 10px;padding-left: 10px; width:100%" >\n        <hr style="border:none;background-color:#B50A56;color:#B50A56;height:2px;">\n         \n        <p>nunc sit amet elit dui. pellentesque vitae purus nulla. ut accumsan, est eu sodales viverra, dui eros elementum libero, non pulvinar lorem nibh et augue. proin in justo<span style="color: rgb(66, 72, 87); letter-spacing: 1px; font-family: Verdana; font-size: 12px;"></span><span style="font-style: italic; font-size: 18px; color: rgb(66, 72, 87); letter-spacing: 1px; font-family: Arial, ''Arial Unicode MS'', Helvetica, sans-serif;">&nbsp;</span></p>\n    </div>\n    </div>\n</div>\n</div>\n<div class="art-content-layout">\n    <div class="art-content-layout-row">\n    <div class="art-layout-cell" style="padding-right: 10px;padding-left: 10px; width:50%" >\n        <p></p><div id="177760_448951335125328_352108249_o1" style="position: relative; display: inline-block; z-index: 0; margin: 7px;  border-width: 0px;  " class="art-collage">\n<div class="art-slider art-slidecontainer177760_448951335125328_352108249_o1" data-width="332" data-height="248">\n    <div class="art-slider-inner">\n<div class="art-slide-item art-slide177760_448951335125328_352108249_o10">\n\n</div>\n<div class="art-slide-item art-slide177760_448951335125328_352108249_o11">\n\n</div>\n\n    </div>\n</div>\n<div class="art-slidenavigator art-slidenavigator177760_448951335125328_352108249_o1" data-left="86.75">\n<a href="#" class="art-slidenavigatoritem">&nbsp;</a><a href="#" class="art-slidenavigatoritem">&nbsp;</a>\n</div>\n\n\n\n    </div>\n\n        \n         \n         \n         \n        <p><br></p>\n    </div><div class="art-layout-cell" style="padding-right: 10px;padding-left: 10px; width:50%" >\n        <p></p><div id="598588_503782639642197_2082942957_n" style="position: relative; display: inline-block; z-index: 0; margin: 7px;  border-width: 0px;  " class="art-collage">\n<div class="art-slider art-slidecontainer598588_503782639642197_2082942957_n" data-width="325" data-height="242">\n    <div class="art-slider-inner">\n<div class="art-slide-item art-slide598588_503782639642197_2082942957_n0">\n\n</div>\n<div class="art-slide-item art-slide598588_503782639642197_2082942957_n1">\n\n</div>\n\n    </div>\n</div>\n<div class="art-slidenavigator art-slidenavigator598588_503782639642197_2082942957_n" data-left="86.46">\n<a href="#" class="art-slidenavigatoritem">&nbsp;</a><a href="#" class="art-slidenavigatoritem">&nbsp;</a>\n</div>\n\n\n\n    </div>\n\n        \n         \n         \n        <p><br></p>\n    </div>\n    </div>\n</div>\n<div class="art-content-layout-wrapper" style="margin-right: 14px;margin-bottom: 10px;margin-left: 15px;">\n<div class="art-content-layout" style="border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-width:0px;border-top-color:#565E71;border-right-color:#565E71;border-bottom-color:#565E71;border-left-color:#565E71; color: #000000; background: #DADCE2; ">\n    <div class="art-content-layout-row">\n    <div class="art-layout-cell" style="color: #000000; padding-right: 10px;padding-left: 10px; width:100%" >\n        <p>Nunc sit amet elit dui. Pellentesque vitae purus nulla. Ut accumsan, est eu sodales viverra, dui eros elementum libero, non pulvinar lorem nibh et augue. Proin in justo magna, eu consectetur metus. Fusce congue, eros eget consequat egestas, est lorem feugiat tellus, feugiat pharetra dui turpis in arcu.&nbsp;</p><p><span style="font-family: ''Trebuchet MS'', Arial, Helvetica, sans-serif; font-size: 22px; font-style: italic; text-transform: uppercase; color: #2F333D;">Ci trovate qui:</span></p><p>Piazza Torlaro<br>Albenga, Savona 12345-6789</p><p>T: (555) 123 - 4567<br>F: (555) 523 - 4567</p><p>W:&nbsp;<a href="http://www.domain.com">http://www.domain.com</a><br>E: &nbsp;<a href="mailto:email@domain.com">email@domain.com</a></p><p><br></p>\n    </div>\n    </div>\n</div>\n</div>\n\n        \n        ', '', 1, 0, 0, 9, '2013-07-26 16:05:50', 42, '', '2013-07-26 16:05:50', 42, 0, '0000-00-00 00:00:00', '2013-07-26 16:05:50', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 4, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 41, 'Veniteci a trovare di persona', 'article-4', '', '\n            <div class="art-content-layout">\n    <div class="art-content-layout-row">\n    <div class="art-layout-cell" style="padding-top: 10px; width:50%" >\n        <p></p><ul><li><p style="margin-top: 12px; margin-right: 0px; margin-bottom: 12px; margin-left: 0px;">Piazza Torlaro<br>Albenga, Savona 12345-6789</p><p style="margin-top: 12px; margin-right: 0px; margin-bottom: 12px; margin-left: 0px;">T: (555) 123 - 4567<br>F: (555) 523 - 4567</p><p style="margin-top: 12px; margin-right: 0px; margin-bottom: 12px; margin-left: 0px;">W:&nbsp;<a href="http://www.domain.com">http://www.domain.com</a><br>E: &nbsp;<a href="mailto:email@domain.com">email@domain.com</a></p></li><li><br></li></ul><p>\n        </p>\n    </div><div class="art-layout-cell" style="width:50%" >\n        <p style="text-align: center;"><img width="243" height="195" alt="" class="art-lightbox" src="images/template-content/maps1.png"><span style="font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px;"><br></span></p>\n    </div>\n    </div>\n</div>\n<div class="art-content-layout-wrapper" style="margin-bottom: 10px;">\n<div class="art-content-layout">\n    <div class="art-content-layout-row">\n    <div class="art-layout-cell" style="color: #000000; background: #DADCE2; padding-right: 10px;padding-left: 10px; width:100%" >\n        <p><span style="font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Fusce elementum mauris purus, a lobortis nulla rhoncus vel. Vestibulum non augue lobortis, consectetur enim quis, tempus dolor. Vestibulum et magna ipsum. Aliquam congue interdum nulla vel elementum. Mauris mi nunc, convallis bibendum ante id, tristique iaculis odio. Sed sit amet ultrices dui. Suspendisse venenatis felis ut mi fringilla porttitor. Vivamus tristique, neque vitae blandit porta, lorem erat sollicitudin mauris, et fermentum mauris velit nec justo. Mauris sit amet arcu vitae lectus viverra dictum. Donec vel libero bibendum, condimentum ligula quis, dictum metus. Nunc elementum erat ac turpis pulvinar facilisis. Morbi aliquam mauris egestas, consectetur neque sed, luctus urna. Aenean vehicula malesuada aliquet. Duis tincidunt velit non adipiscing mollis. Praesent tincidunt vel turpis rutrum dignissim.</span><br></p>\n    </div>\n    </div>\n</div>\n</div>\n<div class="art-content-layout-br" style="border-top-width:1px;border-top-style:solid;border-top-color:#565E71;margin-top: 10px;margin-bottom: 10px;">\n</div><div class="art-content-layout">\n    <div class="art-content-layout-row">\n    <div class="art-layout-cell" style="width:50%" >\n        <p><img width="344" height="470" alt="" class="art-lightbox" src="images/template-content/936451_598144633539330_803585905_n.jpg"><br></p>\n    </div><div class="art-layout-cell" style="width:50%" >\n        <p><img width="344" height="470" alt="" class="art-lightbox" src="images/template-content/936451_598144633539330_803585905_BB.jpg"><br></p>\n    </div>\n    </div>\n</div>\n\n        \n        ', '', 1, 0, 0, 9, '2013-07-26 16:05:50', 42, '', '2013-07-26 16:05:50', 42, 0, '0000-00-00 00:00:00', '2013-07-26 16:05:50', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 3, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 42, 'Le ultime novitá', 'article-5', '', '\n            <div class="art-content-layout-wrapper" style="margin-right: 10px;margin-bottom: 10px;margin-left: 10px;">\n<div class="art-content-layout" style="color: #000000; background: #DADCE2; ">\n    <div class="art-content-layout-row">\n    <div class="art-layout-cell" style="color: #000000; padding-right: 10px;padding-left: 10px; width:100%" >\n        <p><span style="font-family: Arial;">Menu 2:\n         elementum mauris purus, a lobortis nulla rhoncus vel. Vestibulum no\n         n augue lobortis, consectetur enim quis, tempus dolor.\n         Vestibulum et magna ipsum. Aliquam interdum nulla vel elementum.\n         Mauris mi nunc, convallis bibendum ante id, tristique iaculis odio. Sed sit amet ultrices dui. Suspendisse venenatis felis ut mi fringilla porttitor. Vivamus tristique, neque vitae \n        </span><br></p>\n    </div>\n    </div>\n</div>\n</div>\n<div class="art-content-layout-wrapper" style="margin-bottom: 10px;">\n<div class="art-content-layout" style="border-spacing: 10px 0px; border-collapse: separate; ">\n    <div class="art-content-layout-row">\n    <div class="art-layout-cell" style="border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-width:0px;border-top-color:#565E71;border-right-color:#565E71;border-bottom-color:#565E71;border-left-color:#565E71; padding-right: 10px;padding-left: 10px; width:33%" >\n        <p><span style="font-family: Arial;">Menu 2:\n         elementum mauris purus, a lobortis nulla rhoncus vel. Vestibulum no\n         n augue lobortis, consectetur enim quis, tempus dolor.\n         Vestibulum et magna ipsum. Aliquam interdum nulla vel elementum.\n         Mauris mi nunc, convallis bibendum ante id, tristique iaculis odio. Sed sit amet ultrices dui. Suspendisse venenatis felis ut mi fringilla porttitor. Vivamus tristique, neque vitae \n        </span><br></p>\n    </div><div class="art-layout-cell" style="border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-width:0px;border-top-color:#565E71;border-right-color:#565E71;border-bottom-color:#565E71;border-left-color:#565E71; padding-right: 10px;padding-left: 10px; width:34%" >\n        <p><img width="195" height="253" alt="" class="art-lightbox" src="images/template-content/Cupcake_512x512-2-2.png"><span style="font-family: Arial;"><br></span></p>\n    </div><div class="art-layout-cell" style="border-top-style:solid;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;border-width:0px;border-top-color:#565E71;border-right-color:#565E71;border-bottom-color:#565E71;border-left-color:#565E71; padding-right: 10px;padding-left: 10px; width:33%" >\n        <p><span style="font-family: Arial;">Menu 2:\n         elementum mauris purus, a lobortis nulla rhoncus vel. Vestibulum no\n         n augue lobortis, consectetur enim quis, tempus dolor.\n         Vestibulum et magna ipsum. Aliquam interdum nulla vel elementum.\n         Mauris mi nunc, convallis bibendum ante id, tristique iaculis odio. Sed sit amet ultrices dui. Suspendisse venenatis felis ut mi fringilla porttitor. Vivamus tristique, neque vitae \n        </span><br></p>\n    </div>\n    </div>\n</div>\n</div>\n<div class="art-content-layout-wrapper" style="margin-bottom: 10px;">\n<div class="art-content-layout">\n    <div class="art-content-layout-row">\n    <div class="art-layout-cell" style="color: #000000; background: #DADCE2; padding-right: 10px;padding-left: 10px; width:100%" >\n        <p>Menu 2:\n         elementum mauris purus, a lobortis nulla rhoncus vel. Vestibulum no\n         n augue lobortis, consectetur enim quis, tempus dolor.\n         Vestibulum et magna ipsum. Aliquam interdum nulla vel elementum.\n         Mauris mi nunc, convallis bibendum ante id, tristique iaculis odio. Sed sit amet ultrices dui. Suspendisse venenatis felis ut mi fringilla porttitor. Vivamus tristique, neque vitae \n        <br></p><p>Menu 2:\n         elementum mauris purus, a lobortis nulla rhoncus vel. Vestibulum no\n         n augue lobortis, consectetur enim quis, tempus dolor.\n         Vestibulum et magna ipsum. Aliquam interdum nulla vel elementum.\n         Mauris mi nunc, convallis bibendum ante id, tristique iaculis odio. Sed sit amet ultrices dui. Suspendisse venenatis felis ut mi fringilla porttitor. Vivamus tristique, neque vitae \n        <br></p>\n    </div>\n    </div>\n</div>\n</div>\n<div class="art-content-layout-br" style="border-top-width:1px;border-top-style:solid;border-top-color:#565E71;margin-top: 10px;margin-bottom: 10px;">\n</div><div class="art-content-layout">\n    <div class="art-content-layout-row">\n    <div class="art-layout-cell" style="color: #000000; padding-right: 10px;padding-left: 10px; width:100%" >\n        <p><img width="681" height="159" alt="" class="art-lightbox" src="images/template-content/935409_577817635572030_1386411395_BB.jpg"><br></p>\n    </div>\n    </div>\n</div>\n\n        \n        ', '', 1, 0, 0, 9, '2013-07-26 16:05:50', 42, '', '2013-07-26 16:05:50', 42, 0, '0000-00-00 00:00:00', '2013-07-26 16:05:50', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 2, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 43, 'New Page', 'article-6', '', '\n            <div class="art-content-layout" style="border-spacing: 20px 0px; border-collapse: separate; ">\n    <div class="art-content-layout-row">\n    <div class="art-layout-cell" style="width:50%" >\n        <p style="text-align: justify;"><span style="font-family: Arial, Helvetica, sans; line-height: 14px; font-size: 18px;">Suspendisse venenatis</span><span style="font-family: Arial, Helvetica, sans; line-height: 14px; text-align: justify; font-size: 18px;"></span> <span style="font-family: Arial, Helvetica, sans; line-height: 14px; text-align: justify; font-size: 12px;">mauris purus, a lobortis nulla rhoncus vel. Vestibulum non augue lobortis, consectetur enim quis, tempus dolor. Vestibulum et magna ipsum. Aliquam congue interdum nulla vel elementum. Mauris mi nunc, convallis bibendum ante id, tristique iaculis odio. Sed sit amet ultrices dui. Suspendisse venenatis felis ut mi fringilla porttitor. Vivamus tristique, neque vitae blandit porta, lorem erat sollicitudin mauris, et fermentum mauris velit nec justo. Mauris sit amet arcu vitae lectus viverra dictum. Donec vel libero bibendum, condimentum ligula quis, dictum metus. Nunc elementum erat ac turpis pulvinar facilisis. Morbi aliquam mauris egestas,&nbsp;</span><br></p>\n    </div><div class="art-layout-cell" style="width:50%" >\n        <p><span style="font-family: Arial, Helvetica, sans; line-height: 14px; text-align: justify; font-size: 18px;">Fusce elementum</span> <span style="font-family: Arial, Helvetica, sans; line-height: 14px; text-align: justify; font-size: 12px;">mauris purus, a lobortis nulla rhoncus vel. Vestibulum non augue lobortis, consectetur enim quis, tempus dolor. Vestibulum et magna ipsum. Aliquam congue interdum nulla vel elementum. Mauris mi nunc, convallis bibendum ante id, tristique iaculis odio. Sed sit amet ultrices dui. Suspendisse venenatis felis ut mi fringilla porttitor. Vivamus tristique, neque vitae blandit porta, lorem erat sollicitudin mauris, et fermentum mauris velit nec justo. Mauris sit amet arcu vitae lectus viverra dictum. Donec vel libero bibendum, condimentum ligula quis, dictum metus. Nunc elementum erat ac turpis pulvinar facilisis. Morbi aliquam mauris egestas,</span><br></p>\n    </div>\n    </div>\n</div>\n<div class="art-content-layout" style="border-spacing: 20px 0px; border-collapse: separate; ">\n    <div class="art-content-layout-row">\n    <div class="art-layout-cell" style="width:50%" >\n        <p><span style="font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Fuelementum. Mauris mi nunc, convallis bibendum ante id, tristique iaculis odio. Sed sit amet ultrices dui. Suspendisse venenatis felis ut mi fringilla porttitor. Vivamus tristique, neque vitae blandit porta, lorem erat sollicitudin mauris, et fermentum mauris velit nec justo. Mauris sit amet arcu vitae lectus viverra dictum. Donec vel l</span><br></p>\n    </div><div class="art-layout-cell" style="width:50%" >\n        <p><span style="font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Aliquam congue interdum nulla vel elementum. Mauris mi nunc, convallis bibendum ante id, tristique iaculis odio. Sed sit amet ultrices dui. Suspendisse venenatis felis ut mi fringilla porttitor. Vivamus tristique, neque vitae blandit porta, lorem erat sollicitudin mauris, et fermentum mauris velit nec justo. Mauris sit amet arcu vitae lectus&nbsp;</span><br></p>\n    </div>\n    </div>\n</div>\n<div class="art-content-layout">\n    <div class="art-content-layout-row">\n    <div class="art-layout-cell" style="width:100%" >\n        <p><img width="710" height="405" alt="" class="art-lightbox" src="images/template-content/946323_578143772206083_554628995_BB.jpg"><br></p>\n    </div>\n    </div>\n</div>\n\n        \n    \n    \n        ', '', 1, 0, 0, 9, '2013-07-26 16:05:50', 42, '', '2013-07-26 16:05:50', 42, 0, '0000-00-00 00:00:00', '2013-07-26 16:05:50', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `os914_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `os914_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_content_rating`
--

CREATE TABLE IF NOT EXISTS `os914_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `os914_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_extensions`
--

CREATE TABLE IF NOT EXISTS `os914_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10004 ;

--
-- Dumping data for table `os914_extensions`
--

INSERT INTO `os914_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2008","author":"PHPMailer","copyright":"Copyright (C) PHPMailer.","authorEmail":"","authorUrl":"http:\\/\\/phpmailer.codeworxtech.com\\/","version":"2.5.0","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2008","author":"SimplePie","copyright":"Copyright (C) 2008 SimplePie","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.0.1","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2008","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"2.5.0","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Web Application Framework', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Web Application Framework","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, 'false', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2012","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.4.9","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"applet,iframe","extended_elements":"style,script,div[*]","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0);
INSERT INTO `os914_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, 'false', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, 'false', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, 'false', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, 'false', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, 'false', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, 'false', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, 'false', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, 'false', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, 'false', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"April 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.4","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'theme1103', 'template', 'theme1103', '', 0, 1, 1, 0, '{"legacy":false,"name":"theme1103","type":"template","creationDate":"July, 2012","author":"Svelte","copyright":"Copyright  2003-2011 template-help.com. All Rights Reserved.","authorEmail":"info@template-help.com","authorUrl":"http:\\/\\/www.template-help.com","version":"1.0","description":"${project.description}","group":""}', '{"master":"true"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'design2', 'template', 'design2', '', 0, 1, 1, 0, '{"legacy":false,"name":"design2","type":"template","creationDate":"2013-07-19","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"1.0","description":"Artisteer-generated theme","group":""}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'pinkmuffin6pm', 'template', 'pinkmuffin6pm', '', 0, 1, 1, 0, '{"legacy":false,"name":"pinkmuffin6pm","type":"template","creationDate":"2013-07-26","author":"Teddynet","copyright":"","authorEmail":"","authorUrl":"http:\\/\\/www.teddynet.net","version":"1.0","description":"Teddynet for Muffin","group":""}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'WOWSlider Module1', 'module', 'mod_wowslider1', '', 0, 1, 0, 0, '{"legacy":false,"name":"WOWSlider Module1","type":"module","creationDate":"April 2013","author":"WOWSlider.com","copyright":"Copyright (C) 2013 WOWSlider.com. All rights reserved.","authorEmail":"support@wowslider.com","authorUrl":"www.wowslider.com","version":"1.2.0","description":"WOWSlider Module 1 - This module will show image slideshow created with WOWSlider","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_filters`
--

CREATE TABLE IF NOT EXISTS `os914_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_links`
--

CREATE TABLE IF NOT EXISTS `os914_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `os914_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `os914_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `os914_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `os914_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `os914_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `os914_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `os914_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `os914_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `os914_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `os914_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `os914_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `os914_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `os914_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `os914_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `os914_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `os914_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `os914_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `os914_finder_taxonomy`
--

INSERT INTO `os914_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `os914_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_terms`
--

CREATE TABLE IF NOT EXISTS `os914_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `os914_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `os914_finder_terms_common`
--

INSERT INTO `os914_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `os914_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `os914_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_finder_types`
--

CREATE TABLE IF NOT EXISTS `os914_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `os914_languages`
--

CREATE TABLE IF NOT EXISTS `os914_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `os914_languages`
--

INSERT INTO `os914_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `os914_menu`
--

CREATE TABLE IF NOT EXISTS `os914_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=118 ;

--
-- Dumping data for table `os914_menu`
--

INSERT INTO `os914_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 75, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 33, 34, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 35, 40, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 36, 37, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 38, 39, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","orderby_pri":"","orderby_sec":"front","order_date":"","multi_column_order":"1","show_pagination":"2","show_pagination_results":"1","show_noauth":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"1","feed_summary":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 0, '*', 0),
(102, 'mainmenu', 'Chi Siamo', 'chi-siamo', '', 'chi-siamo', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 44, 0, '*', 0),
(104, 'ct-horizontal-menu', 'Home', 'ct-menu-item-1', '', 'ct-menu-item-1', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":"1","page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":"0"}', 47, 48, 1, '*', 0),
(105, 'ct-vertical-menu', 'Home', 'ct-menu-item-2', '', 'ct-menu-item-2', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":"1","page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":"0"}', 49, 50, 0, '*', 0),
(106, 'ct-horizontal-menu', 'Menú&Cakes', 'ct-menu-item-3', '', 'ct-menu-item-3', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":"1","page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":"0"}', 51, 52, 0, '*', 0),
(107, 'ct-vertical-menu', 'Menú&Cakes', 'ct-menu-item-4', '', 'ct-menu-item-4', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":"1","page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":"0"}', 53, 54, 0, '*', 0),
(108, 'ct-horizontal-menu', 'Dicono di noi', 'ct-menu-item-5', '', 'ct-menu-item-5', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":"1","page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":"0"}', 55, 56, 0, '*', 0),
(109, 'ct-vertical-menu', 'Dicono di noi', 'ct-menu-item-6', '', 'ct-menu-item-6', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":"1","page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":"0"}', 57, 58, 0, '*', 0),
(110, 'ct-horizontal-menu', 'Laboratorio', 'ct-menu-item-7', '', 'ct-menu-item-7', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":"1","page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":"0"}', 59, 60, 0, '*', 0),
(111, 'ct-vertical-menu', 'Laboratorio', 'ct-menu-item-8', '', 'ct-menu-item-8', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":"1","page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":"0"}', 61, 62, 0, '*', 0),
(112, 'ct-horizontal-menu', 'News', 'ct-menu-item-9', '', 'ct-menu-item-9', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":"1","page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":"0"}', 63, 64, 0, '*', 0),
(113, 'ct-vertical-menu', 'News', 'ct-menu-item-10', '', 'ct-menu-item-10', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":"1","page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":"0"}', 65, 66, 0, '*', 0),
(114, 'ct-horizontal-menu', 'English', 'ct-menu-item-11', '', 'ct-menu-item-11', 'index.php?option=com_content&view=article&id=8', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":"1","page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":"0"}', 67, 68, 0, '*', 0),
(115, 'ct-vertical-menu', 'English', 'ct-menu-item-12', '', 'ct-menu-item-12', 'index.php?option=com_content&view=article&id=8', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":"1","page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":"0"}', 69, 70, 0, '*', 0),
(116, 'ct-special-menu', 'Special Blog Page', 'ct-menu-item-13', '', 'ct-menu-item-13', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"4","num_columns":"1","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 71, 72, 0, '*', 0),
(117, 'ct-special-menu', 'Special Single Page', 'ct-menu-item-14', '', 'ct-menu-item-14', 'index.php?option=com_content&view=article&id=', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":"1","page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":"0"}', 73, 74, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `os914_menu_types`
--

CREATE TABLE IF NOT EXISTS `os914_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `os914_menu_types`
--

INSERT INTO `os914_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(3, 'ct-horizontal-menu', 'Content / Horizontal Menu', ''),
(4, 'ct-vertical-menu', 'Content / Vertical Menu', ''),
(5, 'ct-special-menu', 'Content / Special Menu', '');

-- --------------------------------------------------------

--
-- Table structure for table `os914_messages`
--

CREATE TABLE IF NOT EXISTS `os914_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `os914_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `os914_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `os914_modules`
--

CREATE TABLE IF NOT EXISTS `os914_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=95 ;

--
-- Dumping data for table `os914_modules`
--

INSERT INTO `os914_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'Content / Horizontal Menu', '', '', 1, 'user3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"ct-horizontal-menu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"art-vmenu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(88, 'eventi:', '', '\n            <p style="text-align: center;"><img width="169" height="227" alt="" class="art-lightbox" src="images/template-content/310048_581529598534167_394402478_n.jpg"><br></p>\n        \n        ', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(89, 'Seguiteci su:', '', '\n            <p style="text-align: left;"><img width="45" height="45" alt="" class="art-lightbox" src="images/template-content/rss.png">&nbsp; &nbsp;<img width="45" height="45" alt="" class="art-lightbox" src="images/template-content/facebook.png">&nbsp;<img width="45" height="45" alt="" class="art-lightbox" src="images/template-content/linkedin.png"><br></p>\n        \n        ', 2, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(90, 'Ultime NOvitÁ', '', '\n            <p><img width="64" height="64" alt="" src="images/template-content/11_64x64.png" style="float: left;" class="">Aliquam erat volutpat. Vestibulum eget lectus in orci imperdiet fringilla. Duis neque nulla, sodales non tristique non, sagittis eu purus. &nbsp;<a href="#">Read More</a><br></p>\n<p><img width="64" height="64" alt="" src="images/template-content/16_64x64.png" style="float: left;" class="">&nbsp;Duis neque nulla, sodales non tristique non, sagittis eu purus. Nullam ac eros leo, a sagittis lacus. Duis aliquet cursus massa eu sodales. &nbsp;<a href="#">Read More</a><br></p>\n        \n        ', 3, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(91, 'Footer1', '', '\n            \n        <h2><span style="color: #FFFFFF;"><br></span></h2>\n         \n        <br>\n    \n        \n        ', 1, 'footer1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(92, 'Footer2', '', '\n            \n        <h2><span style="color: rgb(255, 255, 255); font-size: 9px;">ELEMENTUM MAURIS PURUS, A LOBORTIS NULLA RHONCUS VEL. VESTIBULUM NO N AUGUE LOBORTIS, CONSECTETUR ENIM QUIS, TEMPUS DOLOR. VESTIBULUM ET MAGNA IPSUM. ALIQUAM INTERDUM NULLA VEL ELEMENTUM. MAURIS MI NUNC, CONVALLIS BIBENDUM ANTE ID, TRISTIQUE IACULIS ODIO. SED SIT AMET ULTRICES DUI. SUSPENDISSE VENENATIS FELIS UT MI FRINGILLA PORTTITOR. VIVAMUS TRISTIQUE, NEQUE VITAE</span></h2><p><br></p>\n    \n        \n        ', 1, 'footer2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(93, 'Footer3', '', '\n            \n        <h2><span style="color: rgb(255, 255, 255); font-size: 9px;">ELEMENTUM MAURIS PURUS, A LOBORTIS NULLA RHONCUS VEL. VESTIBULUM NO N AUGUE LOBORTIS, CONSECTETUR ENIM QUIS, TEMPUS DOLOR. VESTIBULUM ET MAGNA IPSUM. ALIQUAM INTERDUM NULLA VEL ELEMENTUM. MAURIS MI NUNC, CONVALLIS BIBENDUM ANTE ID, TRISTIQUE IACULIS ODIO. SED SIT AMET ULTRICES DUI. SUSPENDISSE VENENATIS FELIS UT MI FRINGILLA PORTTITOR. VIVAMUS TRISTIQUE, NEQUE VITAE</span></h2><p><br></p>\n    \n        \n    \n    \n', 1, 'footer3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(94, 'WOWSlider Module1', '', '', 1, 'banner1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_wowslider1', 1, 0, '', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `os914_modules_menu`
--

CREATE TABLE IF NOT EXISTS `os914_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `os914_modules_menu`
--

INSERT INTO `os914_modules_menu` (`moduleid`, `menuid`) VALUES
(1, -117),
(1, -116),
(1, -115),
(1, -114),
(1, -113),
(1, -112),
(1, -111),
(1, -110),
(1, -109),
(1, -108),
(1, -107),
(1, -106),
(1, -105),
(1, -104),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, -117),
(16, -116),
(16, -115),
(16, -114),
(16, -113),
(16, -112),
(16, -111),
(16, -110),
(16, -109),
(16, -108),
(16, -107),
(16, -106),
(16, -105),
(16, -104),
(17, -117),
(17, -116),
(17, -115),
(17, -114),
(17, -113),
(17, -112),
(17, -111),
(17, -110),
(17, -109),
(17, -108),
(17, -107),
(17, -106),
(17, -105),
(17, -104),
(79, 0),
(86, 0),
(87, 104),
(87, 105),
(87, 106),
(87, 107),
(87, 108),
(87, 109),
(87, 110),
(87, 111),
(87, 112),
(87, 113),
(87, 114),
(87, 115),
(87, 116),
(87, 117),
(88, 104),
(88, 105),
(88, 106),
(88, 107),
(88, 108),
(88, 109),
(88, 110),
(88, 111),
(88, 112),
(88, 113),
(88, 114),
(88, 115),
(88, 116),
(88, 117),
(89, 104),
(89, 105),
(89, 106),
(89, 107),
(89, 108),
(89, 109),
(89, 110),
(89, 111),
(89, 112),
(89, 113),
(89, 114),
(89, 115),
(89, 116),
(89, 117),
(90, 104),
(90, 105),
(90, 106),
(90, 107),
(90, 108),
(90, 109),
(90, 110),
(90, 111),
(90, 112),
(90, 113),
(90, 114),
(90, 115),
(90, 116),
(90, 117),
(91, 104),
(91, 105),
(91, 106),
(91, 107),
(91, 108),
(91, 109),
(91, 110),
(91, 111),
(91, 112),
(91, 113),
(91, 114),
(91, 115),
(91, 116),
(91, 117),
(92, 104),
(92, 105),
(92, 106),
(92, 107),
(92, 108),
(92, 109),
(92, 110),
(92, 111),
(92, 112),
(92, 113),
(92, 114),
(92, 115),
(92, 116),
(92, 117),
(93, 104),
(93, 105),
(93, 106),
(93, 107),
(93, 108),
(93, 109),
(93, 110),
(93, 111),
(93, 112),
(93, 113),
(93, 114),
(93, 115),
(93, 116),
(93, 117),
(94, 104);

-- --------------------------------------------------------

--
-- Table structure for table `os914_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `os914_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `os914_overrider`
--

CREATE TABLE IF NOT EXISTS `os914_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `os914_redirect_links`
--

CREATE TABLE IF NOT EXISTS `os914_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `os914_schemas`
--

CREATE TABLE IF NOT EXISTS `os914_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `os914_schemas`
--

INSERT INTO `os914_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.4-2012-03-19');

-- --------------------------------------------------------

--
-- Table structure for table `os914_session`
--

CREATE TABLE IF NOT EXISTS `os914_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `os914_session`
--

INSERT INTO `os914_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('443d1eb91845369988c48c04478f93b8', 0, 1, '1374857530', '__default|a:8:{s:22:"session.client.browser";s:108:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36";s:15:"session.counter";i:30;s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":23:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"fcaecedba85d21f10470aa3080754890";s:19:"session.timer.start";i:1374854741;s:18:"session.timer.last";i:1374857436;s:17:"session.timer.now";i:1374857528;}', 0, '', ''),
('h9oa1oa7hmbgp4fpsbevvlb516', 1, 0, '1374857549', '__default|a:8:{s:15:"session.counter";i:107;s:19:"session.timer.start";i:1374854683;s:18:"session.timer.last";i:1374857545;s:17:"session.timer.now";i:1374857547;s:22:"session.client.browser";s:108:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":6:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:13:"com_installer";O:8:"stdClass":3:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";s:12:"redirect_url";N;}s:13:"com_templates";O:8:"stdClass":2:{s:6:"styles";O:8:"stdClass":1:{s:10:"limitstart";i:0;}s:4:"edit";O:8:"stdClass":1:{s:5:"style";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}}s:11:"com_modules";O:8:"stdClass":4:{s:7:"modules";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":8:{s:18:"client_id_previous";i:0;s:6:"search";s:0:"";s:6:"access";i:0;s:5:"state";s:0:"";s:8:"position";s:0:"";s:6:"module";s:0:"";s:9:"client_id";i:0;s:8:"language";s:0:"";}s:10:"limitstart";s:1:"0";s:8:"ordercol";s:8:"position";s:9:"orderdirn";s:3:"asc";}s:4:"edit";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}s:3:"add";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:12:"extension_id";N;s:6:"params";N;}}s:9:"positions";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":4:{s:6:"search";s:6:"banner";s:5:"state";s:0:"";s:8:"template";s:0:"";s:4:"type";s:0:"";}s:10:"limitstart";i:0;s:8:"ordercol";s:5:"value";s:9:"orderdirn";s:3:"asc";}}s:6:"global";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";s:1:"0";}}s:11:"com_content";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:7:"article";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}}}}s:4:"user";O:5:"JUser":23:{s:9:"\0*\0isRoot";b:1;s:2:"id";s:2:"42";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:17:"alexrah@gmail.com";s:8:"password";s:65:"55dd29ce17e038ba91db6040de7ca868:GVHW4PaoxiJYTECifcwPgpxbDz2AaMBb";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2013-07-19 14:38:59";s:13:"lastvisitDate";s:19:"2013-07-26 13:51:39";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"70328bda3b4574b34eddfc8c5ef98fba";}', 42, 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `os914_template_styles`
--

CREATE TABLE IF NOT EXISTS `os914_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `os914_template_styles`
--

INSERT INTO `os914_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(7, 'theme1103', 0, '0', 'theme1103 - Default', '{"master":"true"}'),
(8, 'design2', 0, '0', 'design2 - Default', '[]'),
(9, 'pinkmuffin6pm', 0, '1', 'pinkmuffin6pm - Default', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `os914_updates`
--

CREATE TABLE IF NOT EXISTS `os914_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `os914_updates`
--

INSERT INTO `os914_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 1, 700, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.11', '', 'http://update.joomla.org/core/extension.xml', ''),
(2, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.13', '', 'http://update.joomla.org/core/extension.xml', ''),
(3, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.13', '', 'http://update.joomla.org/core/extension.xml', ''),
(4, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.13', '', 'http://update.joomla.org/core/extension.xml', '');

-- --------------------------------------------------------

--
-- Table structure for table `os914_update_categories`
--

CREATE TABLE IF NOT EXISTS `os914_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `os914_update_sites`
--

CREATE TABLE IF NOT EXISTS `os914_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `os914_update_sites`
--

INSERT INTO `os914_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1374854700),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1374854700);

-- --------------------------------------------------------

--
-- Table structure for table `os914_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `os914_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `os914_update_sites_extensions`
--

INSERT INTO `os914_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700);

-- --------------------------------------------------------

--
-- Table structure for table `os914_usergroups`
--

CREATE TABLE IF NOT EXISTS `os914_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `os914_usergroups`
--

INSERT INTO `os914_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users');

-- --------------------------------------------------------

--
-- Table structure for table `os914_users`
--

CREATE TABLE IF NOT EXISTS `os914_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `os914_users`
--

INSERT INTO `os914_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(42, 'Super User', 'admin', 'alexrah@gmail.com', '55dd29ce17e038ba91db6040de7ca868:GVHW4PaoxiJYTECifcwPgpxbDz2AaMBb', 'deprecated', 0, 1, '2013-07-19 14:38:59', '2013-07-26 16:04:54', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `os914_user_notes`
--

CREATE TABLE IF NOT EXISTS `os914_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `os914_user_profiles`
--

CREATE TABLE IF NOT EXISTS `os914_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `os914_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `os914_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `os914_user_usergroup_map`
--

INSERT INTO `os914_user_usergroup_map` (`user_id`, `group_id`) VALUES
(42, 8);

-- --------------------------------------------------------

--
-- Table structure for table `os914_viewlevels`
--

CREATE TABLE IF NOT EXISTS `os914_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `os914_viewlevels`
--

INSERT INTO `os914_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Table structure for table `os914_weblinks`
--

CREATE TABLE IF NOT EXISTS `os914_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
