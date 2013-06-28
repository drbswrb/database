-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 17, 2013 at 09:45 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iitd`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `article_id` int(25) NOT NULL AUTO_INCREMENT,
  `likes` int(11) NOT NULL,
  `article_cat` varchar(100) NOT NULL,
  `article_sub_cat` varchar(25) NOT NULL,
  `date_posted` date NOT NULL,
  `posted_by` varchar(100) NOT NULL,
  `article_approval` tinyint(1) NOT NULL,
  `article_content` text NOT NULL,
  `article_name` varchar(100) NOT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `likes`, `article_cat`, `article_sub_cat`, `date_posted`, `posted_by`, `article_approval`, `article_content`, `article_name`) VALUES
(1, 88, 'academics', 'course_detail', '2013-06-04', 'Vishal', 1, 'This is just demo article content', 'Heading Article'),
(2, 17, 'academics', 'course_detail', '2013-06-02', 'Tarang', 1, 'Placements Stats:\r\nThis year the company that visited our campus for recruitment are Z.S associate, flipkart, Infosys, Direct I etc.\r\n\r\nThe highest package of \r\n30 lakhs was offered by Direct-I. The average package went upto 6 lakhs which is 1 lakh more than the previous year', 'Placement details'),
(3, 34, 'academics', 'course_detail', '2013-06-01', 'Tarang', 1, 'Scholarship for upcoming batch :\r\nWe are offering the scholarship to first 10 students on the basis of JEE main rank and which is equal to full tuition fees. Also, we are offering merit cum means scholarship to 5 students on the basis of merit.', 'Scholarship schemes'),
(4, 4, 'academics', 'course_detail', '2013-05-11', 'Mayur', 1, 'All of you will be aware that our annual college fest is coming soon. We need volunteers for the preparation of fest. Students who are willing to volunteer the college fest should contact any of the cultural committee member. Expecting a huge participation from 1st year guys! Thank you !', 'Need volunteers'),
(5, 1, 'academics', 'course_detail', '2013-05-04', 'Anshul', 1, 'Rules for internship:\r\n(1) Summer Internship for third yearites is compulsory.\r\n(2) The company where the student is going to do his internship should be verified by the placement cell.\r\n(3) The minimum period of internship is 2 years. ', 'Internship rules'),
(6, 0, 'academics ', 'course_detail', '2013-05-25', 'Nishant', 1, 'Data Structures:\r\nThis course will be taken by Prof. Rahul Muthu.\r\nIt is very useful and good course. It will be helpful during placement also. Also, prof Rahul Muthu is very friendly and does good grading :D.', 'Data Structure'),
(7, 0, 'academics', 'course_detail', '2013-02-22', 'Tarang', 1, 'Projects:\r\n1st year guys have to carry out project under proj Vijay Kumar in CT-111 course and 2nd years in EL-213 course. So, if any student wants any components related to their project, they can issue it from EHC club or from Lab. Feel free to contact any EHC members in case of any help. Thank you!', 'Project components'),
(8, 0, 'academics', 'course_detail', '2013-06-08', 'Vishal', 1, 'As per the new rankings announced by Times of India, our college ranks 7th all over India.\r\nIIT-Bombay topped the list of best engineering colleges in India.', 'Rankings'),
(9, 0, 'academics', 'course_detail', '2013-05-18', 'Mayur', 1, 'The active clubs of our college are:\r\n(1) Programming club\r\n(2) EHC club\r\n(3) Movie making club\r\n(4) Dance club\r\n(5) DTG club\r\n', 'Activity Club'),
(10, 0, 'academics ', 'course_detail', '2013-05-25', 'Tarang', 1, 'The previous papers for 1st year and 2nd year students for following course are uploaded.\r\n\r\n1st year:\r\n(1) Digital Logic Design\r\n(2) Object Oriented Programming\r\n(3) Discrete Mathematics\r\n\r\n2nd year:\r\n(1) Data Structures\r\n(2) Computer Organization\r\n(3) System software', 'Previous year papers'),
(13, 0, 'academics', 'course_detail', '0000-00-00', 'Vishal', 1, 'wah ji wah', 'Hello World'),
(14, 0, 'academics', 'course_detail', '0000-00-00', 'NISHANT GAURAV', 1, '', ''),
(15, 0, 'academics', 'course_detail', '0000-00-00', 'NISHANT GAURAV', 1, 'Test1', 'Test'),
(16, 0, 'academics', 'course_detail', '0000-00-00', '', 1, '', ''),
(17, 0, 'academics', 'course_detail', '0000-00-00', '', 1, '', ''),
(18, 0, 'academics', 'course_detail', '0000-00-00', '', 1, '', ''),
(19, 0, 'academics', 'course_detail', '0000-00-00', '', 1, '', ''),
(20, 2, 'academics', 'course_detail', '0000-00-00', '', 1, 'test test 12222', 'abc'),
(21, 0, 'academics', 'course_detail', '0000-00-00', '', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `college_events`
--

CREATE TABLE IF NOT EXISTS `college_events` (
  `userid` int(25) DEFAULT NULL,
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `venue` varchar(200) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `contact_information` varchar(200) DEFAULT NULL,
  `poster` longblob,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comment_article`
