-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2016 at 12:49 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kid_crossing`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `user_id`, `title`, `description`, `date`) VALUES
(1, 4, 'Reteee', 'asdfa sfasfasdsdasdasd', '2016-02-11 11:32:21');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `journal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `journal_id`, `user_id`, `comment`, `time`) VALUES
(1, 1, 6, 'sdsf sdfsdfsdf sdf', '2016-02-01 07:05:20'),
(2, 1, 6, 'sdf sdf sdf sdf sdf', '2016-02-01 07:05:24'),
(3, 1, 6, 'dsf sdfsdf dfd ', '2016-02-01 07:05:27'),
(4, 1, 6, 'sdf sdfsdf sdfsd', '2016-02-01 07:05:37'),
(5, 4, 6, 'sdfsdfs dfsd fsdfsdf', '2016-02-02 11:14:57'),
(6, 4, 6, 'sdf sdfsdf sdfs dfsd ', '2016-02-02 11:15:01'),
(7, 4, 6, 'sdf sdfsdfsdf sdf', '2016-02-02 11:15:05'),
(8, 4, 6, 'sdf sgfhj hj ghjh', '2016-02-02 11:15:08'),
(9, 6, 6, ' dfg dfghdf gdf gdfg dfgdfg', '2016-02-03 04:19:16'),
(10, 6, 6, 'd fgdfg dfg dfgdfg dfg dfg dfg dfgdfg', '2016-02-03 04:19:20'),
(11, 6, 6, ' dfgdfgdfgdfg dfg dfg dfg df', '2016-02-03 04:19:25'),
(12, 7, 8, 'sdfg sdfsdfsdf sdf', '2016-02-05 11:50:56'),
(13, 7, 8, 'sdf sdfsdfsdf', '2016-02-05 11:50:59'),
(14, 7, 8, 'sdf sdfsdfsdf', '2016-02-05 11:51:02'),
(15, 9, 6, 'sdf sdf sdf sdf sdf', '2016-02-08 04:42:13'),
(16, 9, 7, 'gngf dfgdfgdfg dfgdf', '2016-02-08 06:40:22'),
(17, 9, 7, 'dfg dfgdfgdfgdfg', '2016-02-08 06:40:26'),
(18, 9, 7, 'sdfsd sfgdgh g', '2016-02-08 06:40:31'),
(19, 9, 6, 'fghf dghsfgsdgfsdgfsdg', '2016-02-08 06:40:54'),
(20, 10, 6, 'This is a test comment', '2016-02-08 06:41:55'),
(21, 1, 6, 'sdfs dfsd fsdf', '2016-02-09 06:50:02'),
(22, 2, 6, 'rsdf f sdfs dfsdf', '2016-02-09 06:52:59'),
(23, 7, 6, 'xcvsdfg sdgsdfg sdgs dg', '2016-02-09 07:14:56'),
(24, 11, 6, 'This is a comment', '2016-02-09 07:20:50'),
(25, 7, 6, 'asd asdasdasd asd', '2016-02-09 09:56:57'),
(26, 15, 7, 'sfdgh dfgdfgdfg ', '2016-02-11 11:10:18'),
(27, 21, 6, 'sdsf sdfsdfsdf sdf', '2016-02-11 12:33:06'),
(28, 21, 6, 'sdsf sdfsdfsdf sdf', '2016-02-11 12:33:10'),
(29, 21, 6, 'sdf sdfsdf sdfsd', '2016-02-11 12:33:14'),
(30, 21, 6, 'dsf sdfsdf dfd ', '2016-02-11 12:33:18'),
(31, 21, 6, 'dsf sdfsdf dfd ', '2016-02-11 12:33:22'),
(32, 21, 6, 'dsf sdfsdf dfd ', '2016-02-11 12:33:38'),
(33, 21, 6, 'dsf sdfsdf dfd ', '2016-02-11 12:33:57'),
(34, 14, 7, 'zdv dfgsfgsfgdfg', '2016-02-11 12:58:13'),
(35, 14, 7, 'dth dfhdfhf hdfh ', '2016-02-11 12:58:18'),
(36, 22, 7, 'asda fasdfdafadf', '2016-02-11 13:33:42'),
(37, 22, 7, 'yfjhfj', '2016-02-11 13:34:15'),
(38, 22, 10, 'sdf sdf sdfsdfsdfsdf', '2016-02-12 04:47:41'),
(39, 22, 10, 'df sdfsdf sdfsdfsdfsdfsd', '2016-02-12 04:47:46'),
(40, 22, 7, 'dsf sdfsdf dfd ', '2016-02-12 04:52:42'),
(41, 22, 7, 'fghf dghsfgsdgfsdgfsdg', '2016-02-12 04:52:48'),
(42, 22, 7, 'fghf dghsfgsdgfsdgfsdg', '2016-02-12 04:52:53'),
(43, 22, 7, 'sdf sdfsdf sdfsd', '2016-02-12 04:52:58'),
(44, 22, 7, 'sdf sdfsdf sdfsd', '2016-02-12 04:53:03'),
(45, 22, 4, 'd dvgfsdfdfsdf sdf sdf', '2016-02-12 04:55:32'),
(46, 22, 4, 'sdf sdfsdfsdf', '2016-02-12 04:56:10'),
(47, 25, 7, 'drg dfgdfgdfg', '2016-02-12 05:21:13'),
(48, 25, 7, 'd fgdfg dfg dfg dfgdf gdfg', '2016-02-12 05:21:17'),
(49, 25, 7, 'df gdfgdfgsgdfgdf gdfg sdfg dfg', '2016-02-12 05:21:22'),
(50, 25, 7, 'zd fgzdfg zdfg d zdfgzdfgzdf gzdfg zdf g zdfgzdfgdfzg', '2016-02-12 05:21:30'),
(51, 25, 7, 'dzf gzdfg zdzdfgzdfgzdfg zdfgzdfgzdfgzdfg', '2016-02-12 05:21:38'),
(52, 22, 4, 'dfg dfghdfg dfgdfzgfg', '2016-02-12 05:27:38'),
(53, 22, 4, 'z dfgzdf gzdfgzdfgzdfg', '2016-02-12 05:27:42'),
(54, 22, 4, 'zdf gzdfgdfzgzdfg', '2016-02-12 05:27:47'),
(55, 22, 4, 'sdf sdfsdfsdfsdfdf', '2016-02-12 05:32:25'),
(56, 22, 4, 'df gdfgdfgdfgdfgdf dfg', '2016-02-12 05:32:30'),
(57, 12, 4, 'dfg dgdf gdfg dfgf', '2016-02-12 05:42:26'),
(58, 12, 4, 'This is comment', '2016-02-12 05:42:32'),
(59, 12, 4, 'Thilanka Ranasinghe', '2016-02-12 05:42:39'),
(60, 12, 4, 'blah blah blah', '2016-02-12 05:42:47'),
(61, 12, 4, 'blah blah blah', '2016-02-12 05:42:55'),
(62, 25, 7, 'sdf sdfsdfsdf sdf', '2016-02-12 06:29:01'),
(63, 25, 7, 'sdf sdf sdfsdfsdf', '2016-02-12 07:31:48'),
(64, 25, 7, 'sdf sdfsdfsdf', '2016-02-12 07:31:53'),
(65, 25, 7, 'sdf sdfsdfsdfsd', '2016-02-12 07:31:57'),
(66, 23, 4, 'dgf sdfsdfsdf', '2016-02-12 07:33:26'),
(67, 23, 4, 'sdf sdfsdfsdf', '2016-02-12 07:33:31'),
(68, 23, 4, 'sdf sdfsdfsdf', '2016-02-12 07:33:35'),
(69, 23, 4, 'sdf sdfsdfsdf', '2016-02-12 07:33:39'),
(70, 23, 4, 'sdf sdfsdfsdf', '2016-02-12 07:33:43'),
(71, 23, 4, 'df sdfsdfsdf', '2016-02-12 07:35:00'),
(72, 23, 4, 'sdf sdfsdfsdfsdf', '2016-02-12 07:35:04'),
(73, 23, 4, 'sdf sdfsdfsdfsdf', '2016-02-12 07:35:07'),
(74, 23, 4, 'sdf sdfsdfsdfsdfs', '2016-02-12 07:35:11'),
(75, 23, 4, 'sdf sdfsdfsdfsdfsd', '2016-02-12 07:35:15'),
(76, 23, 4, 'sdf sdfsdfsdf', '2016-02-12 07:35:20'),
(77, 18, 4, 'sdf sdfsdfsdf', '2016-02-12 07:35:32'),
(78, 18, 4, 'sdf sdfsdfsdfsd', '2016-02-12 07:35:34'),
(79, 18, 4, 'sdf sdfsdfsdf', '2016-02-12 07:35:38'),
(80, 18, 4, 'sdf sdfsdfsdf', '2016-02-12 07:36:04'),
(81, 26, 7, 'sdfg sdgfsdgfsd sdgf sdgf sdg', '2016-02-12 07:54:38'),
(82, 26, 7, ' dgdfgdfg dfg dh dfh dfh dfh dfh dfhdfh', '2016-02-12 07:54:46'),
(83, 26, 7, 'dg sdgsd dsg sdg sdg sdg sdg', '2016-02-12 07:54:56'),
(84, 26, 7, 'dsfs fsdf sdfsdf', '2016-02-12 07:56:32'),
(85, 26, 7, 'f sdf sdfsdf', '2016-02-12 07:56:36'),
(86, 26, 7, 'sd gfsdgfsdgfsdfsdgf', '2016-02-12 07:56:45'),
(87, 26, 7, 'd gsdgsdg sdg sdgsdg', '2016-02-12 07:56:50'),
(88, 26, 7, 'f dfsdfsdf sdf', '2016-02-12 07:58:01'),
(89, 26, 7, 's dfsdf sdfd', '2016-02-12 07:58:04'),
(90, 26, 4, 'sd fsdf sdf sdfsdf ', '2016-02-12 07:58:33'),
(91, 26, 4, 'sd fsdfsdf sdf sdfsdfsd', '2016-02-12 07:58:39'),
(92, 26, 7, 's dfsdf sdfd', '2016-02-12 07:58:43'),
(93, 26, 7, 's dfsdf sdfd', '2016-02-12 07:59:22'),
(94, 26, 7, 'sdf sdfsdfsdfsd', '2016-02-12 07:59:30'),
(95, 26, 7, 'sdf sdfsdfsdfsdf', '2016-02-12 07:59:35'),
(96, 26, 4, 'sd fsdfsdf sdf sdfsdfsd', '2016-02-12 07:59:42'),
(97, 26, 7, 'sdf sdfsdfsfsd', '2016-02-12 08:02:27'),
(98, 26, 7, 'sdf sdfsdfsfsd', '2016-02-12 08:03:13'),
(99, 26, 7, 'sd fsdf sdfsdfsdfsdf', '2016-02-12 08:03:53'),
(100, 26, 7, 'df sdfsdf sdfsdf', '2016-02-12 08:03:58'),
(101, 26, 7, 'sd fsdf sdfsdf', '2016-02-12 08:04:04'),
(102, 27, 7, 'sdf sdfsdfsdfsd', '2016-02-12 08:09:05'),
(103, 27, 7, 'gfhghfg hgf hgfh fgh', '2016-02-12 08:09:11'),
(104, 27, 7, 'h dghdfhdfhdfhdfh', '2016-02-12 08:09:15'),
(105, 27, 7, 'dfh dfhdfhdfhdfh', '2016-02-12 08:09:18'),
(106, 27, 7, 'dsg dfgsdgsdgsdg', '2016-02-12 08:23:12'),
(107, 27, 7, 'sdg sdgsdgsdgsdg', '2016-02-12 08:23:16'),
(108, 27, 7, 'sdg sdgsdgsdgsdgsd', '2016-02-12 08:23:21'),
(109, 26, 7, 'sdg sdgsdgsdgsdg', '2016-02-12 08:23:47'),
(110, 26, 7, 'sdfg sdgsdgsdgsdg', '2016-02-12 08:23:52'),
(111, 26, 7, 'sdg sdgsdgsdgsdg', '2016-02-12 08:23:58'),
(112, 26, 7, 'sdg sdg sdgsdgsdgsdg', '2016-02-12 08:24:03'),
(113, 26, 7, 'sdg sdgsdgsdgsdgsdg', '2016-02-12 08:24:08'),
(114, 26, 4, 'sd fsdfsdfsdfsdfsdf', '2016-02-12 08:24:38'),
(115, 26, 4, 'asda sdfsdfsdf sdf', '2016-02-12 08:29:15'),
(116, 26, 4, 'asda sdfsdfsdf sdf', '2016-02-12 08:29:50'),
(117, 26, 4, 'asda sdfsdfsdf sdf', '2016-02-12 08:31:06'),
(118, 26, 4, 'sdf sdfsdf sdfsd fsd', '2016-02-12 08:31:25'),
(119, 26, 4, 'sdf sdfsdfsdfsdfsd', '2016-02-12 08:31:35'),
(120, 26, 4, 'fs dfsdf sdfsdf', '2016-02-12 08:31:56'),
(121, 26, 4, 'sdf sdfsdfsdfdf', '2016-02-12 08:32:02'),
(122, 26, 4, 'sdf sdfsdfsdfdf', '2016-02-12 08:32:12'),
(123, 29, 4, 'sdf sdf sdf sdfsdfsdfd', '2016-02-12 08:44:06'),
(124, 29, 4, 'sd fsdf sdfsdfsdf', '2016-02-12 08:44:10'),
(125, 29, 4, 'sd fsdf sdfsdfsdf', '2016-02-12 08:44:22'),
(126, 29, 4, 'sdf sd fsdfsdf', '2016-02-12 08:44:27'),
(127, 39, 4, 'sdfg sfgsfgsdgdfgdfgdfg', '2016-02-12 09:12:48'),
(128, 39, 4, 'dfg dfgdfgdfgdfg', '2016-02-12 09:12:53'),
(129, 40, 7, 'sd fsdgfsdf sdfsdf ', '2016-02-12 09:40:15'),
(130, 40, 7, 'sd fsdf sdfsd fsdf', '2016-02-12 09:40:18'),
(131, 40, 7, 'jfjuygjygghjyug', '2016-02-12 09:44:16'),
(132, 40, 7, 'gkugukgukgu', '2016-02-12 09:44:21'),
(133, 40, 7, 'kygkugiygyigggui', '2016-02-12 09:44:27'),
(134, 40, 7, 'iygiygiguiguogu', '2016-02-12 09:44:31'),
(135, 40, 7, 'iugukgh', '2016-02-12 09:46:30'),
(136, 40, 7, 'yfjyufyf', '2016-02-12 09:46:47'),
(137, 40, 7, 'sdf sdfsdfsdf', '2016-02-12 09:47:08'),
(138, 40, 7, 'sdf sdfsdfd', '2016-02-12 09:47:12'),
(139, 40, 7, 'sd fsdfsdfsdf', '2016-02-12 09:47:20'),
(140, 40, 7, 'sdf sdf sdfd', '2016-02-12 09:47:25'),
(141, 40, 7, 'sd gfsdf sdfsdf', '2016-02-12 09:47:29'),
(142, 40, 7, 'sd fsdf sdfsdfsdf', '2016-02-12 09:47:34'),
(143, 40, 4, 'sdf sdf sdfsdf sdf', '2016-02-12 09:48:07'),
(144, 40, 4, 'sdf sdf sdfsdfsdf', '2016-02-12 09:48:12'),
(145, 40, 7, 'sdfsdfsdf', '2016-02-12 09:51:59'),
(146, 40, 7, 'sdf sdfsdfsdfsdfsd', '2016-02-12 09:52:19'),
(147, 40, 4, 'sdf sdf sdfsdfsdf', '2016-02-12 09:52:26'),
(148, 40, 4, 'sdf sdf sdf d', '2016-02-12 09:52:36'),
(149, 41, 7, 'sdf dfgf gsdg sdgsd g', '2016-02-12 10:39:22'),
(150, 41, 7, 'sdgf sdfsdfsdfs dfsdfdg sdgfsdf sdf', '2016-02-12 10:40:17'),
(151, 43, 7, 'dfg dfgdfg fgsdf gdfg dfg dfgdfgdfg', '2016-02-12 10:45:38'),
(152, 47, 4, 'sdf dfsdf sdf sdfsdfsdf', '2016-02-12 10:57:47'),
(153, 47, 4, 'sdf sdf sdfsdfsdfsdfsdf', '2016-02-12 10:57:58'),
(154, 47, 4, 'sdf sdfsdfsdfsdfsdfsdf', '2016-02-12 10:58:03'),
(155, 47, 7, 'sdf sdf sdfsdfsdfsdf', '2016-02-12 10:59:16'),
(156, 47, 4, 'sdf sdfsdfsdfsdfsdfsdf', '2016-02-12 10:59:28'),
(157, 48, 4, 'sdf sdfsdfsdfsdf', '2016-02-12 11:00:46'),
(158, 48, 4, 'sdfsd fsdf sdfsdf', '2016-02-12 11:00:51'),
(159, 51, 4, 'sdg sdgdgsdg', '2016-02-12 11:03:39'),
(160, 48, 7, 'd gfsdfsdf sdfsdfs', '2016-02-12 11:04:12'),
(161, 51, 4, 'sdg sdgdgsdg', '2016-02-12 11:04:22'),
(162, 57, 4, 'fg dfgdfgdfg', '2016-02-12 11:33:10'),
(163, 58, 4, 'gd dfgdfgdfgdfgdfgdfg', '2016-02-12 11:37:08'),
(164, 59, 4, 'sdf sdf sdfsdfsdf', '2016-02-12 11:56:51'),
(165, 59, 4, 'sdf sdfsdfsdf', '2016-02-12 11:56:55'),
(166, 59, 4, 'sdf sdfsdfsdf', '2016-02-12 11:56:59'),
(167, 59, 4, 'sdgfsdfsdf sdfsdf', '2016-02-12 11:57:06'),
(168, 59, 4, 'sdf sdfsdfsdf', '2016-02-12 11:57:10'),
(169, 59, 4, 'sdfg sdfsdgfsdgdgsdfgsdg', '2016-02-12 11:57:38'),
(170, 59, 4, 'dsaf afasdasdasd', '2016-02-12 11:58:10'),
(171, 60, 4, 'dfg sdfsdfasdfa', '2016-02-12 11:58:33'),
(172, 60, 4, 'adf asdf adfadfad', '2016-02-12 11:58:36'),
(173, 60, 4, 'gthj fgjd hsfhgsdfghasdga a sdfas fasf', '2016-02-12 11:58:41'),
(174, 60, 4, 'gthj fgjd hsfhgsdfghasdga a sdfas fasf', '2016-02-12 11:58:41'),
(175, 60, 4, 'a ethhy adgd  adf asdf asdfa sdf asdfasdf', '2016-02-12 11:58:46'),
(176, 60, 4, 'asdf asfasdfasfasfasf', '2016-02-12 13:12:49'),
(177, 60, 4, 'as fasf asfasfasfasf asf', '2016-02-12 13:12:54'),
(178, 54, 7, 'hjfgjdghjdghdh', '2016-02-16 04:47:28'),
(179, 54, 7, 'dgh dhdhd', '2016-02-16 04:47:32'),
(180, 54, 7, 'sdfsdf sdgfsdfg', '2016-02-16 05:02:43'),
(181, 25, 9, 'sdf sd gfsdg sdgsd g', '2016-02-16 05:04:36'),
(182, 61, 7, 'rsgt dfgfsdgsdfgsfg', '2016-02-16 05:44:02'),
(183, 61, 9, 'fg dfg dfg dfgdfg', '2016-02-16 05:44:23'),
(184, 61, 9, 'sdfg sdgdfgdfgdf g', '2016-02-16 07:13:05'),
(185, 61, 7, 'dfg sdfgsdfgsdfgsdfgs', '2016-02-16 07:13:30'),
(186, 61, 9, 'dfg fgdfgdfgd', '2016-02-16 07:13:45'),
(187, 61, 7, 'dfg dfgdfgdfgdfg', '2016-02-16 07:13:57'),
(188, 61, 7, 'dfg dfgdfgdfgdfg', '2016-02-16 07:14:01'),
(189, 62, 7, 'dth dghdfh dghdhdfhdf', '2016-02-16 07:18:01'),
(190, 62, 9, 'dfh dfh dfhdf  dfh', '2016-02-16 07:18:12'),
(191, 3, 7, 'dhy dhgfhgf', '2016-02-16 07:21:45'),
(192, 3, 7, 'dhy dhgfhgf', '2016-02-16 07:21:45'),
(193, 3, 7, 'gfh fgh gfhgf h', '2016-02-16 07:21:50'),
(194, 3, 7, 'fgh fghgfhfghgfhfghfg', '2016-02-16 07:21:55'),
(195, 3, 7, 'fgh fghfghfghgfh gfh', '2016-02-16 07:22:00'),
(196, 3, 7, 'gfh fghfghgfhgfh', '2016-02-16 07:22:04'),
(197, 3, 7, 'fgh fghgfhgfhfgh gfh', '2016-02-16 07:22:09'),
(198, 3, 7, 'fgh fghfghfghgfhgfh', '2016-02-16 07:22:14'),
(199, 62, 9, 'erdyg fghdfgdfg dfgdfg', '2016-02-16 07:25:31'),
(200, 62, 9, 'dfgh fdgdfg', '2016-02-16 07:26:40'),
(201, 62, 7, 'zxdfvgxvg sdfgsdfg', '2016-02-16 07:26:52'),
(202, 62, 9, 'xbgxbgdfh dfhdfh ', '2016-02-16 10:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `venue` varchar(128) NOT NULL,
  `date` datetime NOT NULL,
  `shared_with` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `user_id`, `title`, `description`, `venue`, `date`, `shared_with`) VALUES
