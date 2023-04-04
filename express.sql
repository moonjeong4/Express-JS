-- MariaDB dump 10.19  Distrib 10.11.2-MariaDB, for osx10.18 (arm64)
--
-- Host: localhost    Database: express_checkout
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `key` varchar(100) DEFAULT NULL,
  `menu_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES
(1,'The \"English\" in Programming Language','<p>JavaScript is a high-level, dynamic programming language that is widely used for creating interactive web pages and building server-side applications. It can be executed on both client-side and server-side and is a key component of the web development stack. JavaScript is a flexible language that supports object-oriented, functional, and procedural programming paradigms. It has a wide range of built-in functions and libraries that make it easy to perform tasks such as manipulating the DOM, handling user events, and making HTTP requests. With its popularity and versatility, JavaScript has become an essential tool for web developers and is constantly evolving with new features and updates.</p>','js',1),
(2,'The most Important Language for AI  ','<p>Python is a high-level, interpreted programming language that is widely used for developing a wide range of applications, including web development, scientific computing, artificial intelligence, and data analysis. It has a simple syntax and a large standard library, making it easy to learn and use for beginners and experts alike. Python supports various programming paradigms such as object-oriented, functional, and procedural programming, making it flexible and versatile. Python has a wide range of third-party libraries and frameworks, including NumPy, Pandas, Django, Flask, and TensorFlow, which makes it easy to extend its capabilities and build complex applications. With its popularity and community support, Python is one of the most widely used programming languages in the world.</p>','py',2),
(3,'Photos','Photos of the Languages','photo',3),
(4,'Popular programming Languages','<h2>List of popular Languages</h2><ul><li>JS</li><li>Python</li><li>Java</li><li>C#</li><li>PHP</li></ul>','list',-1);
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `photo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `date_modified` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES
(1,'js.png','JavaScript is a dynamic, high-level programming language used primarily for creating interactive web pages and building server-side applications.','2023-03-23 09:29:12'),
(2,'python.png','Python is a high-level, versatile programming language widely used for web development, scientific computing, artificial intelligence, and data analysis, with a simple syntax and large standard library.','2023-03-23 09:29:12'),
(3,'java.png','Java is an object-oriented, platform-independent programming language widely used for building enterprise-level applications and Android mobile apps, with a focus on reliability, scalability, and security.','2023-03-23 09:29:12'),
(4,'c.png','C# is an object-oriented programming language developed by Microsoft, primarily used for building Windows desktop applications, web applications, and games, with a focus on simplicity, performance, and scalability.','2023-03-24 09:33:18'),
(5,'php.png','PHP is a server-side, open-source scripting language used for creating dynamic web pages and web applications, with a focus on simplicity, flexibility, and ease of use.','2023-03-24 10:50:27');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `passHash` varchar(100) DEFAULT NULL,
  `cookieHash` varchar(100) DEFAULT NULL,
  `date_modified` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_UN` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
(2,'bob','bob@a.b.com','A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ=','Shf+sbZArGGleppXhnIvoTZu3+DcxTbUA7ZIT/SMzNM=','2023-03-24 11:57:00');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'express_checkout'
--
