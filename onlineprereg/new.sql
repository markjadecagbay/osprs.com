/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.21-MariaDB : Database - avs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`avs` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `avs`;

/*Table structure for table `new_student` */

DROP TABLE IF EXISTS `new_student`;

CREATE TABLE `new_student` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lrn` bigint(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birthdate` date NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `height` int(10) NOT NULL,
  `weight` int(10) NOT NULL,
  `number` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `school` varchar(100) NOT NULL,
  `year` int(10) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `track` varchar(100) NOT NULL,
  `school_add` varchar(100) NOT NULL,
  `emergency_person` varchar(100) NOT NULL,
  `contact_num` int(20) NOT NULL,
  `guardians_name` varchar(100) NOT NULL,
  `g_address` varchar(100) NOT NULL,
  `g_cpnum` bigint(20) NOT NULL,
  `abc` blob DEFAULT NULL,
  `agm` blob DEFAULT NULL,
  `af` blob DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `cp` bigint(50) DEFAULT NULL,
  `adde` varchar(100) DEFAULT NULL,
  `ag` int(10) DEFAULT NULL,
  `bd` date DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `occu` varchar(100) DEFAULT NULL,
  `cpn` bigint(50) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `a` int(10) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4;

/*Data for the table `new_student` */

insert  into `new_student`(`id`,`lrn`,`name`,`age`,`gender`,`birthdate`,`address1`,`address2`,`height`,`weight`,`number`,`email`,`school`,`year`,`semester`,`track`,`school_add`,`emergency_person`,`contact_num`,`guardians_name`,`g_address`,`g_cpnum`,`abc`,`agm`,`af`,`fname`,`occupation`,`cp`,`adde`,`ag`,`bd`,`mname`,`occu`,`cpn`,`addr`,`a`,`birth`) values 
(37,124762567898,'juana dela cruz',18,'Female','2000-10-10','paddad','alicia',30,30,945458884,'juandelacruz@email.com','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(40,987156209811,'Erika Joy Ancheta Garcia',21,'Female','2000-10-10','paddad','paddad',30,30,9785222365,'juandelacruz@email.com','anhs',2018,'First Semester','I.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(42,451420987111,'Abegail Santos',21,'Female','2000-10-10','paddad','alicia',30,30,9685133958,'juandelacruz@email.com','anhs',2018,'Second Semester','A.F.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(43,511092541811,'Hilda Gonzales',21,'Male','2000-10-10','Sta. Cruz, Alicia, Isabela','paddad',30,30,9875455215,'juandelacruz@email.com','anhs',2018,'First Semester','H.E','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(44,210972483712,'Justin Garcia',21,'Male','2000-10-10','paddad','alicia',30,30,9875633016,'juandelacruz@email.com','anhs',2018,'Second Semester','I.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(46,698789541235,'Karl Delos Santos',21,'Male','2000-10-10','paddad','alicia',30,30,9268799598,'juandelacruz@email.com','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(47,789562465895,'Mark Jade Cagbay',21,'Male','2000-10-10','paddad','paddad',30,30,9169800928,'juandelacruz@email.com','anhs',2018,'First Semester','I.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(48,897589641235,'Ara Mea Gonzales',21,'Female','2000-10-10','paddad','alicia',30,30,9364224351,'juandelacruz@email.com','anhs',2018,'Second Semester','A.F.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(49,985621360456,'Mark Joseph Santos',21,'Male','2000-10-10','paddad','paddad',30,30,9685944785,'juandelacruz@email.com','anhs',2018,'First Semester','H.E','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(50,108564123964,'Juan Dela Cruz',21,'Male','2000-10-10','paddad','alicia',30,30,9547955123,'juandelacruz@email.com','anhs',2018,'Second Semester','I.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(52,125789648753,'Aries Acosta',21,'Male','2000-10-10','paddad','alicia',30,30,9315788965,'juandelacruz@email.com','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(53,146325789875,'Shaina Raro',21,'Female','2000-10-10','paddad','alicia',30,30,9125799548,'juandelacruz@email.com','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(54,136987452865,'Jerick Robredo',22,'Male','2000-10-10','paddad','paddad',30,30,9163244563,'juandelacruz@email.com','anhs',2018,'First Semester','I.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(55,158698748589,'Anna Cortez',22,'Female','2000-10-10','paddad','paddad',30,30,9163244563,'juandelacruz@email.com','anhs',2018,'First Semester','A.F.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(56,1758974589621,'Trisha Morales',21,'Female','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'First Semester','I.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(57,589317698462,'Roland Ubando',21,'Male','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'Second Semester','A.F.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(58,367895415789,'Dioselyn Delos Santos',21,'Female','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'First Semester','H.E','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(59,456983126798,'Christian Martinez',21,'Male','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'Second Semester','I.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(60,225478963215,'Janice Santiago',21,'Female','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'First Semester','A.F.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(61,124789653547,'Justin Gonzaga',21,'Male','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(62,319745202315,'Joseph Ramirez',21,'Male','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'First Semester','I.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(63,878954786214,'Nicole Cortova',21,'Female','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'Second Semester','A.F.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(64,852360147895,'Billy Aquino',21,'Male','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'First Semester','H.E','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(65,889541230265,'Mike Cristobal',21,'Male','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'Second Semester','I.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(66,874563120255,'Gretchen Jacinto',21,'Female','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'Second Semester','A.F.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(67,897541230010,'John John Corpuz',21,'Male','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'First Semester','H.E','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(68,789000123648,'Marichu Navarro',21,'Female','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'Second Semester','I.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(69,556002147895,'Laica Bayang',21,'Female','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'First Semester','A.F.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(70,785236120025,'Rachel Olidan',21,'Female','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(71,523698741032,'Junel Delos Reyes',21,'Male','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'First Semester','I.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(72,987456963210,'Jhun Simon',21,'Male','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'Second Semester','A.F.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10'),
(74,987541236985,'Vilmer Valdez',21,'Male','2000-10-10','paddad','alicia',30,30,9856144789,'juandelacruz@email.com','anhs',2018,'Second Semester','A.F.A','paddad, alicia, isabela','',0,'','',0,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Juan dela cruz jr','mechanic',2147483647,'alicia',22,'2000-02-10','Juana Dela Cruz','house wife',2147483647,'alicia',40,'2000-10-10');

/*Table structure for table `old_student` */

DROP TABLE IF EXISTS `old_student`;

CREATE TABLE `old_student` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lrn` bigint(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birthdate` date NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `height` int(10) NOT NULL,
  `weight` int(10) NOT NULL,
  `number` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `school` varchar(100) NOT NULL,
  `year` int(10) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `track` varchar(100) NOT NULL,
  `school_add` varchar(100) NOT NULL,
  `emergency_person` varchar(100) NOT NULL,
  `contact_num` int(20) NOT NULL,
  `guardians_name` varchar(100) NOT NULL,
  `g_address` varchar(100) NOT NULL,
  `g_cpnum` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4;

/*Data for the table `old_student` */

insert  into `old_student`(`id`,`lrn`,`name`,`age`,`gender`,`birthdate`,`address1`,`address2`,`height`,`weight`,`number`,`email`,`school`,`year`,`semester`,`track`,`school_add`,`emergency_person`,`contact_num`,`guardians_name`,`g_address`,`g_cpnum`) values 
(36,895478589658,'Vhin Navarro',22,'Male','1999-10-06','Sta.Cruz','Sta.Cruz ',142,45,639169800928,'arameagonzales@gmail.com','anhs',2018,'First Semester','H.E','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',9785655847),
(37,57895479632,'Gracy Valdez',22,'Female','1999-10-06','Sta.Cruz','Sta.Cruz ',142,45,639169800928,'arameagonzales@gmail.com','anhs',2018,'First Semester','A.F.A','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',9785655847),
(38,936124578957,'Christine Santiago',22,'Female','1999-10-06','Sta.Cruz','Sta.Cruz ',142,45,639169800928,'arameagonzales@gmail.com','anhs',2018,'First Semester','I.A','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',9785655847),
(39,123654789512,'John Hidalgo',22,'Male','1999-10-06','Sta.Cruz','Sta.Cruz ',142,45,639169800928,'arameagonzales@gmail.com','anhs',2018,'First Semester','H.E','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',9785655847),
(40,201369112325,'Jetrix Navarro',22,'Male','1999-10-06','Sta.Cruz','Sta.Cruz ',142,45,639169800928,'arameagonzales@gmail.com','anhs',2018,'First Semester','A.F.A','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',9785655847),
(41,312642126488,'Joselito Cruz',22,'Male','1999-10-06','Sta.Cruz','Sta.Cruz ',142,45,639169800928,'arameagonzales@gmail.com','anhs',2018,'First Semester','I.A','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',9785655847),
(42,102365412036,'Marco Ancheta',22,'Male','1999-10-06','Sta.Cruz','Sta.Cruz ',142,45,639169800928,'arameagonzales@gmail.com','anhs',2018,'First Semester','H.E','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',9785655847),
(43,103654795485,'Simon Santos',22,'Male','1999-10-06','Sta.Cruz','Sta.Cruz ',142,45,639169800928,'arameagonzales@gmail.com','anhs',2018,'First Semester','A.F.A','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',9785655847),
(44,152350045023,'Ara Mea Gonzales',22,'Female','1999-10-06','Sta.Cruz','Sta.Cruz ',142,45,639169800928,'arameagonzales@gmail.com','anhs',2018,'First Semester','I.A','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',9785655847),
(45,123014569875,'Mark Jade Cagbay',22,'Male','1999-10-31','antonino, alicia, isabela','antonino, alicia, isabela',162,65,9169800928,'jadecagbay@gmai.com','anhs',2018,'First Semester','H.E','antonino, alicia, isabela','rolando cagbay',2147483647,'rolando cagbay','antonino, alicia, isabela',9169800928),
(46,236987452511,'Jade Martinez',22,'Male','1999-10-31','antonino, alicia, isabela','antonino, alicia, isabela',162,65,9169800928,'jadecagbay@gmai.com','anhs',2018,'First Semester','A.F.A','antonino, alicia, isabela','rolando cagbay',2147483647,'rolando cagbay','antonino, alicia, isabela',9169800928),
(47,256413203256,'Joy Paquiz',22,'Female','1999-10-31','antonino, alicia, isabela','antonino, alicia, isabela',162,65,9169800928,'jadecagbay@gmai.com','anhs',2018,'First Semester','I.A','antonino, alicia, isabela','rolando cagbay',2147483647,'rolando cagbay','antonino, alicia, isabela',9169800928),
(48,213601245875,'Japeth De Guzman',22,'Male','1999-10-31','antonino, alicia, isabela','antonino, alicia, isabela',162,65,9169800928,'jadecagbay@gmai.com','anhs',2018,'First Semester','H.E','antonino, alicia, isabela','rolando cagbay',2147483647,'rolando cagbay','antonino, alicia, isabela',9169800928),
(49,21039784585,'Renie Arucan',22,'Male','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','A.F.A','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(50,547896124365,'Nelson Legaspi',22,'Male','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','I.A','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(51,152350045898,'Erika Joy Ancheta Garcia',22,'Female','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',30,35,639169800928,'erikajoy@email.com','AVS',2018,'First Semester','A.F.A','Del pilar, alicia, isabela','Erika Joy Garcia',2147483647,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9567876542),
(52,231020312426,'Angelica Aguinaldo',22,'Female','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','H.E','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(53,300212321252,'Lenny Dela Penna',22,'Female','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','I.A','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(54,210321245212,'Dianne Robredo',22,'Female','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','A.F.A','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(55,201321021023,'Mark Justin Barrientos',22,'Male','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','H.E','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(56,103201203120,'Jeric Remocal',22,'Male','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','I.A','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(57,200301231232,'Hazel Juarizo',22,'Female','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','A.F.A','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(58,220130123124,'Rachell Taberna',22,'Female','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','H.E','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(59,130231624321,'Angelica Cordova',22,'Female','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','I.A','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(60,456712023212,'Ivan Balliemos',22,'Male','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','A.F.A','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(61,895784875845,'Dave Corpuz',22,'Male','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','H.E','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(62,301020215245,'John Loyd Singpet',22,'Male','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','I.A','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(63,203152031232,'Nearwin Garino',22,'Male','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','A.F.A','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(64,321523001203,'Jun Robillos',22,'Male','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','H.E','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(65,203010213125,'Christian Salvador',22,'Male','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','I.A','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(66,254631252314,'Charina Milan',22,'Female','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','A.F.A','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(67,313215452123,'Marisol Carreon',22,'Female','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','H.E','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(68,132024562123,'Paul Santiago',22,'Male','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','I.A','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(69,123002123252,'Cedrick Gaspar',22,'Male','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','A.F.A','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(70,589310325625,'Ysabel Aguinaldo',22,'Female','2000-10-04','Del Pilar, Alicia, Isabela','Del Pilar, Alicia, Isabela',145,45,9847855858,'erikajoy@email.com','ANHS',2018,'Second Semester','H.E','paddad, alicia, isabela','Erika Joy Garcia',0,'Erika Joy Garcia','Del pilar, Alicia, Isabela',9457855878),
(71,230121231212,'Mark Jade Navarro Cagbay',22,'Male','1999-10-31','Antonino, Alicia, Isabela','Antonino, Alicia, Isabela',163,65,639169800928,'jadecagbay@gmail.com','Alicia National High School',2018,'First Semester','A.F.A','Paddad, Alicia, Isabela','Rolando Cagbay Jr.',2147483647,'Rolando Cagbay Jr.','Antonino, Alicia, Isabela',9169800928);

/*Table structure for table `student_info` */

DROP TABLE IF EXISTS `student_info`;

CREATE TABLE `student_info` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `roll` int(6) NOT NULL,
  `class` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `pcontact` varchar(11) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `roll` (`roll`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

/*Data for the table `student_info` */

insert  into `student_info`(`id`,`name`,`roll`,`class`,`city`,`pcontact`,`photo`,`datetime`) values 
(41,'Ajharul Islam',444433,'1st','House#15, Ward#','01944444444','4444332020-06-06-06-58.jpg','2020-06-07 00:17:58'),
(43,'Majhar Rakib',444439,'2nd','House#1eww','01812888858','4444392020-06-06-06-53.jpg','2020-06-07 00:18:53'),
(44,'kutub ussin',443322,'4th','Dhaka, Banglade','01797159600','4433222020-06-06-06-28.jpg','2020-06-07 00:19:28'),
(45,'Shirin Akter',443342,'2nd','Dhaka, Banglade','01797159600','4433422020-06-06-06-51.jpg','2020-06-07 00:19:51'),
(47,'utfol kumar das',443353,'2nd','Dhaka, Banglade','01814270541','4433532020-06-06-06-32.jpg','2020-06-07 00:21:32');

/*Table structure for table `trans_student` */

DROP TABLE IF EXISTS `trans_student`;

CREATE TABLE `trans_student` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lrn` bigint(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birthdate` date NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `height` int(10) NOT NULL,
  `weight` int(10) NOT NULL,
  `number` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `grade` varchar(20) NOT NULL,
  `school` varchar(100) NOT NULL,
  `year` int(10) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `track` varchar(100) NOT NULL,
  `school_add` varchar(100) NOT NULL,
  `emergency_person` varchar(100) NOT NULL,
  `contact_num` bigint(20) NOT NULL,
  `guardians_name` varchar(100) NOT NULL,
  `g_address` varchar(100) NOT NULL,
  `g_cpnum` bigint(20) NOT NULL,
  `abc` varchar(100) DEFAULT NULL,
  `agm` varchar(100) DEFAULT NULL,
  `af` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `cp` bigint(50) DEFAULT NULL,
  `adde` varchar(100) DEFAULT NULL,
  `ag` int(10) DEFAULT NULL,
  `bd` date DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `occu` varchar(100) DEFAULT NULL,
  `cpn` bigint(50) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `a` int(10) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

/*Data for the table `trans_student` */

insert  into `trans_student`(`id`,`lrn`,`name`,`age`,`gender`,`birthdate`,`address1`,`address2`,`height`,`weight`,`number`,`email`,`grade`,`school`,`year`,`semester`,`track`,`school_add`,`emergency_person`,`contact_num`,`guardians_name`,`g_address`,`g_cpnum`,`abc`,`agm`,`af`,`fname`,`occupation`,`cp`,`adde`,`ag`,`bd`,`mname`,`occu`,`cpn`,`addr`,`a`,`birth`) values 
(25,2147483647,'Mark Jade Cagbay',22,'Male','1999-10-06','Sta.Cruz','Sta.Cruz ',162,45,2147483647,'arameagonzales@gmail.com','Grade 11','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',2147483647,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gerardo Gonzales','Farmer',2147483647,'Sta.Cruz',79,'1978-10-10','Rogelia Gonzales','house wife',2147483647,'Sta.Cruz',65,'1975-02-19'),
(26,898785489544,'Ara Mea Gonzales',22,'Female','1999-10-06','Sta.Cruz','Sta.Cruz ',162,45,9364224351,'arameagonzales@gmail.com','Grade 12','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','Rogelia Gonzales',9457855215,'Rogelia Gonzales','Sta.Cruz',9874588985,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gerardo Gonzales','Farmer',9364224351,'Sta.Cruz',79,'1978-10-10','Rogelia Gonzales','house wife',9548788987,'Sta.Cruz',65,'1975-02-19'),
(27,321458796545,'Erika Joy Garcia',22,'Female','1999-10-06','Sta.Cruz','Sta.Cruz ',162,45,9139877458,'erikajoy@gmail.com','Grade 11','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',2147483647,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gerardo Gonzales','Farmer',2147483647,'Sta.Cruz',79,'1978-10-10','Rogelia Gonzales','house wife',2147483647,'Sta.Cruz',65,'1975-02-19'),
(28,231463212321,'Tino Dela Cruz',22,'Male','1999-10-06','Alicia','Alicia',162,45,9875844858,'juandelacruz@gmail.com','Grade 12','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',2147483647,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gerardo Gonzales','Farmer',2147483647,'Sta.Cruz',79,'1978-10-10','Rogelia Gonzales','house wife',2147483647,'Sta.Cruz',65,'1975-02-19'),
(29,246984512352,'Mary Ann Del Rosario',22,'Female','1999-10-06','Alicia','Alicia',162,45,9875844858,'juandelacruz@gmail.com','Grade 11','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',2147483647,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gerardo Gonzales','Farmer',2147483647,'Sta.Cruz',79,'1978-10-10','Rogelia Gonzales','house wife',2147483647,'Sta.Cruz',65,'1975-02-19'),
(30,220113641252,'Juanico Benitez',22,'Male','1999-10-06','Alicia','Alicia',162,45,9875844858,'juandelacruz@gmail.com','Grade 12','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',2147483647,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gerardo Gonzales','Farmer',2147483647,'Sta.Cruz',79,'1978-10-10','Rogelia Gonzales','house wife',2147483647,'Sta.Cruz',65,'1975-02-19'),
(31,330120212035,'Jayzel Alvarado',22,'Female','1999-10-06','Alicia','Alicia',162,45,9875844858,'juandelacruz@gmail.com','Grade 11','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',2147483647,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gerardo Gonzales','Farmer',2147483647,'Sta.Cruz',79,'1978-10-10','Rogelia Gonzales','house wife',2147483647,'Sta.Cruz',65,'1975-02-19'),
(32,212230102145,'Sky Santiago',22,'Female','1999-10-06','Alicia','Alicia',162,45,9875844858,'juandelacruz@gmail.com','Grade 12','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',2147483647,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gerardo Gonzales','Farmer',2147483647,'Sta.Cruz',79,'1978-10-10','Rogelia Gonzales','house wife',2147483647,'Sta.Cruz',65,'1975-02-19'),
(33,123541263124,'Merelin Crisostomo',22,'Female','1999-10-06','Alicia','Alicia',162,45,9875844858,'juandelacruz@gmail.com','Grade 11','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',2147483647,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gerardo Gonzales','Farmer',2147483647,'Sta.Cruz',79,'1978-10-10','Rogelia Gonzales','house wife',2147483647,'Sta.Cruz',65,'1975-02-19'),
(34,201233332120,'Anthony Corpuz',22,'Male','1999-10-06','Alicia','Alicia',162,45,9875844858,'juandelacruz@gmail.com','Grade 12','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',2147483647,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gerardo Gonzales','Farmer',2147483647,'Sta.Cruz',79,'1978-10-10','Rogelia Gonzales','house wife',2147483647,'Sta.Cruz',65,'1975-02-19'),
(35,102362012341,'Rachelle Rivera',22,'Female','1999-10-06','Alicia','Alicia',162,45,9875844858,'juandelacruz@gmail.com','Grade 11','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',2147483647,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gerardo Gonzales','Farmer',2147483647,'Sta.Cruz',79,'1978-10-10','Rogelia Gonzales','house wife',2147483647,'Sta.Cruz',65,'1975-02-19'),
(36,103202302123,'Joel Pedro',22,'Male','1999-10-06','Alicia','Alicia',162,45,9875844858,'juandelacruz@gmail.com','Grade 12','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',2147483647,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gerardo Gonzales','Farmer',2147483647,'Sta.Cruz',79,'1978-10-10','Rogelia Gonzales','house wife',2147483647,'Sta.Cruz',65,'1975-02-19'),
(37,212363214023,'Nina Dela Penna',22,'Female','1999-10-06','Alicia','Alicia',162,45,9875844858,'juandelacruz@gmail.com','Grade 11','anhs',2018,'Second Semester','H.E','paddad, alicia, isabela','Rogelia Gonzales',2147483647,'Rogelia Gonzales','Sta.Cruz',2147483647,'Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gaming_5000x3125.jpg','Gerardo Gonzales','Farmer',2147483647,'Sta.Cruz',79,'1978-10-10','Rogelia Gonzales','house wife',2147483647,'Sta.Cruz',65,'1975-02-19');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `usertype` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`username`,`usertype`,`password`,`photo`,`datetime`) values 
(21,'administrator','admin@email.com','administrator','admin','a346bc80408d9b2a5063fd1bddb20e2d5586ec30','administrator.jpg','2021-11-21 15:18:30'),
(22,'Erika Joy Ancheta Garcia','erikajoy@email.com','erikawalajowa','user','a346bc80408d9b2a5063fd1bddb20e2d5586ec30','erikawalajowa.PNG','2021-12-06 20:10:36'),
(23,'Ara Mea Gonzales','arameagonzales@gmail.com','arameagonzales','admin','a346bc80408d9b2a5063fd1bddb20e2d5586ec30','arameagonzales.PNG','2021-12-13 11:04:04'),
(24,'Mark Jade Cagbay','jadecagbay@gmail.com','markjadecagbay','user','a346bc80408d9b2a5063fd1bddb20e2d5586ec30','markjadecagbay.PNG','2021-12-13 11:21:50'),
(25,'Ara Mea Gonzales','aramea@gmail.com','gonzalesaramea','admin','a346bc80408d9b2a5063fd1bddb20e2d5586ec30','gonzalesaramea.PNG','2021-12-13 11:27:19');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
