-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 17, 2018 at 10:19 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress2`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-15 19:02:19', '2018-04-15 17:02:19', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'home', 'http://localhost', 'yes'),
(3, 'blogname', 'Restaurant du port', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'amandamcossu@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:128:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:7:"plat/?$";s:24:"index.php?post_type=plat";s:37:"plat/feed/(feed|rdf|rss|rss2|atom)/?$";s:41:"index.php?post_type=plat&feed=$matches[1]";s:32:"plat/(feed|rdf|rss|rss2|atom)/?$";s:41:"index.php?post_type=plat&feed=$matches[1]";s:24:"plat/page/([0-9]{1,})/?$";s:42:"index.php?post_type=plat&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:32:"plat/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"plat/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"plat/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"plat/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"plat/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"plat/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"plat/([^/]+)/embed/?$";s:37:"index.php?plat=$matches[1]&embed=true";s:25:"plat/([^/]+)/trackback/?$";s:31:"index.php?plat=$matches[1]&tb=1";s:45:"plat/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?plat=$matches[1]&feed=$matches[2]";s:40:"plat/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?plat=$matches[1]&feed=$matches[2]";s:33:"plat/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?plat=$matches[1]&paged=$matches[2]";s:40:"plat/([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?plat=$matches[1]&cpage=$matches[2]";s:29:"plat/([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?plat=$matches[1]&page=$matches[2]";s:21:"plat/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:31:"plat/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:51:"plat/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"plat/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"plat/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"plat/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"plat_du_jour/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"plat_du_jour/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"plat_du_jour/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"plat_du_jour/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"plat_du_jour/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"plat_du_jour/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"plat_du_jour/([^/]+)/embed/?$";s:45:"index.php?plat_du_jour=$matches[1]&embed=true";s:33:"plat_du_jour/([^/]+)/trackback/?$";s:39:"index.php?plat_du_jour=$matches[1]&tb=1";s:41:"plat_du_jour/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?plat_du_jour=$matches[1]&paged=$matches[2]";s:48:"plat_du_jour/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?plat_du_jour=$matches[1]&cpage=$matches[2]";s:37:"plat_du_jour/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?plat_du_jour=$matches[1]&page=$matches[2]";s:29:"plat_du_jour/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"plat_du_jour/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"plat_du_jour/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"plat_du_jour/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"plat_du_jour/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"plat_du_jour/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:40:"index.php?&page_id=102&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '102', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:8:"search-2";i:1;s:17:"recent-comments-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";i:4;s:6:"meta-2";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1524027741;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1524070962;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1524071247;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1523811947;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(126, '_site_transient_timeout_browser_0b658a9e61726056cb3e3f5c6ae0f301', '1524416556', 'no'),
(127, '_site_transient_browser_0b658a9e61726056cb3e3f5c6ae0f301', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"59.0";s:8:"platform";s:5:"Linux";s:10:"update_url";s:24:"https://www.firefox.com/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(128, 'can_compress_scripts', '0', 'no'),
(145, 'current_theme', 'WP Bootstrap Starter Child', 'yes'),
(146, 'theme_mods_wp-bootstrap-starter child', 'a:8:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:-1;s:20:"theme_option_setting";s:7:"default";s:20:"preset_style_setting";s:20:"arbutusslab-opensans";s:27:"header_banner_title_setting";s:16:"Notre restaurant";s:29:"header_banner_tagline_setting";s:382:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac consectetur enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer felis tellus, finibus a felis quis, ornare lobortis nisi. Aenean vel lectus ut enim malesuada maximus. Nulla laoreet leo et dapibus congue. Aenean facilisis turpis nibh, eu laoreet est aliquam finibus. Morbi in facilisis arcu. ";s:24:"header_banner_visibility";b:0;}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(148, 'triggered_welcomet', '1', 'yes'),
(149, '_transient_timeout_plugin_slugs', '1524039561', 'no'),
(150, '_transient_plugin_slugs', 'a:6:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:5;s:9:"hello.php";}', 'no'),
(151, 'recently_activated', 'a:0:{}', 'yes'),
(156, 'acf_version', '4.4.12', 'yes'),
(161, 'cptui_new_install', 'false', 'yes'),
(164, 'cptui_post_types', 'a:2:{s:4:"plat";a:28:{s:4:"name";s:4:"plat";s:5:"label";s:5:"Plats";s:14:"singular_label";s:4:"Plat";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:9:"thumbnail";i:2;s:13:"custom-fields";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}s:12:"plat_du_jour";a:28:{s:4:"name";s:12:"plat_du_jour";s:5:"label";s:13:"Plats_du_jour";s:14:"singular_label";s:12:"Plat_du_jour";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"page";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:9:"thumbnail";i:2;s:13:"custom-fields";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(181, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.5.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.5.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1523994295;s:15:"version_checked";s:5:"4.9.5";s:12:"translations";a:0:{}}', 'no'),
(184, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.0.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";d:1523820198;s:7:"version";s:5:"5.0.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(193, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(248, 'category_children', 'a:0:{}', 'yes'),
(358, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1524014413', 'no'),
(359, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:2:{i:0;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:54:"Je bloc, tu bloc, et Gutenberg nous dévoile ses blocs";s:3:"url";s:73:"https://www.meetup.com/Meetup-WordPress-Aix-en-Provence/events/249825807/";s:6:"meetup";s:28:"WordPressⓌ Aix-en-Provence";s:10:"meetup_url";s:56:"https://www.meetup.com/Meetup-WordPress-Aix-en-Provence/";s:4:"date";s:19:"2018-04-17 19:00:00";s:8:"location";a:4:{s:8:"location";s:23:"Aix-en-Provence, France";s:7:"country";s:2:"fr";s:8:"latitude";d:43.523060000000001;s:9:"longitude";d:5.4508470000000004;}}i:1;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:21:"Tout Public / BarCamp";s:3:"url";s:67:"https://www.meetup.com/Marseille-WordPress-Meetup/events/249596486/";s:6:"meetup";s:26:"Marseille WordPress Meetup";s:10:"meetup_url";s:50:"https://www.meetup.com/Marseille-WordPress-Meetup/";s:4:"date";s:19:"2018-04-20 19:00:00";s:8:"location";a:4:{s:8:"location";s:17:"Marseille, France";s:7:"country";s:2:"fr";s:8:"latitude";d:43.292273999999999;s:9:"longitude";d:5.3728290000000003;}}}}', 'no'),
(388, 'ai1wm_secret_key', 'BlRoo22EpBi5', 'yes'),
(410, 'jetpack_active_modules', 'a:0:{}', 'yes'),
(412, '_site_transient_timeout_community-events-2921e3e0a41d1ded750b2ac205948e12', '1524008960', 'no'),
(413, '_site_transient_community-events-2921e3e0a41d1ded750b2ac205948e12', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:11:"147.94.36.0";}s:6:"events";a:2:{i:0;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:54:"Je bloc, tu bloc, et Gutenberg nous dévoile ses blocs";s:3:"url";s:73:"https://www.meetup.com/Meetup-WordPress-Aix-en-Provence/events/249825807/";s:6:"meetup";s:28:"WordPressⓌ Aix-en-Provence";s:10:"meetup_url";s:56:"https://www.meetup.com/Meetup-WordPress-Aix-en-Provence/";s:4:"date";s:19:"2018-04-17 19:00:00";s:8:"location";a:4:{s:8:"location";s:23:"Aix-en-Provence, France";s:7:"country";s:2:"fr";s:8:"latitude";d:43.5230600000000009686118573881685733795166015625;s:9:"longitude";d:5.45084700000000044184389480506069958209991455078125;}}i:1;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:21:"Tout Public / BarCamp";s:3:"url";s:67:"https://www.meetup.com/Marseille-WordPress-Meetup/events/249596486/";s:6:"meetup";s:26:"Marseille WordPress Meetup";s:10:"meetup_url";s:50:"https://www.meetup.com/Marseille-WordPress-Meetup/";s:4:"date";s:19:"2018-04-20 19:00:00";s:8:"location";a:4:{s:8:"location";s:17:"Marseille, France";s:7:"country";s:2:"fr";s:8:"latitude";d:43.29227399999999903457137406803667545318603515625;s:9:"longitude";d:5.37282900000000029905322662671096622943878173828125;}}}}', 'no'),
(415, 'active_plugins', 'a:4:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:43:"custom-post-type-ui/custom-post-type-ui.php";}', 'yes'),
(416, 'ai1wm_status', 'a:2:{s:4:"type";s:8:"download";s:7:"message";s:187:"<a href="http://localhost/wp-content/ai1wm-backups/localhost-20180417-201631-879.wpress" class="ai1wm-button-green ai1wm-emphasize"><span>Download localhost</span><em>Size: 28 MB</em></a>";}', 'yes'),
(417, 'template', 'wp-bootstrap-starter', 'yes'),
(418, 'stylesheet', 'wp-bootstrap-starter child', 'yes'),
(422, 'ai1wm_updater', 'a:0:{}', 'yes'),
(425, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1523994299;s:7:"checked";a:7:{s:30:"advanced-custom-fields/acf.php";s:6:"4.4.12";s:19:"akismet/akismet.php";s:5:"4.0.3";s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";s:4:"6.67";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.0.1";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.5.8";s:9:"hello.php";s:3:"1.7";s:27:"wp-super-cache/wp-cache.php";s:5:"1.5.9";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:7:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";O:8:"stdClass":9:{s:2:"id";s:37:"w.org/plugins/all-in-one-wp-migration";s:4:"slug";s:23:"all-in-one-wp-migration";s:6:"plugin";s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";s:11:"new_version";s:4:"6.67";s:3:"url";s:54:"https://wordpress.org/plugins/all-in-one-wp-migration/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.67.zip";s:5:"icons";a:2:{s:2:"2x";s:76:"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1268186";s:2:"1x";s:76:"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=1268186";}s:7:"banners";a:2:{s:2:"2x";s:79:"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1691996";s:2:"1x";s:78:"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=1691996";}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.0.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.0.1.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":9:{s:2:"id";s:33:"w.org/plugins/custom-post-type-ui";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.5.8";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.8.zip";s:5:"icons";a:2:{s:2:"2x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557";s:2:"1x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557";}s:7:"banners";a:2:{s:2:"2x";s:75:"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557";s:2:"1x";s:74:"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:27:"wp-super-cache/wp-cache.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/wp-super-cache";s:4:"slug";s:14:"wp-super-cache";s:6:"plugin";s:27:"wp-super-cache/wp-cache.php";s:11:"new_version";s:5:"1.5.9";s:3:"url";s:45:"https://wordpress.org/plugins/wp-super-cache/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-super-cache.1.5.9.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422";s:2:"1x";s:67:"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422";}s:7:"banners";a:2:{s:2:"2x";s:70:"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414";s:2:"1x";s:69:"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(429, '_site_transient_timeout_theme_roots', '1523996097', 'no'),
(430, '_site_transient_theme_roots', 'a:5:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:26:"wp-bootstrap-starter child";s:7:"/themes";s:20:"wp-bootstrap-starter";s:7:"/themes";}', 'no'),
(431, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1523994298;s:7:"checked";a:5:{s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.5";s:13:"twentysixteen";s:3:"1.4";s:26:"wp-bootstrap-starter child";s:5:"3.0.6";s:20:"wp-bootstrap-starter";s:6:"3.0.12";}s:8:"response";a:1:{s:20:"wp-bootstrap-starter";a:4:{s:5:"theme";s:20:"wp-bootstrap-starter";s:11:"new_version";s:6:"3.0.13";s:3:"url";s:50:"https://wordpress.org/themes/wp-bootstrap-starter/";s:7:"package";s:69:"https://downloads.wordpress.org/theme/wp-bootstrap-starter.3.0.13.zip";}}s:12:"translations";a:0:{}}', 'no'),
(432, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1524037502', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(433, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:4:"WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:16:"https://wpfr.net";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:31:"Site officiel de la communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 17 Apr 2018 19:21:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"Résultats des élections du bureau 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wpfr.net/resultats-elections-bureau-2018/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Mar 2018 08:00:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2107099";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1521:"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2018, nous vous communiquons les résultats pour l&#8217;élection du bureau 2018. Vous avez été 40% des adhérents à participer au vote, soit 85 suffrages exprimés. C&#8217;est pratiquement autant de votants que l&#8217;an passé avec un nombre d&#8217;adhérents moins élevé, l&#8217;abstention reste<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/qvTDw6NqY5Q" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpfr.net/resultats-elections-bureau-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"13";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wpfr.net/resultats-elections-bureau-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"Liste des candidats au bureau 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpfr.net/liste-candidats-bureau-2018/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Feb 2018 11:45:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2092699";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1508:"Les élections pour le renouvellement du bureau auront lieu du 24 février au 3 mars 2018 par voie électronique. Nous vous communiquons dès à présent la liste des candidats validée par l&#8217;actuel bureau, classés par ordre alphabétique. Les candidats Willy Bahuaud Présentation Je suis développeur full-stack. Après quelques années passées en agence à Nantes, j’ai<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/mYCnwrPtTAY" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:50:"https://wpfr.net/liste-candidats-bureau-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wpfr.net/liste-candidats-bureau-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"WPFR sponsor du WP Tech Lyon !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kVgok7MJrJM/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wpfr.net/wpfr-sponsor-wptech-lyon/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 12 Feb 2018 07:00:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2082223";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1507:"L’association WPFR est fière de vous annoncer qu’elle sponsorise WP Tech 2018 qui aura lieu le 28 avril à Lyon. Le WP Tech est une journée de conférences et d’ateliers exclusivement consacrée aux aspects techniques de WordPress. Vous y découvrirez des outils pour améliorer vos méthodes de travail, apprendrez de nouvelles méthodes de développements d’extensions,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kVgok7MJrJM" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wpfr.net/wpfr-sponsor-wptech-lyon/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wpfr.net/wpfr-sponsor-wptech-lyon/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"Loi anti-fraude et l’e-commerce : les informations officielles";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KBb85wMEo0g/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:86:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 31 Jan 2018 14:51:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:10:"Extensions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:15:"Loi anti-fraude";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2072415";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1503:"Cette nouvelle loi a fait couler pas mal d&#8217;encre ces derniers temps et afin d&#8217;apporter des réponses concrètes et officielles, nous nous sommes penchés sur le sujet en profondeur. Voici donc ce qu&#8217;il en ressort officiellement : Les plateformes e-commerce open source sont bien concernées par la loi anti-fraude Que ce soit WooCommerce, Magento, Prestashop,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KBb85wMEo0g" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"maximebj";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:82:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"39";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"L’élection du bureau WPFR 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BC2q8usn6uA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wpfr.net/election-bureau-wpfr-2018/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 15 Jan 2018 11:30:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2041252";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1530:"Comme annoncé lors de l’assemblée générale du 12 décembre 2017, l&#8217;heure des élections a sonné. Le bureau actuellement en place voit son mandat terminé, de nouvelles élections doivent donc avoir lieu afin de le renouveler  Ces élections sont prévues pour le 26 février 2018 et nous invitons les membres l&#8217;association désireux d&#8217;occuper des responsabilités nationales à<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BC2q8usn6uA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wpfr.net/election-bureau-wpfr-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:43:"https://wpfr.net/election-bureau-wpfr-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"PHP Tour Montpellier 2018 : WPFR est partenaire !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i_ty7z2Kg6A/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Jan 2018 10:12:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2035309";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1489:"WPFR est fière d&#8217;être partenaire du PHP Tour Montpellier 2018 qui se tiendra les 17 et 18 mai. Cet évènement porté par l&#8217;AFUP (Association Française des Utilisateurs de PHP) rassemble une sélection d&#8217;orateurs reconnus du monde PHP. Et comme vous le savez, WordPress repose en grande partie sur le langage PHP. Si vous êtes développeurs,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i_ty7z2Kg6A" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wpfr.net/php-tour-montpellier-2018-wpfr-partenaire/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"Le point sur les certifications WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/SbTm014V92I/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wpfr.net/point-certifications-wordpress/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 11 Dec 2017 17:15:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2001761";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1552:"Le sujet des certifications WordPress est de retour en cette fin d&#8217;année pour faire un point de situation. L&#8217;association s&#8217;est penchée dessus et voici les conclusions actuelles. Pour rappel, j&#8217;avais émis l&#8217;idée en 2016 de faire certifier les formations WordPress. D&#8217;autres idées ont ensuite suivi, dont notamment celle d&#8217;inscrire WordPress au Registre National des Certifications<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/SbTm014V92I" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"maximebj";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wpfr.net/point-certifications-wordpress/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"11";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wpfr.net/point-certifications-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:56:"Certification WordPress par WPFR, appel à contributions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 19 Oct 2017 06:46:49 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1931227";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1508:"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:66:"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"Le 30 septembre, c’est le WordPress Translation Day 2017 !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:81:"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 12 Sep 2017 12:03:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:11:"communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:10:"traduction";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1883236";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1488:"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Jb Audras";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:73:"#GEN5, l’évènement numérique du grand-Est où l’on cause WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/POlUtKLV2DI/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wpfr.net/gen5-evenement-numerique-wordpress/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 05 Sep 2017 11:59:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1860285";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1488:"La 5e édition de Grand-Est Numérique ou #GEN5 aura lieu les 21 et 22 septembre 2017 au Centre Foire et Congrès de Metz. Cet évènement réservé aux professionnels du numérique nous propose un programme de conférences, tables rondes et autres ateliers participatifs. Deux sessions autour de WordPress vous seront proposées par votre humble serviteur. WPFR<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/POlUtKLV2DI" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wpfr.net/gen5-evenement-numerique-wordpress/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wpfr.net/gen5-evenement-numerique-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:48:"http://feeds.feedburner.com/WordpressFrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:4:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:20:"wordpressfrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:14:"emailServiceId";a:1:{i:0;a:5:{s:4:"data";s:20:"WordpressFrancophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:18:"feedburnerHostname";a:1:{i:0;a:5:{s:4:"data";s:29:"https://feedburner.google.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"feedFlare";a:9:{i:0;a:5:{s:4:"data";s:24:"Subscribe with NewsGator";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:112:"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://www.newsgator.com/images/ngsub1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:24:"Subscribe with Bloglines";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:77:"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone";s:3:"src";s:48:"http://www.bloglines.com/images/sub_modern11.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"Subscribe with Netvibes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:98:"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:39:"//www.netvibes.com/img/add2netvibes.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:21:"Subscribe with Google";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:93:"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:51:"http://buttons.googlesyndication.com/fusion/add.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:25:"Subscribe with Pageflakes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:101:"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:87:"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:21:"Subscribe with Plusmo";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:86:"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:43:"http://plusmo.com/res/graphics/fbplusmo.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:23:"Subscribe with Live.com";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:81:"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:141:"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:25:"Subscribe with Mon Yahoo!";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:99:"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:60:"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:25:"Subscribe with Excite MIX";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:89:"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://image.excite.co.uk/mix/addtomix.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:11:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"rSUMaFALYdsEt/Zge/Og92F0BII";s:13:"last-modified";s:29:"Tue, 17 Apr 2018 19:22:56 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Tue, 17 Apr 2018 19:45:02 GMT";s:7:"expires";s:29:"Tue, 17 Apr 2018 19:45:02 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:7:"alt-svc";s:122:"hq=":443"; ma=2592000; quic=51303432; quic=51303431; quic=51303339; quic=51303335,quic=":443"; ma=2592000; v="42,41,39,35"";}}s:5:"build";s:14:"20130911040210";}', 'no'),
(434, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1524037502', 'no'),
(435, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1523994302', 'no'),
(436, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1524037502', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(437, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:5:"\n		\n	";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:79:"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Planète WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:17:"https://wpfr.net/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Toute l’actualité de WordPress en français !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:8:{i:0;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:81:"Comment ajouter des messages sur la page d’inscription/connexion de WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/9HkirTqyzMo/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:181:"https://wpmarmite.com/snippet/personnaliser-inscription-connexion-woocommerce/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=personnaliser-inscription-connexion-woocommerce";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 17 Apr 2018 07:38:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:362:"\n		        \nPour personnaliser une peu la page de connexion à votre boutique en ligne WooCommerce, nous allons voir comment afficher un texte informatif au dessus du formulaire de connexion ou d&rsquo;inscription...\nL’article Comment ajouter des messages sur la page d&rsquo;inscription/connexion de WooCommerce est apparu en premier sur WP Marmite.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Marmite";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:797:"<p><img width="640" height="220" src="https://wpmarmite.com/wp-content/uploads/2017/06/woocommerce-snippet.jpg" class="attachment-full size-full wp-post-image" alt="woocommerce snippet" /></p>\n<p>Pour personnaliser une peu la page de connexion à votre boutique en ligne WooCommerce, nous allons voir comment afficher un texte informatif au dessus du formulaire de connexion ou d&rsquo;inscription...</p>\n<p>L’article <a rel="nofollow" href="https://wpmarmite.com/snippet/personnaliser-inscription-connexion-woocommerce/">Comment ajouter des messages sur la page d&rsquo;inscription/connexion de WooCommerce</a> est apparu en premier sur <a rel="nofollow" href="https://wpmarmite.com">WP Marmite</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/9HkirTqyzMo" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:181:"https://wpmarmite.com/snippet/personnaliser-inscription-connexion-woocommerce/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=personnaliser-inscription-connexion-woocommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:93:"Comment importer un contenu oEmbed (tweet, article Facebook, vidéo YouTube) sous WordPress ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/t5ZukUlBY1w/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:126:"https://wpchannel.com/wordpress/tutoriels-wordpress/importer-un-contenu-oembed-tweet-article-facebook-video-youtube-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 Apr 2018 07:00:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:464:"\n		        Embarquer des contenus tiers comme des tweets, des vidéos YouTube ou Vimeo, des posts Facebook ou même des articles issus d&#8217;un autre WordPress est un véritable jeu d&#8217;enfant sous WordPress à condition d&#8217;utiliser correctement les oEmbeds. Ce tutoriel fait suite à la lecture du billet Comment centrer un Tweet sur wordpress paru sur le Siècle Digital qui m&#8217;a paru fort compliqué dans l&#8217;approche. En [&#8230;]		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Channel";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:736:"<div class="post-thumbnail"><img width="450" height="300" src="https://wpchannel.com/images/2018/04/twitter-wordpress-embed-450x300.jpg" class="attachment-large size-large wp-post-image" alt="" /></div>Embarquer des contenus tiers comme des tweets, des vidéos YouTube ou Vimeo, des posts Facebook ou même des articles issus d&#8217;un autre WordPress est un véritable jeu d&#8217;enfant sous WordPress à condition d&#8217;utiliser correctement les oEmbeds. Ce tutoriel fait suite à la lecture du billet Comment centrer un Tweet sur wordpress paru sur le Siècle Digital qui m&#8217;a paru fort compliqué dans l&#8217;approche. En [&#8230;]<img src="http://feeds.feedburner.com/~r/wpfr/~4/t5ZukUlBY1w" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:126:"https://wpchannel.com/wordpress/tutoriels-wordpress/importer-un-contenu-oembed-tweet-article-facebook-video-youtube-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"WordPress vs Wix – Quelle est la meilleure plateforme pour votre projet ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/AOf32FFpTck/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:41:"https://wpformation.com/wordpress-ou-wix/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 Apr 2018 06:35:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:628:"\n		        Choisir une plateforme pour créer votre site web peut être difficile, et beaucoup d’utilisateurs en viennent à comparer WordPress et Wix. L’un comme l’autre sont des solutions populaires et appréciées qui vous permettront de construire un très bon site. Mais alors, quelle est la meilleure solution pour votre projet ? Dans ce guide comparatif entre WordPress [&#8230;]\n\nL’article WordPress vs Wix – Quelle est la meilleure plateforme pour votre projet ? est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WP Formation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1443:"<p><img width="1500" height="562" src="https://wpformation.com/wp-content/uploads/2018/04/WordPress-vs-Wix.jpg" class="attachment-Large size-Large wp-post-image" alt="WordPress-vs-Wix" style="margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px" />Choisir une plateforme pour créer votre site web peut être difficile, et beaucoup d’utilisateurs en viennent à comparer WordPress et Wix. L’un comme l’autre sont des solutions populaires et appréciées qui vous permettront de construire un très bon site. Mais alors, quelle est la meilleure solution pour votre projet ? Dans ce guide comparatif entre WordPress [&#8230;]</p>\n<hr />\nL’article <a rel="nofollow" href="https://wpformation.com/wordpress-ou-wix/">WordPress vs Wix – Quelle est la meilleure plateforme pour votre projet ?</a> est apparu en premier sur <a href="https://wpformation.com/">WPFormation</a>.<br /> <a href="https://wpformation.com/wordpress/">Tutoriels WordPress</a>, <a href="https://wpformation.com/formation-wordpress/">Formation WordPress</a>, <a href="https://wpformation.com/formation-woocommerce-e-commerce/">Woocommerce</a>, <a href="https://wpformation.com/formation-wordpress-pro/">SEO</a>. <a href="https://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src="http://feeds.feedburner.com/~r/wpfr/~4/AOf32FFpTck" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:41:"https://wpformation.com/wordpress-ou-wix/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"Le CNRS lance un nouveau kit Web fait avec WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/bWFWwkEmt2I/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:80:"https://www.wpnormandie.fr/le-cnrs-lance-un-nouveau-kit-web-fait-avec-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 15 Apr 2018 16:37:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:392:"\n		        On le sait WordPress représente 30% des sites web au monde. Cela bon nombre d&#8217;entreprises l&#8217;on compris et fabriquent leur site internet avec cet outil. Ce que l&#8217;on sait moins, c&#8217;est que de grands noms en dehors du monde de l&#8217;entreprise le font de manière à inclure WordPress dans leur stratégie informatique. C&#8217;est le cas [&#8230;]		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:462:"On le sait WordPress représente 30% des sites web au monde. Cela bon nombre d&#8217;entreprises l&#8217;on compris et fabriquent leur site internet avec cet outil. Ce que l&#8217;on sait moins, c&#8217;est que de grands noms en dehors du monde de l&#8217;entreprise le font de manière à inclure WordPress dans leur stratégie informatique. C&#8217;est le cas [&#8230;]<img src="http://feeds.feedburner.com/~r/wpfr/~4/bWFWwkEmt2I" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:80:"https://www.wpnormandie.fr/le-cnrs-lance-un-nouveau-kit-web-fait-avec-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Composer : Make Stable";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"http://feedproxy.google.com/~r/wpfr/~3/PAUiXgcYcBI/composer-make-stable";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"https://blog.beapi.fr/composer-make-stable";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 11 Apr 2018 08:03:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:185:"\n		        Voici un petit script pour rendre stable les versions des dépendances dans composer.\nCet article Composer : Make Stable est apparu en premier sur Be API Tech blog.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4743:"<p>Voici un <a href="https://github.com/BeAPI/composer-make-stable">petit script</a> pour rendre les versions des dépendances dans <a href="https://getcomposer.org/"><strong>composer</strong></a> stables. Vous allez gagner un temps précieux !</p>\n<p><span id="more-560"></span></p>\n<p>Quelques explications avant de se lancer dans le <a href="#la-naissance-d-un-script-composer">vif du sujet</a>.</p>\n<h2>En phase de production</h2>\n<p>Lorsque votre projet est en production, il est recommandé de gérer les versions de WP et plugins de manière figée. Un composer update n&rsquo;aura plus d&rsquo;effet sur les versions des dépendances. Nous allons donc chercher à tout transformer en version stable dans un but de faciliter la maintenance et le suivi des mises à jour.</p>\n<figure id="attachment_522" style="width: 635px" class="wp-caption aligncenter"><a href="https://i2.wp.com/blog.beapi.fr/wp-content/uploads/2018/03/composer-json-prod.png?ssl=1"><img class="wp-image-522 size-full" src="https://i2.wp.com/blog.beapi.fr/wp-content/uploads/2018/03/composer-json-prod.png?resize=635%2C951&#038;ssl=1" alt="composer.json de prod" width="635" height="951" /></a><figcaption class="wp-caption-text">composer.json de prod</figcaption></figure>\n<h2>En phase de développement</h2>\n<p>Lorsque vous utilisez composer pour gérer les dépendances de votre projet durant la phase de développement, les versions sont généralement « dev-master » ou « stable ». Comme ceci, à chaque <em>composer update</em>, vous forcer les mises à jour et êtes à la page. Utile pour détecter rapidement un bug mais également bénéficier de toutes les nouvelles mises à jour.</p>\n<figure id="attachment_521" style="width: 592px" class="wp-caption aligncenter"><a href="https://i0.wp.com/blog.beapi.fr/wp-content/uploads/2018/03/composer-json-dev.png?ssl=1"><img class="wp-image-521 size-full" src="https://i0.wp.com/blog.beapi.fr/wp-content/uploads/2018/03/composer-json-dev.png?resize=592%2C842&#038;ssl=1" alt="composer.json de dev" width="592" height="842" /></a><figcaption class="wp-caption-text">composer.json de dev</figcaption></figure>\n<h2 id="la-naissance-d-un-script-composer">La naissance d&rsquo;un script</h2>\n<p>Durant la R&amp;D de vendredi dernier, <a href="https://twitter.com/TweetPressFr">Julien Maury</a> nous a concocté un petit script ( <a href="https://github.com/BeAPI/composer-make-stable"><em><strong>composer make stable</strong></em></a> ) pour figer les versions dans le composer.json. Ce dernier va transformer les versions du composer.json pour les rendre stable. Pratique pour faire un composer update lors d&rsquo;un audit de mise à jour.<br />\nCeci fonctionne pour toutes les dépendances : thèmes, mu-plugins, plugins et cœur de WordPress.</p>\n<p>Ce script nous a fait gagner énormément de temps ! Et comme il n&rsquo;existait pas encore sur les internets, nous avons jugé intéressant de le <strong>partager avec vous en open source</strong>.</p>\n<h3>1. Ajouter le script à votre projet</h3>\n<p>Il suffit d&rsquo;ajouter le script comme une dépendance de votre projet :</p>\n<div class="code-embed-wrapper"> <pre class="language-php code-embed-pre"><code class="language-php code-embed-code"># Ajouter le repository de les source :\n{ &quot;type&quot;: &quot;vcs&quot;, &quot;url&quot;: &quot;https://github.com/BeAPI/composer-make-stable&quot; }\n# Require en require-dev dans votre composer.json\n&quot;bea/composer/make-stable&quot;: &quot;dev-master&quot; \n# Puis avant usage un :\ncomposer update </code></pre> <div class="code-embed-infos"> </div> </div>\n<h3>2. Utiliser le script</h3>\n<p>Easy as pie !</p>\n<div class="code-embed-wrapper"> <pre class="language-bash code-embed-pre"><code class="language-bash code-embed-code">composer make-stable</code></pre> <div class="code-embed-infos"> </div> </div>\n<h3>3. Le petit plus</h3>\n<p>Pour refaire la manipulation dans l&rsquo;autre sens :</p>\n<blockquote class="wp-embedded-content"><p><a href="https://blog.beapi.fr/composer-freeze-versions">Composer : Freeze Versions</a></p></blockquote>\n<p></p>\n<hr />\n<p><em>Avez-vous facilement réussi à le mètre en place ? Est-il simple d&rsquo;utilisation ? Avez-vous gagné du temps ?</em><br />\n<em>Dites-nous tout dans les commentaires.</em></p>\n<p>Enjoy ! <img src="https://s.w.org/images/core/emoji/2.4/72x72/1f917.png" alt="🤗" class="wp-smiley" style="height: 1em;max-height: 1em" /></p>\n<p>Cet article <a rel="nofollow" href="https://blog.beapi.fr/composer-make-stable">Composer : Make Stable</a> est apparu en premier sur <a rel="nofollow" href="https://blog.beapi.fr">Be API Tech blog</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/PAUiXgcYcBI" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:42:"https://blog.beapi.fr/composer-make-stable";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"Beaver Builder : un constructeur de page au poil ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/hl-l5OEKpdc/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:107:"https://wpmarmite.com/beaver-builder/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=beaver-builder";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 11 Apr 2018 06:35:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:341:"\n		        \n“Un gros rongeur” aux “pattes palmées” avec “une belle fourrure”. Voilà comment le dictionnaire Larousse présente l’objet de notre nouvel article. Ne fermez pas votre navigateur. Vous êtes bien sur...\nL’article Beaver Builder : un constructeur de page au poil ? est apparu en premier sur WP Marmite.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Marmite";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:711:"<p><img width="640" height="220" src="https://wpmarmite.com/wp-content/uploads/2018/04/beaver-builder.jpg" class="attachment-full size-full wp-post-image" alt="" /></p>\n<p>“Un gros rongeur” aux “pattes palmées” avec “une belle fourrure”. Voilà comment le dictionnaire Larousse présente l’objet de notre nouvel article. Ne fermez pas votre navigateur. Vous êtes bien sur...</p>\n<p>L’article <a rel="nofollow" href="https://wpmarmite.com/beaver-builder/">Beaver Builder : un constructeur de page au poil ?</a> est apparu en premier sur <a rel="nofollow" href="https://wpmarmite.com">WP Marmite</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/hl-l5OEKpdc" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:107:"https://wpmarmite.com/beaver-builder/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=beaver-builder";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:53:"Pourquoi développer un thème WordPress sur-mesure ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/khB-RNT1QZI/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:87:"https://wpchannel.com/wordpress/themes-wordpress/developper-theme-wordpress-sur-mesure/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 10 Apr 2018 07:00:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:464:"\n		        Quels sont les avantages apportés par un thème WordPress codé de A à Z alors même que des milliers de thèmes premium sont disponibles au téléchargement ? Au travers d&#8217;une décennie d&#8217;observations comme passionné et professionnel de cette technologie devenue leader, je vous livre mon point de vue sur la réalité du marché des thèmes WordPress. C&#8217;est en 2007 que j&#8217;ai découvert WordPress, à une [&#8230;]		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Channel";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:742:"<div class="post-thumbnail"><img width="659" height="300" src="https://wpchannel.com/images/2018/04/wordpress-theme-professionnel-659x300.jpg" class="attachment-large size-large wp-post-image" alt="" /></div>Quels sont les avantages apportés par un thème WordPress codé de A à Z alors même que des milliers de thèmes premium sont disponibles au téléchargement ? Au travers d&#8217;une décennie d&#8217;observations comme passionné et professionnel de cette technologie devenue leader, je vous livre mon point de vue sur la réalité du marché des thèmes WordPress. C&#8217;est en 2007 que j&#8217;ai découvert WordPress, à une [&#8230;]<img src="http://feeds.feedburner.com/~r/wpfr/~4/khB-RNT1QZI" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:87:"https://wpchannel.com/wordpress/themes-wordpress/developper-theme-wordpress-sur-mesure/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"Pourquoi et comment créer un plugin WordPress ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/_Y5Scdo-WME/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wpformation.com/creer-plugin-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Apr 2018 06:40:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:571:"\n		        Ce n&#8217;est pas faute de le répéter, les plugins sont l&#8217;essence même de WordPress. Il en existe des tonnes, qu&#8217;ils soient premiums, freemiums ou gratuits, si vous utilisez WordPress, vous savez de quoi je parle. Selon la finalité de votre utilisation de ce fabuleux CMS, vous allez un jour vous trouver face à une question [&#8230;]\n\nL’article Pourquoi et comment créer un plugin WordPress ? est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WP Formation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1408:"<p><img width="1200" height="800" src="https://wpformation.com/wp-content/uploads/2018/03/creer-plugin-wordpress.jpg" class="attachment-Large size-Large wp-post-image" alt="Créer un plugin WordPress" style="margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px" />Ce n&#8217;est pas faute de le répéter, les plugins sont l&#8217;essence même de WordPress. Il en existe des tonnes, qu&#8217;ils soient premiums, freemiums ou gratuits, si vous utilisez WordPress, vous savez de quoi je parle. Selon la finalité de votre utilisation de ce fabuleux CMS, vous allez un jour vous trouver face à une question [&#8230;]</p>\n<hr />\nL’article <a rel="nofollow" href="https://wpformation.com/creer-plugin-wordpress/">Pourquoi et comment créer un plugin WordPress ?</a> est apparu en premier sur <a href="https://wpformation.com/">WPFormation</a>.<br /> <a href="https://wpformation.com/wordpress/">Tutoriels WordPress</a>, <a href="https://wpformation.com/formation-wordpress/">Formation WordPress</a>, <a href="https://wpformation.com/formation-woocommerce-e-commerce/">Woocommerce</a>, <a href="https://wpformation.com/formation-wordpress-pro/">SEO</a>. <a href="https://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src="http://feeds.feedburner.com/~r/wpfr/~4/_Y5Scdo-WME" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wpformation.com/creer-plugin-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:32:"http://feeds.feedburner.com/wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:4:"wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:11:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"YQj1RSKZx4ODD5+vmIper85Pn/o";s:13:"last-modified";s:29:"Tue, 17 Apr 2018 19:40:12 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Tue, 17 Apr 2018 19:45:02 GMT";s:7:"expires";s:29:"Tue, 17 Apr 2018 19:45:02 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:7:"alt-svc";s:122:"hq=":443"; ma=2592000; quic=51303432; quic=51303431; quic=51303339; quic=51303335,quic=":443"; ma=2592000; v="42,41,39,35"";}}s:5:"build";s:14:"20130911040210";}', 'no'),
(438, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1524037502', 'no'),
(439, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1523994302', 'no'),
(440, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1524037502', 'no'),
(441, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/\'>Résultats des élections du bureau 2018</a></li></ul></div><div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/9HkirTqyzMo/\'>Comment ajouter des messages sur la page d’inscription/connexion de WooCommerce</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/t5ZukUlBY1w/\'>Comment importer un contenu oEmbed (tweet, article Facebook, vidéo YouTube) sous WordPress ?</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/AOf32FFpTck/\'>WordPress vs Wix – Quelle est la meilleure plateforme pour votre projet ?</a></li></ul></div>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'page-plat_du_jour.php'),
(2, 4, '_edit_last', '1'),
(3, 4, 'field_5ad387000b9b2', 'a:14:{s:3:"key";s:19:"field_5ad387000b9b2";s:5:"label";s:4:"Plat";s:4:"name";s:3:"nom";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(4, 4, 'field_5ad3870a0b9b3', 'a:13:{s:3:"key";s:19:"field_5ad3870a0b9b3";s:5:"label";s:12:"Ingrédients";s:4:"name";s:11:"ingredients";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(5, 4, 'field_5ad3871e0b9b4', 'a:14:{s:3:"key";s:19:"field_5ad3871e0b9b4";s:5:"label";s:4:"Prix";s:4:"name";s:4:"prix";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(6, 4, 'field_5ad387300b9b5', 'a:14:{s:3:"key";s:19:"field_5ad387300b9b5";s:5:"label";s:12:"Type de plat";s:4:"name";s:12:"type_de_plat";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(7, 4, 'field_5ad387400b9b6', 'a:11:{s:3:"key";s:19:"field_5ad387400b9b6";s:5:"label";s:5:"Photo";s:4:"name";s:5:"photo";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(9, 4, 'position', 'normal'),
(10, 4, 'layout', 'no_box'),
(11, 4, 'hide_on_screen', 'a:2:{i:0;s:11:"the_content";i:1;s:8:"comments";}'),
(12, 4, '_edit_lock', '1523977058:1'),
(14, 5, '_edit_last', '1'),
(15, 5, 'field_5ad3881bd954a', 'a:14:{s:3:"key";s:19:"field_5ad3881bd954a";s:5:"label";s:4:"Plat";s:4:"name";s:12:"plat_du_jour";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(16, 5, 'field_5ad38825d954b', 'a:13:{s:3:"key";s:19:"field_5ad38825d954b";s:5:"label";s:12:"Ingrédients";s:4:"name";s:24:"ingredients_plat_du_jour";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(17, 5, 'field_5ad3884bd954c', 'a:14:{s:3:"key";s:19:"field_5ad3884bd954c";s:5:"label";s:4:"Prix";s:4:"name";s:17:"prix_plat_du_jour";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(18, 5, 'field_5ad3885ed954d', 'a:14:{s:3:"key";s:19:"field_5ad3885ed954d";s:5:"label";s:12:"Type de plat";s:4:"name";s:20:"type_de_plat_du_jour";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(19, 5, 'field_5ad3886ed954e', 'a:11:{s:3:"key";s:19:"field_5ad3886ed954e";s:5:"label";s:5:"Image";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(21, 5, 'position', 'normal'),
(22, 5, 'layout', 'no_box'),
(23, 5, 'hide_on_screen', ''),
(24, 5, '_edit_lock', '1523813662:1'),
(25, 7, '_edit_last', '1'),
(26, 7, '_edit_lock', '1523953767:1'),
(27, 8, '_wp_attached_file', '2018/04/aiolimarseillais3.jpg'),
(28, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:327;s:6:"height";i:400;s:4:"file";s:29:"2018/04/aiolimarseillais3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"aiolimarseillais3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"aiolimarseillais3-245x300.jpg";s:5:"width";i:245;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(29, 7, 'nom', 'Anchoïade provençale'),
(30, 7, '_nom', 'field_5ad387000b9b2'),
(31, 7, 'ingredients', 'Tranches de pain de mie\r\nAnchois à l’huile et au sel\r\nVinaigre, ail huile d\'olive'),
(32, 7, '_ingredients', 'field_5ad3870a0b9b3'),
(33, 7, 'prix', '18 €'),
(34, 7, '_prix', 'field_5ad3871e0b9b4'),
(35, 7, 'type_de_plat', 'Entrée'),
(36, 7, '_type_de_plat', 'field_5ad387300b9b5'),
(37, 7, 'photo', '98'),
(38, 7, '_photo', 'field_5ad387400b9b6'),
(39, 9, '_menu_item_type', 'custom'),
(40, 9, '_menu_item_menu_item_parent', '0'),
(41, 9, '_menu_item_object_id', '9'),
(42, 9, '_menu_item_object', 'custom'),
(43, 9, '_menu_item_target', ''),
(44, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(45, 9, '_menu_item_xfn', ''),
(46, 9, '_menu_item_url', 'http://localhost/'),
(47, 9, '_menu_item_orphaned', '1523812937'),
(48, 10, '_menu_item_type', 'post_type'),
(49, 10, '_menu_item_menu_item_parent', '0'),
(50, 10, '_menu_item_object_id', '2'),
(51, 10, '_menu_item_object', 'page'),
(52, 10, '_menu_item_target', ''),
(53, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(54, 10, '_menu_item_xfn', ''),
(55, 10, '_menu_item_url', ''),
(56, 10, '_menu_item_orphaned', '1523812938'),
(57, 11, '_menu_item_type', 'custom'),
(58, 11, '_menu_item_menu_item_parent', '0'),
(59, 11, '_menu_item_object_id', '11'),
(60, 11, '_menu_item_object', 'custom'),
(61, 11, '_menu_item_target', ''),
(62, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 11, '_menu_item_xfn', ''),
(64, 11, '_menu_item_url', 'http://localhost/'),
(65, 11, '_menu_item_orphaned', '1523812969'),
(66, 12, '_menu_item_type', 'post_type'),
(67, 12, '_menu_item_menu_item_parent', '0'),
(68, 12, '_menu_item_object_id', '2'),
(69, 12, '_menu_item_object', 'page'),
(70, 12, '_menu_item_target', ''),
(71, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(72, 12, '_menu_item_xfn', ''),
(73, 12, '_menu_item_url', ''),
(74, 12, '_menu_item_orphaned', '1523812970'),
(75, 13, '_form', '<label> Votre nom et prenom (obligatoire)\n    [text* your-name] </label>\n\n<label> Numéro de telephone (obligatoire)\n[tel* Numerodetelephone] </label>\n\n<label> Détails de la réservation (obligatoire)\n    [textarea your-message] </label>\n\n[submit "Envoyer"]'),
(76, 13, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:35:"Restaurant du port "[your-subject]"";s:6:"sender";s:36:"[your-name] <amandamcossu@gmail.com>";s:9:"recipient";s:22:"amandamcossu@gmail.com";s:4:"body";s:194:"De : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de Restaurant du port (http://localhost)";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(77, 13, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:35:"Restaurant du port "[your-subject]"";s:6:"sender";s:43:"Restaurant du port <amandamcossu@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:136:"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de Restaurant du port (http://localhost)";s:18:"additional_headers";s:32:"Reply-To: amandamcossu@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(78, 13, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Merci pour votre message. Il a été envoyé.";s:12:"mail_sent_ng";s:102:"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.";s:16:"validation_error";s:88:"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.";s:4:"spam";s:102:"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.";s:12:"accept_terms";s:77:"Vous devez accepter les termes et conditions avant d’envoyer votre message.";s:16:"invalid_required";s:25:"Ce champ est obligatoire.";s:16:"invalid_too_long";s:23:"Le champ est trop long.";s:17:"invalid_too_short";s:24:"Le champ est trop court.";s:12:"invalid_date";s:32:"Le format de date est incorrect.";s:14:"date_too_early";s:47:"La date précède la première date autorisée.";s:13:"date_too_late";s:57:"La date est postérieure à la dernière date autorisée.";s:13:"upload_failed";s:72:"Une erreur inconnue s’est produite lors du téléversement du fichier.";s:24:"upload_file_type_invalid";s:79:"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.";s:21:"upload_file_too_large";s:31:"Le fichier est trop volumineux.";s:23:"upload_failed_php_error";s:63:"Une erreur s’est produite lors du téléversement du fichier.";s:14:"invalid_number";s:33:"Le format du nombre est invalide.";s:16:"number_too_small";s:50:"Le nombre est plus petit que le minimum autorisé.";s:16:"number_too_large";s:50:"Le nombre est plus grand que le maximum autorisé.";s:23:"quiz_answer_not_correct";s:42:"La réponse à la question est incorrecte.";s:17:"captcha_not_match";s:29:"Le code entré est incorrect.";s:13:"invalid_email";s:38:"L’adresse e-mail n’est pas valide.";s:11:"invalid_url";s:27:"L’URL n’est pas valide.";s:11:"invalid_tel";s:45:"Le numéro de téléphone n’est pas valide.";}'),
(79, 13, '_additional_settings', ''),
(80, 13, '_locale', 'fr_FR'),
(81, 14, '_edit_last', '1'),
(82, 14, '_edit_lock', '1523953751:1'),
(83, 15, '_wp_attached_file', '2018/04/poutarge3.jpg'),
(84, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:599;s:6:"height";i:400;s:4:"file";s:21:"2018/04/poutarge3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"poutarge3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"poutarge3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(85, 14, 'nom', 'Toasts de pain à la Poutargue'),
(86, 14, '_nom', 'field_5ad387000b9b2'),
(87, 14, 'ingredients', 'Tranches de baguette \r\nBeurre\r\nPoutargue'),
(88, 14, '_ingredients', 'field_5ad3870a0b9b3'),
(89, 14, 'prix', '7 €'),
(90, 14, '_prix', 'field_5ad3871e0b9b4'),
(91, 14, 'type_de_plat', 'Entrée'),
(92, 14, '_type_de_plat', 'field_5ad387300b9b5'),
(93, 14, 'photo', '97'),
(94, 14, '_photo', 'field_5ad387400b9b6'),
(96, 16, '_edit_last', '1'),
(97, 16, '_wp_page_template', 'default'),
(98, 16, '_edit_lock', '1523948332:1'),
(99, 18, '_menu_item_type', 'custom'),
(100, 18, '_menu_item_menu_item_parent', '0'),
(101, 18, '_menu_item_object_id', '18'),
(102, 18, '_menu_item_object', 'custom'),
(103, 18, '_menu_item_target', ''),
(104, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(105, 18, '_menu_item_xfn', ''),
(106, 18, '_menu_item_url', 'http://localhost/'),
(107, 18, '_menu_item_orphaned', '1523813496'),
(108, 19, '_menu_item_type', 'post_type'),
(109, 19, '_menu_item_menu_item_parent', '0'),
(110, 19, '_menu_item_object_id', '2'),
(111, 19, '_menu_item_object', 'page'),
(112, 19, '_menu_item_target', ''),
(113, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(114, 19, '_menu_item_xfn', ''),
(115, 19, '_menu_item_url', ''),
(116, 19, '_menu_item_orphaned', '1523813497'),
(117, 20, '_menu_item_type', 'post_type'),
(118, 20, '_menu_item_menu_item_parent', '0'),
(119, 20, '_menu_item_object_id', '16'),
(120, 20, '_menu_item_object', 'page'),
(121, 20, '_menu_item_target', ''),
(122, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(123, 20, '_menu_item_xfn', ''),
(124, 20, '_menu_item_url', ''),
(125, 20, '_menu_item_orphaned', '1523813497'),
(126, 21, '_menu_item_type', 'post_type'),
(127, 21, '_menu_item_menu_item_parent', '0'),
(128, 21, '_menu_item_object_id', '16'),
(129, 21, '_menu_item_object', 'page'),
(130, 21, '_menu_item_target', ''),
(131, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(132, 21, '_menu_item_xfn', ''),
(133, 21, '_menu_item_url', ''),
(134, 21, '_menu_item_orphaned', '1523813501'),
(135, 22, '_menu_item_type', 'custom'),
(136, 22, '_menu_item_menu_item_parent', '0'),
(137, 22, '_menu_item_object_id', '22'),
(138, 22, '_menu_item_object', 'custom'),
(139, 22, '_menu_item_target', ''),
(140, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(141, 22, '_menu_item_xfn', ''),
(142, 22, '_menu_item_url', 'http://localhost/'),
(143, 22, '_menu_item_orphaned', '1523813575'),
(144, 23, '_menu_item_type', 'post_type'),
(145, 23, '_menu_item_menu_item_parent', '0'),
(146, 23, '_menu_item_object_id', '2'),
(147, 23, '_menu_item_object', 'page'),
(148, 23, '_menu_item_target', ''),
(149, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(150, 23, '_menu_item_xfn', ''),
(151, 23, '_menu_item_url', ''),
(152, 23, '_menu_item_orphaned', '1523813576'),
(153, 24, '_menu_item_type', 'post_type'),
(154, 24, '_menu_item_menu_item_parent', '0'),
(155, 24, '_menu_item_object_id', '16'),
(156, 24, '_menu_item_object', 'page'),
(157, 24, '_menu_item_target', ''),
(158, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(159, 24, '_menu_item_xfn', ''),
(160, 24, '_menu_item_url', ''),
(171, 26, '_wp_trash_meta_status', 'publish'),
(172, 26, '_wp_trash_meta_time', '1523813625'),
(173, 27, '_wp_trash_meta_status', 'publish'),
(174, 27, '_wp_trash_meta_time', '1523813658'),
(175, 28, '_wp_trash_meta_status', 'publish'),
(176, 28, '_wp_trash_meta_time', '1523813676'),
(177, 29, '_wp_trash_meta_status', 'publish'),
(178, 29, '_wp_trash_meta_time', '1523813703'),
(179, 30, '_edit_lock', '1523813716:1'),
(180, 30, '_wp_trash_meta_status', 'publish'),
(181, 30, '_wp_trash_meta_time', '1523813725'),
(182, 2, '_edit_lock', '1523818395:1'),
(183, 2, '_edit_last', '1'),
(184, 5, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:12:"plat_du_jour";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(185, 34, '_edit_last', '1'),
(186, 34, '_edit_lock', '1523864556:1'),
(187, 34, 'plat_du_jour', 'Grand Aïoli marseillais'),
(188, 34, '_plat_du_jour', 'field_5ad3881bd954a'),
(189, 34, 'ingredients_plat_du_jour', 'Morue \r\nBulots \r\nSupions \r\nOeufs \r\nHaricots verts frais \r\nCarottes nouvelles \r\nPommes de terre \r\nChou-fleur \r\nCourgettes \r\nFenouil \r\nBetteraves \r\nHuile d\'olive, sel, poivre\r\nSauce aïoli '),
(190, 34, '_ingredients_plat_du_jour', 'field_5ad38825d954b'),
(191, 34, 'prix_plat_du_jour', '35 €'),
(192, 34, '_prix_plat_du_jour', 'field_5ad3884bd954c'),
(193, 34, 'type_de_plat_du_jour', 'Plat principal'),
(194, 34, '_type_de_plat_du_jour', 'field_5ad3885ed954d'),
(195, 34, 'image', '8'),
(196, 34, '_image', 'field_5ad3886ed954e'),
(197, 35, '_wp_attached_file', '2018/04/anchoiade3.jpg'),
(198, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:533;s:6:"height";i:400;s:4:"file";s:22:"2018/04/anchoiade3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"anchoiade3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"anchoiade3-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(199, 2, '_wp_trash_meta_status', 'publish'),
(200, 2, '_wp_trash_meta_time', '1523818545'),
(201, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(202, 1, '_edit_lock', '1523818451:1'),
(203, 1, '_wp_trash_meta_status', 'publish'),
(204, 1, '_wp_trash_meta_time', '1523818607'),
(205, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(206, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(207, 40, '_edit_last', '1'),
(208, 40, '_edit_lock', '1523870608:1'),
(217, 34, '_wp_trash_meta_status', 'publish'),
(218, 34, '_wp_trash_meta_time', '1523864704'),
(219, 34, '_wp_desired_post_slug', 'grand-aioli-marseillais'),
(224, 52, '_wp_trash_meta_status', 'publish'),
(225, 52, '_wp_trash_meta_time', '1523868236'),
(226, 53, '_wp_trash_meta_status', 'publish'),
(227, 53, '_wp_trash_meta_time', '1523868401'),
(228, 54, '_wp_trash_meta_status', 'publish'),
(229, 54, '_wp_trash_meta_time', '1523868423'),
(230, 55, '_wp_trash_meta_status', 'publish'),
(231, 55, '_wp_trash_meta_time', '1523868622'),
(232, 56, '_wp_trash_meta_status', 'publish'),
(233, 56, '_wp_trash_meta_time', '1523868628'),
(234, 57, '_wp_trash_meta_status', 'publish'),
(235, 57, '_wp_trash_meta_time', '1523868638'),
(236, 58, '_wp_trash_meta_status', 'publish'),
(237, 58, '_wp_trash_meta_time', '1523869222'),
(238, 59, '_edit_last', '1'),
(239, 59, '_edit_lock', '1523869780:1'),
(240, 59, '_wp_page_template', 'page-plat_du_jour.php'),
(241, 63, '_edit_last', '1'),
(243, 63, 'field_5ad466ed3594f', 'a:14:{s:3:"key";s:19:"field_5ad466ed3594f";s:5:"label";s:4:"Plat";s:4:"name";s:12:"plat_du_jour";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(245, 63, 'position', 'normal'),
(246, 63, 'layout', 'no_box'),
(247, 63, 'hide_on_screen', 'a:1:{i:0;s:13:"custom_fields";}'),
(248, 63, '_edit_lock', '1523966175:1'),
(249, 63, 'field_5ad4674bb3d2b', 'a:13:{s:3:"key";s:19:"field_5ad4674bb3d2b";s:5:"label";s:12:"Ingrédients";s:4:"name";s:24:"ingredients_plat_du_jour";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(250, 63, 'field_5ad46761b3d2c', 'a:14:{s:3:"key";s:19:"field_5ad46761b3d2c";s:5:"label";s:4:"Prix";s:4:"name";s:17:"prix_plat_du_jour";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(251, 63, 'field_5ad4676db3d2d', 'a:11:{s:3:"key";s:19:"field_5ad4676db3d2d";s:5:"label";s:5:"image";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(252, 63, 'field_5ad46779b3d2e', 'a:14:{s:3:"key";s:19:"field_5ad46779b3d2e";s:5:"label";s:12:"Type de plat";s:4:"name";s:20:"type_de_plat_du_jour";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(256, 66, '_edit_last', '1'),
(257, 66, 'notre_restaurant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac consectetur enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer felis tellus, finibus a felis quis, ornare lobortis nisi. Aenean vel lectus ut enim malesuada maximus. Nulla laoreet leo et dapibus congue. Aenean facilisis turpis nibh, eu laoreet est aliquam finibus. Morbi in facilisis arcu.'),
(258, 66, '_notre_restaurant', 'field_5ad466de3594e'),
(259, 66, 'plat_du_jour', 'Anchoiade'),
(260, 66, '_plat_du_jour', 'field_5ad466ed3594f'),
(261, 66, 'ingredients_plat_du_jour', ''),
(262, 66, '_ingredients_plat_du_jour', 'field_5ad4674bb3d2b'),
(263, 66, 'prix_plat_du_jour', ''),
(264, 66, '_prix_plat_du_jour', 'field_5ad46761b3d2c'),
(265, 66, 'image', '8'),
(266, 66, '_image', 'field_5ad4676db3d2d'),
(267, 66, 'type_de_plat_du_jour', 'fdf'),
(268, 66, '_type_de_plat_du_jour', 'field_5ad46779b3d2e'),
(269, 66, 'date', '0416'),
(270, 66, '_date', 'field_5ad4678cb3d2f'),
(271, 66, '_edit_lock', '1523870669:1'),
(272, 59, '_wp_trash_meta_status', 'publish'),
(273, 59, '_wp_trash_meta_time', '1523869927'),
(274, 59, '_wp_desired_post_slug', 'notre-restaurant'),
(275, 67, '_edit_last', '1'),
(276, 67, '_wp_page_template', 'fullwidth.php'),
(277, 67, '_edit_lock', '1523880076:1'),
(279, 66, '_wp_trash_meta_status', 'publish'),
(280, 66, '_wp_trash_meta_time', '1523870816'),
(281, 66, '_wp_desired_post_slug', '66'),
(291, 72, '_edit_last', '1'),
(292, 72, 'notre_restaurant', 'TEETTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT\r\n'),
(293, 72, '_notre_restaurant', 'field_5ad466de3594e'),
(294, 72, 'plat_du_jour', 'TTTTTTTTTTTTTTTTT'),
(295, 72, '_plat_du_jour', 'field_5ad466ed3594f'),
(296, 72, 'ingredients_plat_du_jour', 'TTTTTTTTTTTTTTTTTTTTTTTTTTT'),
(297, 72, '_ingredients_plat_du_jour', 'field_5ad4674bb3d2b'),
(298, 72, 'prix_plat_du_jour', 'TTTTTTTTTTT'),
(299, 72, '_prix_plat_du_jour', 'field_5ad46761b3d2c'),
(300, 72, 'image', ''),
(301, 72, '_image', 'field_5ad4676db3d2d'),
(302, 72, 'type_de_plat_du_jour', 'TTTTTTTTTT'),
(303, 72, '_type_de_plat_du_jour', 'field_5ad46779b3d2e'),
(304, 72, 'date', '0416'),
(305, 72, '_date', 'field_5ad4678cb3d2f'),
(306, 72, '_edit_lock', '1523871021:1'),
(307, 40, '_wp_trash_meta_status', 'publish'),
(308, 40, '_wp_trash_meta_time', '1523870991'),
(309, 40, '_wp_desired_post_slug', 'plat-du-jour'),
(311, 74, '_edit_last', '1'),
(312, 74, '_wp_page_template', 'default'),
(313, 75, 'notre_restaurant', 'NBBBBBBBBBB'),
(314, 75, '_notre_restaurant', 'field_5ad466de3594e'),
(315, 75, 'plat_du_jour', 'NBBBBBBBB'),
(316, 75, '_plat_du_jour', 'field_5ad466ed3594f'),
(317, 75, 'ingredients_plat_du_jour', 'NBBBBBBBBBB'),
(318, 75, '_ingredients_plat_du_jour', 'field_5ad4674bb3d2b'),
(319, 75, 'prix_plat_du_jour', ''),
(320, 75, '_prix_plat_du_jour', 'field_5ad46761b3d2c'),
(321, 75, 'image', ''),
(322, 75, '_image', 'field_5ad4676db3d2d'),
(323, 75, 'type_de_plat_du_jour', ''),
(324, 75, '_type_de_plat_du_jour', 'field_5ad46779b3d2e'),
(325, 75, 'date', ''),
(326, 75, '_date', 'field_5ad4678cb3d2f'),
(327, 74, 'notre_restaurant', 'NBBBBBBBBBB'),
(328, 74, '_notre_restaurant', 'field_5ad466de3594e'),
(329, 74, 'plat_du_jour', 'NBBBBBBBB'),
(330, 74, '_plat_du_jour', 'field_5ad466ed3594f'),
(331, 74, 'ingredients_plat_du_jour', 'NBBBBBBBBBB'),
(332, 74, '_ingredients_plat_du_jour', 'field_5ad4674bb3d2b'),
(333, 74, 'prix_plat_du_jour', ''),
(334, 74, '_prix_plat_du_jour', 'field_5ad46761b3d2c'),
(335, 74, 'image', ''),
(336, 74, '_image', 'field_5ad4676db3d2d'),
(337, 74, 'type_de_plat_du_jour', ''),
(338, 74, '_type_de_plat_du_jour', 'field_5ad46779b3d2e'),
(339, 74, 'date', ''),
(340, 74, '_date', 'field_5ad4678cb3d2f'),
(341, 74, '_edit_lock', '1523870947:1'),
(342, 74, '_wp_trash_meta_status', 'publish'),
(343, 74, '_wp_trash_meta_time', '1523871176'),
(344, 74, '_wp_desired_post_slug', '74-2'),
(345, 76, 'notre_restaurant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac consectetur enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer felis tellus, finibus a felis quis, ornare lobortis nisi. Aenean vel lectus ut enim malesuada maximus. Nulla laoreet leo et dapibus congue. Aenean facilisis turpis nibh, eu laoreet est aliquam finibus. Morbi in facilisis arcu.\r\n\r\nInteger consequat cursus enim, nec vestibulum libero accumsan ac. Quisque et gravida enim. Sed id sapien est. Etiam ornare convallis tellus, mattis facilisis dui eleifend varius. Cras placerat lectus vel mi pharetra, vel sagittis metus convallis. Nullam ultricies hendrerit erat, sit amet gravida lectus maximus vitae. Duis venenatis pellentesque nibh ornare dapibus. Donec nulla sem, lobortis sit amet pellentesque vitae, faucibus at erat. Aliquam erat volutpat. Fusce sed dignissim nisi. Fusce non ornare eros, ut cursus enim. Quisque sollicitudin vestibulum nibh, imperdiet eleifend diam fringilla nec.'),
(346, 76, '_notre_restaurant', 'field_5ad466de3594e'),
(347, 76, 'plat_du_jour', ''),
(348, 76, '_plat_du_jour', 'field_5ad466ed3594f'),
(349, 76, 'ingredients_plat_du_jour', ''),
(350, 76, '_ingredients_plat_du_jour', 'field_5ad4674bb3d2b'),
(351, 76, 'prix_plat_du_jour', ''),
(352, 76, '_prix_plat_du_jour', 'field_5ad46761b3d2c'),
(353, 76, 'image', '8'),
(354, 76, '_image', 'field_5ad4676db3d2d'),
(355, 76, 'type_de_plat_du_jour', ''),
(356, 76, '_type_de_plat_du_jour', 'field_5ad46779b3d2e'),
(357, 76, 'date', ''),
(358, 76, '_date', 'field_5ad4678cb3d2f'),
(359, 67, 'notre_restaurant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac consectetur enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer felis tellus, finibus a felis quis, ornare lobortis nisi. Aenean vel lectus ut enim malesuada maximus. Nulla laoreet leo et dapibus congue. Aenean facilisis turpis nibh, eu laoreet est aliquam finibus. Morbi in facilisis arcu.\r\n\r\nInteger consequat cursus enim, nec vestibulum libero accumsan ac. Quisque et gravida enim. Sed id sapien est. Etiam ornare convallis tellus, mattis facilisis dui eleifend varius. Cras placerat lectus vel mi pharetra, vel sagittis metus convallis. Nullam ultricies hendrerit erat, sit amet gravida lectus maximus vitae. Duis venenatis pellentesque nibh ornare dapibus. Donec nulla sem, lobortis sit amet pellentesque vitae, faucibus at erat. Aliquam erat volutpat. Fusce sed dignissim nisi. Fusce non ornare eros, ut cursus enim. Quisque sollicitudin vestibulum nibh, imperdiet eleifend diam fringilla nec.'),
(360, 67, '_notre_restaurant', 'field_5ad466de3594e'),
(361, 67, 'plat_du_jour', ''),
(362, 67, '_plat_du_jour', 'field_5ad466ed3594f'),
(363, 67, 'ingredients_plat_du_jour', ''),
(364, 67, '_ingredients_plat_du_jour', 'field_5ad4674bb3d2b'),
(365, 67, 'prix_plat_du_jour', ''),
(366, 67, '_prix_plat_du_jour', 'field_5ad46761b3d2c'),
(367, 67, 'image', '8'),
(368, 67, '_image', 'field_5ad4676db3d2d'),
(369, 67, 'type_de_plat_du_jour', ''),
(370, 67, '_type_de_plat_du_jour', 'field_5ad46779b3d2e'),
(371, 67, 'date', ''),
(372, 67, '_date', 'field_5ad4678cb3d2f'),
(373, 72, '_wp_trash_meta_status', 'publish'),
(374, 72, '_wp_trash_meta_time', '1523871405'),
(375, 72, '_wp_desired_post_slug', '72'),
(376, 5, '_wp_trash_meta_status', 'publish'),
(377, 5, '_wp_trash_meta_time', '1523871613'),
(378, 5, '_wp_desired_post_slug', 'acf_plat-du-jour'),
(379, 77, '_wp_trash_meta_status', 'publish'),
(380, 77, '_wp_trash_meta_time', '1523871905'),
(382, 78, '_edit_last', '1'),
(383, 78, 'notre_restaurant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac consectetur enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer felis tellus, finibus a felis quis, ornare lobortis nisi. Aenean vel lectus ut enim malesuada maximus. Nulla laoreet leo et dapibus congue. Aenean facilisis turpis nibh, eu laoreet est aliquam finibus. Morbi in facilisis arcu.\r\n\r\nInteger consequat cursus enim, nec vestibulum libero accumsan ac. Quisque et gravida enim. Sed id sapien est. Etiam ornare convallis tellus, mattis facilisis dui eleifend varius. Cras placerat lectus vel mi pharetra, vel sagittis metus convallis. Nullam ultricies hendrerit erat, sit amet gravida lectus maximus vitae. Duis venenatis pellentesque nibh ornare dapibus. Donec nulla sem, lobortis sit amet pellentesque vitae, faucibus at erat. Aliquam erat volutpat. Fusce sed dignissim nisi. Fusce non ornare eros, ut cursus enim. Quisque sollicitudin vestibulum nibh, imperdiet eleifend diam fringilla nec. '),
(384, 78, '_notre_restaurant', 'field_5ad466de3594e'),
(385, 78, 'plat_du_jour', 'Grand aioli marseillais'),
(386, 78, '_plat_du_jour', 'field_5ad466ed3594f'),
(387, 78, 'ingredients_plat_du_jour', ''),
(388, 78, '_ingredients_plat_du_jour', 'field_5ad4674bb3d2b'),
(389, 78, 'prix_plat_du_jour', '18 €'),
(390, 78, '_prix_plat_du_jour', 'field_5ad46761b3d2c'),
(391, 78, 'image', '108'),
(392, 78, '_image', 'field_5ad4676db3d2d'),
(393, 78, 'type_de_plat_du_jour', 'Plat principal'),
(394, 78, '_type_de_plat_du_jour', 'field_5ad46779b3d2e'),
(395, 78, 'date', '0416'),
(396, 78, '_date', 'field_5ad4678cb3d2f'),
(397, 78, '_edit_lock', '1523950974:1'),
(400, 82, '_edit_lock', '1523878967:1'),
(401, 82, '_customize_restore_dismissed', '1'),
(402, 83, '_wp_trash_meta_status', 'publish'),
(403, 83, '_wp_trash_meta_time', '1523878997'),
(404, 84, '_wp_trash_meta_status', 'publish'),
(405, 84, '_wp_trash_meta_time', '1523879121'),
(406, 85, '_wp_trash_meta_status', 'publish'),
(407, 85, '_wp_trash_meta_time', '1523879178'),
(410, 87, '_edit_last', '1'),
(411, 87, '_edit_lock', '1523976802:1'),
(412, 87, 'plat_du_jour', 'Grand aïoli marseillais '),
(413, 87, '_plat_du_jour', 'field_5ad466ed3594f'),
(414, 87, 'ingredients_plat_du_jour', 'Morue \r\nBulots \r\nSupions \r\nOeufs \r\nHaricots verts frais \r\nCarottes nouvelles \r\nPommes de terre \r\nChou-fleur \r\nCourgettes \r\nFenouil \r\nBetteraves \r\nHuile d\'olive, sel et poivre\r\nSauce aïoli '),
(415, 87, '_ingredients_plat_du_jour', 'field_5ad4674bb3d2b'),
(416, 87, 'prix_plat_du_jour', '27 €'),
(417, 87, '_prix_plat_du_jour', 'field_5ad46761b3d2c'),
(418, 87, 'type_de_plat_du_jour', 'Plat principal'),
(419, 87, '_type_de_plat_du_jour', 'field_5ad46779b3d2e'),
(420, 87, 'date', '0416'),
(421, 87, '_date', 'field_5ad4678cb3d2f'),
(422, 87, 'image', '110'),
(423, 87, '_image', 'field_5ad4676db3d2d'),
(424, 67, '_wp_trash_meta_status', 'publish'),
(425, 67, '_wp_trash_meta_time', '1523880266'),
(426, 67, '_wp_desired_post_slug', 'notre-restaurant'),
(427, 88, '_menu_item_type', 'custom'),
(428, 88, '_menu_item_menu_item_parent', '0'),
(429, 88, '_menu_item_object_id', '88'),
(430, 88, '_menu_item_object', 'custom'),
(431, 88, '_menu_item_target', ''),
(432, 88, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(433, 88, '_menu_item_xfn', ''),
(434, 88, '_menu_item_url', 'http://localhost/plat_du_jour/'),
(435, 88, '_menu_item_orphaned', '1523880327'),
(436, 90, '_edit_last', '1'),
(437, 90, '_edit_lock', '1523976744:1'),
(438, 91, '_wp_attached_file', '2018/04/chichis-fregi3.jpg'),
(439, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:727;s:6:"height";i:400;s:4:"file";s:26:"2018/04/chichis-fregi3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"chichis-fregi3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"chichis-fregi3-300x165.jpg";s:5:"width";i:300;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(440, 90, 'nom', 'Chichi fregi '),
(441, 90, '_nom', 'field_5ad387000b9b2'),
(442, 90, 'ingredients', 'Farine\r\nLevure de boulanger\r\nSel, sucre, huile d’olive et de l’eau de fleur d’oranger'),
(443, 90, '_ingredients', 'field_5ad3870a0b9b3'),
(444, 90, 'prix', '7 €'),
(445, 90, '_prix', 'field_5ad3871e0b9b4'),
(446, 90, 'type_de_plat', 'Dessert'),
(447, 90, '_type_de_plat', 'field_5ad387300b9b5'),
(448, 90, 'photo', '96'),
(449, 90, '_photo', 'field_5ad387400b9b6'),
(450, 90, 'date', ''),
(451, 90, '_date', 'field_5ad45194f6ef4'),
(452, 93, '_wp_attached_file', '2018/04/bouilabaise2.jpg'),
(453, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:273;s:4:"file";s:24:"2018/04/bouilabaise2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"bouilabaise2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"bouilabaise2-300x164.jpg";s:5:"width";i:300;s:6:"height";i:164;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(454, 92, '_edit_last', '1'),
(455, 92, 'nom', 'Bouillabaisse'),
(456, 92, '_nom', 'field_5ad387000b9b2'),
(457, 92, 'ingredients', 'Lotte\r\nRascasses \r\nCongre \r\nSaint-pierre \r\nLangoustines\r\nTomates\r\nOignons\r\nPoireaux\r\nFenouils\r\nAil, piment, huile d’olive et poivre'),
(458, 92, '_ingredients', 'field_5ad3870a0b9b3'),
(459, 92, 'prix', '27 €'),
(460, 92, '_prix', 'field_5ad3871e0b9b4'),
(461, 92, 'type_de_plat', 'Plat principal'),
(462, 92, '_type_de_plat', 'field_5ad387300b9b5'),
(463, 92, 'photo', '99'),
(464, 92, '_photo', 'field_5ad387400b9b6'),
(465, 92, 'date', ''),
(466, 92, '_date', 'field_5ad45194f6ef4'),
(467, 92, '_edit_lock', '1523995785:1'),
(468, 94, '_wp_attached_file', '2018/04/chichis-fregi3-1.jpg'),
(469, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:727;s:6:"height";i:400;s:4:"file";s:28:"2018/04/chichis-fregi3-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"chichis-fregi3-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"chichis-fregi3-1-300x165.jpg";s:5:"width";i:300;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(470, 95, '_wp_attached_file', '2018/04/aiolimarseillais2.jpg'),
(471, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:400;s:4:"file";s:29:"2018/04/aiolimarseillais2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"aiolimarseillais2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"aiolimarseillais2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(472, 7, 'date', ''),
(473, 7, '_date', 'field_5ad45194f6ef4'),
(474, 96, '_wp_attached_file', '2018/04/chichis-fregi_.jpg'),
(475, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:400;s:4:"file";s:26:"2018/04/chichis-fregi_.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"chichis-fregi_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"chichis-fregi_-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(476, 97, '_wp_attached_file', '2018/04/poutarge_.jpg'),
(477, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:400;s:4:"file";s:21:"2018/04/poutarge_.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"poutarge_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"poutarge_-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(478, 14, 'date', ''),
(479, 14, '_date', 'field_5ad45194f6ef4'),
(480, 98, '_wp_attached_file', '2018/04/anchoiade_.jpg'),
(481, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:400;s:4:"file";s:22:"2018/04/anchoiade_.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"anchoiade_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"anchoiade_-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(482, 99, '_wp_attached_file', '2018/04/bouilabaise_.jpg'),
(483, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:400;s:4:"file";s:24:"2018/04/bouilabaise_.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"bouilabaise_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"bouilabaise_-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(484, 102, '_edit_last', '1'),
(485, 102, '_wp_page_template', 'page-plat_du_jour.php'),
(486, 102, '_edit_lock', '1523966078:1'),
(506, 78, '_wp_old_slug', '78'),
(507, 108, '_wp_attached_file', '2018/04/aiolimarseillais3-1.jpg'),
(508, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:327;s:6:"height";i:400;s:4:"file";s:31:"2018/04/aiolimarseillais3-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"aiolimarseillais3-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"aiolimarseillais3-1-245x300.jpg";s:5:"width";i:245;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(513, 110, '_wp_attached_file', '2018/04/aiolimarseillais__.jpg'),
(514, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:400;s:4:"file";s:30:"2018/04/aiolimarseillais__.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"aiolimarseillais__-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"aiolimarseillais__-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(515, 4, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"plat";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(516, 63, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:12:"plat_du_jour";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(517, 112, '_edit_lock', '1523975065:1'),
(518, 112, '_edit_last', '1'),
(519, 112, '_wp_page_template', 'page-plat.php'),
(520, 114, '_menu_item_type', 'post_type'),
(521, 114, '_menu_item_menu_item_parent', '0'),
(522, 114, '_menu_item_object_id', '112'),
(523, 114, '_menu_item_object', 'page'),
(524, 114, '_menu_item_target', ''),
(525, 114, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(526, 114, '_menu_item_xfn', ''),
(527, 114, '_menu_item_url', ''),
(528, 115, '_edit_lock', '1523995770:1'),
(529, 115, '_edit_last', '1'),
(530, 116, '_wp_attached_file', '2018/04/panisses_.jpg'),
(531, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:400;s:4:"file";s:21:"2018/04/panisses_.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"panisses_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"panisses_-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(532, 115, 'nom', 'Panisses'),
(533, 115, '_nom', 'field_5ad387000b9b2'),
(534, 115, 'ingredients', 'Farine de pois chiches\r\nBeurre\r\nHuile d\'olive, de l\'eau et sel\r\n2 pincées de gros sel\r\n'),
(535, 115, '_ingredients', 'field_5ad3870a0b9b3'),
(536, 115, 'prix', '7 €'),
(537, 115, '_prix', 'field_5ad3871e0b9b4'),
(538, 115, 'type_de_plat', 'Entrée'),
(539, 115, '_type_de_plat', 'field_5ad387300b9b5'),
(540, 115, 'photo', '116'),
(541, 115, '_photo', 'field_5ad387400b9b6'),
(542, 92, '_wp_trash_meta_status', 'publish'),
(543, 92, '_wp_trash_meta_time', '1523995932'),
(544, 92, '_wp_desired_post_slug', '92'),
(545, 117, '_edit_lock', '1523995860:1'),
(546, 117, '_edit_last', '1'),
(547, 117, 'nom', 'Bouillabaisse'),
(548, 117, '_nom', 'field_5ad387000b9b2'),
(549, 117, 'ingredients', 'Lotte\r\nRascasses \r\nCongre \r\nSaint-pierre \r\nLangoustines\r\nTomates\r\nOignons\r\nPoireaux\r\nFenouils\r\nAil, piment, huile d’olive et poivre'),
(550, 117, '_ingredients', 'field_5ad3870a0b9b3'),
(551, 117, 'prix', '27 €'),
(552, 117, '_prix', 'field_5ad3871e0b9b4'),
(553, 117, 'type_de_plat', 'Plat principal'),
(554, 117, '_type_de_plat', 'field_5ad387300b9b5'),
(555, 117, 'photo', '93'),
(556, 117, '_photo', 'field_5ad387400b9b6'),
(557, 118, '_edit_lock', '1523996041:1'),
(558, 118, '_edit_last', '1'),
(559, 119, '_wp_attached_file', '2018/04/navette3.jpg'),
(560, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:533;s:6:"height";i:400;s:4:"file";s:20:"2018/04/navette3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"navette3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"navette3-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(561, 118, 'nom', 'Navettes'),
(562, 118, '_nom', 'field_5ad387000b9b2'),
(563, 118, 'ingredients', 'Farine\r\nSucre\r\nDe l\'eau de fleur d\'oranger.\r\nExtrait naturel d\'orange ou le zeste d\'une orange.\r\nOeufs\r\nLait\r\nHuile d\'olive et sel\r\n'),
(564, 118, '_ingredients', 'field_5ad3870a0b9b3'),
(565, 118, 'prix', '8 €'),
(566, 118, '_prix', 'field_5ad3871e0b9b4'),
(567, 118, 'type_de_plat', 'Dessert'),
(568, 118, '_type_de_plat', 'field_5ad387300b9b5'),
(569, 118, 'photo', '119'),
(570, 118, '_photo', 'field_5ad387400b9b6');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-04-15 19:02:19', '2018-04-15 17:02:19', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2018-04-15 20:56:47', '2018-04-15 18:56:47', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-15 19:02:19', '2018-04-15 17:02:19', 'TESTE TESTE TESTE', '', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2018-04-15 20:55:46', '2018-04-15 18:55:46', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-04-15 19:02:36', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-15 19:02:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=3', 0, 'post', '', 0),
(4, 1, '2018-04-15 19:09:49', '2018-04-15 17:09:49', '', 'Plat', '', 'publish', 'closed', 'closed', '', 'acf_plat', '', '', '2018-04-17 13:55:58', '2018-04-17 11:55:58', '', 0, 'http://localhost/?post_type=acf&#038;p=4', 0, 'acf', '', 0),
(5, 1, '2018-04-15 19:15:11', '2018-04-15 17:15:11', '', 'Plat du jour', '', 'trash', 'closed', 'closed', '', 'acf_plat-du-jour__trashed', '', '', '2018-04-16 11:40:13', '2018-04-16 09:40:13', '', 0, 'http://localhost/?post_type=acf&#038;p=5', 0, 'acf', '', 0),
(6, 1, '2018-04-15 19:18:55', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-15 19:18:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/?post_type=plat&p=6', 0, 'plat', '', 0),
(7, 1, '2018-04-15 19:21:54', '2018-04-15 17:21:54', '', 'Anchoïade provençale', '', 'publish', 'closed', 'closed', '', 'anchoiade-provencale', '', '', '2018-04-17 10:31:50', '2018-04-17 08:31:50', '', 0, 'http://localhost/?post_type=plat&#038;p=7', 0, 'plat', '', 0),
(8, 1, '2018-04-15 19:20:51', '2018-04-15 17:20:51', '', 'aiolimarseillais3', '', 'inherit', 'open', 'closed', '', 'aiolimarseillais3', '', '', '2018-04-15 19:20:51', '2018-04-15 17:20:51', '', 7, 'http://localhost/wp-content/uploads/2018/04/aiolimarseillais3.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2018-04-15 19:22:16', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-15 19:22:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2018-04-15 19:22:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-15 19:22:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2018-04-15 19:22:49', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-15 19:22:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2018-04-15 19:22:49', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-15 19:22:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2018-04-15 19:23:17', '2018-04-15 17:23:17', '<label> Votre nom et prenom (obligatoire)\r\n    [text* your-name] </label>\r\n\r\n<label> Numéro de telephone (obligatoire)\r\n[tel* Numerodetelephone] </label>\r\n\r\n<label> Détails de la réservation (obligatoire)\r\n    [textarea your-message] </label>\r\n\r\n[submit "Envoyer"]\n1\nRestaurant du port "[your-subject]"\n[your-name] <amandamcossu@gmail.com>\namandamcossu@gmail.com\nDe : [your-name] <[your-email]>\r\nObjet : [your-subject]\r\n\r\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de Restaurant du port (http://localhost)\n\n\n\n\n\nRestaurant du port "[your-subject]"\nRestaurant du port <amandamcossu@gmail.com>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de Restaurant du port (http://localhost)\nReply-To: amandamcossu@gmail.com\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nLe code entré est incorrect.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone n’est pas valide.', 'Réservation', '', 'publish', 'closed', 'closed', '', 'formulaire-de-contact-1', '', '', '2018-04-16 10:02:16', '2018-04-16 08:02:16', '', 0, 'http://localhost/?post_type=wpcf7_contact_form&#038;p=13', 0, 'wpcf7_contact_form', '', 0),
(14, 1, '2018-04-15 19:28:06', '2018-04-15 17:28:06', '', 'Toasts de pain à la Poutargue', '', 'publish', 'closed', 'closed', '', 'toasts-de-pain-a-la-poutargue', '', '', '2018-04-17 10:31:33', '2018-04-17 08:31:33', '', 0, 'http://localhost/?post_type=plat&#038;p=14', 0, 'plat', '', 0),
(15, 1, '2018-04-15 19:27:54', '2018-04-15 17:27:54', '', 'poutarge3', '', 'inherit', 'open', 'closed', '', 'poutarge3', '', '', '2018-04-15 19:27:54', '2018-04-15 17:27:54', '', 14, 'http://localhost/wp-content/uploads/2018/04/poutarge3.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-04-15 19:31:15', '2018-04-15 17:31:15', 'Horaires de fonctionnement :\r\n\r\nDimanche 12:00 - 15:00\r\n\r\nLundi à vendredi 12:00 - 15:00, 19:00 - 23:00\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id="13" title="Réservation"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<div class="ZdM7x r-idXvqh7lfSyg t_oh">\r\n<div class="vk_bk a_h" tabindex="0" data-ved="2ahUKEwj_nvLy8LzaAhUPMewKHXBvBsUQ5nEwBXoECAAQHQ">\r\n<table class="WgFkxc">\r\n<tbody>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 'Réservation', '', 'publish', 'closed', 'closed', '', 'reservation', '', '', '2018-04-16 11:25:13', '2018-04-16 09:25:13', '', 0, 'http://localhost/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-04-15 19:31:15', '2018-04-15 17:31:15', '[contact-form-7 id="13" title="Réservation"]', 'Réservation', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-15 19:31:15', '2018-04-15 17:31:15', '', 16, 'http://localhost/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-04-15 19:31:35', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-15 19:31:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2018-04-15 19:31:36', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-15 19:31:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2018-04-15 19:31:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-15 19:31:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2018-04-15 19:31:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-15 19:31:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2018-04-15 19:32:54', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-15 19:32:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2018-04-15 19:32:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-15 19:32:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2018-04-15 19:33:26', '2018-04-15 17:33:26', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2018-04-17 16:27:15', '2018-04-17 14:27:15', '', 0, 'http://localhost/?p=24', 2, 'nav_menu_item', '', 0),
(26, 1, '2018-04-15 19:33:45', '2018-04-15 17:33:45', '{\n    "wp-bootstrap-starter child::nav_menu_locations[primary]": {\n        "value": 2,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-15 17:33:45"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f2e255ac-bb3e-4ffc-af6a-e8fdb98af816', '', '', '2018-04-15 19:33:45', '2018-04-15 17:33:45', '', 0, 'http://localhost/f2e255ac-bb3e-4ffc-af6a-e8fdb98af816/', 0, 'customize_changeset', '', 0),
(27, 1, '2018-04-15 19:34:18', '2018-04-15 17:34:18', '{\n    "blogdescription": {\n        "value": "",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-15 17:34:18"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6f29aa8a-6fc4-433a-b2e0-01d1975b7515', '', '', '2018-04-15 19:34:18', '2018-04-15 17:34:18', '', 0, 'http://localhost/6f29aa8a-6fc4-433a-b2e0-01d1975b7515/', 0, 'customize_changeset', '', 0),
(28, 1, '2018-04-15 19:34:35', '2018-04-15 17:34:35', '{\n    "wp-bootstrap-starter child::theme_option_setting": {\n        "value": "default",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-15 17:34:35"\n    },\n    "wp-bootstrap-starter child::preset_style_setting": {\n        "value": "arbutusslab-opensans",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-15 17:34:35"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6572081f-a746-4023-b786-9073f9c4b465', '', '', '2018-04-15 19:34:35', '2018-04-15 17:34:35', '', 0, 'http://localhost/6572081f-a746-4023-b786-9073f9c4b465/', 0, 'customize_changeset', '', 0),
(29, 1, '2018-04-15 19:35:03', '2018-04-15 17:35:03', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-15 17:35:03"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '66cf5234-d601-407c-8b25-9d4cc9a46b25', '', '', '2018-04-15 19:35:03', '2018-04-15 17:35:03', '', 0, 'http://localhost/66cf5234-d601-407c-8b25-9d4cc9a46b25/', 0, 'customize_changeset', '', 0),
(30, 1, '2018-04-15 19:35:25', '2018-04-15 17:35:25', '{\n    "page_on_front": {\n        "value": "2",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-15 17:35:16"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f4f76181-3990-48be-ba70-430560210c28', '', '', '2018-04-15 19:35:25', '2018-04-15 17:35:25', '', 0, 'http://localhost/?p=30', 0, 'customize_changeset', '', 0),
(31, 1, '2018-04-15 19:35:48', '2018-04-15 17:35:48', '', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-15 19:35:48', '2018-04-15 17:35:48', '', 2, 'http://localhost/2-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-04-15 19:36:02', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-15 19:36:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/?post_type=plat_du_jour&p=32', 0, 'plat_du_jour', '', 0),
(33, 1, '2018-04-15 19:36:30', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-15 19:36:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/?post_type=plat_du_jour&p=33', 0, 'plat_du_jour', '', 0),
(34, 1, '2018-04-15 19:39:02', '2018-04-15 17:39:02', '', 'Anchoiade', '', 'trash', 'closed', 'closed', '', 'grand-aioli-marseillais__trashed', '', '', '2018-04-16 09:45:04', '2018-04-16 07:45:04', '', 0, 'http://localhost/?post_type=plat_du_jour&#038;p=34', 0, 'plat_du_jour', '', 0),
(35, 1, '2018-04-15 19:39:23', '2018-04-15 17:39:23', '', 'anchoiade3', '', 'inherit', 'open', 'closed', '', 'anchoiade3', '', '', '2018-04-15 19:39:23', '2018-04-15 17:39:23', '', 7, 'http://localhost/wp-content/uploads/2018/04/anchoiade3.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2018-04-15 19:44:27', '2018-04-15 17:44:27', 'TESTE TESTE TESTE', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-15 19:44:27', '2018-04-15 17:44:27', '', 2, 'http://localhost/2-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-04-15 20:13:22', '2018-04-15 18:13:22', '[contact-form-7 id="13" title="Réservation"]\n\n&nbsp;\n\n<span class="w8qArf"><a class="fl" href="https://www.google.fr/search?client=ubuntu&amp;dcr=0&amp;site=async/lcl_akp&amp;q=la+pataterie+les+pennes+mirabeau+horaires&amp;sa=X&amp;ved=2ahUKEwj_nvLy8LzaAhUPMewKHXBvBsUQ6BMwBXoECAAQGw&amp;biw=1535&amp;bih=779" data-original-name="Horaires" data-ved="2ahUKEwj_nvLy8LzaAhUPMewKHXBvBsUQ6BMwBXoECAAQGw">Horaires</a> : </span>\n<div class="ZdM7x r-idXvqh7lfSyg t_oh">\n<div class="vk_bk h_n" tabindex="0" data-ved="2ahUKEwj_nvLy8LzaAhUPMewKHXBvBsUQoT4wBXoECAAQHA"></div>\n<div class="vk_bk a_h" tabindex="0" data-ved="2ahUKEwj_nvLy8LzaAhUPMewKHXBvBsUQ5nEwBXoECAAQHQ">\n<table class="WgFkxc">\n<tbody>\n<tr class="K7Ltle">\n<td class="SKNSIb">dimanche</td>\n<td>12:00–14:30, 19:00–22:00</td>\n</tr>\n<tr>\n<td class="SKNSIb">lundi</td>\n<td>12:00–14:00, 19:00–22:00</td>\n</tr>\n<tr>\n<td class="SKNSIb">mardi</td>\n<td>12:00–14:00, 19:00–22:00</td>\n</tr>\n<tr>\n<td class="SKNSIb">mercredi</td>\n<td>12:00–14:00, 19:00–22:00</td>\n</tr>\n<tr>\n<td class="SKNSIb">jeudi</td>\n<td>12:00–14:00, 19:00–22:00</td>\n</tr>\n<tr>\n<td class="SKNSIb">vendredi</td>\n<td>12:00–14:00, 19:00–23:00</td>\n</tr>\n<tr>\n<td class="SKNSIb">samedi</td>\n<td>12:00–14:30, 19:00–23:00</td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>', 'Réservation', '', 'inherit', 'closed', 'closed', '', '16-autosave-v1', '', '', '2018-04-15 20:13:22', '2018-04-15 18:13:22', '', 16, 'http://localhost/16-autosave-v1/', 0, 'revision', '', 0),
(38, 1, '2018-04-15 20:15:00', '2018-04-15 18:15:00', '[contact-form-7 id="13" title="Réservation"]\r\n\r\n&nbsp;\r\n\r\nHoraires de fonctionnement :\r\n\r\nDimanche 12:00 - 15:00\r\n\r\nLundi à vendredi 12:00 - 15:00, 19:00 - 23:00\r\n<div class="ZdM7x r-idXvqh7lfSyg t_oh">\r\n<div class="vk_bk a_h" tabindex="0" data-ved="2ahUKEwj_nvLy8LzaAhUPMewKHXBvBsUQ5nEwBXoECAAQHQ">\r\n<table class="WgFkxc">\r\n<tbody>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 'Réservation', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-15 20:15:00', '2018-04-15 18:15:00', '', 16, 'http://localhost/16-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-04-15 20:56:47', '2018-04-15 18:56:47', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-04-15 20:56:47', '2018-04-15 18:56:47', '', 1, 'http://localhost/1-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-04-15 20:57:17', '2018-04-15 18:57:17', 'Grand aïoli Marseillais\r\n\r\n<img class="alignnone size-medium wp-image-8" src="http://localhost/wp-content/uploads/2018/04/aiolimarseillais3-245x300.jpg" alt="" width="245" height="300" />\r\n\r\nIngrédients:\r\n<ul>\r\n 	<li>Morue</li>\r\n 	<li>Bulots</li>\r\n 	<li>Supions</li>\r\n 	<li>Oeufs</li>\r\n 	<li>Haricots verts frais</li>\r\n 	<li>Carrotes nouvelles</li>\r\n 	<li>Pommes de terre</li>\r\n 	<li>Chou-fleur</li>\r\n 	<li>Courgettes</li>\r\n 	<li>Fenouil</li>\r\n</ul>\r\nPrix : 36 €\r\n\r\nType de plat : Plat principal', 'Plat du jour', '', 'trash', 'open', 'open', '', 'plat-du-jour__trashed', '', '', '2018-04-16 11:29:51', '2018-04-16 09:29:51', '', 0, 'http://localhost/?p=40', 0, 'post', '', 0),
(41, 1, '2018-04-15 20:57:17', '2018-04-15 18:57:17', '<img class="alignnone size-medium wp-image-8" src="http://localhost/wp-content/uploads/2018/04/aiolimarseillais3-245x300.jpg" alt="" width="245" height="300" />', 'Plat du jour', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-04-15 20:57:17', '2018-04-15 18:57:17', '', 40, 'http://localhost/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-04-16 09:50:18', '2018-04-16 07:50:18', 'Grand aïoli Marseillais\n\n<img class="alignnone size-medium wp-image-8" src="http://localhost/wp-content/uploads/2018/04/aiolimarseillais3-245x300.jpg" alt="" width="245" height="300" />\n\nIngrédients:\n<ul>\n 	<li>Morue</li>\n 	<li>Bulots</li>\n 	<li>Supions</li>\n 	<li>Oeufs</li>\n 	<li>Haricots verts frais</li>\n 	<li>Carrotes nouvelles</li>\n 	<li>Pommes de terre</li>\n 	<li>Chou-fleur</li>\n 	<li>Courgettes</li>\n 	<li>Fenouil</li>\n</ul>\nPrix : 36 €\n\nType de plat : Plat principal', 'Plat du jour', '', 'inherit', 'closed', 'closed', '', '40-autosave-v1', '', '', '2018-04-16 09:50:18', '2018-04-16 07:50:18', '', 40, 'http://localhost/40-autosave-v1/', 0, 'revision', '', 0),
(43, 1, '2018-04-15 21:03:35', '2018-04-15 19:03:35', '<img class="size-medium wp-image-8 aligncenter" src="http://localhost/wp-content/uploads/2018/04/aiolimarseillais3-245x300.jpg" alt="" width="245" height="300" />\r\n\r\nIngrédients:\r\n<ul>\r\n 	<li>Morue</li>\r\n 	<li>Bulots</li>\r\n 	<li>Supions</li>\r\n 	<li>Oeufs</li>\r\n 	<li>Haricots verts frais</li>\r\n 	<li>Carrotes nouvelles</li>\r\n 	<li>Pommes de terre</li>\r\n 	<li>Chou-fleur</li>\r\n 	<li>Courgettes</li>\r\n 	<li>Fenouil</li>\r\n</ul>\r\nPrix : 36 €\r\n\r\nType de plat : Plat principal', 'Plat du jour 19 / 04  Grand aïoli Marseillais', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-04-15 21:03:35', '2018-04-15 19:03:35', '', 40, 'http://localhost/40-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-04-15 21:04:20', '2018-04-15 19:04:20', '<img class="size-medium wp-image-8 alignleft" src="http://localhost/wp-content/uploads/2018/04/aiolimarseillais3-245x300.jpg" alt="" width="245" height="300" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nIngrédients:\r\n<ul>\r\n 	<li>Morue</li>\r\n 	<li>Bulots</li>\r\n 	<li>Supions</li>\r\n 	<li>Oeufs</li>\r\n 	<li>Haricots verts frais</li>\r\n 	<li>Carrotes nouvelles</li>\r\n 	<li>Pommes de terre</li>\r\n 	<li>Chou-fleur</li>\r\n 	<li>Courgettes</li>\r\n 	<li>Fenouil</li>\r\n</ul>\r\nPrix : 36 €\r\n\r\nType de plat : Plat principal', 'Plat du jour 19 / 04  Grand aïoli Marseillais', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-04-15 21:04:20', '2018-04-15 19:04:20', '', 40, 'http://localhost/40-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-04-16 09:36:20', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-16 09:36:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=45', 0, 'page', '', 0),
(46, 1, '2018-04-16 09:38:47', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-16 09:38:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=46', 0, 'page', '', 0),
(47, 1, '2018-04-16 09:40:27', '2018-04-16 07:40:27', '<img class="size-medium wp-image-8 alignleft" src="http://localhost/wp-content/uploads/2018/04/aiolimarseillais3-245x300.jpg" alt="" width="245" height="300" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nIngrédients:\r\n<ul>\r\n 	<li>Morue</li>\r\n 	<li>Bulots</li>\r\n 	<li>Supions</li>\r\n 	<li>Oeufs</li>\r\n 	<li>Haricots verts frais</li>\r\n 	<li>Carrotes nouvelles</li>\r\n 	<li>Pommes de terre</li>\r\n 	<li>Chou-fleur</li>\r\n 	<li>Courgettes</li>\r\n 	<li>Fenouil</li>\r\n</ul>\r\nPrix : 36 €\r\n\r\nType de plat : Plat principal', 'Plat du jour Grand aïoli Marseillais', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-04-16 09:40:27', '2018-04-16 07:40:27', '', 40, 'http://localhost/40-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-04-16 09:45:34', '2018-04-16 07:45:34', '<img class="size-medium wp-image-8 alignleft" src="http://localhost/wp-content/uploads/2018/04/aiolimarseillais3-245x300.jpg" alt="" width="245" height="300" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nIngrédients:\r\n<ul>\r\n 	<li>Morue</li>\r\n 	<li>Bulots</li>\r\n 	<li>Supions</li>\r\n 	<li>Oeufs</li>\r\n 	<li>Haricots verts frais</li>\r\n 	<li>Carrotes nouvelles</li>\r\n 	<li>Pommes de terre</li>\r\n 	<li>Chou-fleur</li>\r\n 	<li>Courgettes</li>\r\n 	<li>Fenouil</li>\r\n</ul>\r\nPrix : 36 €\r\n\r\nType de plat : Plat principal', 'Grand aïoli Marseillais', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-04-16 09:45:34', '2018-04-16 07:45:34', '', 40, 'http://localhost/40-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-04-16 09:50:28', '2018-04-16 07:50:28', 'Grand aïoli Marseillais\r\n\r\n<img class="alignnone size-medium wp-image-8" src="http://localhost/wp-content/uploads/2018/04/aiolimarseillais3-245x300.jpg" alt="" width="245" height="300" />\r\n\r\nIngrédients:\r\n<ul>\r\n 	<li>Morue</li>\r\n 	<li>Bulots</li>\r\n 	<li>Supions</li>\r\n 	<li>Oeufs</li>\r\n 	<li>Haricots verts frais</li>\r\n 	<li>Carrotes nouvelles</li>\r\n 	<li>Pommes de terre</li>\r\n 	<li>Chou-fleur</li>\r\n 	<li>Courgettes</li>\r\n 	<li>Fenouil</li>\r\n</ul>\r\nPrix : 36 €\r\n\r\nType de plat : Plat principal', 'Plat du jour', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-04-16 09:50:28', '2018-04-16 07:50:28', '', 40, 'http://localhost/40-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-04-16 09:54:35', '2018-04-16 07:54:35', 'Horaires de fonctionnement :\r\n\r\nDimanche 12:00 - 15:00\r\n\r\nLundi à vendredi 12:00 - 15:00, 19:00 - 23:00\r\n\r\n[contact-form-7 id="13" title="Réservation"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<div class="ZdM7x r-idXvqh7lfSyg t_oh">\r\n<div class="vk_bk a_h" tabindex="0" data-ved="2ahUKEwj_nvLy8LzaAhUPMewKHXBvBsUQ5nEwBXoECAAQHQ">\r\n<table class="WgFkxc">\r\n<tbody>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 'Réservation', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-16 09:54:35', '2018-04-16 07:54:35', '', 16, 'http://localhost/16-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-04-16 09:55:32', '2018-04-16 07:55:32', 'Horaires de fonctionnement :\r\n\r\nDimanche 12:00 - 15:00\r\n\r\nLundi à vendredi 12:00 - 15:00, 19:00 - 23:00\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id="13" title="Réservation"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<div class="ZdM7x r-idXvqh7lfSyg t_oh">\r\n<div class="vk_bk a_h" tabindex="0" data-ved="2ahUKEwj_nvLy8LzaAhUPMewKHXBvBsUQ5nEwBXoECAAQHQ">\r\n<table class="WgFkxc">\r\n<tbody>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 'Réservation', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-16 09:55:32', '2018-04-16 07:55:32', '', 16, 'http://localhost/16-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-04-16 10:43:55', '2018-04-16 08:43:55', '{\n    "wp-bootstrap-starter child::theme_option_setting": {\n        "value": "default",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-16 08:43:55"\n    },\n    "wp-bootstrap-starter child::header_banner_title_setting": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-16 08:43:55"\n    },\n    "wp-bootstrap-starter child::header_banner_tagline_setting": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-16 08:43:55"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '95475b04-5150-4ccf-9dab-659190f5229d', '', '', '2018-04-16 10:43:55', '2018-04-16 08:43:55', '', 0, 'http://localhost/95475b04-5150-4ccf-9dab-659190f5229d/', 0, 'customize_changeset', '', 0),
(53, 1, '2018-04-16 10:46:40', '2018-04-16 08:46:40', '{\n    "wp-bootstrap-starter child::header_banner_tagline_setting": {\n        "value": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed luctus erat. Integer auctor                  risus diam, eget vestibulum ante dapibus et. Nulla convallis tellus in turpis vehicula, eget                  tincidunt tellus rhoncus. In lobortis arcu eu ultricies maximus. Nulla ac mollis elit, sit                  amet sodales lectus. Nunc imperdiet nunc eu nibh aliquet, in placerat sem aliquam. Vestibulum                  elementum varius purus, finibus maximus dolor tempor ut. Vestibulum elementum, erat ut fermentum pulvinar,                  elit nibh condimentum ligula, eget sodales turpis sapien in eros. Interdum et malesuada fames                  ac ante ipsum primis in faucibus. Nulla mauris neque, lobortis a felis nec, commodo imperdiet                  purus.",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-16 08:46:40"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4176913d-7945-4911-a286-cce8867d02a5', '', '', '2018-04-16 10:46:40', '2018-04-16 08:46:40', '', 0, 'http://localhost/4176913d-7945-4911-a286-cce8867d02a5/', 0, 'customize_changeset', '', 0),
(54, 1, '2018-04-16 10:47:03', '2018-04-16 08:47:03', '{\n    "wp-bootstrap-starter child::header_banner_tagline_setting": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-16 08:47:03"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '851d44f6-f045-4365-bc9c-0c66e887b5bd', '', '', '2018-04-16 10:47:03', '2018-04-16 08:47:03', '', 0, 'http://localhost/851d44f6-f045-4365-bc9c-0c66e887b5bd/', 0, 'customize_changeset', '', 0),
(55, 1, '2018-04-16 10:50:22', '2018-04-16 08:50:22', '{\n    "wp-bootstrap-starter child::header_banner_title_setting": {\n        "value": "ghghghg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-16 08:50:22"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'acea14aa-f533-48e9-a8dc-a2d96e5ce2b4', '', '', '2018-04-16 10:50:22', '2018-04-16 08:50:22', '', 0, 'http://localhost/acea14aa-f533-48e9-a8dc-a2d96e5ce2b4/', 0, 'customize_changeset', '', 0),
(56, 1, '2018-04-16 10:50:27', '2018-04-16 08:50:27', '{\n    "wp-bootstrap-starter child::header_banner_tagline_setting": {\n        "value": "hhhhhhhhhhhhhhhhhhhhhhhhh",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-16 08:50:27"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4308c238-cade-4447-bd17-f67be1deead3', '', '', '2018-04-16 10:50:27', '2018-04-16 08:50:27', '', 0, 'http://localhost/4308c238-cade-4447-bd17-f67be1deead3/', 0, 'customize_changeset', '', 0),
(57, 1, '2018-04-16 10:50:37', '2018-04-16 08:50:37', '{\n    "wp-bootstrap-starter child::header_banner_title_setting": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-16 08:50:37"\n    },\n    "wp-bootstrap-starter child::header_banner_tagline_setting": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-16 08:50:37"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '943d9fbf-d33e-4e34-85f9-142e31b2834d', '', '', '2018-04-16 10:50:37', '2018-04-16 08:50:37', '', 0, 'http://localhost/943d9fbf-d33e-4e34-85f9-142e31b2834d/', 0, 'customize_changeset', '', 0),
(58, 1, '2018-04-16 11:00:21', '2018-04-16 09:00:21', '{\n    "wp-bootstrap-starter child::header_banner_visibility": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-16 09:00:21"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '717e0394-6cde-407a-87e8-a0b9a4786188', '', '', '2018-04-16 11:00:21', '2018-04-16 09:00:21', '', 0, 'http://localhost/717e0394-6cde-407a-87e8-a0b9a4786188/', 0, 'customize_changeset', '', 0),
(59, 1, '2018-04-16 11:01:09', '2018-04-16 09:01:09', 'ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg', 'Notre restaurant', '', 'trash', 'closed', 'closed', '', 'notre-restaurant__trashed', '', '', '2018-04-16 11:12:07', '2018-04-16 09:12:07', '', 0, 'http://localhost/?page_id=59', 0, 'page', '', 0),
(60, 1, '2018-04-16 11:01:09', '2018-04-16 09:01:09', 'ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg', 'Notre restaurant', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-04-16 11:01:09', '2018-04-16 09:01:09', '', 59, 'http://localhost/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-04-16 11:02:03', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-16 11:02:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/?post_type=acf&p=61', 0, 'acf', '', 0),
(62, 1, '2018-04-16 11:03:02', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-16 11:03:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=62', 0, 'page', '', 0),
(63, 1, '2018-04-16 11:03:59', '2018-04-16 09:03:59', '', 'Plat du jour', '', 'publish', 'closed', 'closed', '', 'acf_plat-du-jour', '', '', '2018-04-17 13:56:13', '2018-04-17 11:56:13', '', 0, 'http://localhost/?post_type=acf&#038;p=63', 0, 'acf', '', 0),
(64, 1, '2018-04-16 11:04:05', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-16 11:04:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=64', 0, 'page', '', 0),
(65, 1, '2018-04-16 11:10:02', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-16 11:10:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=65', 0, 'page', '', 0),
(66, 1, '2018-04-16 11:11:21', '2018-04-16 09:11:21', '', '', '', 'trash', 'closed', 'closed', '', '66__trashed', '', '', '2018-04-16 11:26:56', '2018-04-16 09:26:56', '', 0, 'http://localhost/?post_type=accueil&#038;p=66', 0, 'accueil', '', 0),
(67, 1, '2018-04-16 11:14:53', '2018-04-16 09:14:53', '', 'Plat du jour', '', 'trash', 'closed', 'closed', '', 'notre-restaurant__trashed-2', '', '', '2018-04-16 14:04:26', '2018-04-16 12:04:26', '', 0, 'http://localhost/?page_id=67', 0, 'page', '', 0),
(68, 1, '2018-04-16 11:14:53', '2018-04-16 09:14:53', '', 'tet', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-04-16 11:14:53', '2018-04-16 09:14:53', '', 67, 'http://localhost/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-04-16 11:15:14', '2018-04-16 09:15:14', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-04-16 11:15:14', '2018-04-16 09:15:14', '', 67, 'http://localhost/67-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-04-16 11:23:20', '2018-04-16 09:23:20', '<div id="lipsum">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac consectetur enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer felis tellus, finibus a felis quis, ornare lobortis nisi. Aenean vel lectus ut enim malesuada maximus. Nulla laoreet leo et dapibus congue. Aenean facilisis turpis nibh, eu laoreet est aliquam finibus. Morbi in facilisis arcu.\r\n\r\nInteger consequat cursus enim, nec vestibulum libero accumsan ac. Quisque et gravida enim. Sed id sapien est. Etiam ornare convallis tellus, mattis facilisis dui eleifend varius. Cras placerat lectus vel mi pharetra, vel sagittis metus convallis. Nullam ultricies hendrerit erat, sit amet gravida lectus maximus vitae. Duis venenatis pellentesque nibh ornare dapibus. Donec nulla sem, lobortis sit amet pellentesque vitae, faucibus at erat. Aliquam erat volutpat. Fusce sed dignissim nisi. Fusce non ornare eros, ut cursus enim. Quisque sollicitudin vestibulum nibh, imperdiet eleifend diam fringilla nec.\r\n\r\n</div>', 'Notre restaurant', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-04-16 11:23:20', '2018-04-16 09:23:20', '', 67, 'http://localhost/67-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-04-16 11:29:31', '2018-04-16 09:29:31', '', 'À propos', '', 'trash', 'closed', 'closed', '', '72__trashed', '', '', '2018-04-16 11:36:45', '2018-04-16 09:36:45', '', 0, 'http://localhost/?post_type=accueil&#038;p=72', 0, 'accueil', '', 0),
(73, 1, '2018-04-16 11:30:03', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2018-04-16 11:30:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=73', 0, 'post', '', 0),
(74, 1, '2018-04-16 11:31:28', '2018-04-16 09:31:28', 'BNNNNNNNNNNNN', '', '', 'trash', 'closed', 'closed', '', '74-2__trashed', '', '', '2018-04-16 11:32:56', '2018-04-16 09:32:56', '', 0, 'http://localhost/?page_id=74', 0, 'page', '', 0),
(75, 1, '2018-04-16 11:31:28', '2018-04-16 09:31:28', 'BNNNNNNNNNNNN', '', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-04-16 11:31:28', '2018-04-16 09:31:28', '', 74, 'http://localhost/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-04-16 11:33:45', '2018-04-16 09:33:45', '', 'Notre restaurant', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-04-16 11:33:45', '2018-04-16 09:33:45', '', 67, 'http://localhost/67-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-04-16 11:45:05', '2018-04-16 09:45:05', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-16 09:45:05"\n    },\n    "page_on_front": {\n        "value": "67",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-16 09:45:05"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '880702c7-53ac-44a5-9641-a7ef9f4158ee', '', '', '2018-04-16 11:45:05', '2018-04-16 09:45:05', '', 0, 'http://localhost/880702c7-53ac-44a5-9641-a7ef9f4158ee/', 0, 'customize_changeset', '', 0),
(78, 1, '2018-04-16 11:47:19', '2018-04-16 09:47:19', '', 'Plat du jour', '', 'publish', 'closed', 'closed', '', 'plat-du-jour', '', '', '2018-04-17 09:42:27', '2018-04-17 07:42:27', '', 0, 'http://localhost/?post_type=accueil&#038;p=78', 0, 'accueil', '', 0),
(79, 1, '2018-04-16 11:48:49', '2018-04-16 09:48:49', '<div id="lipsum">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac consectetur enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer felis tellus, finibus a felis quis, ornare lobortis nisi. Aenean vel lectus ut enim malesuada maximus. Nulla laoreet leo et dapibus congue. Aenean facilisis turpis nibh, eu laoreet est aliquam finibus. Morbi in facilisis arcu.\r\n\r\nInteger consequat cursus enim, nec vestibulum libero accumsan ac. Quisque et gravida enim. Sed id sapien est. Etiam ornare convallis tellus, mattis facilisis dui eleifend varius. Cras placerat lectus vel mi pharetra, vel sagittis metus convallis. Nullam ultricies hendrerit erat, sit amet gravida lectus maximus vitae. Duis venenatis pellentesque nibh ornare dapibus. Donec nulla sem, lobortis sit amet pellentesque vitae, faucibus at erat. Aliquam erat volutpat. Fusce sed dignissim nisi. Fusce non ornare eros, ut cursus enim. Quisque sollicitudin vestibulum nibh, imperdiet eleifend diam fringilla nec.\r\n\r\n</div>', 'Notre restaurant', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-04-16 11:48:49', '2018-04-16 09:48:49', '', 67, 'http://localhost/67-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-04-16 11:57:46', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-16 11:57:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=80', 0, 'page', '', 0),
(81, 1, '2018-04-16 12:00:55', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-16 12:00:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/?post_type=accueil&p=81', 0, 'accueil', '', 0),
(82, 1, '2018-04-16 13:42:46', '0000-00-00 00:00:00', '{\n    "wp-bootstrap-starter child::header_banner_visibility": {\n        "value": false,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-16 11:42:46"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '7f2b0ab1-7655-4a65-8c0c-91e42d3ddfbb', '', '', '2018-04-16 13:42:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=82', 0, 'customize_changeset', '', 0),
(83, 1, '2018-04-16 13:43:17', '2018-04-16 11:43:17', '{\n    "wp-bootstrap-starter child::header_banner_title_setting": {\n        "value": "Notre restaurant",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-16 11:43:17"\n    },\n    "wp-bootstrap-starter child::header_banner_visibility": {\n        "value": false,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-16 11:43:17"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c240653a-a14e-4840-ab0a-e0d9a2b9a64e', '', '', '2018-04-16 13:43:17', '2018-04-16 11:43:17', '', 0, 'http://localhost/c240653a-a14e-4840-ab0a-e0d9a2b9a64e/', 0, 'customize_changeset', '', 0),
(84, 1, '2018-04-16 13:45:20', '2018-04-16 11:45:20', '{\n    "wp-bootstrap-starter child::header_banner_tagline_setting": {\n        "value": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac consectetur enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer felis tellus, finibus a felis quis, ornare lobortis nisi. Aenean vel lectus ut enim malesuada maximus.",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-16 11:45:20"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fc1c36a5-57d1-4219-8895-0999a8e83409', '', '', '2018-04-16 13:45:20', '2018-04-16 11:45:20', '', 0, 'http://localhost/fc1c36a5-57d1-4219-8895-0999a8e83409/', 0, 'customize_changeset', '', 0),
(85, 1, '2018-04-16 13:46:18', '2018-04-16 11:46:18', '{\n    "wp-bootstrap-starter child::header_banner_tagline_setting": {\n        "value": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac consectetur enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer felis tellus, finibus a felis quis, ornare lobortis nisi. Aenean vel lectus ut enim malesuada maximus. Nulla laoreet leo et dapibus congue. Aenean facilisis turpis nibh, eu laoreet est aliquam finibus. Morbi in facilisis arcu. ",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-16 11:46:18"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a6fb4e51-636b-47b0-b786-397b74a96c8f', '', '', '2018-04-16 13:46:18', '2018-04-16 11:46:18', '', 0, 'http://localhost/a6fb4e51-636b-47b0-b786-397b74a96c8f/', 0, 'customize_changeset', '', 0),
(86, 1, '2018-04-16 13:54:17', '2018-04-16 11:54:17', '', 'Plat du jour', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-04-16 13:54:17', '2018-04-16 11:54:17', '', 67, 'http://localhost/67-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-04-16 14:02:25', '2018-04-16 12:02:25', '', 'Grand aïoli marseillais', '', 'publish', 'closed', 'closed', '', 'grand-aioli-marseillais', '', '', '2018-04-17 10:27:28', '2018-04-17 08:27:28', '', 0, 'http://localhost/?post_type=plat_du_jour&#038;p=87', 0, 'plat_du_jour', '', 0),
(88, 1, '2018-04-16 14:05:26', '0000-00-00 00:00:00', '', 'Plat du jour', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-16 14:05:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=88', 1, 'nav_menu_item', '', 0),
(89, 1, '2018-04-16 14:05:47', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-16 14:05:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=89', 0, 'page', '', 0),
(90, 1, '2018-04-16 16:19:07', '2018-04-16 14:19:07', '', 'Chichi fregi', '', 'publish', 'closed', 'closed', '', 'chichi-fregi', '', '', '2018-04-17 10:28:19', '2018-04-17 08:28:19', '', 0, 'http://localhost/?post_type=plat&#038;p=90', 0, 'plat', '', 0),
(91, 1, '2018-04-16 16:19:02', '2018-04-16 14:19:02', '', 'chichis-fregi3', '', 'inherit', 'closed', 'closed', '', 'chichis-fregi3', '', '', '2018-04-16 16:19:02', '2018-04-16 14:19:02', '', 90, 'http://localhost/wp-content/uploads/2018/04/chichis-fregi3.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2018-04-16 16:20:30', '2018-04-16 14:20:30', '', 'Bouillabaisse', '', 'trash', 'closed', 'closed', '', '92__trashed', '', '', '2018-04-17 22:12:12', '2018-04-17 20:12:12', '', 0, 'http://localhost/?post_type=plat&#038;p=92', 0, 'plat', '', 0),
(93, 1, '2018-04-16 16:20:18', '2018-04-16 14:20:18', '', 'bouilabaise2', '', 'inherit', 'closed', 'closed', '', 'bouilabaise2', '', '', '2018-04-16 16:20:18', '2018-04-16 14:20:18', '', 92, 'http://localhost/wp-content/uploads/2018/04/bouilabaise2.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2018-04-16 16:38:38', '2018-04-16 14:38:38', '', 'chichis-fregi3', '', 'inherit', 'closed', 'closed', '', 'chichis-fregi3-2', '', '', '2018-04-16 16:38:38', '2018-04-16 14:38:38', '', 90, 'http://localhost/wp-content/uploads/2018/04/chichis-fregi3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2018-04-16 16:40:04', '2018-04-16 14:40:04', '', 'aiolimarseillais2', '', 'inherit', 'closed', 'closed', '', 'aiolimarseillais2', '', '', '2018-04-16 16:40:04', '2018-04-16 14:40:04', '', 7, 'http://localhost/wp-content/uploads/2018/04/aiolimarseillais2.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2018-04-16 16:42:30', '2018-04-16 14:42:30', '', 'chichis-fregi_', '', 'inherit', 'closed', 'closed', '', 'chichis-fregi_', '', '', '2018-04-16 16:42:30', '2018-04-16 14:42:30', '', 90, 'http://localhost/wp-content/uploads/2018/04/chichis-fregi_.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2018-04-16 16:43:08', '2018-04-16 14:43:08', '', 'poutarge_', '', 'inherit', 'closed', 'closed', '', 'poutarge_', '', '', '2018-04-16 16:43:08', '2018-04-16 14:43:08', '', 14, 'http://localhost/wp-content/uploads/2018/04/poutarge_.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2018-04-16 16:44:29', '2018-04-16 14:44:29', '', 'anchoiade_', '', 'inherit', 'closed', 'closed', '', 'anchoiade_', '', '', '2018-04-16 16:44:29', '2018-04-16 14:44:29', '', 7, 'http://localhost/wp-content/uploads/2018/04/anchoiade_.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2018-04-16 16:45:59', '2018-04-16 14:45:59', '', 'bouilabaise_', '', 'inherit', 'closed', 'closed', '', 'bouilabaise_', '', '', '2018-04-16 16:45:59', '2018-04-16 14:45:59', '', 92, 'http://localhost/wp-content/uploads/2018/04/bouilabaise_.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2018-04-17 08:59:03', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-17 08:59:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=100', 0, 'page', '', 0),
(101, 1, '2018-04-17 09:01:07', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-17 09:01:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=101', 0, 'page', '', 0),
(102, 1, '2018-04-17 09:01:35', '2018-04-17 07:01:35', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2018-04-17 10:17:27', '2018-04-17 08:17:27', '', 0, 'http://localhost/?page_id=102', 0, 'page', '', 0),
(103, 1, '2018-04-17 09:01:35', '2018-04-17 07:01:35', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2018-04-17 09:01:35', '2018-04-17 07:01:35', '', 102, 'http://localhost/102-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2018-04-17 09:26:33', '2018-04-17 07:26:33', 'hghghgh', 'Accueil', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2018-04-17 09:26:33', '2018-04-17 07:26:33', '', 102, 'http://localhost/102-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-04-17 09:36:16', '2018-04-17 07:36:16', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2018-04-17 09:36:16', '2018-04-17 07:36:16', '', 102, 'http://localhost/102-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-04-17 09:42:16', '2018-04-17 07:42:16', '', 'aiolimarseillais3', '', 'inherit', 'closed', 'closed', '', 'aiolimarseillais3-2', '', '', '2018-04-17 09:42:16', '2018-04-17 07:42:16', '', 78, 'http://localhost/wp-content/uploads/2018/04/aiolimarseillais3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2018-04-17 09:44:24', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-17 09:44:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/?post_type=plat&p=109', 0, 'plat', '', 0),
(110, 1, '2018-04-17 10:27:23', '2018-04-17 08:27:23', '', 'aiolimarseillais__', '', 'inherit', 'closed', 'closed', '', 'aiolimarseillais__', '', '', '2018-04-17 10:27:23', '2018-04-17 08:27:23', '', 87, 'http://localhost/wp-content/uploads/2018/04/aiolimarseillais__.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 2, '2018-04-17 15:20:12', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2018-04-17 15:20:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=111', 0, 'post', '', 0),
(112, 1, '2018-04-17 16:26:45', '2018-04-17 14:26:45', '', 'Menu', '', 'publish', 'closed', 'closed', '', 'menu', '', '', '2018-04-17 16:26:45', '2018-04-17 14:26:45', '', 0, 'http://localhost/?page_id=112', 0, 'page', '', 0),
(113, 1, '2018-04-17 16:26:45', '2018-04-17 14:26:45', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-04-17 16:26:45', '2018-04-17 14:26:45', '', 112, 'http://localhost/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-04-17 16:27:14', '2018-04-17 14:27:14', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2018-04-17 16:27:14', '2018-04-17 14:27:14', '', 0, 'http://localhost/?p=114', 1, 'nav_menu_item', '', 0),
(115, 1, '2018-04-17 22:11:51', '2018-04-17 20:11:51', '', 'Panisses', '', 'publish', 'closed', 'closed', '', 'panisses', '', '', '2018-04-17 22:11:51', '2018-04-17 20:11:51', '', 0, 'http://localhost/?post_type=plat&#038;p=115', 0, 'plat', '', 0),
(116, 1, '2018-04-17 22:10:33', '2018-04-17 20:10:33', '', 'panisses_', '', 'inherit', 'closed', 'closed', '', 'panisses_', '', '', '2018-04-17 22:10:33', '2018-04-17 20:10:33', '', 115, 'http://localhost/wp-content/uploads/2018/04/panisses_.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2018-04-17 22:13:21', '2018-04-17 20:13:21', '', 'Bouillabaisse', '', 'publish', 'closed', 'closed', '', 'bouillabaisse', '', '', '2018-04-17 22:13:21', '2018-04-17 20:13:21', '', 0, 'http://localhost/?post_type=plat&#038;p=117', 0, 'plat', '', 0),
(118, 1, '2018-04-17 22:15:59', '2018-04-17 20:15:59', '', 'Navettes', '', 'publish', 'closed', 'closed', '', 'navettes', '', '', '2018-04-17 22:16:22', '2018-04-17 20:16:22', '', 0, 'http://localhost/?post_type=plat&#038;p=118', 0, 'plat', '', 0),
(119, 1, '2018-04-17 22:14:06', '2018-04-17 20:14:06', '', 'navette3', '', 'inherit', 'closed', 'closed', '', 'navette3', '', '', '2018-04-17 22:14:06', '2018-04-17 20:14:06', '', 118, 'http://localhost/wp-content/uploads/2018/04/navette3.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Plat_du_jour', 'plat_du_jour', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(24, 2, 0),
(40, 3, 0),
(114, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'amandac_user'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:5:{s:64:"09e6110221e28d781ab1919f29053b539a45b28354beaa0571017470e22b911c";a:4:{s:10:"expiration";i:1524035239;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:59.0) Gecko/20100101 Firefox/59.0";s:5:"login";i:1523862439;}s:64:"86219ce12041c7f2c37f2897d6b4ff926afe944804e3bf42c1962fdac94ff735";a:4:{s:10:"expiration";i:1524060434;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:59.0) Gecko/20100101 Firefox/59.0";s:5:"login";i:1523887634;}s:64:"a7899aeb35a9417e629d4bfae8cb9ff3ca7bd05ae43e175e7974646f03becd7f";a:4:{s:10:"expiration";i:1525165842;s:2:"ip";s:12:"147.94.36.72";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:59.0) Gecko/20100101 Firefox/59.0";s:5:"login";i:1523956242;}s:64:"224fea61966d3f5198e671819cca92e26e8c4f0070a24c343b409454fdaa62db";a:4:{s:10:"expiration";i:1524144104;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:59.0) Gecko/20100101 Firefox/59.0";s:5:"login";i:1523971304;}s:64:"6ff66b3b90122efb80425eb6363cd8a57cdfdd7b50619ceaad554d30fc0ff1e3";a:4:{s:10:"expiration";i:1524167099;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:59.0) Gecko/20100101 Firefox/59.0";s:5:"login";i:1523994299;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1523864204'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:18:"add-post-type-plat";i:1;s:26:"add-post-type-plat_du_jour";i:2;s:12:"add-post_tag";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 2, 'nickname', 'admin2'),
(25, 2, 'first_name', 'Admin'),
(26, 2, 'last_name', ''),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(36, 2, 'wp_user_level', '10'),
(37, 2, 'dismissed_wp_pointers', ''),
(38, 3, 'nickname', 'auteur'),
(39, 3, 'first_name', ''),
(40, 3, 'last_name', ''),
(41, 3, 'description', ''),
(42, 3, 'rich_editing', 'true'),
(43, 3, 'syntax_highlighting', 'true'),
(44, 3, 'comment_shortcuts', 'false'),
(45, 3, 'admin_color', 'fresh'),
(46, 3, 'use_ssl', '0'),
(47, 3, 'show_admin_bar_front', 'true'),
(48, 3, 'locale', ''),
(49, 3, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(50, 3, 'wp_user_level', '2'),
(51, 3, 'dismissed_wp_pointers', ''),
(53, 2, 'wp_dashboard_quick_press_last_post_id', '111'),
(54, 2, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'amandac_user', '$P$BpezvZmshVJ38zploL7rvPGtCJu5OT/', 'amandac_user', 'amandamcossu@gmail.com', '', '2018-04-15 17:02:18', '', 0, 'amandac_user'),
(2, 'admin2', '$P$B/fLFwgeH7mJ.aoIRlcXJ08HDCLvF/0', 'admin2', 'admin2@admin.com', '', '2018-04-17 08:02:11', '1523952132:$P$B2QL6AKPJ8XZIaDiIdS2aDpA3V44r8.', 0, 'Admin'),
(3, 'auteur', '$P$BinRbUst1KF7biJ4/G50VhWFys1Vxd0', 'auteur', 'auteur@auteur.com', '', '2018-04-17 08:03:39', '1523952220:$P$BoG880KaX1N539JXA2py0OkwqEUs.00', 0, 'auteur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=571;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