(25, 6, 'The event test 1', 'rhthywet rhthywet rhthywet rhthywet rhthywet rhthywet rhthywet ', 'frasdf afs', '2016-02-12 00:00:00', '3,4'),
(26, 7, 'sdfd f', 'sdfsdfsdf', 'sdfsdfsdf', '2016-02-11 00:00:00', '8,9'),
(27, 7, 'Event Exampole3', 'f asfasdfasd', 'asd asdasdas', '2016-02-03 00:00:00', '3,4,8,9'),
(28, 7, 'werwerwer', 'sdfsdf sdfsdfd f', 'sdfsdf sdfsdf', '2016-02-02 00:00:00', '4,8'),
(29, 7, 'werwerwer', 'sdfsdf sdfsdfd f', 'sdfsdf sdfsdf', '2016-02-02 00:00:00', '4,8'),
(30, 7, 'ertwewer', 'werwerwerwer', 'werwerwerwe', '2016-02-09 00:00:00', '4,6'),
(31, 7, 'This is Event with no marks', 'sdf sdfsdfsd fsdf sdf', 'sdfsdfsdfsdf', '2016-02-13 00:00:00', '4,6'),
(32, 7, 'sdf sdfsdfsd', 'f sdfsdfsdfsd', 'f sdfsdf sdf', '2016-02-10 00:00:00', '4,8'),
(33, 7, 'ef sdfsdfsdf', 'sd fsdf sdfsd', 'f sdfsdfsdf', '2016-02-17 00:00:00', '4,6'),
(34, 6, 'sdfdfsdf', 'sdfsdf sdf sdfsdf', 'sdf sdfsdfsdf', '2016-02-09 00:00:00', '4,7'),
(35, 6, 'This is test Entry for Notifications', 'asf sdfsdf zdfgh dfgh dfgh sdfgh dfsh sdfhg dfghsdf agadf gdfgdf gdfg', 'fsdfsdfsdfsdfsdf', '2016-02-19 00:00:00', '4,7'),
(36, 6, 'were rwe', 'sfgd fg dfgdfgdfg', 'rwe rwerwe r', '2016-02-15 00:00:00', '4,7'),
(37, 7, 'Brand In the Hut blah blah blah', 'sdgf sdfg sdfgsfgdfg s', 'dfg sdfg sdfg sdfgsfg', '2016-02-05 00:00:00', '4,6'),
(38, 7, 'Brand Avenger', 'This is spiderman''s lost clothes...................... :D', 'Gotham', '2016-02-18 00:00:00', '4,6'),
(39, 7, 'wegf egfgsdfgsdgsdgsdg sd', 'sd gfsd gsdfgs dfgsdg sd', 'sd gsdg sdg sdgsdg sdg sdgsd ', '2016-02-16 00:00:00', '4,6'),
(40, 7, 'dfgdfg', 'dfgdfgdfg', 'dfgdgdfg', '2016-02-10 00:00:00', '3,4,6'),
(41, 6, 'fffffffffffffffffffffffffffff', 'fsdfsdfsf', 'sdfsdf', '2016-02-08 00:00:00', '3,4'),
(42, 7, 'gfsd gsdf', 'gsdfgsdfgsdf', 'gsdfgsdfg', '2016-02-24 00:00:00', '4,6'),
(43, 10, 'Event Test 1', 'This is the event test that need to be tested to the event notifications', 'The Pirate Bay Se', '2016-02-25 00:00:00', '3,7'),
(44, 7, 'The test Event 5', 'sdgf sdfgsd fsdf sdf sdf ', 'sdf sdf sdfsdf sdf', '2016-02-20 00:00:00', '4'),
(45, 7, 'The Test Event 6', 'This is the test entry for notifications', 'I dont know whether this is working or not', '2016-02-04 00:00:00', '4,6'),
(46, 7, ' fsdfasd fasdf asdf', 'dfsdfsd fsdfsd', 'sdf dfadfadfadf', '2016-02-23 00:00:00', '3,4,6,10'),
(47, 9, 'sdf sdf sdfsdfsdf', 'sdf sdf sdf sdf sdf ', 'sdf sdf sdf sdfsdfsdfsd f', '2016-02-06 00:00:00', '7'),
(48, 7, 'Ringer Bell and the way back in the way to the gear', 'sgdsd gfsdgf sdg sdgasd gasdg ', 'sd gsdg sdg sdgsdg', '2016-02-19 00:00:00', '9,10'),
(49, 9, 'fdg gsdfg sdgfsd', 'gsdgsdgsd', 'gsdgsdgsdg', '2016-02-01 00:00:00', '7'),
(50, 9, 'sdg sdg sdgsdg', 'sdgsdgsdgsdg', 'sdgsdsdgsdg', '2016-02-15 00:00:00', '7'),
(51, 9, 'sdg sdg sdgsdg', 'sdgsdgsdgsdg', 'sdgsdsdgsdg', '2016-02-15 00:00:00', '7'),
(52, 9, 'sdg sdg sdgsdg', 'sdgsdgsdgsdg', 'sdgsdsdgsdg', '2016-02-15 00:00:00', '7'),
(53, 9, 'sdg sdg sdgsdg', 'sdgsdgsdgsdg', 'sdgsdsdgsdg', '2016-02-15 00:00:00', '7'),
(54, 9, 'sdg sdg sdgsdg', 'sdgsdgsdgsdg', 'sdgsdsdgsdg', '2016-02-15 00:00:00', '7'),
(55, 9, 'sdg sdg sdgsdg', 'sdgsdgsdgsdg', 'sdgsdsdgsdg', '2016-02-15 00:00:00', '7'),
(56, 9, 'sdg sdg sdgsdg', 'sdgsdgsdgsdg', 'sdgsdsdgsdg', '2016-02-15 00:00:00', '7'),
(57, 9, 'sdg sdg sdgsdg', 'sdgsdgsdgsdg', 'sdgsdsdgsdg', '2016-02-15 00:00:00', '7'),
(58, 7, 'asdfdfsdfsdfsd', 'fsdfsdfsdfsd', 'fsdfsdsdf', '2016-02-17 00:00:00', '4,6,9,10'),
(59, 9, 'sdfg sdfasdfsd', 'fsdf sdfsdf', 'sdf sdfsdf', '2016-02-03 00:00:00', '6,7,8'),
(60, 9, 'sdfg sdfasdfsd', 'fsdf sdfsdf', 'sdf sdfsdf', '2016-02-03 00:00:00', '6,7,8'),
(61, 6, 'dghdfghdf', 'gdfgdfgdfg', 'dfgdfgdfg', '2016-02-05 00:00:00', '7');

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `entry` text NOT NULL,
  `date` datetime NOT NULL,
  `shared_with` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`id`, `user_id`, `entry`, `date`, `shared_with`) VALUES