--

CREATE TABLE IF NOT EXISTS `comment_article` (
  `comment_id` int(10) NOT NULL AUTO_INCREMENT,
  `comment_text` text NOT NULL,
  `posted_by` varchar(100) NOT NULL,
  `article_id` int(100) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `comment_article`
--

INSERT INTO `comment_article` (`comment_id`, `comment_text`, `posted_by`, `article_id`) VALUES
(16, 'Hii there', 'vishal.2947@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `editor`
--

CREATE TABLE IF NOT EXISTS `editor` (
  `id` int(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fb_internal`
--

CREATE TABLE IF NOT EXISTS `fb_internal` (
  `name` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `fb_link` varchar(500) DEFAULT NULL,
  `birthdate` text,
  `high_school` text,
  `college` varchar(500) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `lang_known` varchar(200) DEFAULT NULL,
  `age` int(5) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_discussion`
--

CREATE TABLE IF NOT EXISTS `group_discussion` (
  `group_id` int(11) NOT NULL,
  `discussion` text NOT NULL,
  `posted_by_username` varchar(100) NOT NULL,
  `posted_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_discussion`
--

INSERT INTO `group_discussion` (`group_id`, `discussion`, `posted_by_username`, `posted_date_time`) VALUES
(1, 'Hello', 'vishal', '2013-06-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `group_member`
--

CREATE TABLE IF NOT EXISTS `group_member` (
  `group_id` int(11) NOT NULL,
  `username_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_member`
--

INSERT INTO `group_member` (`group_id`, `username_group`) VALUES
(1, 'vishal.2947@gmail.com'),
(1, 'neerajjoshi00@gmail.com'),
(1, 'anshulmlhtr@gmail.com'),
(1, 'cdhishna@gmail.com'),
(1, 'tarangrockr@yahoo.com'),
(1, 'nishantgaurav101010@gmail.com'),
(1, 'myrgrg@gmail.com'),
(1, 'tarangrockr@yahoo.com'),
(1, 'tarangrockr@yahoo.com'),
(1, 'tarangrockr@yahoo.com'),
(1, 'test123@gmail.com'),
(1, 'shivika_singla@yahoo.com'),
(1, 'vishal.2947@gmail.com'),
(1, 'nishantgaurav101010@gmail.com'),
(1, 'cdhishna@gmail.com'),
(1, 'myrgrg@gmail.com'),
(1, 'anshulmlhtr@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `group_notification`
--

CREATE TABLE IF NOT EXISTS `group_notification` (
  `group_id` int(11) NOT NULL,
  `notification` varchar(1000) NOT NULL,
  `posted_by_username` varchar(100) NOT NULL,
  `posted_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_notification`
--

INSERT INTO `group_notification` (`group_id`, `notification`, `posted_by_username`, `posted_date`) VALUES
(1, 'Hello', 'vishal.2947@gmail.com', '2013-06-08 19:51:14'),
(1, 'New one', 'vishal.2947@gmail.com', '2013-06-08 19:58:32'),
(1, 'Just a test to check notifications.', 'vishal2547@gmail.com', '2013-06-10 11:30:34'),
(1, 'hi', 'anshulmlhtr@gmail.com', '2013-06-12 06:47:54'),
(1, 'hi\r\nthis one is new', 'anshulmlhtr@gmail.com', '2013-06-12 06:48:16'),
(1, 'testing here!', 'cdhishna@gmail.com', '2013-06-12 07:34:47'),
(1, 'YAY', 'cdhishna@gmail.com', '2013-06-12 07:35:34'),
(1, '', 'cdhishna@gmail.com', '2013-06-12 07:36:21'),
(1, '', 'cdhishna@gmail.com', '2013-06-12 07:43:27'),
(1, '', '?j?k?ng??mak.?om', '2013-06-12 07:43:28'),
(1, 'Test', 'tarangrockr@yahoo.com', '2013-06-12 08:58:29'),
(1, '', 'cdhishna@gmail.com', '2013-06-12 23:47:30'),
(1, 'New Notif', 'cdhishna@gmail.com', '2013-06-13 06:16:49'),
(1, 'hello', 'tarangrockr@yahoo.com', '2013-06-13 09:58:36'),
(1, 'hi', 'tarangrockr@yahoo.com', '2013-06-13 10:07:48'),
(1, 'dsc', 'tarangrockr@yahoo.com', '2013-06-13 10:09:45'),
(1, 'dsc', 'tarangrockr@yahoo.com', '2013-06-13 10:13:10'),
(1, 'test2', 'tarangrockr@yahoo.com', '2013-06-13 10:13:25'),
(1, 'Test', 'tarangrockr@yahoo.com', '2013-06-13 10:55:53'),
(1, 'Hello', 'tarangrockr@yahoo.com', '2013-06-13 10:56:07'),
(1, 'test3', 'tarangrockr@yahoo.com', '2013-06-13 11:00:59'),
(1, 'hi how are you?', 'tarangrockr@yahoo.com', '2013-06-13 11:02:23'),
(1, 'Test', 'tarangrockr@yahoo.com', '2013-06-13 11:10:23'),
(1, 'hi', 'tarangrockr@yahoo.com', '2013-06-13 11:24:22'),
(1, 'New one !', 'tarangrockr@yahoo.com', '2013-06-13 11:25:22'),
(1, 'hi!', 'tarangrockr@yahoo.com', '2013-06-14 00:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `group_owner`
--

CREATE TABLE IF NOT EXISTS `group_owner` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(200) NOT NULL,
  `owner_user_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `group_owner`
--

INSERT INTO `group_owner` (`group_id`, `group_name`, `owner_user_id`) VALUES
(1, 'BrowseBoard Group', 3);

-- --------------------------------------------------------

--
-- Table structure for table `intercollege_events`
--

CREATE TABLE IF NOT EXISTS `intercollege_events` (
  `userid` int(25) NOT NULL,
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `venue` varchar(200) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `contact_information` varchar(200) DEFAULT NULL,
  `poster` longblob,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `like_article`
--

CREATE TABLE IF NOT EXISTS `like_article` (
  `article_id` int(11) NOT NULL,
  `posted_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `like_article`
--

INSERT INTO `like_article` (`article_id`, `posted_by`) VALUES
(1, 'vishal.2947@gmail.com'),
(1, 'tarangrockr@yahoo.com'),
(1, 'tarangrockr@yahoo.com'),
(2, 'tarangrockr@yahoo.com'),
(5, 'tarangrockr@yahoo.com'),
(1, 'test123@gmail.com'),
(20, 'test123@gmail.com'),
(20, 'test123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `member_group_notification`
--

CREATE TABLE IF NOT EXISTS `member_group_notification` (
  `username` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_group_notification`
--

INSERT INTO `member_group_notification` (`username`, `group_id`, `content`, `date_time`) VALUES
('tarangrockr@yahoo.com', 1, 'hello', '2013-06-13 09:58:36'),
('tarangrockr@yahoo.com', 1, 'Test', '2013-06-13 11:10:23'),
('tarangrockr@yahoo.com', 1, 'test2', '2013-06-13 11:14:07'),
('tarangrockr@yahoo.com', 1, 'hi', '2013-06-13 11:24:22'),
('tarangrockr@yahoo.com', 1, 'New one !', '2013-06-13 11:25:22'),
('tarangrockr@yahoo.com', 1, 'hi!', '2013-06-14 00:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `moderator`
--

CREATE TABLE IF NOT EXISTS `moderator` (
  `id` int(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personal_event`
--

CREATE TABLE IF NOT EXISTS `personal_event` (
  `user_id` int(25) NOT NULL,
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `venue` varchar(50) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `no_of_post` int(5) NOT NULL,
  `no_of_que` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `cid`, `name`, `no_of_post`, `no_of_que`) VALUES
(1, 1, 'Course Details', 4, 4),
(2, 1, 'Teacher Review', 0, 0),
(3, 1, 'Projects', 0, 0),
(4, 1, 'Scholarschips', 0, 0),
(5, 2, 'Boards and Clubs', 0, 0),
(6, 2, 'College Fests', 0, 0),
(7, 2, 'Politics and POR', 0, 0),
(8, 2, 'News', 0, 0),
(9, 3, 'Where to Apply', 0, 0),
(10, 3, 'How to Apply', 0, 0),
(11, 3, 'Internship Reviews', 0, 0),
(12, 3, 'General Rules', 0, 0),
(13, 4, 'Previous Statistics', 0, 0),
(14, 4, 'Latest Updates', 0, 0),
(15, 4, 'Preparation Fundae', 0, 0),
(16, 4, 'Visiting Companies', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_academics`
--

CREATE TABLE IF NOT EXISTS `user_academics` (
  `id` int(25) NOT NULL,
  `school_attended` varchar(100) DEFAULT NULL,
  `college_name` varchar(100) NOT NULL,
  `degree_type` varchar(100) NOT NULL,
  `stream_name` varchar(100) NOT NULL,
  `current_year` int(5) NOT NULL,
  `expected_passout_year` int(5) DEFAULT NULL,
  `highest_qualification` varchar(100) DEFAULT NULL,
  `class_12_10_detail` varchar(100) DEFAULT NULL,
  `technical_skills` varchar(100) DEFAULT NULL,
  `projects` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_academics`
--

INSERT INTO `user_academics` (`id`, `school_attended`, `college_name`, `degree_type`, `stream_name`, `current_year`, `expected_passout_year`, `highest_qualification`, `class_12_10_detail`, `technical_skills`, `projects`) VALUES
(1, 'New English School', 'DA-IICT', 'B.Tech', 'Computer Science', 2013, 2015, NULL, NULL, NULL, NULL),
(2, 'St. Annes High School', 'DA-IICT', 'B.Tech', 'Computer Science', 2013, 2015, NULL, NULL, NULL, NULL),
(3, 'Delhi Public School', 'NIT-Warangal', 'B.Tech', 'Computer Science', 2013, 2015, NULL, NULL, NULL, NULL),
(4, 'St. Xaviers School', 'IIT-Delhi', 'B.Tech', 'Mechanical', 2013, 2014, NULL, NULL, NULL, NULL),
(5, 'New English School', 'DDIT', 'B.Tech', 'Electronics', 2013, 2015, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE IF NOT EXISTS `user_detail` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `age` int(25) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `date_of_birth` text,
  `home_town` varchar(100) DEFAULT NULL,
  `date_of_join` date DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `verify` tinyint(1) NOT NULL,
  `contact_no` int(25) DEFAULT NULL,
  `lang_known` varchar(100) DEFAULT NULL,
  `profile_image` longblob,
  `communication_address` varchar(500) DEFAULT NULL,
  `Membership` varchar(100) DEFAULT NULL,
  `other_details` varchar(500) DEFAULT NULL,
  `college` varchar(100) NOT NULL,
  `semester` int(5) NOT NULL,
  `last_update_check` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `email`, `first_name`, `last_name`, `age`, `gender`, `date_of_birth`, `home_town`, `date_of_join`, `password`, `verify`, `contact_no`, `lang_known`, `profile_image`, `communication_address`, `Membership`, `other_details`, `college`, `semester`, `last_update_check`) VALUES
(1, 'tarangrockr@yahoo.com', 'Tarang', 'Patel', NULL, 'Male', NULL, NULL, NULL, '123456', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'IIT DELHI', 0, '0000-00-00 00:00:00'),
(11, 'test123@gmail.com', 'test', '123', NULL, 'Male', NULL, NULL, NULL, 'test123', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'IIT DELHI', 0, '0000-00-00 00:00:00'),
(12, 'shivika_singla@yahoo.com', 'shivika', 'singla', NULL, 'Femal', NULL, NULL, NULL, 'shivika', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Others', 0, '0000-00-00 00:00:00'),
(13, 'vishal.2947@gmail.com', 'Vishal', 'Kumar', NULL, 'Male', NULL, NULL, NULL, 'vishal', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'IIT DELHI', 0, '0000-00-00 00:00:00'),
(14, 'nishantgaurav101010@gmail.com', 'Nishant', 'Gaurav', NULL, 'Male', NULL, NULL, NULL, 'vertibrata', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JEC JABALPUR', 0, '0000-00-00 00:00:00'),
(15, 'cdhishna@gmail.com', 'dhishna', 'chandnani', NULL, 'Femal', NULL, NULL, NULL, '123456', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'IIT DELHI', 0, '0000-00-00 00:00:00'),
(16, 'myrgrg@gmail.com', 'myr', 'grg', NULL, 'Male', NULL, NULL, NULL, 'grgmyr', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'IIT DELHI', 0, '0000-00-00 00:00:00'),
(17, 'anshulmlhtr@gmail.com', 'Anshul', 'Malhotra', NULL, 'Male', NULL, NULL, NULL, 'testing', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'IIT DELHI', 0, '0000-00-00 00:00:00');


--
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
