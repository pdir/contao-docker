-- phpMyAdmin SQL Dump
-- version 4.2.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 14, 2018 at 01:15 PM
-- Server version: 5.6.40
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contao`
--

-- --------------------------------------------------------

--
-- Table structure for table `tl_article`
--

CREATE TABLE `tl_article` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `author` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `inColumn` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8_unicode_ci,
  `showTeaser` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `teaserCssID` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `teaser` text COLLATE utf8_unicode_ci,
  `printable` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customTpl` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `protected` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cssID` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `published` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tl_article`
--

INSERT INTO `tl_article` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `author`, `inColumn`, `keywords`, `showTeaser`, `teaserCssID`, `teaser`, `printable`, `customTpl`, `protected`, `groups`, `guests`, `cssID`, `published`, `start`, `stop`) VALUES
(1, 2, 128, 1514291892, 'Home', 'index', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_calendar`
--

CREATE TABLE `tl_calendar` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `protected` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `allowComments` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `notify` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortOrder` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `perPage` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `moderate` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bbcode` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `requireLogin` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disableCaptcha` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_calendar_events`
--

CREATE TABLE `tl_calendar_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `author` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `addTime` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `startTime` int(10) UNSIGNED DEFAULT NULL,
  `endTime` int(10) UNSIGNED DEFAULT NULL,
  `startDate` int(10) UNSIGNED DEFAULT NULL,
  `endDate` int(10) UNSIGNED DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `teaser` text COLLATE utf8_unicode_ci,
  `addImage` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `overwriteMeta` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imageTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imagemargin` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fullsize` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `floating` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recurring` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `repeatEach` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `repeatEnd` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `recurrences` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `addEnclosure` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enclosure` blob,
  `source` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `articleId` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cssClass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `noComments` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `published` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_calendar_feed`
--

CREATE TABLE `tl_calendar_feed` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `language` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `calendars` blob,
  `format` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `source` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `maxItems` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `feedBase` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_comments`
--

CREATE TABLE `tl_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `source` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci,
  `addReply` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reply` text COLLATE utf8_unicode_ci,
  `published` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `notified` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `notifiedReply` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_comments_notify`
--

CREATE TABLE `tl_comments_notify` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `source` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `addedOn` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tokenConfirm` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tokenRemove` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_content`
--

CREATE TABLE `tl_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptable` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `text` mediumtext COLLATE utf8_unicode_ci,
  `addImage` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `overwriteMeta` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imageTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imagemargin` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fullsize` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `floating` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `html` mediumtext COLLATE utf8_unicode_ci,
  `listtype` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listitems` blob,
  `tableitems` mediumblob,
  `summary` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thead` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tfoot` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tleft` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortable` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortIndex` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sortOrder` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mooHeadline` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mooStyle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mooClasses` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `highlight` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `code` text COLLATE utf8_unicode_ci,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `titleText` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `linkTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `embed` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rel` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `useImage` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `multiSRC` blob,
  `orderSRC` blob,
  `useHomeDir` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `perRow` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `perPage` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `numberOfItems` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sortBy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `metaIgnore` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `galleryTpl` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customTpl` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `playerSRC` blob,
  `youtube` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vimeo` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posterSRC` binary(16) DEFAULT NULL,
  `playerSize` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autoplay` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sliderDelay` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sliderSpeed` int(10) UNSIGNED NOT NULL DEFAULT '300',
  `sliderStartSlide` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sliderContinuous` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cteAlias` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `articleAlias` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `article` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `form` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `module` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `protected` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cssID` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `invisible` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `com_order` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `com_perPage` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `com_moderate` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `com_bbcode` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `com_disableCaptcha` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `com_requireLogin` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `com_template` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_cron`
--

CREATE TABLE `tl_cron` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tl_cron`
--

INSERT INTO `tl_cron` (`id`, `name`, `value`) VALUES
(1, 'lastrun', '1526295900'),
(2, 'monthly', '0'),
(3, 'weekly', '0'),
(4, 'daily', '20180514'),
(5, 'hourly', '0'),
(6, 'minutely', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tl_faq`
--

CREATE TABLE `tl_faq` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `author` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `answer` text COLLATE utf8_unicode_ci,
  `addImage` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `overwriteMeta` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imageTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imagemargin` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fullsize` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `floating` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `addEnclosure` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enclosure` blob,
  `noComments` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `published` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_faq_category`
--

CREATE TABLE `tl_faq_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `allowComments` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `notify` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortOrder` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `perPage` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `moderate` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bbcode` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `requireLogin` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disableCaptcha` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_files`
--

CREATE TABLE `tl_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` binary(16) DEFAULT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uuid` binary(16) DEFAULT NULL,
  `type` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1022) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `found` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `importantPartX` int(11) NOT NULL DEFAULT '0',
  `importantPartY` int(11) NOT NULL DEFAULT '0',
  `importantPartWidth` int(11) NOT NULL DEFAULT '0',
  `importantPartHeight` int(11) NOT NULL DEFAULT '0',
  `meta` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tl_files`
--

INSERT INTO `tl_files` (`id`, `pid`, `tstamp`, `uuid`, `type`, `path`, `extension`, `hash`, `found`, `name`, `importantPartX`, `importantPartY`, `importantPartWidth`, `importantPartHeight`, `meta`) VALUES
(1, NULL, 1514291421, 0x8a32a848ea3811e7a8bf8c85901982e7, 'folder', 'files/themes', '', 'f6a1b72d202eb19527e4b2bc972faa83', '1', 'themes', 0, 0, 0, 0, NULL),
(2, 0x8a32a848ea3811e7a8bf8c85901982e7, 1514291421, 0x8a32a834ea3811e7a8bf8c85901982e7, 'folder', 'files/themes/finanzblog', '', 'efe4bb79a96fe36ad9d05c6ba3a3213f', '1', 'finanzblog', 0, 0, 0, 0, NULL),
(3, 0x8a32a834ea3811e7a8bf8c85901982e7, 1514291421, 0x8a32a82aea3811e7a8bf8c85901982e7, 'folder', 'files/themes/finanzblog/js', '', '7a9076d6d94e62c13d641aa71f19ae8e', '1', 'js', 0, 0, 0, 0, NULL),
(4, 0x8a32a82aea3811e7a8bf8c85901982e7, 1514291421, 0x8a32a816ea3811e7a8bf8c85901982e7, 'file', 'files/themes/finanzblog/js/main.js', 'js', '61e80aa972041a4e8713793e464cfa7a', '1', 'main.js', 0, 0, 0, 0, NULL),
(5, 0x8a32a834ea3811e7a8bf8c85901982e7, 1514291421, 0x8a32a80cea3811e7a8bf8c85901982e7, 'folder', 'files/themes/finanzblog/scss', '', '953e3d937c323551ecfa04dbdb192ff7', '1', 'scss', 0, 0, 0, 0, NULL),
(6, 0x8a32a80cea3811e7a8bf8c85901982e7, 1514291421, 0x8a32a7f8ea3811e7a8bf8c85901982e7, 'file', 'files/themes/finanzblog/scss/_layout.scss', 'scss', 'd41d8cd98f00b204e9800998ecf8427e', '1', '_layout.scss', 0, 0, 0, 0, NULL),
(7, 0x8a32a80cea3811e7a8bf8c85901982e7, 1514291421, 0x8a32a7eeea3811e7a8bf8c85901982e7, 'file', 'files/themes/finanzblog/scss/_navigation.scss', 'scss', 'd41d8cd98f00b204e9800998ecf8427e', '1', '_navigation.scss', 0, 0, 0, 0, NULL),
(8, 0x8a32a80cea3811e7a8bf8c85901982e7, 1514291421, 0x8a32a7daea3811e7a8bf8c85901982e7, 'file', 'files/themes/finanzblog/scss/_mobile.scss', 'scss', 'd41d8cd98f00b204e9800998ecf8427e', '1', '_mobile.scss', 0, 0, 0, 0, NULL),
(9, 0x8a32a80cea3811e7a8bf8c85901982e7, 1514291421, 0x8a32a7c6ea3811e7a8bf8c85901982e7, 'file', 'files/themes/finanzblog/scss/_content.scss', 'scss', 'd41d8cd98f00b204e9800998ecf8427e', '1', '_content.scss', 0, 0, 0, 0, NULL),
(10, 0x8a32a80cea3811e7a8bf8c85901982e7, 1514291421, 0x8a32a64aea3811e7a8bf8c85901982e7, 'file', 'files/themes/finanzblog/scss/main.scss', 'scss', '50b846db28d3cd3f72b61217522831a9', '1', 'main.scss', 0, 0, 0, 0, NULL),
(11, 0x8a32a834ea3811e7a8bf8c85901982e7, 1514311871, 0x8a33c6baea3811e7a8bf8c85901982e7, 'folder', 'files/themes/finanzblog/img', '', '2d80491ed398b43a42a8d266d68c3f64', '1', 'img', 0, 0, 0, 0, 0x613a313a7b733a323a226465223b613a343a7b733a353a227469746c65223b733a303a22223b733a333a22616c74223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d),
(12, 0x8a33c6baea3811e7a8bf8c85901982e7, 1514291421, 0x8a33c6b0ea3811e7a8bf8c85901982e7, 'folder', 'files/themes/finanzblog/img/footer', '', 'd41d8cd98f00b204e9800998ecf8427e', '1', 'footer', 0, 0, 0, 0, NULL),
(13, 0x8a33c6baea3811e7a8bf8c85901982e7, 1514291421, 0x8a33c6a6ea3811e7a8bf8c85901982e7, 'folder', 'files/themes/finanzblog/img/body', '', 'd41d8cd98f00b204e9800998ecf8427e', '1', 'body', 0, 0, 0, 0, NULL),
(14, 0x8a33c6baea3811e7a8bf8c85901982e7, 1514291421, 0x8a33c69cea3811e7a8bf8c85901982e7, 'folder', 'files/themes/finanzblog/img/content', '', 'd41d8cd98f00b204e9800998ecf8427e', '1', 'content', 0, 0, 0, 0, NULL),
(15, 0x8a33c6baea3811e7a8bf8c85901982e7, 1514291421, 0x8a33c692ea3811e7a8bf8c85901982e7, 'folder', 'files/themes/finanzblog/img/header', '', 'd41d8cd98f00b204e9800998ecf8427e', '1', 'header', 0, 0, 0, 0, NULL),
(16, 0x8a32a834ea3811e7a8bf8c85901982e7, 1514291500, 0xb979c0d3ea3811e7a8bf8c85901982e7, 'folder', 'files/themes/finanzblog/concept', '', 'cb5d0979d23c07499fe4de3ba760cbbe', '1', 'concept', 0, 0, 0, 0, NULL),
(17, 0xb979c0d3ea3811e7a8bf8c85901982e7, 1514291500, 0xb979c0d2ea3811e7a8bf8c85901982e7, 'file', 'files/themes/finanzblog/concept/finanzblog.png', 'png', 'f91caacdbee59163ff32afb9c4379679', '1', 'finanzblog.png', 0, 0, 0, 0, NULL),
(18, NULL, 1514313365, 0x906b7fb8ea6b11e78ac28c85901982e7, 'folder', 'files/pages', '', 'db15213a643ab59d231aabb28ae9a79e', '1', 'pages', 0, 0, 0, 0, 0x613a313a7b733a323a226465223b613a343a7b733a353a227469746c65223b733a303a22223b733a333a22616c74223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d),
(19, 0x906b7fb8ea6b11e78ac28c85901982e7, 1514313337, 0x906b7fa4ea6b11e78ac28c85901982e7, 'folder', 'files/pages/girokonto_kreditkarte', '', 'd0cc57d1adbbc11b4e6e0d85965965bb', '1', 'girokonto_kreditkarte', 0, 0, 0, 0, NULL),
(20, 0x906b7fa4ea6b11e78ac28c85901982e7, 1514313631, 0x906b7f9aea6b11e78ac28c85901982e7, 'file', 'files/pages/girokonto_kreditkarte/kreditkarte_hand.jpg', 'jpg', '8eb8614601ab28b45a37a8479d2104e0', '1', 'kreditkarte_hand.jpg', 0, 18, 500, 243, 0x613a313a7b733a323a226465223b613a343a7b733a353a227469746c65223b733a303a22223b733a333a22616c74223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d),
(21, 0x906b7fb8ea6b11e78ac28c85901982e7, 1514313828, 0xb5111b24ea6c11e78ac28c85901982e7, 'folder', 'files/pages/anlegen', '', 'f314e88570508304b7321aa2d459d432', '1', 'anlegen', 0, 0, 0, 0, NULL),
(22, 0xb5111b24ea6c11e78ac28c85901982e7, 1514313859, 0xb5111b1bea6c11e78ac28c85901982e7, 'file', 'files/pages/anlegen/investment.jpg', 'jpg', '37487c67bb05467c92d6ee5a80de1ef5', '1', 'investment.jpg', 0, 151, 385, 149, 0x613a313a7b733a323a226465223b613a343a7b733a353a227469746c65223b733a303a22223b733a333a22616c74223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d),
(23, 0xb5111b24ea6c11e78ac28c85901982e7, 1514314163, 0x7cffde73ea6d11e78ac28c85901982e7, 'file', 'files/pages/anlegen/banker.jpg', 'jpg', '32948e7bc80f15cbdf499799d5edee40', '1', 'banker.jpg', 0, 0, 0, 0, NULL),
(24, 0x906b7fb8ea6b11e78ac28c85901982e7, 1514314246, 0xae4ed80cea6d11e78ac28c85901982e7, 'folder', 'files/pages/reise', '', '5fde962ad8385fc2045c11ca67aa18e8', '1', 'reise', 0, 0, 0, 0, NULL),
(25, 0xae4ed80cea6d11e78ac28c85901982e7, 1514314246, 0xae4ed803ea6d11e78ac28c85901982e7, 'file', 'files/pages/reise/reise.jpg', 'jpg', 'c793f56d883f0637d8c65bd1781a2320', '1', 'reise.jpg', 0, 0, 0, 0, NULL),
(26, 0x906b7fb8ea6b11e78ac28c85901982e7, 1514314479, 0x392fbc8fea6e11e78ac28c85901982e7, 'folder', 'files/pages/kredite', '', '86af7816aa45f3742032429c0222dac4', '1', 'kredite', 0, 0, 0, 0, NULL),
(27, 0x392fbc8fea6e11e78ac28c85901982e7, 1514314479, 0x392fbc8eea6e11e78ac28c85901982e7, 'file', 'files/pages/kredite/gitarre.jpg', 'jpg', '848be80407599d95b5730738719880de', '1', 'gitarre.jpg', 0, 0, 0, 0, NULL),
(28, 0x8a32a848ea3811e7a8bf8c85901982e7, 1526296342, 0xac8b766c576711e8a912d6f6b48b1b45, 'folder', 'files/themes/default', '', '30c38a68d60176bc9571f278533ce484', '1', 'default', 0, 0, 0, 0, NULL),
(29, 0xac8b766c576711e8a912d6f6b48b1b45, 1526296342, 0xac8b764b576711e8a912d6f6b48b1b45, 'folder', 'files/themes/default/scss', '', '5fea46b06a7a67365ab1030a5ba1b6b1', '1', 'scss', 0, 0, 0, 0, NULL),
(30, 0xac8b764b576711e8a912d6f6b48b1b45, 1526296342, 0xac8b762c576711e8a912d6f6b48b1b45, 'file', 'files/themes/default/scss/_layout.scss', 'scss', 'd41d8cd98f00b204e9800998ecf8427e', '1', '_layout.scss', 0, 0, 0, 0, NULL),
(31, 0xac8b764b576711e8a912d6f6b48b1b45, 1526296342, 0xac8b7608576711e8a912d6f6b48b1b45, 'file', 'files/themes/default/scss/_content.scss', 'scss', 'd41d8cd98f00b204e9800998ecf8427e', '1', '_content.scss', 0, 0, 0, 0, NULL),
(32, 0xac8b764b576711e8a912d6f6b48b1b45, 1526296342, 0xac8b75e7576711e8a912d6f6b48b1b45, 'file', 'files/themes/default/scss/_mobile.scss', 'scss', 'd41d8cd98f00b204e9800998ecf8427e', '1', '_mobile.scss', 0, 0, 0, 0, NULL),
(33, 0xac8b764b576711e8a912d6f6b48b1b45, 1526296342, 0xac8b75c5576711e8a912d6f6b48b1b45, 'file', 'files/themes/default/scss/_navigation.scss', 'scss', 'd41d8cd98f00b204e9800998ecf8427e', '1', '_navigation.scss', 0, 0, 0, 0, NULL),
(34, 0xac8b764b576711e8a912d6f6b48b1b45, 1526296342, 0xac8b759f576711e8a912d6f6b48b1b45, 'file', 'files/themes/default/scss/main.scss', 'scss', 'c715e2142bd1b37583901e887b016f70', '1', 'main.scss', 0, 0, 0, 0, NULL),
(35, 0xac8b766c576711e8a912d6f6b48b1b45, 1526296342, 0xac8b757c576711e8a912d6f6b48b1b45, 'folder', 'files/themes/default/img', '', '47e426d64d359922df5601d2e7573c15', '1', 'img', 0, 0, 0, 0, NULL),
(36, 0xac8b757c576711e8a912d6f6b48b1b45, 1526296342, 0xac8b7547576711e8a912d6f6b48b1b45, 'folder', 'files/themes/default/img/header', '', 'e6d64055da08f2ff565113258d5c3cab', '1', 'header', 0, 0, 0, 0, NULL),
(37, 0xac8b7547576711e8a912d6f6b48b1b45, 1526296342, 0xac8b74b4576711e8a912d6f6b48b1b45, 'file', 'files/themes/default/img/header/logo_finanzblog.svg', 'svg', '2cec27e7b4dd0890d895ee810ce8f561', '1', 'logo_finanzblog.svg', 0, 0, 0, 0, NULL),
(38, 0xac8b757c576711e8a912d6f6b48b1b45, 1526296342, 0xac8f1931576711e8a912d6f6b48b1b45, 'folder', 'files/themes/default/img/footer', '', 'd41d8cd98f00b204e9800998ecf8427e', '1', 'footer', 0, 0, 0, 0, NULL),
(39, 0xac8b757c576711e8a912d6f6b48b1b45, 1526296342, 0xac8f1910576711e8a912d6f6b48b1b45, 'folder', 'files/themes/default/img/content', '', 'd41d8cd98f00b204e9800998ecf8427e', '1', 'content', 0, 0, 0, 0, NULL),
(40, 0xac8b757c576711e8a912d6f6b48b1b45, 1526296342, 0xac8f18ef576711e8a912d6f6b48b1b45, 'folder', 'files/themes/default/img/body', '', 'd41d8cd98f00b204e9800998ecf8427e', '1', 'body', 0, 0, 0, 0, NULL),
(41, 0xac8b766c576711e8a912d6f6b48b1b45, 1526296342, 0xac8f18cf576711e8a912d6f6b48b1b45, 'folder', 'files/themes/default/js', '', 'dd22e83b79c4418c80fe8b212752dd0a', '1', 'js', 0, 0, 0, 0, NULL),
(42, 0xac8f18cf576711e8a912d6f6b48b1b45, 1526296342, 0xac8f18af576711e8a912d6f6b48b1b45, 'file', 'files/themes/default/js/main.js', 'js', '94ebbf94db20ef57cb7453652fc3e2a8', '1', 'main.js', 0, 0, 0, 0, NULL),
(43, 0xac8b766c576711e8a912d6f6b48b1b45, 1526296342, 0xac8f188b576711e8a912d6f6b48b1b45, 'folder', 'files/themes/default/concept', '', '9280786f65a07a64e44c8aef24745c1e', '1', 'concept', 0, 0, 0, 0, NULL),
(44, 0xac8f188b576711e8a912d6f6b48b1b45, 1526296342, 0xac8f186a576711e8a912d6f6b48b1b45, 'file', 'files/themes/default/concept/finanzblog.png', 'png', 'f91caacdbee59163ff32afb9c4379679', '1', 'finanzblog.png', 0, 0, 0, 0, NULL),
(45, 0xac8f188b576711e8a912d6f6b48b1b45, 1526296342, 0xac8f1844576711e8a912d6f6b48b1b45, 'file', 'files/themes/default/concept/finanzblog_mobile.png', 'png', '53a8360f4aaa62174d927447a4ceecb6', '1', 'finanzblog_mobile.png', 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_form`
--

CREATE TABLE `tl_form` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sendViaEmail` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recipient` varchar(1022) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `format` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `skipEmpty` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `storeValues` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `targetTable` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customTpl` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `method` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `novalidate` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `attributes` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `formID` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `allowTags` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_form_field`
--

CREATE TABLE `tl_form_field` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `text` text COLLATE utf8_unicode_ci,
  `html` text COLLATE utf8_unicode_ci,
  `options` blob,
  `mandatory` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rgxp` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `placeholder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `multiple` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mSize` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `extensions` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `storeFile` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uploadFolder` binary(16) DEFAULT NULL,
  `useHomeDir` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `doNotOverwrite` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fsType` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `accesskey` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tabindex` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `fSize` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `customTpl` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imageSubmit` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `invisible` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_image_size`
--

CREATE TABLE `tl_image_size` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cssClass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sizes` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `densities` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `resizeMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zoom` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_image_size_item`
--

CREATE TABLE `tl_image_size_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `media` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sizes` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `densities` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `resizeMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zoom` int(11) DEFAULT NULL,
  `invisible` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_layout`
--

CREATE TABLE `tl_layout` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rows` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `headerHeight` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `footerHeight` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cols` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `widthLeft` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `widthRight` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sections` blob,
  `framework` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stylesheet` blob,
  `external` blob,
  `orderExt` blob,
  `loadingOrder` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `combineScripts` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modules` blob,
  `template` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `doctype` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `webfonts` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `viewport` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `titleTag` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cssClass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `onload` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `head` text COLLATE utf8_unicode_ci,
  `addJQuery` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `jSource` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `jquery` text COLLATE utf8_unicode_ci,
  `addMooTools` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mooSource` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mootools` text COLLATE utf8_unicode_ci,
  `picturefill` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `analytics` text COLLATE utf8_unicode_ci,
  `scripts` text COLLATE utf8_unicode_ci,
  `script` text COLLATE utf8_unicode_ci,
  `static` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `align` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `calendarfeeds` blob,
  `newsfeeds` blob,
  `external_scss_order` blob,
  `external_js_order` blob,
  `external_scss` blob,
  `external_js` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tl_layout`
--

INSERT INTO `tl_layout` (`id`, `pid`, `tstamp`, `name`, `rows`, `headerHeight`, `footerHeight`, `cols`, `widthLeft`, `widthRight`, `sections`, `framework`, `stylesheet`, `external`, `orderExt`, `loadingOrder`, `combineScripts`, `modules`, `template`, `doctype`, `webfonts`, `viewport`, `titleTag`, `cssClass`, `onload`, `head`, `addJQuery`, `jSource`, `jquery`, `addMooTools`, `mooSource`, `mootools`, `picturefill`, `analytics`, `scripts`, `script`, `static`, `width`, `align`, `calendarfeeds`, `newsfeeds`, `external_scss_order`, `external_js_order`, `external_scss`, `external_js`) VALUES
(1, 1, 1526296383, 'Default Layout', '3rw', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '1cl', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '', 0x613a313a7b693a303b613a343a7b733a353a227469746c65223b733a303a22223b733a323a226964223b733a303a22223b733a383a2274656d706c617465223b733a31333a22626c6f636b5f73656374696f6e223b733a383a22706f736974696f6e223b733a333a22746f70223b7d7d, 'a:2:{i:0;s:10:"layout.css";i:1;s:14:"responsive.css";}', NULL, NULL, NULL, 'external_first', '', 0x613a343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2231223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2235223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d7d, 'fe_page_comolo', 'html5', 'Open+Sans:300,400,600,700', '', '', '', '', NULL, '1', 'j_local', NULL, '', 'moo_local', NULL, '', NULL, NULL, NULL, '1', 'a:2:{s:4:"unit";s:2:"px";s:5:"value";s:3:"960";}', 'center', NULL, NULL, 0x613a313a7b693a303b733a31363a22ac8b759f576711e8a912d6f6b48b1b45223b7d, 0x613a313a7b693a303b733a31363a22ac8f18af576711e8a912d6f6b48b1b45223b7d, 0x613a313a7b693a303b733a31363a22ac8b759f576711e8a912d6f6b48b1b45223b7d, 0x613a313a7b693a303b733a31363a22ac8f18af576711e8a912d6f6b48b1b45223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `tl_log`
--

CREATE TABLE `tl_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `source` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `action` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `text` text COLLATE utf8_unicode_ci,
  `func` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `browser` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tl_log`
--

INSERT INTO `tl_log` (`id`, `tstamp`, `source`, `action`, `username`, `text`, `func`, `ip`, `browser`) VALUES
(1, 1514290849, 'FE', 'CRON', 'N/A', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '127.0.0.1', 'N/A'),
(2, 1514290849, 'FE', 'CRON', 'N/A', 'Purged the search cache', 'Contao\\Automator::purgeSearchCache', '127.0.0.1', 'N/A'),
(3, 1514290856, 'BE', 'ACCESS', 'anon.', 'User &quot;hendrik.obermayer&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(4, 1514290901, 'BE', 'CONFIGURATION', 'hendrik.obermayer', 'The global configuration variable &quot;websiteTitle&quot; has been changed from &quot;Contao Open Source CMS&quot; to &quot;finanzblog.org&quot;', 'Contao\\DC_File::save', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(5, 1514290901, 'BE', 'CONFIGURATION', 'hendrik.obermayer', 'The global configuration variable &quot;dateFormat&quot; has been changed from &quot;Y-m-d&quot; to &quot;d.m.Y&quot;', 'Contao\\DC_File::save', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(6, 1514290901, 'BE', 'CONFIGURATION', 'hendrik.obermayer', 'The global configuration variable &quot;datimFormat&quot; has been changed from &quot;Y-m-d H:i&quot; to &quot;d.m.Y H:i&quot;', 'Contao\\DC_File::save', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(7, 1514290901, 'BE', 'CONFIGURATION', 'hendrik.obermayer', 'The global configuration variable &quot;timeZone&quot; has been changed from &quot;GMT&quot; to &quot;Europe/Berlin&quot;', 'Contao\\DC_File::save', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(8, 1514291074, 'FE', 'ERROR', 'anon.', 'No root page found (host &quot;localhost:8080&quot;, languages &quot;de-DE, de, en-US, en&quot;)', 'Contao\\Frontend::getRootPageFromUrl', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(9, 1514291087, 'BE', 'GENERAL', 'N/A', 'File system/modules/pageimage/config/runonce.php ran once and has then been removed successfully', 'Contao\\Backend::handleRunOnce', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(10, 1514291395, 'BE', 'GENERAL', 'hendrik.obermayer', 'A new entry &quot;tl_theme.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(11, 1514291425, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_theme.id=1&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(12, 1514291428, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_theme.id=1&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(13, 1514291504, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 3 of record &quot;tl_theme.id=1&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(14, 1514291512, 'BE', 'GENERAL', 'hendrik.obermayer', 'A new entry &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(15, 1514291520, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(16, 1514291529, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(17, 1514291643, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 3 of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(18, 1514291648, 'BE', 'GENERAL', 'hendrik.obermayer', 'A new entry &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(19, 1514291658, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(20, 1514291667, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(21, 1514291667, 'BE', 'GENERAL', 'hendrik.obermayer', 'A new entry &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(22, 1514291675, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(23, 1514291681, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(24, 1514291681, 'BE', 'GENERAL', 'hendrik.obermayer', 'A new entry &quot;tl_module.id=3&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(25, 1514291755, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 4 of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(26, 1514291759, 'FE', 'ERROR', 'anon.', 'No root page found (host &quot;localhost:8080&quot;, languages &quot;de-DE, de, en-US, en&quot;)', 'Contao\\Frontend::getRootPageFromUrl', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(27, 1514291763, 'FE', 'ERROR', 'anon.', 'No root page found (host &quot;localhost:8080&quot;, languages &quot;de-DE, de, en-US, en&quot;)', 'Contao\\Frontend::getRootPageFromUrl', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(28, 1514291770, 'BE', 'GENERAL', 'hendrik.obermayer', 'A new entry &quot;tl_page.id=1&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(29, 1514291872, 'BE', 'CRON', 'hendrik.obermayer', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(30, 1514291877, 'BE', 'GENERAL', 'hendrik.obermayer', 'A new entry &quot;tl_page.id=2&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(31, 1514291892, 'BE', 'CRON', 'hendrik.obermayer', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(32, 1514291910, 'BE', 'CONFIGURATION', 'hendrik.obermayer', 'The global configuration variable &quot;websiteTitle&quot; has been changed from &quot;finanzblog.org&quot; to &quot;Finanzblog&quot;', 'Contao\\DC_File::save', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(33, 1514291961, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 5 of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(34, 1514292020, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 6 of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(35, 1514310019, 'BE', 'ACCESS', 'anon.', 'User &quot;hendrik.obermayer&quot; has logged in', 'Contao\\User::login', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(36, 1514310129, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 3 of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(37, 1514310146, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_module.id=3&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(38, 1514310154, 'BE', 'GENERAL', 'hendrik.obermayer', 'A new entry &quot;tl_page.id=3&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(39, 1514310176, 'BE', 'CRON', 'hendrik.obermayer', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(40, 1514310179, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_page.id=2&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(41, 1514310184, 'BE', 'CRON', 'hendrik.obermayer', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(42, 1514310184, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_page.id=2&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(43, 1514310202, 'BE', 'GENERAL', 'hendrik.obermayer', 'A new entry &quot;tl_page.id=4&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(44, 1514310207, 'BE', 'CRON', 'hendrik.obermayer', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(45, 1514310207, 'BE', 'GENERAL', 'hendrik.obermayer', 'A new entry &quot;tl_page.id=5&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(46, 1514310217, 'BE', 'CRON', 'hendrik.obermayer', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(47, 1514310217, 'BE', 'GENERAL', 'hendrik.obermayer', 'A new entry &quot;tl_page.id=6&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(48, 1514310230, 'BE', 'CRON', 'hendrik.obermayer', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(49, 1514310234, 'BE', 'GENERAL', 'hendrik.obermayer', 'A new entry &quot;tl_page.id=7&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(50, 1514310248, 'BE', 'CRON', 'hendrik.obermayer', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(51, 1514310282, 'BE', 'GENERAL', 'hendrik.obermayer', 'A new entry &quot;tl_page.id=8&quot; has been created', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(52, 1514310293, 'BE', 'CRON', 'hendrik.obermayer', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(53, 1514310295, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_page.id=8&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(54, 1514310298, 'BE', 'CRON', 'hendrik.obermayer', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(55, 1514310298, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_page.id=8&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(56, 1514311807, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 4 of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(57, 1514311827, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 5 of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(58, 1514311865, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_files.id=11&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(59, 1514311869, 'BE', 'CRON', 'hendrik.obermayer', 'Regenerated the symlinks', 'Contao\\Automator::generateSymlinks', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(60, 1514311869, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_files.id=11&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(61, 1514311871, 'BE', 'CRON', 'hendrik.obermayer', 'Regenerated the symlinks', 'Contao\\Automator::generateSymlinks', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(62, 1514313059, 'BE', 'GENERAL', 'hendrik.obermayer', 'A new entry &quot;tl_module.id=4&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(63, 1514313069, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_module.id=4&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(64, 1514313080, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_module.id=4&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(65, 1514313088, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 3 of record &quot;tl_module.id=4&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(66, 1514313103, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 7 of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(67, 1514313326, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_page.id=3&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(68, 1514313338, 'BE', 'CRON', 'hendrik.obermayer', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(69, 1514313338, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_page.id=3&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(70, 1514313362, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_files.id=18&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(71, 1514313365, 'BE', 'CRON', 'hendrik.obermayer', 'Regenerated the symlinks', 'Contao\\Automator::generateSymlinks', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(72, 1514313365, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_files.id=18&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(73, 1514313381, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 8 of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(74, 1514313445, 'BE', 'FILES', 'hendrik.obermayer', 'File or folder &quot;templates/finanzblog/mod_pageimage.html5&quot; has been deleted', 'Contao\\DC_Folder::delete', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(75, 1514313458, 'BE', 'GENERAL', 'hendrik.obermayer', 'A new entry &quot;tl_module.id=5&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\DC_Table::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(76, 1514313465, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_module.id=5&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(77, 1514313475, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_module.id=5&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(78, 1514313484, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 4 of record &quot;tl_module.id=4&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(79, 1514313496, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 3 of record &quot;tl_module.id=5&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(80, 1514313519, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 4 of record &quot;tl_module.id=5&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(81, 1514313536, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 9 of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(82, 1514313580, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 5 of record &quot;tl_module.id=4&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(83, 1514313591, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 6 of record &quot;tl_module.id=4&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(84, 1514313608, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_files.id=20&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(85, 1514313631, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_files.id=20&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(86, 1514313823, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_page.id=4&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(87, 1514313830, 'BE', 'CRON', 'hendrik.obermayer', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(88, 1514313830, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_page.id=4&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(89, 1514313842, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_files.id=22&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(90, 1514313859, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_files.id=22&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(91, 1514313873, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 7 of record &quot;tl_module.id=4&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(92, 1514314165, 'BE', 'CRON', 'hendrik.obermayer', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(93, 1514314165, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 3 of record &quot;tl_page.id=4&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(94, 1514314241, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_page.id=6&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(95, 1514314248, 'BE', 'CRON', 'hendrik.obermayer', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(96, 1514314248, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_page.id=6&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(97, 1514314471, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_page.id=5&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(98, 1514314481, 'BE', 'CRON', 'hendrik.obermayer', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(99, 1514314481, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_page.id=5&quot; has been created', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(100, 1514314566, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 3 of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(101, 1514314574, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 4 of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(102, 1514314616, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 5 of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(103, 1514314620, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 6 of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(104, 1514314737, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 7 of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(105, 1514314801, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 8 of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(106, 1514314859, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 9 of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(107, 1514314968, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 10 of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36'),
(108, 1526295845, 'BE', 'GENERAL', 'N/A', 'File system/modules/pageimage/config/runonce.php ran once and has then been removed successfully', 'Contao\\Backend::handleRunOnce', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(109, 1526295903, 'FE', 'CRON', 'N/A', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', '127.0.0.1', 'N/A'),
(110, 1526295903, 'FE', 'CRON', 'N/A', 'Purged the search cache', 'Contao\\Automator::purgeSearchCache', '127.0.0.1', 'N/A'),
(111, 1526295903, 'FE', 'CRON', 'N/A', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '127.0.0.1', 'N/A'),
(112, 1526295909, 'BE', 'ACCESS', 'anon.', 'Could not find user &quot;hendrik&quot;', 'Contao\\User::login', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(113, 1526295917, 'BE', 'ACCESS', 'anon.', 'User &quot;hendrik.obermayer&quot; has logged in', 'Contao\\User::login', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(114, 1526295925, 'BE', 'GENERAL', 'hendrik.obermayer', 'A new entry &quot;tl_superlogin_server.id=1&quot; has been created', 'Contao\\DC_Table::create', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(115, 1526296347, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_theme.id=1&quot; has been created', 'Contao\\Versions::create', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(116, 1526296352, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(117, 1526296383, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(118, 1526296406, 'BE', 'GENERAL', 'hendrik.obermayer', 'DELETE FROM tl_page WHERE id=3', 'Contao\\DC_Table::delete', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(119, 1526296413, 'BE', 'GENERAL', 'hendrik.obermayer', 'DELETE FROM tl_page WHERE id=4', 'Contao\\DC_Table::delete', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(120, 1526296413, 'BE', 'GENERAL', 'hendrik.obermayer', 'DELETE FROM tl_page WHERE id=5', 'Contao\\DC_Table::delete', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(121, 1526296413, 'BE', 'GENERAL', 'hendrik.obermayer', 'DELETE FROM tl_page WHERE id=6', 'Contao\\DC_Table::delete', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(122, 1526296413, 'BE', 'GENERAL', 'hendrik.obermayer', 'DELETE FROM tl_page WHERE id=8', 'Contao\\DC_Table::delete', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(123, 1526296413, 'BE', 'GENERAL', 'hendrik.obermayer', 'DELETE FROM tl_page WHERE id=7', 'Contao\\DC_Table::delete', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(124, 1526296415, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_page.id=2&quot; has been created', 'Contao\\Versions::create', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(125, 1526296426, 'BE', 'CRON', 'hendrik.obermayer', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(126, 1526296426, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_page.id=2&quot; has been created', 'Contao\\Versions::create', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(127, 1526296429, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_page.id=1&quot; has been created', 'Contao\\Versions::create', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(128, 1526296439, 'BE', 'CRON', 'hendrik.obermayer', 'Generated sitemap &quot;sitemap_de.xml&quot;', 'Contao\\Automator::generateSitemap', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(129, 1526296439, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_page.id=1&quot; has been created', 'Contao\\Versions::create', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(130, 1526296458, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 1 of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(131, 1526296465, 'BE', 'GENERAL', 'hendrik.obermayer', 'Version 2 of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'Contao\\Versions::create', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(132, 1526296512, 'BE', 'ACCESS', 'N/A', 'User &quot;hendrik.obermayer&quot; has logged out', 'Contao\\User::logout', '2003:c4:6f07:2300:958f:8ec8:ee52:0000', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `tl_member`
--

CREATE TABLE `tl_member` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateOfBirth` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `postal` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `login` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assignDir` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `homeDir` binary(16) DEFAULT NULL,
  `disable` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateAdded` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastLogin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `currentLogin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `loginCount` smallint(5) UNSIGNED NOT NULL DEFAULT '3',
  `locked` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session` blob,
  `autologin` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdOn` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `activation` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `newsletter` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_member_group`
--

CREATE TABLE `tl_member_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirect` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `disable` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_module`
--

CREATE TABLE `tl_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `levelOffset` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `showLevel` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `hardLimit` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `showProtected` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `defineRoot` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rootPage` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `navigationTpl` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customTpl` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pages` blob,
  `orderPages` blob,
  `showHidden` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customLabel` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autologin` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `redirectBack` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cols` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `editable` blob,
  `memberTpl` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `form` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `queryType` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fuzzy` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contextLength` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `totalLength` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `perPage` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `searchType` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `searchTpl` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inColumn` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `skipFirst` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `loadFirst` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `transparent` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flashvars` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `altContent` text COLLATE utf8_unicode_ci,
  `source` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `interactive` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flashID` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flashJS` text COLLATE utf8_unicode_ci,
  `imgSize` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `useCaption` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fullsize` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `multiSRC` blob,
  `orderSRC` blob,
  `html` text COLLATE utf8_unicode_ci,
  `rss_cache` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rss_feed` text COLLATE utf8_unicode_ci,
  `rss_template` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `numberOfItems` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `disableCaptcha` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reg_groups` blob,
  `reg_allowLogin` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reg_skipName` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reg_close` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reg_assignDir` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reg_homeDir` binary(16) DEFAULT NULL,
  `reg_activate` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reg_jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reg_text` text COLLATE utf8_unicode_ci,
  `reg_password` text COLLATE utf8_unicode_ci,
  `protected` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cssID` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cal_calendar` blob,
  `cal_noSpan` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cal_hideRunning` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cal_startDay` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `cal_format` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cal_ignoreDynamic` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cal_order` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cal_readerModule` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cal_limit` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `cal_template` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cal_ctemplate` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cal_showQuantity` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `com_order` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `com_moderate` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `com_bbcode` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `com_requireLogin` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `com_disableCaptcha` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `com_template` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `faq_categories` blob,
  `faq_readerModule` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `list_table` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `list_fields` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `list_where` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `list_search` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `list_sort` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `list_info` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `list_info_where` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `list_layout` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `list_info_layout` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_archives` blob,
  `news_featured` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_jumpToCurrent` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_readerModule` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `news_metaFields` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_template` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_format` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_startDay` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `news_order` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_showQuantity` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `newsletters` blob,
  `nl_channels` blob,
  `nl_hideChannels` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nl_subscribe` text COLLATE utf8_unicode_ci,
  `nl_unsubscribe` text COLLATE utf8_unicode_ci,
  `nl_template` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `randomPageImage` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inheritPageImage` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tl_module`
--

INSERT INTO `tl_module` (`id`, `pid`, `tstamp`, `name`, `headline`, `type`, `levelOffset`, `showLevel`, `hardLimit`, `showProtected`, `defineRoot`, `rootPage`, `navigationTpl`, `customTpl`, `pages`, `orderPages`, `showHidden`, `customLabel`, `autologin`, `jumpTo`, `redirectBack`, `cols`, `editable`, `memberTpl`, `form`, `queryType`, `fuzzy`, `contextLength`, `totalLength`, `perPage`, `searchType`, `searchTpl`, `inColumn`, `skipFirst`, `loadFirst`, `size`, `transparent`, `flashvars`, `altContent`, `source`, `singleSRC`, `url`, `interactive`, `flashID`, `flashJS`, `imgSize`, `useCaption`, `fullsize`, `multiSRC`, `orderSRC`, `html`, `rss_cache`, `rss_feed`, `rss_template`, `numberOfItems`, `disableCaptcha`, `reg_groups`, `reg_allowLogin`, `reg_skipName`, `reg_close`, `reg_assignDir`, `reg_homeDir`, `reg_activate`, `reg_jumpTo`, `reg_text`, `reg_password`, `protected`, `groups`, `guests`, `cssID`, `cal_calendar`, `cal_noSpan`, `cal_hideRunning`, `cal_startDay`, `cal_format`, `cal_ignoreDynamic`, `cal_order`, `cal_readerModule`, `cal_limit`, `cal_template`, `cal_ctemplate`, `cal_showQuantity`, `com_order`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `faq_categories`, `faq_readerModule`, `list_table`, `list_fields`, `list_where`, `list_search`, `list_sort`, `list_info`, `list_info_where`, `list_layout`, `list_info_layout`, `news_archives`, `news_featured`, `news_jumpToCurrent`, `news_readerModule`, `news_metaFields`, `news_template`, `news_format`, `news_startDay`, `news_order`, `news_showQuantity`, `newsletters`, `nl_channels`, `nl_hideChannels`, `nl_subscribe`, `nl_unsubscribe`, `nl_template`, `randomPageImage`, `inheritPageImage`) VALUES
(1, 1, 1514311827, 'Header - Controller', '', 'html', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, '<div class="wrapper">\n	<div class="wrapper-element">\n		<div class="logo">\n			<a href="{{link_url::index}}">{{image::files/themes/finanzblog/img/header/logo_finanzblog.svg}}</a>\n        </div>\n        \n        <div class="burger-menu-trigger">\n        	<!--{{_image::files/themes/standard/img/header/menu.svg}}-->\n        </div>\n        \n		{{insert_module::3}}\n		\n		<div class="clear"></div>\n	</div>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', ''),
(2, 1, 1526296465, 'Footer - Controller', '', 'html', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, '<div class="wrapper">\n	<div class="wrapper-element">\n		\n		<div class="grid3">\n			© {{date::Y}} Website\n		</div>\n\n		<div class="grid3 offset6">\n			Impressum [&] Datenschutz\n		</div>\n		\n	</div>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', ''),
(3, 1, 1514310147, 'Header - Navigation', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'navigation', 0, 0, '', '', '', 0, 'nav_default', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:12:"nav nav-main";}', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', ''),
(4, 1, 1514313873, 'Module - PageImage', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'pageImage', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, 'a:3:{i:0;s:3:"960";i:1;s:3:"250";i:2;s:4:"crop";}', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:9:"pageimage";}', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', ''),
(5, 1, 1514313519, 'Module - PageImage Container', '', 'html', 0, 0, '', '', '', 0, '', '', NULL, NULL, '', '', '', 0, '', '2cl', NULL, '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, '<div class="wrapper">\n	<div class="wrapper-element">\n		{{insert_module::4}}\n	</div>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_news`
--

CREATE TABLE `tl_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `author` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subheadline` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `teaser` text COLLATE utf8_unicode_ci,
  `addImage` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `overwriteMeta` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imageTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imagemargin` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fullsize` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `floating` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `addEnclosure` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enclosure` blob,
  `source` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `articleId` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cssClass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `noComments` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `featured` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `published` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_newsletter`
--

CREATE TABLE `tl_newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `addFile` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `files` blob,
  `template` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sendText` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `externalImages` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sender` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `senderName` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sent` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_newsletter_blacklist`
--

CREATE TABLE `tl_newsletter_blacklist` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hash` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_newsletter_channel`
--

CREATE TABLE `tl_newsletter_channel` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `template` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sender` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `senderName` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_newsletter_recipients`
--

CREATE TABLE `tl_newsletter_recipients` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `active` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `addedOn` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `confirmed` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `token` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_news_archive`
--

CREATE TABLE `tl_news_archive` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `protected` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `allowComments` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `notify` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortOrder` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `perPage` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `moderate` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bbcode` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `requireLogin` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disableCaptcha` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_news_feed`
--

CREATE TABLE `tl_news_feed` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `language` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `archives` blob,
  `format` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `source` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `maxItems` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `feedBase` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_page`
--

CREATE TABLE `tl_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pageTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `robots` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `redirect` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `redirectBack` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dns` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `staticFiles` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `staticPlugins` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fallback` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `adminEmail` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timeFormat` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `datimFormat` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `createSitemap` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sitemapName` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `useSSL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autoforward` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `protected` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `includeLayout` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobileLayout` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `includeCache` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cache` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `clientCache` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `includeChmod` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cuser` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cgroup` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `chmod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `noSearch` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cssClass` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sitemap` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hide` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `guests` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tabindex` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `accesskey` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `published` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pageImageTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pageImageAlt` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pageImageJumpTo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pageImageOrder` blob,
  `pageImage` blob,
  `external_js_order` text COLLATE utf8_unicode_ci,
  `external_js` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tl_page`
--

INSERT INTO `tl_page` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `type`, `pageTitle`, `language`, `robots`, `description`, `redirect`, `jumpTo`, `redirectBack`, `url`, `target`, `dns`, `staticFiles`, `staticPlugins`, `fallback`, `adminEmail`, `dateFormat`, `timeFormat`, `datimFormat`, `createSitemap`, `sitemapName`, `useSSL`, `autoforward`, `protected`, `groups`, `includeLayout`, `layout`, `mobileLayout`, `includeCache`, `cache`, `clientCache`, `includeChmod`, `cuser`, `cgroup`, `chmod`, `noSearch`, `cssClass`, `sitemap`, `hide`, `guests`, `tabindex`, `accesskey`, `published`, `start`, `stop`, `pageImageTitle`, `pageImageAlt`, `pageImageJumpTo`, `pageImageOrder`, `pageImage`, `external_js_order`, `external_js`) VALUES
(1, 0, 128, 1526296439, 'Contao Website', 'contao-website', 'root', '', 'de', '', NULL, 'permanent', 0, '', '', '', '', '', '', '1', '', '', '', '', '1', 'sitemap_de', '', '', '', NULL, '1', 1, 0, '', 0, 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', '', '', '', 0, '', '1', '', '', '', '', 0, NULL, NULL, NULL, NULL),
(2, 1, 128, 1526296426, 'Home', 'index', 'regular', '', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', '', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_search`
--

CREATE TABLE `tl_search` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `text` mediumtext COLLATE utf8_unicode_ci,
  `filesize` double NOT NULL DEFAULT '0',
  `checksum` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `protected` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tl_search`
--

INSERT INTO `tl_search` (`id`, `pid`, `tstamp`, `title`, `url`, `text`, `filesize`, `checksum`, `protected`, `groups`, `language`) VALUES
(1, 2, 1514315200, 'Home', 'http://localhost:8080/', 'Home © 2017 finanzblog.org Impressum & Datenschutz', 3.34, '5372b363f57b4e8f9e3f156ca9281d72', '', 0x30, 'de'),
(6, 2, 1526296481, 'Home', 'http://a2r-media.comolo-app.de/', 'Home © 2018 Website Impressum & Datenschutz', 2.61, '3d40553312d1aadac36b80067ca66c0b', '', 0x30, 'de');

-- --------------------------------------------------------

--
-- Table structure for table `tl_search_index`
--

CREATE TABLE `tl_search_index` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `word` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `relevance` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tl_search_index`
--

INSERT INTO `tl_search_index` (`id`, `pid`, `word`, `relevance`, `language`) VALUES
(928, 6, 'datenschutz', 1, 'de'),
(902, 1, 'datenschutz', 1, 'de'),
(901, 1, 'impressum', 1, 'de'),
(900, 1, 'finanzblog.org', 1, 'de'),
(899, 1, '2017', 1, 'de'),
(898, 1, 'home', 1, 'de'),
(927, 6, 'impressum', 1, 'de'),
(926, 6, 'website', 1, 'de'),
(925, 6, '2018', 1, 'de'),
(924, 6, 'home', 1, 'de');

-- --------------------------------------------------------

--
-- Table structure for table `tl_session`
--

CREATE TABLE `tl_session` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sessionID` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hash` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `su` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_style`
--

CREATE TABLE `tl_style` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `selector` varchar(1022) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `height` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `minwidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `minheight` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `maxwidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `maxheight` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `positioning` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `trbl` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `position` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `floating` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `clear` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `overflow` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alignment` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `margin` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `padding` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `align` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `verticalalign` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `textalign` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `whitespace` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `background` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bgcolor` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bgimage` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bgposition` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bgrepeat` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shadowsize` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shadowcolor` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gradientAngle` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gradientColors` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `border` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `borderwidth` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `borderstyle` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bordercolor` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `borderradius` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bordercollapse` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `borderspacing` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `font` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fontfamily` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fontsize` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fontcolor` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lineheight` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fontstyle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `texttransform` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `textindent` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `letterspacing` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `wordspacing` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `list` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `liststyletype` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `liststyleimage` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `own` text COLLATE utf8_unicode_ci,
  `invisible` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_style_sheet`
--

CREATE TABLE `tl_style_sheet` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `embedImages` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cc` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mediaQuery` text COLLATE utf8_unicode_ci,
  `vars` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_superlogin_server`
--

CREATE TABLE `tl_superlogin_server` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url_authorize` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url_access_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url_resource_owner_details` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `public_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tl_superlogin_server`
--

INSERT INTO `tl_superlogin_server` (`id`, `tstamp`, `name`, `url_authorize`, `url_access_token`, `url_resource_owner_details`, `public_id`, `secret`) VALUES
(1, 1526296298, 'Comolo GmbH', 'https://idm.intra.comolo.de/oauth/v2/auth', 'https://idm.intra.comolo.de/oauth/v2/token', 'https://idm.intra.comolo.de/api/v1/user/me.json', '19_2w6awkv6ns2s4kwoos08co448ggwksscgc0sg4sg4oc0w8s8kc', '2c76v00nlio0ok4cw4g84goccow4owsog84sgkk8ccssk48g0k');

-- --------------------------------------------------------

--
-- Table structure for table `tl_theme`
--

CREATE TABLE `tl_theme` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `folders` blob,
  `screenshot` binary(16) DEFAULT NULL,
  `templates` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vars` text COLLATE utf8_unicode_ci,
  `defaultImageDensities` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tl_theme`
--

INSERT INTO `tl_theme` (`id`, `tstamp`, `name`, `author`, `folders`, `screenshot`, `templates`, `vars`, `defaultImageDensities`) VALUES
(1, 1526296347, 'Comolo Default', 'Hendrik Obermayer', 0x613a313a7b693a303b733a31363a22ac8b766c576711e8a912d6f6b48b1b45223b7d, NULL, 'templates/comolo_default', 'a:0:{}', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_undo`
--

CREATE TABLE `tl_undo` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fromTable` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `query` text COLLATE utf8_unicode_ci,
  `affectedRows` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `data` mediumblob
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tl_undo`
--

INSERT INTO `tl_undo` (`id`, `pid`, `tstamp`, `fromTable`, `query`, `affectedRows`, `data`) VALUES
(1, 2, 1526296406, 'tl_page', 'DELETE FROM tl_page WHERE id=3', 2, 0x613a323a7b733a373a22746c5f70616765223b613a313a7b693a303b613a35373a7b733a323a226964223b733a313a2233223b733a333a22706964223b733a313a2231223b733a373a22736f7274696e67223b733a333a22323536223b733a363a22747374616d70223b733a31303a2231353134333133333338223b733a353a227469746c65223b733a32333a224769726f6b6f6e746f2026204b72656469746b61727465223b733a353a22616c696173223b733a32313a226769726f6b6f6e746f2d6b72656469746b61727465223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22706167655469746c65223b733a303a22223b733a383a226c616e6775616765223b733a303a22223b733a363a22726f626f7473223b733a31323a22696e6465782c666f6c6c6f77223b733a31313a226465736372697074696f6e223b4e3b733a383a227265646972656374223b733a393a227065726d616e656e74223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a333a22646e73223b733a303a22223b733a31313a2273746174696346696c6573223b733a303a22223b733a31333a22737461746963506c7567696e73223b733a303a22223b733a383a2266616c6c6261636b223b733a303a22223b733a31303a2261646d696e456d61696c223b733a303a22223b733a31303a2264617465466f726d6174223b733a303a22223b733a31303a2274696d65466f726d6174223b733a303a22223b733a31313a22646174696d466f726d6174223b733a303a22223b733a31333a22637265617465536974656d6170223b733a303a22223b733a31313a22736974656d61704e616d65223b733a303a22223b733a363a2275736553534c223b733a303a22223b733a31313a226175746f666f7277617264223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a31333a22696e636c7564654c61796f7574223b733a303a22223b733a363a226c61796f7574223b733a313a2230223b733a31323a226d6f62696c654c61796f7574223b733a313a2230223b733a31323a22696e636c7564654361636865223b733a303a22223b733a353a226361636865223b733a313a2230223b733a31313a22636c69656e744361636865223b733a313a2230223b733a31323a22696e636c75646543686d6f64223b733a303a22223b733a353a226375736572223b733a313a2230223b733a363a226367726f7570223b733a313a2230223b733a353a2263686d6f64223b733a3132333a22613a393a7b693a303b733a323a227531223b693a313b733a323a227532223b693a323b733a323a227533223b693a333b733a323a227534223b693a343b733a323a227535223b693a353b733a323a227536223b693a363b733a323a226734223b693a373b733a323a226735223b693a383b733a323a226736223b7d223b733a383a226e6f536561726368223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a373a22736974656d6170223b733a31313a226d61705f64656661756c74223b733a343a2268696465223b733a303a22223b733a363a22677565737473223b733a303a22223b733a383a22746162696e646578223b733a313a2230223b733a393a226163636573736b6579223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a31343a2270616765496d6167655469746c65223b733a303a22223b733a31323a2270616765496d616765416c74223b733a303a22223b733a31353a2270616765496d6167654a756d70546f223b733a313a2230223b733a31343a2270616765496d6167654f72646572223b733a33343a22613a313a7b693a303b733a31363a22906b7f9aea6b11e78ac28c85901982e7223b7d223b733a393a2270616765496d616765223b733a33343a22613a313a7b693a303b733a31363a22906b7f9aea6b11e78ac28c85901982e7223b7d223b733a31373a2265787465726e616c5f6a735f6f72646572223b4e3b733a31313a2265787465726e616c5f6a73223b4e3b7d7d733a31303a22746c5f61727469636c65223b613a313a7b693a303b613a32313a7b733a323a226964223b733a313a2232223b733a333a22706964223b733a313a2233223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231353134333130313736223b733a353a227469746c65223b733a32333a224769726f6b6f6e746f2026204b72656469746b61727465223b733a353a22616c696173223b733a32313a226769726f6b6f6e746f2d6b72656469746b61727465223b733a363a22617574686f72223b733a313a2231223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a383a226b6579776f726473223b4e3b733a31303a2273686f77546561736572223b733a303a22223b733a31313a227465617365724373734944223b733a303a22223b733a363a22746561736572223b4e3b733a393a227072696e7461626c65223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d7d7d),
(2, 2, 1526296413, 'tl_page', 'DELETE FROM tl_page WHERE id=4', 2, 0x613a323a7b733a373a22746c5f70616765223b613a313a7b693a303b613a35373a7b733a323a226964223b733a313a2234223b733a333a22706964223b733a313a2231223b733a373a22736f7274696e67223b733a333a22333834223b733a363a22747374616d70223b733a31303a2231353134333134313635223b733a353a227469746c65223b733a31363a2253706172656e202620416e6c6567656e223b733a353a22616c696173223b733a31343a2273706172656e2d616e6c6567656e223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22706167655469746c65223b733a303a22223b733a383a226c616e6775616765223b733a303a22223b733a363a22726f626f7473223b733a31323a22696e6465782c666f6c6c6f77223b733a31313a226465736372697074696f6e223b4e3b733a383a227265646972656374223b733a393a227065726d616e656e74223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a333a22646e73223b733a303a22223b733a31313a2273746174696346696c6573223b733a303a22223b733a31333a22737461746963506c7567696e73223b733a303a22223b733a383a2266616c6c6261636b223b733a303a22223b733a31303a2261646d696e456d61696c223b733a303a22223b733a31303a2264617465466f726d6174223b733a303a22223b733a31303a2274696d65466f726d6174223b733a303a22223b733a31313a22646174696d466f726d6174223b733a303a22223b733a31333a22637265617465536974656d6170223b733a303a22223b733a31313a22736974656d61704e616d65223b733a303a22223b733a363a2275736553534c223b733a303a22223b733a31313a226175746f666f7277617264223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a31333a22696e636c7564654c61796f7574223b733a303a22223b733a363a226c61796f7574223b733a313a2230223b733a31323a226d6f62696c654c61796f7574223b733a313a2230223b733a31323a22696e636c7564654361636865223b733a303a22223b733a353a226361636865223b733a313a2230223b733a31313a22636c69656e744361636865223b733a313a2230223b733a31323a22696e636c75646543686d6f64223b733a303a22223b733a353a226375736572223b733a313a2230223b733a363a226367726f7570223b733a313a2230223b733a353a2263686d6f64223b733a3132333a22613a393a7b693a303b733a323a227531223b693a313b733a323a227532223b693a323b733a323a227533223b693a333b733a323a227534223b693a343b733a323a227535223b693a353b733a323a227536223b693a363b733a323a226734223b693a373b733a323a226735223b693a383b733a323a226736223b7d223b733a383a226e6f536561726368223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a373a22736974656d6170223b733a31313a226d61705f64656661756c74223b733a343a2268696465223b733a303a22223b733a363a22677565737473223b733a303a22223b733a383a22746162696e646578223b733a313a2230223b733a393a226163636573736b6579223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a31343a2270616765496d6167655469746c65223b733a303a22223b733a31323a2270616765496d616765416c74223b733a303a22223b733a31353a2270616765496d6167654a756d70546f223b733a313a2230223b733a31343a2270616765496d6167654f72646572223b733a33343a22613a313a7b693a303b733a31363a227cffde73ea6d11e78ac28c85901982e7223b7d223b733a393a2270616765496d616765223b733a33343a22613a313a7b693a303b733a31363a227cffde73ea6d11e78ac28c85901982e7223b7d223b733a31373a2265787465726e616c5f6a735f6f72646572223b4e3b733a31313a2265787465726e616c5f6a73223b4e3b7d7d733a31303a22746c5f61727469636c65223b613a313a7b693a303b613a32313a7b733a323a226964223b733a313a2233223b733a333a22706964223b733a313a2234223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231353134333130323037223b733a353a227469746c65223b733a31363a2253706172656e202620416e6c6567656e223b733a353a22616c696173223b733a31343a2273706172656e2d616e6c6567656e223b733a363a22617574686f72223b733a313a2231223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a383a226b6579776f726473223b4e3b733a31303a2273686f77546561736572223b733a303a22223b733a31313a227465617365724373734944223b733a303a22223b733a363a22746561736572223b4e3b733a393a227072696e7461626c65223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d7d7d),
(3, 2, 1526296413, 'tl_page', 'DELETE FROM tl_page WHERE id=5', 2, 0x613a323a7b733a373a22746c5f70616765223b613a313a7b693a303b613a35373a7b733a323a226964223b733a313a2235223b733a333a22706964223b733a313a2231223b733a373a22736f7274696e67223b733a333a22353132223b733a363a22747374616d70223b733a31303a2231353134333134343831223b733a353a227469746c65223b733a373a224b726564697465223b733a353a22616c696173223b733a373a226b726564697465223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22706167655469746c65223b733a303a22223b733a383a226c616e6775616765223b733a303a22223b733a363a22726f626f7473223b733a31323a22696e6465782c666f6c6c6f77223b733a31313a226465736372697074696f6e223b4e3b733a383a227265646972656374223b733a393a227065726d616e656e74223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a333a22646e73223b733a303a22223b733a31313a2273746174696346696c6573223b733a303a22223b733a31333a22737461746963506c7567696e73223b733a303a22223b733a383a2266616c6c6261636b223b733a303a22223b733a31303a2261646d696e456d61696c223b733a303a22223b733a31303a2264617465466f726d6174223b733a303a22223b733a31303a2274696d65466f726d6174223b733a303a22223b733a31313a22646174696d466f726d6174223b733a303a22223b733a31333a22637265617465536974656d6170223b733a303a22223b733a31313a22736974656d61704e616d65223b733a303a22223b733a363a2275736553534c223b733a303a22223b733a31313a226175746f666f7277617264223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a31333a22696e636c7564654c61796f7574223b733a303a22223b733a363a226c61796f7574223b733a313a2230223b733a31323a226d6f62696c654c61796f7574223b733a313a2230223b733a31323a22696e636c7564654361636865223b733a303a22223b733a353a226361636865223b733a313a2230223b733a31313a22636c69656e744361636865223b733a313a2230223b733a31323a22696e636c75646543686d6f64223b733a303a22223b733a353a226375736572223b733a313a2230223b733a363a226367726f7570223b733a313a2230223b733a353a2263686d6f64223b733a3132333a22613a393a7b693a303b733a323a227531223b693a313b733a323a227532223b693a323b733a323a227533223b693a333b733a323a227534223b693a343b733a323a227535223b693a353b733a323a227536223b693a363b733a323a226734223b693a373b733a323a226735223b693a383b733a323a226736223b7d223b733a383a226e6f536561726368223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a373a22736974656d6170223b733a31313a226d61705f64656661756c74223b733a343a2268696465223b733a303a22223b733a363a22677565737473223b733a303a22223b733a383a22746162696e646578223b733a313a2230223b733a393a226163636573736b6579223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a31343a2270616765496d6167655469746c65223b733a303a22223b733a31323a2270616765496d616765416c74223b733a303a22223b733a31353a2270616765496d6167654a756d70546f223b733a313a2230223b733a31343a2270616765496d6167654f72646572223b733a33343a22613a313a7b693a303b733a31363a22392fbc8eea6e11e78ac28c85901982e7223b7d223b733a393a2270616765496d616765223b733a33343a22613a313a7b693a303b733a31363a22392fbc8eea6e11e78ac28c85901982e7223b7d223b733a31373a2265787465726e616c5f6a735f6f72646572223b4e3b733a31313a2265787465726e616c5f6a73223b4e3b7d7d733a31303a22746c5f61727469636c65223b613a313a7b693a303b613a32313a7b733a323a226964223b733a313a2234223b733a333a22706964223b733a313a2235223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231353134333130323137223b733a353a227469746c65223b733a373a224b726564697465223b733a353a22616c696173223b733a373a226b726564697465223b733a363a22617574686f72223b733a313a2231223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a383a226b6579776f726473223b4e3b733a31303a2273686f77546561736572223b733a303a22223b733a31313a227465617365724373734944223b733a303a22223b733a363a22746561736572223b4e3b733a393a227072696e7461626c65223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d7d7d),
(4, 2, 1526296413, 'tl_page', 'DELETE FROM tl_page WHERE id=6', 2, 0x613a323a7b733a373a22746c5f70616765223b613a313a7b693a303b613a35373a7b733a323a226964223b733a313a2236223b733a333a22706964223b733a313a2231223b733a373a22736f7274696e67223b733a333a22363430223b733a363a22747374616d70223b733a31303a2231353134333134323438223b733a353a227469746c65223b733a32313a2252656973656e202620566572736963686572756e67223b733a353a22616c696173223b733a31393a2272656973656e2d766572736963686572756e67223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22706167655469746c65223b733a303a22223b733a383a226c616e6775616765223b733a303a22223b733a363a22726f626f7473223b733a31323a22696e6465782c666f6c6c6f77223b733a31313a226465736372697074696f6e223b4e3b733a383a227265646972656374223b733a393a227065726d616e656e74223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a333a22646e73223b733a303a22223b733a31313a2273746174696346696c6573223b733a303a22223b733a31333a22737461746963506c7567696e73223b733a303a22223b733a383a2266616c6c6261636b223b733a303a22223b733a31303a2261646d696e456d61696c223b733a303a22223b733a31303a2264617465466f726d6174223b733a303a22223b733a31303a2274696d65466f726d6174223b733a303a22223b733a31313a22646174696d466f726d6174223b733a303a22223b733a31333a22637265617465536974656d6170223b733a303a22223b733a31313a22736974656d61704e616d65223b733a303a22223b733a363a2275736553534c223b733a303a22223b733a31313a226175746f666f7277617264223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a31333a22696e636c7564654c61796f7574223b733a303a22223b733a363a226c61796f7574223b733a313a2230223b733a31323a226d6f62696c654c61796f7574223b733a313a2230223b733a31323a22696e636c7564654361636865223b733a303a22223b733a353a226361636865223b733a313a2230223b733a31313a22636c69656e744361636865223b733a313a2230223b733a31323a22696e636c75646543686d6f64223b733a303a22223b733a353a226375736572223b733a313a2230223b733a363a226367726f7570223b733a313a2230223b733a353a2263686d6f64223b733a3132333a22613a393a7b693a303b733a323a227531223b693a313b733a323a227532223b693a323b733a323a227533223b693a333b733a323a227534223b693a343b733a323a227535223b693a353b733a323a227536223b693a363b733a323a226734223b693a373b733a323a226735223b693a383b733a323a226736223b7d223b733a383a226e6f536561726368223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a373a22736974656d6170223b733a31313a226d61705f64656661756c74223b733a343a2268696465223b733a303a22223b733a363a22677565737473223b733a303a22223b733a383a22746162696e646578223b733a313a2230223b733a393a226163636573736b6579223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a31343a2270616765496d6167655469746c65223b733a303a22223b733a31323a2270616765496d616765416c74223b733a303a22223b733a31353a2270616765496d6167654a756d70546f223b733a313a2230223b733a31343a2270616765496d6167654f72646572223b733a33343a22613a313a7b693a303b733a31363a22ae4ed803ea6d11e78ac28c85901982e7223b7d223b733a393a2270616765496d616765223b733a33343a22613a313a7b693a303b733a31363a22ae4ed803ea6d11e78ac28c85901982e7223b7d223b733a31373a2265787465726e616c5f6a735f6f72646572223b4e3b733a31313a2265787465726e616c5f6a73223b4e3b7d7d733a31303a22746c5f61727469636c65223b613a313a7b693a303b613a32313a7b733a323a226964223b733a313a2235223b733a333a22706964223b733a313a2236223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231353134333130323330223b733a353a227469746c65223b733a32313a2252656973656e202620566572736963686572756e67223b733a353a22616c696173223b733a31393a2272656973656e2d766572736963686572756e67223b733a363a22617574686f72223b733a313a2231223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a383a226b6579776f726473223b4e3b733a31303a2273686f77546561736572223b733a303a22223b733a31313a227465617365724373734944223b733a303a22223b733a363a22746561736572223b4e3b733a393a227072696e7461626c65223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d7d7d),
(5, 2, 1526296413, 'tl_page', 'DELETE FROM tl_page WHERE id=8', 2, 0x613a323a7b733a373a22746c5f70616765223b613a313a7b693a303b613a35373a7b733a323a226964223b733a313a2238223b733a333a22706964223b733a313a2231223b733a373a22736f7274696e67223b733a333a22373034223b733a363a22747374616d70223b733a31303a2231353134333130323938223b733a353a227469746c65223b733a393a22c39c62657220556e73223b733a353a22616c696173223b733a393a22c3bc6265722d756e73223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22706167655469746c65223b733a303a22223b733a383a226c616e6775616765223b733a303a22223b733a363a22726f626f7473223b733a31323a22696e6465782c666f6c6c6f77223b733a31313a226465736372697074696f6e223b4e3b733a383a227265646972656374223b733a393a227065726d616e656e74223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a333a22646e73223b733a303a22223b733a31313a2273746174696346696c6573223b733a303a22223b733a31333a22737461746963506c7567696e73223b733a303a22223b733a383a2266616c6c6261636b223b733a303a22223b733a31303a2261646d696e456d61696c223b733a303a22223b733a31303a2264617465466f726d6174223b733a303a22223b733a31303a2274696d65466f726d6174223b733a303a22223b733a31313a22646174696d466f726d6174223b733a303a22223b733a31333a22637265617465536974656d6170223b733a303a22223b733a31313a22736974656d61704e616d65223b733a303a22223b733a363a2275736553534c223b733a303a22223b733a31313a226175746f666f7277617264223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a31333a22696e636c7564654c61796f7574223b733a303a22223b733a363a226c61796f7574223b733a313a2230223b733a31323a226d6f62696c654c61796f7574223b733a313a2230223b733a31323a22696e636c7564654361636865223b733a303a22223b733a353a226361636865223b733a313a2230223b733a31313a22636c69656e744361636865223b733a313a2230223b733a31323a22696e636c75646543686d6f64223b733a303a22223b733a353a226375736572223b733a313a2230223b733a363a226367726f7570223b733a313a2230223b733a353a2263686d6f64223b733a3132333a22613a393a7b693a303b733a323a227531223b693a313b733a323a227532223b693a323b733a323a227533223b693a333b733a323a227534223b693a343b733a323a227535223b693a353b733a323a227536223b693a363b733a323a226734223b693a373b733a323a226735223b693a383b733a323a226736223b7d223b733a383a226e6f536561726368223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a373a22736974656d6170223b733a31313a226d61705f64656661756c74223b733a343a2268696465223b733a313a2231223b733a363a22677565737473223b733a303a22223b733a383a22746162696e646578223b733a313a2230223b733a393a226163636573736b6579223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a31343a2270616765496d6167655469746c65223b733a303a22223b733a31323a2270616765496d616765416c74223b733a303a22223b733a31353a2270616765496d6167654a756d70546f223b733a313a2230223b733a31343a2270616765496d6167654f72646572223b4e3b733a393a2270616765496d616765223b4e3b733a31373a2265787465726e616c5f6a735f6f72646572223b4e3b733a31313a2265787465726e616c5f6a73223b4e3b7d7d733a31303a22746c5f61727469636c65223b613a313a7b693a303b613a32313a7b733a323a226964223b733a313a2237223b733a333a22706964223b733a313a2238223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231353134333130323933223b733a353a227469746c65223b733a393a22c39c62657220556e73223b733a353a22616c696173223b733a393a22c3bc6265722d756e73223b733a363a22617574686f72223b733a313a2231223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a383a226b6579776f726473223b4e3b733a31303a2273686f77546561736572223b733a303a22223b733a31313a227465617365724373734944223b733a303a22223b733a363a22746561736572223b4e3b733a393a227072696e7461626c65223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d7d7d),
(6, 2, 1526296413, 'tl_page', 'DELETE FROM tl_page WHERE id=7', 2, 0x613a323a7b733a373a22746c5f70616765223b613a313a7b693a303b613a35373a7b733a323a226964223b733a313a2237223b733a333a22706964223b733a313a2231223b733a373a22736f7274696e67223b733a333a22373638223b733a363a22747374616d70223b733a31303a2231353134333130323438223b733a353a227469746c65223b733a32333a22496d7072657373756d202f20446174656e73636875747a223b733a353a22616c696173223b733a32313a22696d7072657373756d2d646174656e73636875747a223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22706167655469746c65223b733a303a22223b733a383a226c616e6775616765223b733a303a22223b733a363a22726f626f7473223b733a31343a226e6f696e6465782c666f6c6c6f77223b733a31313a226465736372697074696f6e223b4e3b733a383a227265646972656374223b733a393a227065726d616e656e74223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a333a22646e73223b733a303a22223b733a31313a2273746174696346696c6573223b733a303a22223b733a31333a22737461746963506c7567696e73223b733a303a22223b733a383a2266616c6c6261636b223b733a303a22223b733a31303a2261646d696e456d61696c223b733a303a22223b733a31303a2264617465466f726d6174223b733a303a22223b733a31303a2274696d65466f726d6174223b733a303a22223b733a31313a22646174696d466f726d6174223b733a303a22223b733a31333a22637265617465536974656d6170223b733a303a22223b733a31313a22736974656d61704e616d65223b733a303a22223b733a363a2275736553534c223b733a303a22223b733a31313a226175746f666f7277617264223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a31333a22696e636c7564654c61796f7574223b733a303a22223b733a363a226c61796f7574223b733a313a2230223b733a31323a226d6f62696c654c61796f7574223b733a313a2230223b733a31323a22696e636c7564654361636865223b733a303a22223b733a353a226361636865223b733a313a2230223b733a31313a22636c69656e744361636865223b733a313a2230223b733a31323a22696e636c75646543686d6f64223b733a303a22223b733a353a226375736572223b733a313a2230223b733a363a226367726f7570223b733a313a2230223b733a353a2263686d6f64223b733a3132333a22613a393a7b693a303b733a323a227531223b693a313b733a323a227532223b693a323b733a323a227533223b693a333b733a323a227534223b693a343b733a323a227535223b693a353b733a323a227536223b693a363b733a323a226734223b693a373b733a323a226735223b693a383b733a323a226736223b7d223b733a383a226e6f536561726368223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a373a22736974656d6170223b733a31313a226d61705f64656661756c74223b733a343a2268696465223b733a313a2231223b733a363a22677565737473223b733a303a22223b733a383a22746162696e646578223b733a313a2230223b733a393a226163636573736b6579223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a31343a2270616765496d6167655469746c65223b733a303a22223b733a31323a2270616765496d616765416c74223b733a303a22223b733a31353a2270616765496d6167654a756d70546f223b733a313a2230223b733a31343a2270616765496d6167654f72646572223b4e3b733a393a2270616765496d616765223b4e3b733a31373a2265787465726e616c5f6a735f6f72646572223b4e3b733a31313a2265787465726e616c5f6a73223b4e3b7d7d733a31303a22746c5f61727469636c65223b613a313a7b693a303b613a32313a7b733a323a226964223b733a313a2236223b733a333a22706964223b733a313a2237223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231353134333130323438223b733a353a227469746c65223b733a32333a22496d7072657373756d202f20446174656e73636875747a223b733a353a22616c696173223b733a32313a22696d7072657373756d2d646174656e73636875747a223b733a363a22617574686f72223b733a313a2231223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a383a226b6579776f726473223b4e3b733a31303a2273686f77546561736572223b733a303a22223b733a31313a227465617365724373734944223b733a303a22223b733a363a22746561736572223b4e3b733a393a227072696e7461626c65223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d7d7d);

-- --------------------------------------------------------

--
-- Table structure for table `tl_user`
--

CREATE TABLE `tl_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backendTheme` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `limitWidth` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uploader` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `showHelp` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumbnails` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `useRTE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `useCE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pwChange` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `inherit` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modules` blob,
  `themes` blob,
  `pagemounts` blob,
  `alpty` blob,
  `filemounts` blob,
  `fop` blob,
  `imageSizes` blob,
  `forms` blob,
  `formp` blob,
  `amg` blob,
  `disable` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `session` blob,
  `dateAdded` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastLogin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `currentLogin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `loginCount` smallint(5) UNSIGNED NOT NULL DEFAULT '3',
  `locked` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `calendars` blob,
  `calendarp` blob,
  `calendarfeeds` blob,
  `calendarfeedp` blob,
  `faqs` blob,
  `faqp` blob,
  `news` blob,
  `newp` blob,
  `newsfeeds` blob,
  `newsfeedp` blob,
  `newsletters` blob,
  `newsletterp` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_user_group`
--

CREATE TABLE `tl_user_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modules` blob,
  `themes` blob,
  `pagemounts` blob,
  `alpty` blob,
  `filemounts` blob,
  `fop` blob,
  `imageSizes` blob,
  `forms` blob,
  `formp` blob,
  `amg` blob,
  `alexf` blob,
  `disable` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `calendars` blob,
  `calendarp` blob,
  `calendarfeeds` blob,
  `calendarfeedp` blob,
  `faqs` blob,
  `faqp` blob,
  `news` blob,
  `newp` blob,
  `newsfeeds` blob,
  `newsfeedp` blob,
  `newsletters` blob,
  `newsletterp` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_version`
--

CREATE TABLE `tl_version` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `fromTable` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `editUrl` text COLLATE utf8_unicode_ci,
  `active` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `data` mediumblob
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tl_version`
--

INSERT INTO `tl_version` (`id`, `pid`, `tstamp`, `version`, `fromTable`, `userid`, `username`, `description`, `editUrl`, `active`, `data`) VALUES
(69, 2, 1526296465, 2, 'tl_module', 2, 'hendrik.obermayer', 'Footer - Controller', 'contao?do=themes&table=tl_module&id=2&act=edit&rt=FEGsEMFtP_I1obWN94-dnyayC2Yn1xneFjjFPderKp0&ref=Oo_tuw7_', '1', 0x613a3131373a7b733a323a226964223b733a313a2232223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231353134333134393638223b733a343a226e616d65223b733a31393a22466f6f746572202d20436f6e74726f6c6c6572223b733a383a22686561646c696e65223b733a303a22223b733a343a2274797065223b733a343a2268746d6c223b733a31313a226c6576656c4f6666736574223b733a313a2230223b733a393a2273686f774c6576656c223b733a313a2230223b733a393a22686172644c696d6974223b733a303a22223b733a31333a2273686f7750726f746563746564223b733a303a22223b733a31303a22646566696e65526f6f74223b733a303a22223b733a383a22726f6f7450616765223b733a313a2230223b733a31333a226e617669676174696f6e54706c223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a353a227061676573223b4e3b733a31303a226f726465725061676573223b4e3b733a31303a2273686f7748696464656e223b733a303a22223b733a31313a22637573746f6d4c6162656c223b733a303a22223b733a393a226175746f6c6f67696e223b733a303a22223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a343a22636f6c73223b733a333a2232636c223b733a383a226564697461626c65223b4e3b733a393a226d656d62657254706c223b733a303a22223b733a343a22666f726d223b733a313a2230223b733a393a22717565727954797065223b733a333a22616e64223b733a353a2266757a7a79223b733a303a22223b733a31333a22636f6e746578744c656e677468223b733a323a223438223b733a31313a22746f74616c4c656e677468223b733a343a2231303030223b733a373a2270657250616765223b733a313a2230223b733a31303a2273656172636854797065223b733a363a2273696d706c65223b733a393a2273656172636854706c223b733a303a22223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a393a22736b69704669727374223b733a313a2230223b733a393a226c6f61644669727374223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a227472616e73706172656e74223b733a303a22223b733a393a22666c61736876617273223b733a303a22223b733a31303a22616c74436f6e74656e74223b4e3b733a363a22736f75726365223b733a383a22696e7465726e616c223b733a393a2273696e676c65535243223b4e3b733a333a2275726c223b733a303a22223b733a31313a22696e746572616374697665223b733a303a22223b733a373a22666c6173684944223b733a303a22223b733a373a22666c6173684a53223b4e3b733a373a22696d6753697a65223b733a303a22223b733a31303a2275736543617074696f6e223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a343a2268746d6c223b733a3139393a223c64697620636c6173733d2277726170706572223e0a093c64697620636c6173733d22777261707065722d656c656d656e74223e0a09090a09093c64697620636c6173733d226772696433223e0a090909c2a9207b7b646174653a3a597d7d20576562736974650a09093c2f6469763e0a0a09093c64697620636c6173733d226772696433206f666673657436223e0a090909496d7072657373756d205b265d20446174656e73636875747a0a09093c2f6469763e0a09090a093c2f6469763e0a3c2f6469763e223b733a393a227273735f6361636865223b733a343a2233363030223b733a383a227273735f66656564223b4e3b733a31323a227273735f74656d706c617465223b733a31313a227273735f64656661756c74223b733a31333a226e756d6265724f664974656d73223b733a313a2233223b733a31343a2264697361626c6543617074636861223b733a303a22223b733a31303a227265675f67726f757073223b4e3b733a31343a227265675f616c6c6f774c6f67696e223b733a303a22223b733a31323a227265675f736b69704e616d65223b733a303a22223b733a393a227265675f636c6f7365223b733a303a22223b733a31333a227265675f61737369676e446972223b733a303a22223b733a31313a227265675f686f6d65446972223b4e3b733a31323a227265675f6163746976617465223b733a303a22223b733a31303a227265675f6a756d70546f223b733a313a2230223b733a383a227265675f74657874223b4e3b733a31323a227265675f70617373776f7264223b4e3b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a31323a2263616c5f63616c656e646172223b4e3b733a31303a2263616c5f6e6f5370616e223b733a303a22223b733a31353a2263616c5f6869646552756e6e696e67223b733a303a22223b733a31323a2263616c5f7374617274446179223b733a313a2231223b733a31303a2263616c5f666f726d6174223b733a393a2263616c5f6d6f6e7468223b733a31373a2263616c5f69676e6f726544796e616d6963223b733a303a22223b733a393a2263616c5f6f72646572223b733a393a22617363656e64696e67223b733a31363a2263616c5f7265616465724d6f64756c65223b733a313a2230223b733a393a2263616c5f6c696d6974223b733a313a2230223b733a31323a2263616c5f74656d706c617465223b733a31303a226576656e745f66756c6c223b733a31333a2263616c5f6374656d706c617465223b733a31313a2263616c5f64656661756c74223b733a31363a2263616c5f73686f775175616e74697479223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31343a226661715f63617465676f72696573223b4e3b733a31363a226661715f7265616465724d6f64756c65223b733a313a2230223b733a31303a226c6973745f7461626c65223b733a303a22223b733a31313a226c6973745f6669656c6473223b733a303a22223b733a31303a226c6973745f7768657265223b733a303a22223b733a31313a226c6973745f736561726368223b733a303a22223b733a393a226c6973745f736f7274223b733a303a22223b733a393a226c6973745f696e666f223b733a303a22223b733a31353a226c6973745f696e666f5f7768657265223b733a303a22223b733a31313a226c6973745f6c61796f7574223b733a31323a226c6973745f64656661756c74223b733a31363a226c6973745f696e666f5f6c61796f7574223b733a31323a22696e666f5f64656661756c74223b733a31333a226e6577735f6172636869766573223b4e3b733a31333a226e6577735f6665617475726564223b733a393a22616c6c5f6974656d73223b733a31383a226e6577735f6a756d70546f43757272656e74223b733a303a22223b733a31373a226e6577735f7265616465724d6f64756c65223b733a313a2230223b733a31353a226e6577735f6d6574614669656c6473223b733a33383a22613a323a7b693a303b733a343a2264617465223b693a313b733a363a22617574686f72223b7d223b733a31333a226e6577735f74656d706c617465223b733a31313a226e6577735f6c6174657374223b733a31313a226e6577735f666f726d6174223b733a31303a226e6577735f6d6f6e7468223b733a31333a226e6577735f7374617274446179223b733a313a2230223b733a31303a226e6577735f6f72646572223b733a31303a2264657363656e64696e67223b733a31373a226e6577735f73686f775175616e74697479223b733a303a22223b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6c5f6368616e6e656c73223b4e3b733a31353a226e6c5f686964654368616e6e656c73223b733a303a22223b733a31323a226e6c5f737562736372696265223b4e3b733a31343a226e6c5f756e737562736372696265223b4e3b733a31313a226e6c5f74656d706c617465223b733a393a226e6c5f73696d706c65223b733a31353a2272616e646f6d50616765496d616765223b733a303a22223b733a31363a22696e686572697450616765496d616765223b733a303a22223b7d),
(68, 2, 1526296458, 1, 'tl_module', 2, 'hendrik.obermayer', 'Footer - Controller', 'contao?do=themes&table=tl_module&id=2&act=edit&rt=FEGsEMFtP_I1obWN94-dnyayC2Yn1xneFjjFPderKp0&ref=Oo_tuw7_', '', 0x613a3131373a7b733a323a226964223b733a313a2232223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231353134333134393638223b733a343a226e616d65223b733a31393a22466f6f746572202d20436f6e74726f6c6c6572223b733a383a22686561646c696e65223b733a303a22223b733a343a2274797065223b733a343a2268746d6c223b733a31313a226c6576656c4f6666736574223b733a313a2230223b733a393a2273686f774c6576656c223b733a313a2230223b733a393a22686172644c696d6974223b733a303a22223b733a31333a2273686f7750726f746563746564223b733a303a22223b733a31303a22646566696e65526f6f74223b733a303a22223b733a383a22726f6f7450616765223b733a313a2230223b733a31333a226e617669676174696f6e54706c223b733a303a22223b733a393a22637573746f6d54706c223b733a303a22223b733a353a227061676573223b4e3b733a31303a226f726465725061676573223b4e3b733a31303a2273686f7748696464656e223b733a303a22223b733a31313a22637573746f6d4c6162656c223b733a303a22223b733a393a226175746f6c6f67696e223b733a303a22223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a343a22636f6c73223b733a333a2232636c223b733a383a226564697461626c65223b4e3b733a393a226d656d62657254706c223b733a303a22223b733a343a22666f726d223b733a313a2230223b733a393a22717565727954797065223b733a333a22616e64223b733a353a2266757a7a79223b733a303a22223b733a31333a22636f6e746578744c656e677468223b733a323a223438223b733a31313a22746f74616c4c656e677468223b733a343a2231303030223b733a373a2270657250616765223b733a313a2230223b733a31303a2273656172636854797065223b733a363a2273696d706c65223b733a393a2273656172636854706c223b733a303a22223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a393a22736b69704669727374223b733a313a2230223b733a393a226c6f61644669727374223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a227472616e73706172656e74223b733a303a22223b733a393a22666c61736876617273223b733a303a22223b733a31303a22616c74436f6e74656e74223b4e3b733a363a22736f75726365223b733a383a22696e7465726e616c223b733a393a2273696e676c65535243223b4e3b733a333a2275726c223b733a303a22223b733a31313a22696e746572616374697665223b733a303a22223b733a373a22666c6173684944223b733a303a22223b733a373a22666c6173684a53223b4e3b733a373a22696d6753697a65223b733a303a22223b733a31303a2275736543617074696f6e223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a343a2268746d6c223b733a3230363a223c64697620636c6173733d2277726170706572223e0a093c64697620636c6173733d22777261707065722d656c656d656e74223e0a09090a09093c64697620636c6173733d226772696433223e0a090909c2a9207b7b646174653a3a597d7d2066696e616e7a626c6f672e6f72670a09093c2f6469763e0a0a09093c64697620636c6173733d226772696433206f666673657436223e0a090909496d7072657373756d205b265d20446174656e73636875747a0a09093c2f6469763e0a09090a093c2f6469763e0a3c2f6469763e223b733a393a227273735f6361636865223b733a343a2233363030223b733a383a227273735f66656564223b4e3b733a31323a227273735f74656d706c617465223b733a31313a227273735f64656661756c74223b733a31333a226e756d6265724f664974656d73223b733a313a2233223b733a31343a2264697361626c6543617074636861223b733a303a22223b733a31303a227265675f67726f757073223b4e3b733a31343a227265675f616c6c6f774c6f67696e223b733a303a22223b733a31323a227265675f736b69704e616d65223b733a303a22223b733a393a227265675f636c6f7365223b733a303a22223b733a31333a227265675f61737369676e446972223b733a303a22223b733a31313a227265675f686f6d65446972223b4e3b733a31323a227265675f6163746976617465223b733a303a22223b733a31303a227265675f6a756d70546f223b733a313a2230223b733a383a227265675f74657874223b4e3b733a31323a227265675f70617373776f7264223b4e3b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a31323a2263616c5f63616c656e646172223b4e3b733a31303a2263616c5f6e6f5370616e223b733a303a22223b733a31353a2263616c5f6869646552756e6e696e67223b733a303a22223b733a31323a2263616c5f7374617274446179223b733a313a2231223b733a31303a2263616c5f666f726d6174223b733a393a2263616c5f6d6f6e7468223b733a31373a2263616c5f69676e6f726544796e616d6963223b733a303a22223b733a393a2263616c5f6f72646572223b733a393a22617363656e64696e67223b733a31363a2263616c5f7265616465724d6f64756c65223b733a313a2230223b733a393a2263616c5f6c696d6974223b733a313a2230223b733a31323a2263616c5f74656d706c617465223b733a31303a226576656e745f66756c6c223b733a31333a2263616c5f6374656d706c617465223b733a31313a2263616c5f64656661756c74223b733a31363a2263616c5f73686f775175616e74697479223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31343a226661715f63617465676f72696573223b4e3b733a31363a226661715f7265616465724d6f64756c65223b733a313a2230223b733a31303a226c6973745f7461626c65223b733a303a22223b733a31313a226c6973745f6669656c6473223b733a303a22223b733a31303a226c6973745f7768657265223b733a303a22223b733a31313a226c6973745f736561726368223b733a303a22223b733a393a226c6973745f736f7274223b733a303a22223b733a393a226c6973745f696e666f223b733a303a22223b733a31353a226c6973745f696e666f5f7768657265223b733a303a22223b733a31313a226c6973745f6c61796f7574223b733a31323a226c6973745f64656661756c74223b733a31363a226c6973745f696e666f5f6c61796f7574223b733a31323a22696e666f5f64656661756c74223b733a31333a226e6577735f6172636869766573223b4e3b733a31333a226e6577735f6665617475726564223b733a393a22616c6c5f6974656d73223b733a31383a226e6577735f6a756d70546f43757272656e74223b733a303a22223b733a31373a226e6577735f7265616465724d6f64756c65223b733a313a2230223b733a31353a226e6577735f6d6574614669656c6473223b733a33383a22613a323a7b693a303b733a343a2264617465223b693a313b733a363a22617574686f72223b7d223b733a31333a226e6577735f74656d706c617465223b733a31313a226e6577735f6c6174657374223b733a31313a226e6577735f666f726d6174223b733a31303a226e6577735f6d6f6e7468223b733a31333a226e6577735f7374617274446179223b733a313a2230223b733a31303a226e6577735f6f72646572223b733a31303a2264657363656e64696e67223b733a31373a226e6577735f73686f775175616e74697479223b733a303a22223b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6c5f6368616e6e656c73223b4e3b733a31353a226e6c5f686964654368616e6e656c73223b733a303a22223b733a31323a226e6c5f737562736372696265223b4e3b733a31343a226e6c5f756e737562736372696265223b4e3b733a31313a226e6c5f74656d706c617465223b733a393a226e6c5f73696d706c65223b733a31353a2272616e646f6d50616765496d616765223b733a303a22223b733a31363a22696e686572697450616765496d616765223b733a303a22223b7d),
(66, 1, 1526296429, 1, 'tl_page', 2, 'hendrik.obermayer', 'finanzblog.org', 'contao?do=page&act=edit&id=1&rt=FEGsEMFtP_I1obWN94-dnyayC2Yn1xneFjjFPderKp0&ref=soe0GR7J', '', 0x613a35373a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2230223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231353134323931383732223b733a353a227469746c65223b733a31343a2266696e616e7a626c6f672e6f7267223b733a353a22616c696173223b733a31343a2266696e616e7a626c6f672d6f7267223b733a343a2274797065223b733a343a22726f6f74223b733a393a22706167655469746c65223b733a35353a2246696e616e7a626c6f67202d20457266616872756e67656e207a75204769726f6b6f6e74656e20756e64204b72656469746b617274656e223b733a383a226c616e6775616765223b733a323a226465223b733a363a22726f626f7473223b733a303a22223b733a31313a226465736372697074696f6e223b4e3b733a383a227265646972656374223b733a393a227065726d616e656e74223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a333a22646e73223b733a303a22223b733a31313a2273746174696346696c6573223b733a303a22223b733a31333a22737461746963506c7567696e73223b733a303a22223b733a383a2266616c6c6261636b223b733a313a2231223b733a31303a2261646d696e456d61696c223b733a303a22223b733a31303a2264617465466f726d6174223b733a303a22223b733a31303a2274696d65466f726d6174223b733a303a22223b733a31313a22646174696d466f726d6174223b733a303a22223b733a31333a22637265617465536974656d6170223b733a313a2231223b733a31313a22736974656d61704e616d65223b733a31303a22736974656d61705f6465223b733a363a2275736553534c223b733a303a22223b733a31313a226175746f666f7277617264223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a31333a22696e636c7564654c61796f7574223b733a313a2231223b733a363a226c61796f7574223b733a313a2231223b733a31323a226d6f62696c654c61796f7574223b733a313a2230223b733a31323a22696e636c7564654361636865223b733a303a22223b733a353a226361636865223b733a313a2230223b733a31313a22636c69656e744361636865223b733a313a2230223b733a31323a22696e636c75646543686d6f64223b733a303a22223b733a353a226375736572223b733a313a2230223b733a363a226367726f7570223b733a313a2230223b733a353a2263686d6f64223b733a3132333a22613a393a7b693a303b733a323a227531223b693a313b733a323a227532223b693a323b733a323a227533223b693a333b733a323a227534223b693a343b733a323a227535223b693a353b733a323a227536223b693a363b733a323a226734223b693a373b733a323a226735223b693a383b733a323a226736223b7d223b733a383a226e6f536561726368223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a373a22736974656d6170223b733a303a22223b733a343a2268696465223b733a303a22223b733a363a22677565737473223b733a303a22223b733a383a22746162696e646578223b733a313a2230223b733a393a226163636573736b6579223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a31343a2270616765496d6167655469746c65223b733a303a22223b733a31323a2270616765496d616765416c74223b733a303a22223b733a31353a2270616765496d6167654a756d70546f223b733a313a2230223b733a31343a2270616765496d6167654f72646572223b4e3b733a393a2270616765496d616765223b4e3b733a31373a2265787465726e616c5f6a735f6f72646572223b4e3b733a31313a2265787465726e616c5f6a73223b4e3b7d),
(67, 1, 1526296439, 2, 'tl_page', 2, 'hendrik.obermayer', 'Contao Website', 'contao?do=page&act=edit&id=1&rt=FEGsEMFtP_I1obWN94-dnyayC2Yn1xneFjjFPderKp0&ref=soe0GR7J', '1', 0x613a35373a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2230223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231353134323931383732223b733a353a227469746c65223b733a31343a22436f6e74616f2057656273697465223b733a353a22616c696173223b733a31343a22636f6e74616f2d77656273697465223b733a343a2274797065223b733a343a22726f6f74223b733a393a22706167655469746c65223b733a303a22223b733a383a226c616e6775616765223b733a323a226465223b733a363a22726f626f7473223b733a303a22223b733a31313a226465736372697074696f6e223b4e3b733a383a227265646972656374223b733a393a227065726d616e656e74223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a333a22646e73223b733a303a22223b733a31313a2273746174696346696c6573223b733a303a22223b733a31333a22737461746963506c7567696e73223b733a303a22223b733a383a2266616c6c6261636b223b733a313a2231223b733a31303a2261646d696e456d61696c223b733a303a22223b733a31303a2264617465466f726d6174223b733a303a22223b733a31303a2274696d65466f726d6174223b733a303a22223b733a31313a22646174696d466f726d6174223b733a303a22223b733a31333a22637265617465536974656d6170223b733a313a2231223b733a31313a22736974656d61704e616d65223b733a31303a22736974656d61705f6465223b733a363a2275736553534c223b733a303a22223b733a31313a226175746f666f7277617264223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a31333a22696e636c7564654c61796f7574223b733a313a2231223b733a363a226c61796f7574223b733a313a2231223b733a31323a226d6f62696c654c61796f7574223b733a313a2230223b733a31323a22696e636c7564654361636865223b733a303a22223b733a353a226361636865223b733a313a2230223b733a31313a22636c69656e744361636865223b733a313a2230223b733a31323a22696e636c75646543686d6f64223b733a303a22223b733a353a226375736572223b733a313a2230223b733a363a226367726f7570223b733a313a2230223b733a353a2263686d6f64223b733a3132333a22613a393a7b693a303b733a323a227531223b693a313b733a323a227532223b693a323b733a323a227533223b693a333b733a323a227534223b693a343b733a323a227535223b693a353b733a323a227536223b693a363b733a323a226734223b693a373b733a323a226735223b693a383b733a323a226736223b7d223b733a383a226e6f536561726368223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a373a22736974656d6170223b733a303a22223b733a343a2268696465223b733a303a22223b733a363a22677565737473223b733a303a22223b733a383a22746162696e646578223b733a313a2230223b733a393a226163636573736b6579223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a31343a2270616765496d6167655469746c65223b733a303a22223b733a31323a2270616765496d616765416c74223b733a303a22223b733a31353a2270616765496d6167654a756d70546f223b733a313a2230223b733a31343a2270616765496d6167654f72646572223b4e3b733a393a2270616765496d616765223b4e3b733a31373a2265787465726e616c5f6a735f6f72646572223b4e3b733a31313a2265787465726e616c5f6a73223b4e3b7d),
(64, 2, 1526296415, 1, 'tl_page', 2, 'hendrik.obermayer', 'Home', 'contao?do=page&act=edit&id=2&rt=FEGsEMFtP_I1obWN94-dnyayC2Yn1xneFjjFPderKp0&ref=TE4Titq5', '', 0x613a35373a7b733a323a226964223b733a313a2232223b733a333a22706964223b733a313a2231223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231353134333130313834223b733a353a227469746c65223b733a343a22486f6d65223b733a353a22616c696173223b733a353a22696e646578223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22706167655469746c65223b733a303a22223b733a383a226c616e6775616765223b733a303a22223b733a363a22726f626f7473223b733a31323a22696e6465782c666f6c6c6f77223b733a31313a226465736372697074696f6e223b4e3b733a383a227265646972656374223b733a393a227065726d616e656e74223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a333a22646e73223b733a303a22223b733a31313a2273746174696346696c6573223b733a303a22223b733a31333a22737461746963506c7567696e73223b733a303a22223b733a383a2266616c6c6261636b223b733a303a22223b733a31303a2261646d696e456d61696c223b733a303a22223b733a31303a2264617465466f726d6174223b733a303a22223b733a31303a2274696d65466f726d6174223b733a303a22223b733a31313a22646174696d466f726d6174223b733a303a22223b733a31333a22637265617465536974656d6170223b733a303a22223b733a31313a22736974656d61704e616d65223b733a303a22223b733a363a2275736553534c223b733a303a22223b733a31313a226175746f666f7277617264223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a31333a22696e636c7564654c61796f7574223b733a303a22223b733a363a226c61796f7574223b733a313a2230223b733a31323a226d6f62696c654c61796f7574223b733a313a2230223b733a31323a22696e636c7564654361636865223b733a303a22223b733a353a226361636865223b733a313a2230223b733a31313a22636c69656e744361636865223b733a313a2230223b733a31323a22696e636c75646543686d6f64223b733a303a22223b733a353a226375736572223b733a313a2230223b733a363a226367726f7570223b733a313a2230223b733a353a2263686d6f64223b733a3132333a22613a393a7b693a303b733a323a227531223b693a313b733a323a227532223b693a323b733a323a227533223b693a333b733a323a227534223b693a343b733a323a227535223b693a353b733a323a227536223b693a363b733a323a226734223b693a373b733a323a226735223b693a383b733a323a226736223b7d223b733a383a226e6f536561726368223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a373a22736974656d6170223b733a31313a226d61705f64656661756c74223b733a343a2268696465223b733a313a2231223b733a363a22677565737473223b733a303a22223b733a383a22746162696e646578223b733a313a2230223b733a393a226163636573736b6579223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a31343a2270616765496d6167655469746c65223b733a303a22223b733a31323a2270616765496d616765416c74223b733a303a22223b733a31353a2270616765496d6167654a756d70546f223b733a313a2230223b733a31343a2270616765496d6167654f72646572223b4e3b733a393a2270616765496d616765223b4e3b733a31373a2265787465726e616c5f6a735f6f72646572223b4e3b733a31313a2265787465726e616c5f6a73223b4e3b7d),
(65, 2, 1526296426, 2, 'tl_page', 2, 'hendrik.obermayer', 'Home', 'contao?do=page&act=edit&id=2&rt=FEGsEMFtP_I1obWN94-dnyayC2Yn1xneFjjFPderKp0&ref=TE4Titq5', '1', 0x613a35373a7b733a323a226964223b733a313a2232223b733a333a22706964223b733a313a2231223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231353134333130313834223b733a353a227469746c65223b733a343a22486f6d65223b733a353a22616c696173223b733a353a22696e646578223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22706167655469746c65223b733a303a22223b733a383a226c616e6775616765223b733a303a22223b733a363a22726f626f7473223b733a31323a22696e6465782c666f6c6c6f77223b733a31313a226465736372697074696f6e223b4e3b733a383a227265646972656374223b733a393a227065726d616e656e74223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a333a22646e73223b733a303a22223b733a31313a2273746174696346696c6573223b733a303a22223b733a31333a22737461746963506c7567696e73223b733a303a22223b733a383a2266616c6c6261636b223b733a303a22223b733a31303a2261646d696e456d61696c223b733a303a22223b733a31303a2264617465466f726d6174223b733a303a22223b733a31303a2274696d65466f726d6174223b733a303a22223b733a31313a22646174696d466f726d6174223b733a303a22223b733a31333a22637265617465536974656d6170223b733a303a22223b733a31313a22736974656d61704e616d65223b733a303a22223b733a363a2275736553534c223b733a303a22223b733a31313a226175746f666f7277617264223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a31333a22696e636c7564654c61796f7574223b733a303a22223b733a363a226c61796f7574223b733a313a2230223b733a31323a226d6f62696c654c61796f7574223b733a313a2230223b733a31323a22696e636c7564654361636865223b733a303a22223b733a353a226361636865223b733a313a2230223b733a31313a22636c69656e744361636865223b733a313a2230223b733a31323a22696e636c75646543686d6f64223b733a303a22223b733a353a226375736572223b733a313a2230223b733a363a226367726f7570223b733a313a2230223b733a353a2263686d6f64223b733a3132333a22613a393a7b693a303b733a323a227531223b693a313b733a323a227532223b693a323b733a323a227533223b693a333b733a323a227534223b693a343b733a323a227535223b693a353b733a323a227536223b693a363b733a323a226734223b693a373b733a323a226735223b693a383b733a323a226736223b7d223b733a383a226e6f536561726368223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a373a22736974656d6170223b733a31313a226d61705f64656661756c74223b733a343a2268696465223b733a303a22223b733a363a22677565737473223b733a303a22223b733a383a22746162696e646578223b733a313a2230223b733a393a226163636573736b6579223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a31343a2270616765496d6167655469746c65223b733a303a22223b733a31323a2270616765496d616765416c74223b733a303a22223b733a31353a2270616765496d6167654a756d70546f223b733a313a2230223b733a31343a2270616765496d6167654f72646572223b4e3b733a393a2270616765496d616765223b4e3b733a31373a2265787465726e616c5f6a735f6f72646572223b4e3b733a31313a2265787465726e616c5f6a73223b4e3b7d),
(61, 1, 1526296347, 1, 'tl_theme', 2, 'hendrik.obermayer', 'Comolo Default', 'contao?do=themes&act=edit&id=1&rt=FEGsEMFtP_I1obWN94-dnyayC2Yn1xneFjjFPderKp0&ref=80J5s06K', '1', 0x613a393a7b733a323a226964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231353134323931353034223b733a343a226e616d65223b733a31343a22436f6d6f6c6f2044656661756c74223b733a363a22617574686f72223b733a31373a2248656e6472696b204f6265726d61796572223b733a373a22666f6c64657273223b733a33343a22613a313a7b693a303b733a31363a22ac8b766c576711e8a912d6f6b48b1b45223b7d223b733a31303a2273637265656e73686f74223b4e3b733a393a2274656d706c61746573223b733a32343a2274656d706c617465732f636f6d6f6c6f5f64656661756c74223b733a343a2276617273223b733a363a22613a303a7b7d223b733a32313a2264656661756c74496d61676544656e736974696573223b733a303a22223b7d),
(62, 1, 1526296352, 1, 'tl_layout', 2, 'hendrik.obermayer', 'Default Layout', 'contao?do=themes&table=tl_layout&id=1&act=edit&rt=FEGsEMFtP_I1obWN94-dnyayC2Yn1xneFjjFPderKp0&ref=GXnzm83b', '', 0x613a34353a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231353134333133353336223b733a343a226e616d65223b733a31343a2244656661756c74204c61796f7574223b733a343a22726f7773223b733a333a22337277223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a343a22636f6c73223b733a333a2231636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a3131323a22613a313a7b693a303b613a343a7b733a353a227469746c65223b733a303a22223b733a323a226964223b733a303a22223b733a383a2274656d706c617465223b733a31333a22626c6f636b5f73656374696f6e223b733a383a22706f736974696f6e223b733a333a22746f70223b7d7d223b733a393a226672616d65776f726b223b733a35343a22613a323a7b693a303b733a31303a226c61796f75742e637373223b693a313b733a31343a22726573706f6e736976652e637373223b7d223b733a31303a227374796c657368656574223b4e3b733a383a2265787465726e616c223b4e3b733a383a226f72646572457874223b4e3b733a31323a226c6f6164696e674f72646572223b733a31343a2265787465726e616c5f6669727374223b733a31343a22636f6d62696e6553637269707473223b733a303a22223b733a373a226d6f64756c6573223b733a3239303a22613a343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2231223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2235223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d7d223b733a383a2274656d706c617465223b733a31343a2266655f706167655f636f6d6f6c6f223b733a373a22646f6374797065223b733a353a2268746d6c35223b733a383a22776562666f6e7473223b733a32353a224f70656e2b53616e733a3330302c3430302c3630302c373030223b733a383a2276696577706f7274223b733a303a22223b733a383a227469746c65546167223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b4e3b733a393a226164644a5175657279223b733a313a2231223b733a373a226a536f75726365223b733a373a226a5f6c6f63616c223b733a363a226a7175657279223b4e3b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a31313a227069637475726566696c6c223b733a303a22223b733a393a22616e616c7974696373223b4e3b733a373a2273637269707473223b4e3b733a363a22736372697074223b4e3b733a363a22737461746963223b733a313a2231223b733a353a227769647468223b733a34383a22613a323a7b733a343a22756e6974223b733a323a227078223b733a353a2276616c7565223b733a333a22393630223b7d223b733a353a22616c69676e223b733a363a2263656e746572223b733a31333a2263616c656e6461726665656473223b4e3b733a393a226e6577736665656473223b4e3b733a31393a2265787465726e616c5f736373735f6f72646572223b733a33343a22613a313a7b693a303b733a31363a228a32a64aea3811e7a8bf8c85901982e7223b7d223b733a31373a2265787465726e616c5f6a735f6f72646572223b733a363a22613a303a7b7d223b733a31333a2265787465726e616c5f73637373223b733a33343a22613a313a7b693a303b733a31363a228a32a64aea3811e7a8bf8c85901982e7223b7d223b733a31313a2265787465726e616c5f6a73223b4e3b7d),
(63, 1, 1526296383, 2, 'tl_layout', 2, 'hendrik.obermayer', 'Default Layout', 'contao?do=themes&table=tl_layout&id=1&act=edit&rt=FEGsEMFtP_I1obWN94-dnyayC2Yn1xneFjjFPderKp0&ref=GXnzm83b', '1', 0x613a34353a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231353236323936333833223b733a343a226e616d65223b733a31343a2244656661756c74204c61796f7574223b733a343a22726f7773223b733a333a22337277223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a343a22636f6c73223b733a333a2231636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a3131323a22613a313a7b693a303b613a343a7b733a353a227469746c65223b733a303a22223b733a323a226964223b733a303a22223b733a383a2274656d706c617465223b733a31333a22626c6f636b5f73656374696f6e223b733a383a22706f736974696f6e223b733a333a22746f70223b7d7d223b733a393a226672616d65776f726b223b733a35343a22613a323a7b693a303b733a31303a226c61796f75742e637373223b693a313b733a31343a22726573706f6e736976652e637373223b7d223b733a31303a227374796c657368656574223b4e3b733a383a2265787465726e616c223b4e3b733a383a226f72646572457874223b4e3b733a31323a226c6f6164696e674f72646572223b733a31343a2265787465726e616c5f6669727374223b733a31343a22636f6d62696e6553637269707473223b733a303a22223b733a373a226d6f64756c6573223b733a3239303a22613a343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2231223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2235223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d7d223b733a383a2274656d706c617465223b733a31343a2266655f706167655f636f6d6f6c6f223b733a373a22646f6374797065223b733a353a2268746d6c35223b733a383a22776562666f6e7473223b733a32353a224f70656e2b53616e733a3330302c3430302c3630302c373030223b733a383a2276696577706f7274223b733a303a22223b733a383a227469746c65546167223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b4e3b733a393a226164644a5175657279223b733a313a2231223b733a373a226a536f75726365223b733a373a226a5f6c6f63616c223b733a363a226a7175657279223b4e3b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a31313a227069637475726566696c6c223b733a303a22223b733a393a22616e616c7974696373223b4e3b733a373a2273637269707473223b4e3b733a363a22736372697074223b4e3b733a363a22737461746963223b733a313a2231223b733a353a227769647468223b733a34383a22613a323a7b733a343a22756e6974223b733a323a227078223b733a353a2276616c7565223b733a333a22393630223b7d223b733a353a22616c69676e223b733a363a2263656e746572223b733a31333a2263616c656e6461726665656473223b4e3b733a393a226e6577736665656473223b4e3b733a31393a2265787465726e616c5f736373735f6f72646572223b733a33343a22613a313a7b693a303b733a31363a22ac8b759f576711e8a912d6f6b48b1b45223b7d223b733a31373a2265787465726e616c5f6a735f6f72646572223b733a33343a22613a313a7b693a303b733a31363a22ac8f18af576711e8a912d6f6b48b1b45223b7d223b733a31333a2265787465726e616c5f73637373223b733a33343a22613a313a7b693a303b733a31363a22ac8b759f576711e8a912d6f6b48b1b45223b7d223b733a31313a2265787465726e616c5f6a73223b733a33343a22613a313a7b693a303b733a31363a22ac8f18af576711e8a912d6f6b48b1b45223b7d223b7d);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tl_article`
--
ALTER TABLE `tl_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `pid_start_stop_published_sorting` (`pid`,`start`,`stop`,`published`,`sorting`);

--
-- Indexes for table `tl_calendar`
--
ALTER TABLE `tl_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_calendar_events`
--
ALTER TABLE `tl_calendar_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `pid_start_stop_published` (`pid`,`start`,`stop`,`published`);

--
-- Indexes for table `tl_calendar_feed`
--
ALTER TABLE `tl_calendar_feed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`);

--
-- Indexes for table `tl_comments`
--
ALTER TABLE `tl_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`),
  ADD KEY `source_parent_published` (`source`,`parent`,`published`);

--
-- Indexes for table `tl_comments_notify`
--
ALTER TABLE `tl_comments_notify`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tokenremove` (`tokenRemove`),
  ADD KEY `source_parent_tokenconfirm` (`source`,`parent`,`tokenConfirm`);

--
-- Indexes for table `tl_content`
--
ALTER TABLE `tl_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid_ptable_invisible_sorting` (`pid`,`ptable`,`invisible`,`sorting`);

--
-- Indexes for table `tl_cron`
--
ALTER TABLE `tl_cron`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tl_faq`
--
ALTER TABLE `tl_faq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid_published_sorting` (`pid`,`published`,`sorting`);

--
-- Indexes for table `tl_faq_category`
--
ALTER TABLE `tl_faq_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_files`
--
ALTER TABLE `tl_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `path` (`path`(333)),
  ADD KEY `extension` (`extension`);

--
-- Indexes for table `tl_form`
--
ALTER TABLE `tl_form`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`);

--
-- Indexes for table `tl_form_field`
--
ALTER TABLE `tl_form_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_image_size`
--
ALTER TABLE `tl_image_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_image_size_item`
--
ALTER TABLE `tl_image_size_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_layout`
--
ALTER TABLE `tl_layout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_log`
--
ALTER TABLE `tl_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_member`
--
ALTER TABLE `tl_member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `autologin` (`autologin`),
  ADD KEY `email` (`email`),
  ADD KEY `activation` (`activation`);

--
-- Indexes for table `tl_member_group`
--
ALTER TABLE `tl_member_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_module`
--
ALTER TABLE `tl_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_news`
--
ALTER TABLE `tl_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `pid_start_stop_published` (`pid`,`start`,`stop`,`published`);

--
-- Indexes for table `tl_newsletter`
--
ALTER TABLE `tl_newsletter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_newsletter_blacklist`
--
ALTER TABLE `tl_newsletter_blacklist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_newsletter_channel`
--
ALTER TABLE `tl_newsletter_channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_newsletter_recipients`
--
ALTER TABLE `tl_newsletter_recipients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pid_email` (`pid`,`email`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `tl_news_archive`
--
ALTER TABLE `tl_news_archive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_news_feed`
--
ALTER TABLE `tl_news_feed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`);

--
-- Indexes for table `tl_page`
--
ALTER TABLE `tl_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `pid_type_start_stop_published` (`pid`,`type`,`start`,`stop`,`published`);

--
-- Indexes for table `tl_search`
--
ALTER TABLE `tl_search`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`),
  ADD UNIQUE KEY `checksum_pid` (`checksum`,`pid`);

--
-- Indexes for table `tl_search_index`
--
ALTER TABLE `tl_search_index`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `word` (`word`);

--
-- Indexes for table `tl_session`
--
ALTER TABLE `tl_session`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_style`
--
ALTER TABLE `tl_style`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_style_sheet`
--
ALTER TABLE `tl_style_sheet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tl_superlogin_server`
--
ALTER TABLE `tl_superlogin_server`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_theme`
--
ALTER TABLE `tl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_undo`
--
ALTER TABLE `tl_undo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_user`
--
ALTER TABLE `tl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `tl_user_group`
--
ALTER TABLE `tl_user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_version`
--
ALTER TABLE `tl_version`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `fromtable` (`fromTable`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tl_article`
--
ALTER TABLE `tl_article`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tl_calendar`
--
ALTER TABLE `tl_calendar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_calendar_events`
--
ALTER TABLE `tl_calendar_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_calendar_feed`
--
ALTER TABLE `tl_calendar_feed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_comments`
--
ALTER TABLE `tl_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_comments_notify`
--
ALTER TABLE `tl_comments_notify`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_content`
--
ALTER TABLE `tl_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_cron`
--
ALTER TABLE `tl_cron`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tl_faq`
--
ALTER TABLE `tl_faq`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_faq_category`
--
ALTER TABLE `tl_faq_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_files`
--
ALTER TABLE `tl_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `tl_form`
--
ALTER TABLE `tl_form`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_form_field`
--
ALTER TABLE `tl_form_field`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_image_size`
--
ALTER TABLE `tl_image_size`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_image_size_item`
--
ALTER TABLE `tl_image_size_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_layout`
--
ALTER TABLE `tl_layout`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tl_log`
--
ALTER TABLE `tl_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `tl_member`
--
ALTER TABLE `tl_member`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_member_group`
--
ALTER TABLE `tl_member_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_module`
--
ALTER TABLE `tl_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tl_news`
--
ALTER TABLE `tl_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_newsletter`
--
ALTER TABLE `tl_newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_newsletter_blacklist`
--
ALTER TABLE `tl_newsletter_blacklist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_newsletter_channel`
--
ALTER TABLE `tl_newsletter_channel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_newsletter_recipients`
--
ALTER TABLE `tl_newsletter_recipients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_news_archive`
--
ALTER TABLE `tl_news_archive`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_news_feed`
--
ALTER TABLE `tl_news_feed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_page`
--
ALTER TABLE `tl_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tl_search`
--
ALTER TABLE `tl_search`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tl_search_index`
--
ALTER TABLE `tl_search_index`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=929;
--
-- AUTO_INCREMENT for table `tl_session`
--
ALTER TABLE `tl_session`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tl_style`
--
ALTER TABLE `tl_style`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_style_sheet`
--
ALTER TABLE `tl_style_sheet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_superlogin_server`
--
ALTER TABLE `tl_superlogin_server`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tl_theme`
--
ALTER TABLE `tl_theme`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tl_undo`
--
ALTER TABLE `tl_undo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tl_user`
--
ALTER TABLE `tl_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tl_user_group`
--
ALTER TABLE `tl_user_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tl_version`
--
ALTER TABLE `tl_version`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
