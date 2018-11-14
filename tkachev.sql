-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 15 2018 г., 00:21
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tkachev`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
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
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-11-13 15:42:06', '2018-11-13 12:42:06', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
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
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://tkachev.loc', 'yes'),
(2, 'home', 'http://tkachev.loc', 'yes'),
(3, 'blogname', 'tkachev', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'seriiburduja@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:38:\"carbon-fields/carbon-fields-plugin.php\";i:1;s:22:\"cyr3lat/cyr-to-lat.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'envo-blog', 'yes'),
(41, 'stylesheet', 'my_theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:23:\"envo-blog-homepage-area\";a:0:{}s:23:\"envo-blog-right-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:21:\"envo-blog-footer-area\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1542231726;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1542242526;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1542285752;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1542286063;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542113187;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(127, '_site_transient_timeout_browser_e9370d0f7f7a5d66a2e939d99b17726b', '1542717735', 'no'),
(128, '_site_transient_browser_e9370d0f7f7a5d66a2e939d99b17726b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"70.0.3538.77\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(129, 'can_compress_scripts', '0', 'no'),
(144, 'recently_activated', 'a:0:{}', 'yes'),
(149, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1542206323;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(151, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1542206330;s:7:\"checked\";a:2:{s:9:\"envo-blog\";s:5:\"1.1.3\";s:8:\"my_theme\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(152, 'current_theme', 'my_theme', 'yes'),
(153, 'theme_mods_envo-blog', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542113639;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:23:\"envo-blog-homepage-area\";a:0:{}s:23:\"envo-blog-right-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:21:\"envo-blog-footer-area\";a:0:{}}}}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(155, 'widget_envo-blog-extended-recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(156, 'widget_envo-blog-popular-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(157, 'widget_envo-blog-split-imgages-section', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(159, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(164, 'theme_mods_my_theme', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"background_image\";s:0:\"\";s:12:\"header_image\";s:67:\"http://tkachev.loc/wp-content/uploads/2018/11/cropped-tkachev-4.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:22;s:3:\"url\";s:67:\"http://tkachev.loc/wp-content/uploads/2018/11/cropped-tkachev-4.jpg\";s:13:\"thumbnail_url\";s:67:\"http://tkachev.loc/wp-content/uploads/2018/11/cropped-tkachev-4.jpg\";s:6:\"height\";i:856;s:5:\"width\";i:2000;}}', 'yes'),
(167, 'category_children', 'a:0:{}', 'yes'),
(178, '_site_transient_timeout_theme_roots', '1542208129', 'no'),
(179, '_site_transient_theme_roots', 'a:2:{s:9:\"envo-blog\";s:7:\"/themes\";s:8:\"my_theme\";s:7:\"/themes\";}', 'no'),
(180, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1542206330;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:38:\"carbon-fields/carbon-fields-plugin.php\";s:5:\"2.2.0\";s:22:\"cyr3lat/cyr-to-lat.php\";s:3:\"3.5\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:38:\"carbon-fields/carbon-fields-plugin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/carbon-fields\";s:4:\"slug\";s:13:\"carbon-fields\";s:6:\"plugin\";s:38:\"carbon-fields/carbon-fields-plugin.php\";s:11:\"new_version\";s:5:\"1.6.0\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/carbon-fields/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/carbon-fields.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/carbon-fields/assets/icon-256x256.jpg?rev=1340610\";s:2:\"1x\";s:66:\"https://ps.w.org/carbon-fields/assets/icon-128x128.jpg?rev=1340610\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/carbon-fields/assets/banner-1544x500.png?rev=1703160\";s:2:\"1x\";s:68:\"https://ps.w.org/carbon-fields/assets/banner-772x250.png?rev=1703160\";}s:11:\"banners_rtl\";a:0:{}}s:22:\"cyr3lat/cyr-to-lat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/cyr3lat\";s:4:\"slug\";s:7:\"cyr3lat\";s:6:\"plugin\";s:22:\"cyr3lat/cyr-to-lat.php\";s:11:\"new_version\";s:3:\"3.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr3lat/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/cyr3lat.3.5.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:51:\"https://s.w.org/plugins/geopattern-icon/cyr3lat.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(182, '_site_transient_timeout_browser_88948936c8355fa92108d4448c2520d0', '1542835107', 'no'),
(183, '_site_transient_browser_88948936c8355fa92108d4448c2520d0', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"70.0.3538.102\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1542113150:1'),
(5, 2, '_wp_trash_meta_status', 'publish'),
(6, 2, '_wp_trash_meta_time', '1542113304'),
(7, 2, '_wp_desired_post_slug', 'sample-page'),
(8, 8, '_edit_last', '1'),
(9, 8, '_edit_lock', '1542113194:1'),
(10, 10, '_menu_item_type', 'custom'),
(11, 10, '_menu_item_menu_item_parent', '0'),
(12, 10, '_menu_item_object_id', '10'),
(13, 10, '_menu_item_object', 'custom'),
(14, 10, '_menu_item_target', ''),
(15, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(16, 10, '_menu_item_xfn', ''),
(17, 10, '_menu_item_url', 'http://tkachev.loc/'),
(19, 11, '_menu_item_type', 'post_type'),
(20, 11, '_menu_item_menu_item_parent', '0'),
(21, 11, '_menu_item_object_id', '5'),
(22, 11, '_menu_item_object', 'page'),
(23, 11, '_menu_item_target', ''),
(24, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(25, 11, '_menu_item_xfn', ''),
(26, 11, '_menu_item_url', ''),
(28, 12, '_wp_attached_file', '2018/11/tkachev.jpg'),
(29, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1425;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2018/11/tkachev.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"tkachev-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"tkachev-300x105.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"tkachev-768x269.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:269;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"tkachev-1024x359.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:359;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"tkachev-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"envo-blog-single\";a:4:{s:4:\"file\";s:20:\"tkachev-1140x500.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"envo-blog-thumbnail\";a:4:{s:4:\"file\";s:18:\"tkachev-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 12, '_wp_attachment_is_custom_background', 'my_theme'),
(31, 13, '_wp_trash_meta_status', 'publish'),
(32, 13, '_wp_trash_meta_time', '1542114183'),
(33, 14, '_wp_trash_meta_status', 'publish'),
(34, 14, '_wp_trash_meta_time', '1542114246'),
(35, 15, '_wp_attached_file', '2018/11/cropped-tkachev-1.jpg'),
(36, 15, '_wp_attachment_context', 'custom-header'),
(37, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1425;s:6:\"height\";i:356;s:4:\"file\";s:29:\"2018/11/cropped-tkachev-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-tkachev-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-tkachev-1-300x75.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"cropped-tkachev-1-768x192.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"cropped-tkachev-1-1024x256.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-tkachev-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"envo-blog-single\";a:4:{s:4:\"file\";s:30:\"cropped-tkachev-1-1140x356.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:356;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"envo-blog-thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-tkachev-1-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:12;}'),
(38, 15, '_wp_attachment_custom_header_last_used_my_theme', '1542114457'),
(39, 15, '_wp_attachment_is_custom_header', 'my_theme'),
(40, 16, '_wp_trash_meta_status', 'publish'),
(41, 16, '_wp_trash_meta_time', '1542114457'),
(42, 17, '_wp_attached_file', '2018/11/tkachev-2.jpg'),
(43, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5616;s:6:\"height\";i:3744;s:4:\"file\";s:21:\"2018/11/tkachev-2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"tkachev-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"tkachev-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"tkachev-2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"tkachev-2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"tkachev-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"envo-blog-single\";a:4:{s:4:\"file\";s:22:\"tkachev-2-1140x641.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:641;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"envo-blog-thumbnail\";a:4:{s:4:\"file\";s:20:\"tkachev-2-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1523529182\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"80\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(46, 19, '_wp_attached_file', '2018/11/cropped-tkachev-2-1.jpg'),
(47, 19, '_wp_attachment_context', 'custom-header'),
(48, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:886;s:4:\"file\";s:31:\"2018/11/cropped-tkachev-2-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-tkachev-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-tkachev-2-1-300x133.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"cropped-tkachev-2-1-768x340.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:340;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"cropped-tkachev-2-1-1024x454.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:454;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-tkachev-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"envo-blog-single\";a:4:{s:4:\"file\";s:32:\"cropped-tkachev-2-1-1140x641.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:641;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"envo-blog-thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-tkachev-2-1-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:17;}'),
(49, 19, '_wp_attachment_custom_header_last_used_my_theme', '1542114816'),
(50, 19, '_wp_attachment_is_custom_header', 'my_theme'),
(51, 20, '_edit_lock', '1542114808:1'),
(52, 20, '_wp_trash_meta_status', 'publish'),
(53, 20, '_wp_trash_meta_time', '1542114816'),
(54, 21, '_wp_attached_file', '2018/11/tkachev-4.jpg'),
(55, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:2000;s:4:\"file\";s:21:\"2018/11/tkachev-4.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"tkachev-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"tkachev-4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"tkachev-4-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"tkachev-4-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"tkachev-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"envo-blog-single\";a:4:{s:4:\"file\";s:22:\"tkachev-4-1140x641.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:641;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"envo-blog-thumbnail\";a:4:{s:4:\"file\";s:20:\"tkachev-4-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1523530189\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"200\";s:3:\"iso\";s:4:\"6400\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(56, 22, '_wp_attached_file', '2018/11/cropped-tkachev-4.jpg'),
(57, 22, '_wp_attachment_context', 'custom-header'),
(58, 22, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:856;s:4:\"file\";s:29:\"2018/11/cropped-tkachev-4.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-tkachev-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-tkachev-4-300x128.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"cropped-tkachev-4-768x329.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:329;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"cropped-tkachev-4-1024x438.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:438;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-tkachev-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"envo-blog-single\";a:4:{s:4:\"file\";s:30:\"cropped-tkachev-4-1140x641.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:641;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"envo-blog-thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-tkachev-4-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:21;}'),
(59, 22, '_wp_attachment_custom_header_last_used_my_theme', '1542115096'),
(60, 22, '_wp_attachment_is_custom_header', 'my_theme'),
(61, 23, '_wp_trash_meta_status', 'publish'),
(62, 23, '_wp_trash_meta_time', '1542115096'),
(63, 1, '_wp_trash_meta_status', 'publish'),
(64, 1, '_wp_trash_meta_time', '1542115457'),
(65, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(66, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(67, 25, '_edit_last', '1'),
(68, 25, '_edit_lock', '1542230328:1'),
(70, 5, '_wp_old_slug', '%d1%81%d1%82%d0%b0%d1%82%d1%8c%d0%b8'),
(71, 10, '_wp_old_slug', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f'),
(72, 25, '_wp_old_slug', '%d0%b2%d0%be-%d0%b2%d0%bb%d0%b0%d1%81%d1%82%d1%8c-%d0%bd%d0%b5-%d0%bb%d0%b5%d0%b7%d1%8c%d1%82%d0%b5-%d1%87%d1%83%d0%b4%d0%b5%d1%81-%d0%bd%d0%b5-%d0%b6%d0%b4%d0%b8%d1%82%d0%b5-%d1%87%d1%82%d0%be'),
(79, 28, '_menu_item_type', 'taxonomy'),
(80, 28, '_menu_item_menu_item_parent', '0'),
(81, 28, '_menu_item_object_id', '3'),
(82, 28, '_menu_item_object', 'category'),
(83, 28, '_menu_item_target', ''),
(84, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 28, '_menu_item_xfn', ''),
(86, 28, '_menu_item_url', ''),
(93, 25, '_crb_sidenote', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/l0yy4nh2Hok\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
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
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-11-13 15:42:06', '2018-11-13 12:42:06', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2018-11-13 16:24:17', '2018-11-13 13:24:17', '', 0, 'http://tkachev.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2018-11-13 15:42:06', '2018-11-13 12:42:06', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://tkachev.loc/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-11-13 15:48:24', '2018-11-13 12:48:24', '', 0, 'http://tkachev.loc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-11-13 15:42:06', '2018-11-13 12:42:06', '<h2>Кто мы</h2><p>Наш адрес сайта: http://tkachev.loc.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-11-13 15:42:06', '2018-11-13 12:42:06', '', 0, 'http://tkachev.loc/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-11-13 15:42:15', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-13 15:42:15', '0000-00-00 00:00:00', '', 0, 'http://tkachev.loc/?p=4', 0, 'post', '', 0),
(5, 1, '2018-11-13 15:48:10', '2018-11-13 12:48:10', '', 'Статьи', '', 'publish', 'closed', 'closed', '', 'stati', '', '', '2018-11-13 15:48:10', '2018-11-13 12:48:10', '', 0, 'http://tkachev.loc/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-11-13 15:48:10', '2018-11-13 12:48:10', '', 'Статьи', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-11-13 15:48:10', '2018-11-13 12:48:10', '', 5, 'http://tkachev.loc/2018/11/13/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-11-13 15:48:24', '2018-11-13 12:48:24', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://tkachev.loc/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-11-13 15:48:24', '2018-11-13 12:48:24', '', 2, 'http://tkachev.loc/2018/11/13/2-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-11-13 15:48:38', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-13 15:48:38', '2018-11-13 12:48:38', '', 0, 'http://tkachev.loc/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-11-13 15:48:38', '2018-11-13 12:48:38', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-11-13 15:48:38', '2018-11-13 12:48:38', '', 8, 'http://tkachev.loc/2018/11/13/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-11-13 15:49:27', '2018-11-13 12:49:27', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaya', '', '', '2018-11-13 16:57:55', '2018-11-13 13:57:55', '', 0, 'http://tkachev.loc/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2018-11-13 15:49:27', '2018-11-13 12:49:27', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2018-11-13 16:57:55', '2018-11-13 13:57:55', '', 0, 'http://tkachev.loc/?p=11', 3, 'nav_menu_item', '', 0),
(12, 1, '2018-11-13 16:02:58', '2018-11-13 13:02:58', '', 'tkachev', '', 'inherit', 'open', 'closed', '', 'tkachev', '', '', '2018-11-13 16:02:58', '2018-11-13 13:02:58', '', 0, 'http://tkachev.loc/wp-content/uploads/2018/11/tkachev.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-11-13 16:03:03', '2018-11-13 13:03:03', '{\n    \"my_theme::background_image\": {\n        \"value\": \"http://tkachev.loc/wp-content/uploads/2018/11/tkachev.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-13 13:03:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5ddb55ce-4626-4618-8925-ddec3d57c605', '', '', '2018-11-13 16:03:03', '2018-11-13 13:03:03', '', 0, 'http://tkachev.loc/2018/11/13/5ddb55ce-4626-4618-8925-ddec3d57c605/', 0, 'customize_changeset', '', 0),
(14, 1, '2018-11-13 16:04:06', '2018-11-13 13:04:06', '{\n    \"my_theme::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-13 13:04:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7ba757a1-74ee-4159-8061-1d5dab827cee', '', '', '2018-11-13 16:04:06', '2018-11-13 13:04:06', '', 0, 'http://tkachev.loc/2018/11/13/7ba757a1-74ee-4159-8061-1d5dab827cee/', 0, 'customize_changeset', '', 0),
(15, 1, '2018-11-13 16:07:29', '2018-11-13 13:07:29', '', 'cropped-tkachev-1.jpg', '', 'inherit', 'closed', 'closed', '', 'cropped-tkachev-jpg', '', '', '2018-11-13 16:07:29', '2018-11-13 13:07:29', '', 0, 'http://tkachev.loc/wp-content/uploads/2018/11/cropped-tkachev.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-11-13 16:07:37', '2018-11-13 13:07:37', '{\n    \"my_theme::header_image\": {\n        \"value\": \"http://tkachev.loc/wp-content/uploads/2018/11/cropped-tkachev-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-13 13:07:37\"\n    },\n    \"my_theme::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://tkachev.loc/wp-content/uploads/2018/11/cropped-tkachev-1.jpg\",\n            \"thumbnail_url\": \"http://tkachev.loc/wp-content/uploads/2018/11/cropped-tkachev-1.jpg\",\n            \"timestamp\": 1542114449895,\n            \"attachment_id\": 15,\n            \"width\": 1425,\n            \"height\": 356\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-13 13:07:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '467a79fd-be88-4497-a77c-69f36f9b47c0', '', '', '2018-11-13 16:07:37', '2018-11-13 13:07:37', '', 0, 'http://tkachev.loc/2018/11/13/467a79fd-be88-4497-a77c-69f36f9b47c0/', 0, 'customize_changeset', '', 0),
(17, 1, '2018-11-13 16:11:27', '2018-11-13 13:11:27', '', 'tkachev-2', '', 'inherit', 'open', 'closed', '', 'tkachev-2', '', '', '2018-11-13 16:11:27', '2018-11-13 13:11:27', '', 0, 'http://tkachev.loc/wp-content/uploads/2018/11/tkachev-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-11-13 16:13:16', '2018-11-13 13:13:16', '', 'cropped-tkachev-2-1.jpg', '', 'inherit', 'closed', 'closed', '', 'cropped-tkachev-2-jpg', '', '', '2018-11-13 16:13:16', '2018-11-13 13:13:16', '', 0, 'http://tkachev.loc/wp-content/uploads/2018/11/cropped-tkachev-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-11-13 16:13:36', '2018-11-13 13:13:36', '{\n    \"my_theme::header_image\": {\n        \"value\": \"http://tkachev.loc/wp-content/uploads/2018/11/cropped-tkachev-2-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-13 13:13:28\"\n    },\n    \"my_theme::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://tkachev.loc/wp-content/uploads/2018/11/cropped-tkachev-2-1.jpg\",\n            \"thumbnail_url\": \"http://tkachev.loc/wp-content/uploads/2018/11/cropped-tkachev-2-1.jpg\",\n            \"timestamp\": 1542114797496,\n            \"attachment_id\": 19,\n            \"width\": 2000,\n            \"height\": 886\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-13 13:13:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5732f45d-1882-437a-9090-17b1dc7ecd5a', '', '', '2018-11-13 16:13:36', '2018-11-13 13:13:36', '', 0, 'http://tkachev.loc/?p=20', 0, 'customize_changeset', '', 0),
(21, 1, '2018-11-13 16:17:47', '2018-11-13 13:17:47', '', 'tkachev-4', '', 'inherit', 'open', 'closed', '', 'tkachev-4', '', '', '2018-11-13 16:17:47', '2018-11-13 13:17:47', '', 0, 'http://tkachev.loc/wp-content/uploads/2018/11/tkachev-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-11-13 16:18:09', '2018-11-13 13:18:09', '', 'cropped-tkachev-4.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-tkachev-4-jpg', '', '', '2018-11-13 16:18:09', '2018-11-13 13:18:09', '', 0, 'http://tkachev.loc/wp-content/uploads/2018/11/cropped-tkachev-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-11-13 16:18:16', '2018-11-13 13:18:16', '{\n    \"my_theme::header_image\": {\n        \"value\": \"http://tkachev.loc/wp-content/uploads/2018/11/cropped-tkachev-4.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-13 13:18:16\"\n    },\n    \"my_theme::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://tkachev.loc/wp-content/uploads/2018/11/cropped-tkachev-4.jpg\",\n            \"thumbnail_url\": \"http://tkachev.loc/wp-content/uploads/2018/11/cropped-tkachev-4.jpg\",\n            \"timestamp\": 1542115090043,\n            \"attachment_id\": 22,\n            \"width\": 2000,\n            \"height\": 856\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-13 13:18:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c0de3099-70a3-476d-a5fa-53c69e462abc', '', '', '2018-11-13 16:18:16', '2018-11-13 13:18:16', '', 0, 'http://tkachev.loc/2018/11/13/c0de3099-70a3-476d-a5fa-53c69e462abc/', 0, 'customize_changeset', '', 0),
(24, 1, '2018-11-13 16:24:17', '2018-11-13 13:24:17', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-11-13 16:24:17', '2018-11-13 13:24:17', '', 1, 'http://tkachev.loc/2018/11/13/1-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-11-13 16:40:14', '2018-11-13 13:40:14', 'Сегодня из Евангелии мы читали о том, что было после того, как Христос крестился от Иоанна на Иорданской реке. Крестившись от Иоанна, Христос от духа святого ушел в пустыню и там провел 40 дней, ничего не едя, ничего не пия, 40 дней в полном посте.\r\n\r\nМы постом с вами называем исключение из рациона мясной, молочной пищи, частные молитвы и всякий такой телесный, духовный труд. На самом деле, пост – это полное неедение. То, что мы называем постом, скорее всего называется несдержанием и говением. А, когда человек совсем не ест, и совсем не пьет, это и есть пост. Когда он делает это ради Христа, ради высших духовных целей, ради покаяния, ради веры, то это и есть духовный пост. Христос провел 40 дней в пустыне, ничего не ел, ничего не пил, находился в общении со своим отцом, напоследок взалкал.\r\n\r\nПо истечении 40 дней, его телесный состав безгрешный изнурился. Он ощутил голод в себе. Он ощутил голод в себе, и дал возможность себе почувствовать в себе страдание человека давно не евшего. На этот момент, к нему поступил дьявол.\r\n\r\nИ мы сегодня читали евангелие от Матвея, где описывается как искуситель подошел к Христу и предложил несколько вопросов, несколько искушений, в которых выразил всю свою сущность, все то чем он борол людей и будет бороть до страшного суда.\r\n\r\nХристос вытерпел три искушений и победил так, что дьявол удивился. Самое первое, что дьявол сделал, он приступил к нему и сказал ему:\r\n\r\n-Если ты сын божий, сделай так, чтобы эти камни были хлебами. Что ты мучаешься? Ну наешься, что ты не можешь себе хлеба сделать? Ну сделай хлеб из камня и поешь. Что ты страдаешь?\r\n\r\nИ это искушение хлебом было самым первом, потому, что человек это телесное-духовное существо, но после грехопадение, дух наш подавлен плотью, и проблемы плоти как бы на виду. А проблемы духа, они не на виду. Мы свои проблемы духовные замечаем очень поздно и очень плохо. А проблемы плоти мы замечаем очень быстро, зуб заболел, нога подвернулась, есть хочу, спать хочу. Таким образом, мы телесные свои проблемы замечаем быстро.\r\n\r\nИ вот это телесность наша очень слабая. Христос воплотился, стал человеком, взял на себя слабую телесность, которая от холода дрожит, от жары потеет, без хлеба есть хочет, от труда устает. Вот эту слабую телесность Христос взял на себя и показал нам силу ее. Вот видите, он в нашем теле 40 дней ничего не ел и не пил. В принципе ресурсы наши очень велики. Человек может очень многое, если захочет. Другое дело, что он не хочет, он не верит в то, что он может.\r\n\r\nВот доктора говорят, что выносливость наших органов рассчитаны на 5-6 раз больше, чем мы используем. Человек очень выносливое существо. Его вроде бы убить можно одним щелчком, если Бог благословит, а если Бог не благословит, то ты его и в воде не утопишь, и в огне не сгоришь.\r\n\r\nМы используем свои возможности на маленький процент. Мы очень глубоко и сильно талантливы, каждый из нас, и в нас огромный ресурс есть. Христос нам показывает, при всей нашей слабости, человек очень силен.\r\n\r\nВот лукавый приступил к нему и сказал:\r\n\r\n- Ну вот сделай хлеб из камня и поешь.\r\n\r\nОтвечает ему Иисус Христос словами не своими, но словами, которые уже были сказаны в книги во-второзаконие.  Там сказано: “И не хлебом единым будет жить человек. Но всяким глаголом исходящим из уст божий”. Очень важные слова, эти слова нужно запомнить всем нам, потому что человек если не имеет хлеба, умирает от голода, а если не имеет хлеба, тоже умирает, только не так явно. И есть голод хлеба, и есть голод слова божьего. У одного из пророков написано: “Будет на земле такой специфический особенный голод, ни голод хлеба, ни жажда воды, но голод слышанья слов господня. Люди будут скитаться с севера на юг и с востока на запад, ища, кто бы им сказал слово божье”. То есть, душа человека погибает без божьих слов. И для того, чтобы не умирать христиане, нужно чаще открывать свое ухо, к слову, господня в храме, а в домах своих, пробегаете глазами по страницам бессмертной книги, по священному писанью. Библию нужно писать каждому христианину. Каждый христианин обязан читать библию. Если он этого не делает, он тяжко согрешает из-за того, что он не знает божьей воли.\r\n\r\nГазеты читает, рецепты читает, гороскопы читает, а библию он не читает. И он этот пенек тупой, всю жизнь в грехах проживает, потому что он себя добровольно исключил себя из числа людей божьих. Он не читает божье слово. Человек не может жить одним хлебом. Если бы он жил как свинья, он бы ждал, чтобы ему в корыто насыпали, а он не свинья, он человек. Он должен жить едой для тела и едой для духа. Божьим словом живет дух человеческий. И кто из вас его не знает, не слушает, не хочет, тот уже мертвый, тот уже воняет, он уже труп, только не закопанный.\r\n\r\nГрешник – это не закопанный труп. Для того, чтобы этого не было с человеком, нужно ожить. Говорит: “Воскресни, восстань спящий, воскресни от мертвых и освятит тебя Христос.”\r\n\r\nВот Христос нам говорит, что не может жить человек только хлебом, только маслом, только колбасой, он должен жить всяким глаголом, исходящим из уст божьих. Вот чем живет человек.\r\n\r\nА хлеб – это само собой, он нам нужен, потому мы и молимся “хлеб наш насущный, дай нам сегодня”. Мы просим о хлебе, но не может жить только хлебом человек и всякой едой земной, он должен богом жить. Нету этого, ну тогда все, конец.\r\n\r\nЭто первое искушение было – телесное, искушение плотью. А второе и третье искушение, духовное, они у Луки и Матвея меняются местами. У Матвея говорится, что поставил дьявол Иисуса Христа на крыло храма, как бы на крышу и говорит ему:\r\n\r\n- Бросься в низ.\r\n\r\nПотому что написано, ангелы божьи подхватят тебя и ты не приткнешься ногою твоею. Христос отвечает ему тоже не словами своими, но словами уже сказанными, словами книги Второзакония: “Не искушай Господа своего”. То есть не вынуждай бога на чудо. То есть, не делай так, чтобы Господь вынужден был творить чудеса с тобою. Не лезь на рожон, не ходи там, где тонко.\r\n\r\nЧто это значит. Вот, например, человек идет на лед рыбу ловить, ему говорят: “не ходи туда, лед тонкий. Да ладно, ничего страшного” . Полез, провалился, спасли, не спасли, это уже другой вопрос. Не искушай бога твоего, не лезь на рожон, тихо сиди, нарвешься, сам будешь виноват.\r\n\r\nБог постоянно спасает людей, из огня вынимает, из воды вытаскивает, у края крыши удерживает их, чтобы они не бросились в низ. В день, сколько происходит в мире автомобильных аварий, сколько людей калечатся, а некоторые улетают от беды в сантиметре от смерти. Господь бережет человека, но ты не искушай бога твоего. Допустим, выпил – за руль не садись, то есть, не искушай господа бога твоего.\r\n\r\nВот пришел муж подвыпивший. Оставь его в покое. Начнешь его пилить, он тебе как даст, он же не понимает ничего. Дай ему проспаться. Будешь его пилить, когда он трезвый будет, когда ему плохо будет с утра. Не искушай господа, не лезь сейчас к нему, не трогай его.\r\n\r\nНе заставляй Бога творить чудо с тобой, он и так, ежесекундно творит чудо. Волосы растут у человека, разве это не чудо. Я вас вижу, вы меня видите, разве это не чудо. Не нужно чего-то особенного творить и вынуждать Бога на особые действия.\r\n\r\nПри чем заметьте, что дьявол цитирует 90 псалом, мы читаем его, когда нам угрожает какая-нибудь опасность, и мы хотим, чтобы Бог нас защитил. Лукавый псалом 90 цитирует Христу для того, чтобы искусить его и говорит ему: “ангелы подхватят тебя и не приткнёшься ногою твоею”.\r\n\r\nТо есть, он умеет цитировать для соблазна, те псалмы, которые мы читаем для защиты от него. Можете себе представить, как лукавый искушает людей словами из священного писания. Христос тоже отвечал ему словами из священного писанья. Это значит, что в священном писание есть много чего, и самое главное к месту и по делу употреблять слова из священного писания. Не к месту и не по делу, цитированные слова из священного писания, могут быть дьявольским соблазном, о чем мы знаем, при общении с разными сектантами, с различными магами, чародеями и сектантами. Которыми могут и иконами обвешаться, и свечи позажигать и библию понаоткрыть. И глупые люди этим и соблазняются, потому что не знают ни силы божьей, ни слово божьей.\r\n\r\nЧеловек, чтобы спастись, чтобы соблазна обойти, должен быть очень умным, искушенным, грамотным и внимательным человеком. На легкой волне, не проживет человек, сожрет его сатана. Сожрет с костями, с хрустом сожрет, потому что слишком сложно стало жить человеку, слишком хитрый лукавый, слишком он набрался опыта пожирать людей. И в простоте спастись, очень трудно человеку. Потому что сатана и Христу может предлагать слова из священных псалмов.\r\n\r\nА третье искушение было искушение властью. Повел сатана Христа на высокую гору и показал ему все царствие мира со всеми соблазнами. Показал ему всю роскошь, всю богатство одежд, все красоты храмов, все вкусное, все манящее и сладкое, все перед чем тает сердце человеческое. - - -- Хочешь это? Покажи любому человеку.\r\n\r\n- Конечно хочу.\r\n\r\n- Хочешь жить здесь,\r\n\r\n- Хочу.\r\n\r\n- А покупаться здесь хочешь?\r\n\r\n- Хочу.\r\n\r\n- А на этой яхте покататься?\r\n\r\n- Хочу.\r\n\r\n- А в этой одеться?\r\n\r\n- Хочу.\r\n\r\nА кто не хочет, все хотят. А он Христу в секунду показал все. Говорит: “Я тебе все дам, только поклонись мне”. И Христос ему сказал опять словами книги Второзакония: “Уйди от меня сатана, Богу нужно поклоняться и ему одному служить”. И дьявол сильно удивился, потому что он знает, что всех нас, он кладет на обои лопатки плотью, чудом и властью.\r\n\r\nПлотью не поборол, власть поборет, властью не поборол, чудом поборет. Дьявол всех поборет, и вдруг кто-то один в пустыни, это отвел, второе отвел и третье отвел и абсолютно не уязвлённо остался. И говорит: “Кто это такой”? Потому что не знал сатана кто это Христос. Не знал до конца.\r\n\r\nИ Христос победил его в пустыне, для того чтобы мы с вами не поддавались на плоть, на чудо и на власть. Во власть не лезли, чудес не хотели и плоть свою смиряли. Вот тогда будет свободен человек. Сколько сейчас мир про свободу кричит, это очень смешно и глупо.\r\n\r\nЭто как после революции был анекдот: “Когда хлеба не было, работы не было, стреляли на улице, досками окна забиты, ну кошмар. Хотели свободы, получили концлагерь. Стоит извозчик, замерзший в тулупе такой, подходит мужик к нему.\r\n\r\n- Извозчик свободен?\r\n\r\n- Свободен.\r\n\r\n- Так кричи, да здраствует свобода! ”\r\n\r\nПонимаете, люди хотят сегодня свободы, но какая сейчас может быть свобода, если ты раб своего желудка, если ты раб телевизора, если ты раб своих страстей. Какая тут может быть свобода, если ты весть в рабстве повязан с рук до ног своими грехами.\r\n\r\nДревние римляне сказали: “Никто не свободен из тех, кто служит своему чреву”. Не постящийся человек, не свободен. Если ты курить не можешь бросить, какой ты свободен. Не можешь бросать, нет пачки сигарет, и ты страдаешь. Нет свободы, там, где есть грех. Нет свободы, там, где есть зависимость.\r\n\r\nХристос, абсолютно свободных бога человек. И он пришел дать нам свободу. А лукавый борет нас тремя вещами: “плотью, чудом и властью”.\r\n\r\nВот смотрите, три вещи. Вот, когда мать наша Ева, в раю смотрела на запретный плод, сатана спросил ее: “Правда, что Господь запретил вам есть от всякого дерева в раю? Она говорит, нет, он не запретил, он сказал ешьте от всякого дерева, только от одного дерева не ешьте и не прикасайтесь к нему. Хотя Бог не говорил не прикасайтесь, она добавила от себя. 16:40 Божьим храм добавлять нельзя, если добавишь, то потом отнимешь. Бог, вот от этого не ешьте. А сатана говорит, а чего, смотрите какое красивое, съешь, и будете как боги, не умрете, не бойтесь, и будете как бог. Она посмотрела на плод запрещенный и увидела, что он приятен в пищу, красив, для глаза приятный, и очень желателен, потому что дает знания”.\r\n\r\nЭто три вещи, то, что дьявол предложил Христу в пустыне. Значит, приятный в пищу, скажи, чтобы камни превратились в хлеб. Красивые для глаза, все царства мира за мгновение ока. И третье, желательный был плод, потому что знания дает. Вот сейчас съем и буду все знать. Как в сказках, вот съем сейчас чего-нибудь и начну летать, вот съем чего-нибудь, и смогу исцелить. Это магическое желание власти. Это все было в запретном плоду, уже.\r\n\r\nИ потом Иоанн Богослов говорит: “Дети не любите все что в мире, потому что это похоть плоти, похоть очей и гордость житейское”. Все что в мире есть это:\r\n<ol>\r\n 	<li>Похоть плоти (повеселиться, потанцевать, поесть, попить, покурить).</li>\r\n 	<li>Похоть очей (поглядеть жадным глазом на витрины, в телевизор), как Соломон сказал, не насытиться око зрением, глаз он же жадный, он пожирает весь мир, он такой маленький, но ненасытный такой, он весь мир хочет сожрать. Чем занимаются всякие туристы безмозглые, себя фотографирует на фоне пирамид разных, там всяких статуй. Ведь это же безумие, вот это посмотрю и себя сфотографирую.</li>\r\n 	<li>Гордость житейское.</li>\r\n</ol>\r\nВот мы сегодня это прочитал для того, чтобы на себя посмотрели и на мир. А что здесь такое творится в мире, а ничего нового. Похоть плоти, похоть очей и гордость житейское. А что-нибудь еще есть? Нету. Ну поищите что-нибудь еще? Да нету больше ничего. Все остальное у Господа, все остальное святое. А вот все что мир предлагает, это оно и есть.\r\n\r\nВот сегодня вы послушали в Евангелии, поговорили об этом и пойдите домой и почитайте об этом сами. Чтобы вы не думали, что я вам это сказал, это Христос сказал. Это сказал апостол Матвей и апостол Лука. Христос эти три искушения победил, а мы даже не замечаем, как они на нас действуют. Потому что лукавый нас борет этим.\r\n\r\nА если вы любитель почитать духовную литературу, то почитайте из романа Достоевского Братья Карамазовы, великий инквизитор. Это может быть одни из самых важных страниц в мировой литературе.\r\n\r\nЧеловек, который ничего не читает – это мертвый человек. Человек, который не читает Евангелии и не слушает ее – это мертвый человек. А мы пришли в мир не для того, чтобы просто жить, а для того, чтобы жить вечно. Для того, чтобы мы по лестнице Якова, ступенька за ступенькой поднимались в царство небесное.\r\n\r\nЕсли бы вас здесь не было, я бы сам себе это рассказал. Поставил перед собой зеркало, и сам с себе бы рассказал. Потому что это также мне надо, как и вам надо. Читать Евангелие, не подаваться на похоть плоти, не гордится, власть и славы не искать, любить Христа, Богу одному поклоняться, и ему одному служить, не искушать господа бога своего, и жить не только хлебом и колбасой, но жить и евангелием святым, молитвой и церковью. Это сегодня говорит нам святое Евангелие.\r\n\r\nЯ хочу, чтобы мое сердце запомнила, и чтобы ваши сердца тоже запомнили.\r\n\r\nАминь.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Во власть не лезьте, чудес не ждите!\" Что такое настоящая свобода, если ты зависим от сигарет?', 'Цитата для новой записи', 'publish', 'open', 'open', '', 'vo-vlast-ne-lezte-chudes-ne-zhdite-chto', '', '', '2018-11-15 00:18:46', '2018-11-14 21:18:46', '', 0, 'http://tkachev.loc/?p=25', 0, 'post', '', 0),
(26, 1, '2018-11-13 16:40:14', '2018-11-13 13:40:14', '', 'Во власть не лезьте, чудес не ждите!\" Что такое настоящая свобода, если ты зависим от сигарет?', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-11-13 16:40:14', '2018-11-13 13:40:14', '', 25, 'http://tkachev.loc/2018/11/13/25-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-11-13 16:55:47', '2018-11-13 13:55:47', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2018-11-13 16:57:55', '2018-11-13 13:57:55', '', 0, 'http://tkachev.loc/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2018-11-13 17:05:25', '2018-11-13 14:05:25', 'Контент для новой записи', 'Во власть не лезьте, чудес не ждите!\" Что такое настоящая свобода, если ты зависим от сигарет?', 'Цитата для новой записи', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-11-13 17:05:25', '2018-11-13 14:05:25', '', 25, 'http://tkachev.loc/2018/11/13/25-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-11-15 00:18:46', '2018-11-14 21:18:46', 'Сегодня из Евангелии мы читали о том, что было после того, как Христос крестился от Иоанна на Иорданской реке. Крестившись от Иоанна, Христос от духа святого ушел в пустыню и там провел 40 дней, ничего не едя, ничего не пия, 40 дней в полном посте.\r\n\r\nМы постом с вами называем исключение из рациона мясной, молочной пищи, частные молитвы и всякий такой телесный, духовный труд. На самом деле, пост – это полное неедение. То, что мы называем постом, скорее всего называется несдержанием и говением. А, когда человек совсем не ест, и совсем не пьет, это и есть пост. Когда он делает это ради Христа, ради высших духовных целей, ради покаяния, ради веры, то это и есть духовный пост. Христос провел 40 дней в пустыне, ничего не ел, ничего не пил, находился в общении со своим отцом, напоследок взалкал.\r\n\r\nПо истечении 40 дней, его телесный состав безгрешный изнурился. Он ощутил голод в себе. Он ощутил голод в себе, и дал возможность себе почувствовать в себе страдание человека давно не евшего. На этот момент, к нему поступил дьявол.\r\n\r\nИ мы сегодня читали евангелие от Матвея, где описывается как искуситель подошел к Христу и предложил несколько вопросов, несколько искушений, в которых выразил всю свою сущность, все то чем он борол людей и будет бороть до страшного суда.\r\n\r\nХристос вытерпел три искушений и победил так, что дьявол удивился. Самое первое, что дьявол сделал, он приступил к нему и сказал ему:\r\n\r\n-Если ты сын божий, сделай так, чтобы эти камни были хлебами. Что ты мучаешься? Ну наешься, что ты не можешь себе хлеба сделать? Ну сделай хлеб из камня и поешь. Что ты страдаешь?\r\n\r\nИ это искушение хлебом было самым первом, потому, что человек это телесное-духовное существо, но после грехопадение, дух наш подавлен плотью, и проблемы плоти как бы на виду. А проблемы духа, они не на виду. Мы свои проблемы духовные замечаем очень поздно и очень плохо. А проблемы плоти мы замечаем очень быстро, зуб заболел, нога подвернулась, есть хочу, спать хочу. Таким образом, мы телесные свои проблемы замечаем быстро.\r\n\r\nИ вот это телесность наша очень слабая. Христос воплотился, стал человеком, взял на себя слабую телесность, которая от холода дрожит, от жары потеет, без хлеба есть хочет, от труда устает. Вот эту слабую телесность Христос взял на себя и показал нам силу ее. Вот видите, он в нашем теле 40 дней ничего не ел и не пил. В принципе ресурсы наши очень велики. Человек может очень многое, если захочет. Другое дело, что он не хочет, он не верит в то, что он может.\r\n\r\nВот доктора говорят, что выносливость наших органов рассчитаны на 5-6 раз больше, чем мы используем. Человек очень выносливое существо. Его вроде бы убить можно одним щелчком, если Бог благословит, а если Бог не благословит, то ты его и в воде не утопишь, и в огне не сгоришь.\r\n\r\nМы используем свои возможности на маленький процент. Мы очень глубоко и сильно талантливы, каждый из нас, и в нас огромный ресурс есть. Христос нам показывает, при всей нашей слабости, человек очень силен.\r\n\r\nВот лукавый приступил к нему и сказал:\r\n\r\n- Ну вот сделай хлеб из камня и поешь.\r\n\r\nОтвечает ему Иисус Христос словами не своими, но словами, которые уже были сказаны в книги во-второзаконие.  Там сказано: “И не хлебом единым будет жить человек. Но всяким глаголом исходящим из уст божий”. Очень важные слова, эти слова нужно запомнить всем нам, потому что человек если не имеет хлеба, умирает от голода, а если не имеет хлеба, тоже умирает, только не так явно. И есть голод хлеба, и есть голод слова божьего. У одного из пророков написано: “Будет на земле такой специфический особенный голод, ни голод хлеба, ни жажда воды, но голод слышанья слов господня. Люди будут скитаться с севера на юг и с востока на запад, ища, кто бы им сказал слово божье”. То есть, душа человека погибает без божьих слов. И для того, чтобы не умирать христиане, нужно чаще открывать свое ухо, к слову, господня в храме, а в домах своих, пробегаете глазами по страницам бессмертной книги, по священному писанью. Библию нужно писать каждому христианину. Каждый христианин обязан читать библию. Если он этого не делает, он тяжко согрешает из-за того, что он не знает божьей воли.\r\n\r\nГазеты читает, рецепты читает, гороскопы читает, а библию он не читает. И он этот пенек тупой, всю жизнь в грехах проживает, потому что он себя добровольно исключил себя из числа людей божьих. Он не читает божье слово. Человек не может жить одним хлебом. Если бы он жил как свинья, он бы ждал, чтобы ему в корыто насыпали, а он не свинья, он человек. Он должен жить едой для тела и едой для духа. Божьим словом живет дух человеческий. И кто из вас его не знает, не слушает, не хочет, тот уже мертвый, тот уже воняет, он уже труп, только не закопанный.\r\n\r\nГрешник – это не закопанный труп. Для того, чтобы этого не было с человеком, нужно ожить. Говорит: “Воскресни, восстань спящий, воскресни от мертвых и освятит тебя Христос.”\r\n\r\nВот Христос нам говорит, что не может жить человек только хлебом, только маслом, только колбасой, он должен жить всяким глаголом, исходящим из уст божьих. Вот чем живет человек.\r\n\r\nА хлеб – это само собой, он нам нужен, потому мы и молимся “хлеб наш насущный, дай нам сегодня”. Мы просим о хлебе, но не может жить только хлебом человек и всякой едой земной, он должен богом жить. Нету этого, ну тогда все, конец.\r\n\r\nЭто первое искушение было – телесное, искушение плотью. А второе и третье искушение, духовное, они у Луки и Матвея меняются местами. У Матвея говорится, что поставил дьявол Иисуса Христа на крыло храма, как бы на крышу и говорит ему:\r\n\r\n- Бросься в низ.\r\n\r\nПотому что написано, ангелы божьи подхватят тебя и ты не приткнешься ногою твоею. Христос отвечает ему тоже не словами своими, но словами уже сказанными, словами книги Второзакония: “Не искушай Господа своего”. То есть не вынуждай бога на чудо. То есть, не делай так, чтобы Господь вынужден был творить чудеса с тобою. Не лезь на рожон, не ходи там, где тонко.\r\n\r\nЧто это значит. Вот, например, человек идет на лед рыбу ловить, ему говорят: “не ходи туда, лед тонкий. Да ладно, ничего страшного” . Полез, провалился, спасли, не спасли, это уже другой вопрос. Не искушай бога твоего, не лезь на рожон, тихо сиди, нарвешься, сам будешь виноват.\r\n\r\nБог постоянно спасает людей, из огня вынимает, из воды вытаскивает, у края крыши удерживает их, чтобы они не бросились в низ. В день, сколько происходит в мире автомобильных аварий, сколько людей калечатся, а некоторые улетают от беды в сантиметре от смерти. Господь бережет человека, но ты не искушай бога твоего. Допустим, выпил – за руль не садись, то есть, не искушай господа бога твоего.\r\n\r\nВот пришел муж подвыпивший. Оставь его в покое. Начнешь его пилить, он тебе как даст, он же не понимает ничего. Дай ему проспаться. Будешь его пилить, когда он трезвый будет, когда ему плохо будет с утра. Не искушай господа, не лезь сейчас к нему, не трогай его.\r\n\r\nНе заставляй Бога творить чудо с тобой, он и так, ежесекундно творит чудо. Волосы растут у человека, разве это не чудо. Я вас вижу, вы меня видите, разве это не чудо. Не нужно чего-то особенного творить и вынуждать Бога на особые действия.\r\n\r\nПри чем заметьте, что дьявол цитирует 90 псалом, мы читаем его, когда нам угрожает какая-нибудь опасность, и мы хотим, чтобы Бог нас защитил. Лукавый псалом 90 цитирует Христу для того, чтобы искусить его и говорит ему: “ангелы подхватят тебя и не приткнёшься ногою твоею”.\r\n\r\nТо есть, он умеет цитировать для соблазна, те псалмы, которые мы читаем для защиты от него. Можете себе представить, как лукавый искушает людей словами из священного писания. Христос тоже отвечал ему словами из священного писанья. Это значит, что в священном писание есть много чего, и самое главное к месту и по делу употреблять слова из священного писания. Не к месту и не по делу, цитированные слова из священного писания, могут быть дьявольским соблазном, о чем мы знаем, при общении с разными сектантами, с различными магами, чародеями и сектантами. Которыми могут и иконами обвешаться, и свечи позажигать и библию понаоткрыть. И глупые люди этим и соблазняются, потому что не знают ни силы божьей, ни слово божьей.\r\n\r\nЧеловек, чтобы спастись, чтобы соблазна обойти, должен быть очень умным, искушенным, грамотным и внимательным человеком. На легкой волне, не проживет человек, сожрет его сатана. Сожрет с костями, с хрустом сожрет, потому что слишком сложно стало жить человеку, слишком хитрый лукавый, слишком он набрался опыта пожирать людей. И в простоте спастись, очень трудно человеку. Потому что сатана и Христу может предлагать слова из священных псалмов.\r\n\r\nА третье искушение было искушение властью. Повел сатана Христа на высокую гору и показал ему все царствие мира со всеми соблазнами. Показал ему всю роскошь, всю богатство одежд, все красоты храмов, все вкусное, все манящее и сладкое, все перед чем тает сердце человеческое. - - -- Хочешь это? Покажи любому человеку.\r\n\r\n- Конечно хочу.\r\n\r\n- Хочешь жить здесь,\r\n\r\n- Хочу.\r\n\r\n- А покупаться здесь хочешь?\r\n\r\n- Хочу.\r\n\r\n- А на этой яхте покататься?\r\n\r\n- Хочу.\r\n\r\n- А в этой одеться?\r\n\r\n- Хочу.\r\n\r\nА кто не хочет, все хотят. А он Христу в секунду показал все. Говорит: “Я тебе все дам, только поклонись мне”. И Христос ему сказал опять словами книги Второзакония: “Уйди от меня сатана, Богу нужно поклоняться и ему одному служить”. И дьявол сильно удивился, потому что он знает, что всех нас, он кладет на обои лопатки плотью, чудом и властью.\r\n\r\nПлотью не поборол, власть поборет, властью не поборол, чудом поборет. Дьявол всех поборет, и вдруг кто-то один в пустыни, это отвел, второе отвел и третье отвел и абсолютно не уязвлённо остался. И говорит: “Кто это такой”? Потому что не знал сатана кто это Христос. Не знал до конца.\r\n\r\nИ Христос победил его в пустыне, для того чтобы мы с вами не поддавались на плоть, на чудо и на власть. Во власть не лезли, чудес не хотели и плоть свою смиряли. Вот тогда будет свободен человек. Сколько сейчас мир про свободу кричит, это очень смешно и глупо.\r\n\r\nЭто как после революции был анекдот: “Когда хлеба не было, работы не было, стреляли на улице, досками окна забиты, ну кошмар. Хотели свободы, получили концлагерь. Стоит извозчик, замерзший в тулупе такой, подходит мужик к нему.\r\n\r\n- Извозчик свободен?\r\n\r\n- Свободен.\r\n\r\n- Так кричи, да здраствует свобода! ”\r\n\r\nПонимаете, люди хотят сегодня свободы, но какая сейчас может быть свобода, если ты раб своего желудка, если ты раб телевизора, если ты раб своих страстей. Какая тут может быть свобода, если ты весть в рабстве повязан с рук до ног своими грехами.\r\n\r\nДревние римляне сказали: “Никто не свободен из тех, кто служит своему чреву”. Не постящийся человек, не свободен. Если ты курить не можешь бросить, какой ты свободен. Не можешь бросать, нет пачки сигарет, и ты страдаешь. Нет свободы, там, где есть грех. Нет свободы, там, где есть зависимость.\r\n\r\nХристос, абсолютно свободных бога человек. И он пришел дать нам свободу. А лукавый борет нас тремя вещами: “плотью, чудом и властью”.\r\n\r\nВот смотрите, три вещи. Вот, когда мать наша Ева, в раю смотрела на запретный плод, сатана спросил ее: “Правда, что Господь запретил вам есть от всякого дерева в раю? Она говорит, нет, он не запретил, он сказал ешьте от всякого дерева, только от одного дерева не ешьте и не прикасайтесь к нему. Хотя Бог не говорил не прикасайтесь, она добавила от себя. 16:40 Божьим храм добавлять нельзя, если добавишь, то потом отнимешь. Бог, вот от этого не ешьте. А сатана говорит, а чего, смотрите какое красивое, съешь, и будете как боги, не умрете, не бойтесь, и будете как бог. Она посмотрела на плод запрещенный и увидела, что он приятен в пищу, красив, для глаза приятный, и очень желателен, потому что дает знания”.\r\n\r\nЭто три вещи, то, что дьявол предложил Христу в пустыне. Значит, приятный в пищу, скажи, чтобы камни превратились в хлеб. Красивые для глаза, все царства мира за мгновение ока. И третье, желательный был плод, потому что знания дает. Вот сейчас съем и буду все знать. Как в сказках, вот съем сейчас чего-нибудь и начну летать, вот съем чего-нибудь, и смогу исцелить. Это магическое желание власти. Это все было в запретном плоду, уже.\r\n\r\nИ потом Иоанн Богослов говорит: “Дети не любите все что в мире, потому что это похоть плоти, похоть очей и гордость житейское”. Все что в мире есть это:\r\n<ol>\r\n 	<li>Похоть плоти (повеселиться, потанцевать, поесть, попить, покурить).</li>\r\n 	<li>Похоть очей (поглядеть жадным глазом на витрины, в телевизор), как Соломон сказал, не насытиться око зрением, глаз он же жадный, он пожирает весь мир, он такой маленький, но ненасытный такой, он весь мир хочет сожрать. Чем занимаются всякие туристы безмозглые, себя фотографирует на фоне пирамид разных, там всяких статуй. Ведь это же безумие, вот это посмотрю и себя сфотографирую.</li>\r\n 	<li>Гордость житейское.</li>\r\n</ol>\r\nВот мы сегодня это прочитал для того, чтобы на себя посмотрели и на мир. А что здесь такое творится в мире, а ничего нового. Похоть плоти, похоть очей и гордость житейское. А что-нибудь еще есть? Нету. Ну поищите что-нибудь еще? Да нету больше ничего. Все остальное у Господа, все остальное святое. А вот все что мир предлагает, это оно и есть.\r\n\r\nВот сегодня вы послушали в Евангелии, поговорили об этом и пойдите домой и почитайте об этом сами. Чтобы вы не думали, что я вам это сказал, это Христос сказал. Это сказал апостол Матвей и апостол Лука. Христос эти три искушения победил, а мы даже не замечаем, как они на нас действуют. Потому что лукавый нас борет этим.\r\n\r\nА если вы любитель почитать духовную литературу, то почитайте из романа Достоевского Братья Карамазовы, великий инквизитор. Это может быть одни из самых важных страниц в мировой литературе.\r\n\r\nЧеловек, который ничего не читает – это мертвый человек. Человек, который не читает Евангелии и не слушает ее – это мертвый человек. А мы пришли в мир не для того, чтобы просто жить, а для того, чтобы жить вечно. Для того, чтобы мы по лестнице Якова, ступенька за ступенькой поднимались в царство небесное.\r\n\r\nЕсли бы вас здесь не было, я бы сам себе это рассказал. Поставил перед собой зеркало, и сам с себе бы рассказал. Потому что это также мне надо, как и вам надо. Читать Евангелие, не подаваться на похоть плоти, не гордится, власть и славы не искать, любить Христа, Богу одному поклоняться, и ему одному служить, не искушать господа бога своего, и жить не только хлебом и колбасой, но жить и евангелием святым, молитвой и церковью. Это сегодня говорит нам святое Евангелие.\r\n\r\nЯ хочу, чтобы мое сердце запомнила, и чтобы ваши сердца тоже запомнили.\r\n\r\nАминь.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Во власть не лезьте, чудес не ждите!\" Что такое настоящая свобода, если ты зависим от сигарет?', 'Цитата для новой записи', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-11-15 00:18:46', '2018-11-14 21:18:46', '', 25, 'http://tkachev.loc/2018/11/15/25-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', 'bez-rubriki', 0),
(2, 'Верхнее меню', 'verhnee-menyu', 0),
(3, 'Проповеди', 'propovedi', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0),
(11, 2, 0),
(25, 3, 0),
(28, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
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
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'serii'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"2a1310f1431f8635350df58627a877d51cbddc5706bd7dfb885d0adc1b2bf1ce\";a:4:{s:10:\"expiration\";i:1543322535;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36\";s:5:\"login\";i:1542112935;}s:64:\"d88d65a8ee6d1e7a78fa2733be79efe552f46a99ebeb75a6ebd94057bd15613c\";a:4:{s:10:\"expiration\";i:1543439905;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36\";s:5:\"login\";i:1542230305;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(20, 1, 'metaboxhidden_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(21, 1, 'show_try_gutenberg_panel', '0'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'envo-blog_notice_ignore', 'true'),
(25, 1, 'wp_user-settings', 'libraryContent=browse'),
(26, 1, 'wp_user-settings-time', '1542114184'),
(27, 1, '_notice_ignore', 'true'),
(28, 1, 'closedpostboxes_post', 'a:0:{}'),
(29, 1, 'metaboxhidden_post', 'a:5:{i:0;s:13:\"trackbacksdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(30, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
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
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'serii', '$P$Bp.m/ReISp8WyJaub0Hcjbtc98t4Q1.', 'serii', 'seriiburduja@gmail.com', '', '2018-11-13 12:42:06', '', 0, 'serii');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
