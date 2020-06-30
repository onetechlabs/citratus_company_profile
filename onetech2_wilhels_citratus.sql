-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 30, 2020 at 06:00 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onetech2_wilhels_citratus`
--

-- --------------------------------------------------------

--
-- Table structure for table `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '::1', '2020-06-02 09:33:09', '2020-06-02 09:33:09'),
(2, 1, '110.139.80.64', '2020-06-03 01:18:27', '2020-06-03 01:18:27'),
(3, 1, '127.0.0.1', '2020-06-30 07:00:40', '2020-06-30 07:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT 0,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `deleted_at`, `is_superuser`) VALUES
(1, 'Admin', 'Web', 'admin', 'admin@mail.com', '$2y$10$HvH8PSXGsNItEtOmRute0uk4mNHXcGRLiOHzvWTi//YmtA85Ts9xq', NULL, '$2y$10$V/5OCi8djeLEGZgh7emnIe3jgQW2/UbigeE/4OTabtGRyhjcA/OJu', NULL, '', 1, 2, NULL, '2020-06-30 07:00:40', '2020-06-02 09:32:19', '2020-06-30 07:00:40', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', '2020-06-02 09:32:18', '2020-06-02 09:32:18', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_preferences`
--

INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 1, 'backend', 'reportwidgets', 'dashboard', '{\"welcome\":{\"class\":\"Backend\\\\ReportWidgets\\\\Welcome\",\"sortOrder\":50,\"configuration\":{\"ocWidgetWidth\":7}},\"systemStatus\":{\"class\":\"System\\\\ReportWidgets\\\\Status\",\"sortOrder\":60,\"configuration\":{\"ocWidgetWidth\":7}},\"activeTheme\":{\"class\":\"Cms\\\\ReportWidgets\\\\ActiveTheme\",\"sortOrder\":70,\"configuration\":{\"title\":\"Website\",\"ocWidgetWidth\":5,\"ocWidgetNewRow\":null}}}');

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2020-06-02 09:32:18', '2020-06-02 09:32:18'),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2020-06-02 09:32:18', '2020-06-02 09:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT 0,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '::1', 0, NULL, 0, NULL, 0, NULL),
(2, 1, '110.139.80.64', 0, NULL, 0, NULL, 0, NULL),
(3, 1, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_theme_data`
--

INSERT INTO `cms_theme_data` (`id`, `theme`, `data`, `created_at`, `updated_at`) VALUES
(1, 'zwiebl-zwiebl_stellar', '{\"website_name\":\"Wilhels\",\"website_author\":\"onetechlabs\",\"website_url\":\"#\",\"description\":\"Bio Energi Indonesia\",\"keywords\":\"october,octobercms,themes,templates,free octobercms themes,citratus,wilhels\",\"load_google_fonts\":\"1\",\"google_font_family\":\"Roboto+Slab:300,400,700|Raleway:300,300i,400,400i,700,700i\",\"load_fontawesome\":\"1\",\"load_jQuery\":\"1\",\"jQuery_version\":\"2.2.4\",\"load_octobercms_framework\":\"0\",\"show_section_one\":\"1\",\"show_section_two\":\"1\",\"show_section_three\":\"1\",\"show_section_four\":\"1\",\"zw-bg-color-bg-one\":\"#a89cc8\",\"zw-bg-color-bg-two\":\"#5f4d93\",\"zw-bg-color-buttons\":\"8cc9f0\"}', '2020-06-02 09:32:22', '2020-06-02 09:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_templates`
--

CREATE TABLE `cms_theme_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
(2, '2013_10_01_000002_Db_System_Files', 1),
(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
(5, '2013_10_01_000005_Db_System_Settings', 1),
(6, '2013_10_01_000006_Db_System_Parameters', 1),
(7, '2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
(8, '2013_10_01_000008_Db_System_Mail_Templates', 1),
(9, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
(10, '2014_10_01_000010_Db_Jobs', 1),
(11, '2014_10_01_000011_Db_System_Event_Logs', 1),
(12, '2014_10_01_000012_Db_System_Request_Logs', 1),
(13, '2014_10_01_000013_Db_System_Sessions', 1),
(14, '2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
(15, '2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
(16, '2015_10_01_000016_Db_Cache', 1),
(17, '2015_10_01_000017_Db_System_Revisions', 1),
(18, '2015_10_01_000018_Db_FailedJobs', 1),
(19, '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
(20, '2016_10_01_000020_Db_System_Timestamp_Fix', 1),
(21, '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 1),
(22, '2017_10_01_000021_Db_System_Sessions_Update', 1),
(23, '2017_10_01_000022_Db_Jobs_FailedJobs_Update', 1),
(24, '2017_10_01_000023_Db_System_Mail_Partials', 1),
(25, '2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field', 1),
(26, '2013_10_01_000001_Db_Backend_Users', 2),
(27, '2013_10_01_000002_Db_Backend_User_Groups', 2),
(28, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
(29, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
(30, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
(31, '2014_10_01_000006_Db_Backend_Access_Log', 2),
(32, '2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
(33, '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
(34, '2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
(35, '2017_10_01_000010_Db_Backend_User_Roles', 2),
(36, '2018_12_16_000011_Db_Backend_Add_Deleted_At', 2),
(37, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
(38, '2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
(39, '2017_10_01_000003_Db_Cms_Theme_Logs', 3),
(40, '2018_11_01_000001_Db_Cms_Theme_Templates', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_categories`
--

CREATE TABLE `rainlab_blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_blog_categories`
--

INSERT INTO `rainlab_blog_categories` (`id`, `name`, `slug`, `code`, `description`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', NULL, NULL, NULL, 1, 2, 0, '2020-06-02 09:32:07', '2020-06-02 09:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts`
--

CREATE TABLE `rainlab_blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `metadata`) VALUES
(1, 1, 'First blog post', 'first-blog-post', 'The first ever blog post is here. It might be a good idea to update this post with some more relevant content.', 'This is your first ever **blog post**! It might be a good idea to update this post with some more relevant content.\r\n\r\nYou can edit this content by selecting **Blog** from the administration back-end menu.\r\n\r\n*Enjoy the good times!*', '<p>This is your first ever <strong>blog post</strong>! It might be a good idea to update this post with some more relevant content.</p>\n<p>You can edit this content by selecting <strong>Blog</strong> from the administration back-end menu.</p>\n<p><em>Enjoy the good times!</em></p>', '2020-06-02 09:32:07', 1, '2020-06-02 09:32:07', '2020-06-30 08:58:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts_categories`
--

CREATE TABLE `rainlab_blog_posts_categories` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_blog_posts_categories`
--

INSERT INTO `rainlab_blog_posts_categories` (`post_id`, `category_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_event_logs`
--

INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(1, 'error', 'Twig\\Error\\SyntaxError: Unknown \"slider\" tag in \"B:\\Programming\\PHP\\htdocs\\company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_two.htm\" at line 6. in B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Parser.php:175\nStack trace:\n#0 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#1 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#2 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#3 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#4 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'B:\\\\Programming\\\\...\', NULL)\n#5 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(1084): Twig\\Environment->loadTemplate(\'B:\\\\Programming\\\\...\')\n#6 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'slider\', Array, true)\n#7 B:\\Programming\\PHP\\htdocs\\company_profile\\storage\\cms\\twig\\2c\\2c8a5a4685e91f5480b050ed7f361d618eea9615c40266e15be9685faf6f1582.php(84): Cms\\Twig\\Extension->partialFunction(\'home_page/secti...\', Array, true)\n#8 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_fb175da2a60d8e375a0f8ac3404755ab640bab3787aefb48a6b5e701ef028b0d->doDisplay(Array, Array)\n#9 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#10 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#11 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(433): Twig\\Template->render(Array)\n#12 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(223): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#13 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#14 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#15 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#16 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#17 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#18 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#19 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#20 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#38 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#39 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#40 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#41 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#42 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#43 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#49 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#50 B:\\Programming\\PHP\\htdocs\\company_profile\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#51 {main}', NULL, '2020-06-02 13:34:46', '2020-06-02 13:34:46'),
(2, 'error', 'RuntimeException: The source file \"B:\\Programming\\PHP\\htdocs\\company_profile/themes/zwiebl-zwiebl_stellar/https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css\" does not exist. in B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\kriswallsmith\\assetic\\src\\Assetic\\Asset\\FileAsset.php:73\nStack trace:\n#0 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\kriswallsmith\\assetic\\src\\Assetic\\Asset\\AssetCache.php(112): Assetic\\Asset\\FileAsset->getLastModified()\n#1 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\kriswallsmith\\assetic\\src\\Assetic\\Factory\\AssetFactory.php(255): Assetic\\Asset\\AssetCache->getLastModified()\n#2 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\system\\classes\\CombineAssets.php(385): Assetic\\Factory\\AssetFactory->getLastModified(Object(Assetic\\Asset\\AssetCollection))\n#3 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\system\\classes\\CombineAssets.php(183): System\\Classes\\CombineAssets->prepareRequest(Array, \'B:\\\\Programming\\\\...\')\n#4 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(1377): System\\Classes\\CombineAssets::combine(Array, \'B:\\\\Programming\\\\...\')\n#5 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\twig\\Extension.php(172): Cms\\Classes\\Controller->themeUrl(Array)\n#6 B:\\Programming\\PHP\\htdocs\\company_profile\\storage\\cms\\twig\\be\\be6db4e07d8c0f37e98fc9b5fe21c209f2538c6224022205e477b9c88675679b.php(101): Cms\\Twig\\Extension->themeFilter(Array)\n#7 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_ae8d40a137e6b8e25195f4c19ae6c605bbadc0e0f97c02cb3c79996def02725a->doDisplay(Array, Array)\n#8 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#9 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#10 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(1085): Twig\\Template->render(Array)\n#11 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'html_base/meta_...\', Array, true)\n#12 B:\\Programming\\PHP\\htdocs\\company_profile\\storage\\cms\\twig\\2c\\2c8a5a4685e91f5480b050ed7f361d618eea9615c40266e15be9685faf6f1582.php(42): Cms\\Twig\\Extension->partialFunction(\'html_base/meta_...\', Array, true)\n#13 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_fb175da2a60d8e375a0f8ac3404755ab640bab3787aefb48a6b5e701ef028b0d->doDisplay(Array, Array)\n#14 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#15 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#16 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(433): Twig\\Template->render(Array)\n#17 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(223): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#18 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#19 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#20 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#21 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#22 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#23 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#24 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#25 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#44 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#45 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#46 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#47 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#48 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#54 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#55 B:\\Programming\\PHP\\htdocs\\company_profile\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#56 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The source file \"B:\\Programming\\PHP\\htdocs\\company_profile/themes/zwiebl-zwiebl_stellar/https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css\" does not exist.\") in \"B:\\Programming\\PHP\\htdocs\\company_profile/themes/zwiebl-zwiebl_stellar/partials/html_base/meta_head.htm\" at line 23. in B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php:421\nStack trace:\n#0 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#2 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(1085): Twig\\Template->render(Array)\n#3 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'html_base/meta_...\', Array, true)\n#4 B:\\Programming\\PHP\\htdocs\\company_profile\\storage\\cms\\twig\\2c\\2c8a5a4685e91f5480b050ed7f361d618eea9615c40266e15be9685faf6f1582.php(42): Cms\\Twig\\Extension->partialFunction(\'html_base/meta_...\', Array, true)\n#5 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_fb175da2a60d8e375a0f8ac3404755ab640bab3787aefb48a6b5e701ef028b0d->doDisplay(Array, Array)\n#6 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#7 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#8 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(433): Twig\\Template->render(Array)\n#9 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(223): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#10 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#11 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#12 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#13 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#14 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#15 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#16 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#17 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#35 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#36 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#37 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#38 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#39 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#40 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 B:\\Programming\\PHP\\htdocs\\company_profile\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 {main}', NULL, '2020-06-02 21:26:22', '2020-06-02 21:26:22'),
(3, 'error', 'Twig\\Error\\SyntaxError: Unknown \"var_dump\" function in \"B:\\Programming\\PHP\\htdocs\\company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_two.htm\" at line 2. in B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\ExpressionParser.php:746\nStack trace:\n#0 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\ExpressionParser.php(451): Twig\\ExpressionParser->getFunctionNodeClass(\'var_dump\', 2)\n#1 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\ExpressionParser.php(235): Twig\\ExpressionParser->getFunctionNode(\'var_dump\', 2)\n#2 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\ExpressionParser.php(175): Twig\\ExpressionParser->parsePrimaryExpression()\n#3 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\ExpressionParser.php(70): Twig\\ExpressionParser->getPrimary()\n#4 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Parser.php(142): Twig\\ExpressionParser->parseExpression()\n#5 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#6 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#7 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#8 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#9 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'B:\\\\Programming\\\\...\', NULL)\n#10 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(1084): Twig\\Environment->loadTemplate(\'B:\\\\Programming\\\\...\')\n#11 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'slider\', Array, true)\n#12 B:\\Programming\\PHP\\htdocs\\company_profile\\storage\\cms\\twig\\2c\\2c8a5a4685e91f5480b050ed7f361d618eea9615c40266e15be9685faf6f1582.php(84): Cms\\Twig\\Extension->partialFunction(\'home_page/secti...\', Array, true)\n#13 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_fb175da2a60d8e375a0f8ac3404755ab640bab3787aefb48a6b5e701ef028b0d->doDisplay(Array, Array)\n#14 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#15 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#16 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(433): Twig\\Template->render(Array)\n#17 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(223): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#18 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#19 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#20 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#21 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#22 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#23 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#24 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#25 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#44 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#45 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#46 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#47 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#48 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#54 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#55 B:\\Programming\\PHP\\htdocs\\company_profile\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#56 {main}', NULL, '2020-06-02 21:47:39', '2020-06-02 21:47:39');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(4, 'error', 'Twig\\Error\\SyntaxError: Unknown \"Strip_tags\" function in \"B:\\Programming\\PHP\\htdocs\\company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_two.htm\" at line 13. in B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\ExpressionParser.php:746\nStack trace:\n#0 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\ExpressionParser.php(451): Twig\\ExpressionParser->getFunctionNodeClass(\'Strip_tags\', 13)\n#1 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\ExpressionParser.php(235): Twig\\ExpressionParser->getFunctionNode(\'Strip_tags\', 13)\n#2 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\ExpressionParser.php(175): Twig\\ExpressionParser->parsePrimaryExpression()\n#3 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\ExpressionParser.php(70): Twig\\ExpressionParser->getPrimary()\n#4 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Parser.php(142): Twig\\ExpressionParser->parseExpression()\n#5 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\TokenParser\\IfTokenParser.php(39): Twig\\Parser->subparse(Array)\n#6 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Parser.php(185): Twig\\TokenParser\\IfTokenParser->parse(Object(Twig\\Token))\n#7 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\TokenParser\\IfTokenParser.php(39): Twig\\Parser->subparse(Array)\n#8 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Parser.php(185): Twig\\TokenParser\\IfTokenParser->parse(Object(Twig\\Token))\n#9 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\TokenParser\\ForTokenParser.php(52): Twig\\Parser->subparse(Array)\n#10 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Parser.php(185): Twig\\TokenParser\\ForTokenParser->parse(Object(Twig\\Token))\n#11 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#12 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#13 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#14 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#15 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'B:\\\\Programming\\\\...\', NULL)\n#16 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(1084): Twig\\Environment->loadTemplate(\'B:\\\\Programming\\\\...\')\n#17 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'slider\', Array, true)\n#18 B:\\Programming\\PHP\\htdocs\\company_profile\\storage\\cms\\twig\\2c\\2c8a5a4685e91f5480b050ed7f361d618eea9615c40266e15be9685faf6f1582.php(84): Cms\\Twig\\Extension->partialFunction(\'home_page/secti...\', Array, true)\n#19 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_fb175da2a60d8e375a0f8ac3404755ab640bab3787aefb48a6b5e701ef028b0d->doDisplay(Array, Array)\n#20 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#21 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#22 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(433): Twig\\Template->render(Array)\n#23 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(223): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#24 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#25 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#26 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#27 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#28 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#29 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#30 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#31 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#49 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#50 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#51 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#52 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#53 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#54 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#55 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#57 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#58 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#59 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#60 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#61 B:\\Programming\\PHP\\htdocs\\company_profile\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#62 {main}', NULL, '2020-06-02 22:12:15', '2020-06-02 22:12:15'),
(5, 'error', 'Twig\\Error\\SyntaxError: Unknown \"strip_tags\" function in \"B:\\Programming\\PHP\\htdocs\\company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_two.htm\" at line 13. in B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\ExpressionParser.php:746\nStack trace:\n#0 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\ExpressionParser.php(451): Twig\\ExpressionParser->getFunctionNodeClass(\'strip_tags\', 13)\n#1 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\ExpressionParser.php(235): Twig\\ExpressionParser->getFunctionNode(\'strip_tags\', 13)\n#2 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\ExpressionParser.php(175): Twig\\ExpressionParser->parsePrimaryExpression()\n#3 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\ExpressionParser.php(70): Twig\\ExpressionParser->getPrimary()\n#4 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Parser.php(142): Twig\\ExpressionParser->parseExpression()\n#5 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\TokenParser\\IfTokenParser.php(39): Twig\\Parser->subparse(Array)\n#6 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Parser.php(185): Twig\\TokenParser\\IfTokenParser->parse(Object(Twig\\Token))\n#7 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\TokenParser\\IfTokenParser.php(39): Twig\\Parser->subparse(Array)\n#8 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Parser.php(185): Twig\\TokenParser\\IfTokenParser->parse(Object(Twig\\Token))\n#9 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\TokenParser\\ForTokenParser.php(52): Twig\\Parser->subparse(Array)\n#10 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Parser.php(185): Twig\\TokenParser\\ForTokenParser->parse(Object(Twig\\Token))\n#11 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#12 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#13 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#14 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#15 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'B:\\\\Programming\\\\...\', NULL)\n#16 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(1084): Twig\\Environment->loadTemplate(\'B:\\\\Programming\\\\...\')\n#17 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'slider\', Array, true)\n#18 B:\\Programming\\PHP\\htdocs\\company_profile\\storage\\cms\\twig\\2c\\2c8a5a4685e91f5480b050ed7f361d618eea9615c40266e15be9685faf6f1582.php(84): Cms\\Twig\\Extension->partialFunction(\'home_page/secti...\', Array, true)\n#19 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_fb175da2a60d8e375a0f8ac3404755ab640bab3787aefb48a6b5e701ef028b0d->doDisplay(Array, Array)\n#20 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#21 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#22 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(433): Twig\\Template->render(Array)\n#23 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(223): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#24 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#25 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#26 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#27 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#28 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#29 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#30 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#31 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#49 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#50 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#51 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#52 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#53 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#54 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#55 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#57 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#58 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#59 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#60 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#61 B:\\Programming\\PHP\\htdocs\\company_profile\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#62 {main}', NULL, '2020-06-02 22:12:30', '2020-06-02 22:12:30'),
(6, 'error', 'InvalidArgumentException: The \"storage/app/media/gallery/\" directory does not exist. in B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\symfony\\finder\\Finder.php:548\nStack trace:\n#0 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(405): Symfony\\Component\\Finder\\Finder->in(\'storage/app/med...\')\n#1 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(221): Illuminate\\Filesystem\\Filesystem->allFiles(\'storage/app/med...\')\n#2 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\CodeParser.php(289) : eval()\'d code(9): Illuminate\\Support\\Facades\\Facade::__callStatic(\'allFiles\', Array)\n#3 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(1073): Cms5ed7355d685d1637588516_c02f42605c2397057810ce2a8bce7774Class->onStart()\n#4 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'home_page/secti...\', Array, true)\n#5 B:\\Programming\\PHP\\htdocs\\company_profile\\storage\\cms\\twig\\2c\\2c8a5a4685e91f5480b050ed7f361d618eea9615c40266e15be9685faf6f1582.php(97): Cms\\Twig\\Extension->partialFunction(\'home_page/secti...\', Array, true)\n#6 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_fb175da2a60d8e375a0f8ac3404755ab640bab3787aefb48a6b5e701ef028b0d->doDisplay(Array, Array)\n#7 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#8 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#9 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(433): Twig\\Template->render(Array)\n#10 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(223): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#11 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#12 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#13 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#14 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#15 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#16 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#17 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#18 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#37 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#38 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#39 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#40 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#41 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#47 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#48 B:\\Programming\\PHP\\htdocs\\company_profile\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The \"storage/app/media/gallery/\" directory does not exist.\") in \"B:\\Programming\\PHP\\htdocs\\company_profile/themes/zwiebl-zwiebl_stellar/layouts/stellar.htm\" at line 21. in B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php:421\nStack trace:\n#0 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#2 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(433): Twig\\Template->render(Array)\n#3 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(223): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#6 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#7 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#11 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 B:\\Programming\\PHP\\htdocs\\company_profile\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 {main}', NULL, '2020-06-02 22:30:05', '2020-06-02 22:30:05');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(7, 'error', 'Twig\\Error\\SyntaxError: Unexpected character \"$\" in \"B:\\Programming\\PHP\\htdocs\\company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_three.htm\" at line 6. in B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Lexer.php:365\nStack trace:\n#0 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Lexer.php(292): Twig\\Lexer->lexExpression()\n#1 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Lexer.php(186): Twig\\Lexer->lexVar()\n#2 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(542): Twig\\Lexer->tokenize(Object(Twig\\Source))\n#3 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->tokenize(Object(Twig\\Source))\n#4 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'B:\\\\Programming\\\\...\', NULL)\n#6 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(1084): Twig\\Environment->loadTemplate(\'B:\\\\Programming\\\\...\')\n#7 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'home_page/secti...\', Array, true)\n#8 B:\\Programming\\PHP\\htdocs\\company_profile\\storage\\cms\\twig\\2c\\2c8a5a4685e91f5480b050ed7f361d618eea9615c40266e15be9685faf6f1582.php(97): Cms\\Twig\\Extension->partialFunction(\'home_page/secti...\', Array, true)\n#9 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_fb175da2a60d8e375a0f8ac3404755ab640bab3787aefb48a6b5e701ef028b0d->doDisplay(Array, Array)\n#10 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#11 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#12 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(433): Twig\\Template->render(Array)\n#13 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\Controller.php(223): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#14 B:\\Programming\\PHP\\htdocs\\company_profile\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#15 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#16 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#17 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#18 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#19 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#20 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#21 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#40 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#41 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#42 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#43 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#44 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#50 B:\\Programming\\PHP\\htdocs\\company_profile\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#51 B:\\Programming\\PHP\\htdocs\\company_profile\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#52 {main}', NULL, '2020-06-02 22:31:59', '2020-06-02 22:31:59'),
(8, 'error', 'ErrorException: unserialize(): Error at offset 2 of 3491 bytes in /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cache/FileStore.php:187\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'unserialize(): ...\', \'/home/onetechla...\', 187, Array)\n#1 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cache/FileStore.php(187): unserialize(\'s:3519:\".br-p{c...\')\n#2 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cache/FileStore.php(49): Illuminate\\Cache\\FileStore->getPayload(\'backend::brand....\')\n#3 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cache/Repository.php(86): Illuminate\\Cache\\FileStore->get(\'backend::brand....\')\n#4 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/october/rain/src/Halcyon/MemoryRepository.php(39): Illuminate\\Cache\\Repository->get(\'backend::brand....\', NULL)\n#5 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cache/Repository.php(70): October\\Rain\\Halcyon\\MemoryRepository->get(\'backend::brand....\')\n#6 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cache/CacheManager.php(304): Illuminate\\Cache\\Repository->has(\'backend::brand....\')\n#7 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(221): Illuminate\\Cache\\CacheManager->__call(\'has\', Array)\n#8 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/backend/models/BrandSetting.php(121): Illuminate\\Support\\Facades\\Facade::__callStatic(\'has\', Array)\n#9 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/backend/layouts/_custom_styles.htm(7): Backend\\Models\\BrandSetting::renderCss()\n#10 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/system/traits/ViewMaker.php(247): include(\'/home/onetechla...\')\n#11 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/system/traits/ViewMaker.php(156): Backend\\Classes\\Controller->makeFileContents(\'/home/onetechla...\', Array)\n#12 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/system/traits/ViewMaker.php(172): Backend\\Classes\\Controller->makeLayout(\'_custom_styles\', Array)\n#13 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/backend/layouts/auth.htm(61): Backend\\Classes\\Controller->makeLayoutPartial(\'_custom_styles\')\n#14 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/system/traits/ViewMaker.php(247): include(\'/home/onetechla...\')\n#15 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/system/traits/ViewMaker.php(156): Backend\\Classes\\Controller->makeFileContents(\'/home/onetechla...\', Array)\n#16 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/system/traits/ViewMaker.php(128): Backend\\Classes\\Controller->makeLayout(NULL)\n#17 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/system/traits/ViewMaker.php(110): Backend\\Classes\\Controller->makeViewContent(\'<h2>Bio Energi ...\')\n#18 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/backend/classes/Controller.php(419): Backend\\Classes\\Controller->makeView(\'signin\')\n#19 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/backend/classes/Controller.php(296): Backend\\Classes\\Controller->execPageAction(\'signin\', Array)\n#20 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/backend/classes/BackendController.php(165): Backend\\Classes\\Controller->run(\'signin\', Array)\n#21 [internal function]: Backend\\Classes\\BackendController->run(\'backend/auth/si...\')\n#22 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#23 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#24 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#25 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#26 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#27 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/backend/classes/BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#48 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#49 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#50 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#51 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#52 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#53 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#54 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#57 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#58 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#59 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#60 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#61 {main}', NULL, '2020-06-30 06:58:35', '2020-06-30 06:58:35'),
(9, 'error', 'ErrorException: unserialize(): Error at offset 2 of 3491 bytes in /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cache/FileStore.php:187\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'unserialize(): ...\', \'/home/onetechla...\', 187, Array)\n#1 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cache/FileStore.php(187): unserialize(\'s:3519:\".br-p{c...\')\n#2 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cache/FileStore.php(49): Illuminate\\Cache\\FileStore->getPayload(\'backend::brand....\')\n#3 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cache/Repository.php(86): Illuminate\\Cache\\FileStore->get(\'backend::brand....\')\n#4 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/october/rain/src/Halcyon/MemoryRepository.php(39): Illuminate\\Cache\\Repository->get(\'backend::brand....\', NULL)\n#5 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cache/Repository.php(70): October\\Rain\\Halcyon\\MemoryRepository->get(\'backend::brand....\')\n#6 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cache/CacheManager.php(304): Illuminate\\Cache\\Repository->has(\'backend::brand....\')\n#7 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(221): Illuminate\\Cache\\CacheManager->__call(\'has\', Array)\n#8 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/backend/models/BrandSetting.php(121): Illuminate\\Support\\Facades\\Facade::__callStatic(\'has\', Array)\n#9 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/backend/layouts/_custom_styles.htm(7): Backend\\Models\\BrandSetting::renderCss()\n#10 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/system/traits/ViewMaker.php(247): include(\'/home/onetechla...\')\n#11 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/system/traits/ViewMaker.php(156): Backend\\Classes\\Controller->makeFileContents(\'/home/onetechla...\', Array)\n#12 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/system/traits/ViewMaker.php(172): Backend\\Classes\\Controller->makeLayout(\'_custom_styles\', Array)\n#13 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/backend/layouts/auth.htm(61): Backend\\Classes\\Controller->makeLayoutPartial(\'_custom_styles\')\n#14 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/system/traits/ViewMaker.php(247): include(\'/home/onetechla...\')\n#15 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/system/traits/ViewMaker.php(156): Backend\\Classes\\Controller->makeFileContents(\'/home/onetechla...\', Array)\n#16 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/system/traits/ViewMaker.php(128): Backend\\Classes\\Controller->makeLayout(NULL)\n#17 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/system/traits/ViewMaker.php(110): Backend\\Classes\\Controller->makeViewContent(\'<h2>Bio Energi ...\')\n#18 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/backend/classes/Controller.php(419): Backend\\Classes\\Controller->makeView(\'signin\')\n#19 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/backend/classes/Controller.php(296): Backend\\Classes\\Controller->execPageAction(\'signin\', Array)\n#20 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/backend/classes/BackendController.php(165): Backend\\Classes\\Controller->run(\'signin\', Array)\n#21 [internal function]: Backend\\Classes\\BackendController->run(\'backend/auth/si...\')\n#22 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#23 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#24 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#25 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#26 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#27 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/backend/classes/BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#48 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#49 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#50 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#51 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#52 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#53 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#54 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#57 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#58 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#59 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#60 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#61 {main}', NULL, '2020-06-30 06:59:04', '2020-06-30 06:59:04');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(10, 'error', 'Twig\\Error\\SyntaxError: Unclosed \"(\" in \"/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_two.htm\" at line 12. in /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Lexer.php:345\nStack trace:\n#0 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Lexer.php(292): Twig\\Lexer->lexExpression()\n#1 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Lexer.php(186): Twig\\Lexer->lexVar()\n#2 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Environment.php(542): Twig\\Lexer->tokenize(Object(Twig\\Source))\n#3 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Environment.php(595): Twig\\Environment->tokenize(Object(Twig\\Source))\n#4 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'/home/onetechla...\', NULL)\n#6 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/classes/Controller.php(1084): Twig\\Environment->loadTemplate(\'/home/onetechla...\')\n#7 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/twig/Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'slider\', Array, true)\n#8 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/storage/cms/twig/dc/dc83c0358ce6155b3617876af7d608e6f74a79152421ed460ca972a63cebbe08.php(84): Cms\\Twig\\Extension->partialFunction(\'home_page/secti...\', Array, true)\n#9 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php(407): __TwigTemplate_35082ec4dffef3f24cb451b595ca583dad396c7adffd2f8cd0352bac408af39b->doDisplay(Array, Array)\n#10 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#11 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php(392): Twig\\Template->display(Array)\n#12 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/classes/Controller.php(433): Twig\\Template->render(Array)\n#13 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/classes/Controller.php(223): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#14 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#15 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#16 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#17 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#18 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#19 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#20 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#21 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#40 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#41 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#42 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#43 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#50 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#51 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#52 {main}', NULL, '2020-06-30 07:05:53', '2020-06-30 07:05:53'),
(11, 'error', 'BadMethodCallException: Method entityDecode does not exist. in /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Support/Traits/Macroable.php:96\nStack trace:\n#0 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(221): October\\Rain\\Html\\HtmlBuilder->__call(\'entityDecode\', Array)\n#1 [internal function]: Illuminate\\Support\\Facades\\Facade::__callStatic(\'entityDecode\', Array)\n#2 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/system/classes/MarkupManager.php(235): call_user_func_array(Array, Array)\n#3 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/storage/cms/twig/4c/4c8dc22cb05d3c9c98c637ee0c2e3199792916344721e2043f0f61e9cfaa9bfc.php(74): System\\Classes\\MarkupManager->System\\Classes\\{closure}(\'entity_decode\', \'<p><img src=\"ht...\')\n#4 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php(407): __TwigTemplate_41bc49c110573ead5e235cffd0660cf88ebad0d7aba2f2fd1e5507000c6cce26->doDisplay(Array, Array)\n#5 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#6 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php(392): Twig\\Template->display(Array)\n#7 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/classes/Controller.php(1085): Twig\\Template->render(Array)\n#8 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/twig/Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'slider\', Array, true)\n#9 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/storage/cms/twig/dc/dc83c0358ce6155b3617876af7d608e6f74a79152421ed460ca972a63cebbe08.php(84): Cms\\Twig\\Extension->partialFunction(\'home_page/secti...\', Array, true)\n#10 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php(407): __TwigTemplate_35082ec4dffef3f24cb451b595ca583dad396c7adffd2f8cd0352bac408af39b->doDisplay(Array, Array)\n#11 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#12 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php(392): Twig\\Template->display(Array)\n#13 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/classes/Controller.php(433): Twig\\Template->render(Array)\n#14 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/classes/Controller.php(223): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#15 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#16 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#17 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#18 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#21 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#22 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#41 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#42 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#43 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#44 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#51 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#52 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#53 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"Method entityDecode does not exist.\") in \"/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_two.htm\" at line 12. in /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php:421\nStack trace:\n#0 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php(392): Twig\\Template->display(Array)\n#2 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/classes/Controller.php(1085): Twig\\Template->render(Array)\n#3 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/twig/Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'slider\', Array, true)\n#4 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/storage/cms/twig/dc/dc83c0358ce6155b3617876af7d608e6f74a79152421ed460ca972a63cebbe08.php(84): Cms\\Twig\\Extension->partialFunction(\'home_page/secti...\', Array, true)\n#5 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php(407): __TwigTemplate_35082ec4dffef3f24cb451b595ca583dad396c7adffd2f8cd0352bac408af39b->doDisplay(Array, Array)\n#6 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#7 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php(392): Twig\\Template->display(Array)\n#8 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/classes/Controller.php(433): Twig\\Template->render(Array)\n#9 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/classes/Controller.php(223): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#10 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#11 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#12 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#13 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#14 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#15 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#16 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#17 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#35 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#36 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#37 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#38 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#39 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 {main}', NULL, '2020-06-30 07:06:10', '2020-06-30 07:06:10'),
(12, 'error', 'Twig\\Error\\SyntaxError: Unknown \"html\" function. Did you mean \"html_*\" in \"/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_two.htm\" at line 12? in /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/ExpressionParser.php:746\nStack trace:\n#0 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/ExpressionParser.php(451): Twig\\ExpressionParser->getFunctionNodeClass(\'html\', 12)\n#1 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/ExpressionParser.php(235): Twig\\ExpressionParser->getFunctionNode(\'html\', 12)\n#2 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/ExpressionParser.php(175): Twig\\ExpressionParser->parsePrimaryExpression()\n#3 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/ExpressionParser.php(70): Twig\\ExpressionParser->getPrimary()\n#4 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Parser.php(142): Twig\\ExpressionParser->parseExpression()\n#5 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/TokenParser/IfTokenParser.php(39): Twig\\Parser->subparse(Array)\n#6 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Parser.php(185): Twig\\TokenParser\\IfTokenParser->parse(Object(Twig\\Token))\n#7 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/TokenParser/IfTokenParser.php(39): Twig\\Parser->subparse(Array)\n#8 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Parser.php(185): Twig\\TokenParser\\IfTokenParser->parse(Object(Twig\\Token))\n#9 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/TokenParser/ForTokenParser.php(52): Twig\\Parser->subparse(Array)\n#10 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Parser.php(185): Twig\\TokenParser\\ForTokenParser->parse(Object(Twig\\Token))\n#11 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#12 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#13 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#14 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#15 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'/home/onetechla...\', NULL)\n#16 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/classes/Controller.php(1084): Twig\\Environment->loadTemplate(\'/home/onetechla...\')\n#17 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/twig/Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'slider\', Array, true)\n#18 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/storage/cms/twig/dc/dc83c0358ce6155b3617876af7d608e6f74a79152421ed460ca972a63cebbe08.php(84): Cms\\Twig\\Extension->partialFunction(\'home_page/secti...\', Array, true)\n#19 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php(407): __TwigTemplate_35082ec4dffef3f24cb451b595ca583dad396c7adffd2f8cd0352bac408af39b->doDisplay(Array, Array)\n#20 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#21 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/twig/twig/src/Template.php(392): Twig\\Template->display(Array)\n#22 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/classes/Controller.php(433): Twig\\Template->render(Array)\n#23 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/classes/Controller.php(223): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#24 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#25 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#26 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#27 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#28 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#29 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#30 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#31 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#49 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#50 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#51 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#52 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#53 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#54 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#55 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#57 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#58 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#59 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#60 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#61 /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#62 {main}', NULL, '2020-06-30 07:06:45', '2020-06-30 07:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_files`
--

INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, '5ed68075de866627680103.png', 'logowilhels.png', 33160, 'image/png', NULL, NULL, 'logo', '2', 'Backend\\Models\\BrandSetting', 1, 1, '2020-06-02 09:38:13', '2020-06-02 09:38:21'),
(2, '5ed6807a849a2456436904.png', 'logowilhels_square.png', 40722, 'image/png', NULL, NULL, 'favicon', '2', 'Backend\\Models\\BrandSetting', 1, 2, '2020-06-02 09:38:18', '2020-06-02 09:38:21'),
(3, '5ed6b572140d0450993458.png', 'Unity.png', 1101133, 'image/png', NULL, NULL, 'featured_image', '1', 'VimirLab\\Testimonials\\Models\\Testimonial', 1, 3, '2020-06-02 13:24:18', '2020-06-02 13:24:22'),
(4, '5ed6ba4c9731f286039266.jpg', 'rubyonrails.jpg', 829348, 'image/jpeg', NULL, NULL, 'featured_image', '2', 'VimirLab\\Testimonials\\Models\\Testimonial', 1, 4, '2020-06-02 13:45:00', '2020-06-02 13:45:04'),
(5, '5ed7249e60460766955401.png', 'ror.png', 1013777, 'image/png', NULL, NULL, 'featured_image', '3', 'VimirLab\\Testimonials\\Models\\Testimonial', 1, 5, '2020-06-02 21:18:38', '2020-06-02 21:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_css` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2020-06-02 09:32:18', '2020-06-02 09:32:18'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2020-06-02 09:32:18', '2020-06-02 09:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_mail_partials`
--

INSERT INTO `system_mail_partials` (`id`, `name`, `code`, `content_html`, `content_text`, `is_custom`, `created_at`, `updated_at`) VALUES
(1, 'Header', 'header', '<tr>\n    <td class=\"header\">\n        {% if url %}\n            <a href=\"{{ url }}\">\n                {{ body }}\n            </a>\n        {% else %}\n            <span>\n                {{ body }}\n            </span>\n        {% endif %}\n    </td>\n</tr>', '*** {{ body|trim }} <{{ url }}>', 0, '2020-06-02 09:50:09', '2020-06-02 09:50:09'),
(2, 'Footer', 'footer', '<tr>\n    <td>\n        <table class=\"footer\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n            <tr>\n                <td class=\"content-cell\" align=\"center\">\n                    {{ body|md_safe }}\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>', '-------------------\n{{ body|trim }}', 0, '2020-06-02 09:50:09', '2020-06-02 09:50:09'),
(3, 'Button', 'button', '<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td align=\"center\">\n            <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                <tr>\n                    <td align=\"center\">\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                            <tr>\n                                <td>\n                                    <a href=\"{{ url }}\" class=\"button button-{{ type ?: \'primary\' }}\" target=\"_blank\">\n                                        {{ body }}\n                                    </a>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>', '{{ body|trim }} <{{ url }}>', 0, '2020-06-02 09:50:09', '2020-06-02 09:50:09'),
(4, 'Panel', 'panel', '<table class=\"panel break-all\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td class=\"panel-content\">\n            <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                <tr>\n                    <td class=\"panel-item\">\n                        {{ body|md_safe }}\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>', '{{ body|trim }}', 0, '2020-06-02 09:50:09', '2020-06-02 09:50:09'),
(5, 'Table', 'table', '<div class=\"table\">\n    {{ body|md_safe }}\n</div>', '{{ body|trim }}', 0, '2020-06-02 09:50:09', '2020-06-02 09:50:09'),
(6, 'Subcopy', 'subcopy', '<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td>\n            {{ body|md_safe }}\n        </td>\n    </tr>\n</table>', '-----\n{{ body|trim }}', 0, '2020-06-02 09:50:09', '2020-06-02 09:50:09'),
(7, 'Promotion', 'promotion', '<table class=\"promotion break-all\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td align=\"center\">\n            {{ body|md_safe }}\n        </td>\n    </tr>\n</table>', '{{ body|trim }}', 0, '2020-06-02 09:50:09', '2020-06-02 09:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_mail_templates`
--

INSERT INTO `system_mail_templates` (`id`, `code`, `subject`, `description`, `content_html`, `content_text`, `layout_id`, `is_custom`, `created_at`, `updated_at`) VALUES
(1, 'backend::mail.invite', NULL, 'Invite new admin to the site', NULL, NULL, 2, 0, '2020-06-02 09:50:09', '2020-06-02 09:50:09'),
(2, 'backend::mail.restore', NULL, 'Reset an admin password', NULL, NULL, 2, 0, '2020-06-02 09:50:09', '2020-06-02 09:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'core', 'hash', '\"a8da883ce43bd326c082338dec1e006b\"'),
(3, 'system', 'core', 'build', '\"465\"'),
(4, 'system', 'update', 'retry', '1593612043');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(1, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2020-06-02 09:32:03'),
(2, 'RainLab.Blog', 'script', '1.0.1', 'create_posts_table.php', '2020-06-02 09:32:04'),
(3, 'RainLab.Blog', 'script', '1.0.1', 'create_categories_table.php', '2020-06-02 09:32:07'),
(4, 'RainLab.Blog', 'script', '1.0.1', 'seed_all_tables.php', '2020-06-02 09:32:07'),
(5, 'RainLab.Blog', 'comment', '1.0.1', 'Initialize plugin.', '2020-06-02 09:32:07'),
(6, 'RainLab.Blog', 'comment', '1.0.2', 'Added the processed HTML content column to the posts table.', '2020-06-02 09:32:08'),
(7, 'RainLab.Blog', 'comment', '1.0.3', 'Category component has been merged with Posts component.', '2020-06-02 09:32:08'),
(8, 'RainLab.Blog', 'comment', '1.0.4', 'Improvements to the Posts list management UI.', '2020-06-02 09:32:08'),
(9, 'RainLab.Blog', 'comment', '1.0.5', 'Removes the Author column from blog post list.', '2020-06-02 09:32:09'),
(10, 'RainLab.Blog', 'comment', '1.0.6', 'Featured images now appear in the Post component.', '2020-06-02 09:32:09'),
(11, 'RainLab.Blog', 'comment', '1.0.7', 'Added support for the Static Pages menus.', '2020-06-02 09:32:09'),
(12, 'RainLab.Blog', 'comment', '1.0.8', 'Added total posts to category list.', '2020-06-02 09:32:09'),
(13, 'RainLab.Blog', 'comment', '1.0.9', 'Added support for the Sitemap plugin.', '2020-06-02 09:32:09'),
(14, 'RainLab.Blog', 'comment', '1.0.10', 'Added permission to prevent users from seeing posts they did not create.', '2020-06-02 09:32:09'),
(15, 'RainLab.Blog', 'comment', '1.0.11', 'Deprecate \"idParam\" component property in favour of \"slug\" property.', '2020-06-02 09:32:09'),
(16, 'RainLab.Blog', 'comment', '1.0.12', 'Fixes issue where images cannot be uploaded caused by latest Markdown library.', '2020-06-02 09:32:10'),
(17, 'RainLab.Blog', 'comment', '1.0.13', 'Fixes problem with providing pages to Sitemap and Pages plugins.', '2020-06-02 09:32:10'),
(18, 'RainLab.Blog', 'comment', '1.0.14', 'Add support for CSRF protection feature added to core.', '2020-06-02 09:32:10'),
(19, 'RainLab.Blog', 'comment', '1.1.0', 'Replaced the Post editor with the new core Markdown editor.', '2020-06-02 09:32:10'),
(20, 'RainLab.Blog', 'comment', '1.1.1', 'Posts can now be imported and exported.', '2020-06-02 09:32:10'),
(21, 'RainLab.Blog', 'comment', '1.1.2', 'Posts are no longer visible if the published date has not passed.', '2020-06-02 09:32:11'),
(22, 'RainLab.Blog', 'comment', '1.1.3', 'Added a New Post shortcut button to the blog menu.', '2020-06-02 09:32:11'),
(23, 'RainLab.Blog', 'script', '1.2.0', 'categories_add_nested_fields.php', '2020-06-02 09:32:11'),
(24, 'RainLab.Blog', 'comment', '1.2.0', 'Categories now support nesting.', '2020-06-02 09:32:11'),
(25, 'RainLab.Blog', 'comment', '1.2.1', 'Post slugs now must be unique.', '2020-06-02 09:32:11'),
(26, 'RainLab.Blog', 'comment', '1.2.2', 'Fixes issue on new installs.', '2020-06-02 09:32:11'),
(27, 'RainLab.Blog', 'comment', '1.2.3', 'Minor user interface update.', '2020-06-02 09:32:12'),
(28, 'RainLab.Blog', 'script', '1.2.4', 'update_timestamp_nullable.php', '2020-06-02 09:32:13'),
(29, 'RainLab.Blog', 'comment', '1.2.4', 'Database maintenance. Updated all timestamp columns to be nullable.', '2020-06-02 09:32:13'),
(30, 'RainLab.Blog', 'comment', '1.2.5', 'Added translation support for blog posts.', '2020-06-02 09:32:13'),
(31, 'RainLab.Blog', 'comment', '1.2.6', 'The published field can now supply a time with the date.', '2020-06-02 09:32:14'),
(32, 'RainLab.Blog', 'comment', '1.2.7', 'Introduced a new RSS feed component.', '2020-06-02 09:32:14'),
(33, 'RainLab.Blog', 'comment', '1.2.8', 'Fixes issue with translated `content_html` attribute on blog posts.', '2020-06-02 09:32:14'),
(34, 'RainLab.Blog', 'comment', '1.2.9', 'Added translation support for blog categories.', '2020-06-02 09:32:14'),
(35, 'RainLab.Blog', 'comment', '1.2.10', 'Added translation support for post slugs.', '2020-06-02 09:32:14'),
(36, 'RainLab.Blog', 'comment', '1.2.11', 'Fixes bug where excerpt is not translated.', '2020-06-02 09:32:14'),
(37, 'RainLab.Blog', 'comment', '1.2.12', 'Description field added to category form.', '2020-06-02 09:32:15'),
(38, 'RainLab.Blog', 'comment', '1.2.13', 'Improved support for Static Pages menus, added a blog post and all blog posts.', '2020-06-02 09:32:15'),
(39, 'RainLab.Blog', 'comment', '1.2.14', 'Added post exception property to the post list component, useful for showing related posts.', '2020-06-02 09:32:15'),
(40, 'RainLab.Blog', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2020-06-02 09:32:15'),
(41, 'RainLab.Blog', 'comment', '1.2.16', 'Added `nextPost` and `previousPost` to the blog post component.', '2020-06-02 09:32:15'),
(42, 'RainLab.Blog', 'comment', '1.2.17', 'Improved the next and previous logic to sort by the published date.', '2020-06-02 09:32:15'),
(43, 'RainLab.Blog', 'comment', '1.2.18', 'Minor change to internals.', '2020-06-02 09:32:15'),
(44, 'RainLab.Blog', 'comment', '1.2.19', 'Improved support for Build 420+', '2020-06-02 09:32:16'),
(45, 'RainLab.Blog', 'script', '1.3.0', 'posts_add_metadata.php', '2020-06-02 09:32:16'),
(46, 'RainLab.Blog', 'comment', '1.3.0', 'Added metadata column for plugins to store data in', '2020-06-02 09:32:16'),
(47, 'RainLab.Blog', 'comment', '1.3.1', 'Fixed metadata column not being jsonable', '2020-06-02 09:32:16'),
(48, 'RainLab.Blog', 'comment', '1.3.2', 'Allow custom slug name for components, add 404 handling for missing blog posts, allow exporting of blog images.', '2020-06-02 09:32:16'),
(49, 'RainLab.Blog', 'comment', '1.3.3', 'Fixed \'excluded categories\' filter from being run when value is empty.', '2020-06-02 09:32:17'),
(50, 'RainLab.Blog', 'comment', '1.3.4', 'Allow post author to be specified. Improved translations.', '2020-06-02 09:32:17'),
(51, 'RainLab.Blog', 'comment', '1.3.5', 'Fixed missing user info from breaking initial seeder in migrations. Fixed a PostgreSQL issue with blog exports.', '2020-06-02 09:32:17'),
(52, 'RainLab.Blog', 'comment', '1.3.6', 'Improved French translations.', '2020-06-02 09:32:17'),
(53, 'RainLab.Blog', 'comment', '1.4.0', 'Stability improvements. Rollback custom slug names for components', '2020-06-02 09:32:17'),
(54, 'VimirLab.Testimonials', 'script', '1.0.1', 'create_testimonials_table.php', '2020-06-02 13:21:11'),
(55, 'VimirLab.Testimonials', 'comment', '1.0.1', 'First version of Testimonials', '2020-06-02 13:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `is_frozen` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(1, 'October.Demo', '1.0.1', '2020-06-02 09:32:03', 0, 0),
(2, 'RainLab.Blog', '1.4.0', '2020-06-02 09:32:17', 0, 0),
(3, 'VimirLab.Testimonials', '1.0.1', '2020-06-02 13:21:11', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
(1, 'system_mail_settings', '{\"send_mode\":\"smtp\",\"sender_name\":\"Wilhels - Citratus\",\"sender_email\":\"noreply@domain.tld\",\"sendmail_path\":\"\\/usr\\/sbin\\/sendmail -bs\",\"smtp_address\":\"smtp.mailgun.org\",\"smtp_port\":\"587\",\"smtp_user\":\"\",\"smtp_password\":\"\",\"smtp_authorization\":\"0\",\"smtp_encryption\":\"tls\",\"mailgun_domain\":\"\",\"mailgun_secret\":\"\",\"mandrill_secret\":\"\",\"ses_key\":\"\",\"ses_secret\":\"\",\"ses_region\":\"\",\"sparkpost_secret\":\"\"}'),
(2, 'backend_brand_settings', '{\"app_name\":\"Wilhels Briket Indonesia\",\"app_tagline\":\"Bio Energi Indonesia\",\"primary_color\":\"#34495e\",\"secondary_color\":\"#e67e22\",\"accent_color\":\"#3498db\",\"menu_mode\":\"inline\",\"custom_css\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `vimirlab_testimonials_testimonials`
--

CREATE TABLE `vimirlab_testimonials_testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vimirlab_testimonials_testimonials`
--

INSERT INTO `vimirlab_testimonials_testimonials` (`id`, `name`, `email`, `title`, `content`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Ridwan', 'onetechlabsbymuhammadridwan@gmail.com', 'Founder of Onetechlabs Indonesia', '<figure data-label=\"vid2.mp4\" data-video=\"http://localhost:8000/storage/app/media/konten_citratus/citratus_videos/vid2.mp4\">&nbsp;</figure>\r\n\r\n<p>Lorem Ipsum Dolor SIt AMet</p>', 1, '2020-06-02 13:24:21', '2020-06-30 07:59:37'),
(2, 'Mart Ian', 'undefinedemail47@gmail.com', 'co-founder onetechlabs indonesia', '<p>Mantap Aromanya Enak</p>', 1, '2020-06-02 13:45:04', '2020-06-02 13:45:04'),
(3, 'mridwan339', 'mridwan339@gmail.com', 'IT programmer', '<p>Lorem Ipsum dolor sit amet</p>', 1, '2020-06-02 21:18:41', '2020-06-02 21:18:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Indexes for table `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Indexes for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Indexes for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Indexes for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Indexes for table `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_templates_source_index` (`source`),
  ADD KEY `cms_theme_templates_path_index` (`path`);

--
-- Indexes for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`),
  ADD KEY `deferred_bindings_session_key_index` (`session_key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_categories_slug_index` (`slug`),
  ADD KEY `rainlab_blog_categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_posts_user_id_index` (`user_id`),
  ADD KEY `rainlab_blog_posts_slug_index` (`slug`);

--
-- Indexes for table `rainlab_blog_posts_categories`
--
ALTER TABLE `rainlab_blog_posts_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Indexes for table `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Indexes for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Indexes for table `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Indexes for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Indexes for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Indexes for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- Indexes for table `vimirlab_testimonials_testimonials`
--
ALTER TABLE `vimirlab_testimonials_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vimirlab_testimonials_testimonials`
--
ALTER TABLE `vimirlab_testimonials_testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
