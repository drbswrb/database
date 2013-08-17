-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: iitd
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `answer_id` int(5) NOT NULL AUTO_INCREMENT,
  `question_id` int(5) NOT NULL,
  `answer` text NOT NULL,
  `posted_by` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `posted_date` datetime NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,1,'Previous year DSA papers are posted on the course website. Please have a look!','Vishal','vishal.2947@gmail.com','2013-07-09 00:00:00'),(2,2,'Direct-I offered 19.5 LPA and they are expecting 5 students to be placed.','Tarang','tarangrockr@gmail.com','2013-07-01 00:00:00'),(3,3,'Hardware Embedded design, DBMS, Intro to algorithms are the core courses and rest are electives.','Vishal','vishal.2947@gmail.com','2013-06-05 00:00:00'),(4,4,'Our annual fest will probably be in first week of February.','Tarang','tarangrockr@gmail.com','2013-07-07 00:00:00'),(5,5,'Prof. Rahul Muthu will take algorithm course.','Vishal','vishal.2947@gmail.com','2013-07-05 00:00:00'),(8,1,'Hello','Tarang','tarangrockr@yahoo.com','2013-08-10 16:42:25'),(9,1,'wadd','Tarang','tarangrockr@yahoo.com','2013-08-10 16:49:14'),(10,1,'weafds','Tarang','tarangrockr@yahoo.com','2013-08-10 16:49:47'),(11,1,'wesf','Tarang','tarangrockr@yahoo.com','2013-08-10 16:50:06'),(12,1,'ad','Tarang','tarangrockr@yahoo.com','2013-08-10 16:50:58'),(13,1,'easdfc','Tarang','tarangrockr@yahoo.com','2013-08-10 16:52:15'),(14,1,'SD','Tarang','tarangrockr@yahoo.com','2013-08-10 16:53:51'),(15,1,'aXZCc','Tarang','tarangrockr@yahoo.com','2013-08-10 16:54:13'),(16,3,'asx','Tarang','tarangrockr@yahoo.com','2013-08-10 16:54:21'),(17,1,'dvsv','Tarang','tarangrockr@yahoo.com','2013-08-15 18:41:17');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,86,'academics','course_detail','2013-06-04','Vishal',1,'This is just demo article content','Heading Article'),(2,17,'academics','course_detail','2013-06-02','Tarang',1,'Placements Stats:\r\nThis year the company that visited our campus for recruitment are Z.S associate, flipkart, Infosys, Direct I etc.\r\n\r\nThe highest package of \r\n30 lakhs was offered by Direct-I. The average package went upto 6 lakhs which is 1 lakh more than the previous year','Placement details'),(3,34,'academics','course_detail','2013-06-01','Tarang',1,'Scholarship for upcoming batch :\r\nWe are offering the scholarship to first 10 students on the basis of JEE main rank and which is equal to full tuition fees. Also, we are offering merit cum means scholarship to 5 students on the basis of merit.','Scholarship schemes'),(4,4,'academics','course_detail','2013-05-11','Mayur',1,'All of you will be aware that our annual college fest is coming soon. We need volunteers for the preparation of fest. Students who are willing to volunteer the college fest should contact any of the cultural committee member. Expecting a huge participation from 1st year guys! Thank you !','Need volunteers'),(5,1,'academics','course_detail','2013-05-04','Anshul',1,'Rules for internship:\r\n(1) Summer Internship for third yearites is compulsory.\r\n(2) The company where the student is going to do his internship should be verified by the placement cell.\r\n(3) The minimum period of internship is 2 years. ','Internship rules'),(6,0,'academics ','course_detail','2013-05-25','Nishant',1,'Data Structures:\r\nThis course will be taken by Prof. Rahul Muthu.\r\nIt is very useful and good course. It will be helpful during placement also. Also, prof Rahul Muthu is very friendly and does good grading :D.','Data Structure'),(7,7,'academics','course_detail','2013-02-22','Tarang',1,'Projects:\r\n1st year guys have to carry out project under proj Vijay Kumar in CT-111 course and 2nd years in EL-213 course. So, if any student wants any components related to their project, they can issue it from EHC club or from Lab. Feel free to contact any EHC members in case of any help. Thank you!','Project components'),(8,0,'academics','course_detail','2013-06-08','Vishal',1,'As per the new rankings announced by Times of India, our college ranks 7th all over India.\r\nIIT-Bombay topped the list of best engineering colleges in India.','Rankings'),(9,0,'academics','course_detail','2013-05-18','Mayur',1,'The active clubs of our college are:\r\n(1) Programming club\r\n(2) EHC club\r\n(3) Movie making club\r\n(4) Dance club\r\n(5) DTG club\r\n','Activity Club'),(10,0,'academics ','course_detail','2013-05-25','Tarang',1,'The previous papers for 1st year and 2nd year students for following course are uploaded.\r\n\r\n1st year:\r\n(1) Digital Logic Design\r\n(2) Object Oriented Programming\r\n(3) Discrete Mathematics\r\n\r\n2nd year:\r\n(1) Data Structures\r\n(2) Computer Organization\r\n(3) System software','Previous year papers'),(11,5,'Academics ','teacher_reviews','2013-08-10','Tarang Patel',0,'Hello!','Test'),(12,0,'','','0000-00-00','',0,'',''),(13,0,'Activities ','Boards and Clubs','2013-08-17','tarangrockr@yahoo.com',1,'ASD','TEST'),(14,0,'Academics ','projects','2013-08-17','tarangrockr@yahoo.com',1,'Hello','Test'),(15,0,'undefined','undefined','2013-08-17','Tarang',1,'Hello','Test'),(16,0,'Academics ','scholarships','2013-08-17','Tarang',1,'test\n','test'),(17,0,'','','2013-08-17','Tarang',1,'',''),(18,0,'Activities ','politics_and_pors','2013-08-17','Tarang',1,'aad','totla');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `location` varchar(500) NOT NULL,
  `time` text NOT NULL,
  `date` date NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` VALUES (1,'tarangrockr@yahoo.com','Meeting Rahul sir','Delhi','9 am','2013-08-05',0),(2,'tarangrockr@yahoo.com','Meeting Jaideep sir','Delhi','10 am','2013-08-05',0),(3,'tarangrockr@yahoo.com','Dominos with friends','Infocity, Gandhinagar','8 pm','2013-08-06',0),(4,'tarangrockr@yahoo.com','Hangover-3 Movie','Cinemax multiplex','6pm','2013-08-02',0),(5,'tarangrockr@yahoo.com','Lecture on cloud computing','Lecture theatre','5 pm','2013-08-03',0),(6,'tarangrockr@yahoo.com','shopping of clothes','Himalaya mall, Ahmedabad','4 pm','2013-08-03',0),(7,'tarangrockr@yahoo.com','CCD with friends','Delhi','7 pm','2013-08-03',0),(8,'tarangrockr@yahoo.com','Workshop on robotics','IIT Delhi','8 am','2013-08-04',0),(9,'vishal.2947@gmail.com','Deadline of Database project','IIT Delhi','12 am','2013-08-04',0),(30,'tarangrockr@yahoo.com','Movie- The Conjuring','PVR Cinema','8 pm','2013-08-07',0),(44,'tarangrockr@yahoo.com','Linux Workshop','DA-IICT','9 am','2013-08-07',0),(45,'tarangrockr@yahoo.com','IPL','Ahmedabad','6 pm','2013-08-08',0),(46,'tarangrockr@yahoo.com','Movie','Cinemax','5 pm','2013-08-09',0),(47,'tarangrockr@yahoo.com','Movie','Cinemax','5:00 pm','2013-08-09',0);
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college_events`
--

