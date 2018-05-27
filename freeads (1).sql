-- phpMyAdmin SQL Dump
-- version 4.6.6deb1+deb.cihar.com~xenial.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 27, 2018 at 10:07 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.2.3-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freeads`
--

-- --------------------------------------------------------

--
-- Table structure for table `adkeywords`
--

CREATE TABLE `adkeywords` (
  `ADKEYWORDID` int(11) UNSIGNED NOT NULL,
  `ADID` int(20) NOT NULL,
  `KEYWORDID` int(20) NOT NULL,
  `CREATIONDATE` datetime NOT NULL,
  `UPDATIONDATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ADMINID` int(11) UNSIGNED NOT NULL,
  `ADMINUSER` varchar(30) NOT NULL,
  `ADMINPASSWORD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ADMINID`, `ADMINUSER`, `ADMINPASSWORD`) VALUES
(1, 'deepakc', '123');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `ADID` int(11) UNSIGNED NOT NULL,
  `TITLE` varchar(100) NOT NULL,
  `TAGSKEYS` varchar(100) NOT NULL,
  `DISCRIPTION` text NOT NULL,
  `UPLOADIMG` varchar(100) NOT NULL,
  `WEBSITE` varchar(35) NOT NULL,
  `CATEGORYID` int(20) NOT NULL,
  `SUB_CATEGORY` varchar(50) NOT NULL,
  `STATEID` int(20) NOT NULL,
  `CITYID` int(20) NOT NULL,
  `LOCALITYID` int(20) NOT NULL,
  `AREA` varchar(100) NOT NULL,
  `STATUS` enum('Approved','Pending','Rejected') NOT NULL,
  `CREATIONDATE` datetime NOT NULL,
  `UPDATIONDATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `EXT` varchar(10) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`ADID`, `TITLE`, `TAGSKEYS`, `DISCRIPTION`, `UPLOADIMG`, `WEBSITE`, `CATEGORYID`, `SUB_CATEGORY`, `STATEID`, `CITYID`, `LOCALITYID`, `AREA`, `STATUS`, `CREATIONDATE`, `UPDATIONDATE`, `EXT`) VALUES
