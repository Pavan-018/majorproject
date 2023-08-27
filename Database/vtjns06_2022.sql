/*
SQLyog Community v8.71 
MySQL - 5.5.30 : Database - vtjns06_2022
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vtjns06_2022` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `vtjns06_2022`;

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `fid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `mid` int(10) NOT NULL AUTO_INCREMENT,
  `sid` int(10) DEFAULT NULL,
  `rid` int(10) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `rname` varchar(255) DEFAULT NULL,
  `image1` longblob,
  `image2` longblob,
  `image3` longblob,
  `secretimage` longblob,
  `skey` varchar(255) DEFAULT NULL,
  `encryptedimage` longblob,
  `encryptedkey` varchar(255) DEFAULT NULL,
  `sharedimage` longblob,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mid`),
  KEY `sid` (`sid`),
  KEY `rid` (`rid`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `userdetails` (`uid`),
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `userdetails` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `message` */

/*Table structure for table `userdetails` */

DROP TABLE IF EXISTS `userdetails`;

CREATE TABLE `userdetails` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userdetails` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
