-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.11-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para db_projetoarquitetura
CREATE DATABASE IF NOT EXISTS `db_projetoarquitetura` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_projetoarquitetura`;

-- Copiando estrutura para tabela db_projetoarquitetura.animais
CREATE TABLE IF NOT EXISTS `animais` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) DEFAULT NULL,
  `Especie` varchar(50) DEFAULT NULL,
  `Raca` varchar(50) DEFAULT NULL,
  `Idade` varchar(50) DEFAULT NULL,
  `Descricao` text DEFAULT NULL,
  `Foto` varchar(150) DEFAULT NULL,
  `Documentos` varchar(150) DEFAULT NULL,
  `UsuarioID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela db_projetoarquitetura.animais: ~7 rows (aproximadamente)
DELETE FROM `animais`;
/*!40000 ALTER TABLE `animais` DISABLE KEYS */;
INSERT INTO `animais` (`ID`, `Nome`, `Especie`, `Raca`, `Idade`, `Descricao`, `Foto`, `Documentos`, `UsuarioID`) VALUES
	(3, 'Bebel', 'cachorro', 'Yorkshire', '4', NULL, 'uploads/foto_2020-165201435.jpg', '', 1),
	(4, 'Rodolfo', 'coelho', '', '3', NULL, 'uploads/foto_2020-16520494.jpg', '', 2),
	(5, 'Cacau', 'gato', '', '12', NULL, 'uploads/foto_2020-16523359.jpg', '', 3),
	(6, 'Pitty', 'cachorro', 'Pitbull', '1', NULL, 'uploads/foto_2020-16602231.webp', '', 1),
	(7, 'Smeagol', 'gato', '', '3', NULL, 'uploads/foto_2020-1660233.jpg', '', 1),
	(8, 'Joana', 'outro', '', '6 meses', 'Joana, a iguana', 'uploads/foto_2020-16611623.jpg', 'uploads/documento_2020-16611623.pdf', 1),
	(9, 'Becky', 'passaro', 'Calopsita', '2', 'teste', 'uploads/foto_2020-16611910.jpg', '', 2);
/*!40000 ALTER TABLE `animais` ENABLE KEYS */;

