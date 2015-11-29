-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2015 at 04:42 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thcsgiaothanh`
--

-- --------------------------------------------------------

--
-- Table structure for table `gt_authors`
--

CREATE TABLE IF NOT EXISTS `gt_authors` (
  `admin_id` mediumint(8) unsigned NOT NULL,
  `editor` varchar(100) DEFAULT '',
  `lev` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `files_level` varchar(255) DEFAULT '',
  `position` varchar(255) NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `susp_reason` text,
  `check_num` varchar(40) NOT NULL,
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(45) DEFAULT '',
  `last_agent` varchar(255) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_authors`
--

INSERT INTO `gt_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor', 1, 'adobe,archives,audio,documents,flash,images,real,video|1|1|1', 'Administrator', 0, 0, 0, '', '3d805fef02cca02b0d52ed5a17faa598', 1448808585, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),
(2, 'ckeditor', 3, 'archives,audio,documents,flash,images,video|1|1|1', 'Quản lý', 0, 0, 0, '', 'aed17e9eb6d428e43b979dc8053b8e1c', 1448755480, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/52.2.98 Chrome/46.2.2490.98 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `gt_authors_config`
--

CREATE TABLE IF NOT EXISTS `gt_authors_config` (
  `id` mediumint(8) unsigned NOT NULL,
  `keyname` varchar(32) DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_authors_module`
--

CREATE TABLE IF NOT EXISTS `gt_authors_module` (
  `mid` mediumint(8) NOT NULL,
  `module` varchar(55) NOT NULL,
  `lang_key` varchar(50) NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  `act_1` tinyint(4) NOT NULL DEFAULT '0',
  `act_2` tinyint(4) NOT NULL DEFAULT '1',
  `act_3` tinyint(4) NOT NULL DEFAULT '1',
  `checksum` varchar(32) DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_authors_module`
--

INSERT INTO `gt_authors_module` (`mid`, `module`, `lang_key`, `weight`, `act_1`, `act_2`, `act_3`, `checksum`) VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, '1124e6335008707220e19f7c50f5120b'),
(2, 'authors', 'mod_authors', 2, 1, 1, 1, '5800367ddd2131c2a48abc091b1b4954'),
(3, 'settings', 'mod_settings', 3, 1, 1, 0, '63df7e6c6e05b0c74053cd5a07e936c4'),
(4, 'database', 'mod_database', 4, 1, 0, 0, 'ef05a8b7fa5f1c7c5a95506d708f8c67'),
(5, 'webtools', 'mod_webtools', 5, 1, 0, 0, '78ad74a0e1e92de06829794cd2333333'),
(6, 'seotools', 'mod_seotools', 6, 1, 0, 0, 'a43b23f38c14ea678873a8c79fd77f8f'),
(7, 'language', 'mod_language', 7, 1, 1, 0, '9b17eb3a34516fe94a82459df04834db'),
(8, 'modules', 'mod_modules', 8, 1, 1, 0, '8dd0279746a200fd776cbfb7e765ea58'),
(9, 'themes', 'mod_themes', 9, 1, 1, 0, '2197483829653ac365cdb6315df024ab'),
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, 'e135387a69d0a8350d84fb428164a186'),
(11, 'upload', 'mod_upload', 11, 1, 1, 1, 'ae01670776b268d7263914060c0c0246');

-- --------------------------------------------------------

--
-- Table structure for table `gt_banip`
--

CREATE TABLE IF NOT EXISTS `gt_banip` (
  `id` mediumint(8) NOT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_banners_click`
--

CREATE TABLE IF NOT EXISTS `gt_banners_click` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `click_time` int(11) unsigned NOT NULL DEFAULT '0',
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(15) NOT NULL,
  `click_country` varchar(10) NOT NULL,
  `click_browse_key` varchar(100) NOT NULL,
  `click_browse_name` varchar(100) NOT NULL,
  `click_os_key` varchar(100) NOT NULL,
  `click_os_name` varchar(100) NOT NULL,
  `click_ref` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_banners_click`
--

INSERT INTO `gt_banners_click` (`bid`, `click_time`, `click_day`, `click_ip`, `click_country`, `click_browse_key`, `click_browse_name`, `click_os_key`, `click_os_name`, `click_ref`) VALUES
(2, 1448693371, 0, '::1', 'ZZ', '', 'firefox', '', 'Windows 8', 'http://localhost/news/');

-- --------------------------------------------------------

--
-- Table structure for table `gt_banners_clients`
--

CREATE TABLE IF NOT EXISTS `gt_banners_clients` (
  `id` mediumint(8) unsigned NOT NULL,
  `login` varchar(60) NOT NULL,
  `pass` varchar(80) NOT NULL,
  `reg_time` int(11) unsigned NOT NULL DEFAULT '0',
  `full_name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `yim` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `check_num` varchar(40) NOT NULL,
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL,
  `last_agent` varchar(255) NOT NULL,
  `uploadtype` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_banners_plans`
--

CREATE TABLE IF NOT EXISTS `gt_banners_plans` (
  `id` smallint(5) unsigned NOT NULL,
  `blang` char(2) DEFAULT '',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT '',
  `form` varchar(100) NOT NULL,
  `width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_banners_plans`
--

INSERT INTO `gt_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`) VALUES
(1, '', 'Quang cao giua trang', '', 'sequential', 510, 100, 1),
(2, '', 'Quang cao trai', '', 'sequential', 190, 500, 1),
(3, '', 'Quảng cáo phải', '', 'sequential', 180, 200, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gt_banners_rows`
--

CREATE TABLE IF NOT EXISTS `gt_banners_rows` (
  `id` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file_name` varchar(255) NOT NULL,
  `file_ext` varchar(100) NOT NULL,
  `file_mime` varchar(100) NOT NULL,
  `width` int(4) unsigned NOT NULL DEFAULT '0',
  `height` int(4) unsigned NOT NULL DEFAULT '0',
  `file_alt` varchar(255) DEFAULT '',
  `imageforswf` varchar(255) DEFAULT '',
  `click_url` varchar(255) DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '_blank',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `hits_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_banners_rows`
--

INSERT INTO `gt_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `imageforswf`, `click_url`, `target`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(1, 'Sở Giáo dục và Đào tạo Nam Định', 2, 0, 'sgdnd20133229423.jpg', 'jpg', 'image/jpeg', 203, 161, '', '', 'http://namdinh.edu.vn/', '_blank', 1448557801, 1448557801, 0, 0, 1, 3),
(2, 'Thư viện trực tuyến ViOLET', 2, 0, 'violet20133228530.jpg', 'jpg', 'image/jpeg', 206, 105, '', '', 'http://violet.vn/main/', '_blank', 1448557801, 1448557801, 0, 1, 1, 4),
(3, 'Quang cao giua trang', 1, 0, 'webnhanh_vn.png', 'png', 'image/png', 510, 65, '', '', 'http://webnhanh.vn', '_blank', 1448557801, 1448557801, 0, 0, 1, 1),
(4, 'http&#x3A;&#x002F;&#x002F;ebook.edu.net.vn&#x002F;', 2, 0, 'edu.net20133229025.jpg', 'jpg', 'image/jpeg', 170, 61, '', '', 'http://ebook.edu.net.vn/', '_blank', 1448642504, 1448642504, 0, 0, 1, 2),
(5, 'http&#x3A;&#x002F;&#x002F;vnptnamdinh.vn&#x002F;', 2, 0, 'vnptnamdinh20139218521.jpg', 'jpg', 'image/jpeg', 398, 168, '', '', 'http://vnptnamdinh.vn/', '_blank', 1448642551, 1448642551, 0, 0, 1, 1),
(6, 'Những điều chưa biết về thì chuyển cấp', 3, 0, 'trai-5201331215819.jpg', 'jpg', 'image/jpeg', 180, 132, '', '', '', '_blank', 1448726507, 1448726507, 0, 0, 1, 2),
(7, 'Cuộc thì viết về môi trường xanh', 3, 0, 'trai-12013312145242.jpg', 'jpg', 'image/jpeg', 180, 150, '', '', '', '_blank', 1448726602, 1448726602, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gt_config`
--

CREATE TABLE IF NOT EXISTS `gt_config` (
  `lang` varchar(3) NOT NULL DEFAULT 'sys',
  `module` varchar(25) NOT NULL DEFAULT 'global',
  `config_name` varchar(30) NOT NULL DEFAULT '',
  `config_value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_config`
--

INSERT INTO `gt_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'site', 'closed_site', '0'),
('sys', 'site', 'admin_theme', 'admin_default'),
('sys', 'site', 'date_pattern', 'l, d/m/Y'),
('sys', 'site', 'time_pattern', 'H:i'),
('sys', 'site', 'online_upd', '1'),
('sys', 'site', 'statistic', '1'),
('sys', 'site', 'mailer_mode', ''),
('sys', 'site', 'smtp_host', 'smtp.gmail.com'),
('sys', 'site', 'smtp_ssl', '1'),
('sys', 'site', 'smtp_port', '465'),
('sys', 'site', 'smtp_username', 'user@gmail.com'),
('sys', 'site', 'smtp_password', ''),
('sys', 'site', 'googleAnalyticsID', ''),
('sys', 'site', 'googleAnalyticsSetDomainName', '0'),
('sys', 'site', 'googleAnalyticsMethod', 'classic'),
('sys', 'site', 'searchEngineUniqueID', ''),
('sys', 'site', 'metaTagsOgp', '1'),
('sys', 'site', 'pageTitleMode', 'pagetitle'),
('sys', 'site', 'description_length', '170'),
('sys', 'global', 'ssl_https', '0'),
('sys', 'global', 'notification_active', '1'),
('sys', 'global', 'notification_autodel', '15'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'site_phone', ''),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'gfx_chk', '3'),
('sys', 'global', 'file_allowed_ext', 'adobe,archives,audio,documents,flash,images,real,video'),
('sys', 'global', 'forbid_extensions', 'php,php3,php4,php5,phtml,inc'),
('sys', 'global', 'forbid_mimes', ''),
('sys', 'global', 'nv_max_size', '8388608'),
('sys', 'global', 'upload_checking_mode', 'mild'),
('sys', 'global', 'upload_alt_require', '1'),
('sys', 'global', 'upload_auto_alt', '1'),
('sys', 'global', 'allowuserreg', '1'),
('sys', 'global', 'allowuserlogin', '1'),
('sys', 'global', 'allowuserloginmulti', '0'),
('sys', 'global', 'allowloginchange', '0'),
('sys', 'global', 'allowquestion', '0'),
('sys', 'global', 'allowuserpublic', '1'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allowmailchange', '1'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'rewrite_optional', '1'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'rewrite_op_mod', 'news'),
('sys', 'global', 'autocheckupdate', '1'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'is_user_forum', '0'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'openid_servers', ''),
('sys', 'global', 'timestamp', '6'),
('sys', 'global', 'openid_processing', '0'),
('sys', 'global', 'captcha_type', '0'),
('sys', 'global', 'version', '4.0.23'),
('sys', 'global', 'whoviewuser', '2'),
('sys', 'global', 'facebook_client_id', ''),
('sys', 'global', 'facebook_client_secret', ''),
('sys', 'global', 'google_client_id', ''),
('sys', 'global', 'google_client_secret', ''),
('sys', 'global', 'cookie_httponly', '1'),
('sys', 'global', 'admin_check_pass_time', '1800'),
('sys', 'global', 'user_check_pass_time', '1800'),
('sys', 'global', 'adminrelogin_max', '3'),
('sys', 'global', 'cookie_secure', '0'),
('sys', 'global', 'nv_unick_type', '4'),
('sys', 'global', 'nv_upass_type', '0'),
('sys', 'global', 'is_flood_blocker', '1'),
('sys', 'global', 'max_requests_60', '40'),
('sys', 'global', 'max_requests_300', '150'),
('sys', 'global', 'nv_display_errors_list', '1'),
('sys', 'global', 'display_errors_list', '1'),
('sys', 'global', 'nv_auto_resize', '1'),
('sys', 'global', 'dump_interval', '1'),
('sys', 'global', 'cdn_url', ''),
('sys', 'define', 'nv_unickmin', '4'),
('sys', 'define', 'nv_unickmax', '20'),
('sys', 'define', 'nv_upassmin', '5'),
('sys', 'define', 'nv_upassmax', '20'),
('sys', 'define', 'nv_gfx_num', '6'),
('sys', 'define', 'nv_gfx_width', '120'),
('sys', 'define', 'nv_gfx_height', '25'),
('sys', 'define', 'nv_max_width', '1500'),
('sys', 'define', 'nv_max_height', '1500'),
('sys', 'define', 'nv_live_cookie_time', '31104000'),
('sys', 'define', 'nv_live_session_time', '0'),
('sys', 'define', 'nv_anti_iframe', '0'),
('sys', 'define', 'nv_anti_agent', '0'),
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),
('sys', 'define', 'dir_forum', ''),
('vi', 'global', 'site_domain', ''),
('vi', 'global', 'site_name', 'THCS Giao Thanh'),
('vi', 'global', 'site_logo', ''),
('vi', 'global', 'site_description', 'Chia sẻ thành công, kết nối đam mê'),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'site_theme', 'giaothanh'),
('vi', 'global', 'mobile_theme', 'mobile_default'),
('vi', 'global', 'site_home_module', 'news'),
('vi', 'global', 'switch_mobi_des', '1'),
('vi', 'global', 'upload_logo', ''),
('vi', 'global', 'autologosize1', '50'),
('vi', 'global', 'autologosize2', '40'),
('vi', 'global', 'autologosize3', '30'),
('vi', 'global', 'autologomod', ''),
('vi', 'global', 'name_show', '0'),
('vi', 'global', 'cronjobs_next_time', '1448811932'),
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),
('vi', 'global', 'ssl_https_modules', ''),
('vi', 'seotools', 'prcservice', ''),
('vi', 'about', 'auto_postcomm', '1'),
('vi', 'about', 'allowed_comm', '-1'),
('vi', 'about', 'view_comm', '6'),
('vi', 'about', 'setcomm', '4'),
('vi', 'about', 'activecomm', '0'),
('vi', 'about', 'emailcomm', '0'),
('vi', 'about', 'adminscomm', ''),
('vi', 'about', 'sortcomm', '0'),
('vi', 'about', 'captcha', '1'),
('vi', 'news', 'indexfile', 'viewcat_main_right'),
('vi', 'news', 'per_page', '20'),
('vi', 'news', 'st_links', '10'),
('vi', 'news', 'homewidth', '100'),
('vi', 'news', 'homeheight', '150'),
('vi', 'news', 'blockwidth', '52'),
('vi', 'news', 'blockheight', '75'),
('vi', 'news', 'imagefull', '460'),
('vi', 'news', 'copyright', 'Chú ý: Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http://nukeviet.vn là vi phạm bản quyền'),
('vi', 'news', 'showtooltip', '1'),
('vi', 'news', 'tooltip_position', 'bottom'),
('vi', 'news', 'tooltip_length', '150'),
('vi', 'news', 'showhometext', '1'),
('vi', 'news', 'timecheckstatus', '0'),
('vi', 'news', 'config_source', '0'),
('vi', 'news', 'show_no_image', ''),
('vi', 'news', 'allowed_rating_point', '1'),
('vi', 'news', 'facebookappid', ''),
('vi', 'news', 'socialbutton', '1'),
('vi', 'news', 'alias_lower', '1'),
('vi', 'news', 'tags_alias', '0'),
('vi', 'news', 'auto_tags', '0'),
('vi', 'news', 'tags_remind', '1'),
('vi', 'news', 'structure_upload', 'Ym'),
('vi', 'news', 'imgposition', '2'),
('vi', 'news', 'auto_postcomm', '1'),
('vi', 'news', 'allowed_comm', '-1'),
('vi', 'news', 'view_comm', '6'),
('vi', 'news', 'setcomm', '4'),
('vi', 'news', 'activecomm', '1'),
('vi', 'news', 'emailcomm', '0'),
('vi', 'news', 'adminscomm', ''),
('vi', 'news', 'sortcomm', '0'),
('vi', 'news', 'captcha', '1'),
('vi', 'page', 'auto_postcomm', '1'),
('vi', 'page', 'allowed_comm', '-1'),
('vi', 'page', 'view_comm', '6'),
('vi', 'page', 'setcomm', '4'),
('vi', 'page', 'activecomm', '0'),
('vi', 'page', 'emailcomm', '0'),
('vi', 'page', 'adminscomm', ''),
('vi', 'page', 'sortcomm', '0'),
('vi', 'page', 'captcha', '1'),
('vi', 'siteterms', 'auto_postcomm', '1'),
('vi', 'siteterms', 'allowed_comm', '-1'),
('vi', 'siteterms', 'view_comm', '6'),
('vi', 'siteterms', 'setcomm', '4'),
('vi', 'siteterms', 'activecomm', '0'),
('vi', 'siteterms', 'emailcomm', '0'),
('vi', 'siteterms', 'adminscomm', ''),
('vi', 'siteterms', 'sortcomm', '0'),
('vi', 'siteterms', 'captcha', '1'),
('vi', 'freecontent', 'next_execute', '0'),
('vi', 'contact', 'bodytext', 'Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.'),
('sys', 'site', 'statistics_timezone', 'Asia/Bangkok'),
('sys', 'site', 'site_email', 'lex4vn@gmail.com'),
('sys', 'global', 'error_set_logs', '1'),
('sys', 'global', 'error_send_email', 'lex4vn@gmail.com'),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'my_domains', 'localhost'),
('sys', 'global', 'cookie_prefix', 'nv4c_Vfjjg'),
('sys', 'global', 'session_prefix', 'nv4s_Eoujfq'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'lang_multi', '0'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', ''),
('sys', 'global', 'ftp_user_pass', '5bKI6oD6z43u-XLF6Uc2f-WyiOqA-s-N7vlyxelHNn8,'),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '0'),
('vi', 'video-clip', 'auto_postcomm', '1'),
('vi', 'video-clip', 'allowed_comm', '-1'),
('vi', 'video-clip', 'view_comm', '6'),
('vi', 'video-clip', 'setcomm', '4'),
('vi', 'video-clip', 'activecomm', '0'),
('vi', 'video-clip', 'emailcomm', '0'),
('vi', 'video-clip', 'adminscomm', ''),
('vi', 'video-clip', 'sortcomm', '0'),
('vi', 'video-clip', 'captcha', '1'),
('vi', 'tra-cuu-diem-thi', 'auto_postcomm', '1'),
('vi', 'tra-cuu-diem-thi', 'allowed_comm', '-1'),
('vi', 'tra-cuu-diem-thi', 'view_comm', '6'),
('vi', 'tra-cuu-diem-thi', 'setcomm', '4'),
('vi', 'tra-cuu-diem-thi', 'activecomm', '1'),
('vi', 'tra-cuu-diem-thi', 'emailcomm', '0'),
('vi', 'tra-cuu-diem-thi', 'adminscomm', ''),
('vi', 'tra-cuu-diem-thi', 'sortcomm', '0'),
('vi', 'tra-cuu-diem-thi', 'captcha', '1'),
('vi', 'teest', 'emailcomm', '0'),
('vi', 'teest', 'activecomm', '1'),
('vi', 'teest', 'structure_upload', 'Ym'),
('vi', 'teest', 'imgposition', '2'),
('vi', 'teest', 'auto_postcomm', '1'),
('vi', 'teest', 'allowed_comm', '-1'),
('vi', 'teest', 'view_comm', '6'),
('vi', 'teest', 'setcomm', '4'),
('vi', 'teest', 'showtooltip', '1'),
('vi', 'teest', 'tooltip_position', 'bottom'),
('vi', 'teest', 'tooltip_length', '150'),
('vi', 'teest', 'showhometext', '1'),
('vi', 'teest', 'timecheckstatus', '0'),
('vi', 'teest', 'config_source', '0'),
('vi', 'teest', 'show_no_image', ''),
('vi', 'teest', 'allowed_rating_point', '1'),
('vi', 'teest', 'facebookappid', ''),
('vi', 'teest', 'socialbutton', '1'),
('vi', 'teest', 'alias_lower', '1'),
('vi', 'teest', 'tags_alias', '0'),
('vi', 'teest', 'auto_tags', '0'),
('vi', 'teest', 'tags_remind', '1'),
('vi', 'teest', 'indexfile', 'viewcat_main_right'),
('vi', 'teest', 'per_page', '20'),
('vi', 'teest', 'st_links', '10'),
('vi', 'teest', 'homewidth', '100'),
('vi', 'teest', 'homeheight', '150'),
('vi', 'teest', 'blockwidth', '52'),
('vi', 'teest', 'blockheight', '75'),
('vi', 'teest', 'imagefull', '460'),
('vi', 'teest', 'copyright', 'Chú ý: Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http://nukeviet.vn là vi phạm bản quyền'),
('vi', 'teest', 'adminscomm', ''),
('vi', 'teest', 'sortcomm', '0'),
('vi', 'teest', 'captcha', '1');

-- --------------------------------------------------------

--
-- Table structure for table `gt_cookies`
--

CREATE TABLE IF NOT EXISTS `gt_cookies` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `domain` varchar(100) NOT NULL DEFAULT '',
  `path` varchar(100) NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT '0',
  `secure` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_cookies`
--

INSERT INTO `gt_cookies` (`name`, `value`, `domain`, `path`, `expires`, `secure`) VALUES
('nv3c_vndjsc_ctr', 'NzEyMjk3NjQ1LlZO', '.api.nukeviet.vn', '/', 1480102722, 0),
('nv3c_vndjsc_u_lang', '3KI,', '.api.nukeviet.vn', '/', 1480102722, 0),
('nv3c_vndjsc_nvvithemever', 'yg,,', '.api.nukeviet.vn', '/', 1480102722, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_counter`
--

CREATE TABLE IF NOT EXISTS `gt_counter` (
  `c_type` varchar(100) NOT NULL,
  `c_val` varchar(100) NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT '0',
  `c_count` int(11) unsigned NOT NULL DEFAULT '0',
  `vi_count` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_counter`
--

INSERT INTO `gt_counter` (`c_type`, `c_val`, `last_update`, `c_count`, `vi_count`) VALUES
('c_time', 'start', 0, 0, 0),
('c_time', 'last', 0, 1448810750, 0),
('total', 'hits', 1448810750, 45, 45),
('year', '2015', 1448810750, 45, 45),
('year', '2016', 0, 0, 0),
('year', '2017', 0, 0, 0),
('year', '2018', 0, 0, 0),
('year', '2019', 0, 0, 0),
('year', '2020', 0, 0, 0),
('year', '2021', 0, 0, 0),
('year', '2022', 0, 0, 0),
('year', '2023', 0, 0, 0),
('month', 'Jan', 0, 0, 0),
('month', 'Feb', 0, 0, 0),
('month', 'Mar', 0, 0, 0),
('month', 'Apr', 0, 0, 0),
('month', 'May', 0, 0, 0),
('month', 'Jun', 0, 0, 0),
('month', 'Jul', 0, 0, 0),
('month', 'Aug', 0, 0, 0),
('month', 'Sep', 0, 0, 0),
('month', 'Oct', 0, 0, 0),
('month', 'Nov', 1448810750, 45, 45),
('month', 'Dec', 0, 0, 0),
('day', '01', 0, 0, 0),
('day', '02', 0, 0, 0),
('day', '03', 0, 0, 0),
('day', '04', 0, 0, 0),
('day', '05', 0, 0, 0),
('day', '06', 0, 0, 0),
('day', '07', 0, 0, 0),
('day', '08', 0, 0, 0),
('day', '09', 0, 0, 0),
('day', '10', 0, 0, 0),
('day', '11', 0, 0, 0),
('day', '12', 0, 0, 0),
('day', '13', 0, 0, 0),
('day', '14', 0, 0, 0),
('day', '15', 0, 0, 0),
('day', '16', 0, 0, 0),
('day', '17', 0, 0, 0),
('day', '18', 0, 0, 0),
('day', '19', 0, 0, 0),
('day', '20', 0, 0, 0),
('day', '21', 0, 0, 0),
('day', '22', 0, 0, 0),
('day', '23', 0, 0, 0),
('day', '24', 0, 0, 0),
('day', '25', 0, 0, 0),
('day', '26', 0, 0, 0),
('day', '27', 1448642582, 14, 14),
('day', '28', 1448728125, 11, 11),
('day', '29', 1448810750, 20, 20),
('day', '30', 0, 0, 0),
('day', '31', 0, 0, 0),
('dayofweek', 'Sunday', 1448810750, 20, 20),
('dayofweek', 'Monday', 0, 0, 0),
('dayofweek', 'Tuesday', 0, 0, 0),
('dayofweek', 'Wednesday', 0, 0, 0),
('dayofweek', 'Thursday', 0, 0, 0),
('dayofweek', 'Friday', 1448642582, 14, 14),
('dayofweek', 'Saturday', 1448728125, 11, 11),
('hour', '00', 1448732192, 2, 2),
('hour', '01', 1448735796, 2, 2),
('hour', '02', 1448739399, 2, 2),
('hour', '03', 1448743004, 2, 2),
('hour', '04', 1448746607, 2, 2),
('hour', '05', 1448750211, 2, 2),
('hour', '06', 1448754131, 2, 2),
('hour', '07', 1448756881, 2, 2),
('hour', '08', 0, 0, 0),
('hour', '09', 0, 0, 0),
('hour', '10', 0, 0, 0),
('hour', '11', 0, 0, 0),
('hour', '12', 0, 0, 0),
('hour', '13', 1448693313, 0, 0),
('hour', '14', 1448697058, 0, 0),
('hour', '15', 1448700957, 0, 0),
('hour', '16', 1448702763, 0, 0),
('hour', '17', 1448707465, 0, 0),
('hour', '18', 0, 0, 0),
('hour', '19', 0, 0, 0),
('hour', '20', 1448803176, 2, 2),
('hour', '21', 1448808199, 1, 1),
('hour', '22', 1448810750, 1, 1),
('hour', '23', 1448728125, 0, 0),
('bot', 'googlebot', 0, 0, 0),
('bot', 'msnbot', 0, 0, 0),
('bot', 'bingbot', 0, 0, 0),
('bot', 'yahooslurp', 0, 0, 0),
('bot', 'w3cvalidator', 0, 0, 0),
('browser', 'opera', 0, 0, 0),
('browser', 'operamini', 0, 0, 0),
('browser', 'webtv', 0, 0, 0),
('browser', 'explorer', 0, 0, 0),
('browser', 'edge', 0, 0, 0),
('browser', 'pocket', 0, 0, 0),
('browser', 'konqueror', 0, 0, 0),
('browser', 'icab', 0, 0, 0),
('browser', 'omniweb', 0, 0, 0),
('browser', 'firebird', 0, 0, 0),
('browser', 'firefox', 1448810750, 40, 40),
('browser', 'iceweasel', 0, 0, 0),
('browser', 'shiretoko', 0, 0, 0),
('browser', 'mozilla', 0, 0, 0),
('browser', 'amaya', 0, 0, 0),
('browser', 'lynx', 0, 0, 0),
('browser', 'safari', 0, 0, 0),
('browser', 'iphone', 0, 0, 0),
('browser', 'ipod', 0, 0, 0),
('browser', 'ipad', 0, 0, 0),
('browser', 'chrome', 1448756881, 5, 5),
('browser', 'android', 0, 0, 0),
('browser', 'googlebot', 0, 0, 0),
('browser', 'yahooslurp', 0, 0, 0),
('browser', 'w3cvalidator', 0, 0, 0),
('browser', 'blackberry', 0, 0, 0),
('browser', 'icecat', 0, 0, 0),
('browser', 'nokias60', 0, 0, 0),
('browser', 'nokia', 0, 0, 0),
('browser', 'msn', 0, 0, 0),
('browser', 'msnbot', 0, 0, 0),
('browser', 'bingbot', 0, 0, 0),
('browser', 'netscape', 0, 0, 0),
('browser', 'galeon', 0, 0, 0),
('browser', 'netpositive', 0, 0, 0),
('browser', 'phoenix', 0, 0, 0),
('browser', 'Mobile', 0, 0, 0),
('browser', 'bots', 0, 0, 0),
('browser', 'Unknown', 0, 0, 0),
('browser', 'Unspecified', 0, 0, 0),
('os', 'unknown', 0, 0, 0),
('os', 'win', 0, 0, 0),
('os', 'win10', 0, 0, 0),
('os', 'win8', 1448810750, 45, 45),
('os', 'win7', 0, 0, 0),
('os', 'win2003', 0, 0, 0),
('os', 'winvista', 0, 0, 0),
('os', 'wince', 0, 0, 0),
('os', 'winxp', 0, 0, 0),
('os', 'win2000', 0, 0, 0),
('os', 'apple', 0, 0, 0),
('os', 'linux', 0, 0, 0),
('os', 'os2', 0, 0, 0),
('os', 'beos', 0, 0, 0),
('os', 'iphone', 0, 0, 0),
('os', 'ipod', 0, 0, 0),
('os', 'ipad', 0, 0, 0),
('os', 'blackberry', 0, 0, 0),
('os', 'nokia', 0, 0, 0),
('os', 'freebsd', 0, 0, 0),
('os', 'openbsd', 0, 0, 0),
('os', 'netbsd', 0, 0, 0),
('os', 'sunos', 0, 0, 0),
('os', 'opensolaris', 0, 0, 0),
('os', 'android', 0, 0, 0),
('os', 'irix', 0, 0, 0),
('os', 'palm', 0, 0, 0),
('os', 'Unspecified', 0, 0, 0),
('country', 'AD', 0, 0, 0),
('country', 'AE', 0, 0, 0),
('country', 'AF', 0, 0, 0),
('country', 'AG', 0, 0, 0),
('country', 'AI', 0, 0, 0),
('country', 'AL', 0, 0, 0),
('country', 'AM', 0, 0, 0),
('country', 'AN', 0, 0, 0),
('country', 'AO', 0, 0, 0),
('country', 'AQ', 0, 0, 0),
('country', 'AR', 0, 0, 0),
('country', 'AS', 0, 0, 0),
('country', 'AT', 0, 0, 0),
('country', 'AU', 0, 0, 0),
('country', 'AW', 0, 0, 0),
('country', 'AZ', 0, 0, 0),
('country', 'BA', 0, 0, 0),
('country', 'BB', 0, 0, 0),
('country', 'BD', 0, 0, 0),
('country', 'BE', 0, 0, 0),
('country', 'BF', 0, 0, 0),
('country', 'BG', 0, 0, 0),
('country', 'BH', 0, 0, 0),
('country', 'BI', 0, 0, 0),
('country', 'BJ', 0, 0, 0),
('country', 'BM', 0, 0, 0),
('country', 'BN', 0, 0, 0),
('country', 'BO', 0, 0, 0),
('country', 'BR', 0, 0, 0),
('country', 'BS', 0, 0, 0),
('country', 'BT', 0, 0, 0),
('country', 'BW', 0, 0, 0),
('country', 'BY', 0, 0, 0),
('country', 'BZ', 0, 0, 0),
('country', 'CA', 0, 0, 0),
('country', 'CD', 0, 0, 0),
('country', 'CF', 0, 0, 0),
('country', 'CG', 0, 0, 0),
('country', 'CH', 0, 0, 0),
('country', 'CI', 0, 0, 0),
('country', 'CK', 0, 0, 0),
('country', 'CL', 0, 0, 0),
('country', 'CM', 0, 0, 0),
('country', 'CN', 0, 0, 0),
('country', 'CO', 0, 0, 0),
('country', 'CR', 0, 0, 0),
('country', 'CS', 0, 0, 0),
('country', 'CU', 0, 0, 0),
('country', 'CV', 0, 0, 0),
('country', 'CY', 0, 0, 0),
('country', 'CZ', 0, 0, 0),
('country', 'DE', 0, 0, 0),
('country', 'DJ', 0, 0, 0),
('country', 'DK', 0, 0, 0),
('country', 'DM', 0, 0, 0),
('country', 'DO', 0, 0, 0),
('country', 'DZ', 0, 0, 0),
('country', 'EC', 0, 0, 0),
('country', 'EE', 0, 0, 0),
('country', 'EG', 0, 0, 0),
('country', 'ER', 0, 0, 0),
('country', 'ES', 0, 0, 0),
('country', 'ET', 0, 0, 0),
('country', 'EU', 0, 0, 0),
('country', 'FI', 0, 0, 0),
('country', 'FJ', 0, 0, 0),
('country', 'FK', 0, 0, 0),
('country', 'FM', 0, 0, 0),
('country', 'FO', 0, 0, 0),
('country', 'FR', 0, 0, 0),
('country', 'GA', 0, 0, 0),
('country', 'GB', 0, 0, 0),
('country', 'GD', 0, 0, 0),
('country', 'GE', 0, 0, 0),
('country', 'GF', 0, 0, 0),
('country', 'GH', 0, 0, 0),
('country', 'GI', 0, 0, 0),
('country', 'GL', 0, 0, 0),
('country', 'GM', 0, 0, 0),
('country', 'GN', 0, 0, 0),
('country', 'GP', 0, 0, 0),
('country', 'GQ', 0, 0, 0),
('country', 'GR', 0, 0, 0),
('country', 'GS', 0, 0, 0),
('country', 'GT', 0, 0, 0),
('country', 'GU', 0, 0, 0),
('country', 'GW', 0, 0, 0),
('country', 'GY', 0, 0, 0),
('country', 'HK', 0, 0, 0),
('country', 'HN', 0, 0, 0),
('country', 'HR', 0, 0, 0),
('country', 'HT', 0, 0, 0),
('country', 'HU', 0, 0, 0),
('country', 'ID', 0, 0, 0),
('country', 'IE', 0, 0, 0),
('country', 'IL', 0, 0, 0),
('country', 'IN', 0, 0, 0),
('country', 'IO', 0, 0, 0),
('country', 'IQ', 0, 0, 0),
('country', 'IR', 0, 0, 0),
('country', 'IS', 0, 0, 0),
('country', 'IT', 0, 0, 0),
('country', 'JM', 0, 0, 0),
('country', 'JO', 0, 0, 0),
('country', 'JP', 0, 0, 0),
('country', 'KE', 0, 0, 0),
('country', 'KG', 0, 0, 0),
('country', 'KH', 0, 0, 0),
('country', 'KI', 0, 0, 0),
('country', 'KM', 0, 0, 0),
('country', 'KN', 0, 0, 0),
('country', 'KR', 0, 0, 0),
('country', 'KW', 0, 0, 0),
('country', 'KY', 0, 0, 0),
('country', 'KZ', 0, 0, 0),
('country', 'LA', 0, 0, 0),
('country', 'LB', 0, 0, 0),
('country', 'LC', 0, 0, 0),
('country', 'LI', 0, 0, 0),
('country', 'LK', 0, 0, 0),
('country', 'LR', 0, 0, 0),
('country', 'LS', 0, 0, 0),
('country', 'LT', 0, 0, 0),
('country', 'LU', 0, 0, 0),
('country', 'LV', 0, 0, 0),
('country', 'LY', 0, 0, 0),
('country', 'MA', 0, 0, 0),
('country', 'MC', 0, 0, 0),
('country', 'MD', 0, 0, 0),
('country', 'MG', 0, 0, 0),
('country', 'MH', 0, 0, 0),
('country', 'MK', 0, 0, 0),
('country', 'ML', 0, 0, 0),
('country', 'MM', 0, 0, 0),
('country', 'MN', 0, 0, 0),
('country', 'MO', 0, 0, 0),
('country', 'MP', 0, 0, 0),
('country', 'MQ', 0, 0, 0),
('country', 'MR', 0, 0, 0),
('country', 'MT', 0, 0, 0),
('country', 'MU', 0, 0, 0),
('country', 'MV', 0, 0, 0),
('country', 'MW', 0, 0, 0),
('country', 'MX', 0, 0, 0),
('country', 'MY', 0, 0, 0),
('country', 'MZ', 0, 0, 0),
('country', 'NA', 0, 0, 0),
('country', 'NC', 0, 0, 0),
('country', 'NE', 0, 0, 0),
('country', 'NF', 0, 0, 0),
('country', 'NG', 0, 0, 0),
('country', 'NI', 0, 0, 0),
('country', 'NL', 0, 0, 0),
('country', 'NO', 0, 0, 0),
('country', 'NP', 0, 0, 0),
('country', 'NR', 0, 0, 0),
('country', 'NU', 0, 0, 0),
('country', 'NZ', 0, 0, 0),
('country', 'OM', 0, 0, 0),
('country', 'PA', 0, 0, 0),
('country', 'PE', 0, 0, 0),
('country', 'PF', 0, 0, 0),
('country', 'PG', 0, 0, 0),
('country', 'PH', 0, 0, 0),
('country', 'PK', 0, 0, 0),
('country', 'PL', 0, 0, 0),
('country', 'PR', 0, 0, 0),
('country', 'PS', 0, 0, 0),
('country', 'PT', 0, 0, 0),
('country', 'PW', 0, 0, 0),
('country', 'PY', 0, 0, 0),
('country', 'QA', 0, 0, 0),
('country', 'RE', 0, 0, 0),
('country', 'RO', 0, 0, 0),
('country', 'RU', 0, 0, 0),
('country', 'RW', 0, 0, 0),
('country', 'SA', 0, 0, 0),
('country', 'SB', 0, 0, 0),
('country', 'SC', 0, 0, 0),
('country', 'SD', 0, 0, 0),
('country', 'SE', 0, 0, 0),
('country', 'SG', 0, 0, 0),
('country', 'SI', 0, 0, 0),
('country', 'SK', 0, 0, 0),
('country', 'SL', 0, 0, 0),
('country', 'SM', 0, 0, 0),
('country', 'SN', 0, 0, 0),
('country', 'SO', 0, 0, 0),
('country', 'SR', 0, 0, 0),
('country', 'ST', 0, 0, 0),
('country', 'SV', 0, 0, 0),
('country', 'SY', 0, 0, 0),
('country', 'SZ', 0, 0, 0),
('country', 'TD', 0, 0, 0),
('country', 'TF', 0, 0, 0),
('country', 'TG', 0, 0, 0),
('country', 'TH', 0, 0, 0),
('country', 'TJ', 0, 0, 0),
('country', 'TK', 0, 0, 0),
('country', 'TL', 0, 0, 0),
('country', 'TM', 0, 0, 0),
('country', 'TN', 0, 0, 0),
('country', 'TO', 0, 0, 0),
('country', 'TR', 0, 0, 0),
('country', 'TT', 0, 0, 0),
('country', 'TV', 0, 0, 0),
('country', 'TW', 0, 0, 0),
('country', 'TZ', 0, 0, 0),
('country', 'UA', 0, 0, 0),
('country', 'UG', 0, 0, 0),
('country', 'US', 0, 0, 0),
('country', 'UY', 0, 0, 0),
('country', 'UZ', 0, 0, 0),
('country', 'VA', 0, 0, 0),
('country', 'VC', 0, 0, 0),
('country', 'VE', 0, 0, 0),
('country', 'VG', 0, 0, 0),
('country', 'VI', 0, 0, 0),
('country', 'VN', 0, 0, 0),
('country', 'VU', 0, 0, 0),
('country', 'WS', 0, 0, 0),
('country', 'YE', 0, 0, 0),
('country', 'YT', 0, 0, 0),
('country', 'YU', 0, 0, 0),
('country', 'ZA', 0, 0, 0),
('country', 'ZM', 0, 0, 0),
('country', 'ZW', 0, 0, 0),
('country', 'ZZ', 1448810750, 45, 45),
('country', 'unkown', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_cronjobs`
--

CREATE TABLE IF NOT EXISTS `gt_cronjobs` (
  `id` mediumint(8) unsigned NOT NULL,
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `inter_val` int(11) unsigned NOT NULL DEFAULT '0',
  `run_file` varchar(255) NOT NULL,
  `run_func` varchar(255) NOT NULL,
  `params` varchar(255) DEFAULT NULL,
  `del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `last_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_result` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vi_cron_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_cronjobs`
--

INSERT INTO `gt_cronjobs` (`id`, `start_time`, `inter_val`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`) VALUES
(1, 1448557801, 5, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1448811632, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),
(2, 1448557801, 1440, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1448803037, 1, 'Tự động lưu CSDL'),
(3, 1448557801, 60, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1448808199, 1, 'Xóa các file tạm trong thư mục tmp'),
(4, 1448557801, 30, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1448810049, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập'),
(5, 1448557801, 1440, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1448803037, 1, 'Xóa các file error_log quá hạn'),
(6, 1448557801, 360, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin'),
(7, 1448557801, 60, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1448808199, 1, 'Xóa các referer quá hạn'),
(8, 1448557801, 1440, 'siteDiagnostic_update.php', 'cron_siteDiagnostic_update', '', 0, 0, 1, 1448803037, 1, 'Cập nhật đánh giá site từ các máy chủ tìm kiếm'),
(9, 1448557801, 60, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1448808199, 1, 'Kiểm tra phiên bản NukeViet'),
(10, 1448557801, 1440, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1448803037, 1, 'Xóa thông báo cũ');

-- --------------------------------------------------------

--
-- Table structure for table `gt_extension_files`
--

CREATE TABLE IF NOT EXISTS `gt_extension_files` (
  `idfile` mediumint(8) unsigned NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'other',
  `title` varchar(55) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `lastmodified` int(11) unsigned NOT NULL DEFAULT '0',
  `duplicate` smallint(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_googleplus`
--

CREATE TABLE IF NOT EXISTS `gt_googleplus` (
  `gid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `idprofile` varchar(25) NOT NULL DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_groups`
--

CREATE TABLE IF NOT EXISTS `gt_groups` (
  `group_id` smallint(5) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `content` text,
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `publics` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL,
  `idsite` int(11) unsigned NOT NULL DEFAULT '0',
  `numbers` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `siteus` tinyint(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_groups`
--

INSERT INTO `gt_groups` (`group_id`, `title`, `description`, `content`, `add_time`, `exp_time`, `publics`, `weight`, `act`, `idsite`, `numbers`, `siteus`) VALUES
(1, 'Super admin', 'Super Admin', '', 1448557801, 0, 0, 1, 1, 0, 1, 0),
(2, 'General admin', 'General Admin', '', 1448557801, 0, 0, 2, 1, 0, 0, 0),
(3, 'Module admin', 'Module Admin', '', 1448557801, 0, 0, 3, 1, 0, 1, 0),
(4, 'Users', 'Users', '', 1448557801, 0, 0, 4, 1, 0, 2, 0),
(5, 'Guest', 'Guest', '', 1448557801, 0, 0, 5, 1, 0, 0, 0),
(6, 'All', 'All', '', 1448557801, 0, 0, 6, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_groups_users`
--

CREATE TABLE IF NOT EXISTS `gt_groups_users` (
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_groups_users`
--

INSERT INTO `gt_groups_users` (`group_id`, `userid`, `data`) VALUES
(1, 1, '0'),
(3, 2, '0');

-- --------------------------------------------------------

--
-- Table structure for table `gt_language`
--

CREATE TABLE IF NOT EXISTS `gt_language` (
  `id` mediumint(8) unsigned NOT NULL,
  `idfile` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_key` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_language_file`
--

CREATE TABLE IF NOT EXISTS `gt_language_file` (
  `idfile` mediumint(8) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `admin_file` varchar(255) NOT NULL DEFAULT '0',
  `langtype` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_logs`
--

CREATE TABLE IF NOT EXISTS `gt_logs` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) NOT NULL,
  `module_name` varchar(150) NOT NULL,
  `name_key` varchar(255) NOT NULL,
  `note_action` text NOT NULL,
  `link_acess` varchar(255) DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_logs`
--

INSERT INTO `gt_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'login', '[lex4vn@gmail.com] Đăng nhập', ' Client IP:::1', '', 0, 1448557959),
(2, 'vi', 'themes', 'Thiết lập giao diện theme: "giaothanh"', '', '', 1, 1448558540),
(3, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1448558905),
(4, 'vi', 'themes', 'Kích hoạt theme: "giaothanh"', '', '', 1, 1448558968),
(5, 'vi', 'themes', 'Kích hoạt theme: "default"', '', '', 1, 1448558991),
(6, 'vi', 'themes', 'Kích hoạt theme: "giaothanh"', '', '', 1, 1448559007),
(7, 'vi', 'themes', 'Kích hoạt theme: "default"', '', '', 1, 1448559012),
(8, 'vi', 'themes', 'Kích hoạt theme: "giaothanh"', '', '', 1, 1448559014),
(9, 'vi', 'themes', 'Sửa block', 'Name : Chủ đề', '', 1, 1448559804),
(10, 'vi', 'themes', 'Sửa block', 'Name : Chủ đề', '', 1, 1448559869),
(11, 'vi', 'themes', 'Sửa block', 'Name : Chủ đề', '', 1, 1448559892),
(12, 'vi', 'themes', 'Sửa block', 'Name : Chủ đề', '', 1, 1448559950),
(13, 'vi', 'themes', 'Sửa block', 'Name : Chủ đề', '', 1, 1448560013),
(14, 'vi', 'themes', 'Sửa block', 'Name : Chủ đề', '', 1, 1448560043),
(15, 'vi', 'themes', 'Sửa block', 'Name : Chủ đề', '', 1, 1448560080),
(16, 'vi', 'themes', 'Sửa block', 'Name : Chủ đề', '', 1, 1448560341),
(17, 'vi', 'themes', 'Thiết lập layout theme: "giaothanh"', '', '', 1, 1448561912),
(18, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1448562112),
(19, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1448562277),
(20, 'vi', 'login', '[lex4vn] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1448566428),
(21, 'vi', 'login', '[lex4vn] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1448566437),
(22, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1448566442),
(23, 'vi', 'menu', 'delete menu id: 2', 'Trang chur', '', 1, 1448566544),
(24, 'vi', 'modules', 'Thêm module ảo video_clip', '', '', 1, 1448566782),
(25, 'vi', 'modules', 'Thiết lập module mới video-clip', '', '', 1, 1448566798),
(26, 'vi', 'modules', 'Sửa module &ldquo;video-clip&rdquo;', '', '', 1, 1448566824),
(27, 'vi', 'themes', 'Thêm block', 'Name : Video clip', '', 1, 1448566933),
(28, 'vi', 'themes', 'Sửa block', 'Name : Video clip', '', 1, 1448567148),
(29, 'vi', 'themes', 'Sửa block', 'Name : Video clip', '', 1, 1448567351),
(30, 'vi', 'themes', 'Sửa block', 'Name : Video clip', '', 1, 1448567425),
(31, 'vi', 'themes', 'Sửa block', 'Name : Video clip', '', 1, 1448567524),
(32, 'vi', 'themes', 'Sửa block', 'Name : Video clip', '', 1, 1448567781),
(33, 'vi', 'themes', 'Sửa block', 'Name : Chủ đề', '', 1, 1448632466),
(34, 'vi', 'themes', 'Sửa block', 'Name : Module Menu', '', 1, 1448632486),
(35, 'vi', 'themes', 'Sửa block', 'Name : Video clip', '', 1, 1448632499),
(36, 'vi', 'modules', 'Thêm module ảo tra_cuu_diem_thi', '', '', 1, 1448632777),
(37, 'vi', 'modules', 'Thiết lập module mới tra-cuu-diem-thi', '', '', 1, 1448632786),
(38, 'vi', 'modules', 'Sửa module &ldquo;tra-cuu-diem-thi&rdquo;', '', '', 1, 1448632913),
(39, 'vi', 'modules', 'Sửa module &ldquo;tra-cuu-diem-thi&rdquo;', '', '', 1, 1448632937),
(40, 'vi', 'tra-cuu-diem-thi', 'Add', ' ', '', 1, 1448633054),
(41, 'vi', 'themes', 'Thêm block', 'Name : global html', '', 1, 1448633135),
(42, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1448633260),
(43, 'vi', 'themes', 'Sửa block', 'Name : Tra cứu điểm thi', '', 1, 1448633284),
(44, 'vi', 'themes', 'Sửa block', 'Name : Tra cứu điểm thi', '', 1, 1448633395),
(45, 'vi', 'themes', 'Thêm block', 'Name : Tin tiêu điểm', '', 1, 1448633524),
(46, 'vi', 'themes', 'Sửa block', 'Name : Tin tiêu điểm', '', 1, 1448633775),
(47, 'vi', 'themes', 'Sửa block', 'Name : Tin tiêu điểm', '', 1, 1448633856),
(48, 'vi', 'themes', 'Sửa block', 'Name : Trang chủ', '', 1, 1448634044),
(49, 'vi', 'themes', 'Sửa block', 'Name : Trang chủ', '', 1, 1448634106),
(50, 'vi', 'themes', 'Thêm block', 'Name : module block news', '', 1, 1448641917),
(51, 'vi', 'themes', 'Sửa block', 'Name : module block news', '', 1, 1448641964),
(52, 'vi', 'banners', 'log_edit_banner', 'bannerid 1', '', 1, 1448642122),
(53, 'vi', 'banners', 'log_edit_banner', 'bannerid 2', '', 1, 1448642299),
(54, 'vi', 'banners', 'log_add_banner', 'bannerid 4', '', 1, 1448642504),
(55, 'vi', 'banners', 'log_add_banner', 'bannerid 5', '', 1, 1448642551),
(56, 'vi', 'banners', 'log_edit_banner', 'bannerid 5', '', 1, 1448642574),
(57, 'vi', 'themes', 'Thêm block', 'Name : Liên kết hữu ích', '', 1, 1448642713),
(58, 'vi', 'themes', 'Sửa block', 'Name : Liên kết hữu ích', '', 1, 1448642764),
(59, 'vi', 'themes', 'Sửa block', 'Name : Liên kết hữu ích', '', 1, 1448642976),
(60, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1448694297),
(61, 'vi', 'themes', 'Thêm block', 'Name : global bootstrap', '', 1, 1448694388),
(62, 'vi', 'themes', 'Sửa block', 'Name : global bootstrap', '', 1, 1448694412),
(63, 'vi', 'themes', 'Sửa block', 'Name : global bootstrap', '', 1, 1448694447),
(64, 'vi', 'themes', 'Sửa block', 'Name : global company info', '', 1, 1448695990),
(65, 'vi', 'themes', 'Sửa block', 'Name : global company info', '', 1, 1448696055),
(66, 'vi', 'themes', 'Sửa block', 'Name : global company info', '', 1, 1448696209),
(67, 'vi', 'themes', 'Sửa block', 'Name : global menu footer', '', 1, 1448697206),
(68, 'vi', 'themes', 'Sửa block', 'Name : global company info', '', 1, 1448698767),
(69, 'vi', 'themes', 'Sửa block', 'Name : Số người truy cập', '', 1, 1448698982),
(70, 'vi', 'themes', 'Sửa block', 'Name : module block news', '', 1, 1448700374),
(71, 'vi', 'themes', 'Sửa block', 'Name : module block news', '', 1, 1448700559),
(72, 'vi', 'themes', 'Thêm block', 'Name : global banners', '', 1, 1448726404),
(73, 'vi', 'banners', 'log_add_plan', 'planid 3', '', 1, 1448726440),
(74, 'vi', 'banners', 'log_add_banner', 'bannerid 6', '', 1, 1448726507),
(75, 'vi', 'themes', 'Sửa block', 'Name : global banners', '', 1, 1448726538),
(76, 'vi', 'banners', 'log_add_banner', 'bannerid 7', '', 1, 1448726602),
(77, 'vi', 'banners', 'log_edit_plan', 'planid 3', '', 1, 1448726688),
(78, 'vi', 'banners', 'log_edit_plan', 'planid 3', '', 1, 1448726754),
(79, 'vi', 'themes', 'Sửa block', 'Name : Liên kết hữu ích', '', 1, 1448727371),
(80, 'vi', 'modules', 'Thêm module ảo nha_truong', '', '', 1, 1448727519),
(81, 'vi', 'modules', 'Thiết lập module mới nha-truong', '', '', 1, 1448727542),
(82, 'vi', 'nha-truong', 'Thêm chuyên mục', 'Giới thiệu', '', 1, 1448727804),
(83, 'vi', 'upload', 'Upload file', 'uploads/news/2015_11/20-11.png', '', 1, 1448753286),
(84, 'vi', 'modules', 'Xóa module "nha-truong"', '', '', 1, 1448753674),
(85, 'vi', 'news', 'Thêm chuyên mục', 'Tin học', '', 1, 1448754041),
(86, 'vi', 'news', 'Thêm chuyên mục', 'Thư viện', '', 1, 1448754071),
(87, 'vi', 'news', 'Thêm chuyên mục', 'Thời khóa biểu', '', 1, 1448754095),
(88, 'vi', 'news', 'Thêm chuyên mục', 'Chung tay', '', 1, 1448754111),
(89, 'vi', 'news', 'log_del_source', 'NukeViet', '', 1, 1448754517),
(90, 'vi', 'news', 'log_del_source', 'VINADES.,JSC', '', 1, 1448754522),
(91, 'vi', 'users', 'Xóa nhóm', 'group_id: 10', '', 1, 1448754688),
(92, 'vi', 'users', 'Xóa nhóm', 'group_id: 11', '', 1, 1448754696),
(93, 'vi', 'users', 'Xóa nhóm', 'group_id: 12', '', 1, 1448754702),
(94, 'vi', 'users', 'log_add_user', 'userid 2', '', 1, 1448754855),
(95, 'vi', 'authors', 'Thêm Quản trị', 'Username: quanly', '', 1, 1448755130),
(96, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1448755145),
(97, 'vi', 'login', '[quanly] Đăng nhập', ' Client IP:::1', '', 0, 1448755174),
(98, 'vi', 'login', '[lex4vn] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1448755333),
(99, 'vi', 'login', '[lex4vn] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1448755336),
(100, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1448755345),
(101, 'vi', 'authors', 'Sửa thông tin Quản trị website', 'Username: quanly', '', 1, 1448755424),
(102, 'vi', 'login', '[quanly] Đăng nhập', ' Client IP:::1', '', 0, 1448755480),
(103, 'vi', 'authors', 'Sửa thông tin Quản trị website', 'Username: quanly', '', 1, 1448755531),
(104, 'vi', 'authors', 'Sửa thông tin Quản trị website', 'Username: quanly', '', 1, 1448755559),
(105, 'vi', 'news', 'Xóa bài viêt', 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam, Công bố dự án NukeViet 3.0 sau 1 tháng ra mắt VINADES.,JSC, Giới thiệu về mã nguồn mở NukeViet, Thư mời hợp tác liên kết quảng cáo và cung cấp hosting thử nghiệm, Tuyển dụng lập trình viên, chuyên viên đồ họa phát triển NukeViet, Webnhanh.vn - website dịch vụ chuyên nghiệp cho NukeViet chính thức ra mắt, NukeViet - Công cụ mã nguồn mở cho cộng đồng thiết kế website Việt Nam, Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', '', 2, 1448755582),
(106, 'vi', 'news', 'Thêm chuyên mục', 'Chào cờ', '', 2, 1448755679),
(107, 'vi', 'login', '[quanly] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1448756875),
(108, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1448756904),
(109, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1448808585),
(110, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1448808630),
(111, 'vi', 'modules', 'Sửa module &ldquo;news&rdquo;', '', '', 1, 1448808975),
(112, 'vi', 'news', 'log_del_topic', 'topicid 1', '', 1, 1448809638),
(113, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1448810102),
(114, 'vi', 'news', 'Thêm bài viết', 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11', '', 1, 1448810300),
(115, 'vi', 'news', 'Thêm bài viết', 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11', '', 1, 1448810415),
(116, 'vi', 'news', 'Thêm bài viết', 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11', '', 1, 1448810439),
(117, 'vi', 'news', 'Thêm bài viết', 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11', '', 1, 1448810476),
(118, 'vi', 'news', 'Thêm bài viết', 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11', '', 1, 1448810515),
(119, 'vi', 'news', 'Thêm bài viết', 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11', '', 1, 1448810564),
(120, 'vi', 'news', 'Thêm bài viết', 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11', '', 1, 1448810602),
(121, 'vi', 'modules', 'Thêm module ảo teest', '', '', 1, 1448810625),
(122, 'vi', 'modules', 'Thiết lập module mới teest', '', '', 1, 1448810632),
(123, 'vi', 'news', 'Thêm bài viết', 'test1', '', 1, 1448810718),
(124, 'vi', 'news', 'Sửa bài viết', 'test1', '', 1, 1448810863),
(125, 'vi', 'news', 'Sửa bài viết', 'test1', '', 1, 1448810876),
(126, 'vi', 'news', 'Xóa bài viêt', 'test1', '', 1, 1448811411);

-- --------------------------------------------------------

--
-- Table structure for table `gt_notification`
--

CREATE TABLE IF NOT EXISTS `gt_notification` (
  `id` int(11) unsigned NOT NULL,
  `send_to` mediumint(8) unsigned NOT NULL,
  `send_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `area` tinyint(1) unsigned NOT NULL,
  `language` char(3) NOT NULL,
  `module` varchar(50) NOT NULL,
  `obid` int(11) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `add_time` int(11) unsigned NOT NULL,
  `view` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_plugin`
--

CREATE TABLE IF NOT EXISTS `gt_plugin` (
  `pid` tinyint(4) NOT NULL,
  `plugin_file` varchar(50) NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_sessions`
--

CREATE TABLE IF NOT EXISTS `gt_sessions` (
  `session_id` varchar(50) DEFAULT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(100) NOT NULL,
  `onl_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_sessions`
--

INSERT INTO `gt_sessions` (`session_id`, `userid`, `username`, `onl_time`) VALUES
('p3bgbenmovk4l71r1tak6sup22', 1, 'admin', 1448811596);

-- --------------------------------------------------------

--
-- Table structure for table `gt_setup`
--

CREATE TABLE IF NOT EXISTS `gt_setup` (
  `lang` char(2) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tables` varchar(255) NOT NULL,
  `version` varchar(100) NOT NULL,
  `setup_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_setup_extensions`
--

CREATE TABLE IF NOT EXISTS `gt_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'other',
  `title` varchar(55) NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT '0',
  `virtual` tinyint(1) NOT NULL DEFAULT '0',
  `basename` varchar(50) NOT NULL DEFAULT '',
  `table_prefix` varchar(55) NOT NULL DEFAULT '',
  `version` varchar(50) NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `author` text NOT NULL,
  `note` varchar(255) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_setup_extensions`
--

INSERT INTO `gt_setup_extensions` (`id`, `type`, `title`, `is_sys`, `virtual`, `basename`, `table_prefix`, `version`, `addtime`, `author`, `note`) VALUES
(0, 'module', 'about', 0, 0, 'page', 'about', '4.0.21 1436199600', 1448557801, 'VINADES (contact@vinades.vn)', ''),
(0, 'module', 'siteterms', 0, 0, 'page', 'siteterms', '4.0.21 1436199600', 1448557801, 'VINADES (contact@vinades.vn)', ''),
(19, 'module', 'banners', 1, 0, 'banners', 'banners', '4.0.21 1436199600', 1448557801, 'VINADES (contact@vinades.vn)', ''),
(20, 'module', 'contact', 0, 1, 'contact', 'contact', '4.0.21 1436199600', 1448557801, 'VINADES (contact@vinades.vn)', ''),
(1, 'module', 'news', 0, 1, 'news', 'news', '4.0.21 1436199600', 1448557801, 'VINADES (contact@vinades.vn)', ''),
(21, 'module', 'voting', 0, 0, 'voting', 'voting', '4.0.21 1436199600', 1448557801, 'VINADES (contact@vinades.vn)', ''),
(0, 'theme', 'giaothanh', 0, 0, 'giaothanh', 'giaothanh', '4.0.0 1448559584', 1448559584, 'VINADES.,JSC', 'Đây là giao diện mặc định của hệ thống. Bạn không được xóa, đổi tên và không nên sửa trực tiếp vào giao diện này. Nếu muốn, hãy copy thành giao diện khác và kích hoạt sử dụng giao diện mới đó để chỉnh sửa và sử dụng.'),
(284, 'module', 'seek', 1, 0, 'seek', 'seek', '4.0.21 1436199600', 1448557801, 'VINADES (contact@vinades.vn)', ''),
(24, 'module', 'users', 1, 0, 'users', 'users', '4.0.21 1436199600', 1448557801, 'VINADES (contact@vinades.vn)', ''),
(27, 'module', 'statistics', 0, 0, 'statistics', 'statistics', '4.0.21 1436199600', 1448557801, 'VINADES (contact@vinades.vn)', ''),
(29, 'module', 'menu', 0, 0, 'menu', 'menu', '4.0.21 1436199600', 1448557801, 'VINADES (contact@vinades.vn)', ''),
(283, 'module', 'feeds', 1, 0, 'feeds', 'feeds', '4.0.21 1436199600', 1448557801, 'VINADES (contact@vinades.vn)', ''),
(282, 'module', 'page', 1, 1, 'page', 'page', '4.0.21 1436199600', 1448557801, 'VINADES (contact@vinades.vn)', ''),
(281, 'module', 'comment', 1, 0, 'comment', 'comment', '4.0.21 1436199600', 1448557801, 'VINADES (contact@vinades.vn)', ''),
(0, 'module', 'freecontent', 0, 0, 'freecontent', 'freecontent', '4.0.21 1436199600', 1448557801, 'VINADES (contact@vinades.vn)', ''),
(0, 'theme', 'default', 0, 0, 'default', 'default', '4.0.21 1436199600', 1448557801, 'VINADES (contact@vinades.vn)', ''),
(0, 'theme', 'mobile_default', 0, 0, 'mobile_default', 'mobile_default', '4.0.21 1436199600', 1448557801, 'VINADES (contact@vinades.vn)', ''),
(0, 'module', 'video-clip', 0, 0, 'page', 'video_clip', '', 1448566782, '', ''),
(0, 'module', 'tra-cuu-diem-thi', 0, 0, 'page', 'tra_cuu_diem_thi', '', 1448632777, '', ''),
(0, 'module', 'teest', 0, 0, 'news', 'teest', '', 1448810625, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `gt_setup_language`
--

CREATE TABLE IF NOT EXISTS `gt_setup_language` (
  `lang` char(2) NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_setup_language`
--

INSERT INTO `gt_setup_language` (`lang`, `setup`) VALUES
('vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gt_upload_dir`
--

CREATE TABLE IF NOT EXISTS `gt_upload_dir` (
  `did` mediumint(8) NOT NULL,
  `dirname` varchar(255) DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `thumb_type` tinyint(4) NOT NULL DEFAULT '0',
  `thumb_width` smallint(6) NOT NULL DEFAULT '0',
  `thumb_height` smallint(6) NOT NULL DEFAULT '0',
  `thumb_quality` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_upload_dir`
--

INSERT INTO `gt_upload_dir` (`did`, `dirname`, `time`, `thumb_type`, `thumb_width`, `thumb_height`, `thumb_quality`) VALUES
(0, '', 0, 3, 100, 150, 90),
(1, 'uploads', 0, 0, 0, 0, 0),
(2, 'uploads/about', 0, 0, 0, 0, 0),
(3, 'uploads/banners', 0, 0, 0, 0, 0),
(4, 'uploads/contact', 0, 0, 0, 0, 0),
(5, 'uploads/freecontent', 0, 0, 0, 0, 0),
(6, 'uploads/menu', 1448566603, 0, 0, 0, 0),
(7, 'uploads/news', 0, 0, 0, 0, 0),
(8, 'uploads/news/source', 0, 0, 0, 0, 0),
(9, 'uploads/news/temp_pic', 0, 0, 0, 0, 0),
(10, 'uploads/news/topics', 0, 0, 0, 0, 0),
(11, 'uploads/page', 0, 0, 0, 0, 0),
(12, 'uploads/siteterms', 0, 0, 0, 0, 0),
(13, 'uploads/users', 0, 0, 0, 0, 0),
(14, 'uploads/video-clip', 0, 0, 0, 0, 0),
(15, 'uploads/tra-cuu-diem-thi', 0, 0, 0, 0, 0),
(24, 'uploads/teest/topics', 0, 0, 0, 0, 0),
(23, 'uploads/teest/temp_pic', 0, 0, 0, 0, 0),
(22, 'uploads/teest/source', 0, 0, 0, 0, 0),
(21, 'uploads/teest', 0, 0, 0, 0, 0),
(20, 'uploads/news/2015_11', 1448753177, 0, 0, 0, 0),
(25, 'uploads/teest/2015_11', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_upload_file`
--

CREATE TABLE IF NOT EXISTS `gt_upload_file` (
  `name` varchar(255) NOT NULL,
  `ext` varchar(10) NOT NULL DEFAULT '',
  `type` varchar(5) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `src` varchar(255) NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT '0',
  `srcheight` int(11) NOT NULL DEFAULT '0',
  `sizes` varchar(50) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alt` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_upload_file`
--

INSERT INTO `gt_upload_file` (`name`, `ext`, `type`, `filesize`, `src`, `srcwidth`, `srcheight`, `sizes`, `userid`, `mtime`, `did`, `title`, `alt`) VALUES
('20-11.png', 'png', 'image', 872654, 'assets/news/2015_11/20-11.png', 80, 40, '855|426', 1, 1448753288, 20, '20-11.png', '20 11');

-- --------------------------------------------------------

--
-- Table structure for table `gt_users`
--

CREATE TABLE IF NOT EXISTS `gt_users` (
  `userid` mediumint(8) unsigned NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `md5username` char(32) NOT NULL DEFAULT '',
  `password` varchar(80) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `gender` char(1) DEFAULT '',
  `photo` varchar(255) DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text,
  `regdate` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL DEFAULT '',
  `passlostkey` varchar(50) DEFAULT '',
  `view_mail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remember` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `in_groups` varchar(255) DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checknum` varchar(40) DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(45) DEFAULT '',
  `last_agent` varchar(255) DEFAULT '',
  `last_openid` varchar(255) DEFAULT '',
  `idsite` int(11) NOT NULL DEFAULT '0',
  `safemode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `safekey` varchar(40) DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_users`
--

INSERT INTO `gt_users` (`userid`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `idsite`, `safemode`, `safekey`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '{SSHA}CFXCgEOtvQW54eMQe5OrtHBV4j9DR1FF', 'lex4vn@gmail.com', 'admin', '', '', '', 0, '', 1448557950, 'THCSGIAOTHANH', '2015', '', 0, 1, '', 1, '', 1448557950, '', '', '', 0, 0, ''),
(2, 'quanly', '76ce09fc04225228897e61087b1172a8', '{SSHA}SOuUlbxS2YoXkX91y4T5gi0NaSNVUm1N', 'lex4vn1@gmail.com', 'quanly', '', '', '', 0, '', 1448754855, 'quan ly la gi', 'quan ly', '', 0, 1, '', 1, '', 0, '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `gt_users_config`
--

CREATE TABLE IF NOT EXISTS `gt_users_config` (
  `config` varchar(100) NOT NULL,
  `content` text,
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_users_config`
--

INSERT INTO `gt_users_config` (`config`, `content`, `edit_time`) VALUES
('access_admin', 'a:6:{s:12:"access_addus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:"access_waiting";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_editus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:"access_delus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_passus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_groups";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1352873462),
('password_simple', '000000|1234|2000|12345|111111|123123|123456|654321|696969|1234567|12345678|123456789|1234567890|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman', 1448557801),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1448557801),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1448557801),
('avatar_width', '80', 1448557801),
('avatar_height', '80', 1448557801),
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129);

-- --------------------------------------------------------

--
-- Table structure for table `gt_users_field`
--

CREATE TABLE IF NOT EXISTS `gt_users_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) NOT NULL,
  `weight` int(10) unsigned NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') NOT NULL DEFAULT 'textbox',
  `field_choices` text NOT NULL,
  `sql_choices` text NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) NOT NULL DEFAULT '',
  `func_callback` varchar(75) NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_register` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_editable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_profile` tinyint(4) NOT NULL DEFAULT '1',
  `class` varchar(50) NOT NULL,
  `language` text NOT NULL,
  `default_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_users_info`
--

CREATE TABLE IF NOT EXISTS `gt_users_info` (
  `userid` mediumint(8) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_users_info`
--

INSERT INTO `gt_users_info` (`userid`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `gt_users_openid`
--

CREATE TABLE IF NOT EXISTS `gt_users_openid` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `opid` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_users_question`
--

CREATE TABLE IF NOT EXISTS `gt_users_question` (
  `qid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `lang` char(2) NOT NULL DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_users_question`
--

INSERT INTO `gt_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285);

-- --------------------------------------------------------

--
-- Table structure for table `gt_users_reg`
--

CREATE TABLE IF NOT EXISTS `gt_users_reg` (
  `userid` mediumint(8) unsigned NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `md5username` char(32) NOT NULL DEFAULT '',
  `password` varchar(80) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL DEFAULT '',
  `checknum` varchar(50) NOT NULL DEFAULT '',
  `users_info` text,
  `openid_info` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_about`
--

CREATE TABLE IF NOT EXISTS `gt_vi_about` (
  `id` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT '',
  `imagealt` varchar(255) DEFAULT '',
  `description` text,
  `bodytext` mediumtext NOT NULL,
  `keywords` text,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) DEFAULT '',
  `layout_func` varchar(100) DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_about`
--

INSERT INTO `gt_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(1, 'Giới thiệu về NukeViet 3.0', 'Gioi-thieu-ve-NukeViet-3-0', '', '', '', '<p> NukeViet 3.0 là thế hệ CMS hoàn toàn mới do người Việt phát triển. Lần đầu tiên ở Việt Nam, một bộ nhân mã nguồn mở được đầu tư bài bản và chuyên nghiệp cả về tài chính, nhân lực và thời gian. Kết quả là 100% dòng code của NukeViet được viết mới hoàn toàn, NukeViet 3 sử dụng xHTML, CSS với Xtemplate và jquery cho phép vận dụng Ajax uyển chuyển cả trong công nghệ nhân.</p><p> Tận dụng các thành tựu mã nguồn mở có sẵn nhưng NukeViet 3 vẫn đảm bảo rằng từng dòng code là được code tay (NukeViet 3 không sử dụng bất cứ một nền tảng (framework) nào). Điều này có nghĩa là NukeViet 3 hoàn toàn không phụ thuộc vào bất cứ framework nào trong quá trình phát triển của mình; Bạn hoàn toàn có thể đọc hiểu để tự lập trình trên NukeViet 3 nếu bạn biết PHP và MySQL (đồng nghĩa với việc NukeViet 3 hoàn toàn mở và dễ nghiên cứu cho bất cứ ai muốn tìm hiểu về code của NukeViet).</p><p style="text-align: justify;"> Bộ nhân NukeViet 3 ngoài việc thừa hưởng sự đơn giản vốn có của NukeViet nhưng không vì thế mà quên nâng cấp mình. Hệ thống NukeViet 3 hỗ trợ công nghệ đa nhân module. Chúng tôi gọi đó là công nghệ ảo hóa module. Công nghệ này cho phép người sử dụng có thể khởi tạo hàng ngàn module một cách tự động mà không cần động đến một dòng code. Các module được sinh ra từ công nghệ này gọi là module ảo. Module ảo là module được nhân bản từ một module bất kỳ của hệ thống nukeviet nếu module đó cho phép tạo module ảo.</p><p style="text-align: justify;"> NukeViet 3 cũng hỗ trợ việc cài đặt từ động 100% các module, block, theme từ Admin Control Panel, người sử dụng có thể cài module mà không cần làm bất cứ thao tác phức tạp nào. NukeViet 3 còn cho phép bạn đóng gói module để chia sẻ cho người khác.</p><p style="text-align: justify;"> NukeViet 3 đa ngôn ngữ 100% với 2 loại: đa ngôn ngữ giao diện và đa ngôn ngữ database. NukeViet 3 có tính năng&nbsp; cho phép người quản trị tự xây dựng ngôn ngữ mới cho site. Cho&nbsp; phép đóng gói file ngôn ngữ để chia sẻ cho cộng đồng... câu chuyện về nukeviet 3 sẽ còn dài vì một loạt các tính năng cao cấp vẫn đang được phát triển. Hãy sử dụng và phổ biến NukeViet 3 để tự mình tận hưởng những thành quả mới nhất từ công nghệ web mã nguồn mở. Cuối cùng NukeViet 3 là món của của <a href="http://vinades.vn" target="_blank">VINADES.,JSC</a> gửi tới cộng đồng để cảm ơn cộng đồng đã ủng hộ thời gian qua, bây giờ NukeViet 3 được đưa trở lại cộng đồng để cộng đồng tiếp tục nuôi nấng và chăm sóc NukeViet lớn mạnh hơn.</p><p style="text-align: justify;"> Mọi ý kiến và yêu cầu trợ giúp về NukeViet 3 các bạn có thể gửi lên diễn đàn NukeViet tại địa chỉ: <a href="http://nukeviet.vn/phpbb/" target="_blank">http://nukeviet.vn/phpbb/</a>. Việc giúp đỡ hoàn toàn miễn phí và mọi góp ý của bạn đều được hoan nghênh.</p> <div style="text-align: center;"><iframe width="420" height="315" src="https://www.youtube.com/embed/dG66RocXSeY?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>	<br /> Video clip Giới thiệu mã nguồn mở NukeViet trong bản tin Tiêu điểm của chương trình Xã hội thông tin<br /> (Đài truyền hình kỹ thuật số VTC) phát sóng lúc 20h chủ nhật, ngày 05-09-2010 trên VTC1</div>', '', 0, '4', '', 0, 1, 1, 1275320174, 1275320174, 1),
(2, 'Giới thiệu về công ty chuyên quản NukeViet', 'Gioi-thieu-ve-cong-ty-chuyen-quan-NukeViet', '', '', '', '<p style="text-align: justify;"> <strong>Công ty cổ phần phát triển nguồn mở Việt Nam</strong> (VINADES.,JSC) là công ty mã nguồn mở đầu tiên của Việt Nam sở hữu riêng một mã nguồn mở nổi tiếng và đang được sử dụng ở hàng ngàn website lớn nhỏ trong mọi lĩnh vực.<br /> <br /> Ra đời từ hoạt động của tổ chức nguồn mở NukeViet (từ năm 2004) và chính thức được thành lập đầu 2010 tại Hà Nội, khi đó báo chí đã gọi VINADES.,JSC là &quot;Công ty mã nguồn mở đầu tiên tại Việt Nam&quot;.<br /> <br /> Ngay sau khi thành lập, VINADES.,JSC đã thành công trong việc xây dựng <strong><a href="http://nukeviet.vn/" target="_blank">NukeViet</a></strong> thành một <a href="http://nukeviet.vn/" target="_blank">mã nguồn mở</a> thuần Việt. Với khả năng mạnh mẽ, cùng các ưu điểm vượt trội về công nghệ, độ an toàn và bảo mật, NukeViet đã được hàng ngàn website lựa chọn sử dụng trong năm qua. Ngay khi ra mắt phiên bản mới năm 2010, NukeViet đã tạo nên hiệu ứng truyền thông chưa từng có trong lịch sử mã nguồn mở Việt Nam. Tiếp đó, năm 2011 Mã nguồn mở NukeViet đã giành giải thưởng Nhân tài đất Việt cho sản phẩm Công nghệ thông tin đã được ứng dụng rộng rãi.<br /></p><div style="text-align: center;"><iframe width="420" height="315" src="https://www.youtube.com/embed/ZOhu2bLE-eA?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe><br /> <strong>Video clip trao giải Nhân tài đất Việt 2011.</strong><br /> Sản phẩm &quot;Mã nguồn mở NukeViet&quot; đã nhận giải cao nhất (Giải ba, không có giải nhất, giải nhì) của Giải thưởng Nhân Tài Đất Việt 2011 ở lĩnh vực Công nghệ thông tin - Sản phẩm đã có ứng dụng rộng rãi.</div><p style="text-align: justify;"><br /> Tự chuyên nghiệp hóa mình, thoát khỏi mô hình phát triển tự phát, công ty đã nỗ lực vươn mình ra thế giới và đang phấn đấu trở thành một trong những hiện tượng của thời &quot;dotcom&quot; ở Việt Nam.<br /> <br /> Để phục vụ hoạt động của công ty, công ty liên tục mở rộng và tuyển thêm nhân sự ở các vị trí: Lập trình viên, chuyên viên đồ họa, nhân viên kinh doanh... Hãy liên hệ ngay để gia nhập VINADES.,JSC và cùng chúng tôi trở thành một công ty phát triển nguồn mở thành công nhất Việt Nam.</p> <p>Nếu bạn có nhu cầu triển khai các hệ thống <a href="http://toasoandientu.vn" target="_blank">Tòa Soạn Điện Tử</a>, <a href="http://webnhanh.vn" target="_blank">phần mềm trực tuyến</a>, <a href="http://vinades.vn" target="_blank">thiết kế web</a> theo yêu cầu hoặc dịch vụ có liên quan, hãy liên hệ công ty chuyên quản NukeViet theo thông tin dưới đây:</p><p><strong><span style="font-family: Tahoma; color: rgb(255, 69, 0); font-size: 14px;">CÔNG TY CỔ PHẦN PHÁT TRIỂN NGUỒN MỞ VIỆT NAM</span></strong><br /> <strong>VIET NAM OPEN SOURCE DEVELOPMENT JOINT STOCK COMPANY</strong> (<strong>VINADES.,JSC</strong>)<br />Website: <a href="http://vinades.vn/">http://vinades.vn</a> | <a href="http://nukeviet.vn/">http://nukeviet.vn</a> | <a href="http://webnhanh.vn/">http://webnhanh.vn</a><br />Trụ sở: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br /> - Tel: +84-4-85872007<br /> - Fax: +84-4-35500914<br /> - Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a></p>', '', 0, '4', '', 0, 2, 1, 1275320224, 1275320224, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_about_config`
--

CREATE TABLE IF NOT EXISTS `gt_vi_about_config` (
  `config_name` varchar(30) NOT NULL,
  `config_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_about_config`
--

INSERT INTO `gt_vi_about_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '5'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_blocks_groups`
--

CREATE TABLE IF NOT EXISTS `gt_vi_blocks_groups` (
  `bid` mediumint(8) unsigned NOT NULL,
  `theme` varchar(55) NOT NULL,
  `module` varchar(55) NOT NULL,
  `file_name` varchar(55) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `template` varchar(55) DEFAULT NULL,
  `position` varchar(55) DEFAULT NULL,
  `exp_time` int(11) DEFAULT '0',
  `active` varchar(10) DEFAULT '1',
  `groups_view` varchar(255) DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_blocks_groups`
--

INSERT INTO `gt_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(1, 'default', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', '6', 0, 1, 'a:9:{s:6:"numrow";i:5;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";s:12:"length_title";i:400;s:15:"length_hometext";i:0;s:5:"width";i:500;s:6:"height";i:0;s:7:"nocatid";a:0:{}}'),
(2, 'default', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', '6', 0, 2, 'a:1:{s:12:"idplanbanner";i:1;}'),
(3, 'default', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', '6', 0, 1, 'a:2:{s:5:"catid";i:0;s:12:"title_length";i:25;}'),
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', '6', 0, 2, ''),
(5, 'default', 'banners', 'global.banners.php', 'Quảng cáo trái', '', 'no_title', '[LEFT]', 0, '1', '6', 1, 3, 'a:1:{s:12:"idplanbanner";i:2;}'),
(6, 'default', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', '6', 1, 1, ''),
(7, 'default', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', '6', 1, 2, ''),
(8, 'default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', '6', 1, 1, 'a:5:{s:12:"copyright_by";s:0:"";s:13:"copyright_url";s:0:"";s:9:"design_by";s:12:"VINADES.,JSC";s:10:"design_url";s:18:"http://vinades.vn/";s:13:"siteterms_url";s:44:"/news/index.php?language=vi&amp;nv=siteterms";}'),
(9, 'default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', '6', 1, 2, ''),
(10, 'default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', '6', 1, 1, 'a:3:{s:5:"level";s:1:"M";s:15:"pixel_per_point";i:4;s:11:"outer_frame";i:1;}'),
(11, 'default', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', '6', 1, 2, ''),
(12, 'default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', '6', 1, 1, ''),
(13, 'default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', '6', 1, 1, 'a:17:{s:12:"company_name";s:58:"Công ty cổ phần phát triển nguồn mở Việt Nam";s:16:"company_sortname";s:12:"VINADES.,JSC";s:15:"company_regcode";s:0:"";s:16:"company_regplace";s:0:"";s:21:"company_licensenumber";s:0:"";s:22:"company_responsibility";s:0:"";s:15:"company_address";s:72:"Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội";s:15:"company_showmap";i:1;s:20:"company_mapcenterlat";d:20.9845159999999992805896908976137638092041015625;s:20:"company_mapcenterlng";d:105.7954749999999961573848850093781948089599609375;s:14:"company_maplat";d:20.9845159999999992805896908976137638092041015625;s:14:"company_maplng";d:105.7954750000000103682396002113819122314453125;s:15:"company_mapzoom";i:17;s:13:"company_phone";s:56:"+84-4-85872007[+84485872007]|+84-904762534[+84904762534]";s:11:"company_fax";s:14:"+84-4-35500914";s:13:"company_email";s:18:"contact@vinades.vn";s:15:"company_website";s:17:"http://vinades.vn";}'),
(14, 'default', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', '6', 1, 1, 'a:2:{s:6:"menuid";i:1;s:12:"title_length";i:20;}'),
(15, 'default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', '6', 1, 1, ''),
(16, 'default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', '6', 1, 1, 'a:4:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:11:"google_plus";s:32:"https://www.google.com/+nukeviet";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(17, 'default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', '6', 1, 1, 'a:1:{s:14:"module_in_menu";a:8:{i:0;s:5:"about";i:1;s:4:"news";i:2;s:5:"users";i:3;s:7:"contact";i:4;s:6:"voting";i:5;s:7:"banners";i:6;s:4:"seek";i:7;s:5:"feeds";}}'),
(18, 'default', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', '6', 1, 1, 'a:2:{s:7:"blockid";i:1;s:7:"numrows";i:2;}'),
(19, 'mobile_default', 'menu', 'global.metismenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', '6', 1, 1, 'a:2:{s:6:"menuid";i:1;s:12:"title_length";i:0;}'),
(20, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', '6', 1, 2, ''),
(21, 'mobile_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', '6', 1, 1, ''),
(22, 'mobile_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', '6', 1, 2, ''),
(23, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', '6', 1, 3, 'a:4:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:11:"google_plus";s:32:"https://www.google.com/+nukeviet";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(24, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', '6', 1, 4, 'a:3:{s:5:"level";s:1:"L";s:15:"pixel_per_point";i:4;s:11:"outer_frame";i:1;}'),
(25, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', '6', 1, 1, 'a:5:{s:12:"copyright_by";s:0:"";s:13:"copyright_url";s:0:"";s:9:"design_by";s:12:"VINADES.,JSC";s:10:"design_url";s:18:"http://vinades.vn/";s:13:"siteterms_url";s:35:"/index.php?language=vi&nv=siteterms";}'),
(26, 'mobile_default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'primary', '[MENU_FOOTER]', 0, '1', '6', 1, 1, 'a:1:{s:14:"module_in_menu";a:9:{i:0;s:5:"about";i:1;s:4:"news";i:2;s:5:"users";i:3;s:7:"contact";i:4;s:6:"voting";i:5;s:7:"banners";i:6;s:4:"seek";i:7;s:5:"feeds";i:8;s:9:"siteterms";}}'),
(27, 'mobile_default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'primary', '[COMPANY_INFO]', 0, '1', '6', 1, 1, 'a:17:{s:12:"company_name";s:58:"Công ty cổ phần phát triển nguồn mở Việt Nam";s:16:"company_sortname";s:12:"VINADES.,JSC";s:15:"company_regcode";s:0:"";s:16:"company_regplace";s:0:"";s:21:"company_licensenumber";s:0:"";s:22:"company_responsibility";s:0:"";s:15:"company_address";s:72:"Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội";s:15:"company_showmap";i:1;s:20:"company_mapcenterlat";d:20.9845159999999992805896908976137638092041015625;s:20:"company_mapcenterlng";d:105.7954749999999961573848850093781948089599609375;s:14:"company_maplat";d:20.9845159999999992805896908976137638092041015625;s:14:"company_maplng";d:105.7954750000000103682396002113819122314453125;s:15:"company_mapzoom";i:17;s:13:"company_phone";s:56:"+84-4-85872007[+84485872007]|+84-904762534[+84904762534]";s:11:"company_fax";s:14:"+84-4-35500914";s:13:"company_email";s:18:"contact@vinades.vn";s:15:"company_website";s:17:"http://vinades.vn";}'),
(28, 'giaothanh', 'theme', 'global.company_info.php', 'global company info', '', 'no_title', '[FOOTER_SITE]', 0, '1', '6', 1, 1, 'a:17:{s:12:"company_name";s:98:"Bản quyền Website thuộc về Trường Trung học cơ sở Giao Thanh - Tỉnh Nam Định.";s:16:"company_sortname";s:0:"";s:15:"company_regcode";s:0:"";s:16:"company_regplace";s:0:"";s:21:"company_licensenumber";s:0:"";s:22:"company_responsibility";s:0:"";s:15:"company_address";s:20:"Nam Định, Vietnam";s:15:"company_showmap";i:1;s:20:"company_mapcenterlat";d:20.2791504392019987790263257920742034912109375;s:20:"company_mapcenterlng";d:106.2055624660199981690311687998473644256591796875;s:14:"company_maplat";d:20.279180400000001327498466707766056060791015625;s:14:"company_maplng";d:106.2051483999999845764250494539737701416015625;s:15:"company_mapzoom";i:20;s:13:"company_phone";s:72:"+84-4-85872007&#91;+84485872007&#93;|+84-904762534&#91;+84904762534&#93;";s:11:"company_fax";s:0:"";s:13:"company_email";s:27:"lienhe@thcsgiaothanh.edu.vn";s:15:"company_website";s:20:"thcsgiaothanh.edu.vn";}'),
(29, 'giaothanh', 'contact', 'global.contact_default.php', 'Contact Default', NULL, 'no_title', '[CONTACT_DEFAULT]', 0, '1', '6', 1, 1, ''),
(33, 'giaothanh', 'menu', 'global.metismenu.php', 'Trang chủ', '/news', 'primary', '[LEFT]', 0, '1', '6', 1, 1, 'a:2:{s:6:"menuid";i:1;s:12:"title_length";i:20;}'),
(35, 'giaothanh', 'banners', 'global.banners.php', 'Quảng cáo trái', NULL, 'no_title', '[LEFT]', 0, '1', '6', 1, 2, 'a:1:{s:12:"idplanbanner";i:2;}'),
(36, 'giaothanh', 'theme', 'global.menu_footer.php', 'global menu footer', '', 'no_title', '[MENU_FOOTER]', 0, '1', '6', 1, 1, 'a:1:{s:14:"module_in_menu";a:8:{i:0;s:5:"about";i:1;s:4:"news";i:2;s:5:"users";i:3;s:7:"contact";i:4;s:6:"voting";i:5;s:7:"banners";i:6;s:4:"seek";i:7;s:5:"feeds";}}'),
(38, 'giaothanh', 'users', 'global.user_button.php', 'Đăng nhập thành viên', NULL, 'no_title', '[PERSONALAREA]', 0, '1', '6', 1, 1, ''),
(40, 'giaothanh', 'statistics', 'global.counter.php', 'Số người truy cập', '', 'primary', '[LEFT]', 0, '1', '6', 1, 4, ''),
(43, 'giaothanh', 'theme', 'global.social.php', 'Social icon', NULL, 'no_title', '[SOCIAL_ICONS]', 0, '1', '6', 1, 1, 'a:4:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:11:"google_plus";s:32:"https://www.google.com/+nukeviet";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(44, 'giaothanh', 'news', 'module.block_newscenter.php', 'Tin mới nhất', NULL, 'no_title', '[TOP]', 0, '1', '6', 0, 1, 'a:5:{s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";s:5:"width";s:3:"400";s:6:"height";s:0:"";}'),
(46, 'giaothanh', 'video-clip', 'global.html.php', 'Video clip', 'video-clip', 'primary', '[RIGHT]', 0, '1', '6', 1, 2, 'a:1:{s:11:"htmlcontent";s:86:"<object data="http://www.youtube.com/v/dEE-VrJiLOk" height="120" width="180"></object>";}'),
(47, 'giaothanh', 'tra-cuu-diem-thi', 'global.html.php', 'Tra cứu điểm thi', '', 'primary', '[RIGHT]', 0, '1', '6', 1, 1, 'a:1:{s:11:"htmlcontent";s:125:"<div class="input-group-search"><div class="input-group-btn-search"><em class="fa fa-search fa-md">Tra cứu</em></div></div>";}'),
(48, 'giaothanh', 'news', 'global.block_groups.php', 'Tin tiêu điểm', '/news/groups/Tin-tieu-diem/', 'primary', '[RIGHT]', 0, '1', '6', 1, 3, 'a:5:{s:7:"blockid";i:1;s:6:"numrow";i:5;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";}'),
(49, 'giaothanh', 'news', 'module.block_topline.php', 'module block news', '', 'no_title', '[MENU_SITE]', 0, '1', '6', 0, 1, 'a:4:{s:6:"numrow";i:0;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:3:"top";s:14:"tooltip_length";s:3:"150";}'),
(50, 'giaothanh', 'page', 'global.html.php', 'Liên kết hữu ích', '', 'primary', '[LEFT]', 0, '1', '6', 1, 3, 'a:1:{s:11:"htmlcontent";s:63:"<a href="http://vnexpress.net/">Báo điện tử VnExpress</a>";}'),
(52, 'giaothanh', 'banners', 'global.banners.php', 'global banners', '', 'no_title', '[RIGHT]', 0, '1', '6', 1, 4, 'a:1:{s:12:"idplanbanner";i:3;}');

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_blocks_weight`
--

CREATE TABLE IF NOT EXISTS `gt_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `func_id` mediumint(8) NOT NULL DEFAULT '0',
  `weight` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_blocks_weight`
--

INSERT INTO `gt_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(13, 1, 1),
(13, 36, 1),
(13, 37, 1),
(13, 38, 1),
(13, 39, 1),
(13, 45, 1),
(13, 46, 1),
(13, 47, 1),
(13, 48, 1),
(13, 55, 1),
(13, 58, 1),
(13, 4, 1),
(13, 5, 1),
(13, 6, 1),
(13, 7, 1),
(13, 8, 1),
(13, 9, 1),
(13, 10, 1),
(13, 11, 1),
(13, 12, 1),
(13, 49, 1),
(13, 57, 1),
(13, 52, 1),
(13, 53, 1),
(13, 29, 1),
(13, 30, 1),
(13, 31, 1),
(13, 32, 1),
(13, 33, 1),
(13, 34, 1),
(13, 35, 1),
(13, 18, 1),
(13, 19, 1),
(13, 20, 1),
(13, 21, 1),
(13, 22, 1),
(13, 23, 1),
(13, 24, 1),
(13, 25, 1),
(13, 26, 1),
(13, 27, 1),
(13, 56, 1),
(15, 1, 1),
(15, 36, 1),
(15, 37, 1),
(15, 38, 1),
(15, 39, 1),
(15, 45, 1),
(15, 46, 1),
(15, 47, 1),
(15, 48, 1),
(15, 55, 1),
(15, 58, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 11, 1),
(15, 12, 1),
(15, 49, 1),
(15, 57, 1),
(15, 52, 1),
(15, 53, 1),
(15, 29, 1),
(15, 30, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(15, 35, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 56, 1),
(18, 1, 1),
(18, 36, 1),
(18, 37, 1),
(18, 38, 1),
(18, 39, 1),
(18, 45, 1),
(18, 46, 1),
(18, 47, 1),
(18, 48, 1),
(18, 55, 1),
(18, 58, 1),
(18, 4, 1),
(18, 5, 1),
(18, 6, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 11, 1),
(18, 12, 1),
(18, 49, 1),
(18, 57, 1),
(18, 52, 1),
(18, 53, 1),
(18, 29, 1),
(18, 30, 1),
(18, 31, 1),
(18, 32, 1),
(18, 33, 1),
(18, 34, 1),
(18, 35, 1),
(18, 18, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 56, 1),
(8, 1, 1),
(8, 36, 1),
(8, 37, 1),
(8, 38, 1),
(8, 39, 1),
(8, 45, 1),
(8, 46, 1),
(8, 47, 1),
(8, 48, 1),
(8, 55, 1),
(8, 58, 1),
(8, 4, 1),
(8, 5, 1),
(8, 6, 1),
(8, 7, 1),
(8, 8, 1),
(8, 9, 1),
(8, 10, 1),
(8, 11, 1),
(8, 12, 1),
(8, 49, 1),
(8, 57, 1),
(8, 52, 1),
(8, 53, 1),
(8, 29, 1),
(8, 30, 1),
(8, 31, 1),
(8, 32, 1),
(8, 33, 1),
(8, 34, 1),
(8, 35, 1),
(8, 18, 1),
(8, 19, 1),
(8, 20, 1),
(8, 21, 1),
(8, 22, 1),
(8, 23, 1),
(8, 24, 1),
(8, 25, 1),
(8, 26, 1),
(8, 27, 1),
(8, 56, 1),
(9, 1, 2),
(9, 36, 2),
(9, 37, 2),
(9, 38, 2),
(9, 39, 2),
(9, 45, 2),
(9, 46, 2),
(9, 47, 2),
(9, 48, 2),
(9, 55, 2),
(9, 58, 2),
(9, 4, 2),
(9, 5, 2),
(9, 6, 2),
(9, 7, 2),
(9, 8, 2),
(9, 9, 2),
(9, 10, 2),
(9, 11, 2),
(9, 12, 2),
(9, 49, 2),
(9, 57, 2),
(9, 52, 2),
(9, 53, 2),
(9, 29, 2),
(9, 30, 2),
(9, 31, 2),
(9, 32, 2),
(9, 33, 2),
(9, 34, 2),
(9, 35, 2),
(9, 18, 2),
(9, 19, 2),
(9, 20, 2),
(9, 21, 2),
(9, 22, 2),
(9, 23, 2),
(9, 24, 2),
(9, 25, 2),
(9, 26, 2),
(9, 27, 2),
(9, 56, 2),
(3, 7, 1),
(3, 8, 1),
(3, 4, 1),
(3, 10, 1),
(3, 11, 1),
(3, 6, 1),
(3, 5, 1),
(3, 12, 1),
(3, 9, 1),
(4, 22, 1),
(4, 24, 1),
(4, 19, 1),
(4, 27, 1),
(4, 23, 1),
(4, 21, 1),
(4, 18, 1),
(4, 20, 1),
(4, 25, 1),
(4, 26, 1),
(4, 34, 1),
(4, 32, 1),
(4, 31, 1),
(4, 33, 1),
(4, 30, 1),
(4, 29, 1),
(4, 35, 1),
(5, 1, 1),
(5, 36, 1),
(5, 37, 1),
(5, 38, 1),
(5, 39, 1),
(5, 45, 1),
(5, 46, 1),
(5, 47, 1),
(5, 48, 1),
(5, 55, 1),
(5, 58, 1),
(5, 4, 2),
(5, 5, 2),
(5, 6, 2),
(5, 7, 2),
(5, 8, 2),
(5, 9, 2),
(5, 10, 2),
(5, 11, 2),
(5, 12, 2),
(5, 49, 1),
(5, 57, 1),
(5, 52, 1),
(5, 53, 1),
(5, 29, 2),
(5, 30, 2),
(5, 31, 2),
(5, 32, 2),
(5, 33, 2),
(5, 34, 2),
(5, 35, 2),
(5, 18, 2),
(5, 19, 2),
(5, 20, 2),
(5, 21, 2),
(5, 22, 2),
(5, 23, 2),
(5, 24, 2),
(5, 25, 2),
(5, 26, 2),
(5, 27, 2),
(5, 56, 1),
(17, 1, 1),
(17, 36, 1),
(17, 37, 1),
(17, 38, 1),
(17, 39, 1),
(17, 45, 1),
(17, 46, 1),
(17, 47, 1),
(17, 48, 1),
(17, 55, 1),
(17, 58, 1),
(17, 4, 1),
(17, 5, 1),
(17, 6, 1),
(17, 7, 1),
(17, 8, 1),
(17, 9, 1),
(17, 10, 1),
(17, 11, 1),
(17, 12, 1),
(17, 49, 1),
(17, 57, 1),
(17, 52, 1),
(17, 53, 1),
(17, 29, 1),
(17, 30, 1),
(17, 31, 1),
(17, 32, 1),
(17, 33, 1),
(17, 34, 1),
(17, 35, 1),
(17, 18, 1),
(17, 19, 1),
(17, 20, 1),
(17, 21, 1),
(17, 22, 1),
(17, 23, 1),
(17, 24, 1),
(17, 25, 1),
(17, 26, 1),
(17, 27, 1),
(17, 56, 1),
(14, 1, 1),
(14, 36, 1),
(14, 37, 1),
(14, 38, 1),
(14, 39, 1),
(14, 45, 1),
(14, 46, 1),
(14, 47, 1),
(14, 48, 1),
(14, 55, 1),
(14, 58, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 1),
(14, 7, 1),
(14, 8, 1),
(14, 9, 1),
(14, 10, 1),
(14, 11, 1),
(14, 12, 1),
(14, 49, 1),
(14, 57, 1),
(14, 52, 1),
(14, 53, 1),
(14, 29, 1),
(14, 30, 1),
(14, 31, 1),
(14, 32, 1),
(14, 33, 1),
(14, 34, 1),
(14, 35, 1),
(14, 18, 1),
(14, 19, 1),
(14, 20, 1),
(14, 21, 1),
(14, 22, 1),
(14, 23, 1),
(14, 24, 1),
(14, 25, 1),
(14, 26, 1),
(14, 27, 1),
(14, 56, 1),
(12, 1, 1),
(12, 36, 1),
(12, 37, 1),
(12, 38, 1),
(12, 39, 1),
(12, 45, 1),
(12, 46, 1),
(12, 47, 1),
(12, 48, 1),
(12, 55, 1),
(12, 58, 1),
(12, 4, 1),
(12, 5, 1),
(12, 6, 1),
(12, 7, 1),
(12, 8, 1),
(12, 9, 1),
(12, 10, 1),
(12, 11, 1),
(12, 12, 1),
(12, 49, 1),
(12, 57, 1),
(12, 52, 1),
(12, 53, 1),
(12, 29, 1),
(12, 30, 1),
(12, 31, 1),
(12, 32, 1),
(12, 33, 1),
(12, 34, 1),
(12, 35, 1),
(12, 18, 1),
(12, 19, 1),
(12, 20, 1),
(12, 21, 1),
(12, 22, 1),
(12, 23, 1),
(12, 24, 1),
(12, 25, 1),
(12, 26, 1),
(12, 27, 1),
(12, 56, 1),
(10, 1, 1),
(10, 36, 1),
(10, 37, 1),
(10, 38, 1),
(10, 39, 1),
(10, 45, 1),
(10, 46, 1),
(10, 47, 1),
(10, 48, 1),
(10, 55, 1),
(10, 58, 1),
(10, 4, 1),
(10, 5, 1),
(10, 6, 1),
(10, 7, 1),
(10, 8, 1),
(10, 9, 1),
(10, 10, 1),
(10, 11, 1),
(10, 12, 1),
(10, 49, 1),
(10, 57, 1),
(10, 52, 1),
(10, 53, 1),
(10, 29, 1),
(10, 30, 1),
(10, 31, 1),
(10, 32, 1),
(10, 33, 1),
(10, 34, 1),
(10, 35, 1),
(10, 18, 1),
(10, 19, 1),
(10, 20, 1),
(10, 21, 1),
(10, 22, 1),
(10, 23, 1),
(10, 24, 1),
(10, 25, 1),
(10, 26, 1),
(10, 27, 1),
(10, 56, 1),
(11, 1, 2),
(11, 36, 2),
(11, 37, 2),
(11, 38, 2),
(11, 39, 2),
(11, 45, 2),
(11, 46, 2),
(11, 47, 2),
(11, 48, 2),
(11, 55, 2),
(11, 58, 2),
(11, 4, 2),
(11, 5, 2),
(11, 6, 2),
(11, 7, 2),
(11, 8, 2),
(11, 9, 2),
(11, 10, 2),
(11, 11, 2),
(11, 12, 2),
(11, 49, 2),
(11, 57, 2),
(11, 52, 2),
(11, 53, 2),
(11, 29, 2),
(11, 30, 2),
(11, 31, 2),
(11, 32, 2),
(11, 33, 2),
(11, 34, 2),
(11, 35, 2),
(11, 18, 2),
(11, 19, 2),
(11, 20, 2),
(11, 21, 2),
(11, 22, 2),
(11, 23, 2),
(11, 24, 2),
(11, 25, 2),
(11, 26, 2),
(11, 27, 2),
(11, 56, 2),
(6, 1, 1),
(6, 36, 1),
(6, 37, 1),
(6, 38, 1),
(6, 39, 1),
(6, 45, 1),
(6, 46, 1),
(6, 47, 1),
(6, 48, 1),
(6, 55, 1),
(6, 58, 1),
(6, 4, 1),
(6, 5, 1),
(6, 6, 1),
(6, 7, 1),
(6, 8, 1),
(6, 9, 1),
(6, 10, 1),
(6, 11, 1),
(6, 12, 1),
(6, 49, 1),
(6, 57, 1),
(6, 52, 1),
(6, 53, 1),
(6, 29, 1),
(6, 30, 1),
(6, 31, 1),
(6, 32, 1),
(6, 33, 1),
(6, 34, 1),
(6, 35, 1),
(6, 18, 1),
(6, 19, 1),
(6, 20, 1),
(6, 21, 1),
(6, 22, 1),
(6, 23, 1),
(6, 24, 1),
(6, 25, 1),
(6, 26, 1),
(6, 27, 1),
(6, 56, 1),
(7, 1, 2),
(7, 36, 2),
(7, 37, 2),
(7, 38, 2),
(7, 39, 2),
(7, 45, 2),
(7, 46, 2),
(7, 47, 2),
(7, 48, 2),
(7, 55, 2),
(7, 58, 2),
(7, 4, 2),
(7, 5, 2),
(7, 6, 2),
(7, 7, 2),
(7, 8, 2),
(7, 9, 2),
(7, 10, 2),
(7, 11, 2),
(7, 12, 2),
(7, 49, 2),
(7, 57, 2),
(7, 52, 2),
(7, 53, 2),
(7, 29, 2),
(7, 30, 2),
(7, 31, 2),
(7, 32, 2),
(7, 33, 2),
(7, 34, 2),
(7, 35, 2),
(7, 18, 2),
(7, 19, 2),
(7, 20, 2),
(7, 21, 2),
(7, 22, 2),
(7, 23, 2),
(7, 24, 2),
(7, 25, 2),
(7, 26, 2),
(7, 27, 2),
(7, 56, 2),
(16, 1, 1),
(16, 36, 1),
(16, 37, 1),
(16, 38, 1),
(16, 39, 1),
(16, 45, 1),
(16, 46, 1),
(16, 47, 1),
(16, 48, 1),
(16, 55, 1),
(16, 58, 1),
(16, 4, 1),
(16, 5, 1),
(16, 6, 1),
(16, 7, 1),
(16, 8, 1),
(16, 9, 1),
(16, 10, 1),
(16, 11, 1),
(16, 12, 1),
(16, 49, 1),
(16, 57, 1),
(16, 52, 1),
(16, 53, 1),
(16, 29, 1),
(16, 30, 1),
(16, 31, 1),
(16, 32, 1),
(16, 33, 1),
(16, 34, 1),
(16, 35, 1),
(16, 18, 1),
(16, 19, 1),
(16, 20, 1),
(16, 21, 1),
(16, 22, 1),
(16, 23, 1),
(16, 24, 1),
(16, 25, 1),
(16, 26, 1),
(16, 27, 1),
(16, 56, 1),
(1, 4, 1),
(2, 4, 2),
(27, 1, 1),
(27, 36, 1),
(27, 37, 1),
(27, 38, 1),
(27, 39, 1),
(27, 45, 1),
(27, 46, 1),
(27, 47, 1),
(27, 48, 1),
(27, 55, 1),
(27, 58, 1),
(27, 4, 1),
(27, 5, 1),
(27, 6, 1),
(27, 7, 1),
(27, 8, 1),
(27, 9, 1),
(27, 10, 1),
(27, 11, 1),
(27, 12, 1),
(27, 49, 1),
(27, 57, 1),
(27, 52, 1),
(27, 53, 1),
(27, 29, 1),
(27, 30, 1),
(27, 31, 1),
(27, 32, 1),
(27, 33, 1),
(27, 34, 1),
(27, 35, 1),
(27, 18, 1),
(27, 19, 1),
(27, 20, 1),
(27, 21, 1),
(27, 22, 1),
(27, 23, 1),
(27, 24, 1),
(27, 25, 1),
(27, 26, 1),
(27, 27, 1),
(27, 56, 1),
(25, 1, 1),
(25, 36, 1),
(25, 37, 1),
(25, 38, 1),
(25, 39, 1),
(25, 45, 1),
(25, 46, 1),
(25, 47, 1),
(25, 48, 1),
(25, 55, 1),
(25, 58, 1),
(25, 4, 1),
(25, 5, 1),
(25, 6, 1),
(25, 7, 1),
(25, 8, 1),
(25, 9, 1),
(25, 10, 1),
(25, 11, 1),
(25, 12, 1),
(25, 49, 1),
(25, 57, 1),
(25, 52, 1),
(25, 53, 1),
(25, 29, 1),
(25, 30, 1),
(25, 31, 1),
(25, 32, 1),
(25, 33, 1),
(25, 34, 1),
(25, 35, 1),
(25, 18, 1),
(25, 19, 1),
(25, 20, 1),
(25, 21, 1),
(25, 22, 1),
(25, 23, 1),
(25, 24, 1),
(25, 25, 1),
(25, 26, 1),
(25, 27, 1),
(25, 56, 1),
(26, 1, 1),
(26, 36, 1),
(26, 37, 1),
(26, 38, 1),
(26, 39, 1),
(26, 45, 1),
(26, 46, 1),
(26, 47, 1),
(26, 48, 1),
(26, 55, 1),
(26, 58, 1),
(26, 4, 1),
(26, 5, 1),
(26, 6, 1),
(26, 7, 1),
(26, 8, 1),
(26, 9, 1),
(26, 10, 1),
(26, 11, 1),
(26, 12, 1),
(26, 49, 1),
(26, 57, 1),
(26, 52, 1),
(26, 53, 1),
(26, 29, 1),
(26, 30, 1),
(26, 31, 1),
(26, 32, 1),
(26, 33, 1),
(26, 34, 1),
(26, 35, 1),
(26, 18, 1),
(26, 19, 1),
(26, 20, 1),
(26, 21, 1),
(26, 22, 1),
(26, 23, 1),
(26, 24, 1),
(26, 25, 1),
(26, 26, 1),
(26, 27, 1),
(26, 56, 1),
(19, 1, 1),
(19, 36, 1),
(19, 37, 1),
(19, 38, 1),
(19, 39, 1),
(19, 45, 1),
(19, 46, 1),
(19, 47, 1),
(19, 48, 1),
(19, 55, 1),
(19, 58, 1),
(19, 4, 1),
(19, 5, 1),
(19, 6, 1),
(19, 7, 1),
(19, 8, 1),
(19, 9, 1),
(19, 10, 1),
(19, 11, 1),
(19, 12, 1),
(19, 49, 1),
(19, 57, 1),
(19, 52, 1),
(19, 53, 1),
(19, 29, 1),
(19, 30, 1),
(19, 31, 1),
(19, 32, 1),
(19, 33, 1),
(19, 34, 1),
(19, 35, 1),
(19, 18, 1),
(19, 19, 1),
(19, 20, 1),
(19, 21, 1),
(19, 22, 1),
(19, 23, 1),
(19, 24, 1),
(19, 25, 1),
(19, 26, 1),
(19, 27, 1),
(19, 56, 1),
(20, 1, 2),
(20, 36, 2),
(20, 37, 2),
(20, 38, 2),
(20, 39, 2),
(20, 45, 2),
(20, 46, 2),
(20, 47, 2),
(20, 48, 2),
(20, 55, 2),
(20, 58, 2),
(20, 4, 2),
(20, 5, 2),
(20, 6, 2),
(20, 7, 2),
(20, 8, 2),
(20, 9, 2),
(20, 10, 2),
(20, 11, 2),
(20, 12, 2),
(20, 49, 2),
(20, 57, 2),
(20, 52, 2),
(20, 53, 2),
(20, 29, 2),
(20, 30, 2),
(20, 31, 2),
(20, 32, 2),
(20, 33, 2),
(20, 34, 2),
(20, 35, 2),
(20, 18, 2),
(20, 19, 2),
(20, 20, 2),
(20, 21, 2),
(20, 22, 2),
(20, 23, 2),
(20, 24, 2),
(20, 25, 2),
(20, 26, 2),
(20, 27, 2),
(20, 56, 2),
(21, 1, 1),
(21, 36, 1),
(21, 37, 1),
(21, 38, 1),
(21, 39, 1),
(21, 45, 1),
(21, 46, 1),
(21, 47, 1),
(21, 48, 1),
(21, 55, 1),
(21, 58, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 10, 1),
(21, 11, 1),
(21, 12, 1),
(21, 49, 1),
(21, 57, 1),
(21, 52, 1),
(21, 53, 1),
(21, 29, 1),
(21, 30, 1),
(21, 31, 1),
(21, 32, 1),
(21, 33, 1),
(21, 34, 1),
(21, 35, 1),
(21, 18, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 26, 1),
(21, 27, 1),
(21, 56, 1),
(22, 1, 2),
(22, 36, 2),
(22, 37, 2),
(22, 38, 2),
(22, 39, 2),
(22, 45, 2),
(22, 46, 2),
(22, 47, 2),
(22, 48, 2),
(22, 55, 2),
(22, 58, 2),
(22, 4, 2),
(22, 5, 2),
(22, 6, 2),
(22, 7, 2),
(22, 8, 2),
(22, 9, 2),
(22, 10, 2),
(22, 11, 2),
(22, 12, 2),
(22, 49, 2),
(22, 57, 2),
(22, 52, 2),
(22, 53, 2),
(22, 29, 2),
(22, 30, 2),
(22, 31, 2),
(22, 32, 2),
(22, 33, 2),
(22, 34, 2),
(22, 35, 2),
(22, 18, 2),
(22, 19, 2),
(22, 20, 2),
(22, 21, 2),
(22, 22, 2),
(22, 23, 2),
(22, 24, 2),
(22, 25, 2),
(22, 26, 2),
(22, 27, 2),
(22, 56, 2),
(23, 1, 3),
(23, 36, 3),
(23, 37, 3),
(23, 38, 3),
(23, 39, 3),
(23, 45, 3),
(23, 46, 3),
(23, 47, 3),
(23, 48, 3),
(23, 55, 3),
(23, 58, 3),
(23, 4, 3),
(23, 5, 3),
(23, 6, 3),
(23, 7, 3),
(23, 8, 3),
(23, 9, 3),
(23, 10, 3),
(23, 11, 3),
(23, 12, 3),
(23, 49, 3),
(23, 57, 3),
(23, 52, 3),
(23, 53, 3),
(23, 29, 3),
(23, 30, 3),
(23, 31, 3),
(23, 32, 3),
(23, 33, 3),
(23, 34, 3),
(23, 35, 3),
(23, 18, 3),
(23, 19, 3),
(23, 20, 3),
(23, 21, 3),
(23, 22, 3),
(23, 23, 3),
(23, 24, 3),
(23, 25, 3),
(23, 26, 3),
(23, 27, 3),
(23, 56, 3),
(24, 1, 4),
(24, 36, 4),
(24, 37, 4),
(24, 38, 4),
(24, 39, 4),
(24, 45, 4),
(24, 46, 4),
(24, 47, 4),
(24, 48, 4),
(24, 55, 4),
(24, 58, 4),
(24, 4, 4),
(24, 5, 4),
(24, 6, 4),
(24, 7, 4),
(24, 8, 4),
(24, 9, 4),
(24, 10, 4),
(24, 11, 4),
(24, 12, 4),
(24, 49, 4),
(24, 57, 4),
(24, 52, 4),
(24, 53, 4),
(24, 29, 4),
(24, 30, 4),
(24, 31, 4),
(24, 32, 4),
(24, 33, 4),
(24, 34, 4),
(24, 35, 4),
(24, 18, 4),
(24, 19, 4),
(24, 20, 4),
(24, 21, 4),
(24, 22, 4),
(24, 23, 4),
(24, 24, 4),
(24, 25, 4),
(24, 26, 4),
(24, 27, 4),
(24, 56, 4),
(28, 1, 1),
(28, 36, 1),
(28, 37, 1),
(28, 38, 1),
(28, 39, 1),
(28, 45, 1),
(28, 46, 1),
(28, 47, 1),
(28, 48, 1),
(28, 55, 1),
(28, 58, 1),
(28, 4, 1),
(28, 5, 1),
(28, 6, 1),
(28, 7, 1),
(28, 8, 1),
(28, 9, 1),
(28, 10, 1),
(28, 11, 1),
(28, 12, 1),
(28, 49, 1),
(28, 57, 1),
(28, 52, 1),
(28, 53, 1),
(28, 29, 1),
(28, 30, 1),
(28, 31, 1),
(28, 32, 1),
(28, 33, 1),
(28, 34, 1),
(28, 35, 1),
(28, 18, 1),
(28, 19, 1),
(28, 20, 1),
(28, 21, 1),
(28, 22, 1),
(28, 23, 1),
(28, 24, 1),
(28, 25, 1),
(28, 26, 1),
(28, 27, 1),
(28, 56, 1),
(29, 1, 1),
(29, 36, 1),
(29, 37, 1),
(29, 38, 1),
(29, 39, 1),
(29, 45, 1),
(29, 46, 1),
(29, 47, 1),
(29, 48, 1),
(29, 55, 1),
(29, 58, 1),
(29, 4, 1),
(29, 5, 1),
(29, 6, 1),
(29, 7, 1),
(29, 8, 1),
(29, 9, 1),
(29, 10, 1),
(29, 11, 1),
(29, 12, 1),
(29, 49, 1),
(29, 57, 1),
(29, 52, 1),
(29, 53, 1),
(29, 29, 1),
(29, 30, 1),
(29, 31, 1),
(29, 32, 1),
(29, 33, 1),
(29, 34, 1),
(29, 35, 1),
(29, 18, 1),
(29, 19, 1),
(29, 20, 1),
(29, 21, 1),
(29, 22, 1),
(29, 23, 1),
(29, 24, 1),
(29, 25, 1),
(29, 26, 1),
(29, 27, 1),
(29, 56, 1),
(33, 4, 1),
(33, 5, 1),
(33, 6, 1),
(33, 7, 1),
(33, 8, 1),
(33, 9, 1),
(33, 10, 1),
(33, 11, 1),
(33, 12, 1),
(35, 1, 2),
(35, 36, 1),
(35, 37, 1),
(35, 38, 1),
(35, 39, 1),
(35, 45, 1),
(35, 46, 1),
(35, 47, 1),
(35, 48, 1),
(35, 55, 1),
(35, 58, 1),
(35, 4, 2),
(35, 5, 2),
(35, 6, 2),
(35, 7, 2),
(35, 8, 3),
(35, 9, 2),
(35, 10, 2),
(35, 11, 2),
(35, 12, 2),
(35, 49, 1),
(35, 57, 1),
(35, 52, 1),
(35, 53, 1),
(35, 29, 1),
(35, 30, 1),
(35, 31, 1),
(35, 32, 1),
(35, 33, 1),
(35, 34, 1),
(35, 35, 1),
(35, 18, 1),
(35, 19, 1),
(35, 20, 1),
(35, 21, 1),
(35, 22, 1),
(35, 23, 1),
(35, 24, 1),
(35, 25, 1),
(35, 26, 1),
(35, 27, 1),
(35, 56, 1),
(36, 1, 1),
(36, 36, 1),
(36, 37, 1),
(36, 38, 1),
(36, 39, 1),
(36, 45, 1),
(36, 46, 1),
(36, 47, 1),
(36, 48, 1),
(36, 55, 1),
(36, 58, 1),
(36, 4, 1),
(36, 5, 1),
(36, 6, 1),
(36, 7, 1),
(36, 8, 1),
(36, 9, 1),
(36, 10, 1),
(36, 11, 1),
(36, 12, 1),
(36, 49, 1),
(36, 57, 1),
(36, 52, 1),
(36, 53, 1),
(36, 29, 1),
(36, 30, 1),
(36, 31, 1),
(36, 32, 1),
(36, 33, 1),
(36, 34, 1),
(36, 35, 1),
(36, 18, 1),
(36, 19, 1),
(36, 20, 1),
(36, 21, 1),
(36, 22, 1),
(36, 23, 1),
(36, 24, 1),
(36, 25, 1),
(36, 26, 1),
(36, 27, 1),
(36, 56, 1),
(38, 1, 1),
(38, 36, 1),
(38, 37, 1),
(38, 38, 1),
(38, 39, 1),
(38, 45, 1),
(38, 46, 1),
(38, 47, 1),
(38, 48, 1),
(38, 55, 1),
(38, 58, 1),
(38, 4, 1),
(38, 5, 1),
(38, 6, 1),
(38, 7, 1),
(38, 8, 1),
(38, 9, 1),
(38, 10, 1),
(38, 11, 1),
(38, 12, 1),
(38, 49, 1),
(38, 57, 1),
(38, 52, 1),
(38, 53, 1),
(38, 29, 1),
(38, 30, 1),
(38, 31, 1),
(38, 32, 1),
(38, 33, 1),
(38, 34, 1),
(38, 35, 1),
(38, 18, 1),
(38, 19, 1),
(38, 20, 1),
(38, 21, 1),
(38, 22, 1),
(38, 23, 1),
(38, 24, 1),
(38, 25, 1),
(38, 26, 1),
(38, 27, 1),
(38, 56, 1),
(40, 1, 4),
(40, 36, 4),
(40, 37, 4),
(40, 38, 4),
(40, 39, 4),
(40, 45, 4),
(40, 46, 4),
(40, 47, 4),
(40, 48, 4),
(40, 55, 4),
(40, 58, 4),
(40, 4, 4),
(40, 5, 4),
(40, 6, 4),
(40, 7, 4),
(40, 8, 4),
(40, 9, 4),
(40, 10, 4),
(40, 11, 4),
(40, 12, 4),
(40, 49, 4),
(40, 57, 4),
(40, 52, 4),
(40, 53, 4),
(40, 29, 4),
(40, 30, 4),
(40, 31, 4),
(40, 32, 4),
(40, 33, 4),
(40, 34, 4),
(40, 35, 4),
(40, 18, 4),
(40, 19, 4),
(40, 20, 4),
(40, 21, 4),
(40, 22, 4),
(40, 23, 4),
(40, 24, 4),
(40, 25, 4),
(40, 26, 4),
(40, 27, 4),
(40, 56, 4),
(43, 1, 1),
(43, 36, 1),
(43, 37, 1),
(43, 38, 1),
(43, 39, 1),
(43, 45, 1),
(43, 46, 1),
(43, 47, 1),
(43, 48, 1),
(43, 55, 1),
(43, 58, 1),
(43, 4, 1),
(43, 5, 1),
(43, 6, 1),
(43, 7, 1),
(43, 8, 1),
(43, 9, 1),
(43, 10, 1),
(43, 11, 1),
(43, 12, 1),
(43, 49, 1),
(43, 57, 1),
(43, 52, 1),
(43, 53, 1),
(43, 29, 1),
(43, 30, 1),
(43, 31, 1),
(43, 32, 1),
(43, 33, 1),
(43, 34, 1),
(43, 35, 1),
(43, 18, 1),
(43, 19, 1),
(43, 20, 1),
(43, 21, 1),
(43, 22, 1),
(43, 23, 1),
(43, 24, 1),
(43, 25, 1),
(43, 26, 1),
(43, 27, 1),
(43, 56, 1),
(44, 4, 1),
(33, 1, 1),
(33, 18, 2),
(33, 19, 2),
(33, 20, 2),
(33, 21, 2),
(33, 22, 2),
(33, 23, 2),
(33, 24, 2),
(33, 25, 2),
(33, 26, 2),
(33, 27, 2),
(33, 55, 2),
(33, 29, 2),
(33, 30, 2),
(33, 31, 2),
(33, 32, 2),
(33, 33, 2),
(33, 34, 2),
(33, 35, 2),
(33, 56, 2),
(33, 36, 2),
(33, 37, 2),
(33, 38, 2),
(33, 39, 2),
(33, 57, 2),
(33, 58, 2),
(33, 49, 2),
(33, 45, 2),
(33, 46, 2),
(33, 47, 2),
(33, 48, 2),
(33, 52, 2),
(33, 53, 2),
(13, 59, 1),
(13, 60, 1),
(15, 59, 1),
(15, 60, 1),
(18, 59, 1),
(18, 60, 1),
(8, 59, 1),
(8, 60, 1),
(9, 59, 2),
(9, 60, 2),
(5, 59, 1),
(5, 60, 1),
(17, 59, 1),
(17, 60, 1),
(14, 59, 1),
(14, 60, 1),
(12, 59, 1),
(12, 60, 1),
(10, 59, 1),
(10, 60, 1),
(11, 59, 2),
(11, 60, 2),
(6, 59, 1),
(6, 60, 1),
(7, 59, 2),
(7, 60, 2),
(16, 59, 1),
(16, 60, 1),
(28, 59, 1),
(28, 60, 1),
(29, 59, 1),
(29, 60, 1),
(35, 59, 1),
(35, 60, 1),
(36, 59, 1),
(36, 60, 1),
(38, 59, 1),
(38, 60, 1),
(40, 59, 4),
(40, 60, 4),
(43, 59, 1),
(43, 60, 1),
(27, 59, 1),
(27, 60, 1),
(25, 59, 1),
(25, 60, 1),
(26, 59, 1),
(26, 60, 1),
(19, 59, 1),
(19, 60, 1),
(20, 59, 2),
(20, 60, 2),
(21, 59, 1),
(21, 60, 1),
(22, 59, 2),
(22, 60, 2),
(23, 59, 3),
(23, 60, 3),
(24, 59, 4),
(24, 60, 4),
(46, 1, 1),
(46, 4, 2),
(46, 5, 1),
(46, 6, 1),
(46, 7, 1),
(46, 8, 1),
(46, 9, 1),
(46, 10, 1),
(46, 11, 1),
(46, 12, 1),
(46, 18, 1),
(46, 19, 1),
(46, 20, 1),
(46, 21, 1),
(46, 22, 1),
(46, 23, 1),
(46, 24, 1),
(46, 25, 1),
(46, 26, 1),
(46, 27, 1),
(46, 55, 1),
(46, 29, 1),
(46, 30, 1),
(46, 31, 1),
(46, 32, 1),
(46, 33, 1),
(46, 34, 1),
(46, 35, 1),
(46, 56, 1),
(46, 36, 1),
(46, 37, 1),
(46, 38, 1),
(46, 39, 1),
(46, 57, 1),
(46, 58, 1),
(46, 49, 1),
(46, 45, 1),
(46, 46, 1),
(46, 47, 1),
(46, 48, 1),
(46, 52, 1),
(46, 53, 1),
(46, 59, 1),
(46, 60, 1),
(33, 59, 2),
(33, 60, 2),
(13, 62, 1),
(13, 63, 1),
(15, 62, 1),
(15, 63, 1),
(18, 62, 1),
(18, 63, 1),
(8, 62, 1),
(8, 63, 1),
(9, 62, 2),
(9, 63, 2),
(5, 62, 1),
(5, 63, 1),
(17, 62, 1),
(17, 63, 1),
(14, 62, 1),
(14, 63, 1),
(12, 62, 1),
(12, 63, 1),
(10, 62, 1),
(10, 63, 1),
(11, 62, 2),
(11, 63, 2),
(6, 62, 1),
(6, 63, 1),
(7, 62, 2),
(7, 63, 2),
(16, 62, 1),
(16, 63, 1),
(28, 62, 1),
(28, 63, 1),
(29, 62, 1),
(29, 63, 1),
(33, 62, 1),
(33, 63, 1),
(35, 62, 2),
(35, 63, 2),
(36, 62, 1),
(36, 63, 1),
(38, 62, 1),
(38, 63, 1),
(40, 62, 4),
(40, 63, 4),
(46, 62, 1),
(46, 63, 1),
(43, 62, 1),
(43, 63, 1),
(27, 62, 1),
(27, 63, 1),
(25, 62, 1),
(25, 63, 1),
(26, 62, 1),
(26, 63, 1),
(19, 62, 1),
(19, 63, 1),
(20, 62, 2),
(20, 63, 2),
(21, 62, 1),
(21, 63, 1),
(22, 62, 2),
(22, 63, 2),
(23, 62, 3),
(23, 63, 3),
(24, 62, 4),
(24, 63, 4),
(47, 1, 2),
(47, 4, 1),
(47, 5, 2),
(47, 6, 2),
(47, 7, 2),
(47, 8, 2),
(47, 9, 2),
(47, 10, 2),
(47, 11, 2),
(47, 12, 2),
(47, 18, 2),
(47, 19, 2),
(47, 20, 2),
(47, 21, 2),
(47, 22, 2),
(47, 23, 2),
(47, 24, 2),
(47, 25, 2),
(47, 26, 2),
(47, 27, 2),
(47, 55, 2),
(47, 29, 2),
(47, 30, 2),
(47, 31, 2),
(47, 32, 2),
(47, 33, 2),
(47, 34, 2),
(47, 35, 2),
(47, 56, 2),
(47, 36, 2),
(47, 37, 2),
(47, 38, 2),
(47, 39, 2),
(47, 57, 2),
(47, 58, 2),
(47, 49, 2),
(47, 45, 2),
(47, 46, 2),
(47, 47, 2),
(47, 48, 2),
(47, 52, 2),
(47, 53, 2),
(47, 59, 2),
(47, 60, 2),
(47, 62, 2),
(47, 63, 2),
(48, 63, 3),
(48, 4, 3),
(48, 5, 3),
(48, 6, 3),
(48, 7, 3),
(48, 8, 3),
(48, 9, 3),
(48, 10, 3),
(48, 11, 3),
(48, 12, 3),
(48, 62, 3),
(48, 60, 3),
(48, 59, 3),
(48, 53, 3),
(48, 52, 3),
(48, 48, 3),
(48, 47, 3),
(48, 46, 3),
(48, 45, 3),
(48, 49, 3),
(48, 24, 3),
(48, 58, 3),
(48, 57, 3),
(48, 39, 3),
(48, 38, 3),
(48, 37, 3),
(48, 36, 3),
(48, 56, 3),
(48, 23, 3),
(48, 35, 3),
(48, 34, 3),
(48, 33, 3),
(48, 32, 3),
(48, 22, 3),
(48, 21, 3),
(48, 27, 3),
(48, 31, 3),
(48, 30, 3),
(48, 29, 3),
(48, 55, 3),
(48, 26, 3),
(48, 25, 3),
(48, 20, 3),
(48, 19, 3),
(48, 18, 3),
(48, 1, 3),
(49, 4, 1),
(49, 5, 1),
(49, 6, 1),
(49, 7, 1),
(49, 8, 1),
(49, 9, 1),
(49, 10, 1),
(49, 11, 1),
(49, 12, 1),
(50, 1, 3),
(50, 4, 3),
(50, 5, 3),
(50, 6, 3),
(50, 7, 3),
(50, 8, 2),
(50, 9, 3),
(50, 10, 3),
(50, 11, 3),
(50, 12, 3),
(50, 18, 3),
(50, 19, 3),
(50, 20, 3),
(50, 21, 3),
(50, 22, 3),
(50, 23, 3),
(50, 24, 3),
(50, 25, 3),
(50, 26, 3),
(50, 27, 3),
(50, 55, 3),
(50, 29, 3),
(50, 30, 3),
(50, 31, 3),
(50, 32, 3),
(50, 33, 3),
(50, 34, 3),
(50, 35, 3),
(50, 56, 3),
(50, 36, 3),
(50, 37, 3),
(50, 38, 3),
(50, 39, 3),
(50, 57, 3),
(50, 58, 3),
(50, 49, 3),
(50, 45, 3),
(50, 46, 3),
(50, 47, 3),
(50, 48, 3),
(50, 52, 3),
(50, 53, 3),
(50, 59, 3),
(50, 60, 3),
(50, 62, 3),
(50, 63, 3),
(52, 1, 4),
(52, 4, 4),
(52, 5, 4),
(52, 6, 4),
(52, 7, 4),
(52, 8, 4),
(52, 9, 4),
(52, 10, 4),
(52, 11, 4),
(52, 12, 4),
(52, 18, 4),
(52, 19, 4),
(52, 20, 4),
(52, 21, 4),
(52, 22, 4),
(52, 23, 4),
(52, 24, 4),
(52, 25, 4),
(52, 26, 4),
(52, 27, 4),
(52, 55, 4),
(52, 29, 4),
(52, 30, 4),
(52, 31, 4),
(52, 32, 4),
(52, 33, 4),
(52, 34, 4),
(52, 35, 4),
(52, 56, 4),
(52, 36, 4),
(52, 37, 4),
(52, 38, 4),
(52, 39, 4),
(52, 57, 4),
(52, 58, 4),
(52, 49, 4),
(52, 45, 4),
(52, 46, 4),
(52, 47, 4),
(52, 48, 4),
(52, 52, 4),
(52, 53, 4),
(52, 59, 4),
(52, 60, 4),
(52, 62, 4),
(52, 63, 4),
(13, 68, 1),
(13, 78, 1),
(13, 77, 1),
(13, 67, 1),
(13, 66, 1),
(13, 73, 1),
(13, 65, 1),
(13, 76, 1),
(13, 71, 1),
(15, 68, 1),
(15, 78, 1),
(15, 77, 1),
(15, 67, 1),
(15, 66, 1),
(15, 73, 1),
(15, 65, 1),
(15, 76, 1),
(15, 71, 1),
(18, 68, 1),
(18, 78, 1),
(18, 77, 1),
(18, 67, 1),
(18, 66, 1),
(18, 73, 1),
(18, 65, 1),
(18, 76, 1),
(18, 71, 1),
(8, 68, 1),
(8, 78, 1),
(8, 77, 1),
(8, 67, 1),
(8, 66, 1),
(8, 73, 1),
(8, 65, 1),
(8, 76, 1),
(8, 71, 1),
(9, 68, 2),
(9, 78, 2),
(9, 77, 2),
(9, 67, 2),
(9, 66, 2),
(9, 73, 2),
(9, 65, 2),
(9, 76, 2),
(9, 71, 2),
(5, 68, 1),
(5, 78, 1),
(5, 77, 1),
(5, 67, 1),
(5, 66, 1),
(5, 73, 1),
(5, 65, 1),
(5, 76, 1),
(5, 71, 1),
(17, 68, 1),
(17, 78, 1),
(17, 77, 1),
(17, 67, 1),
(17, 66, 1),
(17, 73, 1),
(17, 65, 1),
(17, 76, 1),
(17, 71, 1),
(14, 68, 1),
(14, 78, 1),
(14, 77, 1),
(14, 67, 1),
(14, 66, 1),
(14, 73, 1),
(14, 65, 1),
(14, 76, 1),
(14, 71, 1),
(12, 68, 1),
(12, 78, 1),
(12, 77, 1),
(12, 67, 1),
(12, 66, 1),
(12, 73, 1),
(12, 65, 1),
(12, 76, 1),
(12, 71, 1),
(10, 68, 1),
(10, 78, 1),
(10, 77, 1),
(10, 67, 1),
(10, 66, 1),
(10, 73, 1),
(10, 65, 1),
(10, 76, 1),
(10, 71, 1),
(11, 68, 2),
(11, 78, 2),
(11, 77, 2),
(11, 67, 2),
(11, 66, 2),
(11, 73, 2),
(11, 65, 2),
(11, 76, 2),
(11, 71, 2),
(6, 68, 1),
(6, 78, 1),
(6, 77, 1),
(6, 67, 1),
(6, 66, 1),
(6, 73, 1),
(6, 65, 1),
(6, 76, 1),
(6, 71, 1),
(7, 68, 2),
(7, 78, 2),
(7, 77, 2),
(7, 67, 2),
(7, 66, 2),
(7, 73, 2),
(7, 65, 2),
(7, 76, 2),
(7, 71, 2),
(16, 68, 1),
(16, 78, 1),
(16, 77, 1),
(16, 67, 1),
(16, 66, 1),
(16, 73, 1),
(16, 65, 1),
(16, 76, 1),
(16, 71, 1),
(29, 68, 1),
(29, 78, 1),
(29, 77, 1),
(29, 67, 1),
(29, 66, 1),
(29, 73, 1),
(29, 65, 1),
(29, 76, 1),
(29, 71, 1),
(28, 68, 1),
(28, 78, 1),
(28, 77, 1),
(28, 67, 1),
(28, 66, 1),
(28, 73, 1),
(28, 65, 1),
(28, 76, 1),
(28, 71, 1),
(33, 68, 1),
(33, 78, 1),
(33, 77, 1),
(33, 67, 1),
(33, 66, 1),
(33, 73, 1),
(33, 65, 1),
(33, 76, 1),
(33, 71, 1),
(35, 68, 2),
(35, 78, 2),
(35, 77, 2),
(35, 67, 2),
(35, 66, 2),
(35, 73, 2),
(35, 65, 2),
(35, 76, 2),
(35, 71, 2),
(50, 68, 3),
(50, 78, 3),
(50, 77, 3),
(50, 67, 3),
(50, 66, 3),
(50, 73, 3),
(50, 65, 3),
(50, 76, 3),
(50, 71, 3),
(40, 68, 4),
(40, 78, 4),
(40, 77, 4),
(40, 67, 4),
(40, 66, 4),
(40, 73, 4),
(40, 65, 4),
(40, 76, 4),
(40, 71, 4),
(36, 68, 1),
(36, 78, 1),
(36, 77, 1),
(36, 67, 1),
(36, 66, 1),
(36, 73, 1),
(36, 65, 1),
(36, 76, 1),
(36, 71, 1),
(38, 68, 1),
(38, 78, 1),
(38, 77, 1),
(38, 67, 1),
(38, 66, 1),
(38, 73, 1),
(38, 65, 1),
(38, 76, 1),
(38, 71, 1),
(47, 68, 1),
(47, 78, 1),
(47, 77, 1),
(47, 67, 1),
(47, 66, 1),
(47, 73, 1),
(47, 65, 1),
(47, 76, 1),
(47, 71, 1),
(46, 68, 2),
(46, 78, 2),
(46, 77, 2),
(46, 67, 2),
(46, 66, 2),
(46, 73, 2),
(46, 65, 2),
(46, 76, 2),
(46, 71, 2),
(48, 68, 3),
(48, 78, 3),
(48, 77, 3),
(48, 67, 3),
(48, 66, 3),
(48, 73, 3),
(48, 65, 3),
(48, 76, 3),
(48, 71, 3),
(52, 68, 4),
(52, 78, 4),
(52, 77, 4),
(52, 67, 4),
(52, 66, 4),
(52, 73, 4),
(52, 65, 4),
(52, 76, 4),
(52, 71, 4),
(43, 68, 1),
(43, 78, 1),
(43, 77, 1),
(43, 67, 1),
(43, 66, 1),
(43, 73, 1),
(43, 65, 1),
(43, 76, 1),
(43, 71, 1),
(27, 68, 1),
(27, 78, 1),
(27, 77, 1),
(27, 67, 1),
(27, 66, 1),
(27, 73, 1),
(27, 65, 1),
(27, 76, 1),
(27, 71, 1),
(25, 68, 1),
(25, 78, 1),
(25, 77, 1),
(25, 67, 1),
(25, 66, 1),
(25, 73, 1),
(25, 65, 1),
(25, 76, 1),
(25, 71, 1),
(26, 68, 1),
(26, 78, 1),
(26, 77, 1),
(26, 67, 1),
(26, 66, 1),
(26, 73, 1),
(26, 65, 1),
(26, 76, 1),
(26, 71, 1),
(19, 68, 1),
(19, 78, 1),
(19, 77, 1),
(19, 67, 1),
(19, 66, 1),
(19, 73, 1),
(19, 65, 1),
(19, 76, 1),
(19, 71, 1),
(20, 68, 2),
(20, 78, 2),
(20, 77, 2),
(20, 67, 2),
(20, 66, 2),
(20, 73, 2),
(20, 65, 2),
(20, 76, 2),
(20, 71, 2),
(21, 68, 1),
(21, 78, 1),
(21, 77, 1),
(21, 67, 1),
(21, 66, 1),
(21, 73, 1),
(21, 65, 1),
(21, 76, 1),
(21, 71, 1),
(22, 68, 2),
(22, 78, 2),
(22, 77, 2),
(22, 67, 2),
(22, 66, 2),
(22, 73, 2),
(22, 65, 2),
(22, 76, 2),
(22, 71, 2),
(23, 68, 3),
(23, 78, 3),
(23, 77, 3),
(23, 67, 3),
(23, 66, 3),
(23, 73, 3),
(23, 65, 3),
(23, 76, 3),
(23, 71, 3),
(24, 68, 4),
(24, 78, 4),
(24, 77, 4),
(24, 67, 4),
(24, 66, 4),
(24, 73, 4),
(24, 65, 4),
(24, 76, 4),
(24, 71, 4),
(13, 82, 1),
(13, 92, 1),
(13, 91, 1),
(13, 81, 1),
(13, 80, 1),
(13, 87, 1),
(13, 79, 1),
(13, 90, 1),
(13, 85, 1),
(15, 82, 1),
(15, 92, 1),
(15, 91, 1),
(15, 81, 1),
(15, 80, 1),
(15, 87, 1),
(15, 79, 1),
(15, 90, 1),
(15, 85, 1),
(18, 82, 1),
(18, 92, 1),
(18, 91, 1),
(18, 81, 1),
(18, 80, 1),
(18, 87, 1),
(18, 79, 1),
(18, 90, 1),
(18, 85, 1),
(8, 82, 1),
(8, 92, 1),
(8, 91, 1),
(8, 81, 1),
(8, 80, 1),
(8, 87, 1),
(8, 79, 1),
(8, 90, 1),
(8, 85, 1),
(9, 82, 2),
(9, 92, 2),
(9, 91, 2),
(9, 81, 2),
(9, 80, 2),
(9, 87, 2),
(9, 79, 2),
(9, 90, 2),
(9, 85, 2),
(5, 82, 1),
(5, 92, 1),
(5, 91, 1),
(5, 81, 1),
(5, 80, 1),
(5, 87, 1),
(5, 79, 1),
(5, 90, 1),
(5, 85, 1),
(17, 82, 1),
(17, 92, 1),
(17, 91, 1),
(17, 81, 1),
(17, 80, 1),
(17, 87, 1),
(17, 79, 1),
(17, 90, 1),
(17, 85, 1),
(14, 82, 1),
(14, 92, 1),
(14, 91, 1),
(14, 81, 1),
(14, 80, 1),
(14, 87, 1),
(14, 79, 1),
(14, 90, 1),
(14, 85, 1),
(12, 82, 1),
(12, 92, 1),
(12, 91, 1),
(12, 81, 1),
(12, 80, 1),
(12, 87, 1),
(12, 79, 1),
(12, 90, 1),
(12, 85, 1),
(10, 82, 1),
(10, 92, 1),
(10, 91, 1),
(10, 81, 1),
(10, 80, 1),
(10, 87, 1),
(10, 79, 1),
(10, 90, 1),
(10, 85, 1),
(11, 82, 2),
(11, 92, 2),
(11, 91, 2),
(11, 81, 2),
(11, 80, 2),
(11, 87, 2),
(11, 79, 2),
(11, 90, 2),
(11, 85, 2),
(6, 82, 1),
(6, 92, 1),
(6, 91, 1),
(6, 81, 1),
(6, 80, 1),
(6, 87, 1),
(6, 79, 1),
(6, 90, 1),
(6, 85, 1),
(7, 82, 2),
(7, 92, 2),
(7, 91, 2),
(7, 81, 2),
(7, 80, 2),
(7, 87, 2),
(7, 79, 2),
(7, 90, 2),
(7, 85, 2),
(16, 82, 1),
(16, 92, 1),
(16, 91, 1),
(16, 81, 1),
(16, 80, 1),
(16, 87, 1),
(16, 79, 1),
(16, 90, 1),
(16, 85, 1),
(29, 82, 1),
(29, 92, 1),
(29, 91, 1),
(29, 81, 1),
(29, 80, 1),
(29, 87, 1),
(29, 79, 1),
(29, 90, 1),
(29, 85, 1),
(28, 82, 1),
(28, 92, 1),
(28, 91, 1),
(28, 81, 1),
(28, 80, 1),
(28, 87, 1),
(28, 79, 1),
(28, 90, 1),
(28, 85, 1),
(33, 82, 1),
(33, 92, 1),
(33, 91, 1),
(33, 81, 1),
(33, 80, 1),
(33, 87, 1),
(33, 79, 1),
(33, 90, 1),
(33, 85, 1),
(35, 82, 2),
(35, 92, 2),
(35, 91, 2),
(35, 81, 2),
(35, 80, 2),
(35, 87, 2),
(35, 79, 2),
(35, 90, 2),
(35, 85, 2),
(50, 82, 3),
(50, 92, 3),
(50, 91, 3),
(50, 81, 3),
(50, 80, 3),
(50, 87, 3),
(50, 79, 3),
(50, 90, 3),
(50, 85, 3),
(40, 82, 4),
(40, 92, 4),
(40, 91, 4),
(40, 81, 4),
(40, 80, 4),
(40, 87, 4),
(40, 79, 4),
(40, 90, 4),
(40, 85, 4),
(36, 82, 1),
(36, 92, 1),
(36, 91, 1),
(36, 81, 1),
(36, 80, 1),
(36, 87, 1),
(36, 79, 1),
(36, 90, 1),
(36, 85, 1),
(38, 82, 1),
(38, 92, 1),
(38, 91, 1),
(38, 81, 1),
(38, 80, 1),
(38, 87, 1),
(38, 79, 1),
(38, 90, 1),
(38, 85, 1),
(47, 82, 1),
(47, 92, 1),
(47, 91, 1),
(47, 81, 1),
(47, 80, 1),
(47, 87, 1),
(47, 79, 1),
(47, 90, 1),
(47, 85, 1),
(46, 82, 2),
(46, 92, 2),
(46, 91, 2),
(46, 81, 2),
(46, 80, 2),
(46, 87, 2),
(46, 79, 2),
(46, 90, 2),
(46, 85, 2),
(48, 82, 3),
(48, 92, 3),
(48, 91, 3),
(48, 81, 3),
(48, 80, 3),
(48, 87, 3),
(48, 79, 3),
(48, 90, 3),
(48, 85, 3),
(52, 82, 4),
(52, 92, 4),
(52, 91, 4),
(52, 81, 4),
(52, 80, 4),
(52, 87, 4),
(52, 79, 4),
(52, 90, 4),
(52, 85, 4),
(43, 82, 1),
(43, 92, 1),
(43, 91, 1),
(43, 81, 1),
(43, 80, 1),
(43, 87, 1),
(43, 79, 1),
(43, 90, 1),
(43, 85, 1),
(27, 82, 1),
(27, 92, 1),
(27, 91, 1),
(27, 81, 1),
(27, 80, 1),
(27, 87, 1),
(27, 79, 1),
(27, 90, 1),
(27, 85, 1),
(25, 82, 1),
(25, 92, 1),
(25, 91, 1),
(25, 81, 1),
(25, 80, 1),
(25, 87, 1),
(25, 79, 1),
(25, 90, 1),
(25, 85, 1),
(26, 82, 1),
(26, 92, 1),
(26, 91, 1),
(26, 81, 1),
(26, 80, 1),
(26, 87, 1),
(26, 79, 1),
(26, 90, 1),
(26, 85, 1),
(19, 82, 1),
(19, 92, 1),
(19, 91, 1),
(19, 81, 1),
(19, 80, 1),
(19, 87, 1),
(19, 79, 1),
(19, 90, 1),
(19, 85, 1),
(20, 82, 2),
(20, 92, 2),
(20, 91, 2),
(20, 81, 2),
(20, 80, 2),
(20, 87, 2),
(20, 79, 2),
(20, 90, 2),
(20, 85, 2),
(21, 82, 1),
(21, 92, 1),
(21, 91, 1),
(21, 81, 1),
(21, 80, 1),
(21, 87, 1),
(21, 79, 1),
(21, 90, 1),
(21, 85, 1),
(22, 82, 2),
(22, 92, 2),
(22, 91, 2),
(22, 81, 2),
(22, 80, 2),
(22, 87, 2),
(22, 79, 2),
(22, 90, 2),
(22, 85, 2),
(23, 82, 3),
(23, 92, 3),
(23, 91, 3),
(23, 81, 3),
(23, 80, 3),
(23, 87, 3),
(23, 79, 3),
(23, 90, 3),
(23, 85, 3),
(24, 82, 4),
(24, 92, 4),
(24, 91, 4),
(24, 81, 4),
(24, 80, 4),
(24, 87, 4),
(24, 79, 4),
(24, 90, 4),
(24, 85, 4);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_comment`
--

CREATE TABLE IF NOT EXISTS `gt_vi_comment` (
  `cid` mediumint(8) unsigned NOT NULL,
  `module` varchar(55) NOT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_name` varchar(100) NOT NULL,
  `post_email` varchar(100) NOT NULL,
  `post_ip` varchar(15) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_contact_department`
--

CREATE TABLE IF NOT EXISTS `gt_vi_contact_department` (
  `id` smallint(5) unsigned NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `others` text NOT NULL,
  `cats` text NOT NULL,
  `admins` text NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_contact_department`
--

INSERT INTO `gt_vi_contact_department` (`id`, `full_name`, `alias`, `phone`, `fax`, `email`, `note`, `others`, `cats`, `admins`, `act`, `weight`, `is_default`) VALUES
(1, 'Phòng Chăm sóc khách hàng', 'Cham-soc-khach-hang', '(08) 38.000.000[+84838000000]', '08 38.000.001', 'customer@mysite.com', 'Bộ phận tiếp nhận và giải quyết các yêu cầu, đề nghị, ý kiến liên quan đến hoạt động chính của doanh nghiệp', '{"viber":"myViber","skype":"mySkype","yahoo":"myYahoo"}', 'Tư vấn|Khiếu nại, phản ánh|Đề nghị hợp tác', '1/1/1/0;', 1, 1, 1),
(2, 'Phòng Kỹ thuật', 'Ky-thuat', '(08) 38.000.002[+84838000002]', '08 38.000.003', 'technical@mysite.com', 'Bộ phận tiếp nhận và giải quyết các câu hỏi liên quan đến kỹ thuật', '{"viber":"myViber2","skype":"mySkype2","yahoo":"myYahoo2"}', 'Thông báo lỗi|Góp ý cải tiến', '1/1/1/0;', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_contact_reply`
--

CREATE TABLE IF NOT EXISTS `gt_vi_contact_reply` (
  `rid` mediumint(8) unsigned NOT NULL,
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reply_content` text,
  `reply_time` int(11) unsigned NOT NULL DEFAULT '0',
  `reply_aid` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_contact_send`
--

CREATE TABLE IF NOT EXISTS `gt_vi_contact_send` (
  `id` mediumint(8) unsigned NOT NULL,
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cat` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `send_time` int(11) unsigned NOT NULL DEFAULT '0',
  `sender_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sender_name` varchar(100) NOT NULL,
  `sender_email` varchar(100) NOT NULL,
  `sender_phone` varchar(20) DEFAULT '',
  `sender_ip` varchar(15) NOT NULL,
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_freecontent_blocks`
--

CREATE TABLE IF NOT EXISTS `gt_vi_freecontent_blocks` (
  `bid` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_freecontent_blocks`
--

INSERT INTO `gt_vi_freecontent_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Sản phẩm', 'Sản phẩm của công ty cổ phần phát triển nguồn mở Việt Nam - VINADES.,JSC');

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_freecontent_rows`
--

CREATE TABLE IF NOT EXISTS `gt_vi_freecontent_rows` (
  `id` mediumint(8) unsigned NOT NULL,
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `link` varchar(255) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_freecontent_rows`
--

INSERT INTO `gt_vi_freecontent_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 'Hệ quản trị nội dung NukeViet', '<ul>\n	<li>Giải thưởng Nhân tài đất Việt 2011, 10.000+ website đang sử dụng</li>\n	<li>Được Bộ GD&amp;ĐT khuyến khích sử dụng trong các cơ sở giáo dục</li>\n	<li>Bộ TT&amp;TT quy định ưu tiên sử dụng trong cơ quan nhà nước</li>\n</ul>', 'http://vinades.vn/vi/san-pham/nukeviet/', '_blank', 'nukeviet.jpg', 1448557801, 0, 1),
(2, 1, 'Cổng thông tin doanh nghiệp', '<ul>\n	<li>Tích hợp bán hàng trực tuyến</li>\n	<li>Tích hợp các nghiệp vụ quản lý (quản lý khách hàng, quản lý nhân sự, quản lý tài liệu)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-doanh-nghiep-NukeViet-portal/', '_blank', 'nukeviet-portal.jpg', 1448557801, 0, 1),
(3, 1, 'Cổng thông tin Phòng giáo dục, Sở giáo dục', '<ul>\n	<li>Tích hợp chung website hàng trăm trường</li>\n	<li>Tích hợp các ứng dụng trực tuyến (Tra điểm SMS, Tra cứu văn bằng, Học bạ điện tử ...)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-giao-duc-NukeViet-Edugate/', '_blank', 'nukeviet-edu.jpg', 1448557801, 0, 1),
(4, 1, 'Tòa soạn báo điện tử chuyên nghiệp', '<ul>\n	<li>Bảo mật đa tầng, phân quyền linh hoạt</li>\n	<li>Hệ thống bóc tin tự động, đăng bài tự động, cùng nhiều chức năng tiên tiến khác...</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Toa-soan-bao-dien-tu/', '_blank', 'nukeviet-toasoan.jpg', 1448557801, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_menu`
--

CREATE TABLE IF NOT EXISTS `gt_vi_menu` (
  `id` smallint(5) unsigned NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_menu`
--

INSERT INTO `gt_vi_menu` (`id`, `title`) VALUES
(1, 'Top Menu');

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_menu_rows`
--

CREATE TABLE IF NOT EXISTS `gt_vi_menu_rows` (
  `id` mediumint(5) NOT NULL,
  `parentid` mediumint(5) unsigned NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `icon` varchar(255) DEFAULT '',
  `note` varchar(255) DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  `subitem` text,
  `groups_view` varchar(255) DEFAULT '',
  `module_name` varchar(255) DEFAULT '',
  `op` varchar(255) DEFAULT '',
  `target` tinyint(4) DEFAULT '0',
  `css` varchar(255) DEFAULT '',
  `active_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_menu_rows`
--

INSERT INTO `gt_vi_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `icon`, `note`, `weight`, `sort`, `lev`, `subitem`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(158, 0, 1, 'Chung tay', '/news/index.php?language=vi&nv=news&amp;op=chung-tay', '', '', 8, 39, 0, '', '6', 'news', 'chung-tay', 1, '', 1, 1),
(157, 155, 1, 'Thời khóa biểu', '/news/index.php?language=vi&nv=news&amp;op=thoi-khoa-bieu-1', '', '', 2, 38, 1, '', '6', 'news', 'thoi-khoa-bieu-1', 1, '', 1, 1),
(151, 150, 1, 'Phần mềm', '/news/index.php?language=vi&nv=news&amp;op=phan-mem', '', '', 1, 32, 1, '', '6', 'news', 'phan-mem', 1, '', 1, 1),
(152, 150, 1, 'Kiến thức', '/news/index.php?language=vi&nv=news&amp;op=kien-thuc', '', '', 2, 33, 1, '', '6', 'news', 'kien-thuc', 1, '', 1, 1),
(153, 150, 1, 'Tin tức', '/news/index.php?language=vi&nv=news&amp;op=tin-tuc', '', '', 3, 34, 1, '', '6', 'news', 'tin-tuc', 1, '', 1, 1),
(154, 0, 1, 'Thư viện', '/news/index.php?language=vi&nv=news&amp;op=thu-vien', '', '', 6, 35, 0, '', '6', 'news', 'thu-vien', 1, '', 1, 1),
(155, 0, 1, 'Thời khóa biểu', '/news/index.php?language=vi&nv=news&amp;op=thoi-khoa-bieu', '', '', 7, 36, 0, '156,157', '6', 'news', 'thoi-khoa-bieu', 1, '', 1, 1),
(156, 155, 1, 'Lịch tuần', '/news/index.php?language=vi&nv=news&amp;op=lich-tuan', '', '', 1, 37, 1, '', '6', 'news', 'lich-tuan', 1, '', 1, 1),
(150, 0, 1, 'Tin học', '/news/index.php?language=vi&nv=news&amp;op=tin-hoc', '', '', 5, 31, 0, '151,152,153', '6', 'news', 'tin-hoc', 1, '', 1, 1),
(149, 0, 1, 'Phương pháp học tập', '/news/index.php?language=vi&nv=news&amp;op=phuong-phap-hop-tap', '', '', 4, 30, 0, '', '6', 'news', 'phuong-phap-hop-tap', 1, '', 1, 1),
(148, 145, 1, 'Tin giáo dục', '/news/index.php?language=vi&nv=news&amp;op=tin-giao-duc', '', '', 3, 29, 1, '', '6', 'news', 'tin-giao-duc', 1, '', 1, 1),
(147, 145, 1, 'Thông báo', '/news/index.php?language=vi&nv=news&amp;op=thong-bao', '', '', 2, 28, 1, '', '6', 'news', 'thong-bao', 1, '', 1, 1),
(146, 145, 1, 'Gương mặt tiêu biểu', '/news/index.php?language=vi&nv=news&amp;op=guong-mat-tieu-bieu', '', '', 1, 27, 1, '', '6', 'news', 'guong-mat-tieu-bieu', 1, '', 1, 1),
(145, 0, 1, 'Sự kiện', '/news/index.php?language=vi&nv=news&amp;op=su-kien', '', '', 3, 26, 0, '146,147,148', '6', 'news', 'su-kien', 1, '', 1, 1),
(144, 136, 1, 'Hoạt động khác', '/news/index.php?language=vi&nv=news&amp;op=hoat-dong-khac', '', '', 8, 25, 1, '', '6', 'news', 'hoat-dong-khac', 1, '', 1, 1),
(143, 136, 1, 'Y tế', '/news/index.php?language=vi&nv=news&amp;op=y-te-hoat-dong', '', '', 7, 24, 1, '', '6', 'news', 'y-te-hoat-dong', 1, '', 1, 1),
(142, 136, 1, 'Đoàn &amp; Đội', '/news/index.php?language=vi&nv=news&amp;op=doan-doi', '', '', 6, 23, 1, '', '6', 'news', 'doan-doi', 1, '', 1, 1),
(141, 136, 1, 'Kĩ năng &amp; giá trị sống', '/news/index.php?language=vi&nv=news&amp;op=ki-nang-gia-tri-song', '', '', 5, 22, 1, '', '6', 'news', 'ki-nang-gia-tri-song', 1, '', 1, 1),
(140, 136, 1, 'Văn - Thể - Mỹ', '/news/index.php?language=vi&nv=news&amp;op=van-the-my', '', '', 4, 21, 1, '', '6', 'news', 'van-the-my', 1, '', 1, 1),
(139, 136, 1, 'HĐ của giáo viên', '/news/index.php?language=vi&nv=news&amp;op=hd-cua-giao-vien', '', '', 3, 20, 1, '', '6', 'news', 'hd-cua-giao-vien', 1, '', 1, 1),
(138, 136, 1, 'HĐ của học sinh', '/news/index.php?language=vi&nv=news&amp;op=hd-cua-hoc-sinh', '', '', 2, 19, 1, '', '6', 'news', 'hd-cua-hoc-sinh', 1, '', 1, 1),
(137, 136, 1, 'Chào cờ', '/news/index.php?language=vi&nv=news&amp;op=chao-co', '', '', 1, 18, 1, '', '6', 'news', 'chao-co', 1, '', 1, 1),
(136, 0, 1, 'Hoạt động', '/news/index.php?language=vi&nv=news&amp;op=hoat-dong', '', '', 2, 17, 0, '137,138,139,140,141,142,143,144', '6', 'news', 'hoat-dong', 1, '', 1, 1),
(135, 120, 1, 'Tổ chuyên môn', '/news/index.php?language=vi&nv=news&amp;op=to-chuyen-mon', '', '', 11, 16, 1, '', '6', 'news', 'to-chuyen-mon', 1, '', 1, 1),
(134, 120, 1, 'Ban giám hiệu', '/news/index.php?language=vi&nv=news&amp;op=ban-giam-hieu', '', '', 10, 15, 1, '', '6', 'news', 'ban-giam-hieu', 1, '', 1, 1),
(132, 120, 1, 'Các lớp', '/news/index.php?language=vi&nv=news&amp;op=cac-lop', '', '', 8, 13, 1, '', '6', 'news', 'cac-lop', 1, '', 1, 1),
(133, 120, 1, 'Nội quy - Quy định', '/news/index.php?language=vi&nv=news&amp;op=noi-quy', '', '', 9, 14, 1, '', '6', 'news', 'noi-quy', 1, '', 1, 1),
(131, 120, 1, 'Y tế', '/news/index.php?language=vi&nv=news&amp;op=y-te', '', '', 7, 12, 1, '', '6', 'news', 'y-te', 1, '', 1, 1),
(130, 126, 1, 'Tài liệu hướng dẫn', '/news/index.php?language=vi&nv=news&amp;op=tai-lieu-huong-dan', '', '', 4, 11, 2, '', '6', 'news', 'tai-lieu-huong-dan', 1, '', 1, 1),
(129, 126, 1, 'Thư viện ảnh &amp; video', '/news/index.php?language=vi&nv=news&amp;op=thu-vien-anh-video', '', '', 3, 10, 2, '', '6', 'news', 'thu-vien-anh-video', 1, '', 1, 1),
(127, 126, 1, 'Thư viện đề thi', '/news/index.php?language=vi&nv=news&amp;op=thu-vien-de-thi', '', '', 1, 8, 2, '', '6', 'news', 'thu-vien-de-thi', 1, '', 1, 1),
(128, 126, 1, 'Thư viện tài liệu', '/news/index.php?language=vi&nv=news&amp;op=thu-vien-tai-lieu', '', '', 2, 9, 2, '', '6', 'news', 'thu-vien-tai-lieu', 1, '', 1, 1),
(126, 120, 1, 'Thư viện', '/news/index.php?language=vi&nv=news&amp;op=thu-vien-nha-truong', '', '', 6, 7, 1, '127,128,129,130', '6', 'news', 'thu-vien-nha-truong', 1, '', 1, 1),
(125, 120, 1, 'Đội thiếu niên', '/news/index.php?language=vi&nv=news&amp;op=doi-thieu-nien', '', '', 5, 6, 1, '', '6', 'news', 'doi-thieu-nien', 1, '', 1, 1),
(124, 120, 1, 'Đoàn Thanh niên', '/news/index.php?language=vi&nv=news&amp;op=doan-thanh-nien', '', '', 4, 5, 1, '', '6', 'news', 'doan-thanh-nien', 1, '', 1, 1),
(120, 0, 1, 'Nhà trường', '/news/index.php?language=vi&nv=news&amp;op=nha-truong', '', '', 1, 1, 0, '121,122,123,124,125,126,131,132,133,134,135', '6', 'news', 'nha-truong', 1, '', 1, 1),
(121, 120, 1, 'Giới thiệu', '/news/index.php?language=vi&nv=news&amp;op=gioi-thieu', '', '', 1, 2, 1, '', '6', 'news', 'gioi-thieu', 1, '', 1, 1),
(122, 120, 1, 'Ban phụ huynh', '/news/index.php?language=vi&nv=news&amp;op=ban-phu-huynh', '', '', 2, 3, 1, '', '6', 'news', 'ban-phu-huynh', 1, '', 1, 1),
(123, 120, 1, 'Công đoàn', '/news/index.php?language=vi&nv=news&amp;op=cong-doan', '', '', 3, 4, 1, '', '6', 'news', 'cong-doan', 1, '', 1, 1),
(159, 0, 1, 'Content', '/news/index.php?language=vi&nv=news&amp;op=content', '', '', 9, 40, 0, '', '6', 'news', 'content', 1, '', 1, 0),
(160, 0, 1, 'Rss', '/news/index.php?language=vi&nv=news&amp;op=rss', '', '', 10, 41, 0, '', '6', 'news', 'rss', 1, '', 1, 0),
(161, 0, 1, 'Search', '/news/index.php?language=vi&nv=news&amp;op=search', '', '', 11, 42, 0, '', '6', 'news', 'search', 1, '', 1, 0),
(162, 0, 1, 'Liên hệ', '/news/index.php?language=vi&nv=contact', '', '', 12, 43, 0, '', '6', 'contact', '', 1, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_modfuncs`
--

CREATE TABLE IF NOT EXISTS `gt_vi_modfuncs` (
  `func_id` mediumint(8) unsigned NOT NULL,
  `func_name` varchar(55) NOT NULL,
  `alias` varchar(55) NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) NOT NULL,
  `in_module` varchar(55) NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT '0',
  `in_submenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subweight` smallint(2) unsigned NOT NULL DEFAULT '1',
  `setting` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_modfuncs`
--

INSERT INTO `gt_vi_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(1, 'main', 'main', 'Main', 'about', 1, 0, 1, ''),
(2, 'sitemap', 'sitemap', 'Sitemap', 'about', 0, 0, 0, ''),
(3, 'rss', 'rss', 'Rss', 'about', 0, 0, 0, ''),
(4, 'main', 'main', 'Main', 'news', 1, 0, 1, ''),
(5, 'viewcat', 'viewcat', 'Viewcat', 'news', 1, 0, 2, ''),
(6, 'topic', 'topic', 'Topic', 'news', 1, 0, 3, ''),
(7, 'content', 'content', 'Content', 'news', 1, 1, 4, ''),
(8, 'detail', 'detail', 'Detail', 'news', 1, 0, 5, ''),
(9, 'tag', 'tag', 'Tag', 'news', 1, 0, 6, ''),
(10, 'rss', 'rss', 'Rss', 'news', 1, 1, 7, ''),
(11, 'search', 'search', 'Search', 'news', 1, 1, 8, ''),
(12, 'groups', 'groups', 'Groups', 'news', 1, 0, 9, ''),
(13, 'sitemap', 'sitemap', 'Sitemap', 'news', 0, 0, 0, ''),
(14, 'print', 'print', 'Print', 'news', 0, 0, 0, ''),
(15, 'rating', 'rating', 'Rating', 'news', 0, 0, 0, ''),
(16, 'savefile', 'savefile', 'Savefile', 'news', 0, 0, 0, ''),
(17, 'sendmail', 'sendmail', 'Sendmail', 'news', 0, 0, 0, ''),
(18, 'main', 'main', 'Main', 'users', 1, 0, 1, ''),
(19, 'login', 'login', 'Đăng nhập', 'users', 1, 1, 2, ''),
(20, 'register', 'register', 'Đăng ký', 'users', 1, 1, 3, ''),
(21, 'lostpass', 'lostpass', 'Quên mật khẩu', 'users', 1, 1, 4, ''),
(22, 'active', 'active', 'Kích hoạt', 'users', 1, 0, 5, ''),
(23, 'lostactivelink', 'lostactivelink', 'Lostactivelink', 'users', 1, 0, 6, ''),
(24, 'editinfo', 'editinfo', 'Thiếp lập tài khoản', 'users', 1, 1, 7, ''),
(25, 'memberlist', 'memberlist', 'Danh sách thành viên', 'users', 1, 1, 8, ''),
(26, 'avatar', 'avatar', 'Avatar', 'users', 1, 0, 9, ''),
(27, 'logout', 'logout', 'Thoát', 'users', 1, 1, 10, ''),
(28, 'oauth', 'oauth', 'Oauth', 'users', 0, 0, 0, ''),
(29, 'main', 'main', 'Main', 'statistics', 1, 0, 1, ''),
(30, 'allreferers', 'allreferers', 'Theo đường dẫn đến site', 'statistics', 1, 1, 2, ''),
(31, 'allcountries', 'allcountries', 'Theo quốc gia', 'statistics', 1, 1, 3, ''),
(32, 'allbrowsers', 'allbrowsers', 'Theo trình duyệt', 'statistics', 1, 1, 4, ''),
(33, 'allos', 'allos', 'Theo hệ điều hành', 'statistics', 1, 1, 5, ''),
(34, 'allbots', 'allbots', 'Máy chủ tìm kiếm', 'statistics', 1, 1, 6, ''),
(35, 'referer', 'referer', 'Đường dẫn đến site theo tháng', 'statistics', 1, 0, 7, ''),
(36, 'main', 'main', 'Main', 'banners', 1, 0, 1, ''),
(37, 'addads', 'addads', 'Addads', 'banners', 1, 0, 2, ''),
(38, 'clientinfo', 'clientinfo', 'Clientinfo', 'banners', 1, 0, 3, ''),
(39, 'stats', 'stats', 'Stats', 'banners', 1, 0, 4, ''),
(40, 'cledit', 'cledit', 'Cledit', 'banners', 0, 0, 0, ''),
(41, 'click', 'click', 'Click', 'banners', 0, 0, 0, ''),
(42, 'clinfo', 'clinfo', 'Clinfo', 'banners', 0, 0, 0, ''),
(43, 'logininfo', 'logininfo', 'Logininfo', 'banners', 0, 0, 0, ''),
(44, 'viewmap', 'viewmap', 'Viewmap', 'banners', 0, 0, 0, ''),
(45, 'main', 'main', 'main', 'comment', 1, 0, 1, ''),
(46, 'post', 'post', 'post', 'comment', 1, 0, 2, ''),
(47, 'like', 'like', 'Like', 'comment', 1, 0, 3, ''),
(48, 'delete', 'delete', 'Delete', 'comment', 1, 0, 4, ''),
(49, 'main', 'main', 'Main', 'page', 1, 0, 1, ''),
(50, 'sitemap', 'sitemap', 'Sitemap', 'page', 0, 0, 0, ''),
(51, 'rss', 'rss', 'Rss', 'page', 0, 0, 0, ''),
(52, 'main', 'main', 'Main', 'siteterms', 1, 0, 1, ''),
(53, 'rss', 'rss', 'Rss', 'siteterms', 1, 0, 2, ''),
(54, 'sitemap', 'sitemap', 'Sitemap', 'siteterms', 0, 0, 0, ''),
(55, 'main', 'main', 'Main', 'contact', 1, 0, 1, ''),
(56, 'main', 'main', 'Main', 'voting', 1, 0, 1, ''),
(57, 'main', 'main', 'Main', 'seek', 1, 0, 1, ''),
(58, 'main', 'main', 'Main', 'feeds', 1, 0, 1, ''),
(59, 'main', 'main', 'Main', 'video-clip', 1, 0, 1, ''),
(60, 'rss', 'rss', 'Rss', 'video-clip', 1, 0, 2, ''),
(61, 'sitemap', 'sitemap', 'Sitemap', 'video-clip', 0, 0, 0, ''),
(62, 'main', 'main', 'Main', 'tra-cuu-diem-thi', 1, 0, 1, ''),
(63, 'rss', 'rss', 'Rss', 'tra-cuu-diem-thi', 1, 0, 2, ''),
(64, 'sitemap', 'sitemap', 'Sitemap', 'tra-cuu-diem-thi', 0, 0, 0, ''),
(92, 'viewcat', 'viewcat', 'Viewcat', 'teest', 1, 0, 2, ''),
(91, 'topic', 'topic', 'Topic', 'teest', 1, 0, 3, ''),
(90, 'tag', 'tag', 'Tag', 'teest', 1, 0, 8, ''),
(89, 'sitemap', 'sitemap', 'Sitemap', 'teest', 0, 0, 0, ''),
(88, 'sendmail', 'sendmail', 'Sendmail', 'teest', 0, 0, 0, ''),
(87, 'search', 'search', 'Search', 'teest', 1, 1, 6, ''),
(86, 'savefile', 'savefile', 'Savefile', 'teest', 0, 0, 0, ''),
(85, 'rss', 'rss', 'Rss', 'teest', 1, 1, 9, ''),
(84, 'rating', 'rating', 'Rating', 'teest', 0, 0, 0, ''),
(83, 'print', 'print', 'Print', 'teest', 0, 0, 0, ''),
(81, 'groups', 'groups', 'Groups', 'teest', 1, 0, 4, ''),
(80, 'detail', 'detail', 'Detail', 'teest', 1, 0, 5, ''),
(79, 'content', 'content', 'Content', 'teest', 1, 1, 7, ''),
(82, 'main', 'main', 'Main', 'teest', 1, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_modthemes`
--

CREATE TABLE IF NOT EXISTS `gt_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) DEFAULT NULL,
  `theme` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_modthemes`
--

INSERT INTO `gt_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'body', 'mobile_default'),
(0, 'left-body-right', 'default'),
(0, 'left-body-right', 'giaothanh'),
(1, 'body', 'mobile_default'),
(1, 'left-body-right', 'default'),
(1, 'left-body-right', 'giaothanh'),
(4, 'body', 'mobile_default'),
(4, 'left-body-right', 'default'),
(4, 'left-body-right', 'giaothanh'),
(5, 'body', 'mobile_default'),
(5, 'left-body-right', 'default'),
(5, 'left-body-right', 'giaothanh'),
(6, 'body', 'mobile_default'),
(6, 'left-body-right', 'default'),
(6, 'left-body-right', 'giaothanh'),
(7, 'body', 'mobile_default'),
(7, 'left-body-right', 'default'),
(7, 'left-body-right', 'giaothanh'),
(8, 'body', 'mobile_default'),
(8, 'left-body-right', 'default'),
(8, 'left-body-right', 'giaothanh'),
(9, 'body', 'mobile_default'),
(9, 'left-body-right', 'default'),
(9, 'left-body-right', 'giaothanh'),
(10, 'body', 'mobile_default'),
(10, 'left-body-right', 'default'),
(10, 'left-body-right', 'giaothanh'),
(11, 'body', 'mobile_default'),
(11, 'left-body-right', 'default'),
(11, 'left-body-right', 'giaothanh'),
(12, 'body', 'mobile_default'),
(12, 'left-body-right', 'default'),
(12, 'left-body-right', 'giaothanh'),
(18, 'body', 'mobile_default'),
(18, 'left-body', 'default'),
(18, 'left-body-right', 'giaothanh'),
(19, 'body', 'mobile_default'),
(19, 'left-body', 'default'),
(19, 'left-body-right', 'giaothanh'),
(20, 'body', 'mobile_default'),
(20, 'left-body', 'default'),
(20, 'left-body-right', 'giaothanh'),
(21, 'body', 'mobile_default'),
(21, 'left-body', 'default'),
(21, 'left-body-right', 'giaothanh'),
(22, 'body', 'mobile_default'),
(22, 'left-body', 'default'),
(22, 'left-body-right', 'giaothanh'),
(23, 'body', 'mobile_default'),
(23, 'left-body', 'default'),
(23, 'left-body-right', 'giaothanh'),
(24, 'body', 'mobile_default'),
(24, 'left-body', 'default'),
(24, 'left-body-right', 'giaothanh'),
(25, 'body', 'mobile_default'),
(25, 'left-body', 'default'),
(25, 'left-body-right', 'giaothanh'),
(26, 'left-body', 'default'),
(26, 'left-body-right', 'giaothanh'),
(27, 'body', 'mobile_default'),
(27, 'left-body', 'default'),
(27, 'left-body-right', 'giaothanh'),
(29, 'body', 'mobile_default'),
(29, 'left-body', 'default'),
(29, 'left-body-right', 'giaothanh'),
(30, 'body', 'mobile_default'),
(30, 'left-body', 'default'),
(30, 'left-body-right', 'giaothanh'),
(31, 'body', 'mobile_default'),
(31, 'left-body', 'default'),
(31, 'left-body-right', 'giaothanh'),
(32, 'body', 'mobile_default'),
(32, 'left-body', 'default'),
(32, 'left-body-right', 'giaothanh'),
(33, 'body', 'mobile_default'),
(33, 'left-body', 'default'),
(33, 'left-body-right', 'giaothanh'),
(34, 'body', 'mobile_default'),
(34, 'left-body', 'default'),
(34, 'left-body-right', 'giaothanh'),
(35, 'body', 'mobile_default'),
(35, 'left-body', 'default'),
(35, 'left-body-right', 'giaothanh'),
(36, 'body', 'mobile_default'),
(36, 'left-body-right', 'default'),
(36, 'left-body-right', 'giaothanh'),
(37, 'body', 'mobile_default'),
(37, 'left-body-right', 'default'),
(37, 'left-body-right', 'giaothanh'),
(38, 'body', 'mobile_default'),
(38, 'left-body-right', 'default'),
(38, 'left-body-right', 'giaothanh'),
(39, 'body', 'mobile_default'),
(39, 'left-body-right', 'default'),
(39, 'left-body-right', 'giaothanh'),
(45, 'body', 'mobile_default'),
(45, 'left-body-right', 'default'),
(45, 'left-body-right', 'giaothanh'),
(46, 'body', 'mobile_default'),
(46, 'left-body-right', 'default'),
(46, 'left-body-right', 'giaothanh'),
(47, 'body', 'mobile_default'),
(47, 'left-body-right', 'default'),
(47, 'left-body-right', 'giaothanh'),
(48, 'body', 'mobile_default'),
(48, 'left-body-right', 'default'),
(48, 'left-body-right', 'giaothanh'),
(49, 'body', 'mobile_default'),
(49, 'left-body', 'default'),
(49, 'left-body-right', 'giaothanh'),
(52, 'body', 'mobile_default'),
(52, 'left-body-right', 'default'),
(52, 'left-body-right', 'giaothanh'),
(53, 'body', 'mobile_default'),
(53, 'left-body-right', 'default'),
(53, 'left-body-right', 'giaothanh'),
(55, 'body', 'mobile_default'),
(55, 'left-body', 'default'),
(55, 'left-body-right', 'giaothanh'),
(56, 'body', 'mobile_default'),
(56, 'left-body', 'default'),
(56, 'left-body-right', 'giaothanh'),
(57, 'body', 'mobile_default'),
(57, 'left-body-right', 'default'),
(57, 'left-body-right', 'giaothanh'),
(58, 'body', 'mobile_default'),
(58, 'left-body-right', 'default'),
(58, 'left-body-right', 'giaothanh'),
(59, 'body', 'mobile_default'),
(59, 'left-body-right', 'default'),
(59, 'left-body-right', 'giaothanh'),
(60, 'body', 'mobile_default'),
(60, 'left-body-right', 'default'),
(60, 'left-body-right', 'giaothanh'),
(61, 'left-body-right', 'giaothanh'),
(62, 'body', 'mobile_default'),
(62, 'left-body-right', 'default'),
(62, 'left-body-right', 'giaothanh'),
(63, 'body', 'mobile_default'),
(63, 'left-body-right', 'default'),
(63, 'left-body-right', 'giaothanh'),
(64, 'left-body-right', 'giaothanh'),
(79, 'left-body-right', 'giaothanh'),
(80, 'left-body-right', 'giaothanh'),
(81, 'left-body-right', 'giaothanh'),
(82, 'left-body-right', 'giaothanh'),
(83, 'left-body-right', 'giaothanh'),
(84, 'left-body-right', 'giaothanh'),
(85, 'left-body-right', 'giaothanh'),
(86, 'left-body-right', 'giaothanh'),
(87, 'left-body-right', 'giaothanh'),
(88, 'left-body-right', 'giaothanh'),
(89, 'left-body-right', 'giaothanh'),
(90, 'left-body-right', 'giaothanh'),
(91, 'left-body-right', 'giaothanh'),
(92, 'left-body-right', 'giaothanh');

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_modules`
--

CREATE TABLE IF NOT EXISTS `gt_vi_modules` (
  `title` varchar(55) NOT NULL,
  `module_file` varchar(55) NOT NULL DEFAULT '',
  `module_data` varchar(55) NOT NULL DEFAULT '',
  `module_upload` varchar(55) NOT NULL DEFAULT '',
  `custom_title` varchar(255) NOT NULL,
  `admin_title` varchar(255) DEFAULT '',
  `set_time` int(11) unsigned NOT NULL DEFAULT '0',
  `main_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(100) DEFAULT '',
  `mobile` varchar(100) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `keywords` text,
  `groups_view` varchar(255) NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admins` varchar(255) DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT '1',
  `gid` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_modules`
--

INSERT INTO `gt_vi_modules` (`title`, `module_file`, `module_data`, `module_upload`, `custom_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `gid`) VALUES
('about', 'page', 'about', 'about', 'Giới thiệu', '', 1448557801, 1, 1, '', '', '', '', '6', 1, 1, '', 1, 0),
('news', 'news', 'news', 'news', 'Bài viết', '', 1448557801, 1, 1, '', '', '', '', '6', 2, 1, '2', 1, 0),
('users', 'users', 'users', 'users', 'Thành viên', 'Tài khoản', 1448557801, 1, 1, '', '', '', '', '6', 3, 1, '2', 0, 0),
('contact', 'contact', 'contact', 'contact', 'Liên hệ', '', 1448557801, 1, 1, '', '', '', '', '6', 4, 1, '2', 0, 0),
('statistics', 'statistics', 'statistics', 'statistics', 'Thống kê', '', 1448557801, 1, 1, '', '', '', 'truy cập, online, statistics', '2', 5, 1, '2', 0, 0),
('voting', 'voting', 'voting', 'voting', 'Thăm dò ý kiến', '', 1448557801, 1, 1, '', '', '', '', '6', 6, 1, '2', 1, 0),
('banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', 1448557801, 1, 1, '', '', '', '', '6', 7, 1, '2', 0, 0),
('seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', 1448557801, 1, 0, '', '', '', '', '6', 8, 1, '2', 0, 0),
('menu', 'menu', 'menu', 'menu', 'Menu Site', '', 1448557801, 0, 1, '', '', '', '', '6', 9, 1, '2', 0, 0),
('feeds', 'feeds', 'feeds', 'feeds', 'Rss Feeds', '', 1448557801, 1, 1, '', '', '', '', '6', 10, 1, '', 0, 0),
('page', 'page', 'page', 'page', 'Page', '', 1448557801, 1, 1, '', '', '', '', '6', 11, 1, '2', 1, 0),
('comment', 'comment', 'comment', 'comment', 'Bình luận', 'Quản lý bình luận', 1448557801, 0, 1, '', '', '', '', '6', 12, 1, '2', 0, 0),
('siteterms', 'page', 'siteterms', 'siteterms', 'Điều khoản sử dụng', '', 1448557801, 1, 1, '', '', '', '', '6', 13, 1, '2', 1, 0),
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'Giới thiệu sản phẩm', '', 1448557801, 0, 1, '', '', '', '', '6', 14, 1, '2', 0, 0),
('video-clip', 'page', 'video_clip', 'video-clip', 'video clip', 'Video clip', 1448566798, 1, 1, 'giaothanh', 'mobile_default', '', '', '6', 15, 1, '2', 1, 0),
('tra-cuu-diem-thi', 'page', 'tra_cuu_diem_thi', 'tra-cuu-diem-thi', 'Tra cứu điểm thi', 'Tra cứu điểm thi', 1448632786, 1, 1, 'giaothanh', '', '', '', '6', 16, 1, '2', 1, 0),
('teest', 'news', 'teest', 'teest', 'teest', '', 1448810632, 1, 1, '', '', '', '', '6', 17, 1, '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_1`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_1` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_2`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_2` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_8`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_8` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_9`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_9` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_10`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_10` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_11`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_11` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_12`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_12` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_13`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_13` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_14`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_14` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_15`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_15` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_16`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_16` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_17`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_17` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_admins`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_admins` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_news_admins`
--

INSERT INTO `gt_vi_news_admins` (`userid`, `catid`, `admin`, `add_content`, `pub_content`, `edit_content`, `del_content`, `app_content`) VALUES
(2, 0, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_block`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_block` (
  `bid` smallint(5) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_block_cat`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_block_cat` (
  `bid` smallint(5) unsigned NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_news_block_cat`
--

INSERT INTO `gt_vi_news_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 1, 4, 'Tin tiêu điểm', 'Tin-tieu-diem', '', 'Tin tiêu điểm', 1, '', 1279945710, 1279956943),
(2, 1, 4, 'Tin mới nhất', 'Tin-moi-nhat', '', 'Tin mới nhất', 2, '', 1279945725, 1279956445);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_bodyhtml_1`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_bodyhtml_1` (
  `id` int(11) unsigned NOT NULL,
  `bodyhtml` longtext NOT NULL,
  `sourcetext` varchar(255) DEFAULT '',
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0',
  `gid` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_news_bodyhtml_1`
--

INSERT INTO `gt_vi_news_bodyhtml_1` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(11, 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11<br  />\r\n<iframe allowfullscreen="" frameborder="0" height="315" src="https://www.youtube.com/embed/IgnDOCAp2GA" width="560"></iframe>', '', 2, 0, 1, 1, 1, 0),
(12, 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11<br  />\r\n<iframe allowfullscreen="" frameborder="0" height="315" src="https://www.youtube.com/embed/IgnDOCAp2GA" width="560"></iframe>', '', 2, 0, 1, 1, 1, 0),
(13, 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11<br  />\r\n<iframe allowfullscreen="" frameborder="0" height="315" src="https://www.youtube.com/embed/IgnDOCAp2GA" width="560"></iframe>', '', 2, 0, 1, 1, 1, 0),
(14, 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11<br  />\r\n<iframe allowfullscreen="" frameborder="0" height="315" src="https://www.youtube.com/embed/IgnDOCAp2GA" width="560"></iframe>', '', 2, 0, 1, 1, 1, 0),
(15, 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11<br  />\r\n<iframe allowfullscreen="" frameborder="0" height="315" src="https://www.youtube.com/embed/IgnDOCAp2GA" width="560"></iframe>', '', 2, 0, 1, 1, 1, 0),
(16, 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11', '', 2, 0, 1, 1, 1, 0),
(17, 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11', '', 2, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_bodytext`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_bodytext` (
  `id` int(11) unsigned NOT NULL,
  `bodytext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_cat`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_cat` (
  `catid` smallint(5) unsigned NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `titlesite` varchar(255) DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `descriptionhtml` text,
  `image` varchar(255) DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `newday` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `keywords` text,
  `admins` text,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_news_cat`
--

INSERT INTO `gt_vi_news_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `newday`, `featured`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`) VALUES
(1, 0, 'Nhà trường', '', 'nha-truong', '', '', '', 0, 1, 1, 0, 'viewcat_main_right', 11, '8,29,28,27,26,25,24,23,30,12,9', 1, 4, 2, 0, '', '', 1274986690, 1448753847, '6'),
(2, 0, 'Hoạt động', '', 'hoat-dong', '', '', '', 0, 2, 13, 0, 'viewcat_page_new', 8, '17,31,32,33,34,35,36,37', 1, 4, 2, 0, '', '', 1274986705, 1448753921, '6'),
(8, 1, 'Giới thiệu', '', 'gioi-thieu', '', '', '', 0, 1, 2, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(9, 1, 'Tổ chuyên môn', '', 'to-chuyen-mon', '', '', '', 0, 11, 12, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987212, 1448755624, '6'),
(10, 0, 'Sự kiện', '', 'su-kien', '', '', '', 0, 3, 22, 0, 'viewcat_page_new', 3, '18,20,38', 1, 4, 2, 0, '', '', 1274987460, 1448753960, '6'),
(11, 0, 'Phương pháp học tập', '', 'phuong-phap-hop-tap', '', '', '', 0, 4, 26, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987538, 1448754019, '6'),
(12, 1, 'Ban giám hiệu', '', 'ban-giam-hieu', '', '', '', 0, 10, 11, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987902, 1448754655, '6'),
(13, 0, 'Tin học', '', 'tin-hoc', '', '', '', 0, 5, 27, 0, 'viewcat_page_new', 3, '39,40,41', 1, 3, 2, 0, '', '', 1448754041, 1448754041, '6'),
(14, 0, 'Thư viện', '', 'thu-vien', '', '', '', 0, 6, 31, 0, 'viewcat_page_new', 4, '42,43,44,45', 1, 3, 2, 0, '', '', 1448754071, 1448754071, '6'),
(15, 0, 'Thời khóa biểu', '', 'thoi-khoa-bieu', '', '', '', 0, 7, 36, 0, 'viewcat_page_new', 2, '19,46', 1, 3, 2, 0, '', '', 1448754095, 1448754095, '6'),
(16, 0, 'Chung tay', '', 'chung-tay', '', '', '', 0, 8, 39, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', 1448754111, 1448754111, '6'),
(17, 2, 'Chào cờ', '', 'chao-co', '', '', '', 0, 1, 14, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', 1448755679, 1448755679, '6'),
(18, 10, 'Gương mặt tiêu biểu', '', 'guong-mat-tieu-bieu', '', '', '', 0, 1, 23, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(19, 15, 'Lịch tuần', '', 'lich-tuan', '', '', '', 0, 1, 37, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(20, 10, 'Thông báo', '', 'thong-bao', '', '', '', 0, 2, 24, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(23, 1, 'Ban phụ huynh', '', 'ban-phu-huynh', '', '', '', 0, 8, 9, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(24, 1, 'Công đoàn', '', 'cong-doan', '', '', '', 0, 7, 8, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(25, 1, 'Đoàn Thanh niên', '', 'doan-thanh-nien', '', '', '', 0, 6, 7, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(26, 1, 'Đội thiếu niên', '', 'doi-thieu-nien', '', '', '', 0, 5, 6, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(27, 1, 'Thư viện', '', 'thu-vien-nha-truong', '', '', '', 0, 4, 5, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(28, 1, 'Y tế', '', 'y-te', '', '', '', 0, 3, 4, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(29, 1, 'Các lớp', '', 'cac-lop', '', '', '', 0, 2, 3, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(30, 1, 'Nội quy - Quy định', '', 'noi-quy', '', '', '', 0, 9, 10, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(31, 2, 'HĐ của học sinh', '', 'hd-cua-hoc-sinh', '', '', '', 0, 2, 15, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', 1448755679, 1448755679, '6'),
(32, 2, 'HĐ của giáo viên', '', 'hd-cua-giao-vien', '', '', '', 0, 3, 16, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', 1448755679, 1448755679, '6'),
(33, 2, 'Văn - Thể - Mỹ', '', 'van-the-my', '', '', '', 0, 4, 17, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', 1448755679, 1448755679, '6'),
(34, 2, 'Kĩ năng &amp; giá trị sống', '', 'ki-nang-gia-tri-song', '', '', '', 0, 5, 18, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', 1448755679, 1448755679, '6'),
(35, 2, 'Đoàn &amp; Đội', '', 'doan-doi', '', '', '', 0, 6, 19, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', 1448755679, 1448755679, '6'),
(36, 2, 'Y tế', '', 'y-te-hoat-dong', '', '', '', 0, 7, 20, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', 1448755679, 1448755679, '6'),
(37, 2, 'Hoạt động khác', '', 'hoat-dong-khac', '', '', '', 0, 8, 21, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', 1448755679, 1448755679, '6'),
(38, 10, 'Tin giáo dục', '', 'tin-giao-duc', '', '', '', 0, 3, 25, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(39, 13, 'Phần mềm', '', 'phan-mem', '', '', '', 0, 1, 28, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(40, 13, 'Kiến thức', '', 'kien-thuc', '', '', '', 0, 2, 29, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(41, 13, 'Tin tức', '', 'tin-tuc', '', '', '', 0, 3, 30, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(42, 14, 'Thư viện đề thi', '', 'thu-vien-de-thi', '', '', '', 0, 1, 32, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(43, 14, 'Thư viện tài liệu', '', 'thu-vien-tai-lieu', '', '', '', 0, 2, 33, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(44, 14, 'Thư viện ảnh &amp; video', '', 'thu-vien-anh-video', '', '', '', 0, 3, 34, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(45, 14, 'Tài liệu hướng dẫn', '', 'tai-lieu-huong-dan', '', '', '', 0, 4, 35, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6'),
(46, 15, 'Thời khóa biểu', '', 'thoi-khoa-bieu-1', '', '', '', 0, 2, 38, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1448754600, '6');

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_config_post`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_news_config_post`
--

INSERT INTO `gt_vi_news_config_post` (`group_id`, `addcontent`, `postcontent`, `editcontent`, `delcontent`) VALUES
(1, 0, 0, 0, 0),
(2, 0, 0, 0, 0),
(3, 0, 0, 0, 0),
(4, 0, 0, 0, 0),
(5, 0, 0, 0, 0),
(10, 0, 0, 0, 0),
(11, 0, 0, 0, 0),
(12, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_logs`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_logs` (
  `id` mediumint(8) unsigned NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  `set_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_rows`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_rows` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_news_rows`
--

INSERT INTO `gt_vi_news_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(14, 32, '32', 0, 1, '', 0, 1448810476, 1448810476, 4, 1448810220, 0, 2, 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11', 'van-nghe-chao-mung-ngay-nha-giao-viet-nam-20-11', '', '2015_11/20-11.png', '', 1, 1, '4', 1, 0, 0, 0, 0),
(15, 32, '32', 0, 1, '', 0, 1448810515, 1448810515, 4, 1448810220, 0, 2, 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11', 'van-nghe-chao-mung-ngay-nha-giao-viet-nam-20-11', '', '2015_11/20-11.png', '', 1, 1, '4', 1, 0, 0, 0, 0),
(16, 32, '32', 0, 1, '', 0, 1448810564, 1448810564, 4, 1448810220, 0, 2, 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11', 'van-nghe-chao-mung-ngay-nha-giao-viet-nam-20-11', '', '2015_11/20-11.png', '', 1, 1, '4', 1, 0, 0, 0, 0),
(17, 32, '32', 0, 1, '', 0, 1448810602, 1448810602, 4, 1448810220, 0, 2, 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11', 'van-nghe-chao-mung-ngay-nha-giao', '', '2015_11/20-11.png', '', 1, 1, '4', 1, 0, 0, 0, 0),
(11, 32, '32', 0, 1, '', 0, 1448810300, 1448810300, 1, 1448810220, 0, 2, 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11', 'van-nghe-chao-mung-ngay-nha-giao-viet-nam-20-11', '', '2015_11/20-11.png', '', 1, 1, '4', 1, 0, 0, 0, 0),
(12, 32, '32', 0, 1, '', 0, 1448810415, 1448810415, 1, 1448810220, 0, 2, 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11', 'van-nghe-chao-mung-ngay-nha-giao-viet-nam-20-11', '', '2015_11/20-11.png', '', 1, 1, '4', 1, 0, 0, 0, 0),
(13, 32, '32', 0, 1, '', 0, 1448810439, 1448810439, 4, 1448810220, 0, 2, 'Văn nghệ chào mừng ngày nhà giáo Việt Nam 20 – 11', 'van-nghe-chao-mung-ngay-nha-giao-viet-nam-20-11', '', '2015_11/20-11.png', '', 1, 1, '4', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_sources`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_sources` (
  `sourceid` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_news_sources`
--

INSERT INTO `gt_vi_news_sources` (`sourceid`, `title`, `link`, `logo`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Báo Hà Nội Mới', 'http://hanoimoi.com.vn', '', 1, 1274989177, 1274989177),
(4, 'Báo điện tử Dân Trí', 'http://dantri.com.vn', '', 2, 1322685396, 1322685396);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_tags`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_tags` (
  `tid` mediumint(8) unsigned NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` text,
  `keywords` varchar(255) DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_news_tags`
--

INSERT INTO `gt_vi_news_tags` (`tid`, `numnews`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 0, 'nguồn-mở', '', '', 'nguồn mở'),
(2, 0, 'quen-thuộc', '', '', 'quen thuộc'),
(3, 0, 'cộng-đồng', '', '', 'cộng đồng'),
(4, 0, 'việt-nam', '', '', 'việt nam'),
(5, 0, 'hoạt-động', '', '', 'hoạt động'),
(6, 0, 'tin-tức', '', '', 'tin tức'),
(7, 0, 'thương-mại-điện', '', '', 'thương mại điện'),
(8, 0, 'điện-tử', '', '', 'điện tử'),
(9, 0, 'nukeviet', '', '', 'nukeviet'),
(10, 0, 'nền-tảng', '', '', 'nền tảng'),
(11, 0, 'xây-dựng', '', '', 'xây dựng'),
(12, 1, 'quản-trị', '', '', 'quản trị'),
(13, 1, 'nội-dung', '', '', 'nội dung'),
(14, 1, 'sử-dụng', '', '', 'sử dụng'),
(15, 1, 'khả-năng', '', '', 'khả năng'),
(16, 1, 'tích-hợp', '', '', 'tích hợp'),
(17, 1, 'ứng-dụng', '', '', 'ứng dụng'),
(18, 0, 'vinades', '', '', 'vinades'),
(19, 0, 'lập-trình-viên', '', '', 'lập trình viên'),
(20, 0, 'chuyên-viên-đồ-họa', '', '', 'chuyên viên đồ họa'),
(21, 0, 'php', '', '', 'php'),
(22, 0, 'mysql', '', '', 'mysql'),
(23, 0, 'khai-trương', '', '', 'khai trương'),
(24, 0, 'khuyến-mại', '', '', 'khuyến mại'),
(25, 0, 'giảm-giá', '', '', 'giảm giá'),
(26, 0, 'siêu-khuyến-mại', '', '', 'siêu khuyến mại'),
(27, 0, 'webnhanh', '', '', 'webnhanh'),
(28, 0, 'thiết-kế-website', '', '', 'thiết kế website'),
(29, 0, 'giao-diện-web', '', '', 'giao diện web'),
(30, 0, 'thiết-kế-web', '', '', 'thiết kế web'),
(31, 0, 'nhân-tài-đất-việt-2011', '', '', 'nhân tài đất việt 2011'),
(32, 0, 'mã-nguồn-mở', '', '', 'mã nguồn mở');

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_tags_id`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_news_topics`
--

CREATE TABLE IF NOT EXISTS `gt_vi_news_topics` (
  `topicid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_nha_truong_logs`
--

CREATE TABLE IF NOT EXISTS `gt_vi_nha_truong_logs` (
  `id` mediumint(8) unsigned NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  `set_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_page`
--

CREATE TABLE IF NOT EXISTS `gt_vi_page` (
  `id` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT '',
  `imagealt` varchar(255) DEFAULT '',
  `description` text,
  `bodytext` mediumtext NOT NULL,
  `keywords` text,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) DEFAULT '',
  `layout_func` varchar(100) DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_page_config`
--

CREATE TABLE IF NOT EXISTS `gt_vi_page_config` (
  `config_name` varchar(30) NOT NULL,
  `config_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_page_config`
--

INSERT INTO `gt_vi_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '5'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_referer_stats`
--

CREATE TABLE IF NOT EXISTS `gt_vi_referer_stats` (
  `host` varchar(255) NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `month01` int(11) NOT NULL DEFAULT '0',
  `month02` int(11) NOT NULL DEFAULT '0',
  `month03` int(11) NOT NULL DEFAULT '0',
  `month04` int(11) NOT NULL DEFAULT '0',
  `month05` int(11) NOT NULL DEFAULT '0',
  `month06` int(11) NOT NULL DEFAULT '0',
  `month07` int(11) NOT NULL DEFAULT '0',
  `month08` int(11) NOT NULL DEFAULT '0',
  `month09` int(11) NOT NULL DEFAULT '0',
  `month10` int(11) NOT NULL DEFAULT '0',
  `month11` int(11) NOT NULL DEFAULT '0',
  `month12` int(11) NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_searchkeys`
--

CREATE TABLE IF NOT EXISTS `gt_vi_searchkeys` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `skey` varchar(255) NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `search_engine` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_siteterms`
--

CREATE TABLE IF NOT EXISTS `gt_vi_siteterms` (
  `id` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT '',
  `imagealt` varchar(255) DEFAULT '',
  `description` text,
  `bodytext` mediumtext NOT NULL,
  `keywords` text,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) DEFAULT '',
  `layout_func` varchar(100) DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_siteterms`
--

INSERT INTO `gt_vi_siteterms` (`id`, `title`, `alias`, `image`, `imagealt`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(1, 'Chính sách bảo mật (Quyền riêng tư)', 'privacy', '', '', '', '<h2 style="text-align: justify;">Điều 1: Thu thập thông tin</h2><h3 style="text-align: justify;">1.1. Thu thập tự động:</h3><div style="text-align: justify;">Như mọi website hiện đại khác, Chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div><h3 style="text-align: justify;">1.2. Thu thập từ các khai báo của chính bạn:</h3><div style="text-align: justify;">Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div><h3 style="text-align: justify;">1.3. Thu thập thông tin thông qua việc đặt cookies:</h3><p style="text-align: justify;">Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p><p style="text-align: justify;">Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p><h3 style="text-align: justify;">1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3><p style="text-align: justify;">Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p><h2 style="text-align: justify;"><br  />Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2><div style="text-align: justify;">Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br  /><br  />Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử thông tin với bạn thông qua các bước xác định danh tính phù hợp.</div><h2 style="text-align: justify;"><br  />Điều 3: Sử dụng thông tin</h2><p style="text-align: justify;">Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p><blockquote><p style="text-align: justify;">o Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</p><p style="text-align: justify;">o Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</p><p style="text-align: justify;">o Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</p><p style="text-align: justify;">o Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</p><p style="text-align: justify;">o Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</p><p style="text-align: justify;">o Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</p><p style="text-align: justify;">o So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</p></blockquote><h2 style="text-align: justify;"><br  />Điều 4: Tiếp nhận thông tin từ các đối tác</h2><div style="text-align: justify;">Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br  /><br  />Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div><h2 style="text-align: justify;"><br  />Điều 5: Chia sẻ thông tin với bên thứ ba</h2><p style="text-align: justify;">Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p><h2 style="text-align: justify;"><br  />Điều 6: Thay đổi chính sách bảo mật</h2><p style="text-align: justify;">Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).<br  />&nbsp;</p><p style="text-align: right;">Tham khảo từ website <a href="http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/">webnhanh.vn</a></p>', '', 0, '4', '', 0, 1, 1, 1448557801, 1448557801, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_siteterms_config`
--

CREATE TABLE IF NOT EXISTS `gt_vi_siteterms_config` (
  `config_name` varchar(30) NOT NULL,
  `config_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_siteterms_config`
--

INSERT INTO `gt_vi_siteterms_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '5'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_1`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_1` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_teest_1`
--

INSERT INTO `gt_vi_teest_1` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 2, 0, 0, 0),
(2, 1, '1,8,12', 1, 1, 'laser', 2, 1274989787, 1275318114, 1, 1274989740, 0, 2, 'Công bố dự án NukeViet 3.0 sau 1 tháng ra mắt VINADES.,JSC', 'Cong-bo-du-an-NukeViet-3-0-sau-1-thang-ra-mat-VINADES-JSC', 'NukeViet 3.0 - Một nền tảng được xây dựng hoàn toàn mới với những công nghệ web tiên tiến nhất hiện nay hứa hẹn sẽ làm một cuộc cách mạng về mã nguồn mở ở Việt Nam. Món quà này là lời cảm ơn chân thành nhất mà VINADES.,JSC muốn gửi tới cộng đồng sau một tháng chính thức ra mắt.', 'nukeviet3.jpg', 'NukeViet 3.0', 1, 1, '6', 1, 2, 0, 0, 0),
(6, 10, '1,8,10', 0, 1, '', 2, 1274994722, 1275318001, 1, 1274994720, 0, 2, 'Thư mời hợp tác liên kết quảng cáo và cung cấp hosting thử nghiệm', 'Thu-moi-hop-tac', 'Hiện tại VINADES.,JSC đang tiến hành phát triển bộ mã nguồn NukeViet phiên bản 3.0 – một thế hệ CMS hoàn toàn mới với nhiều tính năng ưu việt, được đầu tư bài bản với kinh phí lớn. Với thiện chí hợp tác cùng phát triển VINADES.,JSC xin trân trọng gửi lời mời hợp tác đến Quý đối tác là các công ty cung cấp tên miền - hosting, các doanh nghiệp quan tâm và mong muốn hợp tác cùng VINADES để cùng thực hiện chung các hoạt động kinh doanh nhằm gia tăng giá trị, quảng bá thương hiệu chung cho cả hai bên.', 'hoptac.jpg', '', 1, 1, '6', 1, 1, 0, 0, 0),
(10, 1, '1,9', 0, 1, '', 4, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_2`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_2` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_teest_2`
--

INSERT INTO `gt_vi_teest_2` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(5, 2, '2', 1, 1, '', 5, 1274993307, 1275318039, 1, 1274993280, 0, 2, 'Giới thiệu về mã nguồn mở NukeViet', 'Gioi-thieu-ve-ma-nguon-mo-NukeViet', 'Chắc hẳn đây không phải lần đầu tiên bạn nghe nói đến mã nguồn mở. Và nếu bạn là người mê lướt web thì hẳn bạn từng nhìn thấy đâu đó cái tên NukeViet. NukeViet, phát âm là Nu-Ke-Việt, chính là phần mềm dùng để xây dựng các Website mà bạn ngày ngày online để truy cập đấy.', 'screenshot.jpg', '', 1, 0, '2', 1, 1, 0, 0, 0),
(9, 2, '2', 0, 1, 'Phạm Thế Quang Huy', 4, 1322685396, 1322686088, 1, 1322685396, 0, 2, 'NukeViet - Công cụ mã nguồn mở cho cộng đồng thiết kế website Việt Nam', 'NukeViet-Cong-cu-ma-nguon-mo-cho-cong-dong-thiet-ke-website-Viet-Nam', '(Dân trí) - Là một trong những hệ quản trị nội dung nổi tiếng hàng đầu tại Việt Nam, NukeViet đã được áp dụng rộng rãi trong việc xây dựng nhiều trang báo điện tử và các cổng thông tin điện tử nổi tiếng tại Việt Nam. Mới đây nhất, NukeViet đã vượt qua vòng sơ khảo để tranh tài tại vòng chung khảo của Giải Thưởng Nhân Tài Đất Việt 2011', 'product_box.jpg', 'Sản phẩm dự thi Nhân tài Đất Việt 2011&#x3A; Mã nguồn mở NukeViet', 1, 1, '6', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_8`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_8` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_teest_8`
--

INSERT INTO `gt_vi_teest_8` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 2, 0, 0, 0),
(2, 1, '1,8,12', 1, 1, 'laser', 2, 1274989787, 1275318114, 1, 1274989740, 0, 2, 'Công bố dự án NukeViet 3.0 sau 1 tháng ra mắt VINADES.,JSC', 'Cong-bo-du-an-NukeViet-3-0-sau-1-thang-ra-mat-VINADES-JSC', 'NukeViet 3.0 - Một nền tảng được xây dựng hoàn toàn mới với những công nghệ web tiên tiến nhất hiện nay hứa hẹn sẽ làm một cuộc cách mạng về mã nguồn mở ở Việt Nam. Món quà này là lời cảm ơn chân thành nhất mà VINADES.,JSC muốn gửi tới cộng đồng sau một tháng chính thức ra mắt.', 'nukeviet3.jpg', 'NukeViet 3.0', 1, 1, '6', 1, 2, 0, 0, 0),
(6, 10, '1,8,10', 0, 1, '', 2, 1274994722, 1275318001, 1, 1274994720, 0, 2, 'Thư mời hợp tác liên kết quảng cáo và cung cấp hosting thử nghiệm', 'Thu-moi-hop-tac', 'Hiện tại VINADES.,JSC đang tiến hành phát triển bộ mã nguồn NukeViet phiên bản 3.0 – một thế hệ CMS hoàn toàn mới với nhiều tính năng ưu việt, được đầu tư bài bản với kinh phí lớn. Với thiện chí hợp tác cùng phát triển VINADES.,JSC xin trân trọng gửi lời mời hợp tác đến Quý đối tác là các công ty cung cấp tên miền - hosting, các doanh nghiệp quan tâm và mong muốn hợp tác cùng VINADES để cùng thực hiện chung các hoạt động kinh doanh nhằm gia tăng giá trị, quảng bá thương hiệu chung cho cả hai bên.', 'hoptac.jpg', '', 1, 1, '6', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_9`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_9` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_teest_9`
--

INSERT INTO `gt_vi_teest_9` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(8, 9, '9', 0, 1, 'laser', 3, 1310067949, 1310068009, 1, 1310067949, 0, 2, 'Webnhanh.vn - website dịch vụ chuyên nghiệp cho NukeViet chính thức ra mắt', 'Webnhanhvn-website-dich-vu-chuyen-nghiep-cho-NukeViet-chinh-thuc-ra-mat', 'Sau một thời gian đi vào hoạt động, Webnhanh.vn đã nhận được nhiều ủng hộ cùng sự quan tâm, góp ý của cộng đồng và khách hàng. Để đáp ứng mong mỏi của cộng đồng về một dịch vụ web chuyên nghiệp với mức giá tối thiểu, Webnhanh.vn đã thực hiện chiến dịch siêu khuyến mại Giảm giá tất cả các gói web dựng sẵn, module, block và giao diện (theme). Mức giảm giá cao nhất tới 90% giá so với trước tháng 7 năm 2011.', 'webnhanh-vn.jpg', '', 1, 1, '6', 1, 1, 0, 0, 0),
(10, 1, '1,9', 0, 1, '', 4, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_10`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_10` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_teest_10`
--

INSERT INTO `gt_vi_teest_10` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(6, 10, '1,8,10', 0, 1, '', 2, 1274994722, 1275318001, 1, 1274994720, 0, 2, 'Thư mời hợp tác liên kết quảng cáo và cung cấp hosting thử nghiệm', 'Thu-moi-hop-tac', 'Hiện tại VINADES.,JSC đang tiến hành phát triển bộ mã nguồn NukeViet phiên bản 3.0 – một thế hệ CMS hoàn toàn mới với nhiều tính năng ưu việt, được đầu tư bài bản với kinh phí lớn. Với thiện chí hợp tác cùng phát triển VINADES.,JSC xin trân trọng gửi lời mời hợp tác đến Quý đối tác là các công ty cung cấp tên miền - hosting, các doanh nghiệp quan tâm và mong muốn hợp tác cùng VINADES để cùng thực hiện chung các hoạt động kinh doanh nhằm gia tăng giá trị, quảng bá thương hiệu chung cho cả hai bên.', 'hoptac.jpg', '', 1, 1, '6', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_11`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_11` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_teest_11`
--

INSERT INTO `gt_vi_teest_11` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(7, 11, '11', 0, 1, '', 2, 1307197282, 1307197381, 1, 1307197260, 0, 2, 'Tuyển dụng lập trình viên, chuyên viên đồ họa phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-chuyen-vien-do-hoa-phat-trien-NukeViet', 'Bạn đam mê nguồn mở? Bạn có năng khiếu lập trình PHP & MySQL? Bạn là chuyên gia đồ họa, HTML, CSS? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'nukeviet-job.jpg', '', 1, 1, '2', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_12`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_12` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_teest_12`
--

INSERT INTO `gt_vi_teest_12` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 2, 0, 0, 0),
(2, 1, '1,8,12', 1, 1, 'laser', 2, 1274989787, 1275318114, 1, 1274989740, 0, 2, 'Công bố dự án NukeViet 3.0 sau 1 tháng ra mắt VINADES.,JSC', 'Cong-bo-du-an-NukeViet-3-0-sau-1-thang-ra-mat-VINADES-JSC', 'NukeViet 3.0 - Một nền tảng được xây dựng hoàn toàn mới với những công nghệ web tiên tiến nhất hiện nay hứa hẹn sẽ làm một cuộc cách mạng về mã nguồn mở ở Việt Nam. Món quà này là lời cảm ơn chân thành nhất mà VINADES.,JSC muốn gửi tới cộng đồng sau một tháng chính thức ra mắt.', 'nukeviet3.jpg', 'NukeViet 3.0', 1, 1, '6', 1, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_admins`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_admins` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_block`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_block` (
  `bid` smallint(5) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_teest_block`
--

INSERT INTO `gt_vi_teest_block` (`bid`, `id`, `weight`) VALUES
(1, 5, 3),
(1, 2, 2),
(1, 1, 1),
(2, 6, 4),
(2, 5, 3),
(2, 2, 2),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_block_cat`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_block_cat` (
  `bid` smallint(5) unsigned NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_teest_block_cat`
--

INSERT INTO `gt_vi_teest_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'Tin tiêu điểm', 'Tin-tieu-diem', '', 'Tin tiêu điểm', 1, '', 1279945710, 1279956943),
(2, 1, 4, 'Tin mới nhất', 'Tin-moi-nhat', '', 'Tin mới nhất', 2, '', 1279945725, 1279956445);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_bodyhtml_1`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_bodyhtml_1` (
  `id` int(11) unsigned NOT NULL,
  `bodyhtml` longtext NOT NULL,
  `sourcetext` varchar(255) DEFAULT '',
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0',
  `gid` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_teest_bodyhtml_1`
--

INSERT INTO `gt_vi_teest_bodyhtml_1` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(1, '<p style="text-align: justify;"> Để chuyên nghiệp hóa việc phát hành mã nguồn mở NukeViet, Ban quản trị NukeViet quyết định thành lập doanh nghiệp chuyên quản NukeViet mang tên Công ty cổ phần Phát triển nguồn mở Việt Nam (Viết tắt là VINADES.,JSC), chính thức ra mắt vào ngày 25-2-2010 (trụ sở tại Hà Nội) nhằm phát triển, phổ biến hệ thống NukeViet tại Việt Nam.<br /> <br /> Theo ông Nguyễn Anh Tú, Chủ tịch HĐQT VINADES, công ty sẽ phát triển bộ mã nguồn NukeViet nhất quán theo con đường mã nguồn mở đã chọn, chuyên nghiệp và quy mô hơn bao giờ hết. Đặc biệt là hoàn toàn miễn phí đúng tinh thần mã nguồn mở quốc tế.<br /> <br /> NukeViet là một hệ quản trị nội dung mã nguồn mở (Opensource Content Management System) thuần Việt từ nền tảng PHP-Nuke và cơ sở dữ liệu MySQL. Người sử dụng thường gọi NukeViet là portal vì nó có khả năng tích hợp nhiều ứng dụng trên nền web, cho phép người sử dụng có thể dễ dàng xuất bản và quản trị các nội dung của họ lên internet hoặc intranet.<br /> <br /> NukeViet cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng thêm các module, block... tạo sự dễ dàng cài đặt, quản lý, ngay cả với những người mới tiếp cận với website. Người dùng có thể tìm hiểu thêm thông tin và tải về sản phẩm tại địa chỉ http://nukeviet.vn</p><blockquote> <p style="text-align: justify;"> <em>Thông tin ra mắt công ty VINADES có thể tìm thấy trên trang 7 báo Hà Nội Mới ra ngày 25/02/2010 (<a href="http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm" target="_blank">xem chi tiết</a>), Bản tin tiếng Anh của đài tiếng nói Việt Nam ngày 26/02/2010 (<a href="http://english.vovnews.vn/Home/First-opensource-company-starts-operation/20102/112960.vov" target="_blank">xem chi tiết</a>); trang 7 báo An ninh Thủ Đô số 2858 ra vào thứ 2 ngày 01/03/2010 và các trang tin tức, báo điện tử khác.</em></p></blockquote>', 'http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm', 1, 0, 1, 1, 1, 0),
(2, '<p style="font-weight: bold;"> <span style="font-size: 14pt;">Câu chuyện của NukeViet và VINADES.,JSC</span></p><p style="font-weight: bold;"> Từ một trăn trở</p><p style="text-align: justify;"> Giữa năm 2009, trước yêu cầu cấp thiết phải đổi mới và làm một cuộc cách mạng cho mã nguồn mở NukeViet, một cuộc thảo luận sôi nổi đã diễn ra với tiêu đề &quot;Lối đi nào để chuyên nghiệp hóa mã nguồn mở NukeViet&quot;.</p><p> Kết quả của cuộc thảo luận này là 55 bài viết với hàng chục ý kiến đóng góp đã được đưa ra. Các giải pháp về tài chính, nhân lực, phương hướng hoạt động được đem ra thảo luận. rockbuilc, Nkd833 đề xuất phương án thành lập doanh nghiệp chuyên quản NukeViet như một giải pháp toàn diện để giải quyết vấn đề chuyên nghiệp hóa NukeViet. Các vấn đề được các thành viên tham gia thảo luận và mổ xẻ thẳng thắn, nhiều ý kiến phản biện trái chiều cũng được đưa ra trên tinh thần xây dựng. Sau 2 tháng thảo luận, Ban Quản Trị đã có dự định...</p><p> <span style="font-weight: bold;">Gặp mặt</span></p><p> Tháng 11, Sau khi tham khảo các ý kiến của mọi người trên diễn đàn, Anh Tú đã trực tiếp về Việt Nam. Một cuộc offline được tổ chức chớp nhoáng với sự tham gia của các thành viên chủ chốt tại Hà Nội. Các cuộc tìm hiểu và tiếp xúc được triển khai gấp rút trong giai đoạn này.</p><p> <span style="font-weight: bold;">Một mô hình - một lối đi</span></p><p style="text-align: justify;"> Hướng đi chuyên nghiệp hóa việc phát triển NukeViet đã được anh Tú chọn lựa: &quot;Thành lập doanh nghiệp chuyên quản NukeViet&quot;. Doanh nghiệp chuyên quản NukeViet được thành lập từ chính nhu cầu của cộng đồng nhằm chuyên nghiệp hóa NukeViet, vì vậy mô hình công ty cổ phần được chọn lựa để đáp ứng yêu cầu đó. Chịu trách nhiệm triển khai, laser đã lên phương án đầu tư, mục tiêu, kế hoạch phát triển ngắn và dài hạn.</p><p> <br /> <span style="font-weight: bold;">Triển khai thực hiện</span></p><p style="text-align: justify;"> Tháng 1 năm 2010, việc thành lập đã được xúc tiến. Ngày 25/02/2010, trên các bản tin tiếng Anh và tiếng Việt xuất hiện bản tin &quot;Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam&quot;. Đó là Công ty cổ phần Phát triển nguồn mở Việt Nam (VIET NAM OPEN SOURCE DEVELOPMENT JOINT STOCK COMPANY - VINADES.,JSC). Đây là một vài hình ảnh trong ngày khai trương:</p><div style="text-align: center;"> <img alt="Anh Tú phát biểu khai trương VINADES.,JSC " height="332" src="http://nukeviet.vn/uploads/spaw2/images/anhtu-phatbieu.jpg" style="border: 0px solid;" width="500" /></div><div style="text-align: center;"> Anh Tú phát biểu khai trương VINADES.,JSC <p> <br /> <img alt="" border="0" src="http://nukeviet.vn/uploads/spaw2/images/hung-phatbieu.jpg" style="width: 500px;" width="500" /></p> <p> Nguyễn Hùng giới thiệu đôi nét về công ty, mục tiêu và phương hướng hoạt động.</p> <p> <br /> <img alt="" border="0" height="332" src="http://nukeviet.vn/uploads/spaw2/images/nangly.jpg" style="width: 500px; height: 332px;" width="500" /></p> <p> Cùng nâng ly chúc mừng khai trương.</p></div><p style="font-weight: bold;"> ... và lời cảm ơn gửi tới cộng đồng</p><p style="text-align: justify;"> VINADES.,JSC từ khi được thai nghén tới lúc chập chững những bước đi ban đầu đều có sự động viên, ủng hộ và đóng góp lớn nhỏ của cộng đồng NukeViet - Một cộng đồng gắn liền với những ký ức, những kỷ niệm buồn vui và mang trong mỗi thành viên một đam mê, một hoài bão lớn lao. &quot;Lửa thử vàng, gian nan thử sức&quot;, mỗi khó khăn trả qua khiến cộng đồng NukeViet lớn dần lên, gắn kết với nhau bằng một sợi dây vô hình không thể chia cắt: đó là niềm đam mê với mã nguồn mở, với công nghệ web. VINADES.,JSC được tạo ra từ cộng đồng và sẽ cố gắng hết sức để hoạt động vì lợi ích của cộng đồng.</p><p>  </p><div style="text-align: center;"> <img alt="" border="0" height="375" src="http://nukeviet.vn/uploads/spaw2/images/anhvp2.jpg" style="width: 500px; height: 375px;" width="500" /></div><p>  </p><p style="text-align: center;"> Văn phòng làm việc của VINADES.,JSC ở Hà Nội.</p><div style="text-align: center;"> <img alt="" border="0" height="375" src="http://nukeviet.vn/uploads/spaw2/images/anhvp3.jpg" style="width: 500px; height: 375px;" width="500" /></div><p>  </p><p style="text-align: center;"> Một góc văn phòng nhìn từ trong ra ngoài.</p><p style="font-weight: bold;"> NukeViet 3.0 - Cuộc cách mạng của NukeViet</p><p style="text-align: justify;"> Sau nhiều tháng triển khai, NukeViet 3.0 đã được định hình và dự định công bố bản beta trong thời gian gần. NukeViet 3.0 là phiên bản mang tính cách mạng của hệ thống NukeViet vì 100% các dòng code của NukeViet 3.0 đã được viết mới hoàn toàn chứ không sử dụng nền tảng cũ. Việc này đã ngốn rất nhiều thời gian và công sức của đội ngũ lập trình. Đó cũng là lý do vì sao bản 2.0 không được cải tiến nhiều trong thời gian qua.</p><div style="text-align: justify;"> NukeViet 3.0 được xây dựng với mong muốn có một nền tảng ổn định để sau đó có thể đầu tư lâu dài, xây dựng một thư viện ứng dụng phong phú. VINADES.,JSC sẽ song hành cùng cộng đồng NukeViet trong việc hỗ trợ và phát triển NukeViet thành một mã nguồn mở hoạt động ở quy mô chuyên nghiệp. Đây là bước đi đầu tiên trong trong tiến trình chuyên nghiệp hóa này. Các ứng dụng bổ sung sẽ được xây dựng bài bản, chất lượng. Cộng đồng NukeViet sẽ không chỉ là cộng đồng người sử dụng mà sẽ được đầu tư về đào tạo để trở thành một cộng đồng lập trình mạnh. Thông tin chi tiết về dự án phát triển NukeViet 3.0 được cập nhật tại đây: <a href="http://nukeviet.vn/phpbb/viewforum.php?f=99" target="_blank">http://nukeviet.vn/phpbb/viewforum.php?f=99</a></div>', 'http://vinades.vn/vi/news/thong-cao-bao-chi/Cong-bo-du-an-NukeViet-3-0-sau-1-thang-ra-mat-VINADES-JSC-2/', 1, 0, 1, 1, 1, 0),
(5, '<p> <strong><span style="font-size: 14px;">THÔNGTIN VỀ MÃ NGUỒN MỞ NUKEVIET</span></strong></p><p style="font-weight: bold;"> I. Giới thiệu chung:</p><p> NukeViet là một hệ quản trị nội dung mã nguồn mở (Opensource Content Management System), người sử dụng thường gọi NukeViet là portal vì nó có khả năng tích hợp nhiều ứng dụng trên nền Web.</p><p> NukeViet có 2 dòng phiên bản chính:</p><p> Dòng phiên bản trước năm 2009 (NukeViet 2.0 trở về trước) được Nguyễn Anh Tú- một lưu học sinh người Việt tại Nga - cùng cộng đồng phát triển thành một ứng dụng thuần Việt từ nền tảng PHP-Nuke.</p><p> Dòng phiên bản NukeViet 3.0 trở về sau (kể từ năm 2010 trở đi) là dòng phiên bản hoàn toàn mới, được xây dựng từ đầu với nhiều tính năng ưu việt.</p><p> NukeViet được viết bằng ngôn ngữ PHP và chủ yếu sử dụng cơ sở dữ liệu MySQL, cho phép người sử dụng có thể dễ dàng xuất bản &amp;quản trị các nội dung của họ lên Internet hoặc Intranet.</p><p> NukeViet được sử dụng ở nhiều website, từ những website cá nhân cho tới những hệ thống website doanh nghiệp, nó cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng bằng cách cài thêm các module, block... NukeViet có thể dễ dàng cài đặt, dễ dàng quản lý kể cả với những người mới sử dụng.</p><p style="text-align: justify;"> NukeViet là giải pháp hoàn hảo cho các Website từ cá nhân cho tới các doanh nghiệp. NukeViet là bộ mã nguồn chất lượng cao, được phát hành theo giấy phép mã nguồn mở nên việc sử dụng NukeViet hoàn toàn miễn phí. Với người sử dụng cá nhân, tất cả đều có thể tự tạo cho mình một website chuyên nghiệp mà không mất bất cứ chi phí nào. Với những nhà phát triển Web, sử dụng NukeViet có thể nhanh chóng xây dựng các hệ thống lớn mà việc lập trình không đòi hỏi quá nhiều thời gian vì NukeViet đã xây dựng sẵn hệ thống quản lý ưu việt.</p> <p>Thông tin chi tiết về NukeViet có thể tìm thấy ở bách khoa toàn thư mở Wikipedia: <a href="http://vi.wikipedia.org/wiki/NukeViet">http://vi.wikipedia.org/wiki/NukeViet</a></p><p style="font-weight: bold;"> II. Thông tin về diễn đàn NukeViet:</p><p> Diễn đàn NukeViet hoạt động trên website: <a href="http://nukeviet.vn/"><span style="font-weight: bold;">http://nukeviet.vn</span></a> hiện có trên 22.000 thành viên thực gồm học sinh, sinh viên &amp; nhiều thành phần khác thuộc giới trí thức ở trong và ngoài nước.</p><p> Là một diễn đàn của các nhà quản lý website, rất nhiều thành viên trong diễn đàn NukeViet là cán bộ, lãnh đạo từ đủ mọi lĩnh vực: công nghệ thông tin, xây dựng,văn hóa - xã hội, thể thao, dịch vụ - du lịch... từ cử nhân, bác sĩ, kỹ sư cho đến bộ đội, công an...</p><p> Nhiều học sinh, sinh viên tham gia diễn đàn NukeViet, đam mê mã nguồn mở và đã thành công với chính công việc mà họ yêu thích.</p>', 'http://nukeviet.vn/vi/news/Tin-tuc/Gioi-thieu-ve-ma-nguon-mo-NukeViet-5/', 1, 0, 1, 1, 1, 0),
(6, '<div style="text-align: center;"> <h2 style="color: rgb(255, 69, 0);"> THƯ MỜI HỢP TÁC</h2> <h4> TRONG VIỆC LIÊN KẾT QUẢNG CÁO, CUNG CẤP HOSTING THỬ NGHIỆM PHÁT TRIỂN</h4> <h2> MÃ NGUỒN MỞ NUKEVIET</h2> </div> <p style="text-align: justify; line-height: 130%; font-weight: bold;">  </p> <p style="text-align: justify; line-height: 130%; font-weight: bold;"> Kính gửi: QUÍ KHÁCH VÀ ĐỐI TÁC</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> Lời đầu tiên, Ban giám đốc công ty cổ phần Phát Triển Nguồn Mở Việt Nam (VINADES.,JSC) xin gửi đến Quý đối tác lời chào trân trọng, lời chúc may mắn và thành công. Tiếp đến chúng tôi xin được giới thiệu và ngỏ lời mời hợp tác kinh doanh.</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> VINADES.,JSC ra đời nhằm chuyên nghiệp hóa việc phát hành mã nguồn mở NukeViet. Đồng thời khai thác các dự án từ NukeViet tạo kinh phí phát triển bền vững cho mã nguồn này.</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> NukeViet là hệ quản trị nội dung, là website đa năng đầu tiên của Việt Nam do cộng đồng người Việt phát triển. Có nhiều lợi thế như cộng đồng người sử dụng đông đảo nhất tại Việt Nam hiện nay, sản phẩm thuần Việt, dễ sử dụng, dễ phát triển.</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> Hiện tại VINADES.,JSC đang tiến hành phát triển bộ mã nguồn NukeViet phiên bản 3.0 – một thế hệ CMS hoàn toàn mới với nhiều tính năng ưu việt, được đầu tư bài bản với kinh phí lớn.</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> Với thiện chí hợp tác cùng phát triển VINADES.,JSC xin trân trọng gửi lời mời hợp tác đến Quý đối tác là các công ty cung cấp tên miền - hosting, các doanh nghiệp quan tâm và mong muốn hợp tác cùng VINADES để cùng thực hiện chung các hoạt động kinh doanh nhằm gia tăng giá trị, quảng bá thương hiệu chung cho cả hai bên.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm; font-weight: bold;"> Phương thức hợp tác nhưsau:</p> <p style="text-align: justify; line-height: 130%; font-weight: bold;"> 1.Quảng cáo, trao đổi banner, liên kết website:</p> <p style="text-align: justify; line-height: 130%;"> a. Mô tả hình thức:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Quảng cáo trên website &amp; hệ thống kênh truyền thông của 2 bên.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Quảng cáo trên các phiên bản phát hành của mã nguồn mở NukeViet.</p> <p style="text-align: justify; line-height: 130%;"> b, Lợi ích:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Quảng bá rộng rãi cho đối tượng của 2 bên.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Giảm chi phí quảng bá cho 2 bên.</p> <p style="text-align: justify; line-height: 130%;"> c, Trách nhiệm:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Hai bên sẽ thỏa thuận và đưa quảng cáo của mình vào website của đối tác. Thỏa thuận vị trí, kích thước và trang đặt banner quảng cáo nhằm mang lại hiệu quả cao cho cả hai bên.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Mở forum hỗ trợ người dùng hosting ngay tại diễn đàn NukeViet.VN để quý công ty dễ dàng hỗ trợ người sử dụng cũng như thực hiện các kế hoạch truyền thông của mình tới cộng đồng NukeViet.</p> <p style="text-align: justify; line-height: 130%; font-weight: bold;"> 2.Hợp tác cung cấp hosting thử nghiệm NukeViet:</p> <p style="text-align: justify; line-height: 130%;"> a. Mô tả hình thức:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Hai bên ký hợp đồng nguyên tắc &amp; thỏa thuận hợp tác trong việc hợp tác phát triển mã nguồn mở NukeViet. Theo đó:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> + Phía đối tác cung cấp mỗi loại 1 gói hosting đại lý cho VINADES.,JSC để chúng tôi test trong quá trình phát triển mã nguồn mở NukeViet, để đảm bảo NukeViet sẵn sàng tương thích với hosting của quý khách ngay khi ra mắt.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> + VINADES.,JSC sẽ công báo thông tin chứng nhận host của phía đối tác là phù hợp, tương thích tốt nhất với NukeViet tới cộng đồng những người phát triển và sử dụng NukeViet.</p> <p style="text-align: justify; line-height: 130%;"> b. Lợi ích:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Mở rộng thị trường theo cả hướng đối tượng.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Tiết kiệm chi phí –nâng cao hiệu quả kinh doanh.</p> <p style="text-align: justify; line-height: 130%;"> c. Trách nhiệm:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Bên đối tác cung cấp miễn phí host để VINADES.,JSC thực hiện việc test tương thích mã nguồn NukeViet trên các gói hosting của đối tác.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - VINADES.,JSC công bố tới cộng đồng về kết quả chứng nhận chất lượng host của phía đối tác.</p> <p style="text-align: justify; line-height: 130%; font-weight: bold;"> 3,Hợp tác nhân lực hỗ trợ người sử dụng:</p> <p style="text-align: justify; line-height: 130%;"> a, Mô tả hình thức:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Hai bên sẽ hỗ trợ lẫn nhau trong quá trình giải quyết các yêu cầu của khách hàng.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> + Bên đối tác gửi các yêu cầu của khách hàng về mã nguồn NukeViet tới VINADES.,JSC</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> + VINADES gửi các yêu cầu của khách hàng có liên quan đến dịch vụ hosting tới phía đối tác.</p> <p style="text-align: justify; line-height: 130%;"> b, Lợi ích:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Giảm thiểu chi phí, nhân lực hỗ trợ khách hàng của cả 2 bên.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Tăng hiệu quả hỗ trợ khách hàng.</p> <p style="text-align: justify; line-height: 130%;"> c, Trách nhiệm:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Khi nhận được yêu cầu hỗ trợ VINADES hoặc bên đối tác cần ưu tiên xử lý nhanh gọn nhằm nâng cao hiệu quả của sự hợp tác song phưong này.</p> <p style="text-align: justify; line-height: 130%; font-weight: bold;"> 4. Các hình thức khác:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> Ngoài các hình thức đã đề xuất ở trên, là đơn vị phát hành mã nguồn mở NukeViet chúng tôi có thể phát hành quảng cáo trên giao diện phần mềm, trên các bài viết giới thiệu xuất hiện ngay sau khi cài đặt phần mềm… chúng tôi tin tưởng rằng với lượng phát hành lên đến hàng chục ngàn lượt tải về cho mỗi phiên bản là một cơ hội quảng cáo rất hiệu quả đến cộng đồng Webmaster Việt Nam.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> Với mong muốn tạo nên cộng đồng phát triển và sử dụng NukeViet rộng lớn đúng như mục tiêu đề ra,chúng tôi luôn linh động trong các hình thức hợp tác nhằm mang lại sự thuận tiện cho đối tác cũng như mục tiêu hợp tác đa phương. Chúng tôi sẽ tiếp nhận các hình thức hợp tác khác mà bên đối tác trình bày hợp lý và hiệu quả, mong nhận được thêm nhiều hình thức hợp tác khác từ đối tác. Phương châm của chúng tôi “Cùng hợp tác để phát triển”.</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> Trân trọng cảm ơn, rất mong được hợp tác cùng quý vị.</p> <span style="font-weight: bold;">Thông tin liên hệ:</span> <p style="text-align: justify;"> CÔNG TY CỔ PHẦN PHÁT TRIỂN NGUỒN MỞ VIỆT NAM (VINADES.,JSC)</p> <p style="text-align: justify; text-indent: 1cm;"> Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p> <p style="text-align: justify; text-indent: 1cm;"> Điện thoại: (84-4) 85 872007</p> <p style="text-align: justify; text-indent: 1cm;"> Fax: (84-4) 35 500 914</p> <p style="text-align: justify; text-indent: 1cm;"> Website: <a href="http://www.vinades.vn/">www.vinades.vn</a> – <a href="http://www.nukeviet.vn/">www.nukeviet.vn</a></p> <p style="text-align: justify; text-indent: 1cm;"> Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a></p>', 'http://vinades.vn/vi/news/thong-cao-bao-chi/Thu-moi-hop-tac-6/', 1, 0, 1, 1, 1, 0),
(7, 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài là các lập trình viên PHP và MySQL, Chuyên Viên Đồ Hoạ để làm việc cho công ty, hiện thực hóa ước mơ một nguồn mở chuyên nghiệp cho Việt Nam vươn ra thế giới.<br /><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân.<br /><p style="text-align: justify;"> <strong>1. Vị trí dự tuyển</strong>: Chuyên viên đồ hoạ; Lập trình viên.</p><p style="text-align: justify;"> <strong>2. Mô tả công việc:</strong></p>Với vị trí lập trình viên PHP &amp; MySQL: Viết module trên nền NukeViet, tham gia phát triển hệ thống NukeViet.<br /><p style="text-align: justify;"> Nếu là chuyên viên đồ họa, kỹ thuật viên cắt giao diện... bạn có thể đảm nhiệm một trong các công việc sau:</p><p style="margin-left: 40px; text-align: justify;"> + Vẽ và cắt giao diện.</p><p style="margin-left: 40px; text-align: justify;"> + Valid CSS, xHTML.</p><p style="margin-left: 40px; text-align: justify;"> + Ghép giao diện cho hệ thống.</p><strong>3. Yêu cầu: </strong><br /><br />Lập trình viên PHP &amp; MySQL: Thành thạo PHP, MySQL. Biết CSS, XHTML, JavaScript là một ưu thế.<br /><br />Chuyên viên đồ họa: Sử dụng thành thạo một trong các phần mềm Photoshop, illustrator, 3Dmax, coreldraw. Biết CSS, xHTML.<p style="text-align: justify; margin-left: 40px;"> + Trình độ tối thiểu cho người làm đồ họa web: Biết vẽ giao diện hoặc cắt PSD ra xHTML &amp; CSS.</p><p style="text-align: justify; margin-left: 40px;"> + Ưu tiên người cắt giao diện đạt chuẩn W3C (Test trên Internet Explorer 7+, FireFox 3+, Chrome 8+, Opera 10+)</p>Chúng tôi ưu tiên các ứng viên có kỹ năng làm việc độc lập, làm việc theo nhóm, có tinh thần trách nhiệm cao, chủ động trong công việc.<br /><p style="text-align: justify;"> <strong>4: Quyền lợi:</strong></p><p style="text-align: justify;"> <strong>-</strong> Lương: thoả thuận, trả qua ATM.</p><p style="text-align: justify;"> - Thưởng theo dự án, các ngày lễ tết.</p><p style="text-align: justify;"> - Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</p><p style="text-align: justify;"> <strong>5. Thời gian làm việc:</strong> Toàn thời gian cố định hoặc làm <strong>online</strong>.</p><p style="text-align: justify;"> <strong>6. Hạn nộp hồ sơ</strong>: Không hạn chế, vui lòng kiểm tra tại <a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a></p><p style="text-align: justify;"> <strong>7. Hồ sơ bao gồm:</strong></p><p style="text-align: justify;"> &nbsp;&nbsp;<strong>&nbsp; *&nbsp; Cách thức đăng ký dự tuyển</strong>: Làm Hồ sơ xin việc (file mềm) và gửi về hòm thư tuyendung@vinades.vn<br /> &nbsp;&nbsp;&nbsp; *&nbsp; <strong>Nội dung hồ sơ xin việc file mềm gồm</strong>:<br /> <br /> <strong>+ Đơn xin việc:</strong> Tự biên soạn.</p><p style="text-align: justify;"> <strong>+ Thông tin ứng viên:</strong> Theo mẫu của VINADES.,JSC (dowload tại đây: <strong><u><a href="http://vinades.vn/vi/download/Thong-tin-ung-vien/Mau-ly-lich-ung-vien/" target="_blank" title="Mẫu lý lịch ứng viên">Mẫu lý lịch ứng viên</a></u></strong>)<br /> <br /> Chi tiết vui lòng tham khảo tại: <a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br /> <br /> Mọi thắc mắc vui lòng liên hệ:<br /> <br /> <strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br /> Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div> - Tel: +84-4-85872007 - Fax: +84-4-35500914<br /> - Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a> - Website: <a href="http://www.vinades.vn/">http://www.vinades.vn</a></div>', 'http://vinades.vn/vi/news/Tuyen-dung/', 2, 0, 1, 1, 1, 0),
(8, '<p style="text-align: justify;"> <span style="font-size:16px;"><strong>Giảm giá tới 90% giá module, ngày nào cũng là ngày &quot;mua chung&quot; trên webnhanh.vn!</strong></span></p><p style="text-align: justify;"> Như thông báo trên webnhanh.vn, chương trình &quot;<a href="http://webnhanh.vn/vi/thiet-ke-web/detail/Mua-chung-tren-Webnhanhvn-se-giam-gia-90-gia-module-da-cong-bo-245/" target="_blank"><strong>mua chung module</strong></a>&quot; nằm trong chính sách chung của webnhanh.vn trong việc hỗ trợ phát triển mã nguồn mở, giúp cho mọi người được hưởng những dịch vụ thiết kế website tốt nhất với chi phí thấp nhất. Tham gia chương trình này, bạn chỉ phải trả số tiền bằng 1/10 giá trị module mà vẫn được sở hữu module với tính năng hấp dẫn mà bạn&nbsp; mong muốn.<br /> <br /> Cụ thể, các module trong <a href="http://webnhanh.vn/vi/nvresources/cat/Modules-1/" target="_blank"><strong>kho module của webnhanh.vn</strong></a> đang chờ hoàn thiện sẽ được giảm giá tới 90% nếu khách hàng đăng ký mua chung module. Tuy nhiên sau 2 tháng thực hiện, Ban Quản Trị webnhanh.vn thấy rằng khả năng xuất hiện nhu cầu cùng mua chung 1 sản phẩm và dịch vụ có tính đặc thù như code dành cho web là rất thấp. Chính vì thế webnhanh.vn đã giảm giá đồng loạt các module trên webnhanh.vn để khách hàng có nhu cầu sẽ có nhiều cơ hội được sử dụng các module mà mình mong muốn cung cấp lên website.<br /> <br /> Đại đa số các module sẽ được giảm giá xuống mức giá siêu rẻ để đảm bảo mọi người đều có khả năng sử dụng. Đặc biệt với các module có mức giá từ 10-20 triệu đồng sẽ giảm giá xuống còn ở mức 1-5 triệu đồng.<br /> <br /> <span style="font-size:16px;"><strong>Giá rẻ hơn, nhiều giao diện hơn cho web</strong></span></p><p style="text-align: justify;"> Ngoài việc giảm giá <a href="http://webnhanh.vn/vi/nvresources/cat/Giao-dien-3/" target="_blank"><strong>các giao diện website</strong></a> do VINADES.,JSC thiết kế (từ mức giá 2 triệu đồng xuống còn 300 đến 700 ngàn đồng). Webnhanh.vn cũng sẽ cải thiện kho giao diện của mình bằng cách đưa vào sử dụng các mẫu giao diện của các nhà thiết kế giao diện khác với giá trung bình khoảng 300 ngàn đồng (chi phí chuyển template thành giao diện có thể cài đặt cho website). Khách hàng cũng có thể gửi mẫu giao diện (đã cắt HTML) để chúng tôi thực hiện việc ghép giao diện với mức giá 300-500 ngàn đồng (áp dụng mô hình giá chia sẻ của VINADES.,JSC&nbsp; trong <strong><a href="http://vinades.vn/vi/news/San-pham/Thiet-ke-giao-dien-14/" target="_blank">thiết kế giao diện web</a></strong> <sup>(*)</sup>).<br /> <br /> <span style="font-size:16px;"><strong>Giảm giá các gói web dựng sẵn, nâng cao chất lượng và cấu hình dịch vụ</strong></span></p><p style="text-align: justify;"> Cơ cấu chất lượng sản phẩm và dịch vụ cũng thay đổi theo hướng nâng cao rõ rệt. Ngoài việc giảm giá các <strong><a href="http://webnhanh.vn/vi/nvresources/package/" target="_blank">gói web dựng sẵn</a></strong>, webnhanh.vn đồng thời nâng cao chất lượng các dịch vụ đi kèm của các gói web này. Theo đó ngoài việc kéo dài thời gian bảo hành miễn phí lên 12 tháng, đồng thời webnhanh.vn cũng kéo dài thời gian sử dụng hosting miễn phí lên 12 tháng. Với mức hỗ trợ này, website thiết kế trên webnhanh.vn đảm bảo chất lượng cao và mức giá còn rẻ hơn cả các nhà cung cấp dịch vụ web giá rẻ. Đây là cơ hội rất lớn cho <strong><a href="http://webnhanh.vn/vi/dealers/" target="_blank">các đại lý của webnhanh.vn</a></strong> để tạo nên lợi thế cạnh tranh về chất lượng và giá cả dịch vụ.<br /> <br /> <strong><sup>(*)</sup> &quot;Giá chia sẻ&quot;</strong> là mức giá tiết kiệm cho khách hàng, nếu mua với mức giá này khách hàng sẽ tiết kiệm chi phí thiết kế giao diện một cách tối đa mà vẫn được toàn quyền sử dụng mẫu giao diện đã đặt hàng. Webnhanh.vn sẽ giữ lại mẫu giao diện này và đưa vào thư viện giao diện để cung cấp cho các khách hàng khác. Mô hình &quot;Giá chia sẻ&quot; sử dụng cho các khách hàng không quá khắt khe về việc đảm bảo tính duy nhất của mẫu giao diện đồng thời giúp webnhanh.vn làm phong phú thêm kho giao diện của mình.</p><strong>Chú ý:</strong> Ngoài việc cung cấp các gói web dựng sẵn với chi phí thấp phục vụ người dùng phổ thông, <strong><a href="http://vinades.vn">VINADES.,JSC</a></strong> vẫn duy trì dịch vụ thiết kế giao diện riêng và thiết kế website theo yêu cầu để phục vụ những khách hàng có nhu cầu riêng biệt và cao cấp hơn, khách hàng có nhu cầu vui lòng truy cập <a href="http://vinades.vn" target="_blank">http://vinades.vn</a> hoặc liên hệ nhân viên kinh doanh của VINADES.,JSC để được tư vấn và báo giá dịch vụ.<br /><br /><div style="text-align: justify;"> Như vậy, cùng với việc tham gia cung cấp hosting chuyên nghiệp dành cho NukeViet của các nhà cung cấp hosting trong và ngoài nước như <strong><a href="http://vinades.vn/vi/news/Doi-tac/VINADES-JSC-va-DIGISTAR-hop-tac-trong-viec-phat-trien-ma-nguon-mo-NukeViet-17/">DIGISTAR</a></strong>, <strong><a href="http://nukeviet.vn/vi/news/the-gioi-cong-nghe/TMDHosting-cung-cap-dich-vu-hosting-chuyen-NukeViet-64/" title="TMDHosting cung cấp dịch vụ hosting chuyên NukeViet">TMDHosting</a></strong> hay <strong><a href="http://nukeviet.vn/vi/news/the-gioi-cong-nghe/SiteGround-cung-cap-dich-vu-hosting-chuyen-NukeViet-59/" title="SiteGround cung cấp dịch vụ hosting chuyên NukeViet">SiteGround</a></strong>, <a href="http://nukeviet.vn/vi/news/the-gioi-cong-nghe/website-dau-tien-thiet-ke-website-va-ban-code-chuyen-nghiep-danh-cho-NukeViet-67/" title="Webnhanh.vn - website đầu tiên thiết kế website và bán code chuyên nghiệp dành cho NukeViet"><strong>Webnhanh.vn</strong> là website đầu tiên có dịch vụ thiết kế website và bán code chuyên nghiệp</a> dành riêng cho NukeViet. Sự chuyên nghiệp hóa trong các khâu từ phát triển đến cung cấp dịch vụ cho mã nguồn mở NukeViet sẽ mở ra một cơ hội phát triển mới cho người sử dụng web ở Việt Nam.</div>', 'http://nukeviet.vn/vi/news/website/website-dau-tien-thiet-ke-website-va-ban-code-chuyen-nghiep-danh-cho-NukeViet-67/', 2, 0, 1, 1, 1, 0),
(9, '<div> Nhắc đến các hệ thống quản trị nội dung (Content Management System – CMS) để quản lý các cổng thông tin điện tử trên Internet, không ít người sẽ nhắc đến các bộ công cụ như Joomla hay Wordpress. Tuy nhiên, có một sản phẩm hoàn toàn thuần Việt, do người Việt xây dựng không hề thua kém những sản phẩm trên cả về tính năng lẫn khả năng ứng dụng, đó là NukeViet của nhóm tác giả thuộc Công ty Cổ phần phát triển nguồn mở Việt Nam (VINADES).</div><div> &nbsp;</div><div> Với NukeViet, người dùng tại Việt Nam sẽ vượt qua các trở ngại về rào cản ngôn ngữ, có thể xây dựng và vận hành các trang web một cách dễ dàng nhất, đồng thời nhận được sự hỗ trợ của cộng đồng người dùng và các nhà phát triển cũng chính là người Việt Nam.</div><div> &nbsp;</div><div> Mới đây nhất, Ban giám khảo <span style="FONT-STYLE: italic">Giải thưởng Nhân Tài Đất Việt 2011</span> đã quyết định đưa NukeViet vào danh sách các sản phẩm đã vượt qua vòng sơ khảo để tranh tài tại vòng chung khảo của <span style="FONT-STYLE: italic">Giải Thưởng Nhân Tài Đất Việt 2011</span> diễn ra vào ngày 17-18/11 tới đây.</div><div> &nbsp;</div><div> <span style="FONT-WEIGHT: bold">Những ý tưởng giúp hình thành nên sản phẩm “thuần Việt”</span></div><div> &nbsp;</div><div> Theo chia sẻ của đại diện nhóm tác giả, năm 2004, anh Nguyễn Anh Tú, một lưu học sinh người Việt tại Nga với ý tưởng xây dựng một website để kết nối cộng đồng sinh viên du học đã sử dụng bộ CMS mã nguồn mở PHP-Nuke để thực hiện.</div><div> &nbsp;</div><div> Sau đó, anh Nguyễn Anh Tú đã phát triển và cải tiến bộ mã nguồn mở PHP-Nuke để chia sẻ cho các thành viên có nhu cầu xây dựng website một cách đơn giản và thuận tiện hơn. Được sự đón nhận của đông đảo người sử dụng, bộ mã nguồn đã liên tục được phát triển và trở thành một ứng dụng thuần Việt với tên gọi NukeViet. NukeViet đã nhanh chóng trở nên phổ biến trong giới các nhà xây dựng và phát triển website tại Việt Nam.</div><div> &nbsp;</div><div style="TEXT-ALIGN: center"> <div> <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 10pt"><img _fl="" align="middle" src="http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/11/NukeViet-1_4b905.jpg" style="MARGIN: 5px" width="450" /></span></div></div><div style="TEXT-ALIGN: center"> <span style="FONT-SIZE: 10pt"><span style="FONT-FAMILY: Tahoma">Giao diện một website tin tức được xây dựng bằng NukeViet</span></span></div><div> &nbsp;</div><div> Trong quá trình phát triển NukeViet, có một điều đội ngũ kỹ thuật luôn trăn trở là làm sao để có thể nâng cao tỉ lệ đóng góp của người Việt vào trong mã nguồn sản phẩm. Chính vì ý thức được điều này nên mức độ thuần Việt của sản phẩm ngày càng được nâng cao trong từng phiên bản phát hành. Cho đến phiên bản 3.0 (phát hành tháng 10 năm 2010) thì NukeViet đã thực sự trở thành một sản phẩm mã nguồn mở riêng của Việt Nam với 100% dòng code được viết mới.</div><div> &nbsp;</div><div> Kể từ đây, cộng đồng mã nguồn mở Việt Nam đã có riêng một bộ mã nguồn thuần Việt, tự hào sánh bước ngang vai cùng các cộng đồng mã nguồn mở khác trên thế giới. NukeViet ra đời đã giúp cộng đồng mạng Việt Nam giải quyết nhu cầu và mong muốn có một bộ mã nguồn mở của riêng Việt Nam, giúp phát triển hệ thống website của người Việt một cách an toàn nhất, đảm bảo nhất.</div><div> &nbsp;</div><div style="TEXT-ALIGN: center"> <div> <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 10pt"><img _fl="" align="middle" src="http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/11/NukeViet-2_600d0.jpg" style="MARGIN: 5px" width="450" /></span></div></div><div style="TEXT-ALIGN: center"> <span style="FONT-SIZE: 10pt"><span style="FONT-FAMILY: Tahoma">Một website bán hành trực tuyến xây dựng bằng NukeViet</span></span></div><div> &nbsp;</div><div> NukeViet là CMS mã nguồn mở đầu tiên của Việt Nam có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là VINADES.,JSC - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.</div><div> &nbsp;</div><div> <span style="FONT-WEIGHT: bold">Khả năng ứng dụng và những ưu điểm của NukeViet</span></div><div> &nbsp;</div><div> Kể từ khi ra đời và trải qua một quá trình dài phát triển, NukeViet hiện được sử dụng ở nhiều website, từ những website cá nhân cho tới những hệ thống website doanh nghiệp. NukeViet cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng bằng cách cài thêm các module, block...&nbsp;</div><div> &nbsp;</div><div> NukeViet chủ yếu được sử dụng làm trang tin tức &nbsp;nhờ module News tích hợp sẵn trong NukeViet được viết rất công phu, nó lại đặc biệt phù hợp với yêu cầu và đặc điểm sử dụng cho hệ thống tin tức. NukeViet có thể dễ dàng cài đặt, dễ dàng quản lý kể cả với những người mới sử dụng do đó thường được những đối tượng người dùng không chuyên ưa thích.</div><div> &nbsp;</div><div style="TEXT-ALIGN: center"> <div> <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 10pt"><img _fl="" align="middle" src="http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/11/NukeViet-4_416a1.jpg" style="MARGIN: 5px" width="450" /></span></div></div><div style="TEXT-ALIGN: center"> <span style="FONT-SIZE: 10pt"><span style="FONT-FAMILY: Tahoma">Website phòng Giáo dục và Đào tạo Lạng Giang được xây dựng trên mã nguồn NukeViet</span></span></div><div> &nbsp;</div><div> NukeViet có mã nguồn mở do đó việc sử dụng NukeViet là hoàn toàn miễn phí cho tất cả mọi người trên thế giới. Từ phiên bản 2.0 trở về trước, đối tượng người dùng chủ yếu của NukeViet là người Việt vì những đặc điểm của bản thân mã nguồn (có nguồn gốc từ PHP-Nuke) và vì chính sách của nhóm phát triển là: &quot;hệ thống Portal dành cho người Việt&quot;. Tuy nhiên, kể từ phiên bản 3.0, đội ngũ phát triển NukeViet định hướng đưa NukeViet ra cộng đồng quốc tế với hỗ trợ thêm nhiều ngôn ngữ.&nbsp;</div><div> &nbsp;</div><div> Trên thực tế, với những ưu điểm vượt trội của mình, NukeViet 3 đã được ứng dụng ở hàng ngàn website khác nhau. Đặc biệt, không ít các cơ quan, tổ chức của Nhà nước đã tin tưởng sử dụng mã nguồn NukeViet để xây dựng cổng thông tin điện tử của mình, như &nbsp;Cổng thông tin tích hợp 1 cửa cho Phòng giáo dục Lạng Giang, cổng thông tin 2 chiều - Công ty cổ phần đầu tư tài chính công đoàn dầu khí Việt Nam, Hệ thống tra cứu điểm, tra cứu văn bằng - Cổng thông tin Sở GD&amp;ĐT Quảng Ninh, Website viện y học cổ truyền Quân Đội…</div><div> &nbsp;</div><div> Tất cả các dự án trên đều được khách hàng đánh giá rất cao về tính ứng dụng, hiệu quả do tiết kiệm chi phí và đáp ứng rất tốt nhu cầu sử dụng của các đơn vị.&nbsp;</div><div> &nbsp;</div><div> <span style="FONT-WEIGHT: bold">Hướng phát triển trong tương lai và những kỳ vọng trước mắt</span></div><div> &nbsp;</div><div> Với ý nghĩa là phần mềm quản lý website (chiếm tới 90% các giao tiếp và tương tác trực tiếp với người sử dụng trên môi trường internet), khi phát triển, NukeViet sẽ trở thành một công cụ truyền thông rất mạnh, có thể đem lại những hiệu quả to lớn khác. Nhóm phát triển sẽ phát huy lợi thế này để phát triển sản phẩm.</div><div> &nbsp;</div><div> Nhóm phát triển cũng muốn tăng cường các khả năng liên kết, chia sẻ và tích hợp dữ liệu giữa các hệ thống khác nhau nhằm tạo nên một mạng lưới lớn, rộng khắp và hoàn chỉnh, có thể huy động sức mạnh tổng lực, thực hiện các nhiệm vụ xã hội khác trên mã nguồn NukeViet của mình.</div><div> &nbsp;</div><div> NukeViet khi được kết hợp với xu thế phát triển của điện toán đám mây sẽ trở thành một nền tảng giúp phát triển nhiều hệ thống dịch vụ trực tuyến có thể thu hút nhiều người dùng với giá trị thương mại cao.</div><div> &nbsp;</div><div style="TEXT-ALIGN: center"> <div> <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 10pt"><img _fl="" align="middle" src="http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/11/NukeViet-3_46e98.jpg" style="MARGIN: 5px" width="450" /></span></div></div><div style="TEXT-ALIGN: center"> <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 10pt">Giao diện soạn thảo nội dung trên NukeViet</span></div><div> &nbsp;</div><div> Với việc gửi sản phẩm dự thi tại <span style="FONT-STYLE: italic">Giải thưởng Nhân Tài Đất Việt 2011</span>, nhóm tác giả của NukeViet hy vọng mã nguồn mở của mình sẽ đạt vị trí cao tại Giải thưởng, như một cách thức để quảng bá rộng rãi sản phẩm, được thừa nhận và hỗ trợ sử dụng trong các lĩnh vực mà nó có thể phục vụ tốt và đem lại hiệu quả kinh tế, xã hội cao như: lĩnh vực giáo dục, lĩnh vực hành chính… để các bộ-ban-ngành, các cơ quan hành chính, chính quyền địa phương nhìn thấy giá trị và hiệu quả to lớn của mã nguồn mở NukeViet để triển khai NukeViet phục vụ các cơ quan này. NukeViet sẽ giúp hiện thực hóa cải cách hành chính và góp phần đẩy nhanh thủ tục một cửa một cách tiết kiệm mà vẫn đạt hiệu quả cao nhất.</div><div> &nbsp;</div><div> Ngoài ra, uy tính của Giải thưởng, nhóm tác giả NukeViet hy vọng sẽ đem NukeViet đến nhiều người hơn, để cả xã hội được sử dụng thành quả lớn lao của bộ mã nguồn mở được coi là biểu tượng và đại diện tiểu biểu cho sự phát triển và thành công của mã nguồn mở Việt Nam. Không chỉ thế, mở ra cơ hội tiếp cận và học hỏi công nghệ cho hàng ngàn học sinh, sinh viên, qua đó có được các kiến thức đầy đủ về công nghệ web, về internet và vô số các kỹ năng làm việc trên máy tính khác mà có thể do vô tình hay cố ý, trong quá trình tìm hiểu, học tập và vận hành NukeViet mà họ đã có được.</div><div> &nbsp;</div><div> Với những ứng dụng rộng rãi mà NukeViet đã có được kể từ khi ra mắt và và trải qua thời gian dài phát triển, Hội đồng <span style="FONT-STYLE: italic">Giám khảo Giải Thưởng Nhân &nbsp;Tài Đất Việt</span> đã đánh giá rất cao những ưu điểm và thế mạnh của NukeViet để đưa sản phẩm vào danh sách 17 sản phẩm sẽ tranh tài tại vòng Chung khảo của <span style="FONT-STYLE: italic">Giải Thưởng Nhân Tài Đất Việt 2011</span> diễn ra vào ngày 17-18/11 tới đây.</div><div> &nbsp;</div><div> Bạn đọc có thể tìm hiểu thêm về NukeViet tại <span style="FONT-WEIGHT: bold"><a href="http://nukeviet.vn/vi/news/Bao-chi-viet/">http://nukeviet.vn/</a>.</span></div>', 'http://dantri.com.vn/c119/s119-537812/nukeviet-cong-cu-ma-nguon-mo-cho-cong-dong-thiet-ke-website-vn.htm', 1, 0, 1, 1, 1, 0);
INSERT INTO `gt_vi_teest_bodyhtml_1` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(10, 'Cả hội trường như vỡ òa, rộn tiếng vỗ tay, tiếng cười nói chúc mừng các nhà khoa học, các nhóm tác giả đoạt Giải thưởng Nhân tài Đất Việt năm 2011. Năm thứ 7 liên tiếp, Giải thưởng đã phát hiện và tôn vinh nhiều tài năng của đất nước.<div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/01_b7d3f.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Sân khấu trước lễ trao giải.</span></div><div> &nbsp;</div><div align="center"> &nbsp;</div><div align="left"> Cơ cấu Giải thưởng của Nhân tài Đất Việt 2011 trong lĩnh vực CNTT bao gồm 2 hệ thống giải dành cho “Sản phẩm có tiềm năng ứng dụng” và “Sản phẩm đã ứng dụng rộng rãi trong thực tế”. Mỗi hệ thống giải sẽ có 1 giải Nhất, 1 giải Nhì và 1 giải Ba với trị giá giải thưởng tương đương là 100 triệu đồng, 50 triệu đồng và 30 triệu đồng cùng phần thưởng của các đơn vị tài trợ.</div><div align="center"> &nbsp;</div><div align="center"> <div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/03_f19bd.jpg" width="350" /></div> <div align="center"> Nhiều tác giả, nhóm tác giả đến lễ trao giải từ rất sớm.</div></div><p> Giải thưởng Nhân tài Đất Việt 2011 trong lĩnh vực Khoa học Tự nhiên được gọi chính thức là Giải thưởng Khoa học Tự nhiên Việt Nam sẽ có tối đa 6 giải, trị giá 100 triệu đồng/giải dành cho các lĩnh vực: Toán học, Cơ học, Vật lý, Hoá học, Các khoa học về sự sống, Các khoa học về trái đất (gồm cả biển) và môi trường, và các lĩnh vực khoa học liên ngành hoặc đa ngành của hai hoặc nhiều ngành nói trên. Viện Khoa học và Công nghệ Việt Nam thành lập Hội đồng giám khảo gồm các nhà khoa học tự nhiên hàng đầu trong nước để thực hiện việc đánh giá và trao giải.</p><div> Sau thành công của việc trao Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y dược năm 2010, Ban Tổ chức tiếp tục tìm kiếm những chủ nhân xứng đáng cho Giải thưởng này trong năm 2011.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/07_78b85.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam Lê Khả Phiêu tới&nbsp;dự Lễ trao giải.</span></div><div> &nbsp;</div><div> 45 phút trước lễ trao giải, không khí tại Cung Văn hóa Hữu nghị Việt - Xô đã trở nên nhộn nhịp. Sảnh phía trước Cung gần như chật kín. Rất đông bạn trẻ yêu thích công nghệ thông tin, sinh viên các trường đại học đã đổ về đây, cùng với đó là những bó hoa tươi tắn sẽ được dành cho các tác giả, nhóm tác giả đoạt giải.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/09_aef87.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Phó Chủ tịch nước CHXHCN Việt Nam Nguyễn Thị Doan.</span></div><div> &nbsp;</div><div> Các vị khách quý cũng đến từ rất sớm. Tới tham dự lễ trao giải năm nay có ông Lê Khả Phiêu, nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam; bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCN Việt Nam; ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam; ông Nguyễn Bắc Son, Bộ trưởng Bộ Thông tin và Truyền thông; ông Đặng Ngọc Tùng, Chủ tịch Tổng Liên đoàn lao động Việt Nam; ông Phạm Văn Linh, Phó trưởng ban Tuyên giáo Trung ương; ông Đỗ Trung Tá, Phái viên của Thủ tướng Chính phủ về CNTT, Chủ tịch Hội đồng Khoa học công nghệ quốc gia; ông Nguyễn Quốc Triệu, nguyên Bộ trưởng Bộ Y tế, Trưởng Ban Bảo vệ Sức khỏe TƯ; bà Cù Thị Hậu, Chủ tịch Hội người cao tuổi Việt Nam; ông Lê Doãn Hợp, nguyên Bộ trưởng Bộ Thông tin Truyền thông, Chủ tịch Hội thông tin truyền thông số…</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/08_ba46c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Bộ trưởng Bộ Thông tin và Truyền thông Nguyễn Bắc Son.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/06_29592.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Giáo sư - Viện sỹ Nguyễn Văn Hiệu.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/04_051f2.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Bộ trưởng Bộ Y tế Nguyễn Quốc Triệu.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/05_c7ea4.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam.</span></div><p> Do tuổi cao, sức yếu hoặc bận công tác không đến tham dự lễ trao giải nhưng Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang cũng gửi lẵng hoa đến chúc mừng lễ trao giải.</p><div> Đúng 20h, Lễ trao giải bắt đầu với bài hát “Nhân tài Đất Việt” do ca sỹ Thái Thùy Linh cùng ca sĩ nhí và nhóm múa biểu diễn. Các nhóm tác giả tham dự Giải thưởng năm 2011 và những tác giả của các năm trước từ từ bước ra sân khấu trong tiếng vỗ tay tán dương của khán giả.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/12_74abf.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN15999_3e629.jpg" style="MARGIN: 5px" width="450" /></div></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Tiết mục mở màn Lễ trao giải.</span></div><p> Trước Lễ trao giải Giải thưởng Nhân tài Đất Việt năm 2011, Đại tướng Võ Nguyên Giáp, Chủ tịch danh dự Hội Khuyến học Việt Nam, đã gửi thư chúc mừng, khích lệ Ban tổ chức Giải thưởng cũng như các nhà khoa học, các tác giả tham dự.</p><blockquote> <p> <em><span style="FONT-STYLE: italic">Hà Nội, ngày 16 tháng 11 năm 2011</span></em></p> <div> <em>Giải thưởng “Nhân tài đất Việt” do Hội Khuyến học Việt Nam khởi xướng đã bước vào năm thứ bảy (2005 - 2011) với ba lĩnh vực: Công nghệ thông tin, Khoa học tự nhiên và Y dược.</em></div></blockquote><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/thuDaituong1_767f4.jpg" style="MARGIN: 5px" width="400" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Thư của Đại tướng Võ Nguyên Giáp gửi BTC Giải thưởng Nhân tài đất Việt.</span></div><blockquote> <p> <em>Tôi gửi lời chúc mừng các nhà khoa học và các thí sinh được nhận giải thưởng “Nhân tài đất Việt” năm nay.</em></p> <p> <em>Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</em></p> <p> <em>Nhân ngày “Nhà giáo Việt Nam”, chúc Hội Khuyến học Việt nam, chúc các thầy giáo và cô giáo, với tâm huyết và trí tuệ của mình, sẽ đóng góp xứng đáng vào công cuộc đổi mới căn bản và toàn diện nền giáo dục nước nhà, để cho nền giáo dục Việt Nam thực sự là cội nguồn của nguyên khí quốc gia, đảm bảo cho mọi nhân cách và tài năng đất Việt được vun đắp và phát huy vì sự trường tồn, sự phát triển tiến bộ và bền vững của đất nước trong thời đại toàn cầu hóa và hội nhập quốc tế.</em></p> <p> <em>Chào thân ái,</em></p> <p> <strong><em>Chủ tịch danh dự Hội Khuyến học Việt Nam</em></strong></p> <p> <strong><em>Đại tướng Võ Nguyên Giáp</em></strong></p></blockquote><p> Phát biểu khai mạc Lễ trao giải, Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng Ban tổ chức, bày tỏ lời cám ơn chân thành về những tình cảm cao đẹp và sự quan tâm chăm sóc của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang đã và đang dành cho Nhân tài Đất Việt.</p><div> Nhà báo Phạm Huy Hoàn nhấn mạnh, Giải thưởng Nhân tài Đất Việt suốt 7 năm qua đều nhận được sự quan tâm của các vị lãnh đạo Đảng, Nhà nước và của toàn xã hội. Tại Lễ trao giải, Ban tổ chức luôn có vinh dự được đón tiếp&nbsp;các vị lãnh đạo&nbsp; Đảng và Nhà nước đến dự và trực tiếp trao Giải thưởng.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/15_4670c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Trưởng Ban tổ chức Phạm Huy Hoàn phát biểu khai mạc buổi lễ.</span></div><p> Năm 2011, Giải thưởng có 3 lĩnh vực được xét trao giải là CNTT, Khoa học tự nhiên và Y dược. Lĩnh&nbsp; vực CNTT đã đón nhận 204 sản phẩm tham dự từ mọi miền đất nước và cả nước ngoài như thí sinh Nguyễn Thái Bình từ bang California - Hoa Kỳ và một thí sinh ở Pháp cũng đăng ký tham gia.</p><div> “Cùng với lĩnh vực CNTT, năm nay, Hội đồng khoa học của Viện khoa học và công nghệ Việt Nam và Hội đồng khoa học - Bộ Y tế tiếp tục giới thiệu những nhà khoa học xuất&nbsp; sắc, có công trình nghiên cứu đem lại nhiều lợi ích cho xã hội trong lĩnh vực khoa học tự nhiên và lĩnh vực y dược. Đó là những bác sĩ tài năng, những nhà khoa học mẫn tuệ, những người đang ngày đêm thầm lặng cống hiến trí tuệ sáng tạo của mình cho xã hội trong công cuộc xây dựng đất nước.” - nhà báo Phạm Huy Hoàn nói.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/14_6e18f.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng BTC Giải thưởng và ông Phan Hoàng Đức, Phó TGĐ Tập đoàn VNPT nhận lẵng hoa chúc mừng của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang.</span></div><p> Cũng theo Trưởng Ban tổ chức Phạm Huy Hoàn, đến nay, vị Chủ tịch danh dự đầu tiên của Hội Khuyến học Việt Nam, Đại tướng Võ Nguyên Giáp, đã bước qua tuổi 100 nhưng vẫn luôn dõi theo và động viên từng bước phát triển của Giải thưởng Nhân tài Đất Việt. Đại tướng luôn quan tâm chăm sóc Giải thưởng ngay từ khi Giải thưởng&nbsp; mới ra đời cách đây 7 năm.</p><p> Trước lễ trao giải, Đại tướng Võ Nguyên Giáp đã gửi thư chúc mừng, động viên Ban tổ chức. Trong thư, Đại tướng viết: “Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</p><p> Sau phần khai mạc, cả hội trường hồi hội chờ đợi phút vinh danh các nhà khoa học và các tác giả, nhóm tác giả đoạt giải.</p><div> <span style="FONT-WEIGHT: bold">* Giải thưởng Khoa học Tự nhiên Việt Nam </span>thuộc về 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ - Viện Vật lý, Viện Khoa học công nghệ Việt Nam với công trình “Nghiên cứu cấu trúc hạt nhân và các phản ứng hạt nhân”.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn_d4aae.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Hai nhà khoa học đã tiến hành thành công các nghiên cứu về phản ứng hạt nhân với nơtron, phản ứng quang hạt nhân, quang phân hạch và các phản ứng hạt nhân khác có cơ chế phức tạp trên các máy gia tốc như máy phát nơtron, Microtron và các máy gia tốc thẳng của Việt Nam và Quốc tế. Các nghiên cứu này đã góp phần làm sáng tỏ cấu trúc hạt nhân và cơ chế phản ứng hạt nhân, đồng thời cung cấp nhiều số liệu hạt nhân mới có giá trị cho Kho tàng số liệu hạt nhân.</p><p> GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ đã khai thác hiệu quả hai máy gia tốc đầu tiên của Việt Nam là máy phát nơtron NA-3-C và Microtron MT-17 trong nghiên cứu cơ bản, nghiên cứu ứng dụng và đào tạo nhân lực. Trên cơ sở các thiết bị này, hai nhà khoa học đã tiến hành thành công những nghiên cứu cơ bản thực nghiệm đầu tiên về phản ứng hạt nhân ở Việt Nam; nghiên cứu và phát triển các phương pháp phân tích hạt nhân hiện đại và áp dụng thành công ở Việt Nam.</p><div> Bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCNVN và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn2_e2865.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Phó Chủ tịch nước CHXHCNVN Nguyễn Thị Doan và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ.</span></div><p> GS.VS Nguyễn Văn Hiệu chia sẻ: “Cách đây không lâu, Chính phủ đã ký quyết định xây dựng nhà máy điện hạt nhân trong điều kiện đất nước còn nhỏ bé, nghèo khó và vì thế việc đào tạo nhân lực là nhiệm vụ số 1 hiện nay. Rất may, Việt Nam có 2 nhà khoa học cực kỳ tâm huyết và nổi tiếng trong cả nước cũng như trên thế giới. Hội đồng khoa học chúng tôi muốn xướng tên 2 nhà khoa học này để Chính phủ huy động cùng phát triển xây dựng nhà máy điện hạt nhân.”</p><p> GS.VS Hiệu nhấn mạnh, mặc dù điều kiện làm việc của 2 nhà khoa học không được quan tâm, làm việc trên những máy móc cũ kỹ được mua từ năm 1992 nhưng 2 ông vẫn xay mê cống hiến hết mình cho lĩnh Khoa học tự nhiên Việt Nam.</p><p> <span style="FONT-WEIGHT: bold">* Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y Dược:</span> 2 giải</p><div> <span style="FONT-WEIGHT: bold">1.</span> Nhóm nghiên cứu của Bệnh viện Hữu nghị Việt - Đức với công trình <span style="FONT-STYLE: italic">“Nghiên cứu triển khai ghép gan, thận, tim lấy từ người cho chết não”</span>.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y_3dca2.jpg" style="MARGIN: 5px" width="450" /></div></div><div> &nbsp;</div><div> Tại bệnh viện Việt Đức, tháng 4/2011, các ca ghép tạng từ nguồn cho là người bệnh chết não được triển khai liên tục. Với 4 người cho chết não hiến tạng, bệnh viện đã ghép tim cho một trường hợp,&nbsp;2 người được ghép gan, 8 người được ghép thận, 2 người được ghép van tim và tất cả các ca ghép này đều thành công, người bệnh được ghép đã có một cuộc sống tốt hơn với tình trạng sức khỏe ổn định.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y2_cb5a1.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Tổng Bí Ban chấp hành TW Đảng CSVN Lê Khả Phiêu và ông Vũ Văn Tiền, Chủ tịch Hội đồng quản trị Ngân hàng An Bình trao giải thưởng cho nhóm nghiên cứu của BV Hữu nghị Việt - Đức.</span></div><p> Công trong việc ghép tạng từ người cho chết não không chỉ thể hiện năng lực, trình độ, tay nghề của bác sĩ Việt Nam mà nó còn mang một ý nghĩa nhân văn to lớn, mang một thông điệp gửi đến những con người giàu lòng nhân ái với nghĩa cử cao đẹp đã hiến tạng để cứu sống những người bệnh khác.</p><p> <span style="FONT-WEIGHT: bold">2.</span> Hội đồng ghép tim Bệnh viện Trung ương Huế với công trình nghiên cứu <span style="FONT-STYLE: italic">“Triển khai ghép tim trên người lấy từ người cho chết não”</span>.</p><div> Đề tài được thực hiện dựa trên ca mổ ghép tim thành công lần đầu tiên ở Việt Nam của chính 100% đội ngũ y, bác sĩ của Bệnh viện Trung ương Huế đầu tháng 3/2011. Bệnh nhân được ghép tim thành công là anh Trần Mậu Đức (26 tuổi, ở phường Phú Hội, TP. Huế).</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y3_7768c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Hội đồng ghép tim BV Trung ương Huế nhận Giải thưởng Nhân tài Đất Việt.</span></div><p> Ghép tim từ người cho chết não đến người bị bệnh tim cần được ghép tim phải đảm bảo các yêu cầu: đánh giá chức năng các cơ quan; đánh giá tương hợp miễn dịch và phát hiện nguy cơ tiềm ẩn có thể xảy ra trong và sau khi ghép tim để từ đó có phương thức điều trị thích hợp. Có tới 30 xét nghiệm cận lâm sàng trung và cao cấp tiến hành cho cả người cho tim chết não và người sẽ nhận ghép tim tại hệ thống labo của bệnh viện.</p><p> ---------------------</p><p> <span style="FONT-WEIGHT: bold">* Giải thưởng Nhân tài đất Việt Lĩnh vực Công nghệ thông tin.</span></p><p> <span style="FONT-STYLE: italic">Hệ thống sản phẩm đã ứng dụng thực tế:</span></p><p> <span style="FONT-STYLE: italic">Giải Nhất:</span> Không có.</p><p> <span style="FONT-STYLE: italic">Giải Nhì:</span> Không có</p><p> <span style="FONT-STYLE: italic">Giải Ba:</span> 3 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style="FONT-WEIGHT: bold">1.</span> <span style="FONT-STYLE: italic">“Bộ cạc xử lý tín hiệu HDTV”</span> của nhóm HD Việt Nam.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/hdtv_13b10.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhóm HDTV Việt Nam lên nhận giải.</span></div><p> Đây là bộ cạc xử lý tín hiệu HDTV đầu tiên tại Việt Nam đạt tiêu chuẩn OpenGear. Bộ thiết bị bao gồm 2 sản phẩm là cạc khuếch đại phân chia tín hiệu HD DA và cạc xử lý tín hiệu HD FX1. Nhờ bộ cạc này mà người sử dụng cũng có thể điều chỉnh mức âm thanh hoặc video để tín hiệu của kênh tuân theo mức chuẩn và không phụ thuộc vào chương trình đầu vào.</p><div> <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">2.</span> <span style="FONT-STYLE: italic">“Mã nguồn mở NukeViet”</span> của nhóm tác giả Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC).</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" alt="NukeViet nhận giải ba Nhân tài đất Việt 2011" src="/news/uploads/news/nukeviet-nhantaidatviet2011.jpg" style="margin: 5px; width: 450px; height: 301px;" /></div></div><p> NukeViet là CMS mã nguồn mở đầu tiên của Việt Nam có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là VINADES.,JSC - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.</p><div> <span style="FONT-WEIGHT: bold">3.</span> <span style="FONT-STYLE: italic">“Hệ thống ngôi nhà thông minh homeON”</span> của nhóm Smart home group.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16132_82014.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Sản phẩm là kết quả từ những nghiên cứu miệt mài nhằm xây dựng một ngôi nhà thông minh, một cuộc sống xanh với tiêu chí: An toàn, tiện nghi, sang trọng và tiết kiệm năng lượng, hưởng ứng lời kêu gọi tiết kiệm năng lượng của Chính phủ.&nbsp;</p><p> <strong><span style="FONT-STYLE: italic">* Hệ thống sản phẩm có tiềm năng ứng dụng:</span></strong></p><p> <span style="FONT-STYLE: italic">Giải Nhất: </span>Không có.</p><div> <span style="FONT-STYLE: italic">Giải Nhì:</span> trị giá 50 triệu đồng: <span style="FONT-STYLE: italic">“Dịch vụ Thông tin và Tri thức du lịch ứng dụng cộng nghệ ngữ nghĩa - iCompanion”</span> của nhóm tác giả SIG.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/nhi_7eee0.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhóm tác giả SIG nhận giải Nhì Nhân tài đất Việt 2011 ở hệ thống sản phẩm có tiềm năng ứng dụng.</span></div><p> ICompanion là hệ thống thông tin đầu tiên ứng dụng công nghệ ngữ nghĩa trong lĩnh vực du lịch - với đặc thù khác biệt là cung cấp các dịch vụ tìm kiếm, gợi ý thông tin “thông minh” hơn, hướng người dùng và kết hợp khai thác các tính năng hiện đại của môi trường di động.</p><p> Đại diện nhóm SIG chia sẻ: “Tinh thần sáng tạo và lòng khát khao muốn được tạo ra các sản phẩm mới có khả năng ứng dụng cao trong thực tiễn luôn có trong lòng của những người trẻ Việt Nam. Cảm ơn ban tổ chức và những nhà tài trợ đã giúp chúng tôi có một sân chơi thú vị để khuyến khích và chắp cánh thực hiện ước mơ của mình. Xin cảm ơn trường ĐH Bách Khoa đã tạo ra một môi trường nghiên cứu và sáng tạo, gắn kết 5 thành viên trong nhóm.”</p><p> <span style="FONT-STYLE: italic">Giải Ba:</span> 2 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style="FONT-WEIGHT: bold">1. </span><span style="FONT-STYLE: italic">“Bộ điều khiển IPNET”</span> của nhóm IPNET</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16149_ed58d.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhà báo Phạm Huy Hoàn, Trưởng Ban Tổ chức Giải thưởng NTĐV, Tổng Biên tập báo điện tử Dân trí và ông Tạ Hữu Thanh - Phó TGĐ Jetstar Pacific trao giải cho nhóm IPNET.</span></div><p> Bằng cách sử dụng kiến thức thiên văn học để tính giờ mặt trời lặn và mọc tại vị trí cần chiếu sáng được sáng định bởi kinh độ, vĩ độ cao độ, hàng ngày sản phẩm sẽ tính lại thời gian cần bật/tắt đèn cho phù hợp với giờ mặt trời lặn/mọc.</p><div> <span style="FONT-WEIGHT: bold">2.</span> <span style="FONT-STYLE: italic">“Hệ thống lập kế hoạch xạ trị ung thư quản lý thông tin bệnh nhân trên web - LYNX”</span> của nhóm LYNX.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/3tiem-nang_32fee.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Đây là loại phần mềm hoàn toàn mới ở Việt Nam, là hệ thống lập kế hoạch và quản lý thông tin của bệnh nhân ung thư qua Internet (LYNX) dựa vào nền tảng Silverlight của Microsoft và kiến thức chuyên ngành Vật lý y học. LYNX giúp ích cho các nhà khoa học, bác sĩ, kỹ sư vật lý, bệnh nhân và mọi thành viên trong việc quản lý và theo dõi hệ thống xạ trị ung thư một cách tổng thể. LYNX có thể được sử dụng thông qua các thiết bị như máy tính cá nhân, máy tính bảng… và các trình duyệt Internet Explorer, Firefox, Chrome…</p><div> Chương trình trao giải đã được truyền hình trực tiếp trên VTV2 - Đài Truyền hình Việt Nam và tường thuật trực&nbsp;tuyến trên báo điện tử Dân trí từ 20h tối 20/11/2011.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0545_c898e.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0560_c995c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16199_36a5c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <div align="center"> <table border="1" cellpadding="0" cellspacing="0" width="90%"> <tbody> <tr> <td> <div> <span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Khởi xướng từ năm 2005, Giải thưởng Nhân tài Đất Việt đã phát hiện và tôn vinh nhiều tài năng trong lĩnh vực CNTT-TT, Khoa học tự nhiên và Y dược, trở thành một sân chơi bổ ích cho những người yêu thích CNTT. Mỗi năm, Giải thưởng ngày càng thu hút số lượng tác giả và sản phẩm tham gia đông đảo và nhận được sự quan tâm sâu sắc của lãnh đạo Đảng, Nhà nước cũng như công chúng.</span></span></div> <div> <span style="FONT-WEIGHT: bold">&nbsp;</span></div> <div> <span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Đối tượng tham gia Giải thưởng trong lĩnh vực CNTT là những người Việt Nam ở mọi lứa tuổi, đang sinh sống trong cũng như ngoài nước. Năm 2006, Giải thưởng có sự tham gia của thí sinh đến từ 8 nước trên thế giới và 40 tỉnh thành của Việt Nam. Từ năm 2009, Giải thưởng được mở rộng sang lĩnh vực Khoa học tự nhiên, và năm 2010 là lĩnh vực Y dược, vinh danh những nhà khoa học trong các lĩnh vực này.</span>&nbsp;</span></div> <div> <span style="FONT-WEIGHT: bold">&nbsp;</span></div> </td> </tr> </tbody> </table> </div></div>', 'http://dantri.com.vn/c119/s119-539911/nhan-tai-dat-viet-chap-canh-khat-khao-sang-tao.htm', 2, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_bodytext`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_bodytext` (
  `id` int(11) unsigned NOT NULL,
  `bodytext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_teest_bodytext`
--

INSERT INTO `gt_vi_teest_bodytext` (`id`, `bodytext`) VALUES
(1, 'Để chuyên nghiệp hóa việc phát hành mã nguồn mở NukeViet, Ban quản trị NukeViet quyết định thành lập doanh nghiệp chuyên quản NukeViet mang tên Công ty cổ phần Phát triển nguồn mở Việt Nam (Viết tắt là VINADES.,JSC), chính thức ra mắt vào ngày 25-2-2010 (trụ sở tại Hà Nội) nhằm phát triển, phổ biến hệ thống NukeViet tại Việt Nam. Theo ông Nguyễn Anh Tú, Chủ tịch HĐQT VINADES, công ty sẽ phát triển bộ mã nguồn NukeViet nhất quán theo con đường mã nguồn mở đã chọn, chuyên nghiệp và quy mô hơn bao giờ hết. Đặc biệt là hoàn toàn miễn phí đúng tinh thần mã nguồn mở quốc tế. NukeViet là một hệ quản trị nội dung mã nguồn mở (Opensource Content Management System) thuần Việt từ nền tảng PHP-Nuke và cơ sở dữ liệu MySQL. Người sử dụng thường gọi NukeViet là portal vì nó có khả năng tích hợp nhiều ứng dụng trên nền web, cho phép người sử dụng có thể dễ dàng xuất bản và quản trị các nội dung của họ lên internet hoặc intranet. NukeViet cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng thêm các module, block... tạo sự dễ dàng cài đặt, quản lý, ngay cả với những người mới tiếp cận với website. Người dùng có thể tìm hiểu thêm thông tin và tải về sản phẩm tại địa chỉ http://nukeviet.vn Thông tin ra mắt công ty VINADES có thể tìm thấy trên trang 7 báo Hà Nội Mới ra ngày 25/02/2010 (http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm xem chi tiết), Bản tin tiếng Anh của đài tiếng nói Việt Nam ngày 26/02/2010 (http://english.vovnews.vn/Home/First-opensource-company-starts-operation/20102/112960.vov xem chi tiết); trang 7 báo An ninh Thủ Đô số 2858 ra vào thứ 2 ngày 01/03/2010 và các trang tin tức, báo điện tử khác.'),
(2, 'Câu chuyện của NukeViet và VINADES.,JSC Từ một trăn trở Giữa năm 2009, trước yêu cầu cấp thiết phải đổi mới và làm một cuộc cách mạng cho mã nguồn mở NukeViet, một cuộc thảo luận sôi nổi đã diễn ra với tiêu đề "Lối đi nào để chuyên nghiệp hóa mã nguồn mở NukeViet". Kết quả của cuộc thảo luận này là 55 bài viết với hàng chục ý kiến đóng góp đã được đưa ra. Các giải pháp về tài chính, nhân lực, phương hướng hoạt động được đem ra thảo luận. rockbuilc, Nkd833 đề xuất phương án thành lập doanh nghiệp chuyên quản NukeViet như một giải pháp toàn diện để giải quyết vấn đề chuyên nghiệp hóa NukeViet. Các vấn đề được các thành viên tham gia thảo luận và mổ xẻ thẳng thắn, nhiều ý kiến phản biện trái chiều cũng được đưa ra trên tinh thần xây dựng. Sau 2 tháng thảo luận, Ban Quản Trị đã có dự định... Gặp mặt Tháng 11, Sau khi tham khảo các ý kiến của mọi người trên diễn đàn, Anh Tú đã trực tiếp về Việt Nam. Một cuộc offline được tổ chức chớp nhoáng với sự tham gia của các thành viên chủ chốt tại Hà Nội. Các cuộc tìm hiểu và tiếp xúc được triển khai gấp rút trong giai đoạn này. Một mô hình - một lối đi Hướng đi chuyên nghiệp hóa việc phát triển NukeViet đã được anh Tú chọn lựa: "Thành lập doanh nghiệp chuyên quản NukeViet". Doanh nghiệp chuyên quản NukeViet được thành lập từ chính nhu cầu của cộng đồng nhằm chuyên nghiệp hóa NukeViet, vì vậy mô hình công ty cổ phần được chọn lựa để đáp ứng yêu cầu đó. Chịu trách nhiệm triển khai, laser đã lên phương án đầu tư, mục tiêu, kế hoạch phát triển ngắn và dài hạn. Triển khai thực hiện Tháng 1 năm 2010, việc thành lập đã được xúc tiến. Ngày 25/02/2010, trên các bản tin tiếng Anh và tiếng Việt xuất hiện bản tin "Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam". Đó là Công ty cổ phần Phát triển nguồn mở Việt Nam (VIET NAM OPEN SOURCE DEVELOPMENT JOINT STOCK COMPANY - VINADES.,JSC). Đây là một vài hình ảnh trong ngày khai trương: Anh Tú phát biểu khai trương VINADES.,JSC Anh Tú phát biểu khai trương VINADES.,JSC http://nukeviet.vn/uploads/spaw2/images/hung-phatbieu.jpg Anh Tú phát biểu khai trương VINADES.,JSC Nguyễn Hùng giới thiệu đôi nét về công ty, mục tiêu và phương hướng hoạt động. http://nukeviet.vn/uploads/spaw2/images/nangly.jpg Cùng nâng ly chúc mừng khai trương. Cùng nâng ly chúc mừng khai trương. ... và lời cảm ơn gửi tới cộng đồng VINADES.,JSC từ khi được thai nghén tới lúc chập chững những bước đi ban đầu đều có sự động viên, ủng hộ và đóng góp lớn nhỏ của cộng đồng NukeViet - Một cộng đồng gắn liền với những ký ức, những kỷ niệm buồn vui và mang trong mỗi thành viên một đam mê, một hoài bão lớn lao. "Lửa thử vàng, gian nan thử sức", mỗi khó khăn trả qua khiến cộng đồng NukeViet lớn dần lên, gắn kết với nhau bằng một sợi dây vô hình không thể chia cắt: đó là niềm đam mê với mã nguồn mở, với công nghệ web. VINADES.,JSC được tạo ra từ cộng đồng và sẽ cố gắng hết sức để hoạt động vì lợi ích của cộng đồng. http://nukeviet.vn/uploads/spaw2/images/anhvp2.jpg Văn phòng làm việc của VINADES.,JSC ở Hà Nội. http://nukeviet.vn/uploads/spaw2/images/anhvp3.jpg Một góc văn phòng nhìn từ trong ra ngoài. NukeViet 3.0 - Cuộc cách mạng của NukeViet Sau nhiều tháng triển khai, NukeViet 3.0 đã được định hình và dự định công bố bản beta trong thời gian gần. NukeViet 3.0 là phiên bản mang tính cách mạng của hệ thống NukeViet vì 100% các dòng code của NukeViet 3.0 đã được viết mới hoàn toàn chứ không sử dụng nền tảng cũ. Việc này đã ngốn rất nhiều thời gian và công sức của đội ngũ lập trình. Đó cũng là lý do vì sao bản 2.0 không được cải tiến nhiều trong thời gian qua. NukeViet 3.0 được xây dựng với mong muốn có một nền tảng ổn định để sau đó có thể đầu tư lâu dài, xây dựng một thư viện ứng dụng phong phú. VINADES.,JSC sẽ song hành cùng cộng đồng NukeViet trong việc hỗ trợ và phát triển NukeViet thành một mã nguồn mở hoạt động ở quy mô chuyên nghiệp. Đây là bước đi đầu tiên trong trong tiến trình chuyên nghiệp hóa này. Các ứng dụng bổ sung sẽ được xây dựng bài bản, chất lượng. Cộng đồng NukeViet sẽ không chỉ là cộng đồng người sử dụng mà sẽ được đầu tư về đào tạo để trở thành một cộng đồng lập trình mạnh. Thông tin chi tiết về dự án phát triển NukeViet 3.0 được cập nhật tại đây: http://nukeviet.vn/phpbb/viewforum.php?f=99 http://nukeviet.vn/phpbb/viewforum.php?f=99'),
(5, 'THÔNGTIN VỀ MÃ NGUỒN MỞ NUKEVIET Giới thiệu chung NukeViet là một hệ quản trị nội dung mã nguồn mở (Opensource Content Management System), người sử dụng thường gọi NukeViet là portal vì nó có khả năng tích hợp nhiều ứng dụng trên nền Web. NukeViet có 2 dòng phiên bản chính: Dòng phiên bản trước năm 2009 (NukeViet 2.0 trở về trước) được Nguyễn Anh Tú- một lưu học sinh người Việt tại Nga - cùng cộng đồng phát triển thành một ứng dụng thuần Việt từ nền tảng PHP-Nuke. Dòng phiên bản NukeViet 3.0 trở về sau (kể từ năm 2010 trở đi) là dòng phiên bản hoàn toàn mới, được xây dựng từ đầu với nhiều tính năng ưu việt. NukeViet được viết bằng ngôn ngữ PHP và chủ yếu sử dụng cơ sở dữ liệu MySQL, cho phép người sử dụng có thể dễ dàng xuất bản &quản trị các nội dung của họ lên Internet hoặc Intranet. NukeViet được sử dụng ở nhiều website, từ những website cá nhân cho tới những hệ thống website doanh nghiệp, nó cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng bằng cách cài thêm các module, block... NukeViet có thể dễ dàng cài đặt, dễ dàng quản lý kể cả với những người mới sử dụng. NukeViet là giải pháp hoàn hảo cho các Website từ cá nhân cho tới các doanh nghiệp. NukeViet là bộ mã nguồn chất lượng cao, được phát hành theo giấy phép mã nguồn mở nên việc sử dụng NukeViet hoàn toàn miễn phí. Với người sử dụng cá nhân, tất cả đều có thể tự tạo cho mình một website chuyên nghiệp mà không mất bất cứ chi phí nào. Với những nhà phát triển Web, sử dụng NukeViet có thể nhanh chóng xây dựng các hệ thống lớn mà việc lập trình không đòi hỏi quá nhiều thời gian vì NukeViet đã xây dựng sẵn hệ thống quản lý ưu việt. Thông tin chi tiết về NukeViet có thể tìm thấy ở bách khoa toàn thư mở Wikipedia: http://vi.wikipedia.org/wiki/NukeViet http://vi.wikipedia.org/wiki/NukeViet II. Thông tin về diễn đàn NukeViet: Diễn đàn NukeViet hoạt động trên website: http://nukeviet.vn/ http://nukeviet.vn hiện có trên 13.000 thành viên thực gồm học sinh, sinh viên & nhiều thành phần khác thuộc giới trí thức ở trong và ngoài nước. Là một diễn đàn của các nhà quản lý website, rất nhiều thành viên trong diễn đàn NukeViet là cán bộ, lãnh đạo từ đủ mọi lĩnh vực: công nghệ thông tin, xây dựng,văn hóa - xã hội, thể thao, dịch vụ - du lịch... từ cử nhân, bác sĩ, kỹ sư cho đến bộ đội, công an... Nhiều học sinh, sinh viên tham gia diễn đàn NukeViet, đam mê mã nguồn mở và đã thành công với chính công việc mà họ yêu thích.'),
(6, 'THƯ MỜI HỢP TÁC TRONG VIỆC LIÊN KẾT QUẢNG CÁO, CUNG CẤP HOSTING THỬ NGHIỆM PHÁT TRIỂN MÃ NGUỒN MỞ NUKEVIET Kính gửi: QUÍ KHÁCH VÀ ĐỐI TÁC Lời đầu tiên, Ban giám đốc công ty cổ phần Phát Triển Nguồn Mở Việt Nam (VINADES.,JSC) xin gửi đến Quý đối tác lời chào trân trọng, lời chúc may mắn và thành công. Tiếp đến chúng tôi xin được giới thiệu và ngỏ lời mời hợp tác kinh doanh. VINADES.,JSC ra đời nhằm chuyên nghiệp hóa việc phát hành mã nguồn mở NukeViet. Đồng thời khai thác các dự án từ NukeViet tạo kinh phí phát triển bền vững cho mã nguồn này. NukeViet là hệ quản trị nội dung, là website đa năng đầu tiên của Việt Nam do cộng đồng người Việt phát triển. Có nhiều lợi thế như cộng đồng người sử dụng đông đảo nhất tại Việt Nam hiện nay, sản phẩm thuần Việt, dễ sử dụng, dễ phát triển. Hiện tại VINADES.,JSC đang tiến hành phát triển bộ mã nguồn NukeViet phiên bản 3.0 – một thế hệ CMS hoàn toàn mới với nhiều tính năng ưu việt, được đầu tư bài bản với kinh phí lớn. Với thiện chí hợp tác cùng phát triển VINADES.,JSC xin trân trọng gửi lời mời hợp tác đến Quý đối tác là các công ty cung cấp tên miền - hosting, các doanh nghiệp quan tâm và mong muốn hợp tác cùng VINADES để cùng thực hiện chung các hoạt động kinh doanh nhằm gia tăng giá trị, quảng bá thương hiệu chung cho cả hai bên. Phương thức hợp tác nhưsau: 1.Quảng cáo, trao đổi banner, liên kết website: a. Mô tả hình thức: - Quảng cáo trên website & hệ thống kênh truyền thông của 2 bên. - Quảng cáo trên các phiên bản phát hành của mã nguồn mở NukeViet. b, Lợi ích: - Quảng bá rộng rãi cho đối tượng của 2 bên. - Giảm chi phí quảng bá cho 2 bên. c, Trách nhiệm: - Hai bên sẽ thỏa thuận và đưa quảng cáo của mình vào website của đối tác. Thỏa thuận vị trí, kích thước và trang đặt banner quảng cáo nhằm mang lại hiệu quả cao cho cả hai bên. - Mở forum hỗ trợ người dùng hosting ngay tại diễn đàn NukeViet.VN để quý công ty dễ dàng hỗ trợ người sử dụng cũng như thực hiện các kế hoạch truyền thông của mình tới cộng đồng NukeViet. 2.Hợp tác cung cấp hosting thử nghiệm NukeViet: a. Mô tả hình thức: - Hai bên ký hợp đồng nguyên tắc & thỏa thuận hợp tác trong việc hợp tác phát triển mã nguồn mở NukeViet. Theo đó: + Phía đối tác cung cấp mỗi loại 1 gói hosting đại lý cho VINADES.,JSC để chúng tôi test trong quá trình phát triển mã nguồn mở NukeViet, để đảm bảo NukeViet sẵn sàng tương thích với hosting của quý khách ngay khi ra mắt. + VINADES.,JSC sẽ công báo thông tin chứng nhận host của phía đối tác là phù hợp, tương thích tốt nhất với NukeViet tới cộng đồng những người phát triển và sử dụng NukeViet. b. Lợi ích: - Mở rộng thị trường theo cả hướng đối tượng. - Tiết kiệm chi phí –nâng cao hiệu quả kinh doanh. c. Trách nhiệm: - Bên đối tác cung cấp miễn phí host để VINADES.,JSC thực hiện việc test tương thích mã nguồn NukeViet trên các gói hosting của đối tác. - VINADES.,JSC công bố tới cộng đồng về kết quả chứng nhận chất lượng host của phía đối tác. 3,Hợp tác nhân lực hỗ trợ người sử dụng: a, Mô tả hình thức: - Hai bên sẽ hỗ trợ lẫn nhau trong quá trình giải quyết các yêu cầu của khách hàng. + Bên đối tác gửi các yêu cầu của khách hàng về mã nguồn NukeViet tới VINADES.,JSC + VINADES gửi các yêu cầu của khách hàng có liên quan đến dịch vụ hosting tới phía đối tác. b, Lợi ích: - Giảm thiểu chi phí, nhân lực hỗ trợ khách hàng của cả 2 bên. - Tăng hiệu quả hỗ trợ khách hàng. c, Trách nhiệm: - Khi nhận được yêu cầu hỗ trợ VINADES hoặc bên đối tác cần ưu tiên xử lý nhanh gọn nhằm nâng cao hiệu quả của sự hợp tác song phưong này. 4. Các hình thức khác: Ngoài các hình thức đã đề xuất ở trên, là đơn vị phát hành mã nguồn mở NukeViet chúng tôi có thể phát hành quảng cáo trên giao diện phần mềm, trên các bài viết giới thiệu xuất hiện ngay sau khi cài đặt phần mềm… chúng tôi tin tưởng rằng với lượng phát hành lên đến hàng chục ngàn lượt tải về cho mỗi phiên bản là một cơ hội quảng cáo rất hiệu quả đến cộng đồng Webmaster Việt Nam. Với mong muốn tạo nên cộng đồng phát triển và sử dụng NukeViet rộng lớn đúng như mục tiêu đề ra,chúng tôi luôn linh động trong các hình thức hợp tác nhằm mang lại sự thuận tiện cho đối tác cũng như mục tiêu hợp tác đa phương. Chúng tôi sẽ tiếp nhận các hình thức hợp tác khác mà bên đối tác trình bày hợp lý và hiệu quả, mong nhận được thêm nhiều hình thức hợp tác khác từ đối tác. Phương châm của chúng tôi “Cùng hợp tác để phát triển”. Trân trọng cảm ơn, rất mong được hợp tác cùng quý vị. Thông tin liên hệ: CÔNG TY CỔ PHẦN PHÁT TRIỂN NGUỒN MỞ VIỆT NAM (VINADES.,JSC) Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội. Điện thoại: +84-4-85872007 Fax: +84-4-35500914 Website: http://www.vinades.vn/ www.vinades.vn – http://www.nukeviet.vn/ www.nukeviet.vn Email: mailto:contact@vinades.vn contact@vinades.vn'),
(7, 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài là các lập trình viên PHP và MySQL, Chuyên Viên Đồ Hoạ để làm việc cho công ty, hiện thực hóa ước mơ một nguồn mở chuyên nghiệp cho Việt Nam vươn ra thế giới.Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. 1. Vị trí dự tuyển: Chuyên viên đồ hoạ; Lập trình viên. 2. Mô tả công việc:Với vị trí lập trình viên PHP & MySQL: Viết module trên nền NukeViet, tham gia phát triển hệ thống NukeViet. Nếu là chuyên viên đồ họa, kỹ thuật viên cắt giao diện... bạn có thể đảm nhiệm một trong các công việc sau: + Vẽ và cắt giao diện. + Valid CSS, xHTML. + Ghép giao diện cho hệ thống.3. Yêu cầu: Lập trình viên PHP & MySQL: Thành thạo PHP, MySQL. Biết CSS, XHTML, JavaScript là một ưu thế.Chuyên viên đồ họa: Sử dụng thành thạo một trong các phần mềm Photoshop, illustrator, 3Dmax, coreldraw. Biết CSS, xHTML. + Trình độ tối thiểu cho người làm đồ họa web: Biết vẽ giao diện hoặc cắt PSD ra xHTML & CSS. + Ưu tiên người cắt giao diện đạt chuẩn W3C (Test trên Internet Explorer 7+, FireFox 3+, Chrome 8+, Opera 10+)Chúng tôi ưu tiên các ứng viên có kỹ năng làm việc độc lập, làm việc theo nhóm, có tinh thần trách nhiệm cao, chủ động trong công việc. 4: Quyền lợi: - Lương: thoả thuận, trả qua ATM. - Thưởng theo dự án, các ngày lễ tết. - Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội... 5. Thời gian làm việc: Toàn thời gian cố định hoặc làm online. 6. Hạn nộp hồ sơ: Không hạn chế, vui lòng kiểm tra tại http://vinades.vn/vi/news/Tuyen-dung/ http://vinades.vn/vi/news/Tuyen-dung/ 7. Hồ sơ bao gồm: * Cách thức đăng ký dự tuyển: Làm Hồ sơ xin việc (file mềm) và gửi về hòm thư tuyendung@vinades.vn * Nội dung hồ sơ xin việc file mềm gồm: + Đơn xin việc: Tự biên soạn. + Thông tin ứng viên: Theo mẫu của VINADES.,JSC (dowload tại đây: http://vinades.vn/vi/download/Thong-tin-ung-vien/Mau-ly-lich-ung-vien/ Mẫu lý lịch ứng viên) Chi tiết vui lòng tham khảo tại: http://vinades.vn/vi/news/Tuyen-dung/ http://vinades.vn/vi/news/Tuyen-dung/ Mọi thắc mắc vui lòng liên hệ: Công ty cổ phần phát triển nguồn mở Việt Nam. Địa chỉ: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội. - Tel: +84-4-85872007 - Fax: +84-4-35500914 - Email: mailto:contact@vinades.vn contact@vinades.vn - Website: http://www.vinades.vn/ http://www.vinades.vn'),
(8, 'Giảm giá tới 90% giá module, ngày nào cũng là ngày "mua chung" trên webnhanh.vn! Như thông báo trên webnhanh.vn, chương trình "http://webnhanh.vn/vi/thiet-ke-web/detail/Mua-chung-tren-Webnhanhvn-se-giam-gia-90-gia-module-da-cong-bo-245/ mua chung module" nằm trong chính sách chung của webnhanh.vn trong việc hỗ trợ phát triển mã nguồn mở, giúp cho mọi người được hưởng những dịch vụ thiết kế website tốt nhất với chi phí thấp nhất. Tham gia chương trình này, bạn chỉ phải trả số tiền bằng 1/10 giá trị module mà vẫn được sở hữu module với tính năng hấp dẫn mà bạn mong muốn. Cụ thể, các module trong http://webnhanh.vn/vi/nvresources/cat/Modules-1/ kho module của webnhanh.vn đang chờ hoàn thiện sẽ được giảm giá tới 90% nếu khách hàng đăng ký mua chung module. Tuy nhiên sau 2 tháng thực hiện, Ban Quản Trị webnhanh.vn thấy rằng khả năng xuất hiện nhu cầu cùng mua chung 1 sản phẩm và dịch vụ có tính đặc thù như code dành cho web là rất thấp. Chính vì thế webnhanh.vn đã giảm giá đồng loạt các module trên webnhanh.vn để khách hàng có nhu cầu sẽ có nhiều cơ hội được sử dụng các module mà mình mong muốn cung cấp lên website. Đại đa số các module sẽ được giảm giá xuống mức giá siêu rẻ để đảm bảo mọi người đều có khả năng sử dụng. Đặc biệt với các module có mức giá từ 10-20 triệu đồng sẽ giảm giá xuống còn ở mức 1-5 triệu đồng. Giá rẻ hơn, nhiều giao diện hơn cho web Ngoài việc giảm giá http://webnhanh.vn/vi/nvresources/cat/Giao-dien-3/ các giao diện website do VINADES.,JSC thiết kế (từ mức giá 2 triệu đồng xuống còn 300 đến 700 ngàn đồng). Webnhanh.vn cũng sẽ cải thiện kho giao diện của mình bằng cách đưa vào sử dụng các mẫu giao diện của các nhà thiết kế giao diện khác với giá trung bình khoảng 300 ngàn đồng (chi phí chuyển template thành giao diện có thể cài đặt cho website). Khách hàng cũng có thể gửi mẫu giao diện (đã cắt HTML) để chúng tôi thực hiện việc ghép giao diện với mức giá 300-500 ngàn đồng (áp dụng mô hình giá chia sẻ của VINADES.,JSC trong http://vinades.vn/vi/news/San-pham/Thiet-ke-giao-dien-14/ thiết kế giao diện web (*)). Giảm giá các gói web dựng sẵn, nâng cao chất lượng và cấu hình dịch vụ Cơ cấu chất lượng sản phẩm và dịch vụ cũng thay đổi theo hướng nâng cao rõ rệt. Ngoài việc giảm giá các http://webnhanh.vn/vi/nvresources/package/ gói web dựng sẵn, webnhanh.vn đồng thời nâng cao chất lượng các dịch vụ đi kèm của các gói web này. Theo đó ngoài việc kéo dài thời gian bảo hành miễn phí lên 12 tháng, đồng thời webnhanh.vn cũng kéo dài thời gian sử dụng hosting miễn phí lên 12 tháng. Với mức hỗ trợ này, website thiết kế trên webnhanh.vn đảm bảo chất lượng cao và mức giá còn rẻ hơn cả các nhà cung cấp dịch vụ web giá rẻ. Đây là cơ hội rất lớn cho http://webnhanh.vn/vi/dealers/ các đại lý của webnhanh.vn để tạo nên lợi thế cạnh tranh về chất lượng và giá cả dịch vụ. (*) "Giá chia sẻ" là mức giá tiết kiệm cho khách hàng, nếu mua với mức giá này khách hàng sẽ tiết kiệm chi phí thiết kế giao diện một cách tối đa mà vẫn được toàn quyền sử dụng mẫu giao diện đã đặt hàng. Webnhanh.vn sẽ giữ lại mẫu giao diện này và đưa vào thư viện giao diện để cung cấp cho các khách hàng khác. Mô hình "Giá chia sẻ" sử dụng cho các khách hàng không quá khắt khe về việc đảm bảo tính duy nhất của mẫu giao diện đồng thời giúp webnhanh.vn làm phong phú thêm kho giao diện của mình.Chú ý: Ngoài việc cung cấp các gói web dựng sẵn với chi phí thấp phục vụ người dùng phổ thông, http://vinades.vn VINADES.,JSC vẫn duy trì dịch vụ thiết kế giao diện riêng và thiết kế website theo yêu cầu để phục vụ những khách hàng có nhu cầu riêng biệt và cao cấp hơn, khách hàng có nhu cầu vui lòng truy cập http://vinades.vn http://vinades.vn hoặc liên hệ nhân viên kinh doanh của VINADES.,JSC để được tư vấn và báo giá dịch vụ. Như vậy, cùng với việc tham gia cung cấp hosting chuyên nghiệp dành cho NukeViet của các nhà cung cấp hosting trong và ngoài nước như http://vinades.vn/vi/news/Doi-tac/VINADES-JSC-va-DIGISTAR-hop-tac-trong-viec-phat-trien-ma-nguon-mo-NukeViet-17/ DIGISTAR, http://nukeviet.vn/vi/news/the-gioi-cong-nghe/TMDHosting-cung-cap-dich-vu-hosting-chuyen-NukeViet-64/ TMDHosting hay http://nukeviet.vn/vi/news/the-gioi-cong-nghe/SiteGround-cung-cap-dich-vu-hosting-chuyen-NukeViet-59/ SiteGround, http://nukeviet.vn/vi/news/the-gioi-cong-nghe/website-dau-tien-thiet-ke-website-va-ban-code-chuyen-nghiep-danh-cho-NukeViet-67/ Webnhanh.vn là website đầu tiên có dịch vụ thiết kế website và bán code chuyên nghiệp dành riêng cho NukeViet. Sự chuyên nghiệp hóa trong các khâu từ phát triển đến cung cấp dịch vụ cho mã nguồn mở NukeViet sẽ mở ra một cơ hội phát triển mới cho người sử dụng web ở Việt Nam.'),
(9, 'Nhắc đến các hệ thống quản trị nội dung (Content Management System – CMS) để quản lý các cổng thông tin điện tử trên Internet, không ít người sẽ nhắc đến các bộ công cụ như Joomla hay Wordpress. Tuy nhiên, có một sản phẩm hoàn toàn thuần Việt, do người Việt xây dựng không hề thua kém những sản phẩm trên cả về tính năng lẫn khả năng ứng dụng, đó là NukeViet của nhóm tác giả thuộc Công ty Cổ phần phát triển nguồn mở Việt Nam (VINADES). Với NukeViet, người dùng tại Việt Nam sẽ vượt qua các trở ngại về rào cản ngôn ngữ, có thể xây dựng và vận hành các trang web một cách dễ dàng nhất, đồng thời nhận được sự hỗ trợ của cộng đồng người dùng và các nhà phát triển cũng chính là người Việt Nam. Mới đây nhất, Ban giám khảo Giải thưởng Nhân Tài Đất Việt 2011 đã quyết định đưa NukeViet vào danh sách các sản phẩm đã vượt qua vòng sơ khảo để tranh tài tại vòng chung khảo của Giải Thưởng Nhân Tài Đất Việt 2011 diễn ra vào ngày 17-18/11 tới đây. Những ý tưởng giúp hình thành nên sản phẩm “thuần Việt” Theo chia sẻ của đại diện nhóm tác giả, năm 2004, anh Nguyễn Anh Tú, một lưu học sinh người Việt tại Nga với ý tưởng xây dựng một website để kết nối cộng đồng sinh viên du học đã sử dụng bộ CMS mã nguồn mở PHP-Nuke để thực hiện. Sau đó, anh Nguyễn Anh Tú đã phát triển và cải tiến bộ mã nguồn mở PHP-Nuke để chia sẻ cho các thành viên có nhu cầu xây dựng website một cách đơn giản và thuận tiện hơn. Được sự đón nhận của đông đảo người sử dụng, bộ mã nguồn đã liên tục được phát triển và trở thành một ứng dụng thuần Việt với tên gọi NukeViet. NukeViet đã nhanh chóng trở nên phổ biến trong giới các nhà xây dựng và phát triển website tại Việt Nam. http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/11/NukeViet-1_4b905.jpg Giao diện một website tin tức được xây dựng bằng NukeViet Trong quá trình phát triển NukeViet, có một điều đội ngũ kỹ thuật luôn trăn trở là làm sao để có thể nâng cao tỉ lệ đóng góp của người Việt vào trong mã nguồn sản phẩm. Chính vì ý thức được điều này nên mức độ thuần Việt của sản phẩm ngày càng được nâng cao trong từng phiên bản phát hành. Cho đến phiên bản 3.0 (phát hành tháng 10 năm 2010) thì NukeViet đã thực sự trở thành một sản phẩm mã nguồn mở riêng của Việt Nam với 100% dòng code được viết mới. Kể từ đây, cộng đồng mã nguồn mở Việt Nam đã có riêng một bộ mã nguồn thuần Việt, tự hào sánh bước ngang vai cùng các cộng đồng mã nguồn mở khác trên thế giới. NukeViet ra đời đã giúp cộng đồng mạng Việt Nam giải quyết nhu cầu và mong muốn có một bộ mã nguồn mở của riêng Việt Nam, giúp phát triển hệ thống website của người Việt một cách an toàn nhất, đảm bảo nhất. http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/11/NukeViet-2_600d0.jpg Một website bán hành trực tuyến xây dựng bằng NukeViet NukeViet là CMS mã nguồn mở đầu tiên của Việt Nam có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là VINADES.,JSC - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp. Khả năng ứng dụng và những ưu điểm của NukeViet Kể từ khi ra đời và trải qua một quá trình dài phát triển, NukeViet hiện được sử dụng ở nhiều website, từ những website cá nhân cho tới những hệ thống website doanh nghiệp. NukeViet cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng bằng cách cài thêm các module, block... NukeViet chủ yếu được sử dụng làm trang tin tức nhờ module News tích hợp sẵn trong NukeViet được viết rất công phu, nó lại đặc biệt phù hợp với yêu cầu và đặc điểm sử dụng cho hệ thống tin tức. NukeViet có thể dễ dàng cài đặt, dễ dàng quản lý kể cả với những người mới sử dụng do đó thường được những đối tượng người dùng không chuyên ưa thích. http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/11/NukeViet-4_416a1.jpg Website phòng Giáo dục và Đào tạo Lạng Giang được xây dựng trên mã nguồn NukeViet NukeViet có mã nguồn mở do đó việc sử dụng NukeViet là hoàn toàn miễn phí cho tất cả mọi người trên thế giới. Từ phiên bản 2.0 trở về trước, đối tượng người dùng chủ yếu của NukeViet là người Việt vì những đặc điểm của bản thân mã nguồn (có nguồn gốc từ PHP-Nuke) và vì chính sách của nhóm phát triển là: "hệ thống Portal dành cho người Việt". Tuy nhiên, kể từ phiên bản 3.0, đội ngũ phát triển NukeViet định hướng đưa NukeViet ra cộng đồng quốc tế với hỗ trợ thêm nhiều ngôn ngữ. Trên thực tế, với những ưu điểm vượt trội của mình, NukeViet 3 đã được ứng dụng ở hàng ngàn website khác nhau. Đặc biệt, không ít các cơ quan, tổ chức của Nhà nước đã tin tưởng sử dụng mã nguồn NukeViet để xây dựng cổng thông tin điện tử của mình, như Cổng thông tin tích hợp 1 cửa cho Phòng giáo dục Lạng Giang, cổng thông tin 2 chiều - Công ty cổ phần đầu tư tài chính công đoàn dầu khí Việt Nam, Hệ thống tra cứu điểm, tra cứu văn bằng - Cổng thông tin Sở GD&ĐT Quảng Ninh, Website viện y học cổ truyền Quân Đội… Tất cả các dự án trên đều được khách hàng đánh giá rất cao về tính ứng dụng, hiệu quả do tiết kiệm chi phí và đáp ứng rất tốt nhu cầu sử dụng của các đơn vị. Hướng phát triển trong tương lai và những kỳ vọng trước mắt Với ý nghĩa là phần mềm quản lý website (chiếm tới 90% các giao tiếp và tương tác trực tiếp với người sử dụng trên môi trường internet), khi phát triển, NukeViet sẽ trở thành một công cụ truyền thông rất mạnh, có thể đem lại những hiệu quả to lớn khác. Nhóm phát triển sẽ phát huy lợi thế này để phát triển sản phẩm. Nhóm phát triển cũng muốn tăng cường các khả năng liên kết, chia sẻ và tích hợp dữ liệu giữa các hệ thống khác nhau nhằm tạo nên một mạng lưới lớn, rộng khắp và hoàn chỉnh, có thể huy động sức mạnh tổng lực, thực hiện các nhiệm vụ xã hội khác trên mã nguồn NukeViet của mình. NukeViet khi được kết hợp với xu thế phát triển của điện toán đám mây sẽ trở thành một nền tảng giúp phát triển nhiều hệ thống dịch vụ trực tuyến có thể thu hút nhiều người dùng với giá trị thương mại cao. http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/11/NukeViet-3_46e98.jpg Giao diện soạn thảo nội dung trên NukeViet Với việc gửi sản phẩm dự thi tại Giải thưởng Nhân Tài Đất Việt 2011, nhóm tác giả của NukeViet hy vọng mã nguồn mở của mình sẽ đạt vị trí cao tại Giải thưởng, như một cách thức để quảng bá rộng rãi sản phẩm, được thừa nhận và hỗ trợ sử dụng trong các lĩnh vực mà nó có thể phục vụ tốt và đem lại hiệu quả kinh tế, xã hội cao như: lĩnh vực giáo dục, lĩnh vực hành chính… để các bộ-ban-ngành, các cơ quan hành chính, chính quyền địa phương nhìn thấy giá trị và hiệu quả to lớn của mã nguồn mở NukeViet để triển khai NukeViet phục vụ các cơ quan này. NukeViet sẽ giúp hiện thực hóa cải cách hành chính và góp phần đẩy nhanh thủ tục một cửa một cách tiết kiệm mà vẫn đạt hiệu quả cao nhất. Ngoài ra, uy tính của Giải thưởng, nhóm tác giả NukeViet hy vọng sẽ đem NukeViet đến nhiều người hơn, để cả xã hội được sử dụng thành quả lớn lao của bộ mã nguồn mở được coi là biểu tượng và đại diện tiểu biểu cho sự phát triển và thành công của mã nguồn mở Việt Nam. Không chỉ thế, mở ra cơ hội tiếp cận và học hỏi công nghệ cho hàng ngàn học sinh, sinh viên, qua đó có được các kiến thức đầy đủ về công nghệ web, về internet và vô số các kỹ năng làm việc trên máy tính khác mà có thể do vô tình hay cố ý, trong quá trình tìm hiểu, học tập và vận hành NukeViet mà họ đã có được. Với những ứng dụng rộng rãi mà NukeViet đã có được kể từ khi ra mắt và và trải qua thời gian dài phát triển, Hội đồng Giám khảo Giải Thưởng Nhân Tài Đất Việt đã đánh giá rất cao những ưu điểm và thế mạnh của NukeViet để đưa sản phẩm vào danh sách 17 sản phẩm sẽ tranh tài tại vòng Chung khảo của Giải Thưởng Nhân Tài Đất Việt 2011 diễn ra vào ngày 17-18/11 tới đây. Bạn đọc có thể tìm hiểu thêm về NukeViet tại http://nukeviet.vn/vi/news/Bao-chi-viet/ http://nukeviet.vn/'),
(10, 'Cả hội trường như vỡ òa, rộn tiếng vỗ tay, tiếng cười nói chúc mừng các nhà khoa học, các nhóm tác giả đoạt Giải thưởng Nhân tài Đất Việt năm 2011. Năm thứ 7 liên tiếp, Giải thưởng đã phát hiện và tôn vinh nhiều tài năng của đất nước. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/01_b7d3f.jpg Sân khấu trước lễ trao giải. Cơ cấu Giải thưởng của Nhân tài Đất Việt 2011 trong lĩnh vực CNTT bao gồm 2 hệ thống giải dành cho “Sản phẩm có tiềm năng ứng dụng” và “Sản phẩm đã ứng dụng rộng rãi trong thực tế”. Mỗi hệ thống giải sẽ có 1 giải Nhất, 1 giải Nhì và 1 giải Ba với trị giá giải thưởng tương đương là 100 triệu đồng, 50 triệu đồng và 30 triệu đồng cùng phần thưởng của các đơn vị tài trợ. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/03_f19bd.jpg Nhiều tác giả, nhóm tác giả đến lễ trao giải từ rất sớm. Giải thưởng Nhân tài Đất Việt 2011 trong lĩnh vực Khoa học Tự nhiên được gọi chính thức là Giải thưởng Khoa học Tự nhiên Việt Nam sẽ có tối đa 6 giải, trị giá 100 triệu đồng/giải dành cho các lĩnh vực: Toán học, Cơ học, Vật lý, Hoá học, Các khoa học về sự sống, Các khoa học về trái đất (gồm cả biển) và môi trường, và các lĩnh vực khoa học liên ngành hoặc đa ngành của hai hoặc nhiều ngành nói trên. Viện Khoa học và Công nghệ Việt Nam thành lập Hội đồng giám khảo gồm các nhà khoa học tự nhiên hàng đầu trong nước để thực hiện việc đánh giá và trao giải. Sau thành công của việc trao Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y dược năm 2010, Ban Tổ chức tiếp tục tìm kiếm những chủ nhân xứng đáng cho Giải thưởng này trong năm 2011. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/07_78b85.jpg Nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam Lê Khả Phiêu tới dự Lễ trao giải. 45 phút trước lễ trao giải, không khí tại Cung Văn hóa Hữu nghị Việt - Xô đã trở nên nhộn nhịp. Sảnh phía trước Cung gần như chật kín. Rất đông bạn trẻ yêu thích công nghệ thông tin, sinh viên các trường đại học đã đổ về đây, cùng với đó là những bó hoa tươi tắn sẽ được dành cho các tác giả, nhóm tác giả đoạt giải. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/09_aef87.jpg Phó Chủ tịch nước CHXHCN Việt Nam Nguyễn Thị Doan. Các vị khách quý cũng đến từ rất sớm. Tới tham dự lễ trao giải năm nay có ông Lê Khả Phiêu, nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam; bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCN Việt Nam; ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam; ông Nguyễn Bắc Son, Bộ trưởng Bộ Thông tin và Truyền thông; ông Đặng Ngọc Tùng, Chủ tịch Tổng Liên đoàn lao động Việt Nam; ông Phạm Văn Linh, Phó trưởng ban Tuyên giáo Trung ương; ông Đỗ Trung Tá, Phái viên của Thủ tướng Chính phủ về CNTT, Chủ tịch Hội đồng Khoa học công nghệ quốc gia; ông Nguyễn Quốc Triệu, nguyên Bộ trưởng Bộ Y tế, Trưởng Ban Bảo vệ Sức khỏe TƯ; bà Cù Thị Hậu, Chủ tịch Hội người cao tuổi Việt Nam; ông Lê Doãn Hợp, nguyên Bộ trưởng Bộ Thông tin Truyền thông, Chủ tịch Hội thông tin truyền thông số… http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/08_ba46c.jpg Bộ trưởng Bộ Thông tin và Truyền thông Nguyễn Bắc Son. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/06_29592.jpg Giáo sư - Viện sỹ Nguyễn Văn Hiệu. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/04_051f2.jpg Nguyên Bộ trưởng Bộ Y tế Nguyễn Quốc Triệu. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/05_c7ea4.jpg Ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam. Do tuổi cao, sức yếu hoặc bận công tác không đến tham dự lễ trao giải nhưng Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang cũng gửi lẵng hoa đến chúc mừng lễ trao giải. Đúng 20h, Lễ trao giải bắt đầu với bài hát “Nhân tài Đất Việt” do ca sỹ Thái Thùy Linh cùng ca sĩ nhí và nhóm múa biểu diễn. Các nhóm tác giả tham dự Giải thưởng năm 2011 và những tác giả của các năm trước từ từ bước ra sân khấu trong tiếng vỗ tay tán dương của khán giả. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/12_74abf.jpg http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN15999_3e629.jpg Tiết mục mở màn Lễ trao giải. Trước Lễ trao giải Giải thưởng Nhân tài Đất Việt năm 2011, Đại tướng Võ Nguyên Giáp, Chủ tịch danh dự Hội Khuyến học Việt Nam, đã gửi thư chúc mừng, khích lệ Ban tổ chức Giải thưởng cũng như các nhà khoa học, các tác giả tham dự. Hà Nội, ngày 16 tháng 11 năm 2011 Giải thưởng “Nhân tài đất Việt” do Hội Khuyến học Việt Nam khởi xướng đã bước vào năm thứ bảy (2005 - 2011) với ba lĩnh vực: Công nghệ thông tin, Khoa học tự nhiên và Y dược. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/thuDaituong1_767f4.jpg Thư của Đại tướng Võ Nguyên Giáp gửi BTC Giải thưởng Nhân tài đất Việt. Tôi gửi lời chúc mừng các nhà khoa học và các thí sinh được nhận giải thưởng “Nhân tài đất Việt” năm nay. Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực. Nhân ngày “Nhà giáo Việt Nam”, chúc Hội Khuyến học Việt nam, chúc các thầy giáo và cô giáo, với tâm huyết và trí tuệ của mình, sẽ đóng góp xứng đáng vào công cuộc đổi mới căn bản và toàn diện nền giáo dục nước nhà, để cho nền giáo dục Việt Nam thực sự là cội nguồn của nguyên khí quốc gia, đảm bảo cho mọi nhân cách và tài năng đất Việt được vun đắp và phát huy vì sự trường tồn, sự phát triển tiến bộ và bền vững của đất nước trong thời đại toàn cầu hóa và hội nhập quốc tế. Chào thân ái, Chủ tịch danh dự Hội Khuyến học Việt Nam Đại tướng Võ Nguyên Giáp Phát biểu khai mạc Lễ trao giải, Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng Ban tổ chức, bày tỏ lời cám ơn chân thành về những tình cảm cao đẹp và sự quan tâm chăm sóc của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang đã và đang dành cho Nhân tài Đất Việt. Nhà báo Phạm Huy Hoàn nhấn mạnh, Giải thưởng Nhân tài Đất Việt suốt 7 năm qua đều nhận được sự quan tâm của các vị lãnh đạo Đảng, Nhà nước và của toàn xã hội. Tại Lễ trao giải, Ban tổ chức luôn có vinh dự được đón tiếp các vị lãnh đạo Đảng và Nhà nước đến dự và trực tiếp trao Giải thưởng. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/15_4670c.jpg Trưởng Ban tổ chức Phạm Huy Hoàn phát biểu khai mạc buổi lễ. Năm 2011, Giải thưởng có 3 lĩnh vực được xét trao giải là CNTT, Khoa học tự nhiên và Y dược. Lĩnh vực CNTT đã đón nhận 204 sản phẩm tham dự từ mọi miền đất nước và cả nước ngoài như thí sinh Nguyễn Thái Bình từ bang California - Hoa Kỳ và một thí sinh ở Pháp cũng đăng ký tham gia. “Cùng với lĩnh vực CNTT, năm nay, Hội đồng khoa học của Viện khoa học và công nghệ Việt Nam và Hội đồng khoa học - Bộ Y tế tiếp tục giới thiệu những nhà khoa học xuất sắc, có công trình nghiên cứu đem lại nhiều lợi ích cho xã hội trong lĩnh vực khoa học tự nhiên và lĩnh vực y dược. Đó là những bác sĩ tài năng, những nhà khoa học mẫn tuệ, những người đang ngày đêm thầm lặng cống hiến trí tuệ sáng tạo của mình cho xã hội trong công cuộc xây dựng đất nước.” - nhà báo Phạm Huy Hoàn nói. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/14_6e18f.jpg Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng BTC Giải thưởng và ông Phan Hoàng Đức, Phó TGĐ Tập đoàn VNPT nhận lẵng hoa chúc mừng của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang. Cũng theo Trưởng Ban tổ chức Phạm Huy Hoàn, đến nay, vị Chủ tịch danh dự đầu tiên của Hội Khuyến học Việt Nam, Đại tướng Võ Nguyên Giáp, đã bước qua tuổi 100 nhưng vẫn luôn dõi theo và động viên từng bước phát triển của Giải thưởng Nhân tài Đất Việt. Đại tướng luôn quan tâm chăm sóc Giải thưởng ngay từ khi Giải thưởng mới ra đời cách đây 7 năm. Trước lễ trao giải, Đại tướng Võ Nguyên Giáp đã gửi thư chúc mừng, động viên Ban tổ chức. Trong thư, Đại tướng viết: “Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực. Sau phần khai mạc, cả hội trường hồi hội chờ đợi phút vinh danh các nhà khoa học và các tác giả, nhóm tác giả đoạt giải. * Giải thưởng Khoa học Tự nhiên Việt Nam thuộc về 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ - Viện Vật lý, Viện Khoa học công nghệ Việt Nam với công trình “Nghiên cứu cấu trúc hạt nhân và các phản ứng hạt nhân”. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn_d4aae.jpg Hai nhà khoa học đã tiến hành thành công các nghiên cứu về phản ứng hạt nhân với nơtron, phản ứng quang hạt nhân, quang phân hạch và các phản ứng hạt nhân khác có cơ chế phức tạp trên các máy gia tốc như máy phát nơtron, Microtron và các máy gia tốc thẳng của Việt Nam và Quốc tế. Các nghiên cứu này đã góp phần làm sáng tỏ cấu trúc hạt nhân và cơ chế phản ứng hạt nhân, đồng thời cung cấp nhiều số liệu hạt nhân mới có giá trị cho Kho tàng số liệu hạt nhân. GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ đã khai thác hiệu quả hai máy gia tốc đầu tiên của Việt Nam là máy phát nơtron NA-3-C và Microtron MT-17 trong nghiên cứu cơ bản, nghiên cứu ứng dụng và đào tạo nhân lực. Trên cơ sở các thiết bị này, hai nhà khoa học đã tiến hành thành công những nghiên cứu cơ bản thực nghiệm đầu tiên về phản ứng hạt nhân ở Việt Nam; nghiên cứu và phát triển các phương pháp phân tích hạt nhân hiện đại và áp dụng thành công ở Việt Nam. Bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCNVN và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn2_e2865.jpg Phó Chủ tịch nước CHXHCNVN Nguyễn Thị Doan và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ. GS.VS Nguyễn Văn Hiệu chia sẻ: “Cách đây không lâu, Chính phủ đã ký quyết định xây dựng nhà máy điện hạt nhân trong điều kiện đất nước còn nhỏ bé, nghèo khó và vì thế việc đào tạo nhân lực là nhiệm vụ số 1 hiện nay. Rất may, Việt Nam có 2 nhà khoa học cực kỳ tâm huyết và nổi tiếng trong cả nước cũng như trên thế giới. Hội đồng khoa học chúng tôi muốn xướng tên 2 nhà khoa học này để Chính phủ huy động cùng phát triển xây dựng nhà máy điện hạt nhân.” GS.VS Hiệu nhấn mạnh, mặc dù điều kiện làm việc của 2 nhà khoa học không được quan tâm, làm việc trên những máy móc cũ kỹ được mua từ năm 1992 nhưng 2 ông vẫn xay mê cống hiến hết mình cho lĩnh Khoa học tự nhiên Việt Nam. * Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y Dược: 2 giải 1. Nhóm nghiên cứu của Bệnh viện Hữu nghị Việt - Đức với công trình “Nghiên cứu triển khai ghép gan, thận, tim lấy từ người cho chết não”. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y_3dca2.jpg Tại bệnh viện Việt Đức, tháng 4/2011, các ca ghép tạng từ nguồn cho là người bệnh chết não được triển khai liên tục. Với 4 người cho chết não hiến tạng, bệnh viện đã ghép tim cho một trường hợp, 2 người được ghép gan, 8 người được ghép thận, 2 người được ghép van tim và tất cả các ca ghép này đều thành công, người bệnh được ghép đã có một cuộc sống tốt hơn với tình trạng sức khỏe ổn định. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y2_cb5a1.jpg Nguyên Tổng Bí Ban chấp hành TW Đảng CSVN Lê Khả Phiêu và ông Vũ Văn Tiền, Chủ tịch Hội đồng quản trị Ngân hàng An Bình trao giải thưởng cho nhóm nghiên cứu của BV Hữu nghị Việt - Đức. Công trong việc ghép tạng từ người cho chết não không chỉ thể hiện năng lực, trình độ, tay nghề của bác sĩ Việt Nam mà nó còn mang một ý nghĩa nhân văn to lớn, mang một thông điệp gửi đến những con người giàu lòng nhân ái với nghĩa cử cao đẹp đã hiến tạng để cứu sống những người bệnh khác. 2. Hội đồng ghép tim Bệnh viện Trung ương Huế với công trình nghiên cứu “Triển khai ghép tim trên người lấy từ người cho chết não”. Đề tài được thực hiện dựa trên ca mổ ghép tim thành công lần đầu tiên ở Việt Nam của chính 100% đội ngũ y, bác sĩ của Bệnh viện Trung ương Huế đầu tháng 3/2011. Bệnh nhân được ghép tim thành công là anh Trần Mậu Đức (26 tuổi, ở phường Phú Hội, TP. Huế). http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y3_7768c.jpg Hội đồng ghép tim BV Trung ương Huế nhận Giải thưởng Nhân tài Đất Việt. Ghép tim từ người cho chết não đến người bị bệnh tim cần được ghép tim phải đảm bảo các yêu cầu: đánh giá chức năng các cơ quan; đánh giá tương hợp miễn dịch và phát hiện nguy cơ tiềm ẩn có thể xảy ra trong và sau khi ghép tim để từ đó có phương thức điều trị thích hợp. Có tới 30 xét nghiệm cận lâm sàng trung và cao cấp tiến hành cho cả người cho tim chết não và người sẽ nhận ghép tim tại hệ thống labo của bệnh viện. --------------------- * Giải thưởng Nhân tài đất Việt Lĩnh vực Công nghệ thông tin. Hệ thống sản phẩm đã ứng dụng thực tế: Giải Nhất: Không có. Giải Nhì: Không có Giải Ba: 3 giải, mỗi giải trị giá 30 triệu đồng. 1. “Bộ cạc xử lý tín hiệu HDTV” của nhóm HD Việt Nam. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/hdtv_13b10.jpg Nhóm HDTV Việt Nam lên nhận giải. Đây là bộ cạc xử lý tín hiệu HDTV đầu tiên tại Việt Nam đạt tiêu chuẩn OpenGear. Bộ thiết bị bao gồm 2 sản phẩm là cạc khuếch đại phân chia tín hiệu HD DA và cạc xử lý tín hiệu HD FX1. Nhờ bộ cạc này mà người sử dụng cũng có thể điều chỉnh mức âm thanh hoặc video để tín hiệu của kênh tuân theo mức chuẩn và không phụ thuộc vào chương trình đầu vào. 2. “Mã nguồn mở NukeViet” của nhóm tác giả Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC). /uploads/news/2011_11/nukeviet-nhantaidatviet2011.jpg NukeViet nhận giải ba Nhân tài đất Việt 2011 NukeViet là CMS mã nguồn mở đầu tiên của Việt Nam có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là VINADES.,JSC - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp. 3. “Hệ thống ngôi nhà thông minh homeON” của nhóm Smart home group. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16132_82014.jpg Sản phẩm là kết quả từ những nghiên cứu miệt mài nhằm xây dựng một ngôi nhà thông minh, một cuộc sống xanh với tiêu chí: An toàn, tiện nghi, sang trọng và tiết kiệm năng lượng, hưởng ứng lời kêu gọi tiết kiệm năng lượng của Chính phủ. * Hệ thống sản phẩm có tiềm năng ứng dụng: Giải Nhất: Không có. Giải Nhì: trị giá 50 triệu đồng: “Dịch vụ Thông tin và Tri thức du lịch ứng dụng cộng nghệ ngữ nghĩa - iCompanion” của nhóm tác giả SIG. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/nhi_7eee0.jpg Nhóm tác giả SIG nhận giải Nhì Nhân tài đất Việt 2011 ở hệ thống sản phẩm có tiềm năng ứng dụng. ICompanion là hệ thống thông tin đầu tiên ứng dụng công nghệ ngữ nghĩa trong lĩnh vực du lịch - với đặc thù khác biệt là cung cấp các dịch vụ tìm kiếm, gợi ý thông tin “thông minh” hơn, hướng người dùng và kết hợp khai thác các tính năng hiện đại của môi trường di động. Đại diện nhóm SIG chia sẻ: “Tinh thần sáng tạo và lòng khát khao muốn được tạo ra các sản phẩm mới có khả năng ứng dụng cao trong thực tiễn luôn có trong lòng của những người trẻ Việt Nam. Cảm ơn ban tổ chức và những nhà tài trợ đã giúp chúng tôi có một sân chơi thú vị để khuyến khích và chắp cánh thực hiện ước mơ của mình. Xin cảm ơn trường ĐH Bách Khoa đã tạo ra một môi trường nghiên cứu và sáng tạo, gắn kết 5 thành viên trong nhóm.” Giải Ba: 2 giải, mỗi giải trị giá 30 triệu đồng. 1. “Bộ điều khiển IPNET” của nhóm IPNET http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16149_ed58d.jpg Nhà báo Phạm Huy Hoàn, Trưởng Ban Tổ chức Giải thưởng NTĐV, Tổng Biên tập báo điện tử Dân trí và ông Tạ Hữu Thanh - Phó TGĐ Jetstar Pacific trao giải cho nhóm IPNET. Bằng cách sử dụng kiến thức thiên văn học để tính giờ mặt trời lặn và mọc tại vị trí cần chiếu sáng được sáng định bởi kinh độ, vĩ độ cao độ, hàng ngày sản phẩm sẽ tính lại thời gian cần bật/tắt đèn cho phù hợp với giờ mặt trời lặn/mọc. 2. “Hệ thống lập kế hoạch xạ trị ung thư quản lý thông tin bệnh nhân trên web - LYNX” của nhóm LYNX. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/3tiem-nang_32fee.jpg Đây là loại phần mềm hoàn toàn mới ở Việt Nam, là hệ thống lập kế hoạch và quản lý thông tin của bệnh nhân ung thư qua Internet (LYNX) dựa vào nền tảng Silverlight của Microsoft và kiến thức chuyên ngành Vật lý y học. LYNX giúp ích cho các nhà khoa học, bác sĩ, kỹ sư vật lý, bệnh nhân và mọi thành viên trong việc quản lý và theo dõi hệ thống xạ trị ung thư một cách tổng thể. LYNX có thể được sử dụng thông qua các thiết bị như máy tính cá nhân, máy tính bảng… và các trình duyệt Internet Explorer, Firefox, Chrome… Chương trình trao giải đã được truyền hình trực tiếp trên VTV2 - Đài Truyền hình Việt Nam và tường thuật trực tuyến trên báo điện tử Dân trí từ 20h tối 20/11/2011. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0545_c898e.jpg http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0560_c995c.jpg http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16199_36a5c.jpg Khởi xướng từ năm 2005, Giải thưởng Nhân tài Đất Việt đã phát hiện và tôn vinh nhiều tài năng trong lĩnh vực CNTT-TT, Khoa học tự nhiên và Y dược, trở thành một sân chơi bổ ích cho những người yêu thích CNTT. Mỗi năm, Giải thưởng ngày càng thu hút số lượng tác giả và sản phẩm tham gia đông đảo và nhận được sự quan tâm sâu sắc của lãnh đạo Đảng, Nhà nước cũng như công chúng. Đối tượng tham gia Giải thưởng trong lĩnh vực CNTT là những người Việt Nam ở mọi lứa tuổi, đang sinh sống trong cũng như ngoài nước. Năm 2006, Giải thưởng có sự tham gia của thí sinh đến từ 8 nước trên thế giới và 40 tỉnh thành của Việt Nam. Từ năm 2009, Giải thưởng được mở rộng sang lĩnh vực Khoa học tự nhiên, và năm 2010 là lĩnh vực Y dược, vinh danh những nhà khoa học trong các lĩnh vực này');

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_cat`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_cat` (
  `catid` smallint(5) unsigned NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `titlesite` varchar(255) DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `descriptionhtml` text,
  `image` varchar(255) DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `newday` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `keywords` text,
  `admins` text,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_teest_cat`
--

INSERT INTO `gt_vi_teest_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `newday`, `featured`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`) VALUES
(1, 0, 'Tin tức', '', 'Tin-tuc', '', '', '', 0, 1, 1, 0, 'viewcat_main_right', 3, '8,12,9', 1, 4, 2, 0, '', '', 1274986690, 1274986690, '6'),
(2, 0, 'Sản phẩm', '', 'San-pham', '', '', '', 0, 2, 5, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274986705, 1274986705, '6'),
(8, 1, 'Thông cáo báo chí', '', 'thong-cao-bao-chi', '', '', '', 0, 1, 2, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987105, 1274987244, '6'),
(9, 1, 'Tin công nghệ', '', 'Tin-cong-nghe', '', '', '', 0, 3, 4, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987212, 1274987212, '6'),
(10, 0, 'Đối tác', '', 'Doi-tac', '', '', '', 0, 3, 9, 0, 'viewcat_main_right', 0, '', 1, 4, 2, 0, '', '', 1274987460, 1274987460, '6'),
(11, 0, 'Tuyển dụng', '', 'Tuyen-dung', '', '', '', 0, 4, 12, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987538, 1274987538, '6'),
(12, 1, 'Bản tin nội bộ', '', 'Ban-tin-noi-bo', '', '', '', 0, 2, 3, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', 1274987902, 1274987902, '6');

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_config_post`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_logs`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_logs` (
  `id` mediumint(8) unsigned NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  `set_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_rows`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_rows` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_teest_rows`
--

INSERT INTO `gt_vi_teest_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 2, 0, 0, 0),
(2, 1, '1,8,12', 1, 1, 'laser', 2, 1274989787, 1275318114, 1, 1274989740, 0, 2, 'Công bố dự án NukeViet 3.0 sau 1 tháng ra mắt VINADES.,JSC', 'Cong-bo-du-an-NukeViet-3-0-sau-1-thang-ra-mat-VINADES-JSC', 'NukeViet 3.0 - Một nền tảng được xây dựng hoàn toàn mới với những công nghệ web tiên tiến nhất hiện nay hứa hẹn sẽ làm một cuộc cách mạng về mã nguồn mở ở Việt Nam. Món quà này là lời cảm ơn chân thành nhất mà VINADES.,JSC muốn gửi tới cộng đồng sau một tháng chính thức ra mắt.', 'nukeviet3.jpg', 'NukeViet 3.0', 1, 1, '6', 1, 2, 0, 0, 0),
(5, 2, '2', 1, 1, '', 5, 1274993307, 1275318039, 1, 1274993280, 0, 2, 'Giới thiệu về mã nguồn mở NukeViet', 'Gioi-thieu-ve-ma-nguon-mo-NukeViet', 'Chắc hẳn đây không phải lần đầu tiên bạn nghe nói đến mã nguồn mở. Và nếu bạn là người mê lướt web thì hẳn bạn từng nhìn thấy đâu đó cái tên NukeViet. NukeViet, phát âm là Nu-Ke-Việt, chính là phần mềm dùng để xây dựng các Website mà bạn ngày ngày online để truy cập đấy.', 'screenshot.jpg', '', 1, 0, '2', 1, 1, 0, 0, 0),
(6, 10, '1,8,10', 0, 1, '', 2, 1274994722, 1275318001, 1, 1274994720, 0, 2, 'Thư mời hợp tác liên kết quảng cáo và cung cấp hosting thử nghiệm', 'Thu-moi-hop-tac', 'Hiện tại VINADES.,JSC đang tiến hành phát triển bộ mã nguồn NukeViet phiên bản 3.0 – một thế hệ CMS hoàn toàn mới với nhiều tính năng ưu việt, được đầu tư bài bản với kinh phí lớn. Với thiện chí hợp tác cùng phát triển VINADES.,JSC xin trân trọng gửi lời mời hợp tác đến Quý đối tác là các công ty cung cấp tên miền - hosting, các doanh nghiệp quan tâm và mong muốn hợp tác cùng VINADES để cùng thực hiện chung các hoạt động kinh doanh nhằm gia tăng giá trị, quảng bá thương hiệu chung cho cả hai bên.', 'hoptac.jpg', '', 1, 1, '6', 1, 1, 0, 0, 0),
(7, 11, '11', 0, 1, '', 2, 1307197282, 1307197381, 1, 1307197260, 0, 2, 'Tuyển dụng lập trình viên, chuyên viên đồ họa phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-chuyen-vien-do-hoa-phat-trien-NukeViet', 'Bạn đam mê nguồn mở? Bạn có năng khiếu lập trình PHP & MySQL? Bạn là chuyên gia đồ họa, HTML, CSS? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'nukeviet-job.jpg', '', 1, 1, '2', 1, 1, 0, 0, 0),
(8, 9, '9', 0, 1, 'laser', 3, 1310067949, 1310068009, 1, 1310067949, 0, 2, 'Webnhanh.vn - website dịch vụ chuyên nghiệp cho NukeViet chính thức ra mắt', 'Webnhanhvn-website-dich-vu-chuyen-nghiep-cho-NukeViet-chinh-thuc-ra-mat', 'Sau một thời gian đi vào hoạt động, Webnhanh.vn đã nhận được nhiều ủng hộ cùng sự quan tâm, góp ý của cộng đồng và khách hàng. Để đáp ứng mong mỏi của cộng đồng về một dịch vụ web chuyên nghiệp với mức giá tối thiểu, Webnhanh.vn đã thực hiện chiến dịch siêu khuyến mại Giảm giá tất cả các gói web dựng sẵn, module, block và giao diện (theme). Mức giảm giá cao nhất tới 90% giá so với trước tháng 7 năm 2011.', 'webnhanh-vn.jpg', '', 1, 1, '6', 1, 1, 0, 0, 0),
(9, 2, '2', 0, 1, 'Phạm Thế Quang Huy', 4, 1322685396, 1322686088, 1, 1322685396, 0, 2, 'NukeViet - Công cụ mã nguồn mở cho cộng đồng thiết kế website Việt Nam', 'NukeViet-Cong-cu-ma-nguon-mo-cho-cong-dong-thiet-ke-website-Viet-Nam', '(Dân trí) - Là một trong những hệ quản trị nội dung nổi tiếng hàng đầu tại Việt Nam, NukeViet đã được áp dụng rộng rãi trong việc xây dựng nhiều trang báo điện tử và các cổng thông tin điện tử nổi tiếng tại Việt Nam. Mới đây nhất, NukeViet đã vượt qua vòng sơ khảo để tranh tài tại vòng chung khảo của Giải Thưởng Nhân Tài Đất Việt 2011', 'product_box.jpg', 'Sản phẩm dự thi Nhân tài Đất Việt 2011&#x3A; Mã nguồn mở NukeViet', 1, 1, '6', 1, 1, 0, 0, 0),
(10, 1, '1,9', 0, 1, '', 4, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_sources`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_sources` (
  `sourceid` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_teest_sources`
--

INSERT INTO `gt_vi_teest_sources` (`sourceid`, `title`, `link`, `logo`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Báo Hà Nội Mới', 'http://hanoimoi.com.vn', '', 1, 1274989177, 1274989177),
(2, 'VINADES.,JSC', 'http://vinades.vn', '', 2, 1274989787, 1274989787),
(3, 'NukeViet', 'http://nukeviet.vn', '', 3, 1274989787, 1274989787),
(4, 'Báo điện tử Dân Trí', 'http://dantri.com.vn', '', 4, 1322685396, 1322685396);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_tags`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_tags` (
  `tid` mediumint(8) unsigned NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` text,
  `keywords` varchar(255) DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_teest_tags`
--

INSERT INTO `gt_vi_teest_tags` (`tid`, `numnews`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 2, 'nguồn-mở', '', '', 'nguồn mở'),
(2, 1, 'quen-thuộc', '', '', 'quen thuộc'),
(3, 2, 'cộng-đồng', '', '', 'cộng đồng'),
(4, 2, 'việt-nam', '', '', 'việt nam'),
(5, 1, 'hoạt-động', '', '', 'hoạt động'),
(6, 1, 'tin-tức', '', '', 'tin tức'),
(7, 1, 'thương-mại-điện', '', '', 'thương mại điện'),
(8, 1, 'điện-tử', '', '', 'điện tử'),
(9, 3, 'nukeviet', '', '', 'nukeviet'),
(10, 1, 'nền-tảng', '', '', 'nền tảng'),
(11, 1, 'xây-dựng', '', '', 'xây dựng'),
(12, 2, 'quản-trị', '', '', 'quản trị'),
(13, 2, 'nội-dung', '', '', 'nội dung'),
(14, 2, 'sử-dụng', '', '', 'sử dụng'),
(15, 2, 'khả-năng', '', '', 'khả năng'),
(16, 2, 'tích-hợp', '', '', 'tích hợp'),
(17, 2, 'ứng-dụng', '', '', 'ứng dụng'),
(18, 1, 'vinades', '', '', 'vinades'),
(19, 1, 'lập-trình-viên', '', '', 'lập trình viên'),
(20, 1, 'chuyên-viên-đồ-họa', '', '', 'chuyên viên đồ họa'),
(21, 1, 'php', '', '', 'php'),
(22, 1, 'mysql', '', '', 'mysql'),
(23, 1, 'khai-trương', '', '', 'khai trương'),
(24, 1, 'khuyến-mại', '', '', 'khuyến mại'),
(25, 1, 'giảm-giá', '', '', 'giảm giá'),
(26, 1, 'siêu-khuyến-mại', '', '', 'siêu khuyến mại'),
(27, 1, 'webnhanh', '', '', 'webnhanh'),
(28, 1, 'thiết-kế-website', '', '', 'thiết kế website'),
(29, 1, 'giao-diện-web', '', '', 'giao diện web'),
(30, 1, 'thiết-kế-web', '', '', 'thiết kế web'),
(31, 2, 'nhân-tài-đất-việt-2011', '', '', 'nhân tài đất việt 2011'),
(32, 2, 'mã-nguồn-mở', '', '', 'mã nguồn mở');

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_tags_id`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_teest_tags_id`
--

INSERT INTO `gt_vi_teest_tags_id` (`id`, `tid`, `keyword`) VALUES
(1, 1, 'nguồn mở'),
(1, 2, 'quen thuộc'),
(1, 3, 'cộng đồng'),
(1, 4, 'việt nam'),
(1, 5, 'hoạt động'),
(1, 6, 'tin tức'),
(1, 7, 'thương mại điện'),
(1, 8, 'điện tử'),
(1, 9, 'nukeviet'),
(2, 10, 'nền tảng'),
(2, 11, 'xây dựng'),
(2, 1, 'nguồn mở'),
(2, 4, 'việt nam'),
(2, 3, 'cộng đồng'),
(5, 12, 'quản trị'),
(5, 13, 'nội dung'),
(5, 14, 'sử dụng'),
(5, 15, 'khả năng'),
(5, 16, 'tích hợp'),
(5, 17, 'ứng dụng'),
(7, 18, 'vinades'),
(7, 9, 'nukeviet'),
(7, 19, 'lập trình viên'),
(7, 20, 'chuyên viên đồ họa'),
(7, 21, 'php'),
(7, 22, 'mysql'),
(8, 23, 'khai trương'),
(8, 24, 'khuyến mại'),
(8, 25, 'giảm giá'),
(8, 26, 'siêu khuyến mại'),
(8, 27, 'webnhanh'),
(8, 28, 'thiết kế website'),
(8, 29, 'giao diện web'),
(8, 30, 'thiết kế web'),
(9, 31, 'Nhân tài Đất Việt 2011'),
(9, 32, 'mã nguồn mở'),
(10, 31, 'Nhân tài đất Việt 2011'),
(10, 32, 'mã nguồn mở'),
(10, 9, 'nukeviet');

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_teest_topics`
--

CREATE TABLE IF NOT EXISTS `gt_vi_teest_topics` (
  `topicid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_teest_topics`
--

INSERT INTO `gt_vi_teest_topics` (`topicid`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 'NukeViet 3', 'NukeViet-3', '', 'NukeViet 3', 1, 'NukeViet 3', 1274990212, 1274990212);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_tra_cuu_diem_thi`
--

CREATE TABLE IF NOT EXISTS `gt_vi_tra_cuu_diem_thi` (
  `id` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT '',
  `imagealt` varchar(255) DEFAULT '',
  `description` text,
  `bodytext` mediumtext NOT NULL,
  `keywords` text,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) DEFAULT '',
  `layout_func` varchar(100) DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_tra_cuu_diem_thi`
--

INSERT INTO `gt_vi_tra_cuu_diem_thi` (`id`, `title`, `alias`, `image`, `imagealt`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(1, 'Tra cứu điểm thi', 'tra-cuu-diem-thi', '', '', '', '<div class="input-group-search">\r\n<div class="input-group-btn-search"><em class="fa fa-search fa-md">Tra cứu</em></div>\r\n</div>', 'tra cứu', 1, '4', '', 0, 1, 1, 1448633054, 1448633054, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_tra_cuu_diem_thi_config`
--

CREATE TABLE IF NOT EXISTS `gt_vi_tra_cuu_diem_thi_config` (
  `config_name` varchar(30) NOT NULL,
  `config_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_tra_cuu_diem_thi_config`
--

INSERT INTO `gt_vi_tra_cuu_diem_thi_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '5'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_video_clip`
--

CREATE TABLE IF NOT EXISTS `gt_vi_video_clip` (
  `id` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT '',
  `imagealt` varchar(255) DEFAULT '',
  `description` text,
  `bodytext` mediumtext NOT NULL,
  `keywords` text,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) DEFAULT '',
  `layout_func` varchar(100) DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_video_clip_config`
--

CREATE TABLE IF NOT EXISTS `gt_vi_video_clip_config` (
  `config_name` varchar(30) NOT NULL,
  `config_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_video_clip_config`
--

INSERT INTO `gt_vi_video_clip_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '5'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_voting`
--

CREATE TABLE IF NOT EXISTS `gt_vi_voting` (
  `vid` smallint(5) unsigned NOT NULL,
  `question` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT '1',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) DEFAULT '',
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_voting`
--

INSERT INTO `gt_vi_voting` (`vid`, `question`, `link`, `acceptcm`, `admin_id`, `groups_view`, `publ_time`, `exp_time`, `act`) VALUES
(2, 'Bạn biết gì về NukeViet 3?', '', 1, 1, '6', 1275318563, 0, 1),
(3, 'Bạn quan tâm gì nhất ở mã nguồn mở?', '', 1, 1, '6', 1275318563, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gt_vi_voting_rows`
--

CREATE TABLE IF NOT EXISTS `gt_vi_voting_rows` (
  `id` mediumint(8) unsigned NOT NULL,
  `vid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `hitstotal` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gt_vi_voting_rows`
--

INSERT INTO `gt_vi_voting_rows` (`id`, `vid`, `title`, `url`, `hitstotal`) VALUES
(5, 2, 'Một bộ sourcecode cho web hoàn toàn mới.', '', 0),
(6, 2, 'Mã nguồn mở, sử dụng miễn phí.', '', 0),
(7, 2, 'Sử dụng xHTML, CSS và hỗ trợ Ajax', '', 0),
(8, 2, 'Tất cả các ý kiến trên', '', 0),
(9, 3, 'Liên tục được cải tiến, sửa đổi bởi cả thế giới.', '', 0),
(10, 3, 'Được sử dụng miễn phí không mất tiền.', '', 0),
(11, 3, 'Được tự do khám phá, sửa đổi theo ý thích.', '', 0),
(12, 3, 'Phù hợp để học tập, nghiên cứu vì được tự do sửa đổi theo ý thích.', '', 0),
(13, 3, 'Tất cả các ý kiến trên', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gt_authors`
--
ALTER TABLE `gt_authors`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `gt_authors_config`
--
ALTER TABLE `gt_authors_config`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Indexes for table `gt_authors_module`
--
ALTER TABLE `gt_authors_module`
  ADD PRIMARY KEY (`mid`), ADD UNIQUE KEY `module` (`module`);

--
-- Indexes for table `gt_banip`
--
ALTER TABLE `gt_banip`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `gt_banners_click`
--
ALTER TABLE `gt_banners_click`
  ADD KEY `bid` (`bid`), ADD KEY `click_day` (`click_day`), ADD KEY `click_ip` (`click_ip`), ADD KEY `click_country` (`click_country`), ADD KEY `click_browse_key` (`click_browse_key`), ADD KEY `click_os_key` (`click_os_key`);

--
-- Indexes for table `gt_banners_clients`
--
ALTER TABLE `gt_banners_clients`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `login` (`login`), ADD UNIQUE KEY `email` (`email`), ADD KEY `full_name` (`full_name`);

--
-- Indexes for table `gt_banners_plans`
--
ALTER TABLE `gt_banners_plans`
  ADD PRIMARY KEY (`id`), ADD KEY `title` (`title`);

--
-- Indexes for table `gt_banners_rows`
--
ALTER TABLE `gt_banners_rows`
  ADD PRIMARY KEY (`id`), ADD KEY `pid` (`pid`), ADD KEY `clid` (`clid`);

--
-- Indexes for table `gt_config`
--
ALTER TABLE `gt_config`
  ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Indexes for table `gt_cookies`
--
ALTER TABLE `gt_cookies`
  ADD UNIQUE KEY `cookiename` (`name`,`domain`,`path`), ADD KEY `name` (`name`);

--
-- Indexes for table `gt_counter`
--
ALTER TABLE `gt_counter`
  ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Indexes for table `gt_cronjobs`
--
ALTER TABLE `gt_cronjobs`
  ADD PRIMARY KEY (`id`), ADD KEY `is_sys` (`is_sys`);

--
-- Indexes for table `gt_extension_files`
--
ALTER TABLE `gt_extension_files`
  ADD PRIMARY KEY (`idfile`);

--
-- Indexes for table `gt_googleplus`
--
ALTER TABLE `gt_googleplus`
  ADD PRIMARY KEY (`gid`), ADD UNIQUE KEY `idprofile` (`idprofile`);

--
-- Indexes for table `gt_groups`
--
ALTER TABLE `gt_groups`
  ADD PRIMARY KEY (`group_id`), ADD UNIQUE KEY `ktitle` (`title`,`idsite`), ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `gt_groups_users`
--
ALTER TABLE `gt_groups_users`
  ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Indexes for table `gt_language`
--
ALTER TABLE `gt_language`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`);

--
-- Indexes for table `gt_language_file`
--
ALTER TABLE `gt_language_file`
  ADD PRIMARY KEY (`idfile`), ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Indexes for table `gt_logs`
--
ALTER TABLE `gt_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gt_notification`
--
ALTER TABLE `gt_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gt_plugin`
--
ALTER TABLE `gt_plugin`
  ADD PRIMARY KEY (`pid`), ADD UNIQUE KEY `plugin_file` (`plugin_file`);

--
-- Indexes for table `gt_sessions`
--
ALTER TABLE `gt_sessions`
  ADD UNIQUE KEY `session_id` (`session_id`), ADD KEY `onl_time` (`onl_time`);

--
-- Indexes for table `gt_setup`
--
ALTER TABLE `gt_setup`
  ADD UNIQUE KEY `lang` (`lang`,`module`);

--
-- Indexes for table `gt_setup_extensions`
--
ALTER TABLE `gt_setup_extensions`
  ADD UNIQUE KEY `title` (`type`,`title`), ADD KEY `id` (`id`), ADD KEY `type` (`type`);

--
-- Indexes for table `gt_setup_language`
--
ALTER TABLE `gt_setup_language`
  ADD PRIMARY KEY (`lang`);

--
-- Indexes for table `gt_upload_dir`
--
ALTER TABLE `gt_upload_dir`
  ADD PRIMARY KEY (`did`), ADD UNIQUE KEY `name` (`dirname`);

--
-- Indexes for table `gt_upload_file`
--
ALTER TABLE `gt_upload_file`
  ADD UNIQUE KEY `did` (`did`,`title`), ADD KEY `userid` (`userid`), ADD KEY `type` (`type`);

--
-- Indexes for table `gt_users`
--
ALTER TABLE `gt_users`
  ADD PRIMARY KEY (`userid`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `md5username` (`md5username`), ADD UNIQUE KEY `email` (`email`), ADD KEY `idsite` (`idsite`);

--
-- Indexes for table `gt_users_config`
--
ALTER TABLE `gt_users_config`
  ADD PRIMARY KEY (`config`);

--
-- Indexes for table `gt_users_field`
--
ALTER TABLE `gt_users_field`
  ADD PRIMARY KEY (`fid`), ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `gt_users_info`
--
ALTER TABLE `gt_users_info`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `gt_users_openid`
--
ALTER TABLE `gt_users_openid`
  ADD PRIMARY KEY (`opid`), ADD KEY `userid` (`userid`), ADD KEY `email` (`email`);

--
-- Indexes for table `gt_users_question`
--
ALTER TABLE `gt_users_question`
  ADD PRIMARY KEY (`qid`), ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Indexes for table `gt_users_reg`
--
ALTER TABLE `gt_users_reg`
  ADD PRIMARY KEY (`userid`), ADD UNIQUE KEY `login` (`username`), ADD UNIQUE KEY `md5username` (`md5username`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `gt_vi_about`
--
ALTER TABLE `gt_vi_about`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `gt_vi_about_config`
--
ALTER TABLE `gt_vi_about_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `gt_vi_blocks_groups`
--
ALTER TABLE `gt_vi_blocks_groups`
  ADD PRIMARY KEY (`bid`), ADD KEY `theme` (`theme`), ADD KEY `module` (`module`), ADD KEY `position` (`position`), ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `gt_vi_blocks_weight`
--
ALTER TABLE `gt_vi_blocks_weight`
  ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Indexes for table `gt_vi_comment`
--
ALTER TABLE `gt_vi_comment`
  ADD PRIMARY KEY (`cid`), ADD KEY `mod_id` (`module`,`area`,`id`), ADD KEY `post_time` (`post_time`);

--
-- Indexes for table `gt_vi_contact_department`
--
ALTER TABLE `gt_vi_contact_department`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `full_name` (`full_name`);

--
-- Indexes for table `gt_vi_contact_reply`
--
ALTER TABLE `gt_vi_contact_reply`
  ADD PRIMARY KEY (`rid`), ADD KEY `id` (`id`);

--
-- Indexes for table `gt_vi_contact_send`
--
ALTER TABLE `gt_vi_contact_send`
  ADD PRIMARY KEY (`id`), ADD KEY `sender_name` (`sender_name`);

--
-- Indexes for table `gt_vi_freecontent_blocks`
--
ALTER TABLE `gt_vi_freecontent_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `gt_vi_freecontent_rows`
--
ALTER TABLE `gt_vi_freecontent_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gt_vi_menu`
--
ALTER TABLE `gt_vi_menu`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `gt_vi_menu_rows`
--
ALTER TABLE `gt_vi_menu_rows`
  ADD PRIMARY KEY (`id`), ADD KEY `parentid` (`parentid`,`mid`);

--
-- Indexes for table `gt_vi_modfuncs`
--
ALTER TABLE `gt_vi_modfuncs`
  ADD PRIMARY KEY (`func_id`), ADD UNIQUE KEY `func_name` (`func_name`,`in_module`), ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Indexes for table `gt_vi_modthemes`
--
ALTER TABLE `gt_vi_modthemes`
  ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Indexes for table `gt_vi_modules`
--
ALTER TABLE `gt_vi_modules`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `gt_vi_news_1`
--
ALTER TABLE `gt_vi_news_1`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_news_2`
--
ALTER TABLE `gt_vi_news_2`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_news_8`
--
ALTER TABLE `gt_vi_news_8`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_news_9`
--
ALTER TABLE `gt_vi_news_9`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_news_10`
--
ALTER TABLE `gt_vi_news_10`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_news_11`
--
ALTER TABLE `gt_vi_news_11`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_news_12`
--
ALTER TABLE `gt_vi_news_12`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_news_13`
--
ALTER TABLE `gt_vi_news_13`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_news_14`
--
ALTER TABLE `gt_vi_news_14`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_news_15`
--
ALTER TABLE `gt_vi_news_15`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_news_16`
--
ALTER TABLE `gt_vi_news_16`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_news_17`
--
ALTER TABLE `gt_vi_news_17`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_news_admins`
--
ALTER TABLE `gt_vi_news_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Indexes for table `gt_vi_news_block`
--
ALTER TABLE `gt_vi_news_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `gt_vi_news_block_cat`
--
ALTER TABLE `gt_vi_news_block_cat`
  ADD PRIMARY KEY (`bid`), ADD UNIQUE KEY `title` (`title`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `gt_vi_news_bodyhtml_1`
--
ALTER TABLE `gt_vi_news_bodyhtml_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gt_vi_news_bodytext`
--
ALTER TABLE `gt_vi_news_bodytext`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gt_vi_news_cat`
--
ALTER TABLE `gt_vi_news_cat`
  ADD PRIMARY KEY (`catid`), ADD UNIQUE KEY `alias` (`alias`), ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `gt_vi_news_config_post`
--
ALTER TABLE `gt_vi_news_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `gt_vi_news_logs`
--
ALTER TABLE `gt_vi_news_logs`
  ADD PRIMARY KEY (`id`), ADD KEY `sid` (`sid`), ADD KEY `userid` (`userid`);

--
-- Indexes for table `gt_vi_news_rows`
--
ALTER TABLE `gt_vi_news_rows`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_news_sources`
--
ALTER TABLE `gt_vi_news_sources`
  ADD PRIMARY KEY (`sourceid`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `gt_vi_news_tags`
--
ALTER TABLE `gt_vi_news_tags`
  ADD PRIMARY KEY (`tid`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `gt_vi_news_tags_id`
--
ALTER TABLE `gt_vi_news_tags_id`
  ADD UNIQUE KEY `sid` (`id`,`tid`);

--
-- Indexes for table `gt_vi_news_topics`
--
ALTER TABLE `gt_vi_news_topics`
  ADD PRIMARY KEY (`topicid`), ADD UNIQUE KEY `title` (`title`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `gt_vi_nha_truong_logs`
--
ALTER TABLE `gt_vi_nha_truong_logs`
  ADD PRIMARY KEY (`id`), ADD KEY `sid` (`sid`), ADD KEY `userid` (`userid`);

--
-- Indexes for table `gt_vi_page`
--
ALTER TABLE `gt_vi_page`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `gt_vi_page_config`
--
ALTER TABLE `gt_vi_page_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `gt_vi_referer_stats`
--
ALTER TABLE `gt_vi_referer_stats`
  ADD UNIQUE KEY `host` (`host`), ADD KEY `total` (`total`);

--
-- Indexes for table `gt_vi_searchkeys`
--
ALTER TABLE `gt_vi_searchkeys`
  ADD KEY `id` (`id`), ADD KEY `skey` (`skey`), ADD KEY `search_engine` (`search_engine`);

--
-- Indexes for table `gt_vi_siteterms`
--
ALTER TABLE `gt_vi_siteterms`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `gt_vi_siteterms_config`
--
ALTER TABLE `gt_vi_siteterms_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `gt_vi_teest_1`
--
ALTER TABLE `gt_vi_teest_1`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_teest_2`
--
ALTER TABLE `gt_vi_teest_2`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_teest_8`
--
ALTER TABLE `gt_vi_teest_8`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_teest_9`
--
ALTER TABLE `gt_vi_teest_9`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_teest_10`
--
ALTER TABLE `gt_vi_teest_10`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_teest_11`
--
ALTER TABLE `gt_vi_teest_11`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_teest_12`
--
ALTER TABLE `gt_vi_teest_12`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_teest_admins`
--
ALTER TABLE `gt_vi_teest_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Indexes for table `gt_vi_teest_block`
--
ALTER TABLE `gt_vi_teest_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `gt_vi_teest_block_cat`
--
ALTER TABLE `gt_vi_teest_block_cat`
  ADD PRIMARY KEY (`bid`), ADD UNIQUE KEY `title` (`title`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `gt_vi_teest_bodyhtml_1`
--
ALTER TABLE `gt_vi_teest_bodyhtml_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gt_vi_teest_bodytext`
--
ALTER TABLE `gt_vi_teest_bodytext`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gt_vi_teest_cat`
--
ALTER TABLE `gt_vi_teest_cat`
  ADD PRIMARY KEY (`catid`), ADD UNIQUE KEY `alias` (`alias`), ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `gt_vi_teest_config_post`
--
ALTER TABLE `gt_vi_teest_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `gt_vi_teest_logs`
--
ALTER TABLE `gt_vi_teest_logs`
  ADD PRIMARY KEY (`id`), ADD KEY `sid` (`sid`), ADD KEY `userid` (`userid`);

--
-- Indexes for table `gt_vi_teest_rows`
--
ALTER TABLE `gt_vi_teest_rows`
  ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `gt_vi_teest_sources`
--
ALTER TABLE `gt_vi_teest_sources`
  ADD PRIMARY KEY (`sourceid`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `gt_vi_teest_tags`
--
ALTER TABLE `gt_vi_teest_tags`
  ADD PRIMARY KEY (`tid`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `gt_vi_teest_tags_id`
--
ALTER TABLE `gt_vi_teest_tags_id`
  ADD UNIQUE KEY `sid` (`id`,`tid`);

--
-- Indexes for table `gt_vi_teest_topics`
--
ALTER TABLE `gt_vi_teest_topics`
  ADD PRIMARY KEY (`topicid`), ADD UNIQUE KEY `title` (`title`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `gt_vi_tra_cuu_diem_thi`
--
ALTER TABLE `gt_vi_tra_cuu_diem_thi`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `gt_vi_tra_cuu_diem_thi_config`
--
ALTER TABLE `gt_vi_tra_cuu_diem_thi_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `gt_vi_video_clip`
--
ALTER TABLE `gt_vi_video_clip`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `gt_vi_video_clip_config`
--
ALTER TABLE `gt_vi_video_clip_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `gt_vi_voting`
--
ALTER TABLE `gt_vi_voting`
  ADD PRIMARY KEY (`vid`), ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `gt_vi_voting_rows`
--
ALTER TABLE `gt_vi_voting_rows`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `vid` (`vid`,`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gt_authors_config`
--
ALTER TABLE `gt_authors_config`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_authors_module`
--
ALTER TABLE `gt_authors_module`
  MODIFY `mid` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `gt_banip`
--
ALTER TABLE `gt_banip`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_banners_clients`
--
ALTER TABLE `gt_banners_clients`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_banners_plans`
--
ALTER TABLE `gt_banners_plans`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gt_banners_rows`
--
ALTER TABLE `gt_banners_rows`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `gt_cronjobs`
--
ALTER TABLE `gt_cronjobs`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gt_extension_files`
--
ALTER TABLE `gt_extension_files`
  MODIFY `idfile` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_googleplus`
--
ALTER TABLE `gt_googleplus`
  MODIFY `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_groups`
--
ALTER TABLE `gt_groups`
  MODIFY `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `gt_language`
--
ALTER TABLE `gt_language`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_language_file`
--
ALTER TABLE `gt_language_file`
  MODIFY `idfile` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_logs`
--
ALTER TABLE `gt_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `gt_notification`
--
ALTER TABLE `gt_notification`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_plugin`
--
ALTER TABLE `gt_plugin`
  MODIFY `pid` tinyint(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_upload_dir`
--
ALTER TABLE `gt_upload_dir`
  MODIFY `did` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `gt_users`
--
ALTER TABLE `gt_users`
  MODIFY `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gt_users_field`
--
ALTER TABLE `gt_users_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_users_question`
--
ALTER TABLE `gt_users_question`
  MODIFY `qid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `gt_users_reg`
--
ALTER TABLE `gt_users_reg`
  MODIFY `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_vi_about`
--
ALTER TABLE `gt_vi_about`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gt_vi_blocks_groups`
--
ALTER TABLE `gt_vi_blocks_groups`
  MODIFY `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `gt_vi_comment`
--
ALTER TABLE `gt_vi_comment`
  MODIFY `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_vi_contact_department`
--
ALTER TABLE `gt_vi_contact_department`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gt_vi_contact_reply`
--
ALTER TABLE `gt_vi_contact_reply`
  MODIFY `rid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_vi_contact_send`
--
ALTER TABLE `gt_vi_contact_send`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_vi_freecontent_blocks`
--
ALTER TABLE `gt_vi_freecontent_blocks`
  MODIFY `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gt_vi_freecontent_rows`
--
ALTER TABLE `gt_vi_freecontent_rows`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gt_vi_menu`
--
ALTER TABLE `gt_vi_menu`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gt_vi_menu_rows`
--
ALTER TABLE `gt_vi_menu_rows`
  MODIFY `id` mediumint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT for table `gt_vi_modfuncs`
--
ALTER TABLE `gt_vi_modfuncs`
  MODIFY `func_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `gt_vi_news_1`
--
ALTER TABLE `gt_vi_news_1`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `gt_vi_news_2`
--
ALTER TABLE `gt_vi_news_2`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `gt_vi_news_8`
--
ALTER TABLE `gt_vi_news_8`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gt_vi_news_9`
--
ALTER TABLE `gt_vi_news_9`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gt_vi_news_10`
--
ALTER TABLE `gt_vi_news_10`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gt_vi_news_11`
--
ALTER TABLE `gt_vi_news_11`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `gt_vi_news_12`
--
ALTER TABLE `gt_vi_news_12`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gt_vi_news_13`
--
ALTER TABLE `gt_vi_news_13`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_vi_news_14`
--
ALTER TABLE `gt_vi_news_14`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_vi_news_15`
--
ALTER TABLE `gt_vi_news_15`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_vi_news_16`
--
ALTER TABLE `gt_vi_news_16`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_vi_news_17`
--
ALTER TABLE `gt_vi_news_17`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_vi_news_block_cat`
--
ALTER TABLE `gt_vi_news_block_cat`
  MODIFY `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gt_vi_news_cat`
--
ALTER TABLE `gt_vi_news_cat`
  MODIFY `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `gt_vi_news_logs`
--
ALTER TABLE `gt_vi_news_logs`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_vi_news_rows`
--
ALTER TABLE `gt_vi_news_rows`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `gt_vi_news_sources`
--
ALTER TABLE `gt_vi_news_sources`
  MODIFY `sourceid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gt_vi_news_tags`
--
ALTER TABLE `gt_vi_news_tags`
  MODIFY `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `gt_vi_news_topics`
--
ALTER TABLE `gt_vi_news_topics`
  MODIFY `topicid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gt_vi_nha_truong_logs`
--
ALTER TABLE `gt_vi_nha_truong_logs`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_vi_page`
--
ALTER TABLE `gt_vi_page`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_vi_siteterms`
--
ALTER TABLE `gt_vi_siteterms`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gt_vi_teest_1`
--
ALTER TABLE `gt_vi_teest_1`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gt_vi_teest_2`
--
ALTER TABLE `gt_vi_teest_2`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `gt_vi_teest_8`
--
ALTER TABLE `gt_vi_teest_8`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gt_vi_teest_9`
--
ALTER TABLE `gt_vi_teest_9`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gt_vi_teest_10`
--
ALTER TABLE `gt_vi_teest_10`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gt_vi_teest_11`
--
ALTER TABLE `gt_vi_teest_11`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `gt_vi_teest_12`
--
ALTER TABLE `gt_vi_teest_12`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gt_vi_teest_block_cat`
--
ALTER TABLE `gt_vi_teest_block_cat`
  MODIFY `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gt_vi_teest_cat`
--
ALTER TABLE `gt_vi_teest_cat`
  MODIFY `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `gt_vi_teest_logs`
--
ALTER TABLE `gt_vi_teest_logs`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_vi_teest_rows`
--
ALTER TABLE `gt_vi_teest_rows`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gt_vi_teest_sources`
--
ALTER TABLE `gt_vi_teest_sources`
  MODIFY `sourceid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gt_vi_teest_tags`
--
ALTER TABLE `gt_vi_teest_tags`
  MODIFY `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `gt_vi_teest_topics`
--
ALTER TABLE `gt_vi_teest_topics`
  MODIFY `topicid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gt_vi_tra_cuu_diem_thi`
--
ALTER TABLE `gt_vi_tra_cuu_diem_thi`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gt_vi_video_clip`
--
ALTER TABLE `gt_vi_video_clip`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gt_vi_voting`
--
ALTER TABLE `gt_vi_voting`
  MODIFY `vid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gt_vi_voting_rows`
--
ALTER TABLE `gt_vi_voting_rows`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
