-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2022 at 08:03 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agecdevelopment`
--

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsibilities` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `title`, `description`, `responsibilities`, `created_at`, `updated_at`) VALUES
(1, 'Senior Consultant', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. <br/> \r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'What is Lorem Ipsum,\r\nWhy do we use it,\r\nWhere does it come from,\r\nWhere can I get some', '2022-06-02 10:36:28', '2022-06-02 10:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-05-26 05:27:05', '2022-05-26 05:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 4),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'page_id', 'text', 'Page Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'content', 'text_area', 'Content', 0, 1, 1, 1, 1, 1, '{}', 4),
(59, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(60, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(61, 7, 'page_component_belongsto_page_relationship', 'relationship', 'pages', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Page\",\"table\":\"pages\",\"type\":\"belongsTo\",\"column\":\"page_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(62, 7, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(63, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 9, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(65, 9, 'header_one', 'text', 'Header One', 0, 0, 1, 1, 1, 1, '{}', 4),
(66, 9, 'header_two', 'text', 'Header Two', 0, 0, 1, 1, 1, 1, '{}', 5),
(67, 9, 'video_or_image_link', 'text_area', 'Video Or Image Link', 0, 0, 1, 1, 1, 1, '{}', 6),
(68, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, '{}', 9),
(69, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(70, 9, 'page_id', 'select_dropdown', 'Page Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(71, 9, 'page_slider_belongsto_page_relationship', 'relationship', 'pages', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Page\",\"table\":\"pages\",\"type\":\"belongsTo\",\"column\":\"page_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(72, 9, 'button_link', 'text', 'Button Link', 0, 0, 1, 1, 1, 1, '{}', 8),
(73, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(74, 10, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(75, 10, 'sub_title', 'text', 'Sub Title', 0, 0, 1, 1, 1, 1, '{}', 4),
(76, 10, 'images', 'multiple_images', 'Images', 0, 0, 1, 1, 1, 1, '{}', 5),
(77, 10, 'small_description', 'text_area', 'Small Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(78, 10, 'section_one_title', 'text', 'Section One Title', 0, 0, 1, 1, 1, 1, '{}', 7),
(79, 10, 'section_one_description', 'text_area', 'Section One Description', 0, 0, 1, 1, 1, 1, '{}', 8),
(80, 10, 'section_one_features_list', 'text_area', 'Section One Features List', 0, 0, 1, 1, 1, 1, '{}', 9),
(81, 10, 'section_two_title', 'text', 'Section Two Title', 0, 0, 1, 1, 1, 1, '{}', 10),
(82, 10, 'section_two_description', 'text_area', 'Section Two Description', 0, 0, 1, 1, 1, 1, '{}', 11),
(83, 10, 'section_two_features_list', 'text_area', 'Section Two Features List', 0, 0, 1, 1, 1, 1, '{}', 12),
(84, 10, 'video_link', 'text', 'Video Link', 0, 0, 1, 1, 1, 1, '{}', 13),
(85, 10, 'section_three_title', 'text', 'Section Three Title', 0, 0, 1, 1, 1, 1, '{}', 14),
(86, 10, 'section_three_sub_title', 'text', 'Section Three Sub Title', 0, 0, 1, 1, 1, 1, '{}', 15),
(88, 10, 'image_two_link', 'image', 'Image Two Link', 0, 0, 1, 1, 1, 1, '{}', 17),
(89, 10, 'address', 'text_area', 'Address', 0, 0, 1, 1, 1, 1, '{}', 19),
(90, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 20),
(91, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 21),
(92, 10, 'image_one_link', 'image', 'Image One Link', 0, 0, 1, 1, 1, 1, '{}', 16),
(93, 10, 'featured_image', 'image', 'Featured Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(94, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(96, 11, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(97, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(98, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(99, 9, 'multiple_images', 'multiple_images', 'Multiple Images', 0, 0, 1, 1, 1, 1, '{}', 7),
(100, 6, 'author_id', 'text', 'Author Id', 0, 0, 1, 1, 1, 0, '{}', 7),
(101, 6, 'meta_title', 'text', 'Meta Title', 0, 1, 1, 1, 1, 1, '{}', 8),
(102, 6, 'meta_description', 'text_area', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 9),
(103, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 1, 1, 1, 1, 1, '{}', 10),
(104, 7, 'gallery', 'media_picker', 'Gallery', 0, 1, 1, 1, 1, 1, '{\"max\":100,\"min\":0}', 7),
(105, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(106, 12, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(107, 12, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, '{}', 3),
(108, 12, 'responsibilities', 'text_area', 'Responsibilities', 0, 0, 1, 1, 1, 1, '{}', 4),
(109, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(110, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(111, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(112, 13, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(113, 13, 'content', 'text_area', 'Content', 0, 0, 1, 1, 1, 1, '{}', 3),
(114, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(115, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(116, 13, 'project_id', 'text', 'Project Id', 0, 0, 1, 1, 1, 1, '{}', 4),
(117, 13, 'project_type_belongsto_project_relationship', 'relationship', 'projects', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Project\",\"table\":\"projects\",\"type\":\"belongsTo\",\"column\":\"project_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"careers\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(118, 11, 'project_category_belongstomany_project_relationship', 'relationship', 'projects', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Project\",\"table\":\"projects\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"project_p_categories\",\"pivot\":\"1\",\"taggable\":\"0\"}', 6),
(120, 13, 'gallery', 'media_picker', 'Gallery', 0, 0, 1, 1, 1, 1, '{\"max\":100,\"min\":0}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-05-26 05:27:04', '2022-05-26 05:27:04'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-05-26 05:27:04', '2022-05-26 05:27:04'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-05-26 05:27:04', '2022-05-26 05:27:04'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-05-26 05:27:05', '2022-05-30 19:42:32'),
(7, 'page_components', 'page-components', 'Page Component', 'Page Components', NULL, 'App\\PageComponent', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-05-26 05:29:15', '2022-06-04 14:58:10'),
(8, 'page_slider', 'page-slider', 'Page Slider', 'Page Sliders', NULL, 'App\\PageSlider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-05-26 05:37:25', '2022-05-26 05:37:25'),
(9, 'page_sliders', 'page-sliders', 'Page Slider', 'Page Sliders', NULL, 'App\\PageSlider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-05-26 05:44:42', '2022-05-27 17:08:46'),
(10, 'projects', 'projects', 'Project', 'Projects', NULL, 'App\\Project', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-05-26 08:40:41', '2022-06-04 14:47:48'),
(11, 'project_categories', 'project-categories', 'Project Category', 'Project Categories', NULL, 'App\\ProjectCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-05-26 08:56:46', '2022-06-04 13:11:07'),
(12, 'careers', 'careers', 'Career', 'Careers', NULL, 'App\\Career', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-02 10:34:57', '2022-06-02 10:39:36'),
(13, 'project_types', 'project-types', 'Project Type', 'Project Types', NULL, 'App\\ProjectType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-04 12:58:34', '2022-06-04 14:55:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(2, 'Main Menu', '2022-05-26 05:50:22', '2022-05-26 05:50:22'),
(3, 'Footer Right Menu', '2022-05-28 19:01:58', '2022-05-28 19:01:58'),
(4, 'Footer Left Menu', '2022-05-28 19:02:08', '2022-05-28 19:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-05-26 05:27:05', '2022-05-26 05:27:05', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2022-05-26 05:27:05', '2022-05-26 05:33:51', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-05-26 05:27:05', '2022-05-26 05:27:05', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-05-26 05:27:05', '2022-05-26 05:27:05', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2022-05-26 05:27:05', '2022-06-02 10:40:12', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-05-26 05:27:05', '2022-05-26 05:33:51', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-05-26 05:27:05', '2022-05-26 05:33:51', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-05-26 05:27:05', '2022-05-26 05:33:51', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-05-26 05:27:05', '2022-05-26 05:33:51', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2022-05-26 05:27:05', '2022-06-02 10:40:12', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', NULL, '#000000', 21, 2, '2022-05-26 05:27:05', '2022-05-26 08:53:40', 'voyager.categories.index', 'null'),
(12, 1, 'Posts', '', '_self', NULL, '#000000', 21, 1, '2022-05-26 05:27:05', '2022-05-26 08:53:20', 'voyager.posts.index', 'null'),
(13, 1, 'Add Page', '', '_self', NULL, '#000000', 17, 1, '2022-05-26 05:27:05', '2022-05-26 08:52:06', 'voyager.pages.index', 'null'),
(14, 1, 'Page Components', '', '_self', NULL, NULL, 17, 2, '2022-05-26 05:29:15', '2022-05-26 05:46:12', 'voyager.page-components.index', NULL),
(16, 1, 'Page Sliders', '', '_self', NULL, NULL, 17, 3, '2022-05-26 05:44:42', '2022-05-26 05:46:12', 'voyager.page-sliders.index', NULL),
(17, 1, 'Pages', '#', '_self', 'voyager-file-text', '#000000', NULL, 7, '2022-05-26 05:45:56', '2022-06-02 10:40:18', NULL, ''),
(18, 2, 'Home', '/', '_self', NULL, '#000000', NULL, 1, '2022-05-26 06:58:59', '2022-05-27 17:03:34', NULL, ''),
(19, 1, 'Projects', '', '_self', NULL, NULL, 20, 1, '2022-05-26 08:40:42', '2022-05-26 08:51:41', 'voyager.projects.index', NULL),
(20, 1, 'Projects', '#', '_self', 'voyager-company', '#000000', NULL, 5, '2022-05-26 08:51:31', '2022-05-26 08:51:38', NULL, ''),
(21, 1, 'Blog', '', '_self', 'voyager-news', '#000000', NULL, 8, '2022-05-26 08:53:04', '2022-06-02 10:40:12', NULL, ''),
(22, 1, 'Project Categories', '', '_self', NULL, NULL, 20, 2, '2022-05-26 08:56:46', '2022-05-26 09:14:06', 'voyager.project-categories.index', NULL),
(23, 2, 'Projects', '/projects', '_self', NULL, '#000000', NULL, 3, '2022-05-27 16:24:32', '2022-05-30 19:09:28', NULL, ''),
(24, 2, 'About Us', '/about-us', '_self', NULL, '#000000', NULL, 2, '2022-05-27 16:39:53', '2022-05-27 17:03:34', NULL, ''),
(25, 2, 'Contact Us', '/contact-us', '_self', NULL, '#000000', NULL, 6, '2022-05-27 17:49:55', '2022-06-02 12:37:35', NULL, ''),
(26, 4, 'Home', '/', '_self', NULL, '#000000', NULL, 11, '2022-05-28 19:02:38', '2022-05-28 19:02:38', NULL, ''),
(27, 4, 'About Us', '/about-us', '_self', NULL, '#000000', NULL, 12, '2022-05-28 19:02:51', '2022-05-28 19:02:51', NULL, ''),
(28, 4, 'Letter from Chairman', '/letter-from-chairman', '_self', NULL, '#000000', NULL, 13, '2022-05-28 19:04:25', '2022-05-28 19:04:25', NULL, ''),
(29, 4, 'Projects', '/projects', '_self', NULL, '#000000', NULL, 14, '2022-05-28 19:05:12', '2022-05-28 19:05:12', NULL, ''),
(30, 3, 'Contact Us', '/contact-us', '_self', NULL, '#000000', NULL, 3, '2022-05-28 19:05:46', '2022-05-28 19:07:20', NULL, ''),
(31, 3, 'Career', '/career', '_self', NULL, '#000000', NULL, 1, '2022-05-28 19:06:13', '2022-05-28 19:07:20', NULL, ''),
(32, 3, 'Media Coverage', '/media-coverage', '_self', NULL, '#000000', NULL, 2, '2022-05-28 19:07:17', '2022-05-28 19:07:20', NULL, ''),
(33, 2, 'Media Coverage', '/media-coverage', '_self', NULL, '#000000', 36, 2, '2022-05-30 18:24:21', '2022-06-02 08:34:28', NULL, ''),
(35, 2, 'Chairman\'s Message', '/chairman-message', '_self', NULL, '#000000', 24, 1, '2022-05-30 19:07:36', '2022-05-30 19:09:28', NULL, ''),
(36, 2, 'Media', '#', '_self', NULL, '#000000', NULL, 4, '2022-05-30 19:22:28', '2022-05-30 19:22:31', NULL, ''),
(37, 2, 'Media Gallery', '/media-gallery', '_self', NULL, '#000000', 36, 1, '2022-06-02 08:34:23', '2022-06-02 08:34:28', NULL, ''),
(38, 1, 'Careers', '', '_self', 'voyager-edit', '#000000', NULL, 6, '2022-06-02 10:34:57', '2022-06-02 10:41:53', 'voyager.careers.index', 'null'),
(39, 2, 'Careers', '/careers', '_self', NULL, '#000000', NULL, 5, '2022-06-02 12:37:27', '2022-06-02 12:37:35', NULL, ''),
(40, 1, 'Project Types', '', '_self', NULL, NULL, 20, 3, '2022-06-04 12:58:34', '2022-06-04 12:59:02', 'voyager.project-types.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `excerpt`, `slug`, `created_at`, `updated_at`, `author_id`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
(2, 'Home', 'This is Home Page', '/', '2022-05-26 06:09:16', '2022-05-30 19:51:06', 1, 'Home', 'This A New Home', 'agec,home,index'),
(3, 'About us', NULL, 'about-us', '2022-05-27 16:40:12', '2022-05-31 15:13:17', 1, 'About Us', 'This About Us', 'aboutagec'),
(4, 'Chairman\'s Message', NULL, 'chairman-message', '2022-05-28 17:20:12', '2022-05-31 15:17:59', 1, 'Chairman Message', 'This is Chairman Message', 'agecchairmanmessage'),
(7, 'Contact us', NULL, 'contact-us', '2022-05-28 18:05:16', '2022-05-31 15:18:31', 1, 'Contact Us', 'Agec Contact us', 'contactus'),
(8, 'Media center', NULL, 'media-center', '2022-06-01 08:42:44', '2022-06-01 08:42:44', 1, 'Media center', 'This is agec media center', 'agecmedia.media,center'),
(9, 'Projects', NULL, 'projects', '2022-06-01 09:01:07', '2022-06-01 09:01:07', 1, 'Projects', 'This is agec projects', 'agecprojecs'),
(10, 'Media Gallery', NULL, 'media-gallery', '2022-06-01 09:03:19', '2022-06-01 09:03:19', 1, 'Media Gallery', 'This is Media Gallery', 'media,agec,gallery'),
(11, 'Careers', NULL, 'careers', '2022-06-02 10:32:14', '2022-06-02 10:32:14', 1, 'Careers', 'Agec Careers', 'ageccareers,careers');

-- --------------------------------------------------------

--
-- Table structure for table `page_components`
--

CREATE TABLE `page_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_components`
--

INSERT INTO `page_components` (`id`, `page_id`, `content`, `created_at`, `updated_at`, `title`, `gallery`) VALUES
(1, 3, 'AGEC Developments', '2022-05-27 16:40:48', '2022-05-27 16:40:48', 'About us title', NULL),
(2, 3, 'For more than two decades, AGEC Developments takes pride in its innovative construction, as a premium Egyptian Developer.\r\nWith an engraved legacy that only got stronger by time,Now AGEC Developments is expanding through various projects in distinct locations between New Cairo and Suez Road, particularly in front of Madinaty to offer the real estate market a model of its vision, which has always been keen to provide a distinct real estate product that meets the customer\'s needs and guarantees the best investment opportunity.', '2022-05-27 16:42:00', '2022-05-27 16:55:50', 'About us first paragraph', NULL),
(3, 3, 'It also takes pride in earning the trust of the US. Green Building Council, one of the most prominent global organizations aiming to transform the way buildings and communities are designed and operated, through preserving a prosperous environment and maintaining a sustainable as well as a healthy way of living; maintaining energy saving methods and environmentally friendly and sustainable future developments.', '2022-05-27 16:42:21', '2022-05-27 16:42:21', 'About us second paragraph', NULL),
(5, 3, 'To provide an outstanding level of service and expertise in the real estate market that is innovative and ambitious. AGEC Developments is dedicated to developing projects that are ambitious in scope and conscious, both of the community it is in and of the needs of its owners.\r\n<br/>\r\nTo lead the real estate market by acting in the best interest of our clients and our environment. By holding to unquestionable ethics and aligning our projects with the values of clients.', '2022-05-27 16:43:54', '2022-05-27 16:43:54', 'Sustainability', NULL),
(6, 3, 'Deliver real estate developments that show an integrated international-standard lifestyle, reflecting AGEC Developments excellence and construction quality. Reinforcing the image of AGEC Developments as a trusted and capable real estate developer.\r\n<br/>\r\nTo help improve the everyday lives of clients by building offices and homes based on deep research of what owners need. To engage in developments that are as usable and client-centric as they are grand in scope.', '2022-05-27 16:44:15', '2022-05-27 16:44:15', 'Quality of Life', NULL),
(7, 3, 'To perfect and spread the concept of eco-friendly developments with a user-first design approach.\r\n<br/>\r\nTo be the leading developer fostering sustainable communities and world-class real estate projects in Egypt.\r\n<br/>\r\nTo accelerate Egypt’s transition to fully sustainable developments.', '2022-05-27 16:44:44', '2022-05-27 16:44:44', 'Sustainability', NULL),
(8, 3, 'To provide every owner with unparalleled quality of life and every means to choose their lifestyle.\r\n<br/>\r\nTo create a better everyday life for people at home and work To develop better homes and offices, so people can do best what they do best.\r\n<br/>\r\nTo be the leading developer in Egypt by integrating the values real estate owners look for from design, to execution, to delivery.', '2022-05-27 16:45:06', '2022-05-27 16:45:06', 'Quality of Life', NULL),
(9, 4, 'Since AGEC Developments was established more than 20 years ago, we have followed a work strategy based on Engineering, Managerial Science, and Experience in the local market to achieve sustainable growth.\n<br/>\nWe believe that profit is just a basic motivation, but achievement is to be considered the true goal. We therefore always prioritize innovation, quality, and distinction among our peers in the market, and our clients’ satisfaction is the only true measure of our success.\n<br/>\nIn our pursuit of quality and innovation, we have very keenly kept up to date with international trends in the field of Real Estate Developments, and so we joined the esteemed U.S Green Building Council in 2004, which specializes in energy-saving, sustainable green buildings. Since then, we have been committed to delivering the highest quality to our clients and the best return on their investments, and will continue to strive towards our goal of respecting and fulfilling our promise.\n<br/>\nBest Regards', '2022-05-30 18:51:00', '2022-05-30 18:52:52', 'Chairman Message', NULL),
(10, 4, '<b>Chairman</b>\n<br/>\nEng Ayman Lowis Rafla holds a Bachelor of Engineering\nfrom Ain Shams University, an MBA from ESLSCA University in France,\na member of the American Concrete Institute and has completed a research\ncourse presented by World Bank courses in corporate governance.', '2022-05-30 18:54:12', '2022-05-30 18:54:12', 'Engineer / Ayman Louis Rafla', NULL),
(11, 10, '', '2022-06-01 08:46:00', '2022-06-02 08:26:33', 'Media Center Gallery', '[\"page-components/about0.jpg\",\"page-components/about1.jpg\",\"page-components/about2.jpg\",\"page-components/about3.jpg\",\"page-components/about4.jpg\",\"page-components/about5.jpg\",\"page-components/about6.jpg\"]'),
(12, 11, 'Responsibilities', '2022-06-02 12:28:35', '2022-06-02 12:28:35', 'Responsibilities Title', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `page_sliders`
--

CREATE TABLE `page_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_one` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_two` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_or_image_link` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `button_link` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `multiple_images` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_sliders`
--

INSERT INTO `page_sliders` (`id`, `title`, `header_one`, `header_two`, `video_or_image_link`, `created_at`, `updated_at`, `page_id`, `button_link`, `multiple_images`) VALUES
(1, 'Slider Home', '<span>AGEC  Developments</span><br> Sustainability <span>Building</span>', 'Find Your Dream Home.', 'https://agecdevelopments.com/videos/video1.mp4', '2022-05-26 06:26:18', '2022-05-26 06:41:39', 2, 'https://google.com', NULL),
(2, 'About us slider', NULL, NULL, NULL, '2022-05-27 17:07:54', '2022-05-27 17:07:54', 3, NULL, '[\"page-sliders\\\\May2022\\\\n4ywb0k6NzxMwQzM7Blx.jpg\",\"page-sliders\\\\May2022\\\\ii05Int0j90ExRKgrnMb.jpg\",\"page-sliders\\\\May2022\\\\H1PkfE1Gfq0cgDHNSvxP.jpg\",\"page-sliders\\\\May2022\\\\BLmbsFZJQLoeb3lL5M8I.jpg\",\"page-sliders\\\\May2022\\\\qGCaQsUMxKV9xPKnWqWe.jpg\",\"page-sliders\\\\May2022\\\\CyCpDm605iJZ4Zrw4dHr.jpg\",\"page-sliders\\\\May2022\\\\CkRIPfvxxGblQDIA82HX.jpg\"]'),
(3, 'Chairmanslider', NULL, NULL, NULL, '2022-05-30 18:56:19', '2022-05-30 18:56:19', 4, NULL, '[\"page-sliders\\\\May2022\\\\cQ5l9ieBhbCVWxwtdIWX.jpg\",\"page-sliders\\\\May2022\\\\hj4Rfmh3mdQkIV2tHunK.jpg\",\"page-sliders\\\\May2022\\\\nwz9fW8GXzU3oIN21Amn.jpg\",\"page-sliders\\\\May2022\\\\PM5dMfjBatyHYWS86W4O.jpg\",\"page-sliders\\\\May2022\\\\UaRdH0MdmxjOkKphjitU.jpg\",\"page-sliders\\\\May2022\\\\xLOXmjUnPPPyvJSxZSUy.jpg\",\"page-sliders\\\\May2022\\\\SzILy4Am9zhDPEFGXsO9.jpg\"]');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(2, 'browse_bread', NULL, '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(3, 'browse_database', NULL, '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(4, 'browse_media', NULL, '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(5, 'browse_compass', NULL, '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(6, 'browse_menus', 'menus', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(7, 'read_menus', 'menus', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(8, 'edit_menus', 'menus', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(9, 'add_menus', 'menus', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(10, 'delete_menus', 'menus', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(11, 'browse_roles', 'roles', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(12, 'read_roles', 'roles', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(13, 'edit_roles', 'roles', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(14, 'add_roles', 'roles', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(15, 'delete_roles', 'roles', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(16, 'browse_users', 'users', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(17, 'read_users', 'users', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(18, 'edit_users', 'users', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(19, 'add_users', 'users', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(20, 'delete_users', 'users', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(21, 'browse_settings', 'settings', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(22, 'read_settings', 'settings', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(23, 'edit_settings', 'settings', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(24, 'add_settings', 'settings', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(25, 'delete_settings', 'settings', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(26, 'browse_categories', 'categories', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(27, 'read_categories', 'categories', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(28, 'edit_categories', 'categories', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(29, 'add_categories', 'categories', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(30, 'delete_categories', 'categories', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(31, 'browse_posts', 'posts', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(32, 'read_posts', 'posts', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(33, 'edit_posts', 'posts', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(34, 'add_posts', 'posts', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(35, 'delete_posts', 'posts', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(36, 'browse_pages', 'pages', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(37, 'read_pages', 'pages', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(38, 'edit_pages', 'pages', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(39, 'add_pages', 'pages', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(40, 'delete_pages', 'pages', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(41, 'browse_page_components', 'page_components', '2022-05-26 05:29:15', '2022-05-26 05:29:15'),
(42, 'read_page_components', 'page_components', '2022-05-26 05:29:15', '2022-05-26 05:29:15'),
(43, 'edit_page_components', 'page_components', '2022-05-26 05:29:15', '2022-05-26 05:29:15'),
(44, 'add_page_components', 'page_components', '2022-05-26 05:29:15', '2022-05-26 05:29:15'),
(45, 'delete_page_components', 'page_components', '2022-05-26 05:29:15', '2022-05-26 05:29:15'),
(46, 'browse_page_slider', 'page_slider', '2022-05-26 05:37:25', '2022-05-26 05:37:25'),
(47, 'read_page_slider', 'page_slider', '2022-05-26 05:37:25', '2022-05-26 05:37:25'),
(48, 'edit_page_slider', 'page_slider', '2022-05-26 05:37:25', '2022-05-26 05:37:25'),
(49, 'add_page_slider', 'page_slider', '2022-05-26 05:37:25', '2022-05-26 05:37:25'),
(50, 'delete_page_slider', 'page_slider', '2022-05-26 05:37:25', '2022-05-26 05:37:25'),
(51, 'browse_page_sliders', 'page_sliders', '2022-05-26 05:44:42', '2022-05-26 05:44:42'),
(52, 'read_page_sliders', 'page_sliders', '2022-05-26 05:44:42', '2022-05-26 05:44:42'),
(53, 'edit_page_sliders', 'page_sliders', '2022-05-26 05:44:42', '2022-05-26 05:44:42'),
(54, 'add_page_sliders', 'page_sliders', '2022-05-26 05:44:42', '2022-05-26 05:44:42'),
(55, 'delete_page_sliders', 'page_sliders', '2022-05-26 05:44:42', '2022-05-26 05:44:42'),
(56, 'browse_projects', 'projects', '2022-05-26 08:40:42', '2022-05-26 08:40:42'),
(57, 'read_projects', 'projects', '2022-05-26 08:40:42', '2022-05-26 08:40:42'),
(58, 'edit_projects', 'projects', '2022-05-26 08:40:42', '2022-05-26 08:40:42'),
(59, 'add_projects', 'projects', '2022-05-26 08:40:42', '2022-05-26 08:40:42'),
(60, 'delete_projects', 'projects', '2022-05-26 08:40:42', '2022-05-26 08:40:42'),
(61, 'browse_project_categories', 'project_categories', '2022-05-26 08:56:46', '2022-05-26 08:56:46'),
(62, 'read_project_categories', 'project_categories', '2022-05-26 08:56:46', '2022-05-26 08:56:46'),
(63, 'edit_project_categories', 'project_categories', '2022-05-26 08:56:46', '2022-05-26 08:56:46'),
(64, 'add_project_categories', 'project_categories', '2022-05-26 08:56:46', '2022-05-26 08:56:46'),
(65, 'delete_project_categories', 'project_categories', '2022-05-26 08:56:46', '2022-05-26 08:56:46'),
(66, 'browse_careers', 'careers', '2022-06-02 10:34:57', '2022-06-02 10:34:57'),
(67, 'read_careers', 'careers', '2022-06-02 10:34:57', '2022-06-02 10:34:57'),
(68, 'edit_careers', 'careers', '2022-06-02 10:34:57', '2022-06-02 10:34:57'),
(69, 'add_careers', 'careers', '2022-06-02 10:34:57', '2022-06-02 10:34:57'),
(70, 'delete_careers', 'careers', '2022-06-02 10:34:57', '2022-06-02 10:34:57'),
(71, 'browse_project_types', 'project_types', '2022-06-04 12:58:34', '2022-06-04 12:58:34'),
(72, 'read_project_types', 'project_types', '2022-06-04 12:58:34', '2022-06-04 12:58:34'),
(73, 'edit_project_types', 'project_types', '2022-06-04 12:58:34', '2022-06-04 12:58:34'),
(74, 'add_project_types', 'project_types', '2022-06-04 12:58:34', '2022-06-04 12:58:34'),
(75, 'delete_project_types', 'project_types', '2022-06-04 12:58:34', '2022-06-04 12:58:34');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(2, 1, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(3, 1, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(4, 1, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-05-26 05:27:05', '2022-05-26 05:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_one_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_one_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_one_features_list` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_two_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_two_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_two_features_list` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_three_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_three_sub_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_one_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `sub_title`, `images`, `small_description`, `section_one_title`, `section_one_description`, `section_one_features_list`, `section_two_title`, `section_two_description`, `section_two_features_list`, `video_link`, `section_three_title`, `section_three_sub_title`, `image_one_link`, `image_two_link`, `address`, `created_at`, `updated_at`, `featured_image`) VALUES
(1, 'IVY Residence', 'A Vision For Life', '[\"projects\\\\May2022\\\\opnRClY7rOkrqFMdgoCh.jpg\",\"projects\\\\May2022\\\\cvmU3SUI7BtnR9HYl8w2.jpg\",\"projects\\\\May2022\\\\JDXienEhIwDLeJHwY9La.jpg\",\"projects\\\\May2022\\\\o0tZQIdeSKSClBSo70Vd.jpg\",\"projects\\\\May2022\\\\DuFrOFIE3CGMHjMdhUdM.jpg\",\"projects\\\\May2022\\\\TR9Ts2yM4sgttj335fNf.jpg\"]', 'Situated ideally on the Suez Road, IVY Residence is a home to an assorted selection of spacious 65 villas and tailor-made 306 apartments in a reflection to our dedication to helping you attain the quality of life you want within a green building concept and smart technology. With facilities created with your future in mind, we developed IVY Residence with all the facilities you need for the perfect life including a sporting club, Club House, commercial center and strip Mall amidst breathtaking water features and greenery.\r\nThis project is being constructed In collaboration with Al-Maadi for Development and Construction (One of the public sector companies owned by the holding company for construction and development) on the Suez Road directly in front of Madinaty in the city of Shorouk)\r\n<br/>\r\n<b>Efficient Designer - Green Building Concept - Smart Technology</b>', 'Improving Livability in Shorouk City', 'Apartments and flats in Ivy reflect our dedication to helping you attain the quality of life you want. With facilities created with your future in mind, we developed Ivy with all the facilities you need for the perfect life', '65 palatial spacious villas,\r\nTailor-made choice apartments,\r\nSporting club,\r\nClub House,\r\nCommercial Center,\r\nStrip Mall,\r\nWater Features,\r\nMosque', 'Your Time is Now', 'Unwind as you trod down over 2.5km of green lanes in the idyllic IVY Residence. With over 75% of the space covered in natural grace, begin a lifetime of priceless memories.', '2.5 kilometers of bike lanes,\r\nOver 1.5 kilometers of leisurely promenades', 'https://agecdevelopments.com/videos/video1.mp4', 'Master Plan', 'Live In an Island in Greenary', 'projects\\May2022\\wAPcLVSN841V0hZ0wBxT.jpg', 'projects\\May2022\\WDJhn5cAAeki7QFe24EO.jpg', 'IVY Residence is in near today’s destinations, and in the center of the future’s ones. Right on Suez Road, In front of Madinaty, 10 minutes from New Cairo,20 minutes to Heliopolis and Nasr City', '2022-05-26 09:20:19', '2022-06-04 13:20:10', 'projects\\May2022\\UF6qWHekubyoMaL9EJRf.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `project_categories`
--

CREATE TABLE `project_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_categories`
--

INSERT INTO `project_categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Categroy One', '2022-06-04 13:10:52', '2022-06-04 13:10:52');

-- --------------------------------------------------------

--
-- Table structure for table `project_p_categories`
--

CREATE TABLE `project_p_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `project_category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_p_categories`
--

INSERT INTO `project_p_categories` (`id`, `project_id`, `project_category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_types`
--

CREATE TABLE `project_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_types`
--

INSERT INTO `project_types` (`id`, `title`, `content`, `created_at`, `updated_at`, `project_id`, `gallery`) VALUES
(1, 'Project Accordion 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-06-04 13:11:00', '2022-06-04 15:50:09', 1, '[\"project-types/about3.jpg\",\"project-types/about6.jpg\",\"project-types/about5.jpg\",\"project-types/about4.jpg\",\"project-types/h4-img-4.jpg\"]'),
(2, 'Project Accordion Two', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-06-04 13:31:00', '2022-06-04 15:50:38', 1, '[\"project-types/about3.jpg\",\"project-types/about4.jpg\",\"project-types/about5.jpg\"]');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(2, 'user', 'Normal User', '2022-05-26 05:27:05', '2022-05-26 05:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Agec Developments', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\May2022\\Pld6ScvQgiDtPTPYXALl.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Agec Admin Panel', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome To Agec Admin Panel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\May2022\\Tp8yUFAQs40t16Ms5Njj.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\May2022\\zb0t7jH1nWbtBTTptSzX.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.head_office', 'Head Office', '25 El-safaa Street, Sheraton Heliopolis.', NULL, 'text', 6, 'Site'),
(12, 'site.sales_office', 'Sales Office', 'Paramount Paramount Business Complex - Cairo, Unit no. 7 - First floor - Main Entrance - Square 1258M, Sheraton Heliopolis, Cairo, Egypt', NULL, 'text', 7, 'Site'),
(13, 'site.hotline', 'Hotline', '15289', NULL, 'text', 8, 'Site'),
(14, 'site.landlines', 'Landlines', '02 206 54581,\r\n02 206 54582,\r\n02 206 54583', NULL, 'text_area', 9, 'Site'),
(15, 'site.email', 'Email', 'info@agecdevelopments.com', NULL, 'text', 10, 'Site'),
(17, 'site.location_on_map', 'Location On Map', NULL, NULL, 'text', 11, 'Site'),
(18, 'site.footer_logo', 'Footer Logo', 'settings\\May2022\\QtHvRlewWMXY2u5AdJ6g.png', NULL, 'image', 12, 'Site'),
(19, 'site.facebook_link', 'Facebook Link', 'https://www.facebook.com/agec.developments/', NULL, 'text', 13, 'Site'),
(20, 'site.instagram_link', 'Instagram Link', 'https://instagram.com/agec.developments', NULL, 'text', 14, 'Site'),
(21, 'site.linkedin_link', 'Linkedin Link', 'https://www.linkedin.com/company/agec-developments', NULL, 'text', 15, 'Site'),
(22, 'site.footer_text', 'Footer Text', 'Established in 2001, AGEC is a RealEstate developer.', NULL, 'text', 16, 'Site'),
(23, 'site.newsletters_text', 'Newsletters Text', 'Sign Up for Our Newsletter to get Latest Updates and Offers. Subscribe to receive news in your inbox.', NULL, 'text', 17, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-05-26 05:27:05', '2022-05-26 05:27:05'),
(33, 'pages', 'title', 4, 'ar', 'رسالة الرئيس التنفيذي', '2022-05-28 17:21:36', '2022-05-28 17:21:36'),
(34, 'pages', 'slug', 4, 'ar', 'chairman-s-message', '2022-05-28 17:21:36', '2022-05-28 17:21:36'),
(35, 'pages', 'title', 3, 'ar', 'من نحن', '2022-05-28 17:21:53', '2022-05-28 17:21:53'),
(36, 'pages', 'slug', 3, 'ar', 'about-us', '2022-05-28 17:21:53', '2022-05-28 17:21:53'),
(37, 'pages', 'title', 2, 'ar', 'الرئيسية', '2022-05-28 17:22:08', '2022-05-28 17:22:08'),
(38, 'pages', 'slug', 2, 'ar', 'home', '2022-05-28 17:22:08', '2022-05-28 17:22:08'),
(39, 'menu_items', 'title', 18, 'ar', 'الرئيسية', '2022-05-28 17:23:26', '2022-05-28 17:23:26'),
(40, 'menu_items', 'title', 24, 'ar', 'من نحن', '2022-05-28 17:23:40', '2022-05-28 17:23:40'),
(41, 'menu_items', 'title', 23, 'ar', 'المشروعات', '2022-05-28 17:24:03', '2022-05-28 17:24:03'),
(42, 'menu_items', 'title', 25, 'ar', 'اتصل بنا', '2022-05-28 17:24:14', '2022-05-28 17:24:14'),
(45, 'pages', 'title', 7, 'ar', 'تواصل معنا', '2022-05-28 18:05:16', '2022-05-28 18:05:16'),
(46, 'pages', 'slug', 7, 'ar', 'contact-us', '2022-05-28 18:05:16', '2022-05-28 18:05:16'),
(47, 'menu_items', 'title', 26, 'ar', 'الرئيسية', '2022-05-28 19:03:09', '2022-05-28 19:03:09'),
(48, 'menu_items', 'title', 27, 'ar', 'من نحن', '2022-05-28 19:03:21', '2022-05-28 19:03:21'),
(49, 'menu_items', 'title', 28, 'ar', 'رسالة الرئيس التنفيذي', '2022-05-28 19:04:25', '2022-05-28 19:04:25'),
(50, 'menu_items', 'title', 29, 'ar', 'المشروعات', '2022-05-28 19:05:12', '2022-05-28 19:05:12'),
(51, 'menu_items', 'title', 30, 'ar', 'تواصل معنا', '2022-05-28 19:05:46', '2022-05-28 19:05:46'),
(52, 'menu_items', 'title', 31, 'ar', 'وظائف', '2022-05-28 19:06:13', '2022-05-28 19:06:13'),
(53, 'menu_items', 'title', 32, 'ar', 'الاخبار', '2022-05-28 19:07:17', '2022-05-28 19:07:17'),
(54, 'menu_items', 'title', 33, 'ar', 'الاخبار', '2022-05-30 18:24:21', '2022-05-30 18:24:21'),
(56, 'page_components', 'title', 9, 'ar', 'رسالة الرئيس التنفيذي', '2022-05-30 18:51:38', '2022-05-30 18:51:38'),
(57, 'menu_items', 'title', 35, 'ar', 'رسالة الرئيس التنفيذي', '2022-05-30 19:07:36', '2022-05-30 19:07:36'),
(58, 'menu_items', 'title', 36, 'ar', 'الميديا', '2022-05-30 19:22:28', '2022-06-02 08:34:48'),
(59, 'data_rows', 'display_name', 44, 'ar', 'ID', '2022-05-30 19:41:55', '2022-05-30 19:41:55'),
(60, 'data_rows', 'display_name', 46, 'ar', 'Title', '2022-05-30 19:41:55', '2022-05-30 19:41:55'),
(61, 'data_rows', 'display_name', 47, 'ar', 'Excerpt', '2022-05-30 19:41:55', '2022-05-30 19:41:55'),
(62, 'data_rows', 'display_name', 49, 'ar', 'Slug', '2022-05-30 19:41:55', '2022-05-30 19:41:55'),
(63, 'data_rows', 'display_name', 53, 'ar', 'Created At', '2022-05-30 19:41:55', '2022-05-30 19:41:55'),
(64, 'data_rows', 'display_name', 54, 'ar', 'Updated At', '2022-05-30 19:41:55', '2022-05-30 19:41:55'),
(65, 'data_types', 'display_name_singular', 6, 'ar', 'Page', '2022-05-30 19:41:55', '2022-05-30 19:41:55'),
(66, 'data_types', 'display_name_plural', 6, 'ar', 'Pages', '2022-05-30 19:41:55', '2022-05-30 19:41:55'),
(67, 'data_rows', 'display_name', 100, 'ar', 'Author Id', '2022-05-30 19:42:33', '2022-05-30 19:42:33'),
(68, 'data_rows', 'display_name', 101, 'ar', 'Meta Title', '2022-05-30 19:42:33', '2022-05-30 19:42:33'),
(69, 'data_rows', 'display_name', 102, 'ar', 'Meta Description', '2022-05-30 19:42:33', '2022-05-30 19:42:33'),
(70, 'data_rows', 'display_name', 103, 'ar', 'Meta Keywords', '2022-05-30 19:42:33', '2022-05-30 19:42:33'),
(71, 'pages', 'title', 8, 'ar', 'الاخبار', '2022-06-01 08:42:44', '2022-06-01 09:04:11'),
(72, 'pages', 'slug', 8, 'ar', 'media-center', '2022-06-01 08:42:44', '2022-06-01 09:04:11'),
(73, 'data_rows', 'display_name', 56, 'ar', 'Id', '2022-06-01 08:44:44', '2022-06-01 08:44:44'),
(74, 'data_rows', 'display_name', 57, 'ar', 'Page Id', '2022-06-01 08:44:44', '2022-06-01 08:44:44'),
(75, 'data_rows', 'display_name', 58, 'ar', 'Content', '2022-06-01 08:44:44', '2022-06-01 08:44:44'),
(76, 'data_rows', 'display_name', 59, 'ar', 'Created At', '2022-06-01 08:44:45', '2022-06-01 08:44:45'),
(77, 'data_rows', 'display_name', 60, 'ar', 'Updated At', '2022-06-01 08:44:45', '2022-06-01 08:44:45'),
(78, 'data_rows', 'display_name', 62, 'ar', 'Title', '2022-06-01 08:44:45', '2022-06-01 08:44:45'),
(79, 'data_rows', 'display_name', 61, 'ar', 'pages', '2022-06-01 08:44:45', '2022-06-01 08:44:45'),
(80, 'data_types', 'display_name_singular', 7, 'ar', 'Page Component', '2022-06-01 08:44:45', '2022-06-01 08:44:45'),
(81, 'data_types', 'display_name_plural', 7, 'ar', 'Page Components', '2022-06-01 08:44:45', '2022-06-01 08:44:45'),
(82, 'page_components', 'title', 11, 'ar', 'معرض الصور للميديا', '2022-06-01 08:46:24', '2022-06-01 08:46:24'),
(83, 'data_rows', 'display_name', 104, 'ar', 'Gallery', '2022-06-01 08:48:31', '2022-06-01 08:48:31'),
(84, 'pages', 'title', 9, 'ar', 'المشروعات', '2022-06-01 09:01:07', '2022-06-01 09:01:07'),
(85, 'pages', 'slug', 9, 'ar', 'almshrwaat', '2022-06-01 09:01:07', '2022-06-01 09:01:07'),
(86, 'pages', 'title', 10, 'ar', 'معرض الصور', '2022-06-01 09:03:19', '2022-06-01 09:03:19'),
(87, 'pages', 'slug', 10, 'ar', 'media-gallery', '2022-06-01 09:03:19', '2022-06-01 09:03:19'),
(88, 'menu_items', 'title', 37, 'ar', 'معرض الصور', '2022-06-02 08:34:23', '2022-06-02 08:34:23'),
(89, 'pages', 'title', 11, 'ar', 'الوظائف', '2022-06-02 10:32:14', '2022-06-02 10:32:14'),
(90, 'pages', 'slug', 11, 'ar', 'alwzaef', '2022-06-02 10:32:14', '2022-06-02 10:32:14'),
(91, 'data_rows', 'display_name', 105, 'ar', 'Id', '2022-06-02 10:39:36', '2022-06-02 10:39:36'),
(92, 'data_rows', 'display_name', 106, 'ar', 'Title', '2022-06-02 10:39:36', '2022-06-02 10:39:36'),
(93, 'data_rows', 'display_name', 107, 'ar', 'Description', '2022-06-02 10:39:36', '2022-06-02 10:39:36'),
(94, 'data_rows', 'display_name', 108, 'ar', 'Responsibilities', '2022-06-02 10:39:36', '2022-06-02 10:39:36'),
(95, 'data_rows', 'display_name', 109, 'ar', 'Created At', '2022-06-02 10:39:36', '2022-06-02 10:39:36'),
(96, 'data_rows', 'display_name', 110, 'ar', 'Updated At', '2022-06-02 10:39:36', '2022-06-02 10:39:36'),
(97, 'data_types', 'display_name_singular', 12, 'ar', 'Career', '2022-06-02 10:39:36', '2022-06-02 10:39:36'),
(98, 'data_types', 'display_name_plural', 12, 'ar', 'Careers', '2022-06-02 10:39:36', '2022-06-02 10:39:36'),
(99, 'menu_items', 'title', 38, 'ar', 'Careers', '2022-06-02 10:41:53', '2022-06-02 10:41:53'),
(100, 'page_components', 'title', 12, 'ar', 'مسؤوليات', '2022-06-02 12:28:35', '2022-06-02 12:28:35'),
(101, 'page_components', 'content', 12, 'ar', 'مسؤوليات', '2022-06-02 12:28:35', '2022-06-02 12:28:35'),
(102, 'menu_items', 'title', 39, 'ar', 'الوظائف', '2022-06-02 12:37:27', '2022-06-02 12:37:27'),
(103, 'data_rows', 'display_name', 111, 'ar', 'Id', '2022-06-04 13:02:41', '2022-06-04 13:02:41'),
(104, 'data_rows', 'display_name', 112, 'ar', 'Title', '2022-06-04 13:02:41', '2022-06-04 13:02:41'),
(105, 'data_rows', 'display_name', 113, 'ar', 'Content', '2022-06-04 13:02:41', '2022-06-04 13:02:41'),
(106, 'data_rows', 'display_name', 114, 'ar', 'Created At', '2022-06-04 13:02:41', '2022-06-04 13:02:41'),
(107, 'data_rows', 'display_name', 115, 'ar', 'Updated At', '2022-06-04 13:02:41', '2022-06-04 13:02:41'),
(108, 'data_types', 'display_name_singular', 13, 'ar', 'Project Type', '2022-06-04 13:02:41', '2022-06-04 13:02:41'),
(109, 'data_types', 'display_name_plural', 13, 'ar', 'Project Types', '2022-06-04 13:02:41', '2022-06-04 13:02:41'),
(110, 'data_rows', 'display_name', 94, 'ar', 'Id', '2022-06-04 13:08:36', '2022-06-04 13:08:36'),
(111, 'data_rows', 'display_name', 95, 'ar', 'Project Name', '2022-06-04 13:08:36', '2022-06-04 13:08:36'),
(112, 'data_rows', 'display_name', 96, 'ar', 'Title', '2022-06-04 13:08:36', '2022-06-04 13:08:36'),
(113, 'data_rows', 'display_name', 97, 'ar', 'Created At', '2022-06-04 13:08:36', '2022-06-04 13:08:36'),
(114, 'data_rows', 'display_name', 98, 'ar', 'Updated At', '2022-06-04 13:08:36', '2022-06-04 13:08:36'),
(115, 'data_rows', 'display_name', 118, 'ar', 'projects', '2022-06-04 13:08:36', '2022-06-04 13:08:36'),
(116, 'data_types', 'display_name_singular', 11, 'ar', 'Project Category', '2022-06-04 13:08:36', '2022-06-04 13:08:36'),
(117, 'data_types', 'display_name_plural', 11, 'ar', 'Project Categories', '2022-06-04 13:08:36', '2022-06-04 13:08:36'),
(118, 'data_rows', 'display_name', 116, 'ar', 'Project Id', '2022-06-04 13:12:38', '2022-06-04 13:12:38'),
(119, 'data_rows', 'display_name', 117, 'ar', 'projects', '2022-06-04 13:12:38', '2022-06-04 13:12:38'),
(120, 'data_rows', 'display_name', 73, 'ar', 'Id', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(121, 'data_rows', 'display_name', 74, 'ar', 'Title', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(122, 'data_rows', 'display_name', 75, 'ar', 'Sub Title', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(123, 'data_rows', 'display_name', 76, 'ar', 'Images', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(124, 'data_rows', 'display_name', 77, 'ar', 'Small Description', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(125, 'data_rows', 'display_name', 78, 'ar', 'Section One Title', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(126, 'data_rows', 'display_name', 79, 'ar', 'Section One Description', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(127, 'data_rows', 'display_name', 80, 'ar', 'Section One Features List', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(128, 'data_rows', 'display_name', 81, 'ar', 'Section Two Title', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(129, 'data_rows', 'display_name', 82, 'ar', 'Section Two Description', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(130, 'data_rows', 'display_name', 83, 'ar', 'Section Two Features List', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(131, 'data_rows', 'display_name', 84, 'ar', 'Video Link', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(132, 'data_rows', 'display_name', 85, 'ar', 'Section Three Title', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(133, 'data_rows', 'display_name', 86, 'ar', 'Section Three Sub Title', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(134, 'data_rows', 'display_name', 92, 'ar', 'Image One Link', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(135, 'data_rows', 'display_name', 88, 'ar', 'Image Two Link', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(136, 'data_rows', 'display_name', 89, 'ar', 'Address', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(137, 'data_rows', 'display_name', 90, 'ar', 'Created At', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(138, 'data_rows', 'display_name', 91, 'ar', 'Updated At', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(139, 'data_rows', 'display_name', 93, 'ar', 'Featured Image', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(140, 'data_types', 'display_name_singular', 10, 'ar', 'Project', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(141, 'data_types', 'display_name_plural', 10, 'ar', 'Projects', '2022-06-04 13:19:51', '2022-06-04 13:19:51'),
(142, 'data_rows', 'display_name', 119, 'ar', 'Project Types Title', '2022-06-04 13:20:31', '2022-06-04 13:20:31'),
(143, 'data_rows', 'display_name', 120, 'ar', 'Gallery', '2022-06-04 14:52:31', '2022-06-04 14:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$He0CUfBweDQteSBglrowxevyDR4HvtaJXZhSkYc6jqdFct0i2DaL2', 'sdX6OJTzbSMHZ40nVKcJzSnPuOjTUygE6yelTMqUUtsnDE840HBfHuHCwPDJ', NULL, '2022-05-26 05:27:05', '2022-05-26 05:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `page_components`
--
ALTER TABLE `page_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_sliders`
--
ALTER TABLE `page_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_categories`
--
ALTER TABLE `project_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_p_categories`
--
ALTER TABLE `project_p_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_types`
--
ALTER TABLE `project_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `page_components`
--
ALTER TABLE `page_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `page_sliders`
--
ALTER TABLE `page_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_categories`
--
ALTER TABLE `project_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_p_categories`
--
ALTER TABLE `project_p_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_types`
--
ALTER TABLE `project_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