(1, 6, 'This is test post', '2016-02-01 00:00:00', '5'),
(2, 6, 'dsfdfsdfsdf sdf sdf sdf', '2016-02-01 00:00:00', '5'),
(3, 6, 'This is 3rd Journal in the blog', '2016-02-02 00:00:00', '6'),
(4, 6, 'this is second git add contribution', '2016-02-02 00:00:00', '5,6'),
(5, 6, '5th journal comment in the way this is :poop:', '2016-02-02 00:00:00', '6'),
(6, 6, 'vbxcbzxcv zvzxv zxcvcvxc vxc v', '2016-02-02 00:00:00', '6'),
(7, 8, 'fdgfg dfgdfgdfg', '2016-02-05 00:00:00', '8'),
(8, 8, 'dfsg sdgd sdg sdfgsdg', '2016-02-03 00:00:00', '7'),
(9, 6, 'This is test Journal', '2016-02-05 00:00:00', '3,6,7,8'),
(10, 6, 'This is test journal entry and see whether right one are shared', '2016-02-04 00:00:00', '3,4,6,7'),
(11, 4, 'This is test entry Journal', '2016-02-09 00:00:00', '4,6,7'),
(12, 4, 'This is test number 2', '2016-02-09 00:00:00', '3,7,8,9'),
(13, 6, 'asd asdasd', '2016-02-09 00:00:00', '4,6'),
(14, 6, 'sdfsddsfsdf sdf sdf sdfsdf sdf', '2016-02-11 00:00:00', '4,6,7'),
(15, 6, 'sdfsddsfsdf sdf sdf sdfsdf sdf', '2016-02-11 00:00:00', '4,6,7'),
(16, 6, 'sdf sdfsdf sdf sdf', '2016-02-11 00:00:00', '7'),
(17, 6, 'This is test and please do not enter', '2016-02-11 00:00:00', '3,4,6,7,8,9'),
(18, 6, '?????? ??????? ??????? ????? ?????? ????? ???? ???????? ????????? ??? ???????? ????? ?????? ???????? ??? ?? ?????? ???????? ?????? ??? ???? ???\r\n', '2016-02-11 00:00:00', '4,6,7'),
(19, 6, 'ergter gefg sdfgsfgfgdfgdf', '2016-02-11 00:00:00', '4,6'),
(20, 6, 'dzvfsdvf sdfsdfsd fsdf sdfsdfsfsdfg sdgfsd gsdgsdgsdgsdgsdg', '2016-02-11 00:00:00', '4,6'),
(21, 6, 'Controller Generator\r\nThis generator helps you to quickly generate a new controller class with one or several controller actions and their corresponding views.', '2016-02-11 00:00:00', '4,6,7'),
(22, 6, 'Extension Generator\r\nThis generator helps you to generate the files needed by a Yii extension.\r\n\r\nPlease read the Extension Guidelines before creating an extension.', '2016-02-11 00:00:00', '4,6,7'),
(23, 6, 'This is hanging thing this is very awkward thing that was done by you', '2016-02-11 00:00:00', '6,7'),
(24, 10, 'This is The Journal Entry that need to be tested', '2016-02-12 00:00:00', '6,7,8'),
(25, 10, 'Dear Mom, Please buy me a new car', '2016-02-12 00:00:00', '6,7,8,9'),
(26, 4, 'ERtrefsd fasdf sdf asdfasd fdasf asdf', '2016-02-12 00:00:00', '6,7,8,9'),
(27, 4, 'This is test Journal to test comment additions', '2016-02-12 00:00:00', '3,6,7,8,9,10'),
(28, 4, 'dsf sdgfsdfsdf sdfsdf', '2016-02-12 00:00:00', '6,7,8,9,10'),
(29, 4, 'dsf sdgfsdfsdf sdfsdf', '2016-02-12 00:00:00', '6,7,8,9,10'),
(30, 4, 'The serious problem', '2016-02-12 00:00:00', '6,7,8'),
(31, 4, 'The serious problem', '2016-02-12 00:00:00', '6,7,8'),
(32, 4, 'The serious problem', '2016-02-12 00:00:00', '6,7,8'),
(33, 4, 'The serious problem', '2016-02-12 00:00:00', '6,7,8'),
(34, 4, 'The serious problem', '2016-02-12 00:00:00', '6,7,8'),
(35, 4, 'The serious problem', '2016-02-12 00:00:00', '6,7,8'),
(36, 4, 'The serious problem', '2016-02-12 00:00:00', '6,7,8'),
(37, 4, 'The serious problem', '2016-02-12 00:00:00', '6,7,8'),
(38, 4, 'The serious problem', '2016-02-12 00:00:00', '6,7,8'),
(39, 4, 'dfs fsdf sdfsdf', '2016-02-12 00:00:00', '6,7,8,10'),
(40, 4, 'wet dsgdgsd gsdg sdg sdgsdgsdgsdgsdgsdg', '2016-02-12 00:00:00', '6,7,8,9,10'),
(41, 4, 'uityhjch hgj ghjhgjghjghj  fhjgfhj hj hj dfhjfjfdjdfg tyujdfh dfhdfhdfgh  fgh fgh shgss dgh dhs hsd hsh afghadf hadfhdfh', '2016-02-12 00:00:00', '6,7,8'),
(42, 4, 'sf dfsdfsdf   sd fsdf sdf sd  sdf sdf sdf sdf sdfsdf sdfsdf ', '2016-02-12 00:00:00', '6,7,8'),
(43, 4, 'brtergtwrgsdfgsd dg sdg sdg', '2016-02-12 00:00:00', '7'),
(44, 4, 'sdf sdfsdfsdf sdf sdf sdfsdfsd fsdf sdfsdfsdf', '2016-02-12 00:00:00', '6,7,8'),
(45, 4, 'sfd sdf sdf sdfsd fsdfsdfsdfsdf', '2016-02-12 00:00:00', '7'),
(46, 4, 'sdfsdfs dfsdfsvsdfsdfasdfasdasd', '2016-02-03 00:00:00', '6,7,8,9'),
(47, 4, 'sdfsdfs dfsdfsvsdfsdfasdfasdasd', '2016-02-03 00:00:00', '6,7,8,9'),
(48, 4, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '2016-02-12 00:00:00', '7,8,9,10'),
(49, 4, 'sdfsdf sdfsdf sdfsdf', '2016-02-12 00:00:00', '7'),
(50, 4, 'sdfsdf sdfsdf sdfsdf', '2016-02-12 00:00:00', '7'),
(51, 4, 'sdfsdf sdfsdf sdfsdf', '2016-02-12 00:00:00', '7'),
(52, 4, 'sdgf sdfsdfsdf sdf sdfsd fsdfsdfsdfsdsdf sdf sdf sdfsdfsdfsdf', '2016-02-12 00:00:00', '7'),
(53, 4, 'sdgf sdfsdfsdf sdf sdfsd fsdfsdfsdfsdsdf sdf sdf sdfsdfsdfsdf', '2016-02-12 00:00:00', '7'),
(54, 4, 'sdgf sdfsdfsdf sdf sdfsd fsdfsdfsdfsdsdf sdf sdf sdfsdfsdfsdf', '2016-02-12 00:00:00', '7'),
(55, 4, 'sdgf sdfsdfsdf sdf sdfsd fsdfsdfsdfsdsdf sdf sdf sdfsdfsdfsdf', '2016-02-12 00:00:00', '7'),
(56, 4, 'sdgf sdfsdfsdf sdf sdfsd fsdfsdfsdfsdsdf sdf sdf sdfsdfsdfsdf', '2016-02-12 00:00:00', '7'),
(57, 4, 'sdgf sdfsdfsdf sdf sdfsd fsdfsdfsdfsdsdf sdf sdf sdfsdfsdfsdf', '2016-02-12 00:00:00', '7'),
(58, 4, 'The Journal Entry 7', '2016-02-12 00:00:00', '7'),
(59, 4, 'Mode of the Way that International Main Crowd', '2016-02-12 00:00:00', '7'),
(60, 4, 'asdf asd asd asdas das dfhsf HSDFHFhdfh dfasdf asd asd asdas das dfhsf HSDFHFhdfh dfasdf asd asd asdas das dfhsf HSDFHFhdfh dfasdf asd asd asdas das dfhsf HSDFHFhdfh dfasdf asd asd asdas das dfhsf HSDFHFhdfh dfasdf asd asd asdas das dfhsf HSDFHFhdfh dfasdf asd asd asdas das dfhsf HSDFHFhdfh dfasdf asd asd asdas das dfhsf HSDFHFhdfh dfasdf asd asd asdas das dfhsf HSDFHFhdfh dfasdf asd asd asdas das dfhsf HSDFHFhdfh dfasdf asd asd asdas das dfhsf HSDFHFhdfh dfasdf asd asd asdas das dfhsf HSDFHFhdfh df', '2016-02-12 00:00:00', '7'),
(61, 9, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', '2016-02-16 00:00:00', '4,6,7,8'),
(62, 9, 'sdfg sdfgsdgsdg sdg sdg sdgsdgsdfg sdg sdgsdgsd d sdg sdgsdgsd sdg dg sdg', '2016-02-16 00:00:00', '7');

-- --------------------------------------------------------

--
-- Table structure for table `mailbox`
--

CREATE TABLE `mailbox` (
  `id` int(11) NOT NULL,
  `sender` int(11) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `readed` smallint(6) NOT NULL DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mood`
--

CREATE TABLE `mood` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mood` varchar(16) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mood`
--

INSERT INTO `mood` (`id`, `user_id`, `mood`, `date`, `time`) VALUES
(775, 8, 'Excited', '2016-02-05', '12:21:00'),
(776, 8, 'Angry', '2016-04-26', '12:21:02'),
(777, 8, 'Excited', '2016-02-05', '12:21:04'),
(778, 8, 'Happy', '2016-04-13', '12:21:07'),
(780, 8, 'Bored', '2016-02-05', '12:21:11'),
(781, 8, 'Happy', '2016-02-05', '12:45:19'),
(782, 8, 'Sad', '2016-02-05', '12:45:21'),
(783, 8, 'Angry', '2016-02-05', '12:45:23'),
(784, 8, 'Bored', '2016-02-05', '12:45:24'),
(785, 8, 'Excited', '2016-02-05', '12:45:26'),
(786, 8, 'Happy', '2016-05-10', '12:45:27'),
(787, 8, 'Sad', '2016-02-05', '12:45:27'),
(788, 8, 'Excited', '2016-02-05', '12:47:00'),
(789, 8, 'Happy', '2016-02-05', '12:47:01'),
(790, 8, 'Sad', '2016-02-05', '12:47:03'),
(791, 8, 'Excited', '2016-02-05', '12:55:47'),
(792, 8, 'Angry', '2016-02-05', '12:55:48'),
(793, 8, 'Bored', '2016-02-05', '12:55:50'),
(794, 8, 'Excited', '2016-02-05', '12:55:50'),
(795, 8, 'Happy', '2016-02-05', '12:55:51'),
(796, 8, 'Sad', '2016-02-05', '12:55:53'),
(797, 8, 'Excited', '2016-02-05', '12:55:55'),
(798, 8, 'Angry', '2016-02-05', '12:55:56'),
(799, 8, 'Bored', '2016-02-05', '12:55:57'),
(800, 8, 'Angry', '2016-02-05', '12:55:59'),
(801, 8, 'Excited', '2016-02-05', '12:55:59'),
(802, 8, 'Happy', '2016-02-05', '12:56:00'),
(803, 8, 'Sad', '2016-02-05', '12:56:01'),
(804, 8, 'Happy', '2016-02-05', '12:56:02'),
(805, 8, 'Excited', '2016-02-05', '12:56:03'),
(806, 8, 'Angry', '2016-02-05', '12:56:04'),
(807, 8, 'Bored', '2016-02-05', '12:56:04'),
(808, 8, 'Excited', '2016-02-05', '12:56:05'),
(809, 8, 'Sad', '2016-02-05', '12:56:06'),
(810, 8, 'Excited', '2016-02-05', '12:56:07'),
(811, 8, 'Angry', '2016-02-05', '12:56:08'),
(812, 8, 'Happy', '2016-02-05', '12:56:09'),
(813, 8, 'Bored', '2016-02-05', '12:56:10'),
(814, 8, 'Excited', '2016-02-05', '12:59:53'),
(815, 8, 'Angry', '2016-02-05', '12:59:54'),
(816, 8, 'Bored', '2016-02-05', '12:59:55'),
(822, 8, 'Happy', '2016-02-08', '05:52:24'),
(823, 8, 'Excited', '2016-02-08', '05:52:27'),
(824, 8, 'Angry', '2016-02-08', '05:52:28'),
(825, 8, 'Bored', '2016-02-08', '05:52:29'),
(826, 8, 'Happy', '2016-02-08', '05:52:33'),
(924, 6, 'excited', '2016-02-09', '05:06:41'),
(925, 6, 'angry', '2016-02-09', '05:06:55'),
(926, 6, 'sad', '2016-02-09', '05:07:00'),
(927, 6, 'angry', '2016-02-09', '05:08:19'),
(928, 6, 'excited', '2016-02-09', '06:53:10'),
(934, 6, 'excited', '2016-02-10', '04:01:35'),
(935, 6, 'happy', '2016-02-11', '05:55:52'),
(936, 6, 'sad', '2016-02-11', '06:00:41'),
(937, 6, 'happy', '2016-02-11', '06:00:43'),
(938, 6, 'happy', '2016-02-11', '12:29:23'),
(939, 6, 'angry', '2016-02-11', '12:29:25'),
(940, 4, 'excited', '2016-02-12', '11:59:10'),
(941, 4, 'angry', '2016-02-12', '11:59:12'),
(962, 9, 'bored', '2016-02-16', '08:59:10'),
(963, 9, 'happy', '2016-02-16', '10:18:37'),
(964, 6, 'angry', '2016-02-16', '10:21:21'),
(965, 6, 'excited', '2016-02-16', '10:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shared_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(65) NOT NULL,
  `type_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `user_id`, `shared_id`, `description`, `type`, `type_id`, `status`, `date`) VALUES
(24, 10, 3, 'Event Test 1', 'event', 43, 0, '2016-02-12 03:56:50'),
(25, 10, 7, 'Event Test 1', 'event', 43, 1, '2016-02-12 03:56:50'),
(26, 10, 6, 'This is The Journal Entry that need to be tested', 'journal', 24, 1, '2016-02-12 03:58:00'),
(27, 10, 7, 'This is The Journal Entry that need to be tested', 'journal', 24, 1, '2016-02-12 03:58:00'),
(28, 10, 8, 'This is The Journal Entry that need to be tested', 'journal', 24, 0, '2016-02-12 03:58:00'),
(29, 7, 4, 'The test Event 5', 'event', 44, 1, '2016-02-12 04:00:00'),
(30, 7, 4, 'The Test Event 6', 'event', 45, 1, '2016-02-12 04:01:45'),
(31, 7, 6, 'The Test Event 6', 'event', 45, 1, '2016-02-12 04:01:45'),
(32, 10, 6, 'Dear Mom, Please buy me a new car', 'journal', 25, 1, '2016-02-12 04:24:42'),
(33, 10, 7, 'Dear Mom, Please buy me a new car', 'journal', 25, 1, '2016-02-12 04:24:42'),
(34, 10, 8, 'Dear Mom, Please buy me a new car', 'journal', 25, 0, '2016-02-12 04:24:42'),
(35, 10, 9, 'Dear Mom, Please buy me a new car', 'journal', 25, 1, '2016-02-12 04:24:42'),
(36, 10, 4, 'sdf sdf sdfsdfsdfsdf', 'comment', 22, 1, '2016-02-12 04:47:41'),
(37, 10, 6, 'sdf sdf sdfsdfsdfsdf', 'comment', 22, 1, '2016-02-12 04:47:41'),
(38, 10, 7, 'sdf sdf sdfsdfsdfsdf', 'comment', 22, 1, '2016-02-12 04:47:41'),
(39, 10, 4, 'df sdfsdf sdfsdfsdfsdfsd', 'comment', 22, 1, '2016-02-12 04:47:46'),
(40, 10, 6, 'df sdfsdf sdfsdfsdfsdfsd', 'comment', 22, 1, '2016-02-12 04:47:46'),
(41, 10, 7, 'df sdfsdf sdfsdfsdfsdfsd', 'comment', 22, 1, '2016-02-12 04:47:46'),
(42, 7, 4, 'dsf sdfsdf dfd ', 'comment', 22, 1, '2016-02-12 04:52:42'),
(43, 7, 6, 'dsf sdfsdf dfd ', 'comment', 22, 1, '2016-02-12 04:52:42'),
(44, 7, 7, 'dsf sdfsdf dfd ', 'comment', 22, 1, '2016-02-12 04:52:42'),
(45, 7, 4, 'fghf dghsfgsdgfsdgfsdg', 'comment', 22, 1, '2016-02-12 04:52:48'),
(46, 7, 6, 'fghf dghsfgsdgfsdgfsdg', 'comment', 22, 1, '2016-02-12 04:52:48'),
(47, 7, 7, 'fghf dghsfgsdgfsdgfsdg', 'comment', 22, 1, '2016-02-12 04:52:48'),
(48, 7, 4, 'fghf dghsfgsdgfsdgfsdg', 'comment', 22, 1, '2016-02-12 04:52:53'),
(49, 7, 6, 'fghf dghsfgsdgfsdgfsdg', 'comment', 22, 1, '2016-02-12 04:52:53'),
(50, 7, 7, 'fghf dghsfgsdgfsdgfsdg', 'comment', 22, 1, '2016-02-12 04:52:53'),
(51, 7, 4, 'sdf sdfsdf sdfsd', 'comment', 22, 1, '2016-02-12 04:52:58'),
(52, 7, 6, 'sdf sdfsdf sdfsd', 'comment', 22, 1, '2016-02-12 04:52:58'),
(53, 7, 7, 'sdf sdfsdf sdfsd', 'comment', 22, 1, '2016-02-12 04:52:58'),
(54, 7, 4, 'sdf sdfsdf sdfsd', 'comment', 22, 1, '2016-02-12 04:53:03'),
(55, 7, 6, 'sdf sdfsdf sdfsd', 'comment', 22, 1, '2016-02-12 04:53:03'),
(56, 7, 7, 'sdf sdfsdf sdfsd', 'comment', 22, 1, '2016-02-12 04:53:03'),
(57, 4, 4, 'd dvgfsdfdfsdf sdf sdf', 'comment', 22, 1, '2016-02-12 04:55:32'),
(58, 4, 6, 'd dvgfsdfdfsdf sdf sdf', 'comment', 22, 1, '2016-02-12 04:55:32'),
(59, 4, 7, 'd dvgfsdfdfsdf sdf sdf', 'comment', 22, 1, '2016-02-12 04:55:32'),
(60, 4, 4, 'sdf sdfsdfsdf', 'comment', 22, 1, '2016-02-12 04:56:10'),
(61, 4, 6, 'sdf sdfsdfsdf', 'comment', 22, 1, '2016-02-12 04:56:10'),
(62, 4, 7, 'sdf sdfsdfsdf', 'comment', 22, 1, '2016-02-12 04:56:10'),
(63, 7, 6, 'drg dfgdfgdfg', 'comment', 25, 1, '2016-02-12 05:21:13'),
(64, 7, 7, 'drg dfgdfgdfg', 'comment', 25, 1, '2016-02-12 05:21:13'),
(65, 7, 8, 'drg dfgdfgdfg', 'comment', 25, 0, '2016-02-12 05:21:13'),
(66, 7, 9, 'drg dfgdfgdfg', 'comment', 25, 1, '2016-02-12 05:21:13'),
(67, 7, 6, 'd fgdfg dfg dfg dfgdf gdfg', 'comment', 25, 1, '2016-02-12 05:21:17'),
(68, 7, 7, 'd fgdfg dfg dfg dfgdf gdfg', 'comment', 25, 1, '2016-02-12 05:21:17'),
(69, 7, 8, 'd fgdfg dfg dfg dfgdf gdfg', 'comment', 25, 0, '2016-02-12 05:21:17'),
(70, 7, 9, 'd fgdfg dfg dfg dfgdf gdfg', 'comment', 25, 1, '2016-02-12 05:21:17'),
(71, 7, 6, 'df gdfgdfgsgdfgdf gdfg sdfg dfg', 'comment', 25, 1, '2016-02-12 05:21:22'),
(72, 7, 7, 'df gdfgdfgsgdfgdf gdfg sdfg dfg', 'comment', 25, 1, '2016-02-12 05:21:22'),
(73, 7, 8, 'df gdfgdfgsgdfgdf gdfg sdfg dfg', 'comment', 25, 0, '2016-02-12 05:21:22'),
(74, 7, 9, 'df gdfgdfgsgdfgdf gdfg sdfg dfg', 'comment', 25, 1, '2016-02-12 05:21:22'),
(75, 7, 6, 'zd fgzdfg zdfg d zdfgzdfgzdf gzdfg zdf g zdfgzdfgdfzg', 'comment', 25, 1, '2016-02-12 05:21:30'),
(76, 7, 7, 'zd fgzdfg zdfg d zdfgzdfgzdf gzdfg zdf g zdfgzdfgdfzg', 'comment', 25, 1, '2016-02-12 05:21:30'),
(77, 7, 8, 'zd fgzdfg zdfg d zdfgzdfgzdf gzdfg zdf g zdfgzdfgdfzg', 'comment', 25, 0, '2016-02-12 05:21:30'),
(78, 7, 9, 'zd fgzdfg zdfg d zdfgzdfgzdf gzdfg zdf g zdfgzdfgdfzg', 'comment', 25, 1, '2016-02-12 05:21:30'),
(79, 7, 6, 'dzf gzdfg zdzdfgzdfgzdfg zdfgzdfgzdfgzdfg', 'comment', 25, 1, '2016-02-12 05:21:38'),
(80, 7, 7, 'dzf gzdfg zdzdfgzdfgzdfg zdfgzdfgzdfgzdfg', 'comment', 25, 1, '2016-02-12 05:21:38'),
(81, 7, 8, 'dzf gzdfg zdzdfgzdfgzdfg zdfgzdfgzdfgzdfg', 'comment', 25, 0, '2016-02-12 05:21:38'),
(82, 7, 9, 'dzf gzdfg zdzdfgzdfgzdfg zdfgzdfgzdfgzdfg', 'comment', 25, 1, '2016-02-12 05:21:38'),
(83, 4, 4, 'dfg dfghdfg dfgdfzgfg', 'comment', 22, 1, '2016-02-12 05:27:38'),
(84, 4, 6, 'dfg dfghdfg dfgdfzgfg', 'comment', 22, 1, '2016-02-12 05:27:38'),
(85, 4, 7, 'dfg dfghdfg dfgdfzgfg', 'comment', 22, 1, '2016-02-12 05:27:38'),
(86, 4, 4, 'z dfgzdf gzdfgzdfgzdfg', 'comment', 22, 1, '2016-02-12 05:27:42'),
(87, 4, 6, 'z dfgzdf gzdfgzdfgzdfg', 'comment', 22, 1, '2016-02-12 05:27:42'),
(88, 4, 7, 'z dfgzdf gzdfgzdfgzdfg', 'comment', 22, 1, '2016-02-12 05:27:42'),
(89, 4, 4, 'zdf gzdfgdfzgzdfg', 'comment', 22, 1, '2016-02-12 05:27:47'),
(90, 4, 6, 'zdf gzdfgdfzgzdfg', 'comment', 22, 1, '2016-02-12 05:27:47'),
(91, 4, 7, 'zdf gzdfgdfzgzdfg', 'comment', 22, 1, '2016-02-12 05:27:47'),
(92, 4, 4, 'sdf sdfsdfsdfsdfdf', 'comment', 22, 1, '2016-02-12 05:32:25'),
(93, 4, 6, 'sdf sdfsdfsdfsdfdf', 'comment', 22, 1, '2016-02-12 05:32:25'),
(94, 4, 7, 'sdf sdfsdfsdfsdfdf', 'comment', 22, 1, '2016-02-12 05:32:25'),
(95, 4, 4, 'df gdfgdfgdfgdfgdf dfg', 'comment', 22, 1, '2016-02-12 05:32:30'),
(96, 4, 6, 'df gdfgdfgdfgdfgdf dfg', 'comment', 22, 1, '2016-02-12 05:32:30'),
(97, 4, 7, 'df gdfgdfgdfgdfgdf dfg', 'comment', 22, 1, '2016-02-12 05:32:30'),
(98, 4, 3, 'dfg dgdf gdfg dfgf', 'comment', 12, 0, '2016-02-12 05:42:26'),
(99, 4, 7, 'dfg dgdf gdfg dfgf', 'comment', 12, 1, '2016-02-12 05:42:26'),
(100, 4, 8, 'dfg dgdf gdfg dfgf', 'comment', 12, 0, '2016-02-12 05:42:26'),
(101, 4, 9, 'dfg dgdf gdfg dfgf', 'comment', 12, 1, '2016-02-12 05:42:26'),
(102, 4, 3, 'This is comment', 'comment', 12, 0, '2016-02-12 05:42:32'),
(103, 4, 7, 'This is comment', 'comment', 12, 1, '2016-02-12 05:42:32'),
(104, 4, 8, 'This is comment', 'comment', 12, 0, '2016-02-12 05:42:32'),
(105, 4, 9, 'This is comment', 'comment', 12, 1, '2016-02-12 05:42:32'),
(106, 4, 3, 'Thilanka Ranasinghe', 'comment', 12, 0, '2016-02-12 05:42:39'),
(107, 4, 7, 'Thilanka Ranasinghe', 'comment', 12, 1, '2016-02-12 05:42:39'),
(108, 4, 8, 'Thilanka Ranasinghe', 'comment', 12, 0, '2016-02-12 05:42:39'),
(109, 4, 9, 'Thilanka Ranasinghe', 'comment', 12, 1, '2016-02-12 05:42:39'),
(110, 4, 3, 'blah blah blah', 'comment', 12, 0, '2016-02-12 05:42:47'),
(111, 4, 7, 'blah blah blah', 'comment', 12, 1, '2016-02-12 05:42:47'),
(112, 4, 8, 'blah blah blah', 'comment', 12, 0, '2016-02-12 05:42:47'),
(113, 4, 9, 'blah blah blah', 'comment', 12, 1, '2016-02-12 05:42:47'),
(114, 4, 3, 'blah blah blah', 'comment', 12, 0, '2016-02-12 05:42:55'),
(115, 4, 7, 'blah blah blah', 'comment', 12, 1, '2016-02-12 05:42:55'),
(116, 4, 8, 'blah blah blah', 'comment', 12, 0, '2016-02-12 05:42:55'),
(117, 4, 9, 'blah blah blah', 'comment', 12, 1, '2016-02-12 05:42:55'),
(118, 7, 6, 'sdf sdfsdfsdf sdf', 'comment', 25, 1, '2016-02-12 06:29:01'),
(119, 7, 7, 'sdf sdfsdfsdf sdf', 'comment', 25, 1, '2016-02-12 06:29:01'),
(120, 7, 8, 'sdf sdfsdfsdf sdf', 'comment', 25, 0, '2016-02-12 06:29:01'),
(121, 7, 9, 'sdf sdfsdfsdf sdf', 'comment', 25, 1, '2016-02-12 06:29:01'),
(122, 7, 6, 'sdf sdf sdfsdfsdf', 'comment', 25, 1, '2016-02-12 07:31:48'),
(123, 7, 7, 'sdf sdf sdfsdfsdf', 'comment', 25, 1, '2016-02-12 07:31:48'),
(124, 7, 8, 'sdf sdf sdfsdfsdf', 'comment', 25, 0, '2016-02-12 07:31:48'),
(125, 7, 9, 'sdf sdf sdfsdfsdf', 'comment', 25, 1, '2016-02-12 07:31:48'),
(126, 7, 6, 'sdf sdfsdfsdf', 'comment', 25, 1, '2016-02-12 07:31:53'),
(127, 7, 7, 'sdf sdfsdfsdf', 'comment', 25, 1, '2016-02-12 07:31:53'),
(128, 7, 8, 'sdf sdfsdfsdf', 'comment', 25, 0, '2016-02-12 07:31:53'),
(129, 7, 9, 'sdf sdfsdfsdf', 'comment', 25, 1, '2016-02-12 07:31:53'),
(130, 7, 6, 'sdf sdfsdfsdfsd', 'comment', 25, 1, '2016-02-12 07:31:57'),
(131, 7, 7, 'sdf sdfsdfsdfsd', 'comment', 25, 1, '2016-02-12 07:31:57'),
(132, 7, 8, 'sdf sdfsdfsdfsd', 'comment', 25, 0, '2016-02-12 07:31:57'),
(133, 7, 9, 'sdf sdfsdfsdfsd', 'comment', 25, 1, '2016-02-12 07:31:57'),
(134, 4, 6, 'dgf sdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:33:26'),
(135, 4, 7, 'dgf sdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:33:26'),
(136, 4, 6, 'sdf sdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:33:31'),
(137, 4, 7, 'sdf sdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:33:31'),
(138, 4, 6, 'sdf sdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:33:35'),
(139, 4, 7, 'sdf sdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:33:35'),
(140, 4, 6, 'sdf sdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:33:39'),
(141, 4, 7, 'sdf sdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:33:39'),
(142, 4, 6, 'sdf sdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:33:43'),
(143, 4, 7, 'sdf sdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:33:43'),
(144, 4, 6, 'df sdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:35:00'),
(145, 4, 7, 'df sdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:35:00'),
(146, 4, 6, 'sdf sdfsdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:35:04'),
(147, 4, 7, 'sdf sdfsdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:35:04'),
(148, 4, 6, 'sdf sdfsdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:35:07'),
(149, 4, 7, 'sdf sdfsdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:35:07'),
(150, 4, 6, 'sdf sdfsdfsdfsdfs', 'comment', 23, 1, '2016-02-12 07:35:11'),
(151, 4, 7, 'sdf sdfsdfsdfsdfs', 'comment', 23, 1, '2016-02-12 07:35:11'),
(152, 4, 6, 'sdf sdfsdfsdfsdfsd', 'comment', 23, 1, '2016-02-12 07:35:15'),
(153, 4, 7, 'sdf sdfsdfsdfsdfsd', 'comment', 23, 1, '2016-02-12 07:35:15'),
(154, 4, 6, 'sdf sdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:35:20'),
(155, 4, 7, 'sdf sdfsdfsdf', 'comment', 23, 1, '2016-02-12 07:35:20'),
(156, 4, 4, 'sdf sdfsdfsdf', 'comment', 18, 1, '2016-02-12 07:35:32'),
(157, 4, 6, 'sdf sdfsdfsdf', 'comment', 18, 1, '2016-02-12 07:35:32'),
(158, 4, 7, 'sdf sdfsdfsdf', 'comment', 18, 1, '2016-02-12 07:35:32'),
(159, 4, 4, 'sdf sdfsdfsdfsd', 'comment', 18, 1, '2016-02-12 07:35:34'),
(160, 4, 6, 'sdf sdfsdfsdfsd', 'comment', 18, 1, '2016-02-12 07:35:34'),
(161, 4, 7, 'sdf sdfsdfsdfsd', 'comment', 18, 1, '2016-02-12 07:35:34'),
(162, 4, 4, 'sdf sdfsdfsdf', 'comment', 18, 1, '2016-02-12 07:35:38'),
(163, 4, 6, 'sdf sdfsdfsdf', 'comment', 18, 1, '2016-02-12 07:35:38'),
(164, 4, 7, 'sdf sdfsdfsdf', 'comment', 18, 1, '2016-02-12 07:35:38'),
(165, 4, 4, 'sdf sdfsdfsdf', 'comment', 18, 1, '2016-02-12 07:36:04'),
(166, 4, 6, 'sdf sdfsdfsdf', 'comment', 18, 1, '2016-02-12 07:36:04'),
(167, 4, 7, 'sdf sdfsdfsdf', 'comment', 18, 1, '2016-02-12 07:36:04'),
(168, 4, 6, 'ERtrefsd fasdf sdf asdfasd fdasf asdf', 'journal', 26, 1, '2016-02-12 07:42:07'),
(169, 4, 7, 'ERtrefsd fasdf sdf asdfasd fdasf asdf', 'journal', 26, 1, '2016-02-12 07:42:07'),
(170, 4, 8, 'ERtrefsd fasdf sdf asdfasd fdasf asdf', 'journal', 26, 0, '2016-02-12 07:42:07'),
(171, 4, 9, 'ERtrefsd fasdf sdf asdfasd fdasf asdf', 'journal', 26, 1, '2016-02-12 07:42:07'),
(172, 7, 6, 'sdfg sdgfsdgfsd sdgf sdgf sdg', 'comment', 26, 1, '2016-02-12 07:54:38'),
(173, 7, 7, 'sdfg sdgfsdgfsd sdgf sdgf sdg', 'comment', 26, 1, '2016-02-12 07:54:38'),
(174, 7, 8, 'sdfg sdgfsdgfsd sdgf sdgf sdg', 'comment', 26, 0, '2016-02-12 07:54:38'),
(175, 7, 9, 'sdfg sdgfsdgfsd sdgf sdgf sdg', 'comment', 26, 1, '2016-02-12 07:54:38'),
(176, 7, 6, ' dgdfgdfg dfg dh dfh dfh dfh dfh dfhdfh', 'comment', 26, 1, '2016-02-12 07:54:46'),
(177, 7, 7, ' dgdfgdfg dfg dh dfh dfh dfh dfh dfhdfh', 'comment', 26, 1, '2016-02-12 07:54:46'),
(178, 7, 8, ' dgdfgdfg dfg dh dfh dfh dfh dfh dfhdfh', 'comment', 26, 0, '2016-02-12 07:54:46'),
(179, 7, 9, ' dgdfgdfg dfg dh dfh dfh dfh dfh dfhdfh', 'comment', 26, 1, '2016-02-12 07:54:46'),
(680, 9, 7, 'sdfg sdfasdfsd', 'event', 60, 1, '2016-02-16 06:35:59'),
(681, 9, 4, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 0, '2016-02-16 07:13:05'),
(682, 9, 6, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:05'),
(683, 9, 7, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:05'),
(684, 9, 8, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 0, '2016-02-16 07:13:05'),
(685, 9, 9, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:05'),
(686, 7, 4, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 0, '2016-02-16 07:13:30'),
(687, 7, 6, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:30'),
(688, 7, 7, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:30'),
(689, 7, 8, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 0, '2016-02-16 07:13:30'),
(690, 7, 9, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:30'),
(691, 9, 4, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 0, '2016-02-16 07:13:45'),
(692, 9, 6, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:45'),
(693, 9, 7, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:45'),
(694, 9, 8, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 0, '2016-02-16 07:13:45'),
(695, 9, 9, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:45'),
(696, 7, 4, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 0, '2016-02-16 07:13:57'),
(697, 7, 6, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:57'),
(698, 7, 7, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:57'),
(699, 7, 8, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 0, '2016-02-16 07:13:57'),
(700, 7, 9, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:57'),
(701, 7, 4, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 0, '2016-02-16 07:14:01'),
(702, 7, 6, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:14:01'),
(703, 7, 7, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 0, '2016-02-16 07:14:02'),
(704, 7, 8, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 0, '2016-02-16 07:14:02'),
(705, 7, 9, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:14:02'),
(706, 9, 7, 'sdfg sdfgsdgsdg sdg sdg sdgsdgsdfg sdg sdgsdgsd d sdg sdgsdgsd sdg dg sdg', 'journal', 62, 1, '2016-02-16 07:17:47'),
(707, 9, 9, 'sdfg sdfgsdgsdg sdg sdg sdgsdgsdfg sdg sdgsdgsd d sdg sdgsdgsd sdg dg sdg', 'journal', 62, 0, '2016-02-16 07:17:47'),
(708, 7, 7, 'sdfg sdfgsdgsdg sdg sdg sdgsdgsdfg sdg sdgsdgsd d sdg sdgsdgsd sdg dg sdg', 'comment', 62, 1, '2016-02-16 07:18:02'),
(709, 7, 9, 'sdfg sdfgsdgsdg sdg sdg sdgsdgsdfg sdg sdgsdgsd d sdg sdgsdgsd sdg dg sdg', 'comment', 62, 1, '2016-02-16 07:18:02'),
(710, 9, 7, 'sdfg sdfgsdgsdg sdg sdg sdgsdgsdfg sdg sdgsdgsd d sdg sdgsdgsd sdg dg sdg', 'comment', 62, 1, '2016-02-16 07:18:12'),
(711, 9, 9, 'sdfg sdfgsdgsdg sdg sdg sdgsdgsdfg sdg sdgsdgsd d sdg sdgsdgsd sdg dg sdg', 'comment', 62, 1, '2016-02-16 07:18:12'),
(712, 7, 6, 'This is 3rd Journal in the blog', 'comment', 3, 1, '2016-02-16 07:21:45'),
(713, 7, 6, 'This is 3rd Journal in the blog', 'comment', 3, 1, '2016-02-16 07:21:45'),
(714, 7, 6, 'This is 3rd Journal in the blog', 'comment', 3, 1, '2016-02-16 07:21:50'),
(715, 7, 6, 'This is 3rd Journal in the blog', 'comment', 3, 1, '2016-02-16 07:21:55'),
(716, 7, 6, 'This is 3rd Journal in the blog', 'comment', 3, 1, '2016-02-16 07:22:00'),
(717, 7, 6, 'This is 3rd Journal in the blog', 'comment', 3, 1, '2016-02-16 07:22:05'),
(718, 7, 6, 'This is 3rd Journal in the blog', 'comment', 3, 1, '2016-02-16 07:22:10'),
(719, 7, 6, 'This is 3rd Journal in the blog', 'comment', 3, 1, '2016-02-16 07:22:14'),
(720, 9, 7, 'sdfg sdfgsdgsdg sdg sdg sdgsdgsdfg sdg sdgsdgsd d sdg sdgsdgsd sdg dg sdg', 'comment', 62, 1, '2016-02-16 07:25:31'),
(721, 9, 9, 'sdfg sdfgsdgsdg sdg sdg sdgsdgsdfg sdg sdgsdgsd d sdg sdgsdgsd sdg dg sdg', 'comment', 62, 1, '2016-02-16 07:25:31'),
(722, 9, 7, 'sdfg sdfgsdgsdg sdg sdg sdgsdgsdfg sdg sdgsdgsd d sdg sdgsdgsd sdg dg sdg', 'comment', 62, 1, '2016-02-16 07:26:40'),
(723, 9, 9, 'sdfg sdfgsdgsdg sdg sdg sdgsdgsdfg sdg sdgsdgsd d sdg sdgsdgsd sdg dg sdg', 'comment', 62, 1, '2016-02-16 07:26:41'),
(724, 7, 7, 'sdfg sdfgsdgsdg sdg sdg sdgsdgsdfg sdg sdgsdgsd d sdg sdgsdgsd sdg dg sdg', 'comment', 62, 1, '2016-02-16 07:26:52'),
(725, 7, 9, 'sdfg sdfgsdgsdg sdg sdg sdgsdgsdfg sdg sdgsdgsd d sdg sdgsdgsd sdg dg sdg', 'comment', 62, 1, '2016-02-16 07:26:52'),
(726, 6, 7, 'dghdfghdf', 'event', 61, 1, '2016-02-16 10:17:46'),
(727, 6, 6, 'dghdfghdf', 'event', 61, 0, '2016-02-16 10:17:46'),
(728, 9, 7, 'sdfg sdfgsdgsdg sdg sdg sdgsdgsdfg sdg sdgsdgsd d sdg sdgsdgsd sdg dg sdg', 'comment', 62, 1, '2016-02-16 10:18:53'),
(729, 9, 9, 'sdfg sdfgsdgsdg sdg sdg sdgsdgsdfg sdg sdgsdgsd d sdg sdgsdgsd sdg dg sdg', 'comment', 62, 0, '2016-02-16 10:18:53'),
(730, 9, 7, 'sdfsdf', 'wishlist', 3, 0, '2016-02-16 10:46:26'),
(731, 9, 9, 'sdfsdf', 'wishlist', 3, 0, '2016-02-16 10:46:27'),
(732, 6, 7, 'dfgdfgdfg', 'wishlist', 4, 0, '2016-02-16 12:16:26'),
(733, 6, 6, 'dfgdfgdfg', 'wishlist', 4, 0, '2016-02-16 12:16:26'),
(734, 7, 7, 'sdfsdf', 'wishlist', 5, 0, '2016-02-16 12:28:26'),
(735, 6, 7, 'sdfsdfsdfsdfsdf', 'wishlist', 1, 0, '2016-02-16 12:47:45'),
(736, 6, 6, 'sdfsdfsdfsdfsdf', 'wishlist', 1, 0, '2016-02-16 12:47:45'),
(737, 6, 7, 'fgdfgdfgd', 'wishlist', 2, 0, '2016-02-16 12:48:01'),
(738, 6, 6, 'fgdfgdfgd', 'wishlist', 2, 0, '2016-02-16 12:48:01'),
(739, 6, 7, 'sdfsdfsdfsf', 'wishlist', 3, 0, '2016-02-16 12:48:15'),
(740, 6, 6, 'sdfsdfsdfsf', 'wishlist', 3, 0, '2016-02-16 12:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` varchar(32) NOT NULL,
  `subcription_id` varchar(32) NOT NULL,
  `ip_address` varchar(16) NOT NULL,
  `amount` float NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `user_id`, `customer_id`, `subcription_id`, `ip_address`, `amount`, `status`, `date`) VALUES
(1, 1, 'cus_7iDI8bUtU39kbL', 'sub_7iDICaGE4xV7Tp', '127.0.0.1', 1000, 1, '2016-01-13 11:33:00'),
(2, 2, 'cus_7kL7sFURhBXkdW', 'sub_7kL7vT91KR1rZd', '192.168.1.19', 1000, 1, '2016-01-19 03:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `shared_with` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `label` varchar(16) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `street` varchar(64) NOT NULL,
  `area` varchar(64) NOT NULL,
  `city` varchar(64) NOT NULL,
  `zipcode` varchar(8) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `label`, `first_name`, `last_name`, `dob`, `mobile`, `street`, `area`, `city`, `zipcode`, `image`, `color`) VALUES
(1, 1, 'Father', 'Amal', 'Ranganath', '1986-01-01', '0745645645', 'Main Road', 'Angulana', 'Moratuwa', '1566', '400px-Henning_Fritz.jpg', '#e69237'),
(2, 2, 'Father', 'lakshan', 'anjana', NULL, NULL, 'colombo', 'colombo', 'colombo', '55416', NULL, NULL),
(3, 3, 'Doughter', 'Ana', 'Cal', '2016-01-08', '', 'Main Road', 'Angulana', 'Moratuwa', '1566', NULL, '#ffd966'),
(4, 4, 'Son', 'anjana', 'anjana', '1994-08-01', '', 'colombo', 'colombo', 'colombo', '55416', NULL, '#ffff00'),
(5, 5, 'Father', 'Thilanka', 'Ranaisnghe', NULL, '', '24', 'Ranavirugama', 'kosgama', '10732', NULL, '#e06767'),
(6, 6, 'Son', 'Kiddy', 'Jackson', '2009-01-15', '', '24', 'Ranavirugama', 'kosgama', '10732', '1f601.png', '#69a64e'),
(7, 7, 'Father', 'Andrew', 'Flintoff', NULL, '', '34', 'Rest', 'ApiLoad', '23234', 'game_overview_thumbnail_halospartanassault-9f927d8913d5434499e8d31a0d4c88e7.jpg', '#ff9900'),
(8, 8, 'Son', 'kidd', 'My', '2009-01-08', '', '34', 'Rest', 'ApiLoad', '23234', 'Beautiful_Cute_Smile_of_American_Actress_Blake_Lively_and_Wear_White_TShirt_Image_Download.jpg', '#ff00ff'),
(9, 9, 'Son', 'Dr', 'Dre', '2016-02-03', NULL, '34', 'Rest', 'ApiLoad', '23234', NULL, NULL),
(10, 10, 'Son', 'Thilanka', 'Ranasinghe', '2006-02-08', NULL, '34', 'Rest', 'ApiLoad', '23234', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tempuser`
--

CREATE TABLE `tempuser` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(64) NOT NULL,
  `spouse_email` varchar(128) DEFAULT NULL,
  `started` datetime NOT NULL,
  `label` varchar(16) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `street` varchar(64) NOT NULL,
  `area` varchar(64) NOT NULL,
  `city` varchar(64) NOT NULL,
  `zipcode` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempuser`
--

INSERT INTO `tempuser` (`id`, `user_id`, `email`, `password`, `spouse_email`, `started`, `label`, `first_name`, `last_name`, `street`, `area`, `city`, `zipcode`) VALUES
(1, 1, 'amal@livingdreams.lk', '123', '', '2016-01-13 05:55:00', 'Father', 'Amal', 'Ranganath', 'Main Road', 'Angulana', 'Moratuwa', '1566'),
(2, 2, 'lakshananjana40@gmail.com', 'anjana', 'anjana@livingdreams.lk', '2016-01-19 03:25:00', 'Father', 'lakshan', 'anjana', 'colombo', 'colombo', 'colombo', '55416'),
(3, NULL, 'nim_bandara@yahoo.com', '123456789', 'madu@livingdreams.lk', '2016-01-25 06:32:00', 'Father', 'Nimesha', 'Bandara', '702 Galle Rd, ', 'Idama', 'Moratuwa', '10400'),
(4, NULL, 'thilankarnasinghe1989@gmail.com', 'pathfinder', '', '2016-01-27 05:53:00', 'Father', 'Thilanka', 'Ranaisnghe', '24', 'Ranavirugama', 'kosgama', '10732'),
(5, NULL, 'gajaba88@gmail.com', '111111', '', '2016-02-02 10:27:00', 'Father', 'Andrew', 'Flintoff', '34', 'Rest', 'ApiLoad', '23234');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `identity` varchar(128) NOT NULL,
  `password` varchar(64) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `level` tinyint(4) NOT NULL COMMENT '0=>superadmin, 1=>householder, 2=>spouse, 3=>child',
  `auth_key` varchar(32) NOT NULL,
  `access_token` varchar(128) NOT NULL,
  `started` datetime NOT NULL,
  `lastvisit` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0=>incative, 1 =>active, 2=>deactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `identity`, `password`, `parent_id`, `level`, `auth_key`, `access_token`, `started`, `lastvisit`, `status`) VALUES
(1, 'amal@livingdreams.lk', '$2y$13$MDHu2ZBE0CqJyQaYRswdPOhJKFmWHb/4wx5WPMe/CKhh8Tu3SqMTO', 0, 0, '8u6q1pruY81je4SL4HHionNBKlir3Agu', 'G0IxuwFOgoKZUOeeO8nml0VrVh64AJ82Bs0sPY5VThqvXTe0ZisWLcbb1NX64NPN', '2016-01-18 04:42:00', NULL, 0),
(2, 'lakshananjana40@gmail.com', '$2y$13$MDHu2ZBE0CqJyQaYRswdPOhJKFmWHb/4wx5WPMe/CKhh8Tu3SqMTO', 0, 1, 'fiMZLVMoxB316oJQVHftsA_XCiYWRzmZ', 'Qvbg5eyQmYPzJSCWVTDCTRoFdeaxBhtpXOgkD4uVV1L90c6fOTsuYsxyiMliNI12', '2016-01-19 03:28:00', NULL, 0),
(3, 'amal', '$2y$13$MDHu2ZBE0CqJyQaYRswdPOhJKFmWHb/4wx5WPMe/CKhh8Tu3SqMTO', 7, 3, 'g7rMf194FiYyK03CemgRt9KxI0-apJ-5', 'ks-U7AJVI9s2wk1zV5gleJo9Cj-4XAtZ2324zGdeLVcDvsjOTMYTBWSKvhQjzL9X', '2016-01-22 07:17:00', NULL, 1),
(4, 'anjana', '$2y$13$3uWb6x7y8SHMqWBCnC85yepKA1/kefyGwv6NfHJ0JRdzNIAIXmFc.', 7, 3, 'atRT0-dIXvi4uEuZmuo_cKU47gdAxldR', 'HfVGgPADKRgH-CZzWwxetx0jYdMqiR0J3aAXDCkZkW59rZPlCtM52Acaw82yqquL', '2016-01-22 09:37:00', NULL, 1),
(5, 'thilankarnasinghe1989@gmail.com', '$2y$13$8lrrXXEuRoe83IbpUXypCup1M3DfXDK90laYjtw8.HBJhdPRzBpxa', 0, 1, 'NAOLvOXkSYgElHL9SbGo2iZn8oFUVXu2', 't83tc7D2GigdVhQe-VOO8otGNazgw0Z00FTOVH2oR5TGLCjTala-4Bs84FdIJf4f', '2016-01-27 05:53:00', NULL, 0),
(6, 'childKid', '$2y$13$5LADOri.PtKkwakwEEHz8uQHtyeUjIRrhMuNbjuZIx7Cs8oWW.vgW', 7, 3, '3NAXi_Vu0wTbPK71w_qMI5JUZL52KSQn', 'g6BcFW44bNR-BTiCDAIYIpF3bjD1Uq11ti0pWuD8Lxnk6GC-sNVKLD6ACT1_95kd', '2016-01-27 06:14:00', NULL, 1),
(7, 'gajaba88@gmail.com', '$2y$13$8lrrXXEuRoe83IbpUXypCup1M3DfXDK90laYjtw8.HBJhdPRzBpxa', 0, 1, 'WM9z14ywWY9GoLoFlNQbINY_WjhTMpKp', 'KmpmRN_lBe8ZVjh8L6QwSQ1yBZucuUYT92V_6qB1iuiTCoEakWCeSkaQ73zbjYWA', '2016-02-02 10:27:00', NULL, 0),
(8, 'kid', '$2y$13$OqsSLv5w72uF5QKV5wwOo.KRMcjTAFShA5xmK3qkLkc0LZxDSY9su', 7, 3, 'h90Iu4qlGkxOMy5o1q4IfOYkLe1PGGap', 'gkD3g3Yz4ZRcgFCW-3yIA3U6uezyR3tPeKHEDGYdsXNB0lVxV2RwBm7JgN0gpk2m', '2016-02-08 06:01:00', NULL, 1),
(9, 'childKidDin', '$2y$13$.wfillNiYwV.J0IP4E5M2efV5CmB24qI6YQRB6mLo9RG5N3eCi70u', 7, 3, 'fwK78io_wpL85ZkEMxrPUbxa6ryqxcX6', 'oozMJAnR6kccNVSSqSyjlWMPSIyDpQelNuIR3ZzwNb_gBOoU869bQFqqdomEADQD', '2016-02-08 01:11:00', NULL, 1),
(10, 'Thilanka', '$2y$13$8oqQnHp1FRQnk4zXzGsyn.YKyNGcCAPekfe8zDr0sQSNJ5s0V1E.S', 7, 3, 'yQTqEcwko67aEq8lV9TH6sGB5FaFyRlT', 'wBlwKWXH7S1mnbqe0jVi9ztizPP4E_xxvmUpWl17aj5ZefpFosi_Y0KzIJ3peVP0', '2016-02-12 03:55:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `title` varchar(65) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event` varchar(65) NOT NULL,
  `emoji` varchar(65) NOT NULL,
  `assigned_to` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `title`, `user_id`, `event`, `emoji`, `assigned_to`, `status`, `date`) VALUES
(1, 'sdfsdfsdfsdfsdf', 6, 'sdfsdfsdf', 'dsfsdfsdf', '7', 0, '2016-02-16 12:47:44'),
(2, 'fgdfgdfgd', 6, 'fgdfgdfg', 'wrtergtdfg', '7', 0, '2016-02-16 12:48:00'),
(3, 'sdfsdfsdfsf', 6, 'sdfsdfsdfsdfdfsdfsd', 'sdfsdfsdf', '7', 0, '2016-02-16 12:48:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `journal_id` (`journal_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `mailbox`
--
ALTER TABLE `mailbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mood`
--
ALTER TABLE `mood`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_id` (`activity_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tempuser`
--
ALTER TABLE `tempuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `mailbox`
--
ALTER TABLE `mailbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mood`
--
ALTER TABLE `mood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=966;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=741;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tempuser`
--
ALTER TABLE `tempuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `activity_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`journal_id`) REFERENCES `journal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `journal`
--
ALTER TABLE `journal`
  ADD CONSTRAINT `journal_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mood`
--
ALTER TABLE `mood`
  ADD CONSTRAINT `mood_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
