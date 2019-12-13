-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2019 at 01:59 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add user', 1, 'add_taikhoan'),
(2, 'Can change user', 1, 'change_taikhoan'),
(3, 'Can delete user', 1, 'delete_taikhoan'),
(4, 'Can view user', 1, 'view_taikhoan'),
(5, 'Can add tag', 2, 'add_tag'),
(6, 'Can change tag', 2, 'change_tag'),
(7, 'Can delete tag', 2, 'delete_tag'),
(8, 'Can view tag', 2, 'view_tag'),
(9, 'Can add loai tin', 3, 'add_loaitin'),
(10, 'Can change loai tin', 3, 'change_loaitin'),
(11, 'Can delete loai tin', 3, 'delete_loaitin'),
(12, 'Can view loai tin', 3, 'view_loaitin'),
(13, 'Can add the loai', 4, 'add_theloai'),
(14, 'Can change the loai', 4, 'change_theloai'),
(15, 'Can delete the loai', 4, 'delete_theloai'),
(16, 'Can view the loai', 4, 'view_theloai'),
(17, 'Can add tin', 5, 'add_tin'),
(18, 'Can change tin', 5, 'change_tin'),
(19, 'Can delete tin', 5, 'delete_tin'),
(20, 'Can view tin', 5, 'view_tin'),
(21, 'Can add comment', 6, 'add_comment'),
(22, 'Can change comment', 6, 'change_comment'),
(23, 'Can delete comment', 6, 'delete_comment'),
(24, 'Can view comment', 6, 'view_comment'),
(25, 'Can add log entry', 7, 'add_logentry'),
(26, 'Can change log entry', 7, 'change_logentry'),
(27, 'Can delete log entry', 7, 'delete_logentry'),
(28, 'Can view log entry', 7, 'view_logentry'),
(29, 'Can add permission', 8, 'add_permission'),
(30, 'Can change permission', 8, 'change_permission'),
(31, 'Can delete permission', 8, 'delete_permission'),
(32, 'Can view permission', 8, 'view_permission'),
(33, 'Can add group', 9, 'add_group'),
(34, 'Can change group', 9, 'change_group'),
(35, 'Can delete group', 9, 'delete_group'),
(36, 'Can view group', 9, 'view_group'),
(37, 'Can add content type', 10, 'add_contenttype'),
(38, 'Can change content type', 10, 'change_contenttype'),
(39, 'Can delete content type', 10, 'delete_contenttype'),
(40, 'Can view content type', 10, 'view_contenttype'),
(41, 'Can add session', 11, 'add_session'),
(42, 'Can change session', 11, 'change_session'),
(43, 'Can delete session', 11, 'delete_session'),
(44, 'Can view session', 11, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_swedish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-12-12 11:24:06.329196', '1', 'Thời sự', 1, '[{\"added\": {}}]', 4, 1),
(2, '2019-12-12 11:24:30.272285', '1', 'Thời sự', 2, '[]', 4, 1),
(3, '2019-12-12 11:24:42.974223', '2', 'Kinh doanh', 1, '[{\"added\": {}}]', 4, 1),
(4, '2019-12-12 11:24:52.943243', '3', 'Giải trí', 1, '[{\"added\": {}}]', 4, 1),
(5, '2019-12-12 11:24:57.628454', '4', 'Giáo dục', 1, '[{\"added\": {}}]', 4, 1),
(6, '2019-12-12 11:25:10.919082', '5', 'Đời sống', 1, '[{\"added\": {}}]', 4, 1),
(7, '2019-12-12 11:25:16.748191', '6', 'Pháp luật', 1, '[{\"added\": {}}]', 4, 1),
(8, '2019-12-12 11:25:24.508232', '7', 'Công nghệ', 1, '[{\"added\": {}}]', 4, 1),
(9, '2019-12-12 11:25:28.782780', '7', 'Công nghệ', 2, '[]', 4, 1),
(10, '2019-12-12 11:25:35.238922', '8', 'Thể thao', 1, '[{\"added\": {}}]', 4, 1),
(11, '2019-12-12 11:26:10.837586', '1', 'Chống tham lũng', 1, '[{\"added\": {}}]', 3, 1),
(12, '2019-12-12 11:26:27.391047', '2', 'Quốc hội', 1, '[{\"added\": {}}]', 3, 1),
(13, '2019-12-12 11:26:36.215376', '3', 'An toàn giao thông', 1, '[{\"added\": {}}]', 3, 1),
(14, '2019-12-12 11:26:46.444190', '4', 'Môi trường', 1, '[{\"added\": {}}]', 3, 1),
(15, '2019-12-12 11:26:55.166414', '5', 'Du học', 1, '[{\"added\": {}}]', 3, 1),
(16, '2019-12-12 11:27:04.444242', '6', 'Người thầy', 1, '[{\"added\": {}}]', 3, 1),
(17, '2019-12-12 11:27:20.895015', '7', 'Thế giới sao', 1, '[{\"added\": {}}]', 3, 1),
(18, '2019-12-12 11:27:25.351300', '8', 'Doanh nhân', 1, '[{\"added\": {}}]', 3, 1),
(19, '2019-12-12 11:34:53.941023', '8', 'Hà Nội chuyển công tác hơn 700 cán bộ, công chức để ngăn tham nhũng', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(20, '2019-12-12 11:35:21.250956', '7', 'Ô tô đoàn nghệ thuật tình thương lao vào vách núi, 2 người chết', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(21, '2019-12-12 11:35:33.852510', '6', 'Nguyên Phó Bí thư huyện kêu cứu, Công an Quảng Ngãi thông tin bất ngờ', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(22, '2019-12-12 11:35:43.956915', '5', 'Nghi vấn giật dây chuyền rồi ngã xe máy chết sau tai nạn ở Sài Gòn', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(23, '2019-12-12 11:35:51.990897', '4', 'Phòng chống tham nhũng là bước đột phá trong công tác xây dựng Đảng', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(24, '2019-12-12 11:36:00.369374', '3', 'Đi bão ăn mừng U22, xe bán tải đâm gãy cột điện, 2 người nhập viện', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(25, '2019-12-12 11:36:09.592814', '2', 'Phó Bí thư tỉnh Quảng Ngãi lên tiếng vụ người tố tiêu cực bị uy hiếp tính mạng', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(26, '2019-12-12 11:36:17.680423', '1', 'Ông Hoàng Trung Hải: Hà Nội vẫn dùng dịch vụ phần mềm của Nhật Cường', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(27, '2019-12-12 11:42:56.045953', '8', 'Hà Nội chuyển công tác hơn 700 cán bộ, công chức để ngăn tham nhũng', 2, '[]', 5, 1),
(28, '2019-12-12 11:43:26.257868', '9', 's;ldfjg;lsdfjg;sdl', 1, '[{\"added\": {}}]', 5, 1),
(29, '2019-12-12 12:28:57.287684', '9', 's;ldfjg;lsdfjg;sdl', 3, '', 5, 1),
(30, '2019-12-12 12:30:06.405780', '1', 'Ông Hoàng Trung Hải: Hà Nội vẫn dùng dịch vụ phần mềm của Nhật Cường', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(31, '2019-12-12 12:30:49.523810', '2', 'Phó Bí thư tỉnh Quảng Ngãi lên tiếng vụ người tố tiêu cực bị uy hiếp tính mạng', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(32, '2019-12-12 12:31:41.658911', '3', 'Đi bão ăn mừng U22, xe bán tải đâm gãy cột điện, 2 người nhập viện', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(33, '2019-12-12 12:31:56.801974', '4', 'Phòng chống tham nhũng là bước đột phá trong công tác xây dựng Đảng', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(34, '2019-12-12 12:32:08.406114', '5', 'Nghi vấn giật dây chuyền rồi ngã xe máy chết sau tai nạn ở Sài Gòn', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(35, '2019-12-12 12:32:57.862917', '6', 'Nguyên Phó Bí thư huyện kêu cứu, Công an Quảng Ngãi thông tin bất ngờ', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'admin', 'logentry'),
(9, 'auth', 'group'),
(8, 'auth', 'permission'),
(10, 'contenttypes', 'contenttype'),
(11, 'sessions', 'session'),
(2, 'Tag', 'tag'),
(1, 'TaiKhoan', 'taikhoan'),
(6, 'Tin', 'comment'),
(3, 'Tin', 'loaitin'),
(4, 'Tin', 'theloai'),
(5, 'Tin', 'tin');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Tag', '0001_initial', '2019-12-12 11:08:17.642756'),
(2, 'contenttypes', '0001_initial', '2019-12-12 11:08:19.116688'),
(3, 'contenttypes', '0002_remove_content_type_name', '2019-12-12 11:08:20.654864'),
(4, 'auth', '0001_initial', '2019-12-12 11:08:23.026926'),
(5, 'auth', '0002_alter_permission_name_max_length', '2019-12-12 11:08:31.355543'),
(6, 'auth', '0003_alter_user_email_max_length', '2019-12-12 11:08:31.392634'),
(7, 'auth', '0004_alter_user_username_opts', '2019-12-12 11:08:31.464626'),
(8, 'auth', '0005_alter_user_last_login_null', '2019-12-12 11:08:31.510598'),
(9, 'auth', '0006_require_contenttypes_0002', '2019-12-12 11:08:31.547589'),
(10, 'auth', '0007_alter_validators_add_error_messages', '2019-12-12 11:08:31.605556'),
(11, 'auth', '0008_alter_user_username_max_length', '2019-12-12 11:08:31.668530'),
(12, 'auth', '0009_alter_user_last_name_max_length', '2019-12-12 11:08:31.713870'),
(13, 'auth', '0010_alter_group_name_max_length', '2019-12-12 11:08:33.994438'),
(14, 'auth', '0011_update_proxy_permissions', '2019-12-12 11:08:34.177334'),
(15, 'TaiKhoan', '0001_initial', '2019-12-12 11:08:35.675240'),
(16, 'Tin', '0001_initial', '2019-12-12 11:08:45.251436'),
(17, 'Tin', '0002_auto_20191212_1755', '2019-12-12 11:08:53.680464'),
(18, 'Tin', '0003_auto_20191212_1758', '2019-12-12 11:09:06.158510'),
(19, 'admin', '0001_initial', '2019-12-12 11:09:07.275449'),
(20, 'admin', '0002_logentry_remove_auto_add', '2019-12-12 11:09:12.486977'),
(21, 'admin', '0003_logentry_add_action_flag_choices', '2019-12-12 11:09:12.595053'),
(22, 'sessions', '0001_initial', '2019-12-12 11:09:13.125494'),
(23, 'Tin', '0004_auto_20191212_1818', '2019-12-12 11:18:58.536484');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_swedish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('vz9d2xcyiyfzdu9cpnufykakzpkm0lto', 'NTQxOThlMWE1ZDdhNDg5ZjkxMGQyMzgxN2E0ZGEwMDMzMTI4MTgzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NzczMTUzMDIyYWJjOWM3ZTBkYzAwMDU3YTEyYzBkMTZhY2FlZTU5In0=', '2019-12-26 11:11:20.742915');

-- --------------------------------------------------------

--
-- Table structure for table `tag_tag`
--

CREATE TABLE `tag_tag` (
  `id` int(11) NOT NULL,
  `nd` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `soLuong` int(11) NOT NULL,
  `create_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan_taikhoan`
--

CREATE TABLE `taikhoan_taikhoan` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_swedish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_swedish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_swedish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `age` int(11) NOT NULL,
  `diaChi` longtext COLLATE utf8_swedish_ci NOT NULL,
  `gioiTinh` varchar(255) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `taikhoan_taikhoan`
--

INSERT INTO `taikhoan_taikhoan` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `age`, `diaChi`, `gioiTinh`) VALUES
(1, 'pbkdf2_sha256$150000$Av1y8Xp403Er$iYKf9GJu9Os/7GaDZ5jV5WW3AqOVp7yQ6GGumDVJewg=', '2019-12-12 11:11:20.672146', 1, 'admin', '', '', '', 1, 1, '2019-12-12 11:11:15.961170', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan_taikhoan_groups`
--

CREATE TABLE `taikhoan_taikhoan_groups` (
  `id` int(11) NOT NULL,
  `taikhoan_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan_taikhoan_user_permissions`
--

CREATE TABLE `taikhoan_taikhoan_user_permissions` (
  `id` int(11) NOT NULL,
  `taikhoan_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tin_comment`
--

CREATE TABLE `tin_comment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `gmail` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `nd` longtext COLLATE utf8_swedish_ci NOT NULL,
  `creat_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  `id_Tin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tin_loaitin`
--

CREATE TABLE `tin_loaitin` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `tenKhongDau` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `idTheLoai_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `tin_loaitin`
--

INSERT INTO `tin_loaitin` (`id`, `ten`, `tenKhongDau`, `idTheLoai_id`) VALUES
(1, 'Chống tham lũng', 'chong-tham-lung', 1),
(2, 'Quốc hội', 'quoc-hoi', 1),
(3, 'An toàn giao thông', 'an-toan-giao-thong', 1),
(4, 'Môi trường', 'moi-truong', 1),
(5, 'Du học', 'du-hoc', 4),
(6, 'Người thầy', 'nguoi-thay', 4),
(7, 'Thế giới sao', 'the-gioi-sao', 3),
(8, 'Doanh nhân', 'doanh-nhan', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tin_theloai`
--

CREATE TABLE `tin_theloai` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `tenKhongDau` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `tin_theloai`
--

INSERT INTO `tin_theloai` (`id`, `ten`, `tenKhongDau`) VALUES
(1, 'Thời sự', 'thoi-su'),
(2, 'Kinh doanh', 'kinh-doanh'),
(3, 'Giải trí', 'giai-tri'),
(4, 'Giáo dục', 'giao-duc'),
(5, 'Đời sống', 'oi-song'),
(6, 'Pháp luật', 'phap-luat'),
(7, 'Công nghệ', 'cong-nghe'),
(8, 'Thể thao', 'the-thao');

-- --------------------------------------------------------

--
-- Table structure for table `tin_tin`
--

CREATE TABLE `tin_tin` (
  `id` int(11) NOT NULL,
  `tieuDe` longtext COLLATE utf8_swedish_ci NOT NULL,
  `tieuDeKhongDau` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `ndTomTat` longtext COLLATE utf8_swedish_ci NOT NULL,
  `nd` longtext COLLATE utf8_swedish_ci NOT NULL,
  `anh` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `view` int(11) NOT NULL,
  `tacGia` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  `id_lt_id` int(11) NOT NULL,
  `id_tl_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `tin_tin`
--

INSERT INTO `tin_tin` (`id`, `tieuDe`, `tieuDeKhongDau`, `ndTomTat`, `nd`, `anh`, `view`, `tacGia`, `create_at`, `update_at`, `id_lt_id`, `id_tl_id`) VALUES
(1, 'Ông Hoàng Trung Hải: Hà Nội vẫn dùng dịch vụ phần mềm của Nhật Cường', 'ong-hoang-trung-hai-ha-noi-van-dung-dich-vu-phan-mem-cua-nhat-cuong', 'Bí thư Thành ủy Hà Nội Hoàng Trung Hải cho biết, các dịch vụ phần mềm do Nhật Cường cung cấp vẫn đang được TP sử dụng.', '<p><h2><b>Bí thư Thành ủy Hà Nội Hoàng Trung Hải cho biết, các dịch vụ phần mềm do Nhật Cường cung cấp vẫn đang được TP sử dụng.</b></h2></p>\r\n<p>Liên quan vụ Nhật Cường, mới đây Bộ Công an đã bắt nguyên Phó giám đốc Sở KH&ĐT Nguyễn Tiến Học vì vi phạm quy định về đấu thầu gây hậu quả nghiêm trọng.\r\n\r\nBên lề kỳ họp HĐND TP Hà Nội sáng nay, báo chí đặt câu hỏi với Bí thư Thành uỷ Hà Nội Hoàng Trung Hải về dịch vụ phần mềm của Nhật Cường cung cấp cho TP có tiếp tục được sử dụng.\r\n\r\nTrả lời câu hỏi này, ông Hoàng Trung Hải nói: “Các dịch vụ đó vẫn đang sử dụng”.</p>\r\n<img src=\"static/images/ong-hoang-trung-hai-ha-noi-van-dung-dich-vu-phan-mem-cua-nhat-cuong-240x160.jpg\">\r\n<p>\r\nTheo lãnh đạo Thành ủy, việc vi phạm thế nào cơ quan pháp luật sẽ kết luận, còn những dịch vụ TP đang sử dụng thì vẫn sử dụng bình thường.\r\n</p>\r\n<p>\r\n“Thực tế vừa rồi các phần mềm cung cấp dịch vụ công cấp độ 3, cấp độ 4, rồi đăng ký doanh nghiệp, đăng ký kinh doanh qua mạng thì tất cả vẫn hoạt động bình thường. TP phải có người quản trị việc đó”, ông Hải nói.\r\n</p>\r\n<p>\r\nPV tiếp tục hỏi: Sau động thái của cơ quan điều tra, TP có chỉ đạo thanh tra, rà soát lại quá trình đấu thầu cung cấp dịch vụ công?\r\n\r\n\"Không, về nguyên tắc cơ quan điều tra đang điều tra thì mình hợp tác với cơ quan điều tra để họ làm. Hà Nội sẽ hợp tác với cơ quan điều tra để làm\", ông Hải nói.\r\n\r\nCùng vấn đề trên, Chủ tịch UBND TP Hà Nội Nguyễn Đức Chung đề nghị báo chí “chờ cơ quan điều tra kết luận”.\r\n\r\nTrao đổi thêm, Giám đốc Sở KH&ĐT Nguyễn Mạnh Quyền cho biết, sau động thái của Bộ Công an, Sở sẽ chỉ đạo rà soát lại công tác đấu thầu.\r\n\r\n“Đó là việc đương nhiên, phải có rà soát và báo cáo Thành ủy, UBND TP để xin chỉ đạo”, ông Quyền khẳng định. Ông nói thêm, có vấn đề gì thì mời PV đến Sở để phân công người cung cấp thông tin.\r\n\r\nCơ quan Cảnh sát điều tra Bộ Công an (C03) đang điều tra mở rộng vụ án Buôn lậu, Vi phạm quy định về kế toán gây hậu quả nghiêm trọng, Rửa tiền xảy ra tại công ty TNHH Thương mại và dịch vụ kỹ thuật Nhật Cường, công ty TNHH Giải pháp phần mềm Nhật Cường (Nhật Cường Software) và các đơn vị có liên quan.\r\n</p>\r\nNgày 29/11, Bộ Công an đã khởi tố, bắt tạm giam nguyên Phó giám đốc Sở KH&ĐT Hà Nội Nguyễn Tiến Học và 2 người khác về tội Vi phạm quy định về đấu thầu gây hậu quả nghiêm trọng.\r\n<p>\r\nCơ quan Cảnh sát điều tra, Bộ Công an cũng đã ra quyết định bổ sung quyết định khởi tố bị can đối với Bùi Quang Huy, TGĐ công ty TNHH Thương mại và dịch vụ Nhật Cường, Giám đốc công ty TNHH Giải pháp phần mềm Nhật Cường (hiện đang bị truy nã). \r\n</p>', 'images/19/12/12/ong-hoang-trung-hai-ha-noi-van-dung-dich-vu-phan-mem-cua-nhat-cuong-240x_gPAlAeF.jpg', 70, 'admin', '2019-12-11 16:47:34.697716', '2019-12-12 12:30:06.397784', 1, 1),
(2, 'Phó Bí thư tỉnh Quảng Ngãi lên tiếng vụ người tố tiêu cực bị uy hiếp tính mạng', 'pho-bi-thu-tinh-quang-ngai-len-tieng-vu-nguoi-to-tieu-cuc-bi-uy-hiep-tinh-mang', 'TP Hà Nội đã chuyển đổi vị trí công tác của 714 cán bộ, công chức nhằm ngăn ngừa tham nhũng.', '<p><h2><b>TP Hà Nội đã chuyển đổi vị trí công tác của 714 cán bộ, công chức nhằm ngăn ngừa tham nhũng.</b></h2></p>\r\n<p>Kỳ họp thứ 11, khoá 15 của HĐND TP Hà Nội khai mạc sáng nay.\r\n\r\nTờ trình của UBND TP về báo cáo công tác phòng, chống tham nhũng năm 2019 nêu nhiều kết quả đã đạt được trong năm.\r\n\r\nTheo đó, TP đã triển khai kiểm tra 578 cơ quan, tổ chức, đơn vị về việc thực hiện các quy định về công khai, minh bạch trong hoạt động.</p>\r\n<img src=\"static/images/ha-noi-chuyen-vi-tri-cong-tac-hon-700-can-bo-de-ngan-tham-nhung-240x160.jpg\">\r\n<p>\r\nViệc ban hành và thực hiện các chế độ, định mức, tiêu chuẩn cũng được thực hiện trên tất cả các lĩnh vực với 360 cuộc kiểm tra. Qua đó, phát hiện 1 vụ việc và 2 cá nhân vi phạm quy định về chế độ, định mức, tiêu chuẩn.</p>\r\n<p>\r\nViệc thực hiện quy tắc ứng xử của cán bộ, công chức, viên chức được giám sát chặt chẽ. Gần 450 cơ quan, tổ chức đã được kiểm tra và có 4 trường hợp vi phạm được xem xét, xử lý.</p>\r\n<p>\r\nBáo cáo cho biết, năm 2019, Hà Nội đã chuyển đổi vị trí công tác của 714 cán bộ, công chức nhằm ngăn ngừa tham nhũng.</p>\r\n<p>\r\nTP cũng đã tăng cường công tác tuyên truyền, quán triệt và tổ chức thực hiện tốt các chính sách về chính sách tinh giản biên chế. Hà Nội đã phê duyệt danh sách và kinh phí tinh giản biên chế 6 đợt với 191 trường hợp (176 trường hợp về hưu trước tuổi, 15 trường hợp thôi việc ngay).</p>\r\n<p>\r\nĐồng thời phê duyệt danh sách và kinh phí chi trả cho cán bộ nghỉ hưu trước tuổi do không đủ điều kiện về tuổi tái cử, tái bổ nhiệm giữ chức vụ, chức danh trong 2 đợt với 62 cán bộ\r\n.</p>\r\n<p>\r\nVề kết quả phát hiện, xử lý tham nhũng, vi phạm, UBND TP thông tin đã chuyển cơ quan điều tra 5 vụ việc và kiến nghị chuyển cơ quan điều tra 8 vụ.\r\n</p>\r\n<p>\r\nCông an Hà Nội cũng đã chuyển VKS các cấp đề nghị truy tố 18 vụ với 56 bị can; tạm đình chỉ điều tra 1 vụ với 3 bị can; đang điều tra 21 vụ với 53 bị can; số vụ án đang điều tra là 4 vụ với 1 bị can.\r\n</p>\r\n<p>\r\nHà Nội nhận định tình hình tham nhũng trên địa bàn vẫn diễn biến phức tạp, thủ đoạn tinh vi hơn, phạm vi, lĩnh vực tham nhũng rộng, tiềm ẩn trong một số lĩnh vực như quản lý, sử dụng đất đai, GPMB, đầu tư xây dựng, tài chính...\r\n</p>\r\n<p>\r\nNguyên nhân của những tồn tại được TP chỉ ra là do công tác quản lý Nhà nước còn bộc lộ nhiều kẽ hở, trình độ quản lý còn hạn chế.\r\n</p>\r\n<p>\r\nTrong khi đó, một bộ phận cán bộ, công chức thiếu tu dưỡng, rèn luyện, lợi dụng sơ hở trong quản lý, cơ chế, chính sách hoặc lợi dụng nhiệm vụ được giao làm trái quy định, quy trình công tác để vụ lợi.\r\n</p>\r\n<p>\r\nMột số đơn vị chưa quyết liệt trong chỉ đạo, tổ chức thực hiện công tác PCTN; các cơ quan PCTN tại một số đơn vị, địa phương còn lúng túng trong việc đề ra các giải pháp, phòng ngừa, chống tham nhũng…\r\n\r\n</p>', 'images/19/12/12/ha-noi-chuyen-vi-tri-cong-tac-hon-700-can-bo-de-ngan-tham-nhung-240x160_JNpxtwg.jpg', 12, 'Hạnh', '2019-12-11 16:51:16.112827', '2019-12-12 12:30:49.514816', 1, 1),
(3, 'Đi bão ăn mừng U22, xe bán tải đâm gãy cột điện, 2 người nhập viện', 'i-bao-an-mung-u22-xe-ban-tai-am-gay-cot-ien-2-nguoi-nhap-vien', 'Chiếc xe bán tải Ford Ranger chạy với tốc độ cao, khi cua ở đường 26/3 (TP Hà Tĩnh) đã bị mất lái, đâm gãy cột điện bên đường và bốc cháy phần đầu. 2 người trên xe bị thương phải nhập viện.', '<p><h2><b>Bí thư Thành ủy Hà Nội Hoàng Trung Hải cho biết, các dịch vụ phần mềm do Nhật Cường cung cấp vẫn đang được TP sử dụng.</b></h2></p>\r\n<p>Liên quan vụ Nhật Cường, mới đây Bộ Công an đã bắt nguyên Phó giám đốc Sở KH&ĐT Nguyễn Tiến Học vì vi phạm quy định về đấu thầu gây hậu quả nghiêm trọng.\r\n\r\nBên lề kỳ họp HĐND TP Hà Nội sáng nay, báo chí đặt câu hỏi với Bí thư Thành uỷ Hà Nội Hoàng Trung Hải về dịch vụ phần mềm của Nhật Cường cung cấp cho TP có tiếp tục được sử dụng.\r\n\r\nTrả lời câu hỏi này, ông Hoàng Trung Hải nói: “Các dịch vụ đó vẫn đang sử dụng”.</p>\r\n<img src=\"static/images/ong-hoang-trung-hai-ha-noi-van-dung-dich-vu-phan-mem-cua-nhat-cuong-240x160.jpg\">\r\n<p>\r\nTheo lãnh đạo Thành ủy, việc vi phạm thế nào cơ quan pháp luật sẽ kết luận, còn những dịch vụ TP đang sử dụng thì vẫn sử dụng bình thường.\r\n</p>\r\n<p>\r\n“Thực tế vừa rồi các phần mềm cung cấp dịch vụ công cấp độ 3, cấp độ 4, rồi đăng ký doanh nghiệp, đăng ký kinh doanh qua mạng thì tất cả vẫn hoạt động bình thường. TP phải có người quản trị việc đó”, ông Hải nói.\r\n</p>\r\n<p>\r\nPV tiếp tục hỏi: Sau động thái của cơ quan điều tra, TP có chỉ đạo thanh tra, rà soát lại quá trình đấu thầu cung cấp dịch vụ công?\r\n\r\n\"Không, về nguyên tắc cơ quan điều tra đang điều tra thì mình hợp tác với cơ quan điều tra để họ làm. Hà Nội sẽ hợp tác với cơ quan điều tra để làm\", ông Hải nói.\r\n\r\nCùng vấn đề trên, Chủ tịch UBND TP Hà Nội Nguyễn Đức Chung đề nghị báo chí “chờ cơ quan điều tra kết luận”.\r\n\r\nTrao đổi thêm, Giám đốc Sở KH&ĐT Nguyễn Mạnh Quyền cho biết, sau động thái của Bộ Công an, Sở sẽ chỉ đạo rà soát lại công tác đấu thầu.\r\n\r\n“Đó là việc đương nhiên, phải có rà soát và báo cáo Thành ủy, UBND TP để xin chỉ đạo”, ông Quyền khẳng định. Ông nói thêm, có vấn đề gì thì mời PV đến Sở để phân công người cung cấp thông tin.\r\n\r\nCơ quan Cảnh sát điều tra Bộ Công an (C03) đang điều tra mở rộng vụ án Buôn lậu, Vi phạm quy định về kế toán gây hậu quả nghiêm trọng, Rửa tiền xảy ra tại công ty TNHH Thương mại và dịch vụ kỹ thuật Nhật Cường, công ty TNHH Giải pháp phần mềm Nhật Cường (Nhật Cường Software) và các đơn vị có liên quan.\r\n</p>\r\nNgày 29/11, Bộ Công an đã khởi tố, bắt tạm giam nguyên Phó giám đốc Sở KH&ĐT Hà Nội Nguyễn Tiến Học và 2 người khác về tội Vi phạm quy định về đấu thầu gây hậu quả nghiêm trọng.\r\n<p>\r\nCơ quan Cảnh sát điều tra, Bộ Công an cũng đã ra quyết định bổ sung quyết định khởi tố bị can đối với Bùi Quang Huy, TGĐ công ty TNHH Thương mại và dịch vụ Nhật Cường, Giám đốc công ty TNHH Giải pháp phần mềm Nhật Cường (hiện đang bị truy nã). \r\n</p>', 'images/19/12/12/ong-hoang-trung-hai-ha-noi-van-dung-dich-vu-phan-mem-cua-nhat-cuong-240x_pLPGIgh.jpg', 100, 'admin', '2019-12-11 16:47:34.697716', '2019-12-12 12:31:41.649917', 3, 1),
(4, 'Phòng chống tham nhũng là bước đột phá trong công tác xây dựng Đảng', 'phong-chong-tham-nhung-la-buoc-ot-pha-trong-cong-tac-xay-dung-ang', 'TP Hà Nội đã chuyển đổi vị trí công tác của 714 cán bộ, công chức nhằm ngăn ngừa tham nhũng.', '<p><h2><b>TP Hà Nội đã chuyển đổi vị trí công tác của 714 cán bộ, công chức nhằm ngăn ngừa tham nhũng.</b></h2></p>\r\n<p>Kỳ họp thứ 11, khoá 15 của HĐND TP Hà Nội khai mạc sáng nay.\r\n\r\nTờ trình của UBND TP về báo cáo công tác phòng, chống tham nhũng năm 2019 nêu nhiều kết quả đã đạt được trong năm.\r\n\r\nTheo đó, TP đã triển khai kiểm tra 578 cơ quan, tổ chức, đơn vị về việc thực hiện các quy định về công khai, minh bạch trong hoạt động.</p>\r\n<img src=\"static/images/ha-noi-chuyen-vi-tri-cong-tac-hon-700-can-bo-de-ngan-tham-nhung-240x160.jpg\">\r\n<p>\r\nViệc ban hành và thực hiện các chế độ, định mức, tiêu chuẩn cũng được thực hiện trên tất cả các lĩnh vực với 360 cuộc kiểm tra. Qua đó, phát hiện 1 vụ việc và 2 cá nhân vi phạm quy định về chế độ, định mức, tiêu chuẩn.</p>\r\n<p>\r\nViệc thực hiện quy tắc ứng xử của cán bộ, công chức, viên chức được giám sát chặt chẽ. Gần 450 cơ quan, tổ chức đã được kiểm tra và có 4 trường hợp vi phạm được xem xét, xử lý.</p>\r\n<p>\r\nBáo cáo cho biết, năm 2019, Hà Nội đã chuyển đổi vị trí công tác của 714 cán bộ, công chức nhằm ngăn ngừa tham nhũng.</p>\r\n<p>\r\nTP cũng đã tăng cường công tác tuyên truyền, quán triệt và tổ chức thực hiện tốt các chính sách về chính sách tinh giản biên chế. Hà Nội đã phê duyệt danh sách và kinh phí tinh giản biên chế 6 đợt với 191 trường hợp (176 trường hợp về hưu trước tuổi, 15 trường hợp thôi việc ngay).</p>\r\n<p>\r\nĐồng thời phê duyệt danh sách và kinh phí chi trả cho cán bộ nghỉ hưu trước tuổi do không đủ điều kiện về tuổi tái cử, tái bổ nhiệm giữ chức vụ, chức danh trong 2 đợt với 62 cán bộ\r\n.</p>\r\n<p>\r\nVề kết quả phát hiện, xử lý tham nhũng, vi phạm, UBND TP thông tin đã chuyển cơ quan điều tra 5 vụ việc và kiến nghị chuyển cơ quan điều tra 8 vụ.\r\n</p>\r\n<p>\r\nCông an Hà Nội cũng đã chuyển VKS các cấp đề nghị truy tố 18 vụ với 56 bị can; tạm đình chỉ điều tra 1 vụ với 3 bị can; đang điều tra 21 vụ với 53 bị can; số vụ án đang điều tra là 4 vụ với 1 bị can.\r\n</p>\r\n<p>\r\nHà Nội nhận định tình hình tham nhũng trên địa bàn vẫn diễn biến phức tạp, thủ đoạn tinh vi hơn, phạm vi, lĩnh vực tham nhũng rộng, tiềm ẩn trong một số lĩnh vực như quản lý, sử dụng đất đai, GPMB, đầu tư xây dựng, tài chính...\r\n</p>\r\n<p>\r\nNguyên nhân của những tồn tại được TP chỉ ra là do công tác quản lý Nhà nước còn bộc lộ nhiều kẽ hở, trình độ quản lý còn hạn chế.\r\n</p>\r\n<p>\r\nTrong khi đó, một bộ phận cán bộ, công chức thiếu tu dưỡng, rèn luyện, lợi dụng sơ hở trong quản lý, cơ chế, chính sách hoặc lợi dụng nhiệm vụ được giao làm trái quy định, quy trình công tác để vụ lợi.\r\n</p>\r\n<p>\r\nMột số đơn vị chưa quyết liệt trong chỉ đạo, tổ chức thực hiện công tác PCTN; các cơ quan PCTN tại một số đơn vị, địa phương còn lúng túng trong việc đề ra các giải pháp, phòng ngừa, chống tham nhũng…\r\n\r\n</p>', 'images/19/12/12/ha-noi-chuyen-vi-tri-cong-tac-hon-700-can-bo-de-ngan-tham-nhung-240x160_St6mtYY.jpg', 12, 'Hạnh', '2019-12-11 16:51:16.112827', '2019-12-12 12:31:56.787968', 1, 1),
(5, 'Nghi vấn giật dây chuyền rồi ngã xe máy chết sau tai nạn ở Sài Gòn', 'nghi-van-giat-day-chuyen-roi-nga-xe-may-chet-sau-tai-nan-o-sai-gon', 'Người đàn ông nghi cướp giật tài sản, bỏ chạy thì xảy ra tai nạn với xe máy khác nên té ngã xuống đường, tử vong.', '<p><h2><b>Bí thư Thành ủy Hà Nội Hoàng Trung Hải cho biết, các dịch vụ phần mềm do Nhật Cường cung cấp vẫn đang được TP sử dụng.</b></h2></p>\r\n<p>Liên quan vụ Nhật Cường, mới đây Bộ Công an đã bắt nguyên Phó giám đốc Sở KH&ĐT Nguyễn Tiến Học vì vi phạm quy định về đấu thầu gây hậu quả nghiêm trọng.\r\n\r\nBên lề kỳ họp HĐND TP Hà Nội sáng nay, báo chí đặt câu hỏi với Bí thư Thành uỷ Hà Nội Hoàng Trung Hải về dịch vụ phần mềm của Nhật Cường cung cấp cho TP có tiếp tục được sử dụng.\r\n\r\nTrả lời câu hỏi này, ông Hoàng Trung Hải nói: “Các dịch vụ đó vẫn đang sử dụng”.</p>\r\n<img src=\"static/images/ong-hoang-trung-hai-ha-noi-van-dung-dich-vu-phan-mem-cua-nhat-cuong-240x160.jpg\">\r\n<p>\r\nTheo lãnh đạo Thành ủy, việc vi phạm thế nào cơ quan pháp luật sẽ kết luận, còn những dịch vụ TP đang sử dụng thì vẫn sử dụng bình thường.\r\n</p>\r\n<p>\r\n“Thực tế vừa rồi các phần mềm cung cấp dịch vụ công cấp độ 3, cấp độ 4, rồi đăng ký doanh nghiệp, đăng ký kinh doanh qua mạng thì tất cả vẫn hoạt động bình thường. TP phải có người quản trị việc đó”, ông Hải nói.\r\n</p>\r\n<p>\r\nPV tiếp tục hỏi: Sau động thái của cơ quan điều tra, TP có chỉ đạo thanh tra, rà soát lại quá trình đấu thầu cung cấp dịch vụ công?\r\n\r\n\"Không, về nguyên tắc cơ quan điều tra đang điều tra thì mình hợp tác với cơ quan điều tra để họ làm. Hà Nội sẽ hợp tác với cơ quan điều tra để làm\", ông Hải nói.\r\n\r\nCùng vấn đề trên, Chủ tịch UBND TP Hà Nội Nguyễn Đức Chung đề nghị báo chí “chờ cơ quan điều tra kết luận”.\r\n\r\nTrao đổi thêm, Giám đốc Sở KH&ĐT Nguyễn Mạnh Quyền cho biết, sau động thái của Bộ Công an, Sở sẽ chỉ đạo rà soát lại công tác đấu thầu.\r\n\r\n“Đó là việc đương nhiên, phải có rà soát và báo cáo Thành ủy, UBND TP để xin chỉ đạo”, ông Quyền khẳng định. Ông nói thêm, có vấn đề gì thì mời PV đến Sở để phân công người cung cấp thông tin.\r\n\r\nCơ quan Cảnh sát điều tra Bộ Công an (C03) đang điều tra mở rộng vụ án Buôn lậu, Vi phạm quy định về kế toán gây hậu quả nghiêm trọng, Rửa tiền xảy ra tại công ty TNHH Thương mại và dịch vụ kỹ thuật Nhật Cường, công ty TNHH Giải pháp phần mềm Nhật Cường (Nhật Cường Software) và các đơn vị có liên quan.\r\n</p>\r\nNgày 29/11, Bộ Công an đã khởi tố, bắt tạm giam nguyên Phó giám đốc Sở KH&ĐT Hà Nội Nguyễn Tiến Học và 2 người khác về tội Vi phạm quy định về đấu thầu gây hậu quả nghiêm trọng.\r\n<p>\r\nCơ quan Cảnh sát điều tra, Bộ Công an cũng đã ra quyết định bổ sung quyết định khởi tố bị can đối với Bùi Quang Huy, TGĐ công ty TNHH Thương mại và dịch vụ Nhật Cường, Giám đốc công ty TNHH Giải pháp phần mềm Nhật Cường (hiện đang bị truy nã). \r\n</p>', 'images/19/12/12/ong-hoang-trung-hai-ha-noi-van-dung-dich-vu-phan-mem-cua-nhat-cuong-240x_4sZRq3c.jpg', 10, 'admin', '2019-12-11 16:47:34.697716', '2019-12-12 12:32:08.404119', 1, 1),
(6, 'Nguyên Phó Bí thư huyện kêu cứu, Công an Quảng Ngãi thông tin bất ngờ', 'nguyen-pho-bi-thu-huyen-keu-cuu-cong-an-quang-ngai-thong-tin-bat-ngo', 'TP Hà Nội đã chuyển đổi vị trí công tác của 714 cán bộ, công chức nhằm ngăn ngừa tham nhũng.', '<p><h2><b>TP Hà Nội đã chuyển đổi vị trí công tác của 714 cán bộ, công chức nhằm ngăn ngừa tham nhũng.</b></h2></p>\r\n<p>Kỳ họp thứ 11, khoá 15 của HĐND TP Hà Nội khai mạc sáng nay.\r\n\r\nTờ trình của UBND TP về báo cáo công tác phòng, chống tham nhũng năm 2019 nêu nhiều kết quả đã đạt được trong năm.\r\n\r\nTheo đó, TP đã triển khai kiểm tra 578 cơ quan, tổ chức, đơn vị về việc thực hiện các quy định về công khai, minh bạch trong hoạt động.</p>\r\n<img src=\"static/images/ha-noi-chuyen-vi-tri-cong-tac-hon-700-can-bo-de-ngan-tham-nhung-240x160.jpg\">\r\n<p>\r\nViệc ban hành và thực hiện các chế độ, định mức, tiêu chuẩn cũng được thực hiện trên tất cả các lĩnh vực với 360 cuộc kiểm tra. Qua đó, phát hiện 1 vụ việc và 2 cá nhân vi phạm quy định về chế độ, định mức, tiêu chuẩn.</p>\r\n<p>\r\nViệc thực hiện quy tắc ứng xử của cán bộ, công chức, viên chức được giám sát chặt chẽ. Gần 450 cơ quan, tổ chức đã được kiểm tra và có 4 trường hợp vi phạm được xem xét, xử lý.</p>\r\n<p>\r\nBáo cáo cho biết, năm 2019, Hà Nội đã chuyển đổi vị trí công tác của 714 cán bộ, công chức nhằm ngăn ngừa tham nhũng.</p>\r\n<p>\r\nTP cũng đã tăng cường công tác tuyên truyền, quán triệt và tổ chức thực hiện tốt các chính sách về chính sách tinh giản biên chế. Hà Nội đã phê duyệt danh sách và kinh phí tinh giản biên chế 6 đợt với 191 trường hợp (176 trường hợp về hưu trước tuổi, 15 trường hợp thôi việc ngay).</p>\r\n<p>\r\nĐồng thời phê duyệt danh sách và kinh phí chi trả cho cán bộ nghỉ hưu trước tuổi do không đủ điều kiện về tuổi tái cử, tái bổ nhiệm giữ chức vụ, chức danh trong 2 đợt với 62 cán bộ\r\n.</p>\r\n<p>\r\nVề kết quả phát hiện, xử lý tham nhũng, vi phạm, UBND TP thông tin đã chuyển cơ quan điều tra 5 vụ việc và kiến nghị chuyển cơ quan điều tra 8 vụ.\r\n</p>\r\n<p>\r\nCông an Hà Nội cũng đã chuyển VKS các cấp đề nghị truy tố 18 vụ với 56 bị can; tạm đình chỉ điều tra 1 vụ với 3 bị can; đang điều tra 21 vụ với 53 bị can; số vụ án đang điều tra là 4 vụ với 1 bị can.\r\n</p>\r\n<p>\r\nHà Nội nhận định tình hình tham nhũng trên địa bàn vẫn diễn biến phức tạp, thủ đoạn tinh vi hơn, phạm vi, lĩnh vực tham nhũng rộng, tiềm ẩn trong một số lĩnh vực như quản lý, sử dụng đất đai, GPMB, đầu tư xây dựng, tài chính...\r\n</p>\r\n<p>\r\nNguyên nhân của những tồn tại được TP chỉ ra là do công tác quản lý Nhà nước còn bộc lộ nhiều kẽ hở, trình độ quản lý còn hạn chế.\r\n</p>\r\n<p>\r\nTrong khi đó, một bộ phận cán bộ, công chức thiếu tu dưỡng, rèn luyện, lợi dụng sơ hở trong quản lý, cơ chế, chính sách hoặc lợi dụng nhiệm vụ được giao làm trái quy định, quy trình công tác để vụ lợi.\r\n</p>\r\n<p>\r\nMột số đơn vị chưa quyết liệt trong chỉ đạo, tổ chức thực hiện công tác PCTN; các cơ quan PCTN tại một số đơn vị, địa phương còn lúng túng trong việc đề ra các giải pháp, phòng ngừa, chống tham nhũng…\r\n\r\n</p>', 'images/19/12/12/ha-noi-chuyen-vi-tri-cong-tac-hon-700-can-bo-de-ngan-tham-nhung-240x160_sVMba43.jpg', 12, 'Sơn', '2019-12-11 16:51:16.112827', '2019-12-12 12:32:57.850925', 1, 1),
(7, 'Ô tô đoàn nghệ thuật tình thương lao vào vách núi, 2 người chết', 'o-to-oan-nghe-thuat-tinh-thuong-lao-vao-vach-nui-2-nguoi-chet', 'Xe chở đoàn nghệ thuật tình thương đi biểu diễn ở huyện miền núi Nghệ An đâm vào vách núi khiến 2 người chết, 5 người bị thương nặng.', '<p><h2><b>Bí thư Thành ủy Hà Nội Hoàng Trung Hải cho biết, các dịch vụ phần mềm do Nhật Cường cung cấp vẫn đang được TP sử dụng.</b></h2></p>\r\n<p>Liên quan vụ Nhật Cường, mới đây Bộ Công an đã bắt nguyên Phó giám đốc Sở KH&ĐT Nguyễn Tiến Học vì vi phạm quy định về đấu thầu gây hậu quả nghiêm trọng.\r\n\r\nBên lề kỳ họp HĐND TP Hà Nội sáng nay, báo chí đặt câu hỏi với Bí thư Thành uỷ Hà Nội Hoàng Trung Hải về dịch vụ phần mềm của Nhật Cường cung cấp cho TP có tiếp tục được sử dụng.\r\n\r\nTrả lời câu hỏi này, ông Hoàng Trung Hải nói: “Các dịch vụ đó vẫn đang sử dụng”.</p>\r\n<img src=\"static/images/ong-hoang-trung-hai-ha-noi-van-dung-dich-vu-phan-mem-cua-nhat-cuong-240x160.jpg\">\r\n<p>\r\nTheo lãnh đạo Thành ủy, việc vi phạm thế nào cơ quan pháp luật sẽ kết luận, còn những dịch vụ TP đang sử dụng thì vẫn sử dụng bình thường.\r\n</p>\r\n<p>\r\n“Thực tế vừa rồi các phần mềm cung cấp dịch vụ công cấp độ 3, cấp độ 4, rồi đăng ký doanh nghiệp, đăng ký kinh doanh qua mạng thì tất cả vẫn hoạt động bình thường. TP phải có người quản trị việc đó”, ông Hải nói.\r\n</p>\r\n<p>\r\nPV tiếp tục hỏi: Sau động thái của cơ quan điều tra, TP có chỉ đạo thanh tra, rà soát lại quá trình đấu thầu cung cấp dịch vụ công?\r\n\r\n\"Không, về nguyên tắc cơ quan điều tra đang điều tra thì mình hợp tác với cơ quan điều tra để họ làm. Hà Nội sẽ hợp tác với cơ quan điều tra để làm\", ông Hải nói.\r\n\r\nCùng vấn đề trên, Chủ tịch UBND TP Hà Nội Nguyễn Đức Chung đề nghị báo chí “chờ cơ quan điều tra kết luận”.\r\n\r\nTrao đổi thêm, Giám đốc Sở KH&ĐT Nguyễn Mạnh Quyền cho biết, sau động thái của Bộ Công an, Sở sẽ chỉ đạo rà soát lại công tác đấu thầu.\r\n\r\n“Đó là việc đương nhiên, phải có rà soát và báo cáo Thành ủy, UBND TP để xin chỉ đạo”, ông Quyền khẳng định. Ông nói thêm, có vấn đề gì thì mời PV đến Sở để phân công người cung cấp thông tin.\r\n\r\nCơ quan Cảnh sát điều tra Bộ Công an (C03) đang điều tra mở rộng vụ án Buôn lậu, Vi phạm quy định về kế toán gây hậu quả nghiêm trọng, Rửa tiền xảy ra tại công ty TNHH Thương mại và dịch vụ kỹ thuật Nhật Cường, công ty TNHH Giải pháp phần mềm Nhật Cường (Nhật Cường Software) và các đơn vị có liên quan.\r\n</p>\r\nNgày 29/11, Bộ Công an đã khởi tố, bắt tạm giam nguyên Phó giám đốc Sở KH&ĐT Hà Nội Nguyễn Tiến Học và 2 người khác về tội Vi phạm quy định về đấu thầu gây hậu quả nghiêm trọng.\r\n<p>\r\nCơ quan Cảnh sát điều tra, Bộ Công an cũng đã ra quyết định bổ sung quyết định khởi tố bị can đối với Bùi Quang Huy, TGĐ công ty TNHH Thương mại và dịch vụ Nhật Cường, Giám đốc công ty TNHH Giải pháp phần mềm Nhật Cường (hiện đang bị truy nã). \r\n</p>', 'images/19/12/12/ong-hoang-trung-hai-ha-noi-van-dung-dich-vu-phan-mem-cua-nhat-cuong-240x160.jpg', 20, 'admin', '2019-12-11 16:47:34.697716', '2019-12-12 11:35:21.228974', 3, 1),
(8, 'Hà Nội chuyển công tác hơn 700 cán bộ, công chức để ngăn tham nhũng', 'ha-noi-chuyen-cong-tac-hon-700-can-bo-cong-chuc-e-ngan-tham-nhung', 'TP Hà Nội đã chuyển đổi vị trí công tác của 714 cán bộ, công chức nhằm ngăn ngừa tham nhũng.', '<p><h2><b>TP Hà Nội đã chuyển đổi vị trí công tác của 714 cán bộ, công chức nhằm ngăn ngừa tham nhũng.</b></h2></p>\r\n<p>Kỳ họp thứ 11, khoá 15 của HĐND TP Hà Nội khai mạc sáng nay.\r\n\r\nTờ trình của UBND TP về báo cáo công tác phòng, chống tham nhũng năm 2019 nêu nhiều kết quả đã đạt được trong năm.\r\n\r\nTheo đó, TP đã triển khai kiểm tra 578 cơ quan, tổ chức, đơn vị về việc thực hiện các quy định về công khai, minh bạch trong hoạt động.</p>\r\n<img src=\"static/images/ha-noi-chuyen-vi-tri-cong-tac-hon-700-can-bo-de-ngan-tham-nhung-240x160.jpg\">\r\n<p>\r\nViệc ban hành và thực hiện các chế độ, định mức, tiêu chuẩn cũng được thực hiện trên tất cả các lĩnh vực với 360 cuộc kiểm tra. Qua đó, phát hiện 1 vụ việc và 2 cá nhân vi phạm quy định về chế độ, định mức, tiêu chuẩn.</p>\r\n<p>\r\nViệc thực hiện quy tắc ứng xử của cán bộ, công chức, viên chức được giám sát chặt chẽ. Gần 450 cơ quan, tổ chức đã được kiểm tra và có 4 trường hợp vi phạm được xem xét, xử lý.</p>\r\n<p>\r\nBáo cáo cho biết, năm 2019, Hà Nội đã chuyển đổi vị trí công tác của 714 cán bộ, công chức nhằm ngăn ngừa tham nhũng.</p>\r\n<p>\r\nTP cũng đã tăng cường công tác tuyên truyền, quán triệt và tổ chức thực hiện tốt các chính sách về chính sách tinh giản biên chế. Hà Nội đã phê duyệt danh sách và kinh phí tinh giản biên chế 6 đợt với 191 trường hợp (176 trường hợp về hưu trước tuổi, 15 trường hợp thôi việc ngay).</p>\r\n<p>\r\nĐồng thời phê duyệt danh sách và kinh phí chi trả cho cán bộ nghỉ hưu trước tuổi do không đủ điều kiện về tuổi tái cử, tái bổ nhiệm giữ chức vụ, chức danh trong 2 đợt với 62 cán bộ\r\n.</p>\r\n<p>\r\nVề kết quả phát hiện, xử lý tham nhũng, vi phạm, UBND TP thông tin đã chuyển cơ quan điều tra 5 vụ việc và kiến nghị chuyển cơ quan điều tra 8 vụ.\r\n</p>\r\n<p>\r\nCông an Hà Nội cũng đã chuyển VKS các cấp đề nghị truy tố 18 vụ với 56 bị can; tạm đình chỉ điều tra 1 vụ với 3 bị can; đang điều tra 21 vụ với 53 bị can; số vụ án đang điều tra là 4 vụ với 1 bị can.\r\n</p>\r\n<p>\r\nHà Nội nhận định tình hình tham nhũng trên địa bàn vẫn diễn biến phức tạp, thủ đoạn tinh vi hơn, phạm vi, lĩnh vực tham nhũng rộng, tiềm ẩn trong một số lĩnh vực như quản lý, sử dụng đất đai, GPMB, đầu tư xây dựng, tài chính...\r\n</p>\r\n<p>\r\nNguyên nhân của những tồn tại được TP chỉ ra là do công tác quản lý Nhà nước còn bộc lộ nhiều kẽ hở, trình độ quản lý còn hạn chế.\r\n</p>\r\n<p>\r\nTrong khi đó, một bộ phận cán bộ, công chức thiếu tu dưỡng, rèn luyện, lợi dụng sơ hở trong quản lý, cơ chế, chính sách hoặc lợi dụng nhiệm vụ được giao làm trái quy định, quy trình công tác để vụ lợi.\r\n</p>\r\n<p>\r\nMột số đơn vị chưa quyết liệt trong chỉ đạo, tổ chức thực hiện công tác PCTN; các cơ quan PCTN tại một số đơn vị, địa phương còn lúng túng trong việc đề ra các giải pháp, phòng ngừa, chống tham nhũng…\r\n\r\n</p>', 'images/19/12/12/ha-noi-chuyen-vi-tri-cong-tac-hon-700-can-bo-de-ngan-tham-nhung-240x160.jpg', 12, 'Hạnh', '2019-12-11 16:51:16.112827', '2019-12-12 11:42:56.033945', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_TaiKhoan_taikhoan_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `tag_tag`
--
ALTER TABLE `tag_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taikhoan_taikhoan`
--
ALTER TABLE `taikhoan_taikhoan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `taikhoan_taikhoan_groups`
--
ALTER TABLE `taikhoan_taikhoan_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `TaiKhoan_taikhoan_groups_taikhoan_id_group_id_c20fc14f_uniq` (`taikhoan_id`,`group_id`),
  ADD KEY `TaiKhoan_taikhoan_groups_group_id_e5ccb827_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `taikhoan_taikhoan_user_permissions`
--
ALTER TABLE `taikhoan_taikhoan_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `TaiKhoan_taikhoan_user_p_taikhoan_id_permission_i_d72c9057_uniq` (`taikhoan_id`,`permission_id`),
  ADD KEY `TaiKhoan_taikhoan_us_permission_id_7add5c78_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `tin_comment`
--
ALTER TABLE `tin_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Tin_comment_id_Tin_id_3241c373_fk_Tin_tin_id` (`id_Tin_id`);

--
-- Indexes for table `tin_loaitin`
--
ALTER TABLE `tin_loaitin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Tin_loaitin_idTheLoai_id_548d37df_fk_Tin_theloai_id` (`idTheLoai_id`),
  ADD KEY `Tin_loaitin_tenKhongDau_8446c107` (`tenKhongDau`);

--
-- Indexes for table `tin_theloai`
--
ALTER TABLE `tin_theloai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Tin_theloai_tenKhongDau_af75e7d6` (`tenKhongDau`);

--
-- Indexes for table `tin_tin`
--
ALTER TABLE `tin_tin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Tin_tin_id_lt_id_19164c06_fk_Tin_loaitin_id` (`id_lt_id`),
  ADD KEY `Tin_tin_id_tl_id_c4af8aa3_fk_Tin_theloai_id` (`id_tl_id`),
  ADD KEY `Tin_tin_tieuDeKhongDau_863f8143` (`tieuDeKhongDau`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tag_tag`
--
ALTER TABLE `tag_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taikhoan_taikhoan`
--
ALTER TABLE `taikhoan_taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taikhoan_taikhoan_groups`
--
ALTER TABLE `taikhoan_taikhoan_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taikhoan_taikhoan_user_permissions`
--
ALTER TABLE `taikhoan_taikhoan_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tin_comment`
--
ALTER TABLE `tin_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tin_loaitin`
--
ALTER TABLE `tin_loaitin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tin_theloai`
--
ALTER TABLE `tin_theloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tin_tin`
--
ALTER TABLE `tin_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_TaiKhoan_taikhoan_id` FOREIGN KEY (`user_id`) REFERENCES `taikhoan_taikhoan` (`id`);

--
-- Constraints for table `taikhoan_taikhoan_groups`
--
ALTER TABLE `taikhoan_taikhoan_groups`
  ADD CONSTRAINT `TaiKhoan_taikhoan_gr_taikhoan_id_99f8eb2b_fk_TaiKhoan_` FOREIGN KEY (`taikhoan_id`) REFERENCES `taikhoan_taikhoan` (`id`),
  ADD CONSTRAINT `TaiKhoan_taikhoan_groups_group_id_e5ccb827_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `taikhoan_taikhoan_user_permissions`
--
ALTER TABLE `taikhoan_taikhoan_user_permissions`
  ADD CONSTRAINT `TaiKhoan_taikhoan_us_permission_id_7add5c78_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `TaiKhoan_taikhoan_us_taikhoan_id_dc9e61a3_fk_TaiKhoan_` FOREIGN KEY (`taikhoan_id`) REFERENCES `taikhoan_taikhoan` (`id`);

--
-- Constraints for table `tin_comment`
--
ALTER TABLE `tin_comment`
  ADD CONSTRAINT `Tin_comment_id_Tin_id_3241c373_fk_Tin_tin_id` FOREIGN KEY (`id_Tin_id`) REFERENCES `tin_tin` (`id`);

--
-- Constraints for table `tin_loaitin`
--
ALTER TABLE `tin_loaitin`
  ADD CONSTRAINT `Tin_loaitin_idTheLoai_id_548d37df_fk_Tin_theloai_id` FOREIGN KEY (`idTheLoai_id`) REFERENCES `tin_theloai` (`id`);

--
-- Constraints for table `tin_tin`
--
ALTER TABLE `tin_tin`
  ADD CONSTRAINT `Tin_tin_id_lt_id_19164c06_fk_Tin_loaitin_id` FOREIGN KEY (`id_lt_id`) REFERENCES `tin_loaitin` (`id`),
  ADD CONSTRAINT `Tin_tin_id_tl_id_c4af8aa3_fk_Tin_theloai_id` FOREIGN KEY (`id_tl_id`) REFERENCES `tin_theloai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