-- Copiando estrutura para tabela db_projetoarquitetura.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Senha` varchar(20) DEFAULT NULL,
  `Telefone` varchar(13) DEFAULT NULL,
  `Cidade` varchar(30) DEFAULT NULL,
  `Estado` varchar(30) DEFAULT NULL,
  `Bairro` varchar(30) DEFAULT NULL,
  `Rua` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela db_projetoarquitetura.usuario: ~3 rows (aproximadamente)
DELETE FROM `usuario`;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`ID`, `Nome`, `Email`, `Senha`, `Telefone`, `Cidade`, `Estado`, `Bairro`, `Rua`) VALUES
	(1, 'Administrador', 'leonardo@chleba.net', 'admin', '(41) 98869-14', 'Curitiba', 'PR', 'Juvevê', 'Avenida João Gualberto, 1259'),
	(2, 'Leonardo Zambão', 'leonardozambao@live.com', 'admin', '(41) 98869-14', 'Piraquara', 'PR', 'Águas Claras', 'Rua do Botiatuva'),
	(3, 'Leonardo Zambão', 'leonardozambao1998@gmail.com', 'admin', '(41) 98869-14', 'Curitiba', 'PR', 'Juvevê', 'Avenida João Gualberto, 1259');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Copiando estrutura para tabela db_projetoarquitetura.wp_commentmeta
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_projetoarquitetura.wp_commentmeta: ~0 rows (aproximadamente)
DELETE FROM `wp_commentmeta`;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;

-- Copiando estrutura para tabela db_projetoarquitetura.wp_comments
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_projetoarquitetura.wp_comments: ~0 rows (aproximadamente)
DELETE FROM `wp_comments`;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;

-- Copiando estrutura para tabela db_projetoarquitetura.wp_links
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_projetoarquitetura.wp_links: ~0 rows (aproximadamente)
DELETE FROM `wp_links`;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;

-- Copiando estrutura para tabela db_projetoarquitetura.wp_options
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_projetoarquitetura.wp_options: ~125 rows (aproximadamente)
DELETE FROM `wp_options`;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
	(1, 'siteurl', 'http://localhost/ProjetoArquitetura', 'yes'),
	(2, 'home', 'http://localhost/ProjetoArquitetura', 'yes'),
	(3, 'blogname', 'Assistência de Animais', 'yes'),
	(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
	(5, 'users_can_register', '0', 'yes'),
	(6, 'admin_email', 'leonardozambao@live.com', 'yes'),
	(7, 'start_of_week', '0', 'yes'),
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
	(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
	(24, 'time_format', 'H:i', 'yes'),
	(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
	(26, 'comment_moderation', '0', 'yes'),
	(27, 'moderation_notify', '1', 'yes'),
	(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
	(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=17&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
	(30, 'hack_file', '0', 'yes'),
	(31, 'blog_charset', 'UTF-8', 'yes'),
	(32, 'moderation_keys', '', 'no'),
	(33, 'active_plugins', 'a:0:{}', 'yes'),
	(34, 'category_base', '', 'yes'),
	(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
	(36, 'comment_max_links', '2', 'yes'),
	(37, 'gmt_offset', '0', 'yes'),
	(38, 'default_email_category', '1', 'yes'),
	(39, 'recently_edited', '', 'no'),
	(40, 'template', 'theme-projeto', 'yes'),
	(41, 'stylesheet', 'theme-projeto', 'yes'),
	(42, 'comment_whitelist', '1', 'yes'),
	(43, 'blacklist_keys', '', 'no'),
	(44, 'comment_registration', '0', 'yes'),
	(45, 'html_type', 'text/html', 'yes'),
	(46, 'use_trackback', '0', 'yes'),
	(47, 'default_role', 'subscriber', 'yes'),
	(48, 'db_version', '47018', 'yes'),
	(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
	(50, 'upload_path', '', 'yes'),
	(51, 'blog_public', '0', 'yes'),
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
	(69, 'close_comments_for_old_posts', '0', 'yes'),
	(70, 'close_comments_days_old', '14', 'yes'),
	(71, 'thread_comments', '1', 'yes'),
	(72, 'thread_comments_depth', '5', 'yes'),
	(73, 'page_comments', '0', 'yes'),
	(74, 'comments_per_page', '50', 'yes'),
	(75, 'default_comments_page', 'newest', 'yes'),
	(76, 'comment_order', 'asc', 'yes'),
	(77, 'sticky_posts', 'a:0:{}', 'yes'),
	(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
	(79, 'widget_text', 'a:0:{}', 'yes'),
	(80, 'widget_rss', 'a:0:{}', 'yes'),
	(81, 'uninstall_plugins', 'a:0:{}', 'no'),
	(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
	(83, 'page_for_posts', '0', 'yes'),
	(84, 'page_on_front', '17', 'yes'),
	(85, 'default_post_format', '0', 'yes'),
	(86, 'link_manager_enabled', '0', 'yes'),
	(87, 'finished_splitting_shared_terms', '1', 'yes'),
	(88, 'site_icon', '0', 'yes'),
	(89, 'medium_large_size_w', '768', 'yes'),
	(90, 'medium_large_size_h', '0', 'yes'),
	(91, 'wp_page_for_privacy_policy', '3', 'yes'),
	(92, 'show_comments_cookies_opt_in', '1', 'yes'),
	(93, 'admin_email_lifespan', '1606004165', 'yes'),
	(94, 'initial_db_version', '47018', 'yes'),
	(95, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
	(96, 'fresh_site', '0', 'yes'),
	(97, 'WPLANG', 'pt_BR', 'yes'),
	(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
	(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
	(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
	(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
	(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
	(103, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
	(104, 'cron', 'a:8:{i:1592255805;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1592266602;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1592266605;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1592266632;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1592266633;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1592266638;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1592353002;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
	(105, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(106, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(107, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(108, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(109, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(110, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(111, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(112, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(113, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(115, 'recovery_keys', 'a:0:{}', 'yes'),
	(130, 'can_compress_scripts', '1', 'no'),
	(143, 'theme_mods_twentytwenty', 'a:3:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1590452510;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
	(144, 'current_theme', 'Projeto Arquitetura', 'yes'),
	(145, 'theme_mods_theme-projeto', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1590452480;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
	(146, 'theme_switched', '', 'yes'),
	(174, '_transient_health-check-site-status-result', '{"good":11,"recommended":5,"critical":1}', 'yes'),
	(301, '_site_transient_timeout_theme_roots', '1592231576', 'no'),
	(302, '_site_transient_theme_roots', 'a:1:{s:13:"theme-projeto";s:7:"/themes";}', 'no'),
	(304, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.4.2.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.4.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.4.2";s:7:"version";s:5:"5.4.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.4.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-5.4.2-partial-1.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"5.4.2";s:7:"version";s:5:"5.4.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:5:"5.4.1";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.4.2.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.4.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.4.2";s:7:"version";s:5:"5.4.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1592229781;s:15:"version_checked";s:5:"5.4.1";s:12:"translations";a:0:{}}', 'no'),
	(305, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1592229782;s:7:"checked";a:1:{s:13:"theme-projeto";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
	(306, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1592229784;s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:5:"4.1.5";s:9:"hello.php";s:5:"1.7.2";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.6";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.4.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:11:"hello-dolly";s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"1.7.2";s:7:"updated";s:19:"2019-08-13 18:09:11";s:7:"package";s:78:"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/pt_BR.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}}}', 'no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;

-- Copiando estrutura para tabela db_projetoarquitetura.wp_postmeta
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_projetoarquitetura.wp_postmeta: ~26 rows (aproximadamente)
DELETE FROM `wp_postmeta`;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
	(9, 7, '_edit_lock', '1590702497:1'),
	(10, 9, '_edit_lock', '1590534477:1'),
	(11, 11, '_wp_attached_file', '2020/05/rottweiler-1785760_1920.jpg'),
	(12, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:884;s:4:"file";s:35:"2020/05/rottweiler-1785760_1920.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:35:"rottweiler-1785760_1920-300x138.jpg";s:5:"width";i:300;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"rottweiler-1785760_1920-1024x471.jpg";s:5:"width";i:1024;s:6:"height";i:471;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:35:"rottweiler-1785760_1920-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"rottweiler-1785760_1920-768x354.jpg";s:5:"width";i:768;s:6:"height";i:354;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:36:"rottweiler-1785760_1920-1536x707.jpg";s:5:"width";i:1536;s:6:"height";i:707;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(13, 9, '_thumbnail_id', '11'),
	(14, 9, 'title_banner', 'Doe um animal!'),
	(15, 9, '_edit_last', '1'),
	(16, 12, '_edit_lock', '1590688609:1'),
	(17, 12, '_edit_last', '1'),
	(18, 14, '_wp_attached_file', '2020/05/gatos_602702633.jpg'),
	(19, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2500;s:6:"height";i:857;s:4:"file";s:27:"2020/05/gatos_602702633.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:27:"gatos_602702633-300x103.jpg";s:5:"width";i:300;s:6:"height";i:103;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"gatos_602702633-1024x351.jpg";s:5:"width";i:1024;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:27:"gatos_602702633-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"gatos_602702633-768x263.jpg";s:5:"width";i:768;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:28:"gatos_602702633-1536x527.jpg";s:5:"width";i:1536;s:6:"height";i:527;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:28:"gatos_602702633-2048x702.jpg";s:5:"width";i:2048;s:6:"height";i:702;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(20, 7, '_thumbnail_id', '14'),
	(21, 7, '_edit_last', '1'),
	(22, 7, 'title_banner', 'Confira nossos animais disponíveis'),
	(23, 15, '_edit_lock', '1590710264:1'),
	(24, 15, '_edit_last', '1'),
	(25, 17, '_edit_lock', '1590710288:1'),
	(26, 17, '_edit_last', '1'),
	(27, 19, '_edit_lock', '1590765876:1'),
	(28, 19, '_edit_last', '1'),
	(33, 19, '_wp_trash_meta_status', 'publish'),
	(34, 19, '_wp_trash_meta_time', '1592069970'),
	(35, 19, '_wp_desired_post_slug', 'logout'),
	(36, 22, '_edit_lock', '1592077752:1'),
	(37, 22, '_edit_last', '1'),
	(38, 25, '_edit_lock', '1592187952:1'),
	(39, 25, '_edit_last', '1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;

-- Copiando estrutura para tabela db_projetoarquitetura.wp_posts
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_projetoarquitetura.wp_posts: ~18 rows (aproximadamente)
DELETE FROM `wp_posts`;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
	(7, 1, '2020-05-26 18:38:03', '2020-05-26 21:38:03', '', 'Adotar', '', 'publish', 'closed', 'closed', '', 'adotar', '', '', '2020-05-28 18:28:34', '2020-05-28 21:28:34', '', 0, 'http://localhost/ProjetoArquitetura/?page_id=7', 0, 'page', '', 0),
	(8, 1, '2020-05-26 18:38:03', '2020-05-26 21:38:03', '', 'Adotar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-05-26 18:38:03', '2020-05-26 21:38:03', '', 7, 'http://localhost/ProjetoArquitetura/2020/05/26/7-revision-v1/', 0, 'revision', '', 0),
	(9, 1, '2020-05-26 18:39:08', '2020-05-26 21:39:08', '', 'Doar', '', 'publish', 'closed', 'closed', '', 'doar', '', '', '2020-05-26 19:16:14', '2020-05-26 22:16:14', '', 0, 'http://localhost/ProjetoArquitetura/?page_id=9', 0, 'page', '', 0),
	(10, 1, '2020-05-26 18:39:08', '2020-05-26 21:39:08', '', 'Doar', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-05-26 18:39:08', '2020-05-26 21:39:08', '', 9, 'http://localhost/ProjetoArquitetura/2020/05/26/9-revision-v1/', 0, 'revision', '', 0),
	(11, 1, '2020-05-26 19:06:58', '2020-05-26 22:06:58', '', 'rottweiler-1785760_1920', '', 'inherit', 'open', 'closed', '', 'rottweiler-1785760_1920', '', '', '2020-05-26 19:06:58', '2020-05-26 22:06:58', '', 9, 'http://localhost/ProjetoArquitetura/wp-content/uploads/2020/05/rottweiler-1785760_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
	(12, 1, '2020-05-27 17:17:45', '2020-05-27 20:17:45', '', 'Detalhe', '', 'publish', 'closed', 'closed', '', 'detalhe', '', '', '2020-05-27 17:17:46', '2020-05-27 20:17:46', '', 0, 'http://localhost/ProjetoArquitetura/?page_id=12', 0, 'page', '', 0),
	(13, 1, '2020-05-27 17:17:45', '2020-05-27 20:17:45', '', 'Detalhe', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-05-27 17:17:45', '2020-05-27 20:17:45', '', 12, 'http://localhost/ProjetoArquitetura/2020/05/27/12-revision-v1/', 0, 'revision', '', 0),
	(14, 1, '2020-05-28 18:27:36', '2020-05-28 21:27:36', '', 'gatos_602702633', '', 'inherit', 'open', 'closed', '', 'gatos_602702633', '', '', '2020-05-28 18:27:36', '2020-05-28 21:27:36', '', 7, 'http://localhost/ProjetoArquitetura/wp-content/uploads/2020/05/gatos_602702633.jpg', 0, 'attachment', 'image/jpeg', 0),
	(15, 1, '2020-05-28 18:51:10', '2020-05-28 21:51:10', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2020-05-28 18:51:11', '2020-05-28 21:51:11', '', 0, 'http://localhost/ProjetoArquitetura/?page_id=15', 0, 'page', '', 0),
	(16, 1, '2020-05-28 18:51:10', '2020-05-28 21:51:10', '', 'Login', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-05-28 18:51:10', '2020-05-28 21:51:10', '', 15, 'http://localhost/ProjetoArquitetura/2020/05/28/15-revision-v1/', 0, 'revision', '', 0),
	(17, 1, '2020-05-28 20:58:05', '2020-05-28 23:58:05', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-05-28 20:58:07', '2020-05-28 23:58:07', '', 0, 'http://localhost/ProjetoArquitetura/?page_id=17', 0, 'page', '', 0),
	(18, 1, '2020-05-28 20:58:05', '2020-05-28 23:58:05', '', 'Home', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-05-28 20:58:05', '2020-05-28 23:58:05', '', 17, 'http://localhost/ProjetoArquitetura/2020/05/28/17-revision-v1/', 0, 'revision', '', 0),
	(19, 1, '2020-05-29 11:50:59', '2020-05-29 14:50:59', '', 'Logout', '', 'trash', 'closed', 'closed', '', 'logout__trashed', '', '', '2020-06-13 14:39:30', '2020-06-13 17:39:30', '', 0, 'http://localhost/ProjetoArquitetura/?page_id=19', 0, 'page', '', 0),
	(20, 1, '2020-05-29 11:50:59', '2020-05-29 14:50:59', '', 'Logout', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-05-29 11:50:59', '2020-05-29 14:50:59', '', 19, 'http://localhost/ProjetoArquitetura/2020/05/29/19-revision-v1/', 0, 'revision', '', 0),
	(22, 1, '2020-06-13 14:40:12', '2020-06-13 17:40:12', '', 'Meu perfil', '', 'publish', 'closed', 'closed', '', 'meu-perfil', '', '', '2020-06-13 14:58:12', '2020-06-13 17:58:12', '', 0, 'http://localhost/ProjetoArquitetura/?page_id=22', 0, 'page', '', 0),
	(23, 1, '2020-06-13 14:40:12', '2020-06-13 17:40:12', '', 'Usuário', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-06-13 14:40:12', '2020-06-13 17:40:12', '', 22, 'http://localhost/ProjetoArquitetura/2020/06/13/22-revision-v1/', 0, 'revision', '', 0),
	(24, 1, '2020-06-13 14:55:55', '2020-06-13 17:55:55', '', 'Meu perfil', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-06-13 14:55:55', '2020-06-13 17:55:55', '', 22, 'http://localhost/ProjetoArquitetura/2020/06/13/22-revision-v1/', 0, 'revision', '', 0),
	(25, 1, '2020-06-13 16:51:46', '2020-06-13 19:51:46', '', 'Cadastrar', '', 'publish', 'closed', 'closed', '', 'cadastrar', '', '', '2020-06-13 16:51:47', '2020-06-13 19:51:47', '', 0, 'http://localhost/ProjetoArquitetura/?page_id=25', 0, 'page', '', 0),
	(26, 1, '2020-06-13 16:51:46', '2020-06-13 19:51:46', '', 'Cadastrar', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-06-13 16:51:46', '2020-06-13 19:51:46', '', 25, 'http://localhost/ProjetoArquitetura/2020/06/13/25-revision-v1/', 0, 'revision', '', 0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;

-- Copiando estrutura para tabela db_projetoarquitetura.wp_termmeta
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_projetoarquitetura.wp_termmeta: ~0 rows (aproximadamente)
DELETE FROM `wp_termmeta`;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;

-- Copiando estrutura para tabela db_projetoarquitetura.wp_terms
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_projetoarquitetura.wp_terms: ~0 rows (aproximadamente)
DELETE FROM `wp_terms`;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
	(1, 'Sem categoria', 'sem-categoria', 0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;

-- Copiando estrutura para tabela db_projetoarquitetura.wp_term_relationships
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_projetoarquitetura.wp_term_relationships: ~0 rows (aproximadamente)
DELETE FROM `wp_term_relationships`;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;

-- Copiando estrutura para tabela db_projetoarquitetura.wp_term_taxonomy
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_projetoarquitetura.wp_term_taxonomy: ~0 rows (aproximadamente)
DELETE FROM `wp_term_taxonomy`;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
	(1, 1, 'category', '', 0, 0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;

-- Copiando estrutura para tabela db_projetoarquitetura.wp_usermeta
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_projetoarquitetura.wp_usermeta: ~19 rows (aproximadamente)
DELETE FROM `wp_usermeta`;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
	(1, 1, 'nickname', 'admin'),
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
	(16, 1, 'session_tokens', 'a:1:{s:64:"27936f53d8851fd5a8fff24c8fedf72c63a8544b71efe3b72d2dda6fa3c088c7";a:4:{s:10:"expiration";i:1592242749;s:2:"ip";s:3:"::1";s:2:"ua";s:130:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36 Edg/83.0.478.45";s:5:"login";i:1592069949;}}'),
	(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
	(18, 1, 'enable_custom_fields', '1'),
	(19, 1, 'wp_user-settings', 'libraryContent=browse'),
	(20, 1, 'wp_user-settings-time', '1590531304');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;

-- Copiando estrutura para tabela db_projetoarquitetura.wp_users
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_projetoarquitetura.wp_users: ~0 rows (aproximadamente)
DELETE FROM `wp_users`;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
	(1, 'admin', '$P$BSRmFT.HnRXuZlUhtMLQVRFkU3w/6S0', 'admin', 'leonardozambao@live.com', 'http://localhost/ProjetoArquitetura', '2020-05-26 00:16:35', '', 0, 'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
