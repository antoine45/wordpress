-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: smysql
-- Généré le: Jeu 07 Février 2013 à 17:31
-- Version du serveur: 5.5.24-4-log
-- Version de PHP: 5.3.10-1ubuntu3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `WPmerleau`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_comments`
--

CREATE TABLE IF NOT EXISTS `wp_festival_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_comments`
--

INSERT INTO `wp_festival_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2013-01-15 16:37:52', '2013-01-15 16:37:52', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_links`
--

CREATE TABLE IF NOT EXISTS `wp_festival_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_options`
--

CREATE TABLE IF NOT EXISTS `wp_festival_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=225 ;

--
-- Contenu de la table `wp_festival_options`
--

INSERT INTO `wp_festival_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~merleau/festival_cinema', 'yes'),
(2, 'blogname', 'Festival Cinema', 'yes'),
(3, 'blogdescription', '', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'squale590@hotmail.fr', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(24, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:1:{i:0;s:44:"slideshow-jquery-image-gallery/slideshow.php";}', 'yes'),
(36, 'home', 'http://localhost/~merleau/festival_cinema', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '1', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:2:{i:0;s:86:"/mnt/home/merleau/public_html/festival_cinema/wp-content/themes/twentytwelve/style.css";i:1;s:0:"";}', 'no'),
(44, 'template', 'twentytwelve', 'yes'),
(45, 'stylesheet', 'festival', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '0', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:2:{i:2;a:3:{s:5:"title";s:6:"Agenda";s:4:"text";s:1533:"<!DOCTYPE html>\r\n<html>\r\n	<head>\r\n		<title>agenda</title>\r\n		<meta charset="utf-8" />\r\n	</head>\r\n	<body>\r\n		<div id="programme">\r\n\r\n			<div id="prog-list">\r\n				<div class="prog-item">\r\n					<div class="font-orange">\r\n						Vendredi 24 septembre : 20h00\r\n					</div>\r\n					<div class="prog-text">\r\n						Soirée d’ouverture : séance de courts métrages\r\n						Rencontre-débat avec un réalisateur.\r\n					</div>\r\n				</div><br/>\r\n\r\n				<div class="prog-item">\r\n					<div class="font-orange">\r\n						Samedi 25 septembre : 19h30\r\n					</div>\r\n					<div class="prog-text">\r\n						Documentaire :\r\n						It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école). Rencontre-débat avec le Groupe Action Gay & Lesbien – Loiret\r\n						sur les interventions en milieu scolaire.\r\n					</div>\r\n				</div><br/>\r\n\r\n				<div class="prog-item">\r\n					<div class="font-orange">\r\n						Samedi 25 septembre : 21h45\r\n					</div>\r\n					<div class="prog-text">\r\n						Fiction : Ander    \r\n					</div>\r\n				</div><br/>\r\n\r\n				<div class="prog-item">\r\n					<div class="font-orange">\r\n						Dimanche 26 septembre : 16h00\r\n					</div>\r\n					<div class="prog-text">\r\n						Fiction : El niño pez\r\n					</div>\r\n				</div><br/>\r\n\r\n				<div class="prog-item">\r\n					<div class="font-orange">\r\n						Dimanche 26 septembre : 18h00  \r\n					</div>\r\n					<div class="prog-text">\r\n						Fiction : I can’t think straight\r\n					</div>\r\n				</div>\r\n			\r\n\r\n			</div>\r\n\r\n		</div>\r\n\r\n	</body>\r\n</html>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '2', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_festival_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:65:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:37:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:13:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:6:"text-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1360167269;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1360168689;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1360168970;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"3.5";s:12:"last_checked";i:1360140571;}', 'yes'),
(102, '_transient_random_seed', 'ffdc918eb19cc49e3b6384f4aa931cf6', 'yes'),
(103, 'auth_key', 'By7X@W(q`Uh4b$xy71bx.UHYPlTc$WT7Ok702c<^eKZJ]:Uq=(a5i~mnDc#{gcP#', 'yes'),
(104, 'auth_salt', '9R!7Gdv{t#V!eDAU.S1*@Em!6#_&lx[6v6UuP-5W.jOD/vTJ5.h#oMw5^{v9L;E2', 'yes'),
(105, 'logged_in_key', '9&sY=~Q,,-mc+ilh%,d[1RtvBN^O1iv5;=%+&Jj<B9=PnC^2DgRM:KyIb8Gu:u4/', 'yes'),
(106, 'logged_in_salt', 'VK:3#m3rAdyQ,T]$9a6>crC IN6TrB0cjBGb;.E;k(=6i/%X,IISGl49 /rL?a:=', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1360140602;}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1360140632;}', 'yes'),
(111, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:41:"http://localhost/~merleau/festival_cinema";s:4:"link";s:117:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~merleau/festival_cinema/";s:3:"url";s:150:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~merleau/festival_cinema/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(112, 'nonce_key', 'TsjI]*VwFg2E%0}~&u}%$ebAWqPY|i 6-?8(0uL**nV%XYa@?wMflBw,+7J`=Kza', 'yes'),
(113, 'nonce_salt', '1(oL}UQ+ff@XJsmf1=tM-tz*>2W6}#U)[0Z~32eS8poA;&1cO9RG_j6??[O:Vo*:', 'yes'),
(114, 'can_compress_scripts', '0', 'yes'),
(134, 'theme_mods_twentytwelve', 'a:2:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358935691;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:6:"text-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(135, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(138, 'category_children', 'a:0:{}', 'yes'),
(160, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1358973922', 'no'),
(161, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p>', 'no'),
(162, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1358973923', 'no'),
(163, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(164, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1358973923', 'no'),
(165, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(166, '_transient_timeout_plugin_slugs', '1360070080', 'no'),
(167, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:44:"slideshow-jquery-image-gallery/slideshow.php";}', 'no'),
(168, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1358973934', 'no'),
(169, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(174, 'recently_activated', 'a:0:{}', 'yes'),
(177, '_site_transient_timeout_wporg_theme_feature_list', '1358946495', 'yes'),
(178, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(179, 'current_theme', 'Twenty Twelve/festival', 'yes'),
(180, 'theme_mods_festival', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}}', 'yes'),
(181, 'theme_switched', '', 'yes'),
(197, 'slideshow-plugin-updated-from-v1-x-x-to-v2-0-1', 'updated', 'yes'),
(198, 'slideshow-plugin-updated-from-v2-to-v2-1-20', 'updated', 'yes'),
(199, 'slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-22', 'updated', 'yes'),
(200, 'slideshow-jquery-image-gallery-plugin-version', '2.1.23', 'yes'),
(223, '_site_transient_timeout_theme_roots', '1360142432', 'yes'),
(224, '_site_transient_theme_roots', 'a:4:{s:8:"festival";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=233 ;

--
-- Contenu de la table `wp_festival_postmeta`
--

INSERT INTO `wp_festival_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_edit_lock', '1358268949:1'),
(3, 1, '_edit_last', '1'),
(4, 2, '_edit_lock', '1359983715:1'),
(5, 2, '_edit_last', '1'),
(6, 9, '_edit_last', '1'),
(7, 9, '_edit_lock', '1358871704:1'),
(8, 9, '_wp_page_template', 'default'),
(9, 11, '_edit_last', '1'),
(10, 11, '_edit_lock', '1358871340:1'),
(11, 11, '_wp_page_template', 'default'),
(12, 13, '_edit_last', '1'),
(13, 13, '_edit_lock', '1358871381:1'),
(14, 13, '_wp_page_template', 'default'),
(15, 15, '_menu_item_type', 'post_type'),
(16, 15, '_menu_item_menu_item_parent', '0'),
(17, 15, '_menu_item_object_id', '2'),
(18, 15, '_menu_item_object', 'page'),
(19, 15, '_menu_item_target', ''),
(20, 15, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-rose";}'),
(21, 15, '_menu_item_xfn', ''),
(22, 15, '_menu_item_url', ''),
(24, 16, '_menu_item_type', 'taxonomy'),
(25, 16, '_menu_item_menu_item_parent', '0'),
(26, 16, '_menu_item_object_id', '2'),
(27, 16, '_menu_item_object', 'category'),
(28, 16, '_menu_item_target', ''),
(29, 16, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-rouge";}'),
(30, 16, '_menu_item_xfn', ''),
(31, 16, '_menu_item_url', ''),
(33, 17, '_menu_item_type', 'taxonomy'),
(34, 17, '_menu_item_menu_item_parent', '0'),
(35, 17, '_menu_item_object_id', '3'),
(36, 17, '_menu_item_object', 'category'),
(37, 17, '_menu_item_target', ''),
(38, 17, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-orange";}'),
(39, 17, '_menu_item_xfn', ''),
(40, 17, '_menu_item_url', ''),
(42, 18, '_menu_item_type', 'post_type'),
(43, 18, '_menu_item_menu_item_parent', '0'),
(44, 18, '_menu_item_object_id', '9'),
(45, 18, '_menu_item_object', 'page'),
(46, 18, '_menu_item_target', ''),
(47, 18, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-jaune";}'),
(48, 18, '_menu_item_xfn', ''),
(49, 18, '_menu_item_url', ''),
(51, 19, '_menu_item_type', 'post_type'),
(52, 19, '_menu_item_menu_item_parent', '0'),
(53, 19, '_menu_item_object_id', '11'),
(54, 19, '_menu_item_object', 'page'),
(55, 19, '_menu_item_target', ''),
(56, 19, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-vert";}'),
(57, 19, '_menu_item_xfn', ''),
(58, 19, '_menu_item_url', ''),
(60, 20, '_menu_item_type', 'post_type'),
(61, 20, '_menu_item_menu_item_parent', '0'),
(62, 20, '_menu_item_object_id', '13'),
(63, 20, '_menu_item_object', 'page'),
(64, 20, '_menu_item_target', ''),
(65, 20, '_menu_item_classes', 'a:1:{i:0;s:12:"fg-turquoise";}'),
(66, 20, '_menu_item_xfn', ''),
(67, 20, '_menu_item_url', ''),
(69, 23, '_edit_last', '1'),
(70, 23, '_edit_lock', '1358871718:1'),
(72, 1, '_wp_trash_meta_status', 'publish'),
(73, 1, '_wp_trash_meta_time', '1358871846'),
(74, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(75, 26, '_edit_last', '1'),
(76, 26, '_edit_lock', '1359537952:1'),
(78, 28, '_edit_last', '1'),
(79, 28, '_edit_lock', '1359537994:1'),
(81, 30, '_edit_last', '1'),
(82, 30, '_edit_lock', '1359538010:1'),
(84, 32, '_edit_last', '1'),
(85, 32, '_edit_lock', '1359538028:1'),
(88, 35, '_edit_last', '1'),
(89, 35, '_edit_lock', '1359539128:1'),
(91, 37, '_edit_last', '1'),
(92, 37, '_edit_lock', '1359539055:1'),
(94, 39, '_edit_last', '1'),
(95, 39, '_edit_lock', '1359539052:1'),
(97, 41, '_edit_last', '1'),
(98, 41, '_edit_lock', '1359539048:1'),
(100, 43, '_edit_last', '1'),
(101, 43, '_edit_lock', '1359539030:1'),
(103, 45, '_edit_last', '1'),
(104, 45, '_edit_lock', '1359539035:1'),
(106, 47, '_edit_last', '1'),
(107, 47, '_edit_lock', '1359539023:1'),
(108, 39, 'realisateur', 'Patricia & Colette'),
(109, 39, 'pays', 'France'),
(110, 39, 'duree', '4 minutes'),
(111, 39, 'annee', '2008'),
(117, 37, 'annee', '2006'),
(118, 37, 'duree', '26 minutes'),
(119, 37, 'realisateur', 'Jean Baptiste Erreca'),
(120, 37, 'pays', 'France'),
(122, 35, 'version', 'VOSTF'),
(124, 35, 'annee', '2008'),
(125, 35, 'pays', 'Brésil'),
(126, 35, 'realisateur', 'René Guerra Luiz'),
(128, 32, 'duree', '10 minutes'),
(129, 32, 'annee', '2006'),
(130, 32, 'pays', 'France'),
(131, 32, 'realisateur', 'Bénédicte Delgéhier'),
(133, 30, 'duree', '9 minutes'),
(134, 30, 'annee', '2009'),
(135, 30, 'pays', 'France'),
(136, 30, 'realisateur', 'Sébastien Gabriel'),
(138, 28, 'duree', '7 minutes'),
(139, 28, 'annee', '2009'),
(140, 28, 'pays', 'France'),
(141, 28, 'realisateur', 'Céline Sciamma'),
(142, 66, 'settings', 'a:17:{s:9:"animation";s:5:"slide";s:10:"slideSpeed";s:1:"1";s:16:"descriptionSpeed";s:3:"0.4";s:13:"intervalSpeed";s:1:"5";s:4:"play";s:4:"true";s:4:"loop";s:4:"true";s:13:"slidesPerView";s:1:"1";s:5:"width";s:1:"0";s:6:"height";s:3:"200";s:17:"descriptionHeight";s:2:"50";s:13:"stretchImages";s:4:"true";s:12:"controllable";s:4:"true";s:12:"controlPanel";s:5:"false";s:15:"showDescription";s:4:"true";s:15:"hideDescription";s:4:"true";s:6:"random";s:5:"false";s:11:"avoidFilter";s:4:"true";}'),
(143, 66, 'styleSettings', 'a:1:{s:5:"style";s:15:"style-light.css";}'),
(144, 66, 'slides', 'a:0:{}'),
(145, 67, 'settings', 'a:17:{s:9:"animation";s:5:"slide";s:10:"slideSpeed";s:1:"1";s:16:"descriptionSpeed";s:3:"0.4";s:13:"intervalSpeed";s:1:"5";s:4:"play";s:4:"true";s:4:"loop";s:4:"true";s:13:"slidesPerView";s:1:"1";s:5:"width";s:1:"0";s:6:"height";s:3:"350";s:17:"descriptionHeight";s:2:"50";s:13:"stretchImages";s:4:"true";s:12:"controllable";s:4:"true";s:12:"controlPanel";s:5:"false";s:15:"showDescription";s:4:"true";s:15:"hideDescription";s:4:"true";s:6:"random";s:5:"false";s:11:"avoidFilter";s:4:"true";}'),
(146, 67, 'styleSettings', 'a:1:{s:5:"style";s:15:"style-light.css";}'),
(147, 67, 'slides', 'a:4:{i:1;a:7:{s:5:"title";s:24:"I can''t think straight 2";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:10:"attachment";s:6:"postId";s:3:"100";s:5:"order";s:0:"";}i:2;a:7:{s:5:"title";s:17:"ItsElementaryGBan";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:10:"attachment";s:6:"postId";s:2:"81";s:5:"order";s:0:"";}i:3;a:7:{s:5:"title";s:5:"Odile";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:10:"attachment";s:6:"postId";s:2:"82";s:5:"order";s:0:"";}i:4;a:7:{s:5:"title";s:5:"OMAR_";s:11:"description";s:0:"";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:4:"type";s:10:"attachment";s:6:"postId";s:2:"83";s:5:"order";s:0:"";}}'),
(148, 67, '_edit_last', '1'),
(149, 67, '_edit_lock', '1359551647:1'),
(150, 68, 'settings', 'a:17:{s:9:"animation";s:5:"slide";s:10:"slideSpeed";s:1:"1";s:16:"descriptionSpeed";s:3:"0.4";s:13:"intervalSpeed";s:1:"5";s:4:"play";s:4:"true";s:4:"loop";s:4:"true";s:13:"slidesPerView";s:1:"1";s:5:"width";s:1:"0";s:6:"height";s:3:"200";s:17:"descriptionHeight";s:2:"50";s:13:"stretchImages";s:4:"true";s:12:"controllable";s:4:"true";s:12:"controlPanel";s:5:"false";s:15:"showDescription";s:4:"true";s:15:"hideDescription";s:4:"true";s:6:"random";s:5:"false";s:11:"avoidFilter";s:4:"true";}'),
(151, 68, 'styleSettings', 'a:1:{s:5:"style";s:15:"style-light.css";}'),
(152, 68, 'slides', 'a:0:{}'),
(153, 26, 'pays', 'France'),
(154, 26, 'duree', '8 minutes'),
(155, 26, 'annee', '2009'),
(156, 26, 'realisateur', 'Pascal-Alex Vincent'),
(158, 71, '_wp_attached_file', '2013/01/EN_COLOricco.jpg'),
(159, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1337;s:6:"height";i:875;s:4:"file";s:24:"2013/01/EN_COLOricco.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"EN_COLOricco-300x196.jpg";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"EN_COLOricco-1024x670.jpg";s:5:"width";i:1024;s:6:"height";i:670;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-624x408.jpg";s:5:"width";i:624;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.7999999999999998;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243723185;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"48";s:3:"iso";s:4:"4000";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";}}'),
(160, 26, '_thumbnail_id', '71'),
(162, 73, '_wp_attached_file', '2013/01/37_it_s_still_elementary.jpg'),
(163, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:228;s:4:"file";s:36:"2013/01/37_it_s_still_elementary.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"37_it_s_still_elementary-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"37_it_s_still_elementary-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(164, 74, '_wp_attached_file', '2013/01/American-boy.png'),
(165, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:901;s:6:"height";i:601;s:4:"file";s:24:"2013/01/American-boy.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"American-boy-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"American-boy-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"American-boy-624x416.png";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(166, 75, '_wp_attached_file', '2013/01/ANDER1.jpg'),
(167, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:18:"2013/01/ANDER1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ANDER1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ANDER1-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"ANDER1-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"ANDER1-624x351.jpg";s:5:"width";i:624;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(168, 76, '_wp_attached_file', '2013/01/ANDER2.jpg'),
(169, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:18:"2013/01/ANDER2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ANDER2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ANDER2-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"ANDER2-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"ANDER2-624x351.jpg";s:5:"width";i:624;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(170, 77, '_wp_attached_file', '2013/01/COWBOY-FOREVER.jpg'),
(171, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2544;s:6:"height";i:1696;s:4:"file";s:26:"2013/01/COWBOY-FOREVER.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"COWBOY-FOREVER-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:5.5999999999999996;s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 30D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1153563697;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"110";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(172, 78, '_wp_attached_file', '2013/01/EL-NINO-PEZ-1.jpg'),
(173, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4405;s:6:"height";i:3010;s:4:"file";s:25:"2013/01/EL-NINO-PEZ-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-300x204.jpg";s:5:"width";i:300;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"EL-NINO-PEZ-1-1024x699.jpg";s:5:"width";i:1024;s:6:"height";i:699;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-624x426.jpg";s:5:"width";i:624;s:6:"height";i:426;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(174, 79, '_wp_attached_file', '2013/01/EL-NINO-PEZ-2.jpg'),
(175, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2953;s:6:"height";i:4370;s:4:"file";s:25:"2013/01/EL-NINO-PEZ-2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-2-202x300.jpg";s:5:"width";i:202;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"EL-NINO-PEZ-2-691x1024.jpg";s:5:"width";i:691;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-2-624x923.jpg";s:5:"width";i:624;s:6:"height";i:923;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(176, 80, '_wp_attached_file', '2013/01/I_cant_think_straight_001.jpg'),
(177, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:1600;s:4:"file";s:37:"2013/01/I_cant_think_straight_001.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:38:"I_cant_think_straight_001-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(178, 81, '_wp_attached_file', '2013/01/ItsElementaryGBan.jpg'),
(179, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:259;s:6:"height";i:221;s:4:"file";s:29:"2013/01/ItsElementaryGBan.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"ItsElementaryGBan-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(180, 82, '_wp_attached_file', '2013/01/Odile-.jpg'),
(181, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3704;s:6:"height";i:2508;s:4:"file";s:18:"2013/01/Odile-.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Odile--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Odile--300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"Odile--1024x693.jpg";s:5:"width";i:1024;s:6:"height";i:693;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"Odile--624x422.jpg";s:5:"width";i:624;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(182, 83, '_wp_attached_file', '2013/01/OMAR_.jpg'),
(183, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1890;s:6:"height";i:1260;s:4:"file";s:17:"2013/01/OMAR_.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"OMAR_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"OMAR_-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"OMAR_-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"OMAR_-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243445020;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"180";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(184, 84, '_wp_attached_file', '2013/01/PAULINE_1.jpg'),
(185, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1575;s:4:"file";s:21:"2013/01/PAULINE_1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"PAULINE_1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"PAULINE_1-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1242468669;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"500";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";}}'),
(186, 28, '_thumbnail_id', '84'),
(188, 30, '_thumbnail_id', '83'),
(190, 32, '_thumbnail_id', '82'),
(192, 37, '_thumbnail_id', '77'),
(194, 39, '_thumbnail_id', '74'),
(196, 41, 'annee', '1996'),
(197, 41, 'genre', 'Documentaire'),
(199, 41, 'pays', 'Etats-Unis'),
(200, 41, 'duree', '01h20'),
(201, 41, 'realisateur', 'Debra Chasnoff'),
(203, 41, '_thumbnail_id', '81'),
(205, 43, 'version', 'VOSTF'),
(206, 43, 'duree', '02h08'),
(207, 43, 'annee', '2009'),
(208, 43, 'pays', 'Espagne'),
(209, 43, 'realisateur', 'Roberto Castón'),
(210, 43, 'acteurs', 'Josean Bengoetxea, Eriz Alberdi, Christian Esquive'),
(212, 43, '_thumbnail_id', '75'),
(214, 45, 'version', 'VOSTF'),
(215, 45, 'duree', '01h36'),
(216, 45, 'acteurs', 'Inés Efron, Mariela Vitale, Pep Munne'),
(217, 45, 'annee', '2008'),
(218, 45, 'pays', 'Argentine'),
(219, 45, 'realisateur', 'Lucía Puenzo'),
(221, 45, '_thumbnail_id', '78'),
(223, 47, 'realisateur', 'Shamim Sarif'),
(224, 47, 'version', 'VOSTF'),
(225, 47, 'genre', 'Comédie romantique'),
(226, 47, 'duree', '01h20'),
(227, 47, 'annee', '2007'),
(228, 47, 'pays', 'Grande Bretagne'),
(229, 47, 'acteurs', 'Lisa Ray, Sheetal Sheth, Antonia Frering'),
(230, 100, '_wp_attached_file', '2013/01/I-cant-think-straight-2.jpg'),
(231, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2300;s:6:"height";i:1533;s:4:"file";s:35:"2013/01/I-cant-think-straight-2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"I-cant-think-straight-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"I-cant-think-straight-2-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"I-cant-think-straight-2-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:35:"I-cant-think-straight-2-624x415.jpg";s:5:"width";i:624;s:6:"height";i:415;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(232, 47, '_thumbnail_id', '100');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_posts`
--

CREATE TABLE IF NOT EXISTS `wp_festival_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=102 ;

--
-- Contenu de la table `wp_festival_posts`
--

INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2013-01-15 16:37:52', '2013-01-15 16:37:52', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Festival de films gays et lesbiens', '', 'trash', 'closed', 'open', '', 'bonjour-tout-le-monde', '', '', '2013-01-22 17:24:06', '2013-01-22 16:24:06', '', 0, 'http://localhost/~merleau/festival_cinema/?p=1', 0, 'post', '', 1),
(2, 1, '2013-01-15 16:37:52', '2013-01-15 16:37:52', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2013-01-23 09:59:38', '2013-01-23 08:59:38', '', 0, 'http://localhost/~merleau/festival_cinema/?page_id=2', 0, 'page', '', 0),
(4, 1, '2013-01-15 17:56:29', '2013-01-15 16:56:29', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\n\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\n\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\n\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\n\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\n\nBon festival !\n\nChristel Guillard, coordinatrice générale.', 'Festival de films gays et lesbiens', '', 'inherit', 'closed', 'open', '', '1-autosave', '', '', '2013-01-15 17:56:29', '2013-01-15 16:56:29', '', 1, 'http://localhost/~merleau/festival_cinema/?p=4', 0, 'revision', '', 0),
(5, 1, '2013-01-15 16:37:52', '2013-01-15 16:37:52', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'closed', 'open', '', '1-revision', '', '', '2013-01-15 16:37:52', '2013-01-15 16:37:52', '', 1, 'http://localhost/~merleau/festival_cinema/?p=5', 0, 'revision', '', 0),
(6, 1, '2013-02-04 14:16:42', '2013-02-04 13:16:42', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\n\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\n\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\n\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\n\nBon festival !\n\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'open', '', '2-autosave', '', '', '2013-02-04 14:16:42', '2013-02-04 13:16:42', '', 2, 'http://localhost/~merleau/festival_cinema/?p=6', 0, 'revision', '', 0),
(7, 1, '2013-01-15 16:37:52', '2013-01-15 16:37:52', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~merleau/festival_cinema/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'inherit', 'closed', 'open', '', '2-revision', '', '', '2013-01-15 16:37:52', '2013-01-15 16:37:52', '', 2, 'http://localhost/~merleau/festival_cinema/?p=7', 0, 'revision', '', 0),
(8, 1, '2013-01-22 17:13:51', '2013-01-22 16:13:51', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.\r\n<p class="c0"><span class="c1">Après trois ans d’affirmation dans le paysage culturel orléanais et une</span></p>\r\n<p class="c0"><span class="c1">année sabbatique, le Festival de films gays &amp; lesbiens revient sous</span></p>\r\n<p class="c0"><span class="c1">une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret,</span></p>\r\n<p class="c0"><span class="c1">l’association culturelle Ciné Mundi axée sur le cinéma indépendant,</span></p>\r\n<p class="c0"><span class="c1">lance en 2010 le festival de films LGBT D’un bord à l’autre sur un</span></p>\r\n<p class="c0"><span class="c1">week-end de trois jours, format similaire aux éditions précédentes.</span></p>\r\n<p class="c0"><span class="c1">Cette année, l’événement aura pour thème la sensibilisation des</span></p>\r\n<p class="c0"><span class="c1">jeunes à la lutte contre les discriminations liées à l’orientation</span></p>\r\n<p class="c0"><span class="c1">sexuelle et au genre.</span></p>\r\n<p class="c0"><span class="c1">Au programme de ce rendez-vous  : 5  séances inédites au cinéma</span></p>\r\n<p class="c0"><span class="c1">Les Carmes à Orléans.</span></p>\r\n<p class="c0"><span class="c1">En ouverture : une sélection de courts métrages dont trois ont été</span></p>\r\n<p class="c0"><span class="c1">réalisés dans le cadre de Jeune et homo sous le regard des autres,</span></p>\r\n<p class="c0"><span class="c1">concours organisé en 2009 par le Ministère de la Santé et l’INPES</span></p>\r\n<p class="c0"><span class="c1">contre l’homophobie.</span></p>\r\n<p class="c0"><span class="c1">Autre temps fort de ce week-end : It’s elementary, talking about gays</span></p>\r\n<p class="c0"><span class="c1">issues in school (C’est élémentaire - Parler de l’homosexualité à</span></p>\r\n<p class="c0"><span class="c1">l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes</span></p>\r\n<p class="c0"><span class="c1">passions que le film d’animation Le baiser de la lune en France</span></p>\r\n<p class="c0"><span class="c1">en  2010. La projection sera suivie d’un débat avec l’association</span></p>\r\n<p class="c0"><span class="c1">G.A.G.L 45, sur les Interventions en Milieu Scolaire.</span></p>\r\n<p class="c0"><span class="c1">Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un</span></p>\r\n<p class="c0"><span class="c1">long métrage espagnol mettant en scène une histoire d’amour entre</span></p>\r\n<p class="c0"><span class="c1">un paysan basque et un immigré péruvien, El niño pez, un surprenant</span></p>\r\n<p class="c0"><span class="c1">road-movie lesbien version argentine et I can’t think straight, une</span></p>\r\n<p class="c0"><span class="c1">savoureuse comédie britannique qui clôturera cette édition.</span></p>\r\n<p class="c0"><span class="c1">Bon festival !</span></p>\r\n<p class="c0"><span class="c1">Christel Guillard, coordinatrice générale.</span></p>', 'Edito', '', 'inherit', 'closed', 'open', '', '2-revision-2', '', '', '2013-01-22 17:13:51', '2013-01-22 16:13:51', '', 2, 'http://localhost/~merleau/festival_cinema/?p=8', 0, 'revision', '', 0),
(9, 1, '2013-01-22 17:16:20', '2013-01-22 16:16:20', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS Tarifs : Plein tarif : 7,50 € Pass Festival : 25 € (5 séances) Soirée courts métrages : 6 € (vendredi) 2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\nCartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\nEquipe :\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost\r\n\r\nOffset Contacts :\r\n\r\nfestival.dunbordalautre@gmail.com\r\n\r\nwww.festivaldunbordalautre.com', 'Infos pratiques', '', 'publish', 'closed', 'open', '', 'infos-pratiques', '', '', '2013-01-22 17:22:02', '2013-01-22 16:22:02', '', 0, 'http://localhost/~merleau/festival_cinema/?page_id=9', 0, 'page', '', 0),
(10, 1, '2013-01-22 17:15:30', '2013-01-22 16:15:30', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS Tarifs : Plein tarif : 7,50 € Pass Festival : 25 € (5 séances) Soirée courts métrages : 6 € (vendredi) 2 séances consécutives le samedi ou le dimanche : 12 €\n\nCartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\n\nLe festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\n\nEquipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'closed', 'open', '', '9-revision', '', '', '2013-01-22 17:15:30', '2013-01-22 16:15:30', '', 9, 'http://localhost/~merleau/festival_cinema/?p=10', 0, 'revision', '', 0),
(11, 1, '2013-01-22 17:17:33', '2013-01-22 16:17:33', '- Région Centre\r\n\r\n- Orléans\r\n\r\n- Cinéma des Carmes\r\n\r\n- GAGL\r\n\r\n- Têtu\r\n\r\n- La dixième MUSE\r\n\r\n- CiteGay\r\n\r\n- Yagg.com\r\n\r\n- France Bleu', 'Partenaires', '', 'publish', 'closed', 'open', '', 'partenaires', '', '', '2013-01-22 17:17:33', '2013-01-22 16:17:33', '', 0, 'http://localhost/~merleau/festival_cinema/?page_id=11', 0, 'page', '', 0),
(12, 1, '2013-01-22 17:16:47', '2013-01-22 16:16:47', '', 'Partenaires', '', 'inherit', 'closed', 'open', '', '11-revision', '', '', '2013-01-22 17:16:47', '2013-01-22 16:16:47', '', 11, 'http://localhost/~merleau/festival_cinema/?p=12', 0, 'revision', '', 0),
(13, 1, '2013-01-22 17:17:54', '2013-01-22 16:17:54', '- La Région Centre\r\n\r\n- La Mairie d''Orléans\r\n\r\n- Le cinéma des Carmes\r\n\r\n- Le Groupe Action Gay &amp; Lesbien - Loiret\r\n\r\n- Citégay\r\n\r\n- La dixième Muse\r\n\r\n- Têtu\r\n\r\n- Yagg.com\r\n\r\n- France Bleu Orléans\r\n\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n\r\n- Cineffable\r\n\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n\r\n- Les VidéObstinées', 'Remerciements', '', 'publish', 'closed', 'open', '', 'remerciements', '', '', '2013-01-22 17:17:54', '2013-01-22 16:17:54', '', 0, 'http://localhost/~merleau/festival_cinema/?page_id=13', 0, 'page', '', 0),
(14, 1, '2013-01-22 17:17:42', '2013-01-22 16:17:42', '', 'Remerciements', '', 'inherit', 'closed', 'open', '', '13-revision', '', '', '2013-01-22 17:17:42', '2013-01-22 16:17:42', '', 13, 'http://localhost/~merleau/festival_cinema/?p=14', 0, 'revision', '', 0),
(15, 1, '2013-01-22 17:19:37', '2013-01-22 16:19:37', ' ', '', '', 'publish', 'closed', 'open', '', '15', '', '', '2013-01-30 10:13:14', '2013-01-30 09:13:14', '', 0, 'http://localhost/~merleau/festival_cinema/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2013-01-22 17:19:37', '2013-01-22 16:19:37', ' ', '', '', 'publish', 'closed', 'open', '', '16', '', '', '2013-01-30 10:13:14', '2013-01-30 09:13:14', '', 0, 'http://localhost/~merleau/festival_cinema/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2013-01-22 17:19:38', '2013-01-22 16:19:38', ' ', '', '', 'publish', 'closed', 'open', '', '17', '', '', '2013-01-30 10:13:14', '2013-01-30 09:13:14', '', 0, 'http://localhost/~merleau/festival_cinema/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2013-01-22 17:19:38', '2013-01-22 16:19:38', ' ', '', '', 'publish', 'closed', 'open', '', '18', '', '', '2013-01-30 10:13:14', '2013-01-30 09:13:14', '', 0, 'http://localhost/~merleau/festival_cinema/?p=18', 4, 'nav_menu_item', '', 0),
(19, 1, '2013-01-22 17:19:39', '2013-01-22 16:19:39', ' ', '', '', 'publish', 'closed', 'open', '', '19', '', '', '2013-01-30 10:13:14', '2013-01-30 09:13:14', '', 0, 'http://localhost/~merleau/festival_cinema/?p=19', 5, 'nav_menu_item', '', 0),
(20, 1, '2013-01-22 17:19:39', '2013-01-22 16:19:39', ' ', '', '', 'publish', 'closed', 'open', '', '20', '', '', '2013-01-30 10:13:14', '2013-01-30 09:13:14', '', 0, 'http://localhost/~merleau/festival_cinema/?p=20', 6, 'nav_menu_item', '', 0),
(21, 1, '2013-01-22 17:16:20', '2013-01-22 16:16:20', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS Tarifs : Plein tarif : 7,50 € Pass Festival : 25 € (5 séances) Soirée courts métrages : 6 € (vendredi) 2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\nCartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\nEquipe :\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost\r\n\r\nOffset Contacts :\r\n\r\nfestival.dunbordalautre@gmail.com\r\n\r\nwww.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'closed', 'open', '', '9-revision-2', '', '', '2013-01-22 17:16:20', '2013-01-22 16:16:20', '', 9, 'http://localhost/~merleau/festival_cinema/?p=21', 0, 'revision', '', 0),
(22, 1, '2013-01-22 17:23:03', '2013-01-22 16:23:03', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS Tarifs : Plein tarif : 7,50 € Pass Festival : 25 € (5 séances) Soirée courts métrages : 6 € (vendredi) 2 séances consécutives le samedi ou le dimanche : 12 €\n\nCartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\n\nLe festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\n\nEquipe :\n\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost\n\nOffset Contacts :\n\nfestival.dunbordalautre@gmail.com\n\nwww.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'closed', 'open', '', '9-autosave', '', '', '2013-01-22 17:23:03', '2013-01-22 16:23:03', '', 9, 'http://localhost/~merleau/festival_cinema/?p=22', 0, 'revision', '', 0),
(23, 1, '2013-01-22 17:23:33', '2013-01-22 16:23:33', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'publish', 'closed', 'open', '', 'intro', '', '', '2013-01-22 17:23:33', '2013-01-22 16:23:33', '', 0, 'http://localhost/~merleau/festival_cinema/?p=23', 0, 'post', '', 0),
(24, 1, '2013-01-22 17:23:16', '2013-01-22 16:23:16', '', 'Intro', '', 'inherit', 'closed', 'open', '', '23-revision', '', '', '2013-01-22 17:23:16', '2013-01-22 16:23:16', '', 23, 'http://localhost/~merleau/festival_cinema/?p=24', 0, 'revision', '', 0),
(25, 1, '2013-01-15 17:55:27', '2013-01-15 16:55:27', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Festival de films gays et lesbiens', '', 'inherit', 'closed', 'open', '', '1-revision-2', '', '', '2013-01-15 17:55:27', '2013-01-15 16:55:27', '', 1, 'http://localhost/~merleau/festival_cinema/?p=25', 0, 'revision', '', 0),
(26, 1, '2013-01-22 17:25:19', '2013-01-22 16:25:19', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'publish', 'closed', 'open', '', 'en-colo-pascal-alex-vincent-france', '', '', '2013-01-30 10:25:08', '2013-01-30 09:25:08', '', 0, 'http://localhost/~merleau/festival_cinema/?p=26', 0, 'post', '', 0),
(27, 1, '2013-01-22 17:24:47', '2013-01-22 16:24:47', '4.2 En colo - Pascal-Alex Vincent - France =========================================== 2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'open', '', '26-revision', '', '', '2013-01-22 17:24:47', '2013-01-22 16:24:47', '', 26, 'http://localhost/~merleau/festival_cinema/?p=27', 0, 'revision', '', 0),
(28, 1, '2013-01-22 17:27:22', '2013-01-22 16:27:22', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'publish', 'closed', 'open', '', 'pauline-celine-sciamma-france-2009', '', '', '2013-01-30 10:28:23', '2013-01-30 09:28:23', '', 0, 'http://localhost/~merleau/festival_cinema/?p=28', 0, 'post', '', 0),
(29, 1, '2013-01-22 17:27:15', '2013-01-22 16:27:15', '4.3 ============================================ 7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline – Céline Sciamma- France – 2009 ', '', 'inherit', 'closed', 'open', '', '28-revision', '', '', '2013-01-22 17:27:15', '2013-01-22 16:27:15', '', 28, 'http://localhost/~merleau/festival_cinema/?p=29', 0, 'revision', '', 0),
(30, 1, '2013-01-22 17:28:10', '2013-01-22 16:28:10', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'publish', 'closed', 'open', '', 'omar-sebastien-gabriel-france-2009-9-minutes', '', '', '2013-01-30 10:28:41', '2013-01-30 09:28:41', '', 0, 'http://localhost/~merleau/festival_cinema/?p=30', 0, 'post', '', 0),
(31, 1, '2013-01-22 17:28:02', '2013-01-22 16:28:02', '4.4 ========================================================= C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes ', '', 'inherit', 'closed', 'open', '', '30-revision', '', '', '2013-01-22 17:28:02', '2013-01-22 16:28:02', '', 30, 'http://localhost/~merleau/festival_cinema/?p=31', 0, 'revision', '', 0),
(32, 1, '2013-01-22 17:28:39', '2013-01-22 16:28:39', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'publish', 'closed', 'open', '', 'odile-benedicte-delgehier-france-2006-10-minutes', '', '', '2013-01-30 10:29:00', '2013-01-30 09:29:00', '', 0, 'http://localhost/~merleau/festival_cinema/?p=32', 0, 'post', '', 0),
(33, 1, '2013-01-22 17:28:36', '2013-01-22 16:28:36', '4.5  ============================================================= Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'closed', 'open', '', '32-revision', '', '', '2013-01-22 17:28:36', '2013-01-22 16:28:36', '', 32, 'http://localhost/~merleau/festival_cinema/?p=33', 0, 'revision', '', 0),
(34, 1, '2013-01-22 17:28:39', '2013-01-22 16:28:39', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'closed', 'open', '', '32-revision-2', '', '', '2013-01-22 17:28:39', '2013-01-22 16:28:39', '', 32, 'http://localhost/~merleau/festival_cinema/?p=34', 0, 'revision', '', 0),
(35, 1, '2013-01-22 17:29:24', '2013-01-22 16:29:24', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu', '', 'publish', 'closed', 'open', '', 'os-sapatos-de-aristeu-rene-guerra-luiz-bresil-2008', '', '', '2013-01-29 17:47:12', '2013-01-29 16:47:12', '', 0, 'http://localhost/~merleau/festival_cinema/?p=35', 0, 'post', '', 0),
(36, 1, '2013-01-22 17:29:17', '2013-01-22 16:29:17', '============================================================= 17 minutes - VOSTF Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'closed', 'open', '', '35-revision', '', '', '2013-01-22 17:29:17', '2013-01-22 16:29:17', '', 35, 'http://localhost/~merleau/festival_cinema/?p=36', 0, 'revision', '', 0),
(37, 1, '2013-01-22 17:29:56', '2013-01-22 16:29:56', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever', '', 'publish', 'closed', 'open', '', 'cowboy-forever-jean-baptiste-erreca-france', '', '', '2013-01-30 10:29:48', '2013-01-30 09:29:48', '', 0, 'http://localhost/~merleau/festival_cinema/?p=37', 0, 'post', '', 0),
(38, 1, '2013-01-22 17:29:48', '2013-01-22 16:29:48', '=================================================== 2006 - 26 minutes Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France ', '', 'inherit', 'closed', 'open', '', '37-revision', '', '', '2013-01-22 17:29:48', '2013-01-22 16:29:48', '', 37, 'http://localhost/~merleau/festival_cinema/?p=38', 0, 'revision', '', 0),
(39, 1, '2013-01-22 17:30:22', '2013-01-22 16:30:22', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'publish', 'closed', 'open', '', 'american-boy-patricia-colette-france', '', '', '2013-01-30 10:30:05', '2013-01-30 09:30:05', '', 0, 'http://localhost/~merleau/festival_cinema/?p=39', 0, 'post', '', 0),
(40, 1, '2013-01-22 17:30:14', '2013-01-22 16:30:14', '=============================================== 2008 - 4 minutes Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France ', '', 'inherit', 'closed', 'open', '', '39-revision', '', '', '2013-01-22 17:30:14', '2013-01-22 16:30:14', '', 39, 'http://localhost/~merleau/festival_cinema/?p=40', 0, 'revision', '', 0),
(41, 1, '2013-01-22 17:31:29', '2013-01-22 16:31:29', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'publish', 'closed', 'open', '', 'its-elementary-talking-about-gays-issues-in-school', '', '', '2013-01-30 10:32:55', '2013-01-30 09:32:55', '', 0, 'http://localhost/~merleau/festival_cinema/?p=41', 0, 'post', '', 0),
(42, 1, '2013-01-22 17:31:02', '2013-01-22 16:31:02', '(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '41-revision', '', '', '2013-01-22 17:31:02', '2013-01-22 16:31:02', '', 41, 'http://localhost/~merleau/festival_cinema/?p=42', 0, 'revision', '', 0),
(43, 1, '2013-01-22 17:32:53', '2013-01-22 16:32:53', 'Interprétation :\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\r\n\r\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER', '', 'publish', 'closed', 'open', '', 'ander-realise-par-roberto-caston', '', '', '2013-01-30 10:36:15', '2013-01-30 09:36:15', '', 0, 'http://localhost/~merleau/festival_cinema/?p=43', 0, 'post', '', 0),
(44, 1, '2013-01-22 17:32:35', '2013-01-22 16:32:35', 'Espagne - 2009 - 02h08 - VOSTF\n\nInterprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive\n\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\n\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\n\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\n\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\n\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'open', '', '43-revision', '', '', '2013-01-22 17:32:35', '2013-01-22 16:32:35', '', 43, 'http://localhost/~merleau/festival_cinema/?p=44', 0, 'revision', '', 0),
(45, 1, '2013-01-22 17:33:46', '2013-01-22 16:33:46', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\n\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'publish', 'closed', 'open', '', 'el-nino-pez-realise-par-lucia-puenzo', '', '', '2013-01-30 10:37:45', '2013-01-30 09:37:45', '', 0, 'http://localhost/~merleau/festival_cinema/?p=45', 0, 'post', '', 0),
(46, 1, '2013-01-22 17:33:19', '2013-01-22 16:33:19', '=========================================== Argentine - 2008 - 01h36 - VOSTF Interprétation : Inés Efron, Mariela Vitale, Pep Munne Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'closed', 'open', '', '45-revision', '', '', '2013-01-22 17:33:19', '2013-01-22 16:33:19', '', 45, 'http://localhost/~merleau/festival_cinema/?p=46', 0, 'revision', '', 0),
(47, 1, '2013-01-22 17:34:45', '2013-01-22 16:34:45', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT', '', 'publish', 'closed', 'open', '', 'cant-think-straight-realise-par-shamim-sarif', '', '', '2013-01-30 10:45:33', '2013-01-30 09:45:33', '', 0, 'http://localhost/~merleau/festival_cinema/?p=47', 0, 'post', '', 0),
(48, 1, '2013-01-22 17:34:10', '2013-01-22 16:34:10', '==================================================== Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif ', '', 'inherit', 'closed', 'open', '', '47-revision', '', '', '2013-01-22 17:34:10', '2013-01-22 16:34:10', '', 47, 'http://localhost/~merleau/festival_cinema/?p=48', 0, 'revision', '', 0),
(49, 1, '2013-01-30 10:39:51', '2013-01-30 09:39:51', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\n\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\n\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\n\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT', '', 'inherit', 'closed', 'open', '', '47-autosave', '', '', '2013-01-30 10:39:51', '2013-01-30 09:39:51', '', 47, 'http://localhost/~merleau/festival_cinema/?p=49', 0, 'revision', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(50, 1, '2013-01-22 17:14:20', '2013-01-22 16:14:20', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.\r\n<p class="c0"><span class="c1">Après trois ans d’affirmation dans le paysage culturel orléanais et une</span></p>\r\n<p class="c0"><span class="c1">année sabbatique, le Festival de films gays &amp; lesbiens revient sous</span></p>\r\n<p class="c0"><span class="c1">une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret,</span></p>\r\n<p class="c0"><span class="c1">l’association culturelle Ciné Mundi axée sur le cinéma indépendant,</span></p>\r\n<p class="c0"><span class="c1">lance en 2010 le festival de films LGBT D’un bord à l’autre sur un</span></p>\r\n<p class="c0"><span class="c1">week-end de trois jours, format similaire aux éditions précédentes.</span></p>\r\n<p class="c0"><span class="c1">Cette année, l’événement aura pour thème la sensibilisation des</span></p>\r\n<p class="c0"><span class="c1">jeunes à la lutte contre les discriminations liées à l’orientation</span></p>\r\n<p class="c0"><span class="c1">sexuelle et au genre.</span></p>\r\n<p class="c0"><span class="c1">Au programme de ce rendez-vous  : 5  séances inédites au cinéma</span></p>\r\n<p class="c0"><span class="c1">Les Carmes à Orléans.</span></p>\r\n<p class="c0"><span class="c1">En ouverture : une sélection de courts métrages dont trois ont été</span></p>\r\n<p class="c0"><span class="c1">réalisés dans le cadre de Jeune et homo sous le regard des autres,</span></p>\r\n<p class="c0"><span class="c1">concours organisé en 2009 par le Ministère de la Santé et l’INPES</span></p>\r\n<p class="c0"><span class="c1">contre l’homophobie.</span></p>\r\n<p class="c0"><span class="c1">Autre temps fort de ce week-end : It’s elementary, talking about gays</span></p>\r\n<p class="c0"><span class="c1">issues in school (C’est élémentaire - Parler de l’homosexualité à</span></p>\r\n<p class="c0"><span class="c1">l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes</span></p>\r\n<p class="c0"><span class="c1">passions que le film d’animation Le baiser de la lune en France</span></p>\r\n<p class="c0"><span class="c1">en  2010. La projection sera suivie d’un débat avec l’association</span></p>\r\n<p class="c0"><span class="c1">G.A.G.L 45, sur les Interventions en Milieu Scolaire.</span></p>\r\n<p class="c0"><span class="c1">Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un</span></p>\r\n<p class="c0"><span class="c1">long métrage espagnol mettant en scène une histoire d’amour entre</span></p>\r\n<p class="c0"><span class="c1">un paysan basque et un immigré péruvien, El niño pez, un surprenant</span></p>\r\n<p class="c0"><span class="c1">road-movie lesbien version argentine et I can’t think straight, une</span></p>\r\n<p class="c0"><span class="c1">savoureuse comédie britannique qui clôturera cette édition.</span></p>\r\n<p class="c0"><span class="c1">Bon festival !</span></p>\r\n<p class="c0"><span class="c1">Christel Guillard, coordinatrice générale.</span></p>', 'Edito', '', 'inherit', 'closed', 'open', '', '2-revision-3', '', '', '2013-01-22 17:14:20', '2013-01-22 16:14:20', '', 2, 'http://localhost/~merleau/festival_cinema/?p=50', 0, 'revision', '', 0),
(51, 1, '2013-01-29 17:30:13', '2013-01-29 16:30:13', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'closed', 'open', '', '39-autosave', '', '', '2013-01-29 17:30:13', '2013-01-29 16:30:13', '', 39, 'http://localhost/~merleau/festival_cinema/?p=51', 0, 'revision', '', 0),
(52, 1, '2013-01-22 17:30:22', '2013-01-22 16:30:22', '2008 - 4 minutes\r\n\r\nComment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France ', '', 'inherit', 'closed', 'open', '', '39-revision-2', '', '', '2013-01-22 17:30:22', '2013-01-22 16:30:22', '', 39, 'http://localhost/~merleau/festival_cinema/?p=52', 0, 'revision', '', 0),
(53, 1, '2013-01-29 17:21:55', '2013-01-29 16:21:55', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'closed', 'open', '', '39-revision-3', '', '', '2013-01-29 17:21:55', '2013-01-29 16:21:55', '', 39, 'http://localhost/~merleau/festival_cinema/?p=53', 0, 'revision', '', 0),
(54, 1, '2013-01-29 17:25:31', '2013-01-29 16:25:31', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'closed', 'open', '', '39-revision-4', '', '', '2013-01-29 17:25:31', '2013-01-29 16:25:31', '', 39, 'http://localhost/~merleau/festival_cinema/?p=54', 0, 'revision', '', 0),
(55, 1, '2013-01-29 17:26:09', '2013-01-29 16:26:09', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'closed', 'open', '', '39-revision-5', '', '', '2013-01-29 17:26:09', '2013-01-29 16:26:09', '', 39, 'http://localhost/~merleau/festival_cinema/?p=55', 0, 'revision', '', 0),
(56, 1, '2013-01-29 17:27:51', '2013-01-29 16:27:51', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'closed', 'open', '', '39-revision-6', '', '', '2013-01-29 17:27:51', '2013-01-29 16:27:51', '', 39, 'http://localhost/~merleau/festival_cinema/?p=56', 0, 'revision', '', 0),
(57, 1, '2013-01-29 17:40:18', '2013-01-29 16:40:18', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever', '', 'inherit', 'closed', 'open', '', '37-autosave', '', '', '2013-01-29 17:40:18', '2013-01-29 16:40:18', '', 37, 'http://localhost/~merleau/festival_cinema/?p=57', 0, 'revision', '', 0),
(58, 1, '2013-01-22 17:29:56', '2013-01-22 16:29:56', '2006 - 26 minutes\r\n\r\nAu cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France ', '', 'inherit', 'closed', 'open', '', '37-revision-2', '', '', '2013-01-22 17:29:56', '2013-01-22 16:29:56', '', 37, 'http://localhost/~merleau/festival_cinema/?p=58', 0, 'revision', '', 0),
(59, 1, '2013-01-30 10:47:13', '2013-01-30 09:47:13', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu', '', 'inherit', 'closed', 'open', '', '35-autosave', '', '', '2013-01-30 10:47:13', '2013-01-30 09:47:13', '', 35, 'http://localhost/~merleau/festival_cinema/?p=59', 0, 'revision', '', 0),
(60, 1, '2013-01-22 17:29:24', '2013-01-22 16:29:24', '17 minutes - VOSTF\r\n\r\nLe corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'closed', 'open', '', '35-revision-2', '', '', '2013-01-22 17:29:24', '2013-01-22 16:29:24', '', 35, 'http://localhost/~merleau/festival_cinema/?p=60', 0, 'revision', '', 0),
(61, 1, '2013-01-29 17:46:35', '2013-01-29 16:46:35', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - ', '', 'inherit', 'closed', 'open', '', '35-revision-3', '', '', '2013-01-29 17:46:35', '2013-01-29 16:46:35', '', 35, 'http://localhost/~merleau/festival_cinema/?p=61', 0, 'revision', '', 0),
(62, 1, '2013-01-22 17:28:46', '2013-01-22 16:28:46', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'closed', 'open', '', '32-revision-3', '', '', '2013-01-22 17:28:46', '2013-01-22 16:28:46', '', 32, 'http://localhost/~merleau/festival_cinema/?p=62', 0, 'revision', '', 0),
(63, 1, '2013-01-29 17:49:09', '2013-01-29 16:49:09', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar -  -  -  - ', '', 'inherit', 'closed', 'open', '', '30-autosave', '', '', '2013-01-29 17:49:09', '2013-01-29 16:49:09', '', 30, 'http://localhost/~merleau/festival_cinema/?p=63', 0, 'revision', '', 0),
(64, 1, '2013-01-22 17:28:10', '2013-01-22 16:28:10', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes ', '', 'inherit', 'closed', 'open', '', '30-revision-2', '', '', '2013-01-22 17:28:10', '2013-01-22 16:28:10', '', 30, 'http://localhost/~merleau/festival_cinema/?p=64', 0, 'revision', '', 0),
(65, 1, '2013-01-22 17:27:22', '2013-01-22 16:27:22', '7 minutes\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline – Céline Sciamma- France – 2009 ', '', 'inherit', 'closed', 'open', '', '28-revision-2', '', '', '2013-01-22 17:27:22', '2013-01-22 16:27:22', '', 28, 'http://localhost/~merleau/festival_cinema/?p=65', 0, 'revision', '', 0),
(66, 1, '2013-01-30 10:13:50', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2013-01-30 10:13:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/~merleau/festival_cinema/?post_type=slideshow&p=66', 0, 'slideshow', '', 0),
(67, 1, '2013-01-30 13:28:08', '2013-01-30 12:28:08', '', 'header', '', 'publish', 'closed', 'closed', '', 'header', '', '', '2013-01-30 13:29:01', '2013-01-30 12:29:01', '', 0, 'http://localhost/~merleau/festival_cinema/?post_type=slideshow&#038;p=67', 0, 'slideshow', '', 0),
(68, 1, '2013-01-30 10:17:05', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2013-01-30 10:17:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/~merleau/festival_cinema/?post_type=slideshow&p=68', 0, 'slideshow', '', 0),
(69, 1, '2013-01-22 17:25:19', '2013-01-22 16:25:19', '2009 - 8 minutes\r\n\r\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'open', '', '26-revision-2', '', '', '2013-01-22 17:25:19', '2013-01-22 16:25:19', '', 26, 'http://localhost/~merleau/festival_cinema/?p=69', 0, 'revision', '', 0),
(70, 1, '2013-01-30 10:27:27', '2013-01-30 09:27:27', '2009 - 8 minutes\n\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'open', '', '26-autosave', '', '', '2013-01-30 10:27:27', '2013-01-30 09:27:27', '', 26, 'http://localhost/~merleau/festival_cinema/?p=70', 0, 'revision', '', 0),
(71, 1, '2013-01-30 10:23:11', '2013-01-30 09:23:11', '', 'EN_COLOricco', '', 'inherit', 'closed', 'open', '', 'en_coloricco', '', '', '2013-01-30 10:23:11', '2013-01-30 09:23:11', '', 26, 'http://localhost/~merleau/festival_cinema/wp-content/uploads/2013/01/EN_COLOricco.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2013-01-30 10:20:38', '2013-01-30 09:20:38', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'closed', 'open', '', '26-revision-3', '', '', '2013-01-30 10:20:38', '2013-01-30 09:20:38', '', 26, 'http://localhost/~merleau/festival_cinema/?p=72', 0, 'revision', '', 0),
(73, 1, '2013-01-30 10:25:52', '2013-01-30 09:25:52', '', '37_it_s_still_elementary', '', 'inherit', 'closed', 'open', '', '37_it_s_still_elementary', '', '', '2013-01-30 10:25:52', '2013-01-30 09:25:52', '', 26, 'http://localhost/~merleau/festival_cinema/wp-content/uploads/2013/01/37_it_s_still_elementary.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2013-01-30 10:25:57', '2013-01-30 09:25:57', '', 'American boy', '', 'inherit', 'closed', 'open', '', 'american-boy', '', '', '2013-01-30 10:25:57', '2013-01-30 09:25:57', '', 26, 'http://localhost/~merleau/festival_cinema/wp-content/uploads/2013/01/American-boy.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2013-01-30 10:26:05', '2013-01-30 09:26:05', '', 'ANDER1', '', 'inherit', 'closed', 'open', '', 'ander1', '', '', '2013-01-30 10:26:05', '2013-01-30 09:26:05', '', 26, 'http://localhost/~merleau/festival_cinema/wp-content/uploads/2013/01/ANDER1.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2013-01-30 10:26:10', '2013-01-30 09:26:10', '', 'ANDER2', '', 'inherit', 'closed', 'open', '', 'ander2', '', '', '2013-01-30 10:26:10', '2013-01-30 09:26:10', '', 26, 'http://localhost/~merleau/festival_cinema/wp-content/uploads/2013/01/ANDER2.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2013-01-30 10:26:34', '2013-01-30 09:26:34', '', 'COWBOY FOREVER', '', 'inherit', 'closed', 'open', '', 'cowboy-forever', '', '', '2013-01-30 10:26:34', '2013-01-30 09:26:34', '', 26, 'http://localhost/~merleau/festival_cinema/wp-content/uploads/2013/01/COWBOY-FOREVER.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2013-01-30 10:26:41', '2013-01-30 09:26:41', '', 'EL NINO PEZ 1', '', 'inherit', 'closed', 'open', '', 'el-nino-pez-1', '', '', '2013-01-30 10:26:41', '2013-01-30 09:26:41', '', 26, 'http://localhost/~merleau/festival_cinema/wp-content/uploads/2013/01/EL-NINO-PEZ-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2013-01-30 10:26:45', '2013-01-30 09:26:45', '', 'EL NINO PEZ  2', '', 'inherit', 'closed', 'open', '', 'el-nino-pez-2', '', '', '2013-01-30 10:26:45', '2013-01-30 09:26:45', '', 26, 'http://localhost/~merleau/festival_cinema/wp-content/uploads/2013/01/EL-NINO-PEZ-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2013-01-30 10:27:17', '2013-01-30 09:27:17', '', 'I_cant_think_straight_001', '', 'inherit', 'closed', 'open', '', 'i_cant_think_straight_001', '', '', '2013-01-30 10:27:17', '2013-01-30 09:27:17', '', 26, 'http://localhost/~merleau/festival_cinema/wp-content/uploads/2013/01/I_cant_think_straight_001.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2013-01-30 10:27:22', '2013-01-30 09:27:22', '', 'ItsElementaryGBan', '', 'inherit', 'closed', 'open', '', 'itselementarygban', '', '', '2013-01-30 10:27:22', '2013-01-30 09:27:22', '', 26, 'http://localhost/~merleau/festival_cinema/wp-content/uploads/2013/01/ItsElementaryGBan.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2013-01-30 10:27:27', '2013-01-30 09:27:27', '', 'Odile', '', 'inherit', 'closed', 'open', '', 'odile', '', '', '2013-01-30 10:27:27', '2013-01-30 09:27:27', '', 26, 'http://localhost/~merleau/festival_cinema/wp-content/uploads/2013/01/Odile-.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2013-01-30 10:27:31', '2013-01-30 09:27:31', '', 'OMAR_', '', 'inherit', 'closed', 'open', '', 'omar_', '', '', '2013-01-30 10:27:31', '2013-01-30 09:27:31', '', 26, 'http://localhost/~merleau/festival_cinema/wp-content/uploads/2013/01/OMAR_.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2013-01-30 10:27:40', '2013-01-30 09:27:40', '', 'PAULINE_1', '', 'inherit', 'closed', 'open', '', 'pauline_1', '', '', '2013-01-30 10:27:40', '2013-01-30 09:27:40', '', 26, 'http://localhost/~merleau/festival_cinema/wp-content/uploads/2013/01/PAULINE_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2013-01-29 18:00:58', '2013-01-29 17:00:58', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'inherit', 'closed', 'open', '', '28-revision-3', '', '', '2013-01-29 18:00:58', '2013-01-29 17:00:58', '', 28, 'http://localhost/~merleau/festival_cinema/?p=85', 0, 'revision', '', 0),
(86, 1, '2013-01-29 17:59:58', '2013-01-29 16:59:58', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'inherit', 'closed', 'open', '', '30-revision-3', '', '', '2013-01-29 17:59:58', '2013-01-29 16:59:58', '', 30, 'http://localhost/~merleau/festival_cinema/?p=86', 0, 'revision', '', 0),
(87, 1, '2013-01-29 17:47:59', '2013-01-29 16:47:59', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'inherit', 'closed', 'open', '', '32-revision-4', '', '', '2013-01-29 17:47:59', '2013-01-29 16:47:59', '', 32, 'http://localhost/~merleau/festival_cinema/?p=87', 0, 'revision', '', 0),
(88, 1, '2013-01-29 17:40:22', '2013-01-29 16:40:22', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever', '', 'inherit', 'closed', 'open', '', '37-revision-3', '', '', '2013-01-29 17:40:22', '2013-01-29 16:40:22', '', 37, 'http://localhost/~merleau/festival_cinema/?p=88', 0, 'revision', '', 0),
(89, 1, '2013-01-29 17:29:11', '2013-01-29 16:29:11', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'closed', 'open', '', '39-revision-7', '', '', '2013-01-29 17:29:11', '2013-01-29 16:29:11', '', 39, 'http://localhost/~merleau/festival_cinema/?p=89', 0, 'revision', '', 0),
(90, 1, '2013-01-22 17:31:29', '2013-01-22 16:31:29', '(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '41-revision-2', '', '', '2013-01-22 17:31:29', '2013-01-22 16:31:29', '', 41, 'http://localhost/~merleau/festival_cinema/?p=90', 0, 'revision', '', 0),
(91, 1, '2013-01-30 10:32:11', '2013-01-30 09:32:11', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\n\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\n\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '41-autosave', '', '', '2013-01-30 10:32:11', '2013-01-30 09:32:11', '', 41, 'http://localhost/~merleau/festival_cinema/?p=91', 0, 'revision', '', 0),
(92, 1, '2013-01-30 10:31:09', '2013-01-30 09:31:09', '(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis -  -  Durée 01h20 - Réalisation : Debra Chasnoff\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '41-revision-3', '', '', '2013-01-30 10:31:09', '2013-01-30 09:31:09', '', 41, 'http://localhost/~merleau/festival_cinema/?p=92', 0, 'revision', '', 0),
(93, 1, '2013-01-30 10:32:18', '2013-01-30 09:32:18', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '41-revision-4', '', '', '2013-01-30 10:32:18', '2013-01-30 09:32:18', '', 41, 'http://localhost/~merleau/festival_cinema/?p=93', 0, 'revision', '', 0),
(94, 1, '2013-01-30 10:35:03', '2013-01-30 09:35:03', 'Interprétation :\n\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\n\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\n\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\n\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\n\nPrix C.I.C.A.E – Festival International de Berlin (2009)\n\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\n\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER', '', 'inherit', 'closed', 'open', '', '43-autosave', '', '', '2013-01-30 10:35:03', '2013-01-30 09:35:03', '', 43, 'http://localhost/~merleau/festival_cinema/?p=94', 0, 'revision', '', 0),
(95, 1, '2013-01-22 17:32:53', '2013-01-22 16:32:53', 'Espagne - 2009 - 02h08 - VOSTF\r\n\r\nInterprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\r\n\r\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'open', '', '43-revision-2', '', '', '2013-01-22 17:32:53', '2013-01-22 16:32:53', '', 43, 'http://localhost/~merleau/festival_cinema/?p=95', 0, 'revision', '', 0),
(96, 1, '2013-01-30 10:35:18', '2013-01-30 09:35:18', 'Interprétation :\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\r\n\r\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009)\r\n\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\n\r\nGrand prix du jury – Festival Cinehorizontes (2009)', 'ANDER', '', 'inherit', 'closed', 'open', '', '43-revision-3', '', '', '2013-01-30 10:35:18', '2013-01-30 09:35:18', '', 43, 'http://localhost/~merleau/festival_cinema/?p=96', 0, 'revision', '', 0),
(97, 1, '2013-01-30 10:37:23', '2013-01-30 09:37:23', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\n\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'inherit', 'closed', 'open', '', '45-autosave', '', '', '2013-01-30 10:37:23', '2013-01-30 09:37:23', '', 45, 'http://localhost/~merleau/festival_cinema/?p=97', 0, 'revision', '', 0),
(98, 1, '2013-01-22 17:33:46', '2013-01-22 16:33:46', 'Argentine - 2008 - 01h36 - VOSTF\r\n\r\nInterprétation : Inés Efron, Mariela Vitale, Pep Munne\r\n\r\nDans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\n\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'closed', 'open', '', '45-revision-2', '', '', '2013-01-22 17:33:46', '2013-01-22 16:33:46', '', 45, 'http://localhost/~merleau/festival_cinema/?p=98', 0, 'revision', '', 0),
(99, 1, '2013-01-30 10:37:30', '2013-01-30 09:37:30', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\n\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'inherit', 'closed', 'open', '', '45-revision-3', '', '', '2013-01-30 10:37:30', '2013-01-30 09:37:30', '', 45, 'http://localhost/~merleau/festival_cinema/?p=99', 0, 'revision', '', 0),
(100, 1, '2013-01-30 10:45:27', '2013-01-30 09:45:27', '', 'I can''t think straight 2', '', 'inherit', 'closed', 'open', '', 'i-cant-think-straight-2', '', '', '2013-01-30 10:45:27', '2013-01-30 09:45:27', '', 47, 'http://localhost/~merleau/festival_cinema/wp-content/uploads/2013/01/I-cant-think-straight-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2013-01-22 17:34:45', '2013-01-22 16:34:45', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF\r\n\r\nInterprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\n\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif ', '', 'inherit', 'closed', 'open', '', '47-revision-2', '', '', '2013-01-22 17:34:45', '2013-01-22 16:34:45', '', 47, 'http://localhost/~merleau/festival_cinema/?p=101', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_terms`
--

CREATE TABLE IF NOT EXISTS `wp_festival_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_festival_terms`
--

INSERT INTO `wp_festival_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Films', 'films', 0),
(3, 'Courts­-métrages', 'courts%c2%admetrages', 0),
(4, 'navigation', 'navigation', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_festival_term_relationships`
--

INSERT INTO `wp_festival_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 4, 0),
(16, 4, 0),
(17, 4, 0),
(18, 4, 0),
(19, 4, 0),
(20, 4, 0),
(23, 3, 0),
(26, 3, 0),
(28, 3, 0),
(30, 3, 0),
(32, 3, 0),
(35, 3, 0),
(37, 3, 0),
(39, 3, 0),
(41, 2, 0),
(43, 2, 0),
(45, 2, 0),
(47, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_festival_term_taxonomy`
--

INSERT INTO `wp_festival_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 4),
(3, 3, 'category', '', 0, 8),
(4, 4, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `wp_festival_usermeta`
--

INSERT INTO `wp_festival_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_festival_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_festival_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_festival_dashboard_quick_press_last_post_id', '3'),
(15, 1, 'wp_festival_user-settings', 'hidetb=1&libraryContent=browse&align=none&imgsize=medium&urlbutton=post'),
(16, 1, 'wp_festival_user-settings-time', '1359537905'),
(17, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:11:"link-target";i:1;s:3:"xfn";i:2;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(19, 1, 'nav_menu_recently_edited', '4'),
(20, 1, 'closedpostboxes_post', 'a:0:{}'),
(21, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";i:6;s:12:"revisionsdiv";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_users`
--

CREATE TABLE IF NOT EXISTS `wp_festival_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_users`
--

INSERT INTO `wp_festival_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BjMlnTAeyCRB6lDFK69e/KUehE0nlS/', 'admin', 'squale590@hotmail.fr', '', '2013-01-15 16:37:51', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
