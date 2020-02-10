/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.7.27-0ubuntu0.18.04.1 : Database - skripsi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`skripsi` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `skripsi`;

/*Table structure for table `client_company` */

DROP TABLE IF EXISTS `client_company`;

CREATE TABLE `client_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameCompany` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  `kontrak` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `client_company` */

insert  into `client_company`(`id`,`nameCompany`,`address`,`role`,`kontrak`) values (3,'Pt. ABC','kebayoran lama','Hotel',1);

/*Table structure for table `company_client` */

DROP TABLE IF EXISTS `company_client`;

CREATE TABLE `company_client` (
  `int` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `alamat` text,
  `kontrak` int(11) DEFAULT NULL,
  PRIMARY KEY (`int`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `company_client` */

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

/*Table structure for table `migration` */

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `migration` */

insert  into `migration`(`version`,`apply_time`) values ('m000000_000000_base',1579045517),('m130524_201442_init',1579045523),('m140602_111327_create_menu_table',1579248194),('m160312_050000_create_user',1579248194),('m190124_110200_add_verification_token_column_to_user_table',1579045523);

/*Table structure for table `penilaian` */

DROP TABLE IF EXISTS `penilaian`;

CREATE TABLE `penilaian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `q_id` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `val_que` int(11) DEFAULT NULL,
  `val_per` int(11) DEFAULT NULL,
  `cretaed_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `penilaian` */

insert  into `penilaian`(`id`,`userid`,`q_id`,`p_id`,`val_que`,`val_per`,`cretaed_at`,`created_by`) values (1,3,1,1,4,5,'2020-01-27 22:10:17',NULL),(2,3,2,2,4,5,'2020-01-27 22:10:23',NULL),(3,3,3,3,4,4,'2020-01-27 22:10:27',NULL),(4,3,4,4,4,5,'2020-01-27 22:10:30',NULL),(5,3,5,5,4,4,'2020-01-27 22:10:35',NULL);

/*Table structure for table `persepsi` */

DROP TABLE IF EXISTS `persepsi`;

CREATE TABLE `persepsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `p1` int(5) DEFAULT NULL,
  `p2` int(5) DEFAULT NULL,
  `p3` int(5) DEFAULT NULL,
  `p4` int(5) DEFAULT NULL,
  `p5` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `persepsi` */

insert  into `persepsi`(`id`,`userid`,`p1`,`p2`,`p3`,`p4`,`p5`) values (1,5,4,5,5,5,5),(2,5,5,5,5,5,5),(3,5,4,5,5,5,5),(4,5,5,5,5,4,5),(5,5,4,4,4,4,4);

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `question` */

insert  into `question`(`id`,`question`) values (1,'apa?');

/*Table structure for table `question_persepsi` */

DROP TABLE IF EXISTS `question_persepsi`;

CREATE TABLE `question_persepsi` (
  `id` int(11) NOT NULL,
  `p1` varchar(100) DEFAULT NULL,
  `p2` varchar(100) DEFAULT NULL,
  `p3` varchar(100) DEFAULT NULL,
  `p4` varchar(100) DEFAULT NULL,
  `p5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `question_persepsi` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`,`verification_token`) values (1,'admin','_aLLSQBZ5Rj0cyav-ZEfA8cLZgX2iZGr','$2y$13$aknOWDDfqwbbDXLMCYvjwOLgFLMUjY/3wz7d8.tfbH4/Z9k6BjZr2',NULL,'admin@gmil.com',9,1579045641,1579045641,'gIXdnW_dxxyiphgjzsMXo6NyFikl_5a2_1579045641');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
