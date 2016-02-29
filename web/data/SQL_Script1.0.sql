-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2016 at 07:53 AM
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
  `date` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `user_id`, `title`, `description`, `date`, `created_at`) VALUES
(1, 4, 'Reteee', 'asdfa sfasfasdsdasdasd', '2016-02-11 11:32:21', '0000-00-00 00:00:00'),
(2, 7, 'asdasdas', 'asdasdasdas', '2016-02-05 00:00:00', '2016-02-18 11:19:40'),
(3, 7, 'asdasdasd', 'asdasdasdasd', '2016-02-18 00:00:00', '2016-02-18 11:19:48'),
(4, 7, 'asdasdas', 'sdfdfsd sdf sdfsdfsd', '2016-02-05 00:00:00', '2016-02-18 11:21:06'),
(5, 7, 'sdfsdfs dfsdf', 'sdf sdfsdfsdf', '2016-02-12 00:00:00', '2016-02-18 11:21:16'),
(6, 7, 'asd asdas', 'dasdasdasdasd', '2016-02-12 00:00:00', '2016-02-18 11:21:45'),
(7, 7, 'asdasd asdasd', 'as dasdasdasd', '2016-02-05 00:00:00', '2016-02-18 11:21:53'),
(8, 7, 'sdfdgfsdfsdf', 'sdfsdfsdf', '2016-02-18 00:00:00', '2016-02-18 11:23:11'),
(9, 7, 'dfsdfsdf', 'sdfsdfsdf', '2016-02-18 00:00:00', '2016-02-18 11:26:21'),
(10, 7, 'sdgfsdf sDfsd', 'f sdf sdfsdfsd', '2016-02-12 00:00:00', '2016-02-18 11:28:08'),
(11, 7, 'dfgsdf gsdfg', 'sfgsfgsfgsfgs', '2016-02-18 00:00:00', '2016-02-18 11:43:09'),
(12, 7, 'Travel To South Africa', 'Blah Blah Blah', '2016-02-18 00:00:00', '2016-02-18 12:07:05'),
(14, 7, 'Aliya Safari', 'Drag Racing', '2016-02-18 00:00:00', '2016-02-18 12:15:13'),
(15, 7, 'sdfsdf', 'sdfsdfsdf', '2016-02-18 00:00:00', '2016-02-18 12:24:41'),
(16, 7, 'Galle', 'asfs dfhsdfh', '2016-02-18 00:00:00', '2016-02-18 12:25:00'),
(17, 7, 'sdfsdfs dfsdf', 'jgkugkyguoglohi oihlogh', '2016-02-04 00:00:00', '2016-02-18 12:37:17'),
(18, 7, 'cbvxbxcv', 'xcvxcvxcvxcv', '2016-02-19 00:00:00', '2016-02-19 03:37:56'),
(19, 7, 'sdfsdfs dfsdf', 'e5yrtyert', '2016-02-23 00:00:00', '2016-02-23 08:51:13'),
(20, 7, 'Sigiriya Sri Lanka', 'Our trip to sigiriya was a fantastic one and I hope all of my lovely ones rate this trip better. As the father of our family I assume that you are very interested in tropical countries to travel. What about this. Did you like this!', '2016-02-23 00:00:00', '2016-02-23 11:19:36');

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
(202, 62, 9, 'xbgxbgdfh dfhdfh ', '2016-02-16 10:18:53'),
(203, 61, 7, 'dth fgsgdgfsg', '2016-02-17 03:33:01'),
(204, 16, 6, 'dhfghdfghdfgdfgdfg', '2016-02-17 03:33:50'),
(205, 16, 7, 'dghdfgdfgdfgfg', '2016-02-17 03:34:02'),
(206, 63, 7, 'wegt sfgsdfgsdf gsdfg', '2016-02-17 03:34:32'),
(207, 63, 6, 'dthu dhdfghdgh', '2016-02-17 03:34:41'),
(208, 63, 7, 'ehy dhdhd fh', '2016-02-17 03:35:15'),
(209, 14, 6, 'ghfghgfhfgh', '2016-02-18 08:28:53'),
(210, 14, 7, 'ghdhdhdh', '2016-02-18 08:29:02'),
(211, 65, 7, 'sfgsdg sdfgsdgsd', '2016-02-18 08:36:55'),
(212, 8, 9, 'dthdghdfgfg', '2016-02-23 08:57:35'),
(213, 8, 7, 'ggsdgfsdfsdf', '2016-02-23 10:46:48'),
(214, 65, 9, 'sdgfsdfsdfsdfsdfsdf', '2016-02-23 10:47:46');

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
(61, 6, 'dghdfghdf', 'gdfgdfgdfg', 'dfgdfgdfg', '2016-02-05 00:00:00', '7'),
(62, 6, 'w5 hdethjuefdhdf', 'h dfh dfh dfhdfh', 'dfhdfhdfhdfhdfh', '2016-02-11 00:00:00', '7,9,10'),
(63, 7, 'jygiyg', 'kugifdjkty', 'jttuftukfut', '2016-02-14 00:00:00', '6');

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
(62, 9, 'sdfg sdfgsdgsdg sdg sdg sdgsdgsdfg sdg sdgsdgsd d sdg sdgsdgsd sdg dg sdg', '2016-02-16 00:00:00', '7'),
(63, 6, 'sdfgh sdg sdgdfgsdf gsfdg', '2016-02-17 00:00:00', '4,6,7,9,10'),
(64, 6, 'sdgf sdgsdgsdgsd', '2016-02-17 00:00:00', '4,6,7'),
(65, 6, 'wetfsdfsdfasdfasdfasdf', '2016-02-18 00:00:00', '6,7,10');

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
(965, 6, 'excited', '2016-02-16', '10:21:53'),
(966, 6, 'excited', '2016-02-17', '08:08:34'),
(967, 6, 'angry', '2016-02-18', '08:33:11'),
(968, 6, 'sad', '2016-02-18', '08:36:10');

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
(681, 9, 4, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:05'),
(682, 9, 6, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:05'),
(683, 9, 7, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:05'),
(684, 9, 8, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 0, '2016-02-16 07:13:05'),
(685, 9, 9, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:05'),
(686, 7, 4, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:30'),
(687, 7, 6, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:30'),
(688, 7, 7, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:30'),
(689, 7, 8, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 0, '2016-02-16 07:13:30'),
(690, 7, 9, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:30'),
(691, 9, 4, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:45'),
(692, 9, 6, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:45'),
(693, 9, 7, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:45'),
(694, 9, 8, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 0, '2016-02-16 07:13:45'),
(695, 9, 9, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:45'),
(696, 7, 4, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:57'),
(697, 7, 6, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:57'),
(698, 7, 7, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:57'),
(699, 7, 8, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 0, '2016-02-16 07:13:57'),
(700, 7, 9, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:13:57'),
(701, 7, 4, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-16 07:14:01'),
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
(730, 9, 7, 'sdfsdf', 'wishlist', 3, 1, '2016-02-16 10:46:26'),
(731, 9, 9, 'sdfsdf', 'wishlist', 3, 0, '2016-02-16 10:46:27'),
(732, 6, 7, 'dfgdfgdfg', 'wishlist', 4, 1, '2016-02-16 12:16:26'),
(733, 6, 6, 'dfgdfgdfg', 'wishlist', 4, 0, '2016-02-16 12:16:26'),
(734, 7, 7, 'sdfsdf', 'wishlist', 5, 0, '2016-02-16 12:28:26'),
(735, 6, 7, 'sdfsdfsdfsdfsdf', 'wishlist', 1, 1, '2016-02-16 12:47:45'),
(736, 6, 6, 'sdfsdfsdfsdfsdf', 'wishlist', 1, 0, '2016-02-16 12:47:45'),
(737, 6, 7, 'fgdfgdfgd', 'wishlist', 2, 1, '2016-02-16 12:48:01'),
(738, 6, 6, 'fgdfgdfgd', 'wishlist', 2, 0, '2016-02-16 12:48:01'),
(739, 6, 7, 'sdfsdfsdfsf', 'wishlist', 3, 1, '2016-02-16 12:48:15'),
(740, 6, 6, 'sdfsdfsdfsf', 'wishlist', 3, 0, '2016-02-16 12:48:15'),
(741, 7, 7, 'gdfgdfgdf', 'wishlist', 4, 1, '2016-02-16 01:01:24'),
(742, 7, 7, 'dfgdfgdfgdfg', 'wishlist', 5, 0, '2016-02-16 01:27:46'),
(743, 7, 7, 'sdfsdfsdf', 'wishlist', 6, 1, '2016-02-16 01:27:56'),
(744, 7, 7, 'sdfsdfsdf', 'wishlist', 7, 0, '2016-02-16 01:28:36'),
(745, 7, 7, 'ssdfsdfsd', 'wishlist', 8, 0, '2016-02-16 01:28:45'),
(746, 7, 7, 'sdfsdfsdfsdfsd', 'wishlist', 9, 0, '2016-02-16 01:28:53'),
(747, 7, 7, 'sdfsdfsdfsdfsdsdf', 'wishlist', 10, 0, '2016-02-16 01:29:04'),
(748, 7, 7, 'sdfsdfsdfsdfsdf', 'wishlist', 11, 0, '2016-02-16 01:29:14'),
(749, 7, 7, 'sdfsdfsdfsdfsdf', 'wishlist', 12, 0, '2016-02-16 01:31:42'),
(750, 7, 4, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-17 03:33:01'),
(751, 7, 6, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-17 03:33:01'),
(752, 7, 7, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 0, '2016-02-17 03:33:01'),
(753, 7, 8, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 0, '2016-02-17 03:33:01'),
(754, 7, 9, 'sdf gfsdf sdfsdsdfsdfgjkyukrthjeshsetherh erah aerh etjusryjkatrjtr', 'comment', 61, 1, '2016-02-17 03:33:02'),
(755, 6, 7, 'sdf sdfsdf sdf sdf', 'comment', 16, 1, '2016-02-17 03:33:50'),
(756, 6, 6, 'sdf sdfsdf sdf sdf', 'comment', 16, 1, '2016-02-17 03:33:50'),
(757, 7, 7, 'sdf sdfsdf sdf sdf', 'comment', 16, 0, '2016-02-17 03:34:02'),
(758, 7, 6, 'sdf sdfsdf sdf sdf', 'comment', 16, 1, '2016-02-17 03:34:02'),
(759, 6, 4, 'sdfgh sdg sdgdfgsdf gsfdg', 'journal', 63, 1, '2016-02-17 03:34:22'),
(760, 6, 6, 'sdfgh sdg sdgdfgsdf gsfdg', 'journal', 63, 0, '2016-02-17 03:34:22'),
(761, 6, 7, 'sdfgh sdg sdgdfgsdf gsfdg', 'journal', 63, 1, '2016-02-17 03:34:22'),
(762, 6, 9, 'sdfgh sdg sdgdfgsdf gsfdg', 'journal', 63, 1, '2016-02-17 03:34:22'),
(763, 6, 10, 'sdfgh sdg sdgdfgsdf gsfdg', 'journal', 63, 1, '2016-02-17 03:34:22'),
(764, 7, 4, 'sdfgh sdg sdgdfgsdf gsfdg', 'comment', 63, 1, '2016-02-17 03:34:32'),
(765, 7, 6, 'sdfgh sdg sdgdfgsdf gsfdg', 'comment', 63, 1, '2016-02-17 03:34:32'),
(766, 7, 7, 'sdfgh sdg sdgdfgsdf gsfdg', 'comment', 63, 1, '2016-02-17 03:34:32'),
(767, 7, 9, 'sdfgh sdg sdgdfgsdf gsfdg', 'comment', 63, 1, '2016-02-17 03:34:32'),
(768, 7, 10, 'sdfgh sdg sdgdfgsdf gsfdg', 'comment', 63, 1, '2016-02-17 03:34:32'),
(769, 6, 4, 'sdfgh sdg sdgdfgsdf gsfdg', 'comment', 63, 1, '2016-02-17 03:34:41'),
(770, 6, 6, 'sdfgh sdg sdgdfgsdf gsfdg', 'comment', 63, 1, '2016-02-17 03:34:41'),
(771, 6, 7, 'sdfgh sdg sdgdfgsdf gsfdg', 'comment', 63, 1, '2016-02-17 03:34:41'),
(772, 6, 9, 'sdfgh sdg sdgdfgsdf gsfdg', 'comment', 63, 1, '2016-02-17 03:34:41'),
(773, 6, 10, 'sdfgh sdg sdgdfgsdf gsfdg', 'comment', 63, 1, '2016-02-17 03:34:41'),
(774, 6, 7, 'w5 hdethjuefdhdf', 'event', 62, 1, '2016-02-17 03:34:56'),
(775, 6, 9, 'w5 hdethjuefdhdf', 'event', 62, 1, '2016-02-17 03:34:56'),
(776, 6, 10, 'w5 hdethjuefdhdf', 'event', 62, 1, '2016-02-17 03:34:56'),
(777, 6, 6, 'w5 hdethjuefdhdf', 'event', 62, 0, '2016-02-17 03:34:57'),
(778, 7, 4, 'sdfgh sdg sdgdfgsdf gsfdg', 'comment', 63, 1, '2016-02-17 03:35:15'),
(779, 7, 6, 'sdfgh sdg sdgdfgsdf gsfdg', 'comment', 63, 1, '2016-02-17 03:35:15'),
(780, 7, 7, 'sdfgh sdg sdgdfgsdf gsfdg', 'comment', 63, 0, '2016-02-17 03:35:15'),
(781, 7, 9, 'sdfgh sdg sdgdfgsdf gsfdg', 'comment', 63, 1, '2016-02-17 03:35:15'),
(782, 7, 10, 'sdfgh sdg sdgdfgsdf gsfdg', 'comment', 63, 1, '2016-02-17 03:35:15'),
(783, 6, 7, 'wdgfsdgfsd', 'wishlist', 13, 1, '2016-02-17 03:40:44'),
(784, 6, 6, 'wdgfsdgfsd', 'wishlist', 13, 0, '2016-02-17 03:40:44'),
(785, 6, 7, 'zdfgzdfg zsdfgzdf', 'wishlist', 14, 1, '2016-02-17 03:48:28'),
(786, 6, 6, 'zdfgzdfg zsdfgzdf', 'wishlist', 14, 0, '2016-02-17 03:48:28'),
(787, 6, 4, 'sdgf sdgsdgsdgsd', 'journal', 64, 1, '2016-02-17 03:49:27'),
(788, 6, 6, 'sdgf sdgsdgsdgsd', 'journal', 64, 0, '2016-02-17 03:49:27'),
(789, 6, 7, 'sdgf sdgsdgsdgsd', 'journal', 64, 1, '2016-02-17 03:49:27'),
(790, 6, 7, 'sdfsdf sdfsdf', 'wishlist', 15, 1, '2016-02-17 04:00:44'),
(791, 6, 6, 'sdfsdf sdfsdf', 'wishlist', 15, 0, '2016-02-17 04:00:44'),
(792, 6, 7, 'dhdfh dfhdfhdfhdfh', 'wishlist', 16, 1, '2016-02-17 04:17:25'),
(793, 6, 6, 'dhdfh dfhdfhdfhdfh', 'wishlist', 16, 0, '2016-02-17 04:17:25'),
(794, 6, 7, 'dhdhdhdh', 'wishlist', 17, 1, '2016-02-17 04:18:32'),
(795, 6, 6, 'dhdhdhdh', 'wishlist', 17, 0, '2016-02-17 04:18:32'),
(796, 6, 7, 'dfhdfhdfh', 'wishlist', 18, 1, '2016-02-17 04:19:08'),
(797, 6, 6, 'dfhdfhdfh', 'wishlist', 18, 0, '2016-02-17 04:19:08'),
(798, 6, 7, 'sdgsdgsdg', 'wishlist', 19, 1, '2016-02-17 04:19:47'),
(799, 6, 6, 'sdgsdgsdg', 'wishlist', 19, 0, '2016-02-17 04:19:47'),
(800, 6, 7, 'dfgdxfgf', 'wishlist', 20, 1, '2016-02-17 04:21:14'),
(801, 6, 6, 'dfgdxfgf', 'wishlist', 20, 0, '2016-02-17 04:21:14'),
(802, 6, 7, 'gdfgdfg', 'wishlist', 21, 1, '2016-02-17 04:22:33'),
(803, 6, 6, 'gdfgdfg', 'wishlist', 21, 0, '2016-02-17 04:22:33'),
(804, 6, 7, 'gsdfgdfg', 'wishlist', 22, 1, '2016-02-17 04:45:24'),
(805, 6, 6, 'gsdfgdfg', 'wishlist', 22, 0, '2016-02-17 04:45:25'),
(806, 9, 7, 'sdfg sdgsdg ', 'wishlist', 23, 1, '2016-02-17 06:29:52'),
(807, 9, 9, 'sdfg sdgsdg ', 'wishlist', 23, 0, '2016-02-17 06:29:52'),
(808, 9, 7, 'dfhdhdfh', 'wishlist', 24, 1, '2016-02-17 06:30:00'),
(809, 9, 9, 'dfhdhdfh', 'wishlist', 24, 0, '2016-02-17 06:30:00'),
(810, 9, 7, 'h dfhdfh df', 'wishlist', 25, 1, '2016-02-17 06:30:08'),
(811, 9, 9, 'h dfhdfh df', 'wishlist', 25, 0, '2016-02-17 06:30:08'),
(812, 9, 7, 'dfh dfhd', 'wishlist', 26, 1, '2016-02-17 06:30:14'),
(813, 9, 9, 'dfh dfhd', 'wishlist', 26, 0, '2016-02-17 06:30:14'),
(814, 9, 7, 'fh dfh dfhdfh', 'wishlist', 27, 1, '2016-02-17 06:30:22'),
(815, 9, 9, 'fh dfh dfhdfh', 'wishlist', 27, 0, '2016-02-17 06:30:22'),
(816, 4, 7, 'jfgjfgjgf', 'wishlist', 28, 1, '2016-02-17 06:32:32'),
(817, 4, 4, 'jfgjfgjgf', 'wishlist', 28, 0, '2016-02-17 06:32:32'),
(818, 4, 7, 'hdhdghdgh', 'wishlist', 29, 1, '2016-02-17 06:32:38'),
(819, 4, 4, 'hdhdghdgh', 'wishlist', 29, 0, '2016-02-17 06:32:38'),
(820, 4, 7, 'dfhdfhdfhd', 'wishlist', 30, 1, '2016-02-17 06:32:45'),
(821, 4, 4, 'dfhdfhdfhd', 'wishlist', 30, 0, '2016-02-17 06:32:45'),
(822, 4, 7, 'fhsfhsfhsfh', 'wishlist', 31, 1, '2016-02-17 06:32:51'),
(823, 4, 4, 'fhsfhsfhsfh', 'wishlist', 31, 0, '2016-02-17 06:32:51'),
(824, 4, 7, 'sfgsfgsfg', 'wishlist', 32, 1, '2016-02-17 06:32:58'),
(825, 4, 4, 'sfgsfgsfg', 'wishlist', 32, 0, '2016-02-17 06:32:58'),
(826, 9, 7, '2222222222222', 'wishlist', 33, 1, '2016-02-17 06:41:10'),
(827, 9, 9, '2222222222222', 'wishlist', 33, 0, '2016-02-17 06:41:10'),
(828, 6, 7, 'sdfsdfsdfsdfsdfsdf', 'wishlist', 34, 1, '2016-02-17 09:47:11'),
(829, 6, 6, 'sdfsdfsdfsdfsdfsdf', 'wishlist', 34, 0, '2016-02-17 09:47:11'),
(830, 4, 7, 's fhsfhsfhsfh', 'wishlist', 35, 1, '2016-02-17 11:25:29'),
(831, 4, 4, 's fhsfhsfhsfh', 'wishlist', 35, 0, '2016-02-17 11:25:29'),
(832, 4, 7, 'dfhdfhdfh', 'wishlist', 36, 1, '2016-02-17 11:25:39'),
(833, 4, 4, 'dfhdfhdfh', 'wishlist', 36, 0, '2016-02-17 11:25:39'),
(834, 9, 7, 'sdfsdfsdfsdfsdf', 'wishlist', 37, 1, '2016-02-17 11:28:53'),
(835, 9, 9, 'sdfsdfsdfsdfsdf', 'wishlist', 37, 0, '2016-02-17 11:28:53'),
(836, 9, 7, 'sfgsdgsdg', 'wishlist', 38, 1, '2016-02-17 11:30:52'),
(837, 9, 9, 'sfgsdgsdg', 'wishlist', 38, 0, '2016-02-17 11:30:52'),
(838, 9, 7, 'zdfgzfdgdfgzdfg', 'wishlist', 39, 1, '2016-02-17 11:41:36'),
(839, 9, 9, 'zdfgzfdgdfgzdfg', 'wishlist', 39, 0, '2016-02-17 11:41:36'),
(840, 9, 7, 'gzdfgzdfg', 'wishlist', 40, 1, '2016-02-17 11:41:59'),
(841, 9, 9, 'gzdfgzdfg', 'wishlist', 40, 0, '2016-02-17 11:41:59'),
(842, 9, 7, 'zdfgzdfgzdf', 'wishlist', 41, 1, '2016-02-17 11:42:32'),
(843, 9, 9, 'zdfgzdfgzdf', 'wishlist', 41, 0, '2016-02-17 11:42:32'),
(844, 9, 7, 'ghdfgdf', 'wishlist', 42, 1, '2016-02-17 11:43:38'),
(845, 9, 9, 'ghdfgdf', 'wishlist', 42, 0, '2016-02-17 11:43:39'),
(846, 9, 7, 'fsdfsdfsdf', 'wishlist', 43, 1, '2016-02-17 11:47:56'),
(847, 9, 9, 'fsdfsdfsdf', 'wishlist', 43, 0, '2016-02-17 11:47:56'),
(848, 4, 7, 'sdgfsdfsd', 'wishlist', 44, 1, '2016-02-17 11:56:10'),
(849, 4, 4, 'sdgfsdfsd', 'wishlist', 44, 0, '2016-02-17 11:56:10'),
(850, 4, 7, 'sdfsdfsdfsdfsdfsdf', 'wishlist', 45, 1, '2016-02-17 11:56:20'),
(851, 4, 4, 'sdfsdfsdfsdfsdfsdf', 'wishlist', 45, 0, '2016-02-17 11:56:20'),
(852, 4, 7, 'sdfsdfsdfsdfsdfsdf', 'wishlist', 46, 1, '2016-02-17 11:56:30'),
(853, 4, 4, 'sdfsdfsdfsdfsdfsdf', 'wishlist', 46, 0, '2016-02-17 11:56:30'),
(854, 4, 7, 'sdfsdfsdfs', 'wishlist', 47, 1, '2016-02-17 12:01:36'),
(855, 4, 4, 'sdfsdfsdfs', 'wishlist', 47, 0, '2016-02-17 12:01:37'),
(856, 4, 7, 'gsdfgsfgs', 'wishlist', 48, 1, '2016-02-17 12:04:33'),
(857, 4, 4, 'gsdfgsfgs', 'wishlist', 48, 0, '2016-02-17 12:04:33'),
(858, 4, 7, 'fadfadfadfad', 'wishlist', 49, 1, '2016-02-17 12:04:41'),
(859, 4, 4, 'fadfadfadfad', 'wishlist', 49, 0, '2016-02-17 12:04:41'),
(860, 4, 7, 'gdghsedhfzgb', 'wishlist', 50, 1, '2016-02-17 12:04:48'),
(861, 4, 4, 'gdghsedhfzgb', 'wishlist', 50, 0, '2016-02-17 12:04:48'),
(862, 4, 7, 'sdfsdfsdfsdfsdfsdf', 'wishlist', 51, 1, '2016-02-17 12:13:42'),
(863, 4, 4, 'sdfsdfsdfsdfsdfsdf', 'wishlist', 51, 0, '2016-02-17 12:13:42'),
(864, 4, 7, 'sfgsfgsfgsfg', 'wishlist', 52, 1, '2016-02-17 12:13:50'),
(865, 4, 4, 'sfgsfgsfgsfg', 'wishlist', 52, 0, '2016-02-17 12:13:50'),
(866, 4, 7, 'fgsfgsfgsfg', 'wishlist', 53, 1, '2016-02-17 12:13:59'),
(867, 4, 4, 'fgsfgsfgsfg', 'wishlist', 53, 0, '2016-02-17 12:13:59'),
(868, 4, 7, 'sdgsdgsdgsdgsdgsdg', 'wishlist', 54, 1, '2016-02-17 12:16:18'),
(869, 4, 4, 'sdgsdgsdgsdgsdgsdg', 'wishlist', 54, 0, '2016-02-17 12:16:18'),
(870, 4, 7, 'gsdgsdgsdg', 'wishlist', 55, 1, '2016-02-17 12:16:25'),
(871, 4, 4, 'gsdgsdgsdg', 'wishlist', 55, 0, '2016-02-17 12:16:25'),
(872, 4, 7, 'sdgsdgsdgs', 'wishlist', 56, 1, '2016-02-17 12:16:31'),
(873, 4, 4, 'sdgsdgsdgs', 'wishlist', 56, 0, '2016-02-17 12:16:31'),
(874, 4, 7, 'gsdgsdgsdg', 'wishlist', 57, 1, '2016-02-17 12:16:38'),
(875, 4, 4, 'gsdgsdgsdg', 'wishlist', 57, 0, '2016-02-17 12:16:38'),
(876, 4, 7, 'sdfgsdgfsdg', 'wishlist', 58, 1, '2016-02-17 12:19:31'),
(877, 4, 4, 'sdfgsdgfsdg', 'wishlist', 58, 0, '2016-02-17 12:19:31'),
(878, 4, 7, 'gsdgsdgsdgs', 'wishlist', 59, 1, '2016-02-17 12:19:38'),
(879, 4, 4, 'gsdgsdgsdgs', 'wishlist', 59, 0, '2016-02-17 12:19:38'),
(880, 4, 7, 'sgfgsdg', 'wishlist', 60, 1, '2016-02-17 12:51:53'),
(881, 4, 4, 'sgfgsdg', 'wishlist', 60, 0, '2016-02-17 12:51:53'),
(882, 9, 7, 'gdfgdfg', 'wishlist', 61, 1, '2016-02-18 03:57:25'),
(883, 9, 9, 'gdfgdfg', 'wishlist', 61, 0, '2016-02-18 03:57:25'),
(884, 9, 7, 'fgdfgdfg', 'wishlist', 62, 1, '2016-02-18 04:24:56'),
(885, 9, 9, 'fgdfgdfg', 'wishlist', 62, 0, '2016-02-18 04:24:56'),
(886, 9, 7, 'ghsdfgdfg', 'wishlist', 63, 1, '2016-02-18 04:42:59'),
(887, 9, 9, 'ghsdfgdfg', 'wishlist', 63, 0, '2016-02-18 04:42:59'),
(888, 9, 7, 'gdfgdfgdf', 'wishlist', 64, 1, '2016-02-18 04:43:05'),
(889, 9, 9, 'gdfgdfgdf', 'wishlist', 64, 0, '2016-02-18 04:43:05'),
(890, 9, 7, 'dfgsdfgdfgzdf', 'wishlist', 65, 1, '2016-02-18 04:43:12'),
(891, 9, 9, 'dfgsdfgdfgzdf', 'wishlist', 65, 0, '2016-02-18 04:43:12'),
(892, 9, 7, 'sdfsdfsdfsdfsdf', 'wishlist', 66, 1, '2016-02-18 05:12:05'),
(893, 9, 9, 'sdfsdfsdfsdfsdf', 'wishlist', 66, 0, '2016-02-18 05:12:05'),
(894, 9, 7, 'sdfsdfsdfsdfsdf', 'wishlist', 67, 1, '2016-02-18 05:43:31'),
(895, 9, 9, 'sdfsdfsdfsdfsdf', 'wishlist', 67, 0, '2016-02-18 05:43:31'),
(896, 9, 7, 'dfgdfgdfg', 'wishlist', 68, 1, '2016-02-18 05:47:05'),
(897, 9, 9, 'dfgdfgdfg', 'wishlist', 68, 0, '2016-02-18 05:47:05'),
(898, 9, 7, 'fxbzxcvz', 'wishlist', 69, 1, '2016-02-18 06:31:59'),
(899, 9, 9, 'fxbzxcvz', 'wishlist', 69, 0, '2016-02-18 06:31:59'),
(900, 9, 7, 'sdfdf', 'wishlist', 70, 1, '2016-02-18 06:33:57'),
(901, 9, 9, 'sdfdf', 'wishlist', 70, 0, '2016-02-18 06:33:57'),
(902, 9, 7, 'sdfsdfsdf', 'wishlist', 71, 1, '2016-02-18 07:12:03'),
(903, 9, 9, 'sdfsdfsdf', 'wishlist', 71, 0, '2016-02-18 07:12:03'),
(904, 9, 7, 'sdfsdfsdf', 'wishlist', 72, 1, '2016-02-18 07:12:17'),
(905, 9, 9, 'sdfsdfsdf', 'wishlist', 72, 0, '2016-02-18 07:12:17'),
(906, 9, 7, 'dfgdfgdfg', 'wishlist', 73, 1, '2016-02-18 07:12:34'),
(907, 9, 9, 'dfgdfgdfg', 'wishlist', 73, 0, '2016-02-18 07:12:34'),
(908, 9, 7, 'sdfsdfsdfsdfsdf', 'wishlist', 74, 1, '2016-02-18 07:12:51'),
(909, 9, 9, 'sdfsdfsdfsdfsdf', 'wishlist', 74, 0, '2016-02-18 07:12:51'),
(910, 9, 7, 'sdfsdf', 'wishlist', 75, 1, '2016-02-18 07:13:03'),
(911, 9, 9, 'sdfsdf', 'wishlist', 75, 0, '2016-02-18 07:13:03'),
(912, 9, 7, 'sdfsdf', 'wishlist', 76, 1, '2016-02-18 07:13:18'),
(913, 9, 9, 'sdfsdf', 'wishlist', 76, 0, '2016-02-18 07:13:18'),
(914, 9, 7, 'dfgdfgdfg', 'wishlist', 77, 1, '2016-02-18 07:13:28'),
(915, 9, 9, 'dfgdfgdfg', 'wishlist', 77, 0, '2016-02-18 07:13:28'),
(916, 9, 7, 'sdfsdfsdf', 'wishlist', 78, 1, '2016-02-18 07:13:39'),
(917, 9, 9, 'sdfsdfsdf', 'wishlist', 78, 0, '2016-02-18 07:13:39'),
(918, 9, 7, 'sdfsdf', 'wishlist', 79, 1, '2016-02-18 07:14:47'),
(919, 9, 9, 'sdfsdf', 'wishlist', 79, 0, '2016-02-18 07:14:48'),
(920, 9, 7, 'sdfsdfsdf', 'wishlist', 80, 1, '2016-02-18 07:15:20'),
(921, 9, 9, 'sdfsdfsdf', 'wishlist', 80, 0, '2016-02-18 07:15:20'),
(922, 9, 7, 'dfgdfgdfg', 'wishlist', 81, 1, '2016-02-18 07:20:57'),
(923, 9, 9, 'dfgdfgdfg', 'wishlist', 81, 0, '2016-02-18 07:20:57'),
(924, 9, 7, 'sdfsdfsdfsdfsd', 'wishlist', 82, 1, '2016-02-18 07:21:56'),
(925, 9, 9, 'sdfsdfsdfsdfsd', 'wishlist', 82, 0, '2016-02-18 07:21:56'),
(926, 9, 7, 'sdfsdfsdf', 'wishlist', 83, 1, '2016-02-18 07:22:52'),
(927, 9, 9, 'sdfsdfsdf', 'wishlist', 83, 0, '2016-02-18 07:22:52'),
(928, 9, 7, 'dtghsdfgs', 'wishlist', 84, 1, '2016-02-18 08:14:48'),
(929, 9, 9, 'dtghsdfgs', 'wishlist', 84, 0, '2016-02-18 08:14:48'),
(930, 6, 7, 'sdggsdg', 'wishlist', 85, 1, '2016-02-18 08:15:21'),
(931, 6, 6, 'sdggsdg', 'wishlist', 85, 0, '2016-02-18 08:15:21'),
(932, 6, 7, 'sdgsdgsdg', 'wishlist', 86, 1, '2016-02-18 08:15:29'),
(933, 6, 6, 'sdgsdgsdg', 'wishlist', 86, 0, '2016-02-18 08:15:30'),
(934, 6, 7, 'sdgsdgsdg', 'wishlist', 87, 1, '2016-02-18 08:15:38'),
(935, 6, 6, 'sdgsdgsdg', 'wishlist', 87, 0, '2016-02-18 08:15:38'),
(936, 6, 4, 'sdfsddsfsdf sdf sdf sdfsdf sdf', 'comment', 14, 0, '2016-02-18 08:28:53'),
(937, 6, 6, 'sdfsddsfsdf sdf sdf sdfsdf sdf', 'comment', 14, 1, '2016-02-18 08:28:53'),
(938, 6, 7, 'sdfsddsfsdf sdf sdf sdfsdf sdf', 'comment', 14, 1, '2016-02-18 08:28:53'),
(939, 7, 4, 'sdfsddsfsdf sdf sdf sdfsdf sdf', 'comment', 14, 0, '2016-02-18 08:29:02'),
(940, 7, 6, 'sdfsddsfsdf sdf sdf sdfsdf sdf', 'comment', 14, 1, '2016-02-18 08:29:02'),
(941, 7, 7, 'sdfsddsfsdf sdf sdf sdfsdf sdf', 'comment', 14, 0, '2016-02-18 08:29:02'),
(942, 6, 7, 'sdfsdf', 'wishlist', 88, 1, '2016-02-18 08:29:27'),
(943, 6, 6, 'sdfsdf', 'wishlist', 88, 0, '2016-02-18 08:29:27'),
(944, 6, 6, 'wetfsdfsdfasdfasdfasdf', 'journal', 65, 0, '2016-02-18 08:36:34'),
(945, 6, 7, 'wetfsdfsdfasdfasdfasdf', 'journal', 65, 1, '2016-02-18 08:36:34'),
(946, 6, 10, 'wetfsdfsdfasdfasdfasdf', 'journal', 65, 1, '2016-02-18 08:36:34'),
(947, 7, 6, 'wetfsdfsdfasdfasdfasdf', 'comment', 65, 1, '2016-02-18 08:36:55'),
(948, 7, 7, 'wetfsdfsdfasdfasdfasdf', 'comment', 65, 1, '2016-02-18 08:36:55'),
(949, 7, 10, 'wetfsdfsdfasdfasdfasdf', 'comment', 65, 1, '2016-02-18 08:36:55'),
(950, 6, 7, 'wsefsdf', 'wishlist', 89, 1, '2016-02-18 08:37:19'),
(951, 6, 6, 'wsefsdf', 'wishlist', 89, 0, '2016-02-18 08:37:19'),
(952, 6, 7, 'sfgfg', 'wishlist', 90, 1, '2016-02-18 09:06:12'),
(953, 6, 6, 'sfgfg', 'wishlist', 90, 0, '2016-02-18 09:06:12'),
(954, 6, 7, 'sdfsdfsdfsdfsdf', 'wishlist', 91, 1, '2016-02-18 09:06:55'),
(955, 6, 6, 'sdfsdfsdfsdfsdf', 'wishlist', 91, 0, '2016-02-18 09:06:55'),
(956, 6, 7, 'sfdsdfsdf', 'wishlist', 92, 1, '2016-02-18 09:07:38'),
(957, 6, 6, 'sfdsdfsdf', 'wishlist', 92, 0, '2016-02-18 09:07:38'),
(958, 6, 7, 'sdfsdfsdfsdfsdf', 'wishlist', 93, 1, '2016-02-18 09:08:45'),
(959, 6, 6, 'sdfsdfsdfsdfsdf', 'wishlist', 93, 0, '2016-02-18 09:08:45'),
(960, 6, 7, 'zxcfzxcf', 'wishlist', 94, 1, '2016-02-18 09:08:59'),
(961, 6, 6, 'zxcfzxcf', 'wishlist', 94, 0, '2016-02-18 09:08:59'),
(962, 6, 7, 'sgsfgsdfg', 'wishlist', 95, 1, '2016-02-18 09:10:33'),
(963, 6, 6, 'sgsfgsdfg', 'wishlist', 95, 0, '2016-02-18 09:10:33'),
(964, 6, 7, 'sdfsdfsdf', 'wishlist', 96, 1, '2016-02-18 09:32:42'),
(965, 6, 6, 'sdfsdfsdf', 'wishlist', 96, 0, '2016-02-18 09:32:42'),
(966, 7, 3, 'sdfdgfsdfsdf', 'comment', 8, 0, '2016-02-18 11:23:11'),
(967, 7, 4, 'sdfdgfsdfsdf', 'comment', 8, 0, '2016-02-18 11:23:11'),
(968, 7, 6, 'sdfdgfsdfsdf', 'comment', 8, 1, '2016-02-18 11:23:12'),
(969, 7, 7, 'sdfdgfsdfsdf', 'comment', 8, 1, '2016-02-18 11:23:12'),
(970, 7, 8, 'sdfdgfsdfsdf', 'comment', 8, 0, '2016-02-18 11:23:12'),
(971, 7, 9, 'sdfdgfsdfsdf', 'comment', 8, 1, '2016-02-18 11:23:12'),
(972, 7, 10, 'sdfdgfsdfsdf', 'comment', 8, 1, '2016-02-18 11:23:12'),
(973, 7, 3, 'dfsdfsdf', 'activity', 9, 0, '2016-02-18 11:26:21'),
(974, 7, 4, 'dfsdfsdf', 'activity', 9, 0, '2016-02-18 11:26:21'),
(975, 7, 6, 'dfsdfsdf', 'activity', 9, 1, '2016-02-18 11:26:21'),
(976, 7, 7, 'dfsdfsdf', 'activity', 9, 0, '2016-02-18 11:26:21'),
(977, 7, 8, 'dfsdfsdf', 'activity', 9, 0, '2016-02-18 11:26:21'),
(978, 7, 9, 'dfsdfsdf', 'activity', 9, 1, '2016-02-18 11:26:21'),
(979, 7, 10, 'dfsdfsdf', 'activity', 9, 1, '2016-02-18 11:26:21'),
(980, 7, 3, 'sdgfsdf sDfsd', 'activity', 10, 0, '2016-02-18 11:28:08'),
(981, 7, 4, 'sdgfsdf sDfsd', 'activity', 10, 0, '2016-02-18 11:28:08'),
(982, 7, 6, 'sdgfsdf sDfsd', 'activity', 10, 1, '2016-02-18 11:28:08'),
(983, 7, 7, 'sdgfsdf sDfsd', 'activity', 10, 0, '2016-02-18 11:28:08'),
(984, 7, 8, 'sdgfsdf sDfsd', 'activity', 10, 0, '2016-02-18 11:28:08'),
(985, 7, 9, 'sdgfsdf sDfsd', 'activity', 10, 1, '2016-02-18 11:28:08'),
(986, 7, 10, 'sdgfsdf sDfsd', 'activity', 10, 1, '2016-02-18 11:28:09'),
(987, 7, 3, 'dfgsdf gsdfg', 'activity', 11, 0, '2016-02-18 11:43:09'),
(988, 7, 4, 'dfgsdf gsdfg', 'activity', 11, 0, '2016-02-18 11:43:09'),
(989, 7, 6, 'dfgsdf gsdfg', 'activity', 11, 1, '2016-02-18 11:43:09'),
(990, 7, 7, 'dfgsdf gsdfg', 'activity', 11, 0, '2016-02-18 11:43:09'),
(991, 7, 8, 'dfgsdf gsdfg', 'activity', 11, 0, '2016-02-18 11:43:09'),
(992, 7, 9, 'dfgsdf gsdfg', 'activity', 11, 1, '2016-02-18 11:43:09'),
(993, 7, 10, 'dfgsdf gsdfg', 'activity', 11, 1, '2016-02-18 11:43:09'),
(994, 7, 3, 'Travel To South Africa', 'activity', 12, 0, '2016-02-18 12:07:05'),
(995, 7, 4, 'Travel To South Africa', 'activity', 12, 0, '2016-02-18 12:07:05'),
(996, 7, 6, 'Travel To South Africa', 'activity', 12, 1, '2016-02-18 12:07:05'),
(997, 7, 7, 'Travel To South Africa', 'activity', 12, 0, '2016-02-18 12:07:05'),
(998, 7, 8, 'Travel To South Africa', 'activity', 12, 0, '2016-02-18 12:07:05'),
(999, 7, 9, 'Travel To South Africa', 'activity', 12, 1, '2016-02-18 12:07:05'),
(1000, 7, 10, 'Travel To South Africa', 'activity', 12, 1, '2016-02-18 12:07:05'),
(1001, 7, 3, 'Trip to Blue Mandel Kunu Kanda', 'activity', 13, 0, '2016-02-18 12:11:09'),
(1002, 7, 4, 'Trip to Blue Mandel Kunu Kanda', 'activity', 13, 0, '2016-02-18 12:11:09'),
(1003, 7, 6, 'Trip to Blue Mandel Kunu Kanda', 'activity', 13, 1, '2016-02-18 12:11:09'),
(1004, 7, 7, 'Trip to Blue Mandel Kunu Kanda', 'activity', 13, 0, '2016-02-18 12:11:09'),
(1005, 7, 8, 'Trip to Blue Mandel Kunu Kanda', 'activity', 13, 0, '2016-02-18 12:11:09'),
(1006, 7, 9, 'Trip to Blue Mandel Kunu Kanda', 'activity', 13, 1, '2016-02-18 12:11:09'),
(1007, 7, 10, 'Trip to Blue Mandel Kunu Kanda', 'activity', 13, 1, '2016-02-18 12:11:09'),
(1008, 7, 3, 'Aliya Safari', 'activity', 14, 0, '2016-02-18 12:15:13'),
(1009, 7, 4, 'Aliya Safari', 'activity', 14, 0, '2016-02-18 12:15:13'),
(1010, 7, 6, 'Aliya Safari', 'activity', 14, 1, '2016-02-18 12:15:13'),
(1011, 7, 7, 'Aliya Safari', 'activity', 14, 0, '2016-02-18 12:15:13'),
(1012, 7, 8, 'Aliya Safari', 'activity', 14, 0, '2016-02-18 12:15:13'),
(1013, 7, 9, 'Aliya Safari', 'activity', 14, 1, '2016-02-18 12:15:13'),
(1014, 7, 10, 'Aliya Safari', 'activity', 14, 1, '2016-02-18 12:15:13'),
(1015, 7, 3, 'sdfsdf', 'activity', 15, 0, '2016-02-18 12:24:41'),
(1016, 7, 4, 'sdfsdf', 'activity', 15, 0, '2016-02-18 12:24:41'),
(1017, 7, 6, 'sdfsdf', 'activity', 15, 1, '2016-02-18 12:24:41'),
(1018, 7, 7, 'sdfsdf', 'activity', 15, 0, '2016-02-18 12:24:41'),
(1019, 7, 8, 'sdfsdf', 'activity', 15, 0, '2016-02-18 12:24:41'),
(1020, 7, 9, 'sdfsdf', 'activity', 15, 1, '2016-02-18 12:24:41'),
(1021, 7, 10, 'sdfsdf', 'activity', 15, 1, '2016-02-18 12:24:41'),
(1022, 7, 3, 'Galle', 'activity', 16, 0, '2016-02-18 12:25:00'),
(1023, 7, 4, 'Galle', 'activity', 16, 0, '2016-02-18 12:25:00'),
(1024, 7, 6, 'Galle', 'activity', 16, 1, '2016-02-18 12:25:00'),
(1025, 7, 7, 'Galle', 'activity', 16, 0, '2016-02-18 12:25:00'),
(1026, 7, 8, 'Galle', 'activity', 16, 0, '2016-02-18 12:25:00'),
(1027, 7, 9, 'Galle', 'activity', 16, 1, '2016-02-18 12:25:00'),
(1028, 7, 10, 'Galle', 'activity', 16, 1, '2016-02-18 12:25:00'),
(1029, 7, 3, 'sdfsdfs dfsdf', 'activity', 17, 0, '2016-02-18 12:37:17'),
(1030, 7, 4, 'sdfsdfs dfsdf', 'activity', 17, 0, '2016-02-18 12:37:17'),
(1031, 7, 6, 'sdfsdfs dfsdf', 'activity', 17, 1, '2016-02-18 12:37:17'),
(1032, 7, 7, 'sdfsdfs dfsdf', 'activity', 17, 0, '2016-02-18 12:37:17'),
(1033, 7, 8, 'sdfsdfs dfsdf', 'activity', 17, 0, '2016-02-18 12:37:17'),
(1034, 7, 9, 'sdfsdfs dfsdf', 'activity', 17, 1, '2016-02-18 12:37:17'),
(1035, 7, 10, 'sdfsdfs dfsdf', 'activity', 17, 1, '2016-02-18 12:37:17'),
(1036, 7, 6, 'jygiyg', 'event', 63, 1, '2016-02-18 12:39:08'),
(1037, 7, 7, 'jygiyg', 'event', 63, 0, '2016-02-18 12:39:08'),
(1038, 6, 7, 'sdfsdfsdfsdfsdf', 'wishlist', 97, 1, '2016-02-19 03:28:44'),
(1039, 6, 6, 'sdfsdfsdfsdfsdf', 'wishlist', 97, 0, '2016-02-19 03:28:44'),
(1040, 7, 3, 'cbvxbxcv', 'activity', 18, 0, '2016-02-19 03:37:56'),
(1041, 7, 4, 'cbvxbxcv', 'activity', 18, 0, '2016-02-19 03:37:56'),
(1042, 7, 6, 'cbvxbxcv', 'activity', 18, 1, '2016-02-19 03:37:56'),
(1043, 7, 7, 'cbvxbxcv', 'activity', 18, 0, '2016-02-19 03:37:56'),
(1044, 7, 8, 'cbvxbxcv', 'activity', 18, 0, '2016-02-19 03:37:56'),
(1045, 7, 9, 'cbvxbxcv', 'activity', 18, 1, '2016-02-19 03:37:56'),
(1046, 7, 10, 'cbvxbxcv', 'activity', 18, 1, '2016-02-19 03:37:56'),
(1047, 6, 7, 'sdfsdfsdfsdfsdf', 'wishlist', 98, 1, '2016-02-19 08:40:01'),
(1048, 6, 6, 'sdfsdfsdfsdfsdf', 'wishlist', 98, 0, '2016-02-19 08:40:02'),
(1049, 6, 7, 'dsfsdfsd', 'wishlist', 99, 1, '2016-02-19 09:00:16'),
(1050, 6, 6, 'dsfsdfsd', 'wishlist', 99, 0, '2016-02-19 09:00:16'),
(1051, 7, 3, 'sdfsdfs dfsdf', 'activity', 19, 0, '2016-02-23 08:51:13'),
(1052, 7, 4, 'sdfsdfs dfsdf', 'activity', 19, 0, '2016-02-23 08:51:13'),
(1053, 7, 6, 'sdfsdfs dfsdf', 'activity', 19, 1, '2016-02-23 08:51:13'),
(1054, 7, 7, 'sdfsdfs dfsdf', 'activity', 19, 0, '2016-02-23 08:51:13'),
(1055, 7, 8, 'sdfsdfs dfsdf', 'activity', 19, 0, '2016-02-23 08:51:13'),
(1056, 7, 9, 'sdfsdfs dfsdf', 'activity', 19, 1, '2016-02-23 08:51:13'),
(1057, 7, 10, 'sdfsdfs dfsdf', 'activity', 19, 1, '2016-02-23 08:51:13'),
(1058, 9, 7, 'dfsg sdgd sdg sdfgsdg', 'comment', 8, 1, '2016-02-23 08:57:36'),
(1059, 9, 8, 'dfsg sdgd sdg sdfgsdg', 'comment', 8, 0, '2016-02-23 08:57:36'),
(1060, 7, 7, 'dfsg sdgd sdg sdfgsdg', 'comment', 8, 0, '2016-02-23 10:46:48'),
(1061, 7, 8, 'dfsg sdgd sdg sdfgsdg', 'comment', 8, 0, '2016-02-23 10:46:48'),
(1062, 9, 6, 'wetfsdfsdfasdfasdfasdf', 'comment', 65, 1, '2016-02-23 10:47:46'),
(1063, 9, 7, 'wetfsdfsdfasdfasdfasdf', 'comment', 65, 1, '2016-02-23 10:47:46'),
(1064, 9, 10, 'wetfsdfsdfasdfasdfasdf', 'comment', 65, 1, '2016-02-23 10:47:46'),
(1065, 7, 3, 'Sigiriya Sri Lanka', 'activity', 20, 0, '2016-02-23 11:19:36'),
(1066, 7, 4, 'Sigiriya Sri Lanka', 'activity', 20, 0, '2016-02-23 11:19:36'),
(1067, 7, 6, 'Sigiriya Sri Lanka', 'activity', 20, 1, '2016-02-23 11:19:36'),
(1068, 7, 7, 'Sigiriya Sri Lanka', 'activity', 20, 0, '2016-02-23 11:19:36'),
(1069, 7, 8, 'Sigiriya Sri Lanka', 'activity', 20, 0, '2016-02-23 11:19:36'),
(1070, 7, 9, 'Sigiriya Sri Lanka', 'activity', 20, 1, '2016-02-23 11:19:36'),
(1071, 7, 10, 'Sigiriya Sri Lanka', 'activity', 20, 1, '2016-02-23 11:19:36'),
(1072, 9, 7, 'cool-hd-wallpapers-1080p-fantasy-abstract-images-cool-hd-wallpapers.jpg', 'photos', 9, 1, '2016-02-23 12:43:32'),
(1073, 9, 9, 'cool-hd-wallpapers-1080p-fantasy-abstract-images-cool-hd-wallpapers.jpg', 'photos', 9, 0, '2016-02-23 12:43:33'),
(1074, 9, 7, '7f14bae025eed643952c7a000e631f32.jpg', 'photos', 10, 1, '2016-02-23 12:50:57'),
(1075, 9, 9, '7f14bae025eed643952c7a000e631f32.jpg', 'photos', 10, 0, '2016-02-23 12:50:57'),
(1076, 9, 7, 'sports_car_speed_blur.jpg', 'photos', 11, 1, '2016-02-23 01:13:09'),
(1077, 9, 9, 'sports_car_speed_blur.jpg', 'photos', 11, 0, '2016-02-23 01:13:09'),
(1078, 7, 10, 'MentalAbilities.png', 'photos', 12, 1, '2016-02-24 08:40:59'),
(1079, 7, 7, 'MentalAbilities.png', 'photos', 12, 0, '2016-02-24 08:40:59'),
(1080, 7, 6, 'homepage.png', 'photos', 13, 1, '2016-02-24 08:49:31'),
(1081, 7, 7, 'homepage.png', 'photos', 13, 0, '2016-02-24 08:49:31'),
(1082, 7, 10, 'homepage.png', 'photos', 13, 1, '2016-02-24 08:49:31'),
(1083, 7, 7, 'alltopics.png', 'photos', 14, 0, '2016-02-24 09:21:38'),
(1084, 7, 10, 'alltopics.png', 'photos', 14, 1, '2016-02-24 09:21:39'),
(1085, 7, 7, 'homepage.png', 'photos', 15, 0, '2016-02-24 09:31:41'),
(1086, 7, 10, 'homepage.png', 'photos', 15, 1, '2016-02-24 09:31:41'),
(1087, 7, 7, 'alltopics.png', 'photos', 16, 0, '2016-02-24 10:05:48'),
(1088, 7, 10, 'alltopics.png', 'photos', 16, 1, '2016-02-24 10:05:48'),
(1089, 7, 4, 'homepage.png', 'photos', 17, 0, '2016-02-24 10:27:17'),
(1090, 7, 6, 'homepage.png', 'photos', 17, 1, '2016-02-24 10:27:18'),
(1091, 7, 7, 'homepage.png', 'photos', 17, 0, '2016-02-24 10:27:18'),
(1092, 7, 10, 'homepage.png', 'photos', 17, 1, '2016-02-24 10:27:18'),
(1093, 7, 7, '1b538534d527d034cbdae589a26f5bb1.jpg', 'photos', 18, 0, '2016-02-24 11:48:31'),
(1094, 7, 9, '1b538534d527d034cbdae589a26f5bb1.jpg', 'photos', 18, 1, '2016-02-24 11:48:31'),
(1095, 7, 10, '1b538534d527d034cbdae589a26f5bb1.jpg', 'photos', 18, 1, '2016-02-24 11:48:31'),
(1096, 7, 4, 'toyota-hilux-proves-itself-again-automotor-blog-1600x1067.jpg', 'photos', 24, 0, '2016-02-25 03:48:53'),
(1097, 7, 6, 'toyota-hilux-proves-itself-again-automotor-blog-1600x1067.jpg', 'photos', 24, 1, '2016-02-25 03:48:53'),
(1098, 7, 7, 'toyota-hilux-proves-itself-again-automotor-blog-1600x1067.jpg', 'photos', 24, 0, '2016-02-25 03:48:53'),
(1099, 7, 8, 'toyota-hilux-proves-itself-again-automotor-blog-1600x1067.jpg', 'photos', 29, 0, '2016-02-25 03:50:11'),
(1100, 7, 9, 'toyota-hilux-proves-itself-again-automotor-blog-1600x1067.jpg', 'photos', 29, 1, '2016-02-25 03:50:11'),
(1101, 7, 10, 'toyota-hilux-proves-itself-again-automotor-blog-1600x1067.jpg', 'photos', 29, 1, '2016-02-25 03:50:11'),
(1102, 7, 7, 'toyota-hilux-proves-itself-again-automotor-blog-1600x1067.jpg', 'photos', 29, 0, '2016-02-25 03:50:11'),
(1103, 7, 9, 'ferrari-gim9128-hd-wallpaper.jpg', 'photos', 32, 1, '2016-02-25 03:51:37'),
(1104, 7, 10, 'ferrari-gim9128-hd-wallpaper.jpg', 'photos', 32, 1, '2016-02-25 03:51:37'),
(1105, 7, 7, 'ferrari-gim9128-hd-wallpaper.jpg', 'photos', 32, 0, '2016-02-25 03:51:37'),
(1106, 10, 6, 'toyota-hilux-2012-toyota-hilux-2012-wallpaper-2-auto-wallpaper-1920x1080.jpg', 'photos', 38, 1, '2016-02-25 03:54:45'),
(1107, 10, 7, 'toyota-hilux-2012-toyota-hilux-2012-wallpaper-2-auto-wallpaper-1920x1080.jpg', 'photos', 38, 1, '2016-02-25 03:54:45'),
(1108, 10, 10, 'toyota-hilux-2012-toyota-hilux-2012-wallpaper-2-auto-wallpaper-1920x1080.jpg', 'photos', 38, 0, '2016-02-25 03:54:45'),
(1109, 7, 6, 'Yala-Leopard.jpg', 'photos', 50, 1, '2016-02-25 04:29:02'),
(1110, 7, 7, 'Yala-Leopard.jpg', 'photos', 50, 0, '2016-02-25 04:29:02'),
(1111, 7, 8, 'Yala-Leopard.jpg', 'photos', 50, 0, '2016-02-25 04:29:02'),
(1112, 7, 10, 'Yala-Leopard.jpg', 'photos', 50, 1, '2016-02-25 04:29:02'),
(1113, 10, 7, 'Camerawak One', 'wishlist', 100, 1, '2016-02-25 04:32:48'),
(1114, 10, 10, 'Camerawak One', 'wishlist', 100, 0, '2016-02-25 04:32:48'),
(1115, 7, 4, '$_12.JPG', 'photos', 56, 0, '2016-02-25 05:00:01'),
(1116, 7, 6, '$_12.JPG', 'photos', 56, 1, '2016-02-25 05:00:01'),
(1117, 7, 7, '$_12.JPG', 'photos', 56, 0, '2016-02-25 05:00:01'),
(1118, 7, 6, 'minimalistic_gaussian_blur_blurred_colors_1440x900_55894.jpg', 'photos', 60, 1, '2016-02-25 06:04:43'),
(1119, 7, 7, 'minimalistic_gaussian_blur_blurred_colors_1440x900_55894.jpg', 'photos', 60, 0, '2016-02-25 06:04:43'),
(1120, 7, 7, 'discovery-sport-car-wheels-tuning-parking-2015-land-rover.jpg', 'photos', 63, 0, '2016-02-25 06:17:31'),
(1121, 7, 6, 'OWzRETXp_400x400.jpg', 'photos', 66, 1, '2016-02-25 06:17:52'),
(1122, 7, 7, 'OWzRETXp_400x400.jpg', 'photos', 66, 0, '2016-02-25 06:17:52'),
(1123, 9, 3, 'Capture.PNG', 'photos', 67, 0, '2016-02-25 06:34:20'),
(1124, 9, 4, 'Capture.PNG', 'photos', 67, 0, '2016-02-25 06:34:20'),
(1125, 9, 6, 'Capture.PNG', 'photos', 67, 1, '2016-02-25 06:34:20'),
(1126, 9, 10, 'Capture.PNG', 'photos', 67, 1, '2016-02-25 06:34:20'),
(1127, 9, 9, 'Capture.PNG', 'photos', 67, 0, '2016-02-25 06:34:20'),
(1128, 7, 10, 'Einstein_equation_512.png', 'photos', 70, 1, '2016-02-25 06:43:32'),
(1129, 7, 7, 'Einstein_equation_512.png', 'photos', 70, 0, '2016-02-25 06:43:32'),
(1130, 10, 4, 'statue3 (1).png', 'photos', 73, 0, '2016-02-25 07:03:06'),
(1131, 10, 9, 'statue3 (1).png', 'photos', 73, 1, '2016-02-25 07:03:06'),
(1132, 10, 10, 'statue3 (1).png', 'photos', 73, 0, '2016-02-25 07:03:06'),
(1133, 7, 6, 'download.jpg', 'photos', 75, 1, '2016-02-25 07:07:01'),
(1134, 7, 7, 'download.jpg', 'photos', 75, 0, '2016-02-25 07:07:01'),
(1135, 7, 8, 'download.jpg', 'photos', 75, 0, '2016-02-25 07:07:01'),
(1136, 7, 10, 'download.jpg', 'photos', 75, 1, '2016-02-25 07:07:01'),
(1137, 9, 4, 'sdf.jpg', 'photos', 78, 0, '2016-02-25 07:12:57'),
(1138, 9, 6, 'sdf.jpg', 'photos', 78, 1, '2016-02-25 07:12:57'),
(1139, 9, 10, 'sdf.jpg', 'photos', 78, 1, '2016-02-25 07:12:57'),
(1140, 9, 9, 'sdf.jpg', 'photos', 78, 0, '2016-02-25 07:12:57');

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

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `user_id`, `filename`, `shared_with`) VALUES
(1, 9, 'secondarytile.png', '6'),
(2, 9, 'secondarytile.png', '6'),
(3, 9, 'secondarytile.png', '4'),
(4, 9, 'secondarytile.png', '4'),
(5, 9, 'secondarytile.png', '4'),
(6, 9, 'ferrari-gim9128-hd-wallpaper.jpg', '6,8'),
(7, 9, 'ferrari-gim9128-hd-wallpaper.jpg', '3,4'),
(8, 9, 'ferrari-gim9128-hd-wallpaper.jpg', '6'),
(9, 9, 'cool-hd-wallpapers-1080p-fantasy-abstract-images-cool-hd-wallpapers.jpg', '7'),
(10, 9, '7f14bae025eed643952c7a000e631f32.jpg', '7'),
(11, 9, 'sports_car_speed_blur.jpg', '7'),
(18, 7, '1b538534d527d034cbdae589a26f5bb1.jpg', '7,9,10'),
(19, 7, '184282_Land-Rover-Lrx-Concept-Black-1366x768-Wallpapers-Car-Design-1366x786_1366x786.jpg', '4,6'),
(20, 7, '133241810.jpg', '4,6'),
(21, 7, '133241812.jpg', '4,6'),
(22, 7, 'Lamborghini-Aventador-Lp760-4-Oakley-Design-Desktop-Wallpaper.jpg', '4,6'),
(23, 7, 'toyota-hilux-2012-toyota-hilux-2012-wallpaper-2-auto-wallpaper-1920x1080.jpg', '4,6'),
(24, 7, 'toyota-hilux-proves-itself-again-automotor-blog-1600x1067.jpg', '4,6'),
(25, 7, 'b95928f577838af6ca674a3b002d1dac.jpg', '8,9,10'),
(26, 7, 'Beautiful-Sport-Car-Stylish-Design-HD-Wallpaper.jpg', '8,9,10'),
(27, 7, 'Lamborghini-Aventador-Lp760-4-Oakley-Design-Desktop-Wallpaper.jpg', '8,9,10'),
(28, 7, 'toyota-hilux-2012-toyota-hilux-2012-wallpaper-2-auto-wallpaper-1920x1080.jpg', '8,9,10'),
(29, 7, 'toyota-hilux-proves-itself-again-automotor-blog-1600x1067.jpg', '8,9,10'),
(30, 7, '914630-wallpapers.jpg', '9,10'),
(31, 7, 'cool-hd-wallpapers-1080p-fantasy-abstract-images-cool-hd-wallpapers.jpg', '9,10'),
(32, 7, 'ferrari-gim9128-hd-wallpaper.jpg', '9,10'),
(33, 10, '1b538534d527d034cbdae589a26f5bb1.jpg', '6,7'),
(34, 10, '22fc8b239fec9739b35e45e20343034ax.jpg', '6,7'),
(35, 10, '133241812.jpg', '6,7'),
(36, 10, 'Beautiful-Sport-Car-Stylish-Design-HD-Wallpaper.jpg', '6,7'),
(37, 10, 'Lamborghini-Aventador-Lp760-4-Oakley-Design-Desktop-Wallpaper.jpg', '6,7'),
(38, 10, 'toyota-hilux-2012-toyota-hilux-2012-wallpaper-2-auto-wallpaper-1920x1080.jpg', '6,7'),
(39, 7, 'characters-01.png', '6,7,8,10'),
(40, 7, 'doctor-who-wallpaper-385.jpg', '6,7,8,10'),
(41, 7, 'Doll.jpg', '6,7,8,10'),
(42, 7, 'download (2).jpg', '6,7,8,10'),
(43, 7, 'download.jpg', '6,7,8,10'),
(44, 7, 'DSC_3150.jpg', '6,7,8,10'),
(45, 7, 'Game-Of-Thrones-Season-5-Dragon-Poster-Wallpaper.jpg', '6,7,8,10'),
(46, 7, 'grass-fall.jpg', '6,7,8,10'),
(47, 7, 'last.jpg', '6,7,8,10'),
(48, 7, 'soon.jpg', '6,7,8,10'),
(49, 7, 'tlc.png', '6,7,8,10'),
(50, 7, 'Yala-Leopard.jpg', '6,7,8,10'),
(51, 7, '$_12 (1).JPG', '4,6,7'),
(52, 7, '$_12 (2).JPG', '4,6,7'),
(53, 7, '$_12 (3).JPG', '4,6,7'),
(54, 7, '$_12 (4).JPG', '4,6,7'),
(55, 7, '$_12 (5).JPG', '4,6,7'),
(56, 7, '$_12.JPG', '4,6,7'),
(57, 7, 'gorod-ogni-foto-boke - Copy.jpg', '6,7'),
(58, 7, 'gorod-ogni-foto-boke.jpg', '6,7'),
(59, 7, 'london-england-great-britain-1919.jpg', '6,7'),
(60, 7, 'minimalistic_gaussian_blur_blurred_colors_1440x900_55894.jpg', '6,7'),
(61, 7, 'awesome-volkswagen-motion-blur-wallpaper.jpg', '7'),
(62, 7, 'd70e58323b6441b473977ae9a657f1ff.jpg', '7'),
(63, 7, 'discovery-sport-car-wheels-tuning-parking-2015-land-rover.jpg', '7'),
(64, 7, '714763.jpg', '6,7'),
(65, 7, 'game_overview_thumbnail_halospartanassault-9f927d8913d5434499e8d31a0d4c88e7.jpg', '6,7'),
(66, 7, 'OWzRETXp_400x400.jpg', '6,7'),
(67, 9, 'Capture.PNG', '3,4,6,10'),
(68, 7, '37D6F5AD5A.jpg', '10'),
(69, 7, '11695740_1470733063241984_789010381684837597_n.jpg', '10'),
(70, 7, 'Einstein_equation_512.png', '10'),
(71, 10, 'france2 (1).png', '4,9'),
(72, 10, 'sculpture3 (1).png', '4,9'),
(73, 10, 'statue3 (1).png', '4,9'),
(74, 7, 'download (1).jpg', '6,7,8,10'),
(75, 7, 'download.jpg', '6,7,8,10'),
(76, 9, '1442224001_android-phone-color.png', '4,6,10'),
(77, 9, 'fds.jpg', '4,6,10'),
(78, 9, 'sdf.jpg', '4,6,10');

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

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `activity_id`, `user_id`, `rate`) VALUES
(1, 18, 6, 3.5),
(2, 16, 8, 4.5),
(3, 18, 6, 5),
(4, 14, 7, 2),
(5, 18, 9, 4),
(6, 17, 9, 4),
(7, 19, 9, 4.5),
(8, 12, 9, 4),
(9, 12, 9, 3),
(10, 11, 9, 4.5),
(11, 11, 9, 1.5),
(12, 14, 9, 4.5),
(13, 14, 9, 4.5),
(14, 15, 9, 4.5),
(15, 15, 9, 4.5),
(16, 9, 9, 4.5),
(17, 9, 9, 2.5),
(18, 9, 9, 1.5),
(19, 8, 9, 4),
(20, 8, 9, 2.5),
(21, 8, 9, 4),
(22, 18, 9, 2.5),
(23, 17, 9, 2.5),
(24, 14, 9, 2.5),
(25, 18, 9, 4.5),
(26, 18, 9, 5),
(27, 18, 9, 5),
(28, 18, 9, 5),
(29, 18, 9, 5),
(30, 18, 9, 5),
(31, 18, 9, 5),
(32, 17, 9, 4),
(33, 14, 9, 4.5),
(34, 19, 9, 3.5),
(35, 6, 9, 4),
(36, 16, 9, 5),
(37, 20, 9, 5),
(38, 15, 10, 3),
(39, 19, 10, 2.5),
(40, 12, 10, 4.5),
(41, 20, 10, 3),
(42, 14, 10, 4.5),
(43, 18, 10, 5);

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
(5, NULL, 'gajaba88@gmail.com', '111111', '', '2016-02-02 10:27:00', 'Father', 'Andrew', 'Flintoff', '34', 'Rest', 'ApiLoad', '23234'),
(6, NULL, 'shanakalakmal119@gmail.com', '111111', '', '2016-02-17 06:37:00', 'Father', 'Hannibal', 'Lecter', '4554', 'Dretroit', 'California', '19874');

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
(1, 'sdfsdfsdfsdfsdf', 6, 'sdfsdfsdf', 'dsfsdfsdf', '7', 1, '2016-02-16 12:47:44'),
(2, 'fgdfgdfgd', 6, 'fgdfgdfg', 'wrtergtdfg', '7', 1, '2016-02-16 12:48:00'),
(3, 'sdfsdfsdfsf', 6, 'sdfsdfsdfsdfdfsdfsd', 'sdfsdfsdf', '7', 1, '2016-02-16 12:48:15'),
(4, 'gdfgdfgdf', 7, 'gdfgdfgdfg', 'erghdfgdfgdf', '7', 0, '2016-02-16 01:01:24'),
(5, 'dfgdfgdfgdfg', 7, 'dfgdfgdfgdfg', 'tdhhdfgdfgdfg', '7', 0, '2016-02-16 01:27:46'),
(6, 'sdfsdfsdf', 7, 'sdfsdfsdfsdfs', 'sdgfsdfsdf', '7', 0, '2016-02-16 01:27:55'),
(7, 'sdfsdfsdf', 7, 'sdfsdfsdfsdf', 'dsfsdfsdf', '7', 0, '2016-02-16 01:28:36'),
(8, 'ssdfsdfsd', 7, 'fsdfsdfsdf', 'sdfsdfsdfsd', '7', 0, '2016-02-16 01:28:45'),
(9, 'sdfsdfsdfsdfsd', 7, 'fsdfsdfsdf', 'sdfsdfsdfsdfsdfsdfsdf', '7', 0, '2016-02-16 01:28:53'),
(10, 'sdfsdfsdfsdfsdsdf', 7, 'sdfsdfsdfsdfsd', 'sdfsdfsdfsdfsdfsdf', '7', 0, '2016-02-16 01:29:03'),
(11, 'sdfsdfsdfsdfsdf', 7, 'sdfsdfsdfsdfsdfsd', 'sdfsdfsdfsdsdf', '7', 0, '2016-02-16 01:29:13'),
(12, 'sdfsdfsdfsdfsdf', 7, 'sdfsdfsdfsdf', 'edfsdfsdf', '7', 0, '2016-02-16 01:31:42'),
(13, 'wdgfsdgfsd', 6, 'fsdfsdfsdf', 'wrgtgf', '7', 1, '2016-02-17 03:40:44'),
(14, 'zdfgzdfg zsdfgzdf', 6, 'gzdfgzdfgzdfgzdfg', 'fgh xdfghzdfg', '7', 1, '2016-02-17 03:48:28'),
(15, 'sdfsdf sdfsdf', 6, 'sdfsdfsdfsdfsdfsdf', 'ef sdfsdgf', '7', 1, '2016-02-17 04:00:44'),
(16, 'dhdfh dfhdfhdfhdfh', 6, 'dfhdfhdfhdfhdfh', 'sdfh hdh', '7', 1, '2016-02-17 04:17:25'),
(17, 'dhdhdhdh', 6, 'dhdhdghdghdgh', 'xfbcghbdh deh dghdgh', '7', 1, '2016-02-17 04:18:32'),
(18, 'dfhdfhdfh', 6, 'dfhdfhdfhdfh', 'ed hh dfhdfh', '7', 1, '2016-02-17 04:19:08'),
(19, 'sdgsdgsdg', 6, 'sdgsdgsdg', 'sgsgsdgsdg', '7', 1, '2016-02-17 04:19:47'),
(20, 'dfgdxfgf', 6, 'sdgzdfgzdfgdfg', 'sdfg zsdgsdg', '7', 1, '2016-02-17 04:21:14'),
(21, 'gdfgdfg', 6, 'dfgdfgdfgdf', 'erdgdfgzdf', '7', 1, '2016-02-17 04:22:33'),
(22, 'gsdfgdfg', 6, 'dfgdafgadfgdfg', 'rthyu dfhzdf', '7', 1, '2016-02-17 04:45:24'),
(23, 'sdfg sdgsdg ', 9, 'sdg sdgsdg', 'sfxbhdfgh ', '7', 1, '2016-02-17 06:29:52'),
(24, 'dfhdhdfh', 9, 'dfhdfh dfhdfh', 'erdy hdfhdfh ', '7', 1, '2016-02-17 06:30:00'),
(25, 'h dfhdfh df', 9, 'h dfhdfhdfh', 'erdy hdfh df', '7', 1, '2016-02-17 06:30:08'),
(26, 'dfh dfhd', 9, 'fhdfh dfhd', 'ery hdfh dfh', '7', 1, '2016-02-17 06:30:14'),
(27, 'fh dfh dfhdfh', 9, 'h dfh dfh dfh', 'wrdhy dfh d', '7', 1, '2016-02-17 06:30:22'),
(28, 'jfgjfgjgf', 4, 'jgfjfgjfgj', 'gfjgfhj gfjfgjfg', '7', 0, '2016-02-17 06:32:32'),
(29, 'hdhdghdgh', 4, 'dghdghdghdgh', 'dehghdhd', '7', 1, '2016-02-17 06:32:38'),
(30, 'dfhdfhdfhd', 4, 'fhdfhdfhdfhdfh', 'dfhsdfhdfhdfh', '7', 1, '2016-02-17 06:32:45'),
(31, 'fhsfhsfhsfh', 4, 'fhsfhsfhsdfhd', 'sfhdghsfg', '7', 1, '2016-02-17 06:32:51'),
(32, 'sfgsfgsfg', 4, 'sfgsfgsfgsfg', 'sghsfgsfg', '7', 1, '2016-02-17 06:32:58'),
(33, '2222222222222', 9, '2222222222222222', '2222222222222', '7', 1, '2016-02-17 06:41:09'),
(34, 'sdfsdfsdfsdfsdfsdf', 6, 'sdfsdfsdf', 'ergtfsdgfsdg', '7', 1, '2016-02-17 09:47:11'),
(35, 's fhsfhsfhsfh', 4, 'sdfhsdfhsdfhsdfhdfh', 'sryhfyg sdrgh', '7', 1, '2016-02-17 11:25:29'),
(36, 'dfhdfhdfh', 4, 'dfhdfhdfh', 'dghdh', '7', 1, '2016-02-17 11:25:39'),
(37, 'sdfsdfsdfsdfsdf', 9, 'sdfsdfsdfsdfs', 'ryedfgsdfsdfsdf', '7', 1, '2016-02-17 11:28:53'),
(38, 'sfgsdgsdg', 9, 'sdgsdgsdg', 'hfdhdfh', '7', 1, '2016-02-17 11:30:52'),
(39, 'zdfgzfdgdfgzdfg', 9, 'zdfgzdfgzdfgzdfg', 'sg dfghxdfhsdhzsdfgzsdfg', '7', 1, '2016-02-17 11:41:35'),
(40, 'gzdfgzdfg', 9, 'zdfgzdfgzdfg', 'wegt dfgdfghzdf', '7', 1, '2016-02-17 11:41:59'),
(41, 'zdfgzdfgzdf', 9, 'gzdfgzdfg', 'sdgzsdfgzgf', '7', 1, '2016-02-17 11:42:32'),
(42, 'ghdfgdf', 9, 'gzdfgzdfg', 'ehdfxhdf', '7', 1, '2016-02-17 11:43:37'),
(43, 'fsdfsdfsdf', 9, 'sdfsdfsdfsdfs', 'wewdfsdfsd', '7', 1, '2016-02-17 11:47:56'),
(44, 'sdgfsdfsd', 4, 'fsdfsdfsdfsdfsdf', 'wrtewgfsdgsdgfsdf', '7', 1, '2016-02-17 11:56:09'),
(45, 'sdfsdfsdfsdfsdfsdf', 4, 'sdfsdfsdfsdfdfsdfsd', 'sdfsdfsdf', '7', 1, '2016-02-17 11:56:20'),
(46, 'sdfsdfsdfsdfsdfsdf', 4, 'sdfsdfsdfsdf', 'sdfsdfsdfsdf', '7', 1, '2016-02-17 11:56:30'),
(47, 'sdfsdfsdfs', 4, 'sdfsdfsdfsdfdfsdfsd', 'sdfh hdhsdfsdf', '7', 0, '2016-02-17 12:01:36'),
(48, 'gsdfgsfgs', 4, 'dfgsdgsdgsd', 'rgsgs', '7', 1, '2016-02-17 12:04:32'),
(49, 'fadfadfadfad', 4, 'fadfadfadfadf', 'sdfasdfasdfad', '7', 1, '2016-02-17 12:04:40'),
(50, 'gdghsedhfzgb', 4, 'zdfgzdfgzdfgdfg', 'hjdxfhzdfgzdfgzdf', '7', 1, '2016-02-17 12:04:48'),
(51, 'sdfsdfsdfsdfsdfsdf', 4, 'sdfsdfsdfsdf', 'dgdxbgxcvbxcxc', '7', 1, '2016-02-17 12:13:41'),
(52, 'sfgsfgsfgsfg', 4, 'sfgsfgsfgsfg', 'wyfhgsdfgsfg', '7', 1, '2016-02-17 12:13:50'),
(53, 'fgsfgsfgsfg', 4, 'sfgsfgsfgsfgsfg', 'sdfgsfgsdfgsfgs', '7', 1, '2016-02-17 12:13:59'),
(54, 'sdgsdgsdgsdgsdgsdg', 4, 'sdgsdgsdgsdg', 'sdf sdsdgsdgsdgsdgsdg', '7', 0, '2016-02-17 12:16:18'),
(55, 'gsdgsdgsdg', 4, 'sdgsdgsdgsdg', 'sdgsdgsdgsd', '7', 1, '2016-02-17 12:16:25'),
(56, 'sdgsdgsdgs', 4, 'dgsdgsdgsdg', 'sdgfsdgsdg', '7', 1, '2016-02-17 12:16:31'),
(57, 'gsdgsdgsdg', 4, 'sdgsdgsdg', 'sdgsdgsdgsdgsd', '7', 1, '2016-02-17 12:16:38'),
(58, 'sdfgsdgfsdg', 4, 'sdgsdgsdg', 'rdfgsdfg', '7', 1, '2016-02-17 12:19:31'),
(59, 'gsdgsdgsdgs', 4, 'sdgsdgsdg', 'sdfsdfsdfsdgfsd', '7', 1, '2016-02-17 12:19:38'),
(60, 'sgfgsdg', 4, 'dsgfsdgsdgsdg', 'zxcvzxczxc', '7', 1, '2016-02-17 12:51:53'),
(61, 'gdfgdfg', 9, 'gsdfgdfgdfgf', 'sdgt sdfgsdg', '7', 1, '2016-02-18 03:57:24'),
(62, 'fgdfgdfg', 9, 'dfgdfgdfg', 'dfhdgd', '7', 0, '2016-02-18 04:24:56'),
(63, 'ghsdfgdfg', 9, 'dfgdfgdfgdfg', 'sgdfghfghdf', '7', 0, '2016-02-18 04:42:59'),
(64, 'gdfgdfgdf', 9, 'gdfgdfgdfg', 'sdfgzdfgdf', '7', 1, '2016-02-18 04:43:05'),
(65, 'dfgsdfgdfgzdf', 9, 'gzdfgzdfgzdfgzdfg', 'dfgzdfgzdfg', '7', 0, '2016-02-18 04:43:12'),
(66, 'sdfsdfsdfsdfsdf', 9, 'sdfsdfsdfsdfsd', 'sdfsdfsdfsd', '7', 0, '2016-02-18 05:12:05'),
(67, 'sdfsdfsdfsdfsdf', 9, 'sdfsdfsdfsdf', 'dasdasd', '7', 0, '2016-02-18 05:43:31'),
(68, 'dfgdfgdfg', 9, 'sdfsdfsdfsdf', 'dasdasd', '7', 0, '2016-02-18 05:47:05'),
(69, 'fxbzxcvz', 9, 'xvzxvzxvzx', ':o:(:):(:o', '7', 0, '2016-02-18 06:31:59'),
(70, 'sdfdf', 9, 'sdfsdfsdfsdfsd', ':o:(:)', '7', 0, '2016-02-18 06:33:57'),
(71, 'sdfsdfsdf', 9, 'sdfsdf', 'mac', '7', 0, '2016-02-18 07:12:03'),
(72, 'sdfsdfsdf', 9, 'sdfsdf', 'cart', '7', 0, '2016-02-18 07:12:17'),
(73, 'dfgdfgdfg', 9, 'sdfsdfsdf', 'beach', '7', 0, '2016-02-18 07:12:34'),
(74, 'sdfsdfsdfsdfsdf', 9, 'sdfsdfsdfsdf', 'gym', '7', 0, '2016-02-18 07:12:51'),
(75, 'sdfsdf', 9, 'sdfsdfsdf', 'school', '7', 0, '2016-02-18 07:13:03'),
(76, 'sdfsdf', 9, 'sdfsdfsdf', 'bicycle', '7', 1, '2016-02-18 07:13:18'),
(77, 'dfgdfgdfg', 9, 'sdfsdfsdf', 'camera', '7', 1, '2016-02-18 07:13:28'),
(78, 'sdfsdfsdf', 9, 'sdfsdfsdf', 'coaster', '7', 1, '2016-02-18 07:13:39'),
(79, 'sdfsdf', 9, 'sdfsdfsdf', 'golf', '7', 1, '2016-02-18 07:14:47'),
(80, 'sdfsdfsdf', 9, 'sdfsdfsdf', 'mountain', '7', 1, '2016-02-18 07:15:20'),
(81, 'dfgdfgdfg', 9, 'dfgdfgdfg', 'school', '7', 1, '2016-02-18 07:20:57'),
(82, 'sdfsdfsdfsdfsd', 9, 'sdfsdfsdfsdfs', 'cricket', '7', 1, '2016-02-18 07:21:56'),
(83, 'sdfsdfsdf', 9, 'sdfsdf', 'cricket', '7', 1, '2016-02-18 07:22:52'),
(84, 'dtghsdfgs', 9, 'gsdfgsdgsdg', 'movie', '7', 0, '2016-02-18 08:14:48'),
(85, 'sdggsdg', 6, 'sdgsdgsdg', 'pingpong', '7', 1, '2016-02-18 08:15:21'),
(86, 'sdgsdgsdg', 6, 'sdgsdgsdg', 'golf', '7', 1, '2016-02-18 08:15:29'),
(87, 'sdgsdgsdg', 6, 'sdgsdgsdg', 'camera', '7', 1, '2016-02-18 08:15:37'),
(88, 'sdfsdf', 6, 'sdfsdfsdf', 'beach', '7', 1, '2016-02-18 08:29:27'),
(89, 'wsefsdf', 6, 'sdfsdfsdfsdfs', 'roller', '7', 1, '2016-02-18 08:37:19'),
(90, 'sfgfg', 6, 'sgfsdfsd', 'camera', '7', 1, '2016-02-18 09:06:12'),
(91, 'sdfsdfsdfsdfsdf', 6, 'sdfsdfsdfsdf', 'gym', '7', 1, '2016-02-18 09:06:54'),
(92, 'sfdsdfsdf', 6, 'sdfsdfsdf', 'mac', '7', 1, '2016-02-18 09:07:38'),
(93, 'sdfsdfsdfsdfsdf', 6, 'sdfsdfsdf', 'camera', '7', 1, '2016-02-18 09:08:45'),
(94, 'zxcfzxcf', 6, 'dfasdf', 'gym', '7', 1, '2016-02-18 09:08:59'),
(95, 'sgsfgsdfg', 6, 'sdfsdfsdfsdf', 'tennis', '7', 1, '2016-02-18 09:10:33'),
(96, 'sdfsdfsdf', 6, 'sdfsdfsdf', 'mac', '7', 1, '2016-02-18 09:32:41'),
(97, 'sdfsdfsdfsdfsdf', 6, 'sdfsdfsdfsdf', 'pingpong', '7', 1, '2016-02-19 03:28:44'),
(98, 'sdfsdfsdfsdfsdf', 6, 'sdfsdfsdfsdf', 'pingpong', '7', 0, '2016-02-19 08:40:01'),
(99, 'dsfsdfsd', 6, 'sdfsdfsdf', 'mac', '7', 0, '2016-02-19 09:00:15'),
(100, 'Camerawak One', 10, 'Me Awuruddata', 'camera', '7', 0, '2016-02-25 04:32:47');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `mailbox`
--
ALTER TABLE `mailbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mood`
--
ALTER TABLE `mood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=969;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1141;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tempuser`
--
ALTER TABLE `tempuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
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