DROP TABLE IF EXISTS `college_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `college_events` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college_events`
--

LOCK TABLES `college_events` WRITE;
/*!40000 ALTER TABLE `college_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `college_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_article`
--

DROP TABLE IF EXISTS `comment_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_article` (
  `comment_id` int(10) NOT NULL AUTO_INCREMENT,
  `comment_text` text NOT NULL,
  `posted_by` varchar(100) NOT NULL,
  `article_id` int(100) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_article`
--

LOCK TABLES `comment_article` WRITE;
/*!40000 ALTER TABLE `comment_article` DISABLE KEYS */;
INSERT INTO `comment_article` VALUES (16,'Hii there','vishal.2947@gmail.com',1),(17,'dczcvsdv','tarangrockr@yahoo.com',1),(18,'edc','tarangrockr@yahoo.com',1),(19,'wsc','tarangrockr@yahoo.com',1),(20,'sd','tarangrockr@yahoo.com',1),(21,'awsd','tarangrockr@yahoo.com',1),(22,'awdf','tarangrockr@yahoo.com',1),(23,'as','tarangrockr@yahoo.com',1),(24,'asc','tarangrockr@yahoo.com',1),(25,'hello','tarangrockr@yahoo.com',1),(26,'asd','tarangrockr@yahoo.com',1),(27,'','tarangrockr@yahoo.com',1),(28,'dsc','tarangrockr@yahoo.com',1),(29,'dsc','tarangrockr@yahoo.com',1),(30,'dsc','tarangrockr@yahoo.com',1),(31,'sac','tarangrockr@yahoo.com',1),(32,'asd','tarangrockr@yahoo.com',1),(33,'wads','tarangrockr@yahoo.com',1),(34,'dasc','tarangrockr@yahoo.com',1),(35,'asdsadx','tarangrockr@yahoo.com',1),(36,'asc','tarangrockr@yahoo.com',1),(37,'wec','tarangrockr@yahoo.com',1),(38,'ewdcsDV','tarangrockr@yahoo.com',1),(39,'SD','tarangrockr@yahoo.com',2),(40,'ds','tarangrockr@yahoo.com',2),(41,'ASx','tarangrockr@yahoo.com',9),(42,'dfc','tarangrockr@yahoo.com',1),(43,'fg','tarangrockr@yahoo.com',1),(44,'fgd','tarangrockr@yahoo.com',1),(45,'nbv ','tarangrockr@yahoo.com',1),(46,'n ','tarangrockr@yahoo.com',1),(47,'a','tarangrockr@yahoo.com',1),(48,'','tarangrockr@yahoo.com',1),(49,'asdXC','tarangrockr@yahoo.com',1);
/*!40000 ALTER TABLE `comment_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editor`
--

DROP TABLE IF EXISTS `editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editor` (
  `id` int(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editor`
--

LOCK TABLES `editor` WRITE;
/*!40000 ALTER TABLE `editor` DISABLE KEYS */;
/*!40000 ALTER TABLE `editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fb_internal`
--

DROP TABLE IF EXISTS `fb_internal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_internal` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fb_internal`
--

LOCK TABLES `fb_internal` WRITE;
/*!40000 ALTER TABLE `fb_internal` DISABLE KEYS */;
INSERT INTO `fb_internal` VALUES ('Tarang Patel','Tarang','Patel','http://www.facebook.com/tarang.patel.184','','New English School','DA-IICT','male','English,Gujarati,Hindi',19,'tarangrockr@yahoo.com');
/*!40000 ALTER TABLE `fb_internal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_discussion`
--

DROP TABLE IF EXISTS `group_discussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_discussion` (
  `group_id` int(11) NOT NULL,
  `discussion` text NOT NULL,
  `posted_by_username` varchar(100) NOT NULL,
  `posted_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_discussion`
--

LOCK TABLES `group_discussion` WRITE;
/*!40000 ALTER TABLE `group_discussion` DISABLE KEYS */;
INSERT INTO `group_discussion` VALUES (1,'hi','tarangrockr@yahoo.com','2013-08-03 11:01:55');
/*!40000 ALTER TABLE `group_discussion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_member`
--

DROP TABLE IF EXISTS `group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_member` (
  `group_id` int(11) NOT NULL,
  `username_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_member`
--

LOCK TABLES `group_member` WRITE;
/*!40000 ALTER TABLE `group_member` DISABLE KEYS */;
INSERT INTO `group_member` VALUES (1,'vishal.2947@gmail.com'),(1,'neerajjoshi00@gmail.com'),(1,'cdhishna@gmail.com'),(1,'nishantgaurav101010@gmail.com'),(1,'myrgrg@gmail.com'),(1,'test123@gmail.com'),(1,'shivika_singla@yahoo.com'),(1,'vishal.2947@gmail.com'),(1,'nishantgaurav101010@gmail.com'),(1,'cdhishna@gmail.com'),(1,'myrgrg@gmail.com'),(1,'anshulmlhtr@gmail.com'),(1,'tarangrockr@yahoo.com'),(1,'tarangrockr@yahoo.com');
/*!40000 ALTER TABLE `group_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_notification`
--

DROP TABLE IF EXISTS `group_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_notification` (
  `group_id` int(11) NOT NULL,
  `notification` varchar(1000) NOT NULL,
  `posted_by_username` varchar(100) NOT NULL,
  `posted_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_notification`
--

LOCK TABLES `group_notification` WRITE;
/*!40000 ALTER TABLE `group_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_owner`
--

DROP TABLE IF EXISTS `group_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_owner` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(200) NOT NULL,
  `owner_user_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_owner`
--

LOCK TABLES `group_owner` WRITE;
/*!40000 ALTER TABLE `group_owner` DISABLE KEYS */;
INSERT INTO `group_owner` VALUES (1,'BrowseBoard Group',3),(2,'DA-IICT',3);
/*!40000 ALTER TABLE `group_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intercollege_events`
--

DROP TABLE IF EXISTS `intercollege_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intercollege_events` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intercollege_events`
--

LOCK TABLES `intercollege_events` WRITE;
/*!40000 ALTER TABLE `intercollege_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `intercollege_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_article`
--

DROP TABLE IF EXISTS `like_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `like_article` (
  `article_id` int(11) NOT NULL,
  `posted_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_article`
--

LOCK TABLES `like_article` WRITE;
/*!40000 ALTER TABLE `like_article` DISABLE KEYS */;
INSERT INTO `like_article` VALUES (20,'test123@gmail.com'),(20,'test123@gmail.com');
/*!40000 ALTER TABLE `like_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_group_notification`
--

DROP TABLE IF EXISTS `member_group_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_group_notification` (
  `username` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_group_notification`
--

LOCK TABLES `member_group_notification` WRITE;
/*!40000 ALTER TABLE `member_group_notification` DISABLE KEYS */;
INSERT INTO `member_group_notification` VALUES ('tarangrockr@yahoo.com',1,'hello','2013-06-13 09:58:36'),('tarangrockr@yahoo.com',1,'Test','2013-06-13 11:10:23'),('tarangrockr@yahoo.com',1,'test2','2013-06-13 11:14:07'),('tarangrockr@yahoo.com',1,'hi','2013-06-13 11:24:22'),('tarangrockr@yahoo.com',1,'New one !','2013-06-13 11:25:22'),('tarangrockr@yahoo.com',1,'hi!','2013-06-14 00:32:33');
/*!40000 ALTER TABLE `member_group_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moderator`
--

DROP TABLE IF EXISTS `moderator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moderator` (
  `id` int(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moderator`
--

LOCK TABLES `moderator` WRITE;
/*!40000 ALTER TABLE `moderator` DISABLE KEYS */;
/*!40000 ALTER TABLE `moderator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_event`
--

DROP TABLE IF EXISTS `personal_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_event` (
  `user_id` int(25) NOT NULL,
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `venue` varchar(50) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_event`
--

LOCK TABLES `personal_event` WRITE;
/*!40000 ALTER TABLE `personal_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `question_id` int(5) NOT NULL AUTO_INCREMENT,
  `question_cat` varchar(500) NOT NULL,
  `question_sub_cat` varchar(500) NOT NULL,
  `question` text NOT NULL,
  `email` varchar(500) NOT NULL,
  `posted_by` varchar(100) NOT NULL,
  `number_of_likes` int(5) NOT NULL,
  `posted_date` datetime NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'academics','course_detail','Can someone please give me the previous year DSA paper?','tarangrockr@gmail.com','Tarang',2,'2013-07-03 00:00:00'),(2,'academics','course_detail','How much package is offered by Direct-I?','vishal.2947@gmail.com','Vishal',3,'2013-05-15 00:00:00'),(3,'academics','course_detail','Which are the core courses in 5th semester?','tarangrockr@gmail.com','Tarang',1,'2013-06-08 00:00:00'),(4,'academics','course_detail','When will be our annual fest this year?','vishal.2947@gmail.com','Vishal',5,'2013-06-23 00:00:00'),(5,'academics','course_detail','Which professor will take Algorithm course?','tarangrockr@gmail.com','Tarang',9,'2013-06-03 00:00:00');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `no_of_post` int(5) NOT NULL,
  `no_of_que` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (1,1,'course_detail',4,4),(2,1,'teacher_review',0,0),(3,1,'projects',0,0),(4,1,'scholarships',0,0),(5,2,'boards_and_clubs',0,0),(6,2,'college_fests',0,0),(7,2,'politics_and_pors',0,0),(8,2,'news',0,0),(9,3,'where_to_apply',0,0),(10,3,'how_to_apply',0,0),(11,3,'internship_reviews',0,0),(12,3,'general_rules',0,0),(13,4,'previous_statistics',0,0),(14,4,'latest_updates',0,0),(15,4,'preparation_fundae',0,0),(16,4,'visiting_companies',0,0);
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_academics`
--

DROP TABLE IF EXISTS `user_academics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_academics` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_academics`
--

LOCK TABLES `user_academics` WRITE;
/*!40000 ALTER TABLE `user_academics` DISABLE KEYS */;
INSERT INTO `user_academics` VALUES (1,'New English School','DA-IICT','B.Tech','Computer Science',2013,2015,NULL,NULL,NULL,NULL),(2,'St. Annes High School','DA-IICT','B.Tech','Computer Science',2013,2015,NULL,NULL,NULL,NULL),(3,'Delhi Public School','NIT-Warangal','B.Tech','Computer Science',2013,2015,NULL,NULL,NULL,NULL),(4,'St. Xaviers School','IIT-Delhi','B.Tech','Mechanical',2013,2014,NULL,NULL,NULL,NULL),(5,'New English School','DDIT','B.Tech','Electronics',2013,2015,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_academics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_detail`
--

DROP TABLE IF EXISTS `user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_detail` (
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_detail`
--

LOCK TABLES `user_detail` WRITE;
/*!40000 ALTER TABLE `user_detail` DISABLE KEYS */;
INSERT INTO `user_detail` VALUES (3,'tarangrockr@yahoo.com','Tarang','Patel',NULL,'Male',NULL,NULL,NULL,'123456',0,NULL,NULL,NULL,NULL,NULL,NULL,'IIT DELHI',0,'0000-00-00 00:00:00'),(11,'test123@gmail.com','test','123',NULL,'Male',NULL,NULL,NULL,'test123',0,NULL,NULL,NULL,NULL,NULL,NULL,'IIT DELHI',0,'0000-00-00 00:00:00'),(12,'shivika_singla@yahoo.com','shivika','singla',NULL,'Femal',NULL,NULL,NULL,'shivika',0,NULL,NULL,NULL,NULL,NULL,NULL,'Others',0,'0000-00-00 00:00:00'),(13,'vishal.2947@gmail.com','Vishal','Kumar',NULL,'Male',NULL,NULL,NULL,'vishal',0,NULL,NULL,NULL,NULL,NULL,NULL,'IIT DELHI',0,'0000-00-00 00:00:00'),(14,'nishantgaurav101010@gmail.com','Nishant','Gaurav',NULL,'Male',NULL,NULL,NULL,'vertibrata',0,NULL,NULL,NULL,NULL,NULL,NULL,'JEC JABALPUR',0,'0000-00-00 00:00:00'),(15,'cdhishna@gmail.com','dhishna','chandnani',NULL,'Femal',NULL,NULL,NULL,'123456',0,NULL,NULL,NULL,NULL,NULL,NULL,'IIT DELHI',0,'0000-00-00 00:00:00'),(16,'myrgrg@gmail.com','myr','grg',NULL,'Male',NULL,NULL,NULL,'grgmyr',0,NULL,NULL,NULL,NULL,NULL,NULL,'IIT DELHI',0,'0000-00-00 00:00:00'),(17,'anshulmlhtr@gmail.com','Anshul','Malhotra',NULL,'Male',NULL,NULL,NULL,'testing',0,NULL,NULL,NULL,NULL,NULL,NULL,'IIT DELHI',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `user_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-17 18:07:23
