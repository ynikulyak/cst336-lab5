-- MySQL dump 10.13  Distrib 5.7.21, for osx10.13 (x86_64)
--
-- Host: localhost    Database: gallery
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imageURL` varchar(250) DEFAULT NULL,
  `keyword` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (4,'https://images.unsplash.com/photo-1539051173202-d9afd58ff2ec?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','shasta'),(5,'https://images.unsplash.com/flagged/photo-1552723548-1ad0bf6c01d8?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','shasta'),(7,'https://images.unsplash.com/photo-1549464453-3ae655016009?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','shasta'),(8,'https://images.unsplash.com/photo-1490717272203-9648e4e6c0e9?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','shasta'),(10,'https://images.unsplash.com/photo-1554443912-a60989f44470?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','shasta'),(12,'https://images.unsplash.com/photo-1555949260-6f8187a2c791?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','shasta'),(13,'https://images.unsplash.com/photo-1446483284190-e09276f22d63?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','titicaca'),(14,'https://images.unsplash.com/photo-1525273383181-9a85bed460db?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','titicaca'),(17,'https://images.unsplash.com/photo-1548296404-93c7694b2f91?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','Ayers'),(18,'https://images.unsplash.com/photo-1557214997-7eae7e0e7aaa?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','Ayers'),(19,'https://images.unsplash.com/photo-1558954987-09922f5d9db7?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','Ayers'),(20,'https://images.unsplash.com/flagged/photo-1557544442-6db57d5a1e06?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','Ayers'),(21,'https://images.unsplash.com/photo-1532461381116-7a21d25913d0?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','Ayers'),(22,'https://images.unsplash.com/photo-1483124512199-20f9238e8d36?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','maui'),(23,'https://images.unsplash.com/photo-1466129646777-494b376a670c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','maui'),(24,'https://images.unsplash.com/photo-1435783099294-283725c37230?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','maui'),(25,'https://images.unsplash.com/photo-1483387367452-9732d708707a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','maui'),(26,'https://images.unsplash.com/photo-1553550765-41e7dff2bd41?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','titicaca'),(27,'https://images.unsplash.com/photo-1553550755-e6c236f88586?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','titicaca'),(29,'https://images.unsplash.com/photo-1465677335685-41a4de4c9618?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','maui'),(30,'https://images.unsplash.com/photo-1473258015677-1867afec69cd?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','maui'),(31,'https://images.unsplash.com/photo-1468083684825-012f39547b23?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','maui'),(32,'https://images.unsplash.com/photo-1465154691290-9c832d70f915?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','maui'),(33,'https://images.unsplash.com/photo-1506443973078-d91aa73c0928?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','maui'),(34,'https://images.unsplash.com/photo-1522020948636-de345a6db2bc?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','Ayers'),(38,'https://images.unsplash.com/photo-1527539139301-90f47f7df28d?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ',NULL),(41,'https://images.unsplash.com/photo-1505150099521-fde7970bcc3a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','love'),(42,'https://images.unsplash.com/photo-1486883946029-688a0f02d71f?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','love'),(43,'https://images.unsplash.com/photo-1482697749964-bb7784da1190?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','love'),(44,'https://images.unsplash.com/photo-1482235225574-c37692835cf3?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','love'),(46,'https://images.unsplash.com/photo-1490648768555-b28fc50ba291?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','love'),(47,'https://images.unsplash.com/photo-1521668875728-e603f76d3a9c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','journey'),(48,'https://images.unsplash.com/photo-1486976862325-fbac7b41739b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','journey'),(49,'https://images.unsplash.com/photo-1446581804434-d1aca963b411?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','journey'),(50,'https://images.unsplash.com/photo-1460563594877-adf295bdf0ab?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','journey'),(52,'https://images.unsplash.com/photo-1469514115399-80ff752812ff?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','journey'),(53,'https://images.unsplash.com/photo-1444086798547-11000e647498?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjgzMzgzfQ','journey');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-28 21:42:02
