-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: transcan
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'someemail@someemailprovider.com','1234567','yosef'),(2,'someemail@someemailprovider.com','13654','edan'),(3,'asd@dasdjhb.daijc','affaDZV','fdgsfg'),(4,'newEmail@dc.com','1235r32','jlasda'),(5,'newEmail@dc.com','1235r32','rorrrr'),(6,'adsfadfudabf3@fnfjnasd.cnkn','asdjbjad','asjdbasjdnasjd'),(9,'ggg-@dhuagds.com','dsss','gggg'),(8,'ddddd@ddd,cc','dsss','bbbb'),(10,'d@gmail.com','sdfwe','5566'),(11,'d@hotmail.com','askdnkn1','dskfnsdfkn'),(12,'y@gljadsfmn.clomad','dslfjknlkn','kdsfnlnk;nasdfk;'),(13,'asdhb@rfeqkjn.cojm','jkabdfuad','asdfjb'),(14,'niceTry2@gmail.com','dadasd','dasdasd'),(29,'asdfghy2@Edflc.dfg','asdfsg','asdfg'),(28,'adssfgdh@sdfg.dfg','asdfdgs','asdfsgrh'),(27,'woody@gmail.com','dfjngvbgfodm','woodyq'),(26,'ronny@gmail.com','123456788t5','ronny'),(25,'swdf@fmv.com','dfkgjn','asdasda'),(24,'sdfvbg@erfgbn.comqwd','sdfgh','dasdf'),(30,'asdfgh@erfghj.dfgh','adfsgdh','asdfgscdvb'),(31,'','',''),(32,'asdfg@wedfg.cokm','sdfg','asdfsg');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-27 18:53:16
