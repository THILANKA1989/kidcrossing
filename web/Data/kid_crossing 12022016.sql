-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2016 at 04:04 AM
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
(37, 22, 7, 'yfjhfj', '2016-02-11 13:34:15');

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
(45, 7, 'The Test Event 6', 'This is the test entry for notifications', 'I dont know whether this is working or not', '2016-02-04 00:00:00', '4,6');

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
(24, 10, 'This is The Journal Entry that need to be tested', '2016-02-12 00:00:00', '6,7,8');

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
(939, 6, 'angry', '2016-02-11', '12:29:25');

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
(25, 10, 7, 'Event Test 1', 'event', 43, 0, '2016-02-12 03:56:50'),
(26, 10, 6, 'This is The Journal Entry that need to be tested', 'journal', 24, 1, '2016-02-12 03:58:00'),
(27, 10, 7, 'This is The Journal Entry that need to be tested', 'journal', 24, 0, '2016-02-12 03:58:00'),
(28, 10, 8, 'This is The Journal Entry that need to be tested', 'journal', 24, 0, '2016-02-12 03:58:00'),
(29, 7, 4, 'The test Event 5', 'event', 44, 0, '2016-02-12 04:00:00'),
(30, 7, 4, 'The Test Event 6', 'event', 45, 1, '2016-02-12 04:01:45'),
(31, 7, 6, 'The Test Event 6', 'event', 45, 1, '2016-02-12 04:01:45');

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
(7, 7, 'Father', 'Andrew', 'Flintoff', NULL, '', '34', 'Rest', 'ApiLoad', '23234', '714763.jpg', '#ff9900'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `mailbox`
--
ALTER TABLE `mailbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mood`
--
ALTER TABLE `mood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=940;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