(1, 'Krishna Computers', 'All computer parts available', 'All Kinds of computer parts is available here and computer is also repaire here', 'computer.jpeg', 'www.krishnarepaireparts.com', 24, '25', 1, 1, 1, 'bhim nagar', 'Approved', '2017-11-08 13:32:39', '2018-05-13 12:32:55', 'jpeg'),
(2, 'Motorcycle', 'Motorcycle all parts is available here', 'All types of motorcycle is celling  here if you want to contact our dealers ', 'motercycle.png', 'www.allmotorcycle.com', 3, '1', 1, 1, 1, 'KoperKhaine', 'Approved', '2017-11-08 16:57:36', '2018-01-14 15:28:52', 'png'),
(3, 'All type of footwear sales', 'All type of footwear sales anytime', 'All company footwear sales if any one need to purchase please contact to our dealers', 'footwear.jpg', 'www.allkindsoffootwear.com', 55, '55', 1, 1, 1, 'nerul', 'Approved', '2017-11-08 17:03:01', '2017-11-08 17:03:01', 'png'),
(4, 'Led Light & Bulbs', 'All Bulbs Availables', 'All company bulbs availables here if you want to contact our dealers', 'light.jpg', 'www.ledlights.com', 1, '1', 1, 1, 1, 'Rabale', 'Approved', '2017-11-08 17:06:06', '2017-11-08 17:06:06', 'png'),
(5, 'Tvs Tyres', 'All kind of Tyres', 'Tvs company tyres sales if any one need to purchase please contact to our dealers', 'tyers.png', 'www.tvstyres.com', 32, '32', 1, 1, 1, 'KoperKhaine', 'Approved', '2017-11-08 17:09:27', '2017-11-08 17:09:27', 'png'),
(6, 'Ultratech Cements', 'Cements', 'Ultratech company sales in holsel if any one need to purchase please contact to our dealers', 'cement.jpeg', 'www.ultratechcements.com', 71, '71', 1, 1, 1, 'nerul', 'Approved', '2017-11-08 17:11:51', '2017-11-08 17:11:51', 'png'),
(7, 'Sandisk Memory', 'Memory', 'Sandisk company memory sales if any one need to purchase please contact to our dealers', 'sandisk.jpg', 'www.sandisk.com', 14, '14', 1, 1, 1, 'Rabale', 'Approved', '2017-11-08 17:14:06', '2017-11-08 17:14:06', 'png'),
(8, 'Mobile Phones ', 'Mobile', 'All company mobile sales if any one need to purchase please contact to our dealers', 'mobile.jpeg', 'www.allkindofmobile.com', 14, '14', 1, 1, 1, 'KoperKhaine', 'Approved', '2017-11-08 17:15:19', '2017-11-08 17:15:19', 'png'),
(9, 'Food Machinery', 'Food Machinery', 'All types of food machinery is available to selling here if you want to contact our dealers', 'food.jpeg', 'www.foodmechinery.com', 7, '7', 1, 1, 1, 'nerul', 'Approved', '2017-11-08 17:17:42', '2017-11-08 17:17:42', 'png'),
(10, 'Ayurvedic, Herbal Oils & Cosmetics', 'Ayurvedic, Herbal Oils & Cosmetics', 'All companies Ayurvedic, Herbal Oils & Cosmetics is available in holesale rate please contact to dealers', 'herbaloil.jpg', 'www.AyurvedicHerbal.com', 64, '64', 1, 1, 1, 'Nerul', 'Approved', '2017-11-08 17:23:55', '2017-11-08 17:23:55', 'png'),
(11, 'hkjh', 'sdf', 'd', 'apical.sql', 'asdf', 7, '8', 21, 21, 1, 'hjghj', 'Pending', '2018-01-30 22:08:07', '2018-01-30 22:08:07', 'sql'),
(12, 'deepakc', 'sdf', 'asdfasdfkjl', 'main.png', 'www.url.com', 1, '2', 21, 21, 1, 'kk', 'Approved', '2018-04-14 19:44:10', '2018-04-14 19:51:36', 'png'),
(13, 'jj', 'kj', 'j', 'main.png', 'hjhj', 1, '2', 21, 21, 1, 'jhhj', 'Pending', '2018-04-14 23:13:41', '2018-04-14 23:13:41', 'png'),
(14, 'jkj', 'jhhj', 'jhhj', 'test.png', 'kjjk', 1, '2', 21, 21, 1, 'jhj', 'Pending', '2018-04-14 23:16:10', '2018-04-14 23:16:10', 'name'),
(15, 'jjk', 'kj', 'jkj', 'test.png', 'jjkj', 1, '2', 21, 21, 1, 'jjh', 'Pending', '2018-04-15 13:10:46', '2018-04-15 13:10:46', 'png'),
(17, 'chapal', 'samsher', 'new model chpal', 'Screenshot from 2018-04-23 23-25-41.png', 'chapal.com', 14, '15', 21, 21, 1, 'gautam', 'Approved', '2018-05-06 22:35:57', '2018-05-06 22:36:41', 'png'),
(18, 'hjhj', 'hjhk', 'hjkj', 'test.png', 'kjkjjk', 1, '2', 21, 21, 1, 'hjhjk', 'Pending', '2018-05-20 16:12:36', '2018-05-20 16:12:36', 'png'),
(19, 'kjjkl', 'kjlkjl', 'hkj', 'Screenshot from 2018-03-30 11-34-43.png', 'jkj', 1, '2', 21, 21, 1, 'knkjjkl', 'Pending', '2018-05-20 16:26:54', '2018-05-20 16:26:54', 'jpg'),
(20, 'lkajsdf', 'jkljkl', 'jklkl', 'front.png', 'hjhjh', 1, '2', 21, 21, 1, 'jhjkjk', 'Pending', '2018-05-20 16:38:51', '2018-05-20 16:38:51', 'jpg'),
(21, 'lkajsdf', 'jkljkl', 'jklkl', 'front.png', 'hjhjh', 1, '2', 21, 21, 1, 'jhjkjk', 'Pending', '2018-05-20 16:39:30', '2018-05-20 16:39:30', 'png'),
(22, 'lkajsdf', 'jkljkl', 'jklkl', 'front.png', 'hjhjh', 1, '2', 21, 21, 1, 'jhjkjk', 'Pending', '2018-05-20 16:40:48', '2018-05-20 16:40:48', 'png'),
(23, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'undefined', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 10:57:02', '2018-05-26 10:57:02', 'image/png'),
(24, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'undefined', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 10:58:18', '2018-05-26 10:58:18', 'image/png'),
(25, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 11:00:23', '2018-05-26 11:00:23', 'image/png'),
(26, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 11:01:32', '2018-05-26 11:01:32', 'image/png'),
(27, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 11:04:55', '2018-05-26 11:04:55', 'image/png'),
(28, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 11:06:50', '2018-05-26 11:06:50', 'image/png'),
(29, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 11:10:49', '2018-05-26 11:10:49', 'image/png'),
(30, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 11:11:45', '2018-05-26 11:11:45', 'image/png'),
(31, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 11:15:51', '2018-05-26 11:15:51', 'image/png'),
(32, 'df', 'kjjjlk', 'klkjjkl', 'Screenshot from 2018-04-23 23-25-41.png', 'jkjkjk', 1, '2', 21, 21, 1, 'bjgjhjkjk', 'Pending', '2018-05-26 11:29:10', '2018-05-26 11:29:10', 'png'),
(33, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 11:38:45', '2018-05-26 11:38:45', 'image/png'),
(34, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 11:40:49', '2018-05-26 11:40:49', 'image/png'),
(35, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 11:42:12', '2018-05-26 11:42:12', 'image/png'),
(36, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 11:43:23', '2018-05-26 11:43:23', 'image/png'),
(37, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 11:51:11', '2018-05-26 11:51:11', 'image/png'),
(38, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 11:57:37', '2018-05-26 11:57:37', 'image/png'),
(39, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 11:59:00', '2018-05-26 11:59:00', 'image/png'),
(40, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 12:02:42', '2018-05-26 12:02:42', 'image/png'),
(41, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 12:04:55', '2018-05-26 12:04:55', 'image/png'),
(42, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 12:05:55', '2018-05-26 12:05:55', 'image/png'),
(43, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 12:07:58', '2018-05-26 12:07:58', 'image/png'),
(44, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 12:08:59', '2018-05-26 12:08:59', 'image/png'),
(45, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 12:09:54', '2018-05-26 12:09:54', 'image/png'),
(46, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 12:10:29', '2018-05-26 12:10:29', 'image/png'),
(47, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 12:12:05', '2018-05-26 12:12:05', 'image/png'),
(48, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 12:13:43', '2018-05-26 12:13:43', 'image/png'),
(49, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 12:14:11', '2018-05-26 12:14:11', 'image/png'),
(50, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 12:16:01', '2018-05-26 12:16:01', 'image/png'),
(51, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 12:16:54', '2018-05-26 12:16:54', 'image/png'),
(52, 'jkjkjkl', 'kjkjjkl', 'bhjhj', 'Screenshot from 2018-04-23 23-25-41.png', 'jhhjh', 1, '2', 21, 21, 1, 'hjgjh', 'Pending', '2018-05-26 12:17:47', '2018-05-26 12:17:47', 'image/png'),
(53, 'hjhjhjhj', 'hjkkjhjk', 'h', 'Screenshot from 2018-01-03 19-15-48.png', 'jhhjkh', 1, '2', 21, 21, 1, 'hhjk', 'Pending', '2018-05-26 12:19:55', '2018-05-26 12:19:55', 'image/png'),
(54, 'hjhjhj', 'hjhjj', 'hjhjhj', 'default.png', 'guhjhj', 1, '2', 21, 21, 1, 'hjhjhj', 'Pending', '2018-05-26 12:23:18', '2018-05-26 12:23:18', 'image/png'),
(55, 'jkljkjl', 'kjkjjkl', 'kjljlkj', 'Screenshot from 2018-01-03 19-15-48.png', 'jjkjk', 1, '2', 21, 21, 1, 'hkhhjk', 'Pending', '2018-05-26 12:25:02', '2018-05-26 12:25:02', 'image/png'),
(56, 'kljjlj', 'kljjlkjkl', 'hjk', 'Screenshot from 2018-04-19 21-45-20.png', 'hgjhhjk', 1, '2', 21, 21, 1, 'hjhkj', 'Pending', '2018-05-26 12:27:27', '2018-05-26 12:27:27', 'image/png'),
(57, 'hkhkjh', 'hkhkj', 'jhkh', 'Screenshot from 2018-04-19 21-45-20.png', 'hjhjhj', 1, '2', 21, 21, 1, 'jjkj', 'Pending', '2018-05-26 12:28:39', '2018-05-26 12:28:39', 'image/png'),
(58, 'hhk', 'khkhhj', 'kh', 'Screenshot from 2018-04-19 21-45-20.png', 'jhhjhjk', 1, '2', 21, 21, 1, 'jkkj', 'Pending', '2018-05-26 12:30:23', '2018-05-26 12:30:23', 'image/png'),
(59, 'jkkj', 'hhk', 'hjk', 'Screenshot from 2018-03-30 11-34-43.png', 'hkhj', 1, '2', 21, 21, 1, 'jhhhk', 'Pending', '2018-05-26 12:31:19', '2018-05-26 12:31:19', 'image/png'),
(60, 'jkkjkj', 'hjhhj', 'hhjkj', 'back1.png', 'hjhkj', 1, '2', 21, 21, 1, 'hjhjhj', 'Pending', '2018-05-26 12:34:39', '2018-05-26 12:34:39', 'image/png'),
(61, 'jjhkkj', 'jjhhjk', 'hjkkj', 'Screenshot from 2018-01-03 19-15-48.png', 'jhjkj', 1, '2', 21, 21, 1, 'jkhjhkj', 'Pending', '2018-05-26 12:37:49', '2018-05-26 12:37:49', 'image/png'),
(62, 'bhjhh', 'hj', 'jk', 'Screenshot from 2018-04-23 23-25-41.png', 'ghhjhj', 1, '2', 21, 21, 1, 'hhjhj', 'Pending', '2018-05-26 12:39:13', '2018-05-26 12:39:13', 'image/png'),
(63, 'hjkhkh', 'hjhjh', 'khk', 'Screenshot from 2018-04-19 21-45-20.png', 'kjhjhhjk', 1, '2', 21, 21, 1, 'hjhjhjk', 'Pending', '2018-05-26 12:40:25', '2018-05-26 12:40:25', 'image/png');

-- --------------------------------------------------------

--
-- Table structure for table `adsimages`
--

CREATE TABLE `adsimages` (
  `IMAGEID` int(11) UNSIGNED NOT NULL,
  `ADID` int(20) NOT NULL,
  `IMAGENAME` varchar(40) NOT NULL,
  `CREATIONDATE` datetime NOT NULL,
  `UPDATIONDATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORYID` int(11) UNSIGNED NOT NULL,
  `CATEGORYNAME` varchar(250) NOT NULL,
  `PARENTCATEGORYID` int(30) NOT NULL,
  `CREATIONDATE` datetime NOT NULL,
  `UPDATIONDATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORYID`, `CATEGORYNAME`, `PARENTCATEGORYID`, `CREATIONDATE`, `UPDATIONDATE`) VALUES
(1, 'Electronics & Electrical', 0, '2017-11-08 14:55:41', '2017-11-08 14:55:41'),
(2, 'LED Lights & Bulbs', 1, '2017-11-08 14:57:30', '2017-11-08 14:57:30'),
(3, 'Color & Ventilation Devices', 1, '2017-11-08 15:02:25', '2017-11-08 15:02:25'),
(4, 'Freez & Refrigerators & Chille', 1, '2017-11-08 15:28:32', '2017-11-08 15:28:32'),
(5, 'Home Appliances & machines', 1, '2017-11-08 15:30:46', '2017-11-08 15:30:46'),
(6, 'Biometric & Access Control Dev', 1, '2017-11-08 15:33:32', '2017-11-08 15:33:32'),
(7, 'Industrial Machinery', 0, '2017-11-08 15:34:36', '2017-11-08 15:34:36'),
(8, 'Industrial Machines & Equipmen', 7, '2017-11-08 15:35:28', '2017-11-08 15:35:28'),
(9, 'Printing Machinery & Equipment', 7, '2017-11-08 15:36:14', '2017-11-08 15:36:14'),
(10, 'Water Treatment & purifying pl', 7, '2017-11-08 15:37:02', '2017-11-08 15:37:02'),
(11, 'Plastic  Work & Processing Mac', 7, '2017-11-08 15:37:42', '2017-11-08 15:37:42'),
(12, 'Bakery & Dairy Machinery', 7, '2017-11-08 15:38:25', '2017-11-08 15:38:25'),
(13, 'Food Processing plant & Machin', 7, '2017-11-08 15:39:11', '2017-11-08 15:39:11'),
(14, 'Mobile & Telecom', 0, '2017-11-08 15:40:26', '2017-11-08 15:40:26'),
(15, 'Mobile Phone & Accessries', 14, '2017-11-08 15:40:59', '2017-11-08 15:40:59'),
(16, 'SanDisk Pen Drives', 14, '2017-11-08 15:41:38', '2017-11-08 15:41:38'),
(17, 'Telecommunication Equipment & ', 14, '2017-11-08 15:42:16', '2017-11-08 15:42:16'),
(18, 'Antenas, Wifi & Communication ', 14, '2017-11-08 15:43:09', '2017-11-08 15:43:09'),
(19, 'Transmitters & Receivers', 14, '2017-11-08 15:43:33', '2017-11-08 15:43:33'),
(20, 'Samsung Mobile Phones', 14, '2017-11-08 15:44:03', '2017-11-08 15:44:03'),
(21, 'Telecom Services & Maintenance', 14, '2017-11-08 15:44:46', '2017-11-08 15:44:46'),
(22, 'Solar & Renewable Energy Products', 1, '2017-11-08 15:45:19', '2017-11-08 15:54:46'),
(23, 'Motorola Walkie Talkies', 14, '2017-11-08 15:48:18', '2017-11-08 15:48:18'),
(24, 'Computer & Office', 0, '2017-11-08 15:49:11', '2017-11-08 15:49:11'),
(25, 'Computer Hardware & Peripherals', 24, '2017-11-08 15:49:51', '2017-11-08 15:54:28'),
(26, 'Router, Cables & Networking Devices', 24, '2017-11-08 15:56:42', '2017-11-08 15:56:42'),
(27, 'Computer And Mobile Softwares & Apps', 24, '2017-11-08 15:57:25', '2017-11-08 15:57:25'),
(28, 'Laptops, PC, Mainframes & Computers', 24, '2017-11-08 15:58:20', '2017-11-08 15:58:20'),
(29, 'Computer Stationery Products', 24, '2017-11-08 15:58:59', '2017-11-08 15:58:59'),
(30, 'Computer PCI Cards, Cables & Modules', 24, '2017-11-08 15:59:57', '2017-11-08 15:59:57'),
(31, 'HP Laser Printers', 24, '2017-11-08 16:00:36', '2017-11-08 16:00:36'),
(32, 'Automobile Parts', 0, '2017-11-08 16:04:47', '2017-11-08 16:04:47'),
(33, 'Automobile Parts & Components', 32, '2017-11-08 16:05:13', '2017-11-08 16:05:13'),
(34, 'Automobile Interiors & Accessories', 32, '2017-11-08 16:05:46', '2017-11-08 16:05:46'),
(35, 'Cars, Trucks & Commercial Vehicles', 32, '2017-11-08 16:06:58', '2017-11-08 16:06:58'),
(36, 'Automotive Repair Tools & Equipments', 32, '2017-11-08 16:07:54', '2017-11-08 16:07:54'),
(37, 'Motorcycles & Cars', 32, '2017-11-08 16:08:39', '2017-11-08 16:08:39'),
(38, 'Tractors Parts & Assemblies', 32, '2017-11-08 16:09:09', '2017-11-08 16:09:09'),
(39, 'Bridgestone Tyres', 32, '2017-11-08 16:09:38', '2017-11-08 16:09:38'),
(40, 'Hand & Machine Tools', 0, '2017-11-08 16:11:34', '2017-11-08 16:11:34'),
(41, 'Milling & Grinding Machines', 40, '2017-11-08 16:12:07', '2017-11-08 16:12:07'),
(42, 'Cutting  Machine & Equipments', 40, '2017-11-08 16:12:34', '2017-11-08 16:12:34'),
(43, 'Woodworking Machine & Tools', 40, '2017-11-08 16:13:08', '2017-11-08 16:13:08'),
(44, 'Pliers, Scredrivers & Hammers', 40, '2017-11-08 16:13:53', '2017-11-08 16:13:53'),
(45, 'Saw, Chainsaws & Saw Blades', 40, '2017-11-08 16:14:32', '2017-11-08 16:14:32'),
(46, 'Hydraulic & Pneumatic Tools', 40, '2017-11-08 16:15:18', '2017-11-08 16:15:18'),
(47, 'Apparel & Garments', 0, '2017-11-08 16:16:18', '2017-11-08 16:16:18'),
(48, 'Womens Ethnic Wear', 47, '2017-11-08 16:16:57', '2017-11-08 16:16:57'),
(49, 'Womens Western Wear', 47, '2017-11-08 16:17:33', '2017-11-08 16:17:33'),
(50, 'Mens Wear', 47, '2017-11-08 16:18:57', '2017-11-08 16:18:57'),
(51, 'Kids Wear', 47, '2017-11-08 16:19:13', '2017-11-08 16:19:13'),
(52, 'Winter Wear', 47, '2017-11-08 16:19:28', '2017-11-08 16:19:28'),
(53, 'Uniforms', 47, '2017-11-08 16:19:46', '2017-11-08 16:19:46'),
(54, 'Sewing Threads, Laces & Accessories', 47, '2017-11-08 16:20:30', '2017-11-08 16:20:30'),
(55, 'Fashion Accessories', 0, '2017-11-08 16:22:21', '2017-11-08 16:22:21'),
(56, 'Footwear', 55, '2017-11-08 16:22:34', '2017-11-08 16:22:34'),
(57, 'Woodland Shoes', 55, '2017-11-08 16:23:05', '2017-11-08 16:23:05'),
(58, 'Watches & Clocks', 55, '2017-11-08 16:23:30', '2017-11-08 16:23:30'),
(59, 'Eyewear', 55, '2017-11-08 16:23:53', '2017-11-08 16:23:53'),
(60, 'Puma Shoes', 55, '2017-11-08 16:24:23', '2017-11-08 16:24:23'),
(61, 'Fashion Jewelry', 55, '2017-11-08 16:24:52', '2017-11-08 16:24:52'),
(62, 'Gold Jewelry', 55, '2017-11-08 16:25:18', '2017-11-08 16:25:18'),
(63, 'Other Accessories', 55, '2017-11-08 16:25:41', '2017-11-08 16:25:41'),
(64, 'Cosmetics & Personal Care', 0, '2017-11-08 16:26:54', '2017-11-08 16:26:54'),
(65, 'Cosmetics, Hair & Beauty Products', 64, '2017-11-08 16:27:37', '2017-11-08 16:27:37'),
(66, 'Soaps, Detergent Powder & Cakes', 64, '2017-11-08 16:28:24', '2017-11-08 16:28:24'),
(67, 'Lux Soaps', 64, '2017-11-08 16:28:40', '2017-11-08 16:28:40'),
(68, 'Salon, Spa kits & Equipments', 64, '2017-11-08 16:29:21', '2017-11-08 16:29:21'),
(69, 'Ayurvedic, Herbal Oils & Cosmetics', 64, '2017-11-08 16:30:12', '2017-11-08 16:30:12'),
(70, 'Child & Baby Care Products', 64, '2017-11-08 16:30:40', '2017-11-08 16:30:40'),
(71, 'Building & Construction', 0, '2017-11-08 16:32:17', '2017-11-08 16:32:17'),
(72, 'Doors & Windows', 71, '2017-11-08 16:32:39', '2017-11-08 16:32:39'),
(73, 'Bricks, Concrete & Building Material', 71, '2017-11-08 16:33:31', '2017-11-08 16:33:31'),
(74, 'Ambuja Cement', 71, '2017-11-08 16:34:10', '2017-11-08 16:34:10'),
(75, 'Building & Construction Machines', 71, '2017-11-08 16:34:37', '2017-11-08 16:34:37'),
(76, 'Greenply Plywoods', 71, '2017-11-08 16:35:17', '2017-11-08 16:35:17'),
(77, 'False Ceiling & Roofing Supplies', 71, '2017-11-08 16:36:00', '2017-11-08 16:36:00'),
(78, 'Ultratech Cements', 71, '2017-11-08 16:36:39', '2017-11-08 16:36:39'),
(79, 'Electronics & Electrical', 0, '2018-05-12 17:04:02', '2018-05-12 17:04:02'),
(80, 'Electronics & Electrical', 0, '2018-05-12 17:04:39', '2018-05-12 17:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `CITYID` int(11) UNSIGNED NOT NULL,
  `CITYNAME` varchar(30) NOT NULL,
  `STATEID` int(11) NOT NULL,
  `CREATIONDATE` datetime NOT NULL,
  `UPDATIONDATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`CITYID`, `CITYNAME`, `STATEID`, `CREATIONDATE`, `UPDATIONDATE`) VALUES
(1, 'Port Blair', 1, '2017-11-08 11:16:44', '2018-05-09 23:46:52'),
(2, 'Hyderabad ', 2, '2017-11-08 11:17:05', '2018-04-15 13:49:44'),
(3, 'Itanagar', 3, '2017-11-08 11:17:24', '2017-11-08 11:17:24'),
(4, 'Dispur', 4, '2017-11-08 11:17:35', '2017-11-08 11:17:35'),
(5, 'Patna', 5, '2017-11-08 11:17:50', '2017-11-08 11:17:50'),
(6, 'Chandigarh', 6, '2017-11-08 11:18:13', '2017-11-08 11:18:13'),
(7, 'Bilaspur', 7, '2017-11-08 11:18:36', '2017-11-08 11:18:36'),
(8, 'Silvassa', 8, '2017-11-08 11:18:48', '2017-11-08 11:18:48'),
(9, 'Daman', 9, '2017-11-08 11:19:11', '2017-11-08 11:19:11'),
(10, 'New Delhi', 10, '2017-11-08 11:19:22', '2017-11-08 11:19:22'),
(11, 'Porvorim', 11, '2017-11-08 11:19:40', '2017-11-08 11:19:40'),
(12, 'Gandhinagar', 12, '2017-11-08 11:19:53', '2017-11-08 11:19:53'),
(13, 'Chandigarh', 13, '2017-11-08 11:20:13', '2017-11-08 11:20:13'),
(14, 'Shimla', 14, '2017-11-08 11:20:27', '2017-11-08 11:20:27'),
(15, 'Srinagar ', 15, '2017-11-08 11:20:48', '2017-11-08 11:20:48'),
(16, 'Ranchi', 16, '2017-11-08 11:21:02', '2017-11-08 11:21:02'),
(17, 'Bengaluru', 17, '2017-11-08 11:21:13', '2017-11-08 11:21:13'),
(18, 'Thiruvananthapuram', 18, '2017-11-08 11:21:25', '2017-11-08 11:21:25'),
(19, 'Kavaratti', 18, '2017-11-08 11:21:36', '2017-11-08 11:21:36'),
(20, 'Bhopal', 20, '2017-11-08 11:21:50', '2017-11-08 11:21:50'),
(21, 'Navi Mumbai ', 21, '2017-11-08 11:22:16', '2017-11-08 12:01:58'),
(22, 'Nagpur', 21, '2017-11-08 11:22:35', '2017-11-08 11:22:35'),
(23, 'Imphal', 22, '2017-11-08 11:23:41', '2017-11-08 11:23:41'),
(24, 'Shillong', 23, '2017-11-08 11:24:00', '2017-11-08 11:24:00'),
(25, 'Aizawl', 24, '2017-11-08 11:24:15', '2017-11-08 11:24:15'),
(26, 'Kohima', 25, '2017-11-08 11:24:32', '2017-11-08 11:24:32'),
(27, 'Bhubaneswar', 26, '2017-11-08 11:24:44', '2017-11-08 11:24:44'),
(28, 'Chennai', 27, '2017-11-08 11:25:06', '2017-11-08 11:25:06'),
(29, 'Chandigarh', 28, '2017-11-08 11:25:21', '2017-11-08 11:25:21'),
(30, 'Jaipur', 29, '2017-11-08 11:25:31', '2017-11-08 11:25:31'),
(31, 'Gangtok', 30, '2017-11-08 11:25:54', '2017-11-08 11:25:54'),
(32, 'Chennai', 31, '2017-11-08 11:26:09', '2017-11-08 11:26:09'),
(33, 'Hyderabad', 32, '2017-11-08 11:26:26', '2017-11-08 11:26:26'),
(34, 'Agartala', 33, '2017-11-08 11:26:43', '2017-11-08 11:26:43'),
(35, 'Lucknow', 34, '2017-11-08 11:26:57', '2017-11-08 11:26:57'),
(36, 'Dehradun', 35, '2017-11-08 11:27:08', '2017-11-08 11:27:08'),
(37, 'Kolkata', 36, '2017-11-08 11:27:23', '2017-11-08 11:27:23'),
(38, 'Mumbai', 21, '2017-11-12 11:27:05', '2017-11-12 11:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `contactid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `mobileno` bigint(30) NOT NULL,
  `message` varchar(200) NOT NULL,
  `creationdate` datetime NOT NULL,
  `updationdate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`contactid`, `username`, `emailid`, `mobileno`, `message`, `creationdate`, `updationdate`) VALUES
(1, 'hgkj', 'jkhk', 67576, 'jkjkjmnh', '2017-11-19 19:00:59', '2017-11-19 19:00:59'),
(2, 'deepak', 'dchdeepak@gmail.com', 8898375465, 'hello', '2017-11-19 19:05:29', '2017-11-19 19:05:29'),
(3, 'Gsjs', 'Trane@', 2866, 'Yhf', '2017-11-19 20:11:57', '2017-11-19 20:11:57'),
(4, 'Gsjs', 'Trane@', 2866, 'Yhf', '2017-11-19 20:15:23', '2017-11-19 20:15:23'),
(5, 'Deepak', 'Dchdeepak@gmail.com', 8898375465, 'Hi friend', '2017-11-20 10:31:44', '2017-11-20 10:31:44');

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `KEYWORDID` int(11) UNSIGNED NOT NULL,
  `KEYWORD` varchar(200) NOT NULL,
  `CREATIONDATE` datetime NOT NULL,
  `UPDATIONDATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `locality`
--

CREATE TABLE `locality` (
  `LOCALITYID` int(11) UNSIGNED NOT NULL,
  `LOCALITYNAME` varchar(30) NOT NULL,
  `CITYID` int(11) NOT NULL,
  `CREATIONDATE` datetime NOT NULL,
  `UPDATIONDATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locality`
--

INSERT INTO `locality` (`LOCALITYID`, `LOCALITYNAME`, `CITYID`, `CREATIONDATE`, `UPDATIONDATE`) VALUES
(1, 'Rabale new', 21, '2017-11-12 11:25:11', '2018-05-12 00:38:06'),
(2, 'Thane', 21, '2017-11-12 11:25:28', '2017-11-12 11:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `STATEID` int(11) UNSIGNED NOT NULL,
  `STATENAME` varchar(40) NOT NULL,
  `CREATIONDATE` datetime NOT NULL,
  `UPDATIONDATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`STATEID`, `STATENAME`, `CREATIONDATE`, `UPDATIONDATE`, `STATUS`) VALUES
(1, 'Andaman Nicobar', '2017-11-08 11:02:16', '2018-05-06 14:20:50', 0),
(2, 'andhra pradesh', '2017-11-08 11:02:33', '2018-05-06 14:52:32', 0),
(3, 'Arunachal Pradesh', '2017-11-08 11:02:46', '2018-05-06 14:16:27', 0),
(4, 'Assam', '2017-11-08 11:02:57', '2017-11-08 11:02:57', 0),
(5, 'Bihar', '2017-11-08 11:03:11', '2017-11-08 11:03:11', 0),
(6, 'Chandigarh', '2017-11-08 11:03:30', '2017-11-08 11:03:30', 0),
(7, 'Chhattisgarh', '2017-11-08 11:03:49', '2017-11-08 11:03:49', 0),
(8, 'Dadra and Nagar Haveli', '2017-11-08 11:04:21', '2017-11-08 11:04:21', 0),
(9, 'Daman and Diu', '2017-11-08 11:04:33', '2017-11-08 11:04:33', 0),
(10, 'Delhi', '2017-11-08 11:04:52', '2017-11-08 11:04:52', 0),
(11, 'Goa', '2017-11-08 11:05:07', '2017-11-08 11:05:07', 0),
(12, 'Gujarat', '2017-11-08 11:05:19', '2017-11-08 11:05:19', 0),
(13, 'Haryana', '2017-11-08 11:05:28', '2017-11-08 11:05:28', 0),
(14, 'Himachal Pradesh', '2017-11-08 11:05:38', '2017-11-08 11:05:38', 0),
(15, 'Jammu and Kashmir', '2017-11-08 11:05:50', '2017-11-08 11:05:50', 0),
(16, 'Jharkhand', '2017-11-08 11:05:59', '2017-11-08 11:05:59', 0),
(17, 'Karnataka', '2017-11-08 11:06:07', '2017-11-08 11:06:07', 0),
(18, 'Kerala', '2017-11-08 11:06:15', '2017-11-08 11:06:15', 0),
(19, 'Lakshadweep', '2017-11-08 11:06:54', '2017-11-08 11:06:54', 0),
(20, 'Madhya Pradesh', '2017-11-08 11:07:07', '2017-11-08 11:07:07', 0),
(21, 'Maharashtra', '2017-11-08 11:07:19', '2017-11-08 11:07:19', 0),
(22, 'Manipur', '2017-11-08 11:07:29', '2017-11-08 11:07:29', 0),
(23, 'Meghalaya', '2017-11-08 11:07:37', '2017-11-08 11:07:37', 0),
(24, 'Mizoram', '2017-11-08 11:07:49', '2017-11-08 11:07:49', 0),
(25, 'Nagaland', '2017-11-08 11:07:59', '2017-11-08 11:07:59', 0),
(26, 'Odisha', '2017-11-08 11:08:11', '2017-11-08 11:08:11', 0),
(27, 'Puducherry', '2017-11-08 11:08:47', '2017-11-08 11:08:47', 0),
(28, 'Punjab', '2017-11-08 11:08:56', '2017-11-08 11:08:56', 0),
(29, 'Rajasthan', '2017-11-08 11:09:03', '2017-11-08 11:09:03', 0),
(30, 'Sikkim', '2017-11-08 11:09:09', '2017-11-08 11:09:09', 0),
(31, 'Tamil Nadu', '2017-11-08 11:09:16', '2017-11-08 11:09:16', 0),
(32, 'Telangana', '2017-11-08 11:09:24', '2017-11-08 11:09:24', 0),
(33, 'Tripura', '2017-11-08 11:09:31', '2017-11-08 11:09:31', 0),
(34, 'Uttar Pradesh', '2017-11-08 11:09:42', '2017-11-08 11:09:42', 0),
(35, 'Uttarakhand', '2017-11-08 11:09:52', '2017-11-08 11:09:52', 0),
(36, 'West Bengal', '2017-11-08 11:10:01', '2017-11-08 11:10:01', 0),
(37, 'up1', '2018-05-05 13:37:17', '2018-05-06 14:48:20', 1),
(38, 'up1', '2018-05-05 13:38:50', '2018-05-06 14:48:11', 1),
(39, 'up1', '2018-05-05 13:41:15', '2018-05-06 14:35:46', 1),
(40, 'deepak', '2018-05-05 20:57:13', '2018-05-06 14:34:39', 1),
(41, 'ramesh', '2018-05-05 21:15:35', '2018-05-06 14:33:40', 1),
(42, 'abhishek', '2018-05-05 21:15:49', '2018-05-06 14:31:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tid` int(11) UNSIGNED NOT NULL,
  `tagsname` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USERID` int(11) UNSIGNED NOT NULL,
  `USERNAME` varchar(30) NOT NULL,
  `MOBILENO` bigint(20) NOT NULL,
  `EMAILID` varchar(25) NOT NULL,
  `STATUS` enum('Confirm','Unconfirmed') NOT NULL,
  `USERPASSWORD` int(40) NOT NULL,
  `CREATIONDATE` datetime NOT NULL,
  `UPDATIONDATE` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USERID`, `USERNAME`, `MOBILENO`, `EMAILID`, `STATUS`, `USERPASSWORD`, `CREATIONDATE`, `UPDATIONDATE`) VALUES
(1, 'deepak chauhan', 8898375465, 'dchdeepak@gmail.com', 'Confirm', 123, '2017-11-04 15:36:10', '2018-05-13 11:01:37'),
(23, 'ramesh', 7045231146, 'tramesh.1104@gmail.com', 'Confirm', 123, '2018-04-14 17:56:56', '2018-04-14 17:56:56'),
(24, 'abhshek', 8898375465, 'asdf@gmail.com', 'Confirm', 123, '2018-05-13 09:54:32', '2018-05-13 09:54:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adkeywords`
--
ALTER TABLE `adkeywords`
  ADD PRIMARY KEY (`ADKEYWORDID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ADMINID`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`ADID`);

--
-- Indexes for table `adsimages`
--
ALTER TABLE `adsimages`
  ADD PRIMARY KEY (`IMAGEID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORYID`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`CITYID`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`KEYWORDID`);

--
-- Indexes for table `locality`
--
ALTER TABLE `locality`
  ADD PRIMARY KEY (`LOCALITYID`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`STATEID`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adkeywords`
--
ALTER TABLE `adkeywords`
  MODIFY `ADKEYWORDID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ADMINID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `ADID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `adsimages`
--
ALTER TABLE `adsimages`
  MODIFY `IMAGEID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORYID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `CITYID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `contactid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `KEYWORDID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `locality`
--
ALTER TABLE `locality`
  MODIFY `LOCALITYID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `STATEID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `USERID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
