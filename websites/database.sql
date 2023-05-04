-- MariaDB dump 10.17  Distrib 10.4.15-MariaDB, for Linux (x86_64)
--
-- Host: mysql    Database: 
-- ------------------------------------------------------
-- Server version	10.9.3-MariaDB-1:10.9.3+maria~ubu2204

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
-- Current Database: `as1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `as1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `as1`;

--
-- Table structure for table `auction`
--

DROP TABLE IF EXISTS `auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `endDate` date NOT NULL,
  `currentBid` double DEFAULT NULL,
  `bid_user` int(11) DEFAULT NULL,
  `bid_placed` datetime DEFAULT NULL,
  `user` int(11) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryID_idx` (`categoryId`),
  CONSTRAINT `categoryID` FOREIGN KEY (`categoryId`) REFERENCES `category` (`categoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auction`
--

LOCK TABLES `auction` WRITE;
/*!40000 ALTER TABLE `auction` DISABLE KEYS */;
INSERT INTO `auction` VALUES (1,'Vintage dress Chanel','Vintage designer dress from 1977, good condition!!!',3,'2022-12-03',361,12,'2022-11-18 10:48:37',1,'dress.jpeg'),(2,'Ford Truck wheels','Good condition original Ford wheels',7,'2022-12-03',270,7,'2022-11-11 00:00:00',1,'wheels.jpeg'),(3,'Sofa IKEA','Barely used white IKEA sofa! Bargain!',1,'2022-12-04',800,8,'2022-11-12 00:00:00',1,'sofa.jpeg'),(5,'Mercedes Benz A class engine','1.6L engine, amazing condition, free delivery ',7,'2022-12-04',500,9,'2022-11-13 00:00:00',2,'engine.jpeg'),(6,'Barbie doll Limited Edition','Super limited edition Barbie. New in box. Includes all accessories',6,'2023-01-20',68.99,4,'2022-11-11 00:00:00',1,'barbie.jpeg'),(7,'Apple AirTags 4 Pack','four Airtags by Apple\r\nBluetooth - Rating IP67\r\nApple U1 chip for Ultra Wideband and Accurate Positioning\r\nNFC technology for Lost Mode\r\nIntegrated Speaker - Accelerometer',2,'2023-01-05',70,5,'2022-11-16 00:00:00',8,'airtag.jpeg'),(8,'Gucci Bree Bag','Cute, compact and unexpectedly versatile. This Bree messenger bag easily extends from a shoulder bag to a messenger bag with a built in wallet functionality. Crafted in our iconic GG canvas and textured leather. USED BUT IN GREAT CONDTION',3,'2023-02-03',100,4,'2022-11-11 00:00:00',5,'bag.jpeg'),(9,'2018 AUDI A1 SPORTBACK front bumper','Blue colour. No scratches but minor dent on the left.',7,'2022-12-31',238,12,'2022-11-11 00:00:00',2,'audi.jpeg'),(10,'New Genuine Heavy Duty Car Battery','100 TYPE SUPERCEDES 096 VERSION SAME SIZE MORE POWER. ',7,'2022-12-20',95,12,'2022-11-13 00:00:00',2,'battery.jpeg'),(11,'POKEMON collection cards','Pack of 20 platinum edition Pokemon cards. Mint condition. Estimated value is over 100 pounds',8,'2022-12-25',999.99,12,'2022-11-13 00:00:00',9,'pokemon.jpeg'),(12,'4 Piece Rattan Garden Furniture Set Outdoor Patio Sofa Wicker','The Set Includes:\r\nOne Sofa\r\nTwo Single Armchairs\r\nOne Coffee Table\r\nVery good condition, barely used',1,'2022-12-29',120,9,'2022-11-17 19:36:03',2,'rattan.jpeg'),(13,'Oral-B Smart Series 4000 or 4500 Rechargeable Electric Toothbrush + Travel Case','It\'s brand new. Got it as a gift but not needed. Box Contains: Oral-B Smart Series Electric Toothbrush with Charger, Travel case and 2 Refill Heads',5,'2022-12-15',16,12,'2022-11-18 10:51:46',1,'ORALB.png'),(17,'Basis 2 Full Suspension Mountain Bike 26\" Wheel 18 Spd Black Green','The all-new Basis 2 Full Suspension Mountain Bike\'s spec speaks for itself - 18 speed Shimano gearing, 26\" alloy wheels and alloy V brakes give you all the kit needed to tackle any terrain, whilst front and rear suspension make for a comfortable ride and soak up the bumps.',4,'2023-02-10',225,1,'2022-11-14 00:00:00',7,'bike.jpeg'),(19,'Rare One Australian dollar coin','Very rare 1 Australian dollar coin from 1976.',9,'2023-01-27',700,7,'2022-11-13 00:00:00',2,'coin.jpeg'),(21,'HAIR DRYER','GOOD CONDITION HAIR DRYER FROM DYSON. AROUND 1 YEAR OLD, GREY COLOR. NO DAMAGE',5,'2023-03-11',56,9,'2022-11-14 00:00:00',1,'dyson.jpeg'),(22,'Hotpoint Aquarius Tcfs 93b Condenser Tumble Dryer 9 Kg Working Spares Or Repair','For parts or not working',2,'2023-01-25',5,8,'2022-11-15 00:00:00',7,'product.png'),(24,'Dormeo mattress','Firm Dormeo mattress, new unused, Double size',1,'2023-03-17',95,8,'2022-11-11 00:00:00',7,'product.png'),(25,'SPECTACULAR SPIDER-MAN 1 MARVEL COMICS','Condition fine could be pressed to a much better grade',8,'2023-02-01',0.78,1,'2022-11-11 00:00:00',7,'product.png'),(26,'Funko Pop! #822 Hulk (Blacklight) - Marvel - Funko Exclusive','New in a box, rare collectable item',9,'2023-01-13',23,2,'2022-11-16 00:00:00',7,'product.png'),(27,'NIKE COURT VINTAGE PREMIER WOMENS TRAINERS WHITE','SIZE UK 3.5 EUR 36.5 IN STUNNING WHITE/BLACK-TOTAL ORANGE COLOUR BRAND NEW IN THE BOX GENUINE AND AUTHENTIC DIRECT FROM NIKE',3,'2023-02-02',2001,9,'2022-11-17 17:00:21',7,'nike.jpeg'),(29,'Mop','Refurbished 10 in 1 1500W Neo® Hot Steam Mop Cleaner Floor Carpet Window Washer Hand Steamer ',2,'2023-04-08',13,4,'2022-11-17 00:00:00',12,'s-l1600.jpeg'),(30,'HTC HD HD2 Phone T8585 Microsoft Windows Mobile - Black (Unlocked)','Windows Phone - Comes with USB Cable only (no plug) - Please expect some minor cosmetic marks but this will not affect use.Due to old model and Windows update, this device will be Compatible for Calls & Texts only.',2,'2023-02-03',12.12,5,'2022-11-17 00:00:00',12,'s-l1600.png'),(31,'Philips PUS7906 43 Inch 4K ','Key Product Info\r\n\r\nVibrant HDR picture. Philips 4K UHD TV\r\nMagical ambilight - Intelligent LEDs\r\nDolby Vision + Dolby Atmos - Premium Sound',2,'2023-03-17',167,5,'2022-11-16 00:00:00',12,'Screenshot 2022-11-10 at 21.36.15.png'),(32,'Chanel Espadrilles Size 5','chanel espadrilles 38.\r\n\r\nUsed comes with box and dust bag.',3,'2023-02-26',265.67,5,'2022-11-15 00:00:00',12,'123efvfvgtg.jpeg'),(33,'Monsters Inc. Sully','Monsters Inc. Sully Plush Toy - Disney Pixar - 2000 Hasbro. Condition is \"Used\". Dispatched with Royal Mail 2nd Class.\r\n\r\n',6,'2023-02-24',10,4,'2022-11-13 00:00:00',12,'jfgikrf.jpeg'),(34,'4 wheel folding mobility scooter','Drive DeVilbiss 4-wheel folding scooter. For spares or repair. \r\n\r\nDisplay shows battery fully charged when \"on charge\" and ignition switched on, but when charger disconnected, and scooter switched on there is no power. Suspect battery faulty.\r\n\r\nSupplied with 2 keys and fob for electric folding feature and Manual and quick start guide.\r\n\r\n2 front mud guards removed as one is broken. Supplied in box with scooter.',5,'2023-03-09',50,1,'2022-11-15 00:00:00',12,'uhhkih.jpeg'),(35,'APPLE AIRPODS PRO TRUE WIRELESS BLUETOOTH IN EAR HEADPHONES GENUINE MWP22ZM/A','Ex-Display/Demo Item In Good Condition - Supplied Complete In Original Retail Box - The Item Will Have Cosmetic Blemishes Such As Marks And Scratches',2,'2023-01-11',100,9,'2022-11-17 19:35:32',12,'ccxsx.jpeg'),(40,'rgrgr','rrg',4,'2022-12-04',7,9,'2022-11-17 17:11:17',9,'jfgikrf.jpeg');
/*!40000 ALTER TABLE `auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bid_history`
--

DROP TABLE IF EXISTS `bid_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bid_history` (
  `change_id` int(11) NOT NULL AUTO_INCREMENT,
  `auctionID` int(11) DEFAULT NULL,
  `previousBid` double DEFAULT NULL,
  `bid_user` int(11) DEFAULT NULL,
  `bid_placed` datetime DEFAULT NULL,
  PRIMARY KEY (`change_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bid_history`
--

LOCK TABLES `bid_history` WRITE;
/*!40000 ALTER TABLE `bid_history` DISABLE KEYS */;
INSERT INTO `bid_history` VALUES (1,35,88,12,'2022-11-11 00:00:00'),(2,27,50,1,'2022-11-11 00:00:00'),(3,27,200,9,'2022-11-12 00:00:00'),(4,27,1999,9,'2022-11-17 00:00:00'),(5,27,2000,9,'2022-11-17 17:00:08'),(8,40,1,9,'2022-11-17 17:11:01'),(9,40,5,9,'2022-11-17 17:11:09'),(10,35,95,9,'2022-11-17 17:11:09'),(11,35,99,9,'2022-11-17 17:13:38'),(12,12,60,12,'2022-11-16 00:00:00'),(13,1,300,2,'2022-11-11 00:00:00'),(14,1,350,12,'2022-11-18 10:48:29'),(15,13,12,2,'2022-11-16 00:00:00');
/*!40000 ALTER TABLE `bid_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Home and Garden'),(2,'Electronics'),(3,'Fashion'),(4,'Sports and Leisure'),(5,'Health'),(6,'Toys'),(7,'Motors'),(8,'More'),(9,'Collectables');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `registerId` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(300) DEFAULT NULL,
  `password` varchar(655) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`registerId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (1,'email@web.com','qwerty','eman'),(2,'t','$2y$10$5w.93dqzifEtWb74RplifO9galrcSMqlgJBCHnYHCXBTwJUXrfwzG',''),(3,'1','$2y$10$HePUqxsFf0YGLCcoLvCtLuBVlBZ.pCWMy3Fyed6fb0.Uq6Ua6buPC','1');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `reviewID` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `by_userID` int(11) NOT NULL,
  `about_userID` int(11) NOT NULL,
  PRIMARY KEY (`reviewID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'2022-11-08 13:03:58','good seller!',5,2),(2,'2022-11-08 13:07:29','fast delivery & great communication with the seller! recommend!',5,1),(3,'2022-11-08 14:11:46','my order arrived in 2 days! amazing seller :)',4,2),(4,'2022-11-08 14:12:48','seller was bad at communication, and took forever to ship my order...',4,1),(5,'2022-11-08 14:41:21','okay seller, my order was not very safely packed',1,7),(6,'2022-11-11 10:09:45','bad seller, item arrived not as described',12,2),(7,'2022-11-11 10:10:39','great seller!!!!!! :)))',12,1),(8,'2022-11-11 10:11:16','slow shipping but great deals with this seller',12,7),(9,'2022-11-14 19:54:42','great!!!! goooood!!!',9,12),(10,'2022-11-16 10:17:43','lovely!',9,7),(11,'2022-11-16 11:13:34','my order arrived fairly fast and well packaged, seller was great with communication and answered any questions i had! 5 stars!',1,12),(12,'2022-11-16 11:16:21','good but slow',1,7),(13,'2022-11-17 14:13:37','order arrived damaged, seller didnt give refund, very dissapointed',9,1);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'bobbym@mail.com','Bobby M','$2y$10$ui5kB7MAQaiyZme4cabIQ.k2Qp7maUjvvJDZxWn/U49LYUd/YLNze','N'),(2,'marisha@mail.com','Maria Wales','$2y$10$ui5kB7MAQaiyZme4cabIQ.k2Qp7maUjvvJDZxWn/U49LYUd/YLNze','N'),(4,'gin@mail.com','Ginny Potter','$2y$10$.Ve2uINT/y.zTm7gZXxwtu/WHk20dvRaQD.h2jC1iEgCi6undnMz2','N'),(5,'sabina1@mail.com','Sabina Rabekina','$2y$10$Fs.11CSwrWcaHmEj7KcLZuwWEKrgKLzlyEDDDlvTh/pvoC8X1yz5y','Y'),(7,'Sara@gmail.com','Sara Daisy','$2y$10$.Ve2uINT/y.zTm7gZXxwtu/WHk20dvRaQD.h2jC1iEgCi6undnMz2','N'),(8,'mario@mail.com','Mario Italiano','$2y$10$h3K4WInCy3jHYFNTH94KVOUai6kjy0sL42RumT0tSi4C1gDqaq4Oq','N'),(9,'bigboss@mail.com','Mister Boss','$2y$10$fSuf4BvFP9PTy3uZ6rCAJuIHtgN9oo6cHf2f/NgiRi1j6CHJmfo9G','Y'),(12,'lily@mail.com','lily moore','$2y$10$ttuqmbJ39/FdvR.WGa9htOp2E6gidyQIq7hqiZAlm40dOrXpY2mva','N');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `csy2028`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `csy2028` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `csy2028`;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `email` varchar(50) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES ('davidbrown@mail.com','David','Brown','2002-09-08 00:00:00'),('gin@mail.com','Ginny','Potter','1998-10-10 00:00:00'),('johnsmith@mail.com','John','Smith','2001-10-31 00:00:00'),('marina@mail.com','Marina','Potter','1996-08-12 00:00:00'),('Sara@gmail.com','Sara','Roberts','2004-06-19 00:00:00'),('stacy@mail.com','Stacy','May','2002-05-13 00:00:00'),('susangreen@mail.com','Susan','Green','2000-10-22 00:00:00');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `eightytwenty`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `eightytwenty` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `eightytwenty`;

--
-- Current Database: `ijdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ijdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ijdb`;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (2,'Sad Jokes');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joke`
--

DROP TABLE IF EXISTS `joke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joke` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joketext` text DEFAULT NULL,
  `jokedate` date DEFAULT NULL,
  `jokeauthor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joke`
--

LOCK TABLES `joke` WRITE;
/*!40000 ALTER TABLE `joke` DISABLE KEYS */;
INSERT INTO `joke` VALUES (3,'how do you call a caw that fell of the cliff? mince meat ;)))','2022-11-21','eeeaaa'),(21,'uuuuuuuuuu','2022-12-15','Sabinaaa'),(23,'hahah','2023-01-19','fun'),(24,'aaaa','2023-01-19','sss'),(25,'ddd','2023-01-19','sa');
/*!40000 ALTER TABLE `joke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `job`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `job` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `job`;

--
-- Table structure for table `applicants`
--

DROP TABLE IF EXISTS `applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longblob DEFAULT NULL,
  `jobId` int(11) DEFAULT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicants`
--

LOCK TABLES `applicants` WRITE;
/*!40000 ALTER TABLE `applicants` DISABLE KEYS */;
INSERT INTO `applicants` VALUES (9,'maria','a',NULL,3,'63ceff9bc8174.'),(10,'sarah',NULL,NULL,3,'63cf0142ae364.'),(11,'james',NULL,NULL,3,'63d175d8c47da.'),(12,'kate',NULL,NULL,3,'63d1bdea972b5.doc'),(13,NULL,NULL,NULL,NULL,'63deab7aa3c73.pdf'),(14,'sarah james','great@mail.com','adaa',6,'63deabd7749d2.pdf'),(15,'Marie Jones','mariej@mail.com','great cv',7,'63deae1e8d29d.pdf'),(16,'Jon Lo','jonlo@mail.com','great cv',7,'63deafb8d113c.pdf'),(17,'Jon Lo','jonlo@mail.com','cv cv',7,'63dffa71a2b0b.pdf');
/*!40000 ALTER TABLE `applicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'IT'),(2,'Human Resources'),(4,'Sales'),(5,'Warehouse'),(6,'Retail'),(8,'Educatio');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` blob DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `employeeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry`
--

LOCK TABLES `enquiry` WRITE;
/*!40000 ALTER TABLE `enquiry` DISABLE KEYS */;
INSERT INTO `enquiry` VALUES (1,'Maya','maya@mail.com','07843920112','Hello',0,1),(2,'Katie','kat@mail.com','078439203212','heo3jkewnkd',0,1),(3,'Mark','m@mail.com','07843920112211','34',0,1),(4,'Joanna','joa@mail.com','07843920112','hello, please call me as my company is interested in working with you',1,NULL),(5,'test','test','test','test',0,1),(6,'test','test','test','test',1,NULL),(7,'contact','form','111111','sabina',0,1),(8,'FORM','FOR','11222','jhhfvuherf',0,1);
/*!40000 ALTER TABLE `enquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longblob DEFAULT NULL,
  `salary` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closingDate` date DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (3,'First level tech support','Job overview:\r\n\r\nTo work alongside the IT field based team in one of our acute Hospital sites. This team provides high quality equipment installation, technical support and advisory services for EKHUFT staff. They proactively manage incidents and requests, accepting ownership, evaluating, resolving and enabling the rapid resolution of a broad range of issues. This will include the testing and implementing of new and replacement hardware and appropriate software and the resolving of malfunctions. They look to achieve high standards of customer service and delivery of maximum business benefits.\r\n\r\nMain responsibilities:\r\n\r\n\r\n    To analyse incidents and deliver technical resolutions as part of the IT support\r\n\r\n    Service, to contribute to an efficient and effective IT service desk.\r\n\r\n    Review tickets within Service Management systems using established priorities.\r\n\r\n    Man the helpdesk telephone on a daily basis to resolve issues for end users.\r\n\r\n    Learn what notes and updates should be done on tickets.\r\n\r\n    The initial investigation and resolution of incidents relating to business and\r\n\r\n    desktop applications, and subsequent referral to either senior support analysts, to\r\n\r\n    2nd/ 3rd line support, the application management team or a 3rd party.\r\n\r\n    Learn to deliver end user introductory training on IT systems.\r\n\r\n    Undertakes daily operational checks as defined and trained by the wider team.\r\n\r\n    Participate in projects as required.\r\n\r\n    Support tracking of IT assets (software and hardware) using software tools.\r\n\r\n    Setup workstations and laptops for new starters\r\n\r\n    Support with physical desk moves between locations\r\n\r\n    Deploy and install software to computers\r\n\r\n    Perform password resets and help end users with profile and connectivity issues.\r\n\r\n    Allow and remove access to folders and email distribution lists\r\n\r\n    Perform basic proactive tasks for backups and learn how to restore backups.\r\n\r\n    Carry out any other duties as required by the IT Management Team.','£15,000 - £19,000','2023-04-09',1,'Northampton',1,1),(4,'IT Infrastructure Manager','About the role\r\n\r\nAs an experienced IT Infrastructure Manager, you will work closely with the Head of IT to design and deliver a robust, secure, and flexible IT solution.\r\n\r\nTaking day-to-day responsibility for the smooth running of the IT systems, you will ensure that full business continuity plans are in place for our IT systems and services.\r\n\r\nYou will work closely with the Park Services and Events teams to ensure that appropriate access to IT services, including CCTV, is available throughout the Parks.','£45,000 - £57,000','2023-05-15',1,'Northampton',1,1),(5,'Sales Assistant','Our client is an award winning sales and marketing organisation; who are looking to enhance their sales team with independent individuals who are capable of seeking and developing new opportunities within the sales and marketing industry.\r\n\r\nWithin this opportunity you will be working alongside the best sales and marketing specialists, promoting an exciting client portfolio. You will represent iconic brands and play a very important role in ongoing business success while developing your skills in residential environments. This opportunity will provide high rewards both career wise, and financially.\r\n\r\nThe successful candidate will be a well-presented, self-starter capable of demonstrating a desire to succeed in a sales environment.\r\n\r\nSuccessful candidates will:\r\n\r\n    Have strong communication skills\r\n    Be self-motivated\r\n    Possess an impeccable work ethic\r\n    Have a tenacious approach to personal development\r\n    Possess a competitive sales mentality\r\n    Have an entrepreneurial mind-set\r\n    Team work\r\n\r\nIf you can demonstrate the qualities as set out above and believe that you have the ability to develop new business, they would like to hear from you!\r\n\r\nNo experience is necessary although our client welcomes candidates with any previous experience in the following areas: customer service, sales representative, marketing supervisor, sales executive, direct sales, field sales, marketing executive, retail, service supervisor, call centre, call centre inbound, marketing representative, manager, bar manager, hospitality, receptionist, warehouse, marketing assistant, front of house, direct marketing, sales assistant, and any other customer service or sales role. This is a self employed commission only opportunity with the ability to create your own future.','£12,000 - £15,000','2023-05-29',4,'Northampton',1,5),(6,'HR Manager','HR Manager: An ambitious HR Manager is required to help deliver an effective and comprehensive Human Resource service to a growing organisation with fully-funded plans to double in size over the next 18 months.\r\n\r\nWorking in a consultative manner, the successful HR Manager will work on a standalone basis to ensure quality advice and support is provided as part of the journey to make the organisation an industry leading \"Employer of Choice\".\r\n\r\nThis exciting new role would ideally suit an ambitious generalist HR professional eager to take on a dynamic position offering genuine career progression opportunities.\r\n\r\nKey Responsibilities\r\n\r\n    Provide HR support and advice to management on company HR policies and procedures, including employment law advice e.g. disciplinary, grievance, performance.\r\n    Provide high-quality recruitment and selection service to all departments including the use of social media.\r\n    Develop and implement HR policy and practice, contract templates, HR documentation and HR database developments, ensuring that all are up to date with UK legislation.\r\n    Provide ongoing employee relations support and advice to whole firm relating to contractual and general HR matters.\r\n    Review compensation and benefit plans e.g. salary review, bonus plan and other non-specified benefit plans.\r\n    Propose and advise on internal and external training for employees.\r\n    Create career path models to include job descriptions, person specs and competency models for all roles to support individuals\' career progression.\r\n    Manage the HR calendar: performance reviews, salary reviews, development planning, ensuring these processes support the ongoing strategic growth plan.\r\n    Develop the organisation culture to ensure \"Employer of Choice\" status is attained through determining the current culture, proposing organisation initiatives and then implementing after approval to achieve \"EOC\" tag.','£35,000 - £40,000','2023-05-29',2,'Northampton',1,5),(7,'Assistant Manager','We have a great opportunity for an Assistant Manager in CAVANI By Maysons.\r\n\r\nOur Formal Menswear Store is located in Westgate Arcade, Peterborough Shopping Centre.\r\n\r\nThe attributes looked for are the following;\r\n\r\n- Proven retail experience - Confidence - Vibrant personality - A strong work ethic is essential\r\n\r\n- Be able to deliver an excellent customer experience whilst adhering to the company’s vision and values\r\n\r\n- Great communication skills with the ability to develop relationships with your customers\r\n\r\n- Ensure that our store and products are presented to the highest standards','30000','2023-02-25',6,'Milton Keynes',1,5),(8,'Technical Support Assistant','Key Responsibilities:\r\n- Respond to customer enquiries via phone, email, and live chat.\r\n- Troubleshoot and diagnose technical issues\r\n- Provide detailed explanations and clear instructions to customers\r\n- Escalate complex issues to higher level technical support or external partners.\r\n- Document and update customer service records in our database.\r\n- Keep abreast of new technologies and products\r\n- Attend customer...','£20,000 - £29,000','2023-03-03',1,'Rugby',1,5),(12,'job','job','30000','2023-02-18',1,'Rugby',0,11);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Sabina','JosJobs','admin','$2y$10$LGdmx37oBBTwYxKTG5wzmu26Rmn51VQGmBMxa7oN.ct4geSRP8arK','Full'),(5,'Katie Green','Whites','katiegreen','$2y$10$dmkLtzpUrSxN6B6PVHlcoOsE6SERqOawM9JFi/vgXhkcB/mLIrrPa','Partial'),(8,'Jo','JosJobs','jo','$2y$10$EfNAeZB0z6dfoEtqXnUKNu0W.0u4Q9auh3EIOcwrbkVaGQU85eIz.','Full'),(11,'Sarah','Apple','sarah','$2y$10$xGLEZvnBYKaZfd496VLpve48UfOHFLvLVHL0f3Rx2pswJ4Kqol35y','Partial');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `mysql`;

--
-- Table structure for table `column_stats`
--

DROP TABLE IF EXISTS `column_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `column_stats` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `column_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `min_value` varbinary(255) DEFAULT NULL,
  `max_value` varbinary(255) DEFAULT NULL,
  `nulls_ratio` decimal(12,4) DEFAULT NULL,
  `avg_length` decimal(12,4) DEFAULT NULL,
  `avg_frequency` decimal(12,4) DEFAULT NULL,
  `hist_size` tinyint(3) unsigned DEFAULT NULL,
  `hist_type` enum('SINGLE_PREC_HB','DOUBLE_PREC_HB','JSON_HB') COLLATE utf8mb3_bin DEFAULT NULL,
  `histogram` longblob DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`,`column_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='Statistics on Columns';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `column_stats`
--

LOCK TABLES `column_stats` WRITE;
/*!40000 ALTER TABLE `column_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `column_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columns_priv` (
  `Host` char(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8mb3 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db` (
  `Host` char(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  `Delete_history_priv` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `db` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `body` longblob NOT NULL,
  `definer` varchar(384) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `execute_at` datetime DEFAULT NULL,
  `interval_value` int(11) DEFAULT NULL,
  `interval_field` enum('YEAR','QUARTER','MONTH','DAY','HOUR','MINUTE','WEEK','SECOND','MICROSECOND','YEAR_MONTH','DAY_HOUR','DAY_MINUTE','DAY_SECOND','HOUR_MINUTE','HOUR_SECOND','MINUTE_SECOND','DAY_MICROSECOND','HOUR_MICROSECOND','MINUTE_MICROSECOND','SECOND_MICROSECOND') DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_executed` datetime DEFAULT NULL,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  `status` enum('ENABLED','DISABLED','SLAVESIDE_DISABLED') NOT NULL DEFAULT 'ENABLED',
  `on_completion` enum('DROP','PRESERVE') NOT NULL DEFAULT 'DROP',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','IGNORE_BAD_TABLE_OPTIONS','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH','EMPTY_STRING_IS_NULL','SIMULTANEOUS_ASSIGNMENT','TIME_ROUND_FRACTIONAL') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `originator` int(10) unsigned NOT NULL,
  `time_zone` char(64) CHARACTER SET latin1 NOT NULL DEFAULT 'SYSTEM',
  `character_set_client` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `body_utf8` longblob DEFAULT NULL,
  PRIMARY KEY (`db`,`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Events';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `ret` tinyint(1) NOT NULL DEFAULT 0,
  `dl` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8mb3 NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_priv`
--

DROP TABLE IF EXISTS `global_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `global_priv` (
  `Host` char(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Priv` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '{}' CHECK (json_valid(`Priv`)),
  PRIMARY KEY (`Host`,`User`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Users and global privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_priv`
--

LOCK TABLES `global_priv` WRITE;
/*!40000 ALTER TABLE `global_priv` DISABLE KEYS */;
INSERT INTO `global_priv` VALUES ('localhost','mariadb.sys','{\"access\":0,\"plugin\":\"mysql_native_password\",\"authentication_string\":\"\",\"account_locked\":true,\"password_last_changed\":0}'),('localhost','root','{\"access\":18446744073709551615,\"plugin\":\"mysql_native_password\",\"authentication_string\":\"*6A73561D1E49479B0E89BC6072145D20FA359357\",\"password_last_changed\":1664797216}'),('%','root','{\"access\":549755813887,\"version_id\":100903,\"plugin\":\"mysql_native_password\",\"authentication_string\":\"*6A73561D1E49479B0E89BC6072145D20FA359357\",\"password_last_changed\":1664797216}'),('%','v.je','{\"access\":549755813887,\"version_id\":100903,\"plugin\":\"mysql_native_password\",\"authentication_string\":\"*6A73561D1E49479B0E89BC6072145D20FA359357\",\"password_last_changed\":1680635796}'),('%','s.je','{\"access\":549755813887,\"version_id\":100903,\"plugin\":\"mysql_native_password\",\"authentication_string\":\"*2721779FE2256C5EDD7F7989590D8E598CB5B068\",\"password_last_changed\":1680635796}'),('%','student','{\"access\":549755813887,\"version_id\":100903,\"plugin\":\"mysql_native_password\",\"authentication_string\":\"*1308E0FCD43112F8D948AB093F54892CB7B220AA\",\"password_last_changed\":1680635796}');
/*!40000 ALTER TABLE `global_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gtid_slave_pos`
--

DROP TABLE IF EXISTS `gtid_slave_pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gtid_slave_pos` (
  `domain_id` int(10) unsigned NOT NULL,
  `sub_id` bigint(20) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `seq_no` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`domain_id`,`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Replication slave GTID position';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gtid_slave_pos`
--

LOCK TABLES `gtid_slave_pos` WRITE;
/*!40000 ALTER TABLE `gtid_slave_pos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gtid_slave_pos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (1,'Geographic',0,''),(2,'Polygon Properties',34,''),(3,'WKT',34,''),(4,'Numeric Functions',38,''),(5,'Plugins',35,''),(6,'MBR',34,''),(7,'Control Flow Functions',38,''),(8,'Transactions',35,''),(9,'Help Metadata',35,''),(10,'Account Management',35,''),(11,'Point Properties',34,''),(12,'Encryption Functions',38,''),(13,'LineString Properties',34,''),(14,'Miscellaneous Functions',38,''),(15,'Logical Operators',38,''),(16,'Functions and Modifiers for Use with GROUP BY',35,''),(17,'Information Functions',38,''),(18,'Comparison Operators',38,''),(19,'Bit Functions',38,''),(20,'Table Maintenance',35,''),(21,'User-Defined Functions',35,''),(22,'Data Types',35,''),(23,'Compound Statements',35,''),(24,'Geometry Constructors',34,''),(25,'GeometryCollection Properties',1,''),(26,'Administration',35,''),(27,'Data Manipulation',35,''),(28,'Utility',35,''),(29,'Language Structure',35,''),(30,'Geometry Relations',34,''),(31,'Date and Time Functions',38,''),(32,'WKB',34,''),(33,'Procedures',35,''),(34,'Geographic Features',35,''),(35,'Contents',0,''),(36,'Geometry Properties',34,''),(37,'String Functions',38,''),(38,'Functions',35,''),(39,'Data Definition',35,''),(40,'Sequences',35,''),(41,'JSON Functions',38,''),(42,'Window Functions',38,''),(43,'Spider Functions',38,''),(44,'Dynamic Column Functions',38,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (1,'master_ssl_verify_cert'),(2,'drop prepare'),(3,'work'),(4,'drop'),(5,'returns'),(6,'value'),(7,'nchar'),(8,'repeat'),(9,'columns'),(10,'sql_big_result'),(11,'escape'),(12,'mode'),(13,'schedule'),(14,'starts'),(15,'host'),(16,'row_format');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`),
  KEY `help_topic_id` (`help_topic_id`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (95,1),(97,2),(110,3),(120,4),(128,4),(259,4),(647,4),(664,4),(665,4),(666,4),(667,4),(668,4),(669,4),(670,4),(671,4),(672,4),(673,4),(675,4),(676,4),(258,5),(264,6),(317,6),(320,6),(417,6),(433,6),(271,7),(316,8),(621,8),(355,9),(434,10),(603,11),(610,12),(642,13),(652,14),(659,15),(660,16);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topic`
--

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
INSERT INTO `help_topic` VALUES (1,'HELP_DATE',9,'Help contents generated from the MariaDB Knowledge Base on 28 June 2022.','',''),(2,'AREA',2,'A synonym for ST_AREA.\n\n\n\nURL: mariadb.com/kb/en/polygon-properties-area/','','https://mariadb.com/kb/en/polygon-properties-area/'),(3,'CENTROID',2,'A synonym for ST_CENTROID.\n\n\n\nURL: mariadb.com/kb/en/centroid/','','https://mariadb.com/kb/en/centroid/'),(4,'ExteriorRing',2,'A synonym for ST_ExteriorRing.\n\n\n\nURL: mariadb.com/kb/en/polygon-properties-exteriorring/','','https://mariadb.com/kb/en/polygon-properties-exteriorring/'),(5,'InteriorRingN',2,'A synonym for ST_InteriorRingN.\n\n\n\nURL: mariadb.com/kb/en/polygon-properties-interiorringn/','','https://mariadb.com/kb/en/polygon-properties-interiorringn/'),(6,'NumInteriorRings',2,'A synonym for ST_NumInteriorRings.\n\n\n\nURL: mariadb.com/kb/en/polygon-properties-numinteriorrings/','','https://mariadb.com/kb/en/polygon-properties-numinteriorrings/'),(7,'ST_AREA',2,'Syntax\n------\n\nST_Area(poly)\nArea(poly)\n\nDescription\n-----------\n\nReturns as a double-precision number the area of the Polygon value poly, as\nmeasured in its spatial reference system.\n\nST_Area() and Area() are synonyms.\n\nExamples\n--------\n\nSET @poly = \'Polygon((0 0,0 3,3 0,0 0),(1 1,1 2,2 1,1 1))\';\n\nSELECT Area(GeomFromText(@poly));\n+---------------------------+\n| Area(GeomFromText(@poly)) |\n+---------------------------+\n|                         4 |\n+---------------------------+\n\n\n\nURL: mariadb.com/kb/en/st_area/','','https://mariadb.com/kb/en/st_area/'),(8,'ST_CENTROID',2,'Syntax\n------\n\nST_Centroid(mpoly)\nCentroid(mpoly)\n\nDescription\n-----------\n\nReturns a point reflecting the mathematical centroid (geometric center) for\nthe MultiPolygon mpoly. The resulting point will not necessarily be on the\nMultiPolygon.\n\nST_Centroid() and Centroid() are synonyms.\n\nExamples\n--------\n\nSET @poly = ST_GeomFromText(\'POLYGON((0 0,20 0,20 20,0 20,0 0))\');\nSELECT ST_AsText(ST_Centroid(@poly)) AS center;\n+--------------+\n| center       |\n+--------------+\n| POINT(10 10) |\n+--------------+\n\n\n\nURL: mariadb.com/kb/en/st_centroid/','','https://mariadb.com/kb/en/st_centroid/'),(9,'ST_ExteriorRing',2,'Syntax\n------\n\nST_ExteriorRing(poly)\nExteriorRing(poly)\n\nDescription\n-----------\n\nReturns the exterior ring of the Polygon value poly as a LineString.\n\nST_ExteriorRing() and ExteriorRing() are synonyms.\n\nExamples\n--------\n\nSET @poly = \'Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))\';\n\nSELECT AsText(ExteriorRing(GeomFromText(@poly)));\n+-------------------------------------------+\n| AsText(ExteriorRing(GeomFromText(@poly))) |\n+-------------------------------------------+\n| LINESTRING(0 0,0 3,3 3,3 0,0 0)           |\n+-------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/st_exteriorring/','','https://mariadb.com/kb/en/st_exteriorring/'),(10,'ST_InteriorRingN',2,'Syntax\n------\n\nST_InteriorRingN(poly,N)\nInteriorRingN(poly,N)\n\nDescription\n-----------\n\nReturns the N-th interior ring for the Polygon value poly as a LineString.\nRings are numbered beginning with 1.\n\nST_InteriorRingN() and InteriorRingN() are synonyms.\n\nExamples\n--------\n\nSET @poly = \'Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))\';\n\nSELECT AsText(InteriorRingN(GeomFromText(@poly),1));\n+----------------------------------------------+\n| AsText(InteriorRingN(GeomFromText(@poly),1)) |\n+----------------------------------------------+\n| LINESTRING(1 1,1 2,2 2,2 1,1 1)              |\n+----------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/st_interiorringn/','','https://mariadb.com/kb/en/st_interiorringn/'),(11,'ST_NumInteriorRings',2,'Syntax\n------\n\nST_NumInteriorRings(poly)\nNumInteriorRings(poly)\n\nDescription\n-----------\n\nReturns an integer containing the number of interior rings in the Polygon\nvalue poly.\n\nNote that according the the OpenGIS standard, a POLYGON should have exactly\none ExteriorRing and all other rings should lie within that ExteriorRing and\nthus be the InteriorRings. Practically, however, some systems, including\nMariaDB\'s, permit polygons to have several \'ExteriorRings\'. In the case of\nthere being multiple, non-overlapping exterior rings ST_NumInteriorRings()\nwill return 1.\n\nST_NumInteriorRings() and NumInteriorRings() are synonyms.\n\nExamples\n--------\n\nSET @poly = \'Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))\';\n\nSELECT NumInteriorRings(GeomFromText(@poly));\n+---------------------------------------+\n| NumInteriorRings(GeomFromText(@poly)) |\n+---------------------------------------+\n|                                     1 |\n+---------------------------------------+\n\nNon-overlapping \'polygon\':\n\nSELECT ST_NumInteriorRings(ST_PolyFromText(\'POLYGON((0 0,10 0,10 10,0 10,0 0),\n (-1 -1,-5 -1,-5 -5,-1 -5,-1 -1))\')) AS NumInteriorRings;\n+------------------+\n| NumInteriorRings |\n+------------------+\n|                1 |\n+------------------+\n\n\n\nURL: mariadb.com/kb/en/st_numinteriorrings/','','https://mariadb.com/kb/en/st_numinteriorrings/'),(13,'AsText',3,'A synonym for ST_AsText().\n\n\n\nURL: mariadb.com/kb/en/wkt-astext/','','https://mariadb.com/kb/en/wkt-astext/'),(14,'AsWKT',3,'A synonym for ST_AsText().\n\n\n\nURL: mariadb.com/kb/en/wkt-aswkt/','','https://mariadb.com/kb/en/wkt-aswkt/'),(15,'GeomCollFromText',3,'A synonym for ST_GeomCollFromText.\n\n\n\nURL: mariadb.com/kb/en/wkt-geomcollfromtext/','','https://mariadb.com/kb/en/wkt-geomcollfromtext/'),(16,'GeometryCollectionFromText',3,'A synonym for ST_GeomCollFromText.\n\n\n\nURL: mariadb.com/kb/en/geometrycollectionfromtext/','','https://mariadb.com/kb/en/geometrycollectionfromtext/'),(17,'GeometryFromText',3,'A synonym for ST_GeomFromText.\n\n\n\nURL: mariadb.com/kb/en/geometryfromtext/','','https://mariadb.com/kb/en/geometryfromtext/'),(18,'GeomFromText',3,'A synonym for ST_GeomFromText.\n\n\n\nURL: mariadb.com/kb/en/wkt-geomfromtext/','','https://mariadb.com/kb/en/wkt-geomfromtext/'),(19,'LineFromText',3,'A synonym for ST_LineFromText.\n\n\n\nURL: mariadb.com/kb/en/wkt-linefromtext/','','https://mariadb.com/kb/en/wkt-linefromtext/'),(20,'LineStringFromText',3,'A synonym for ST_LineFromText.\n\n\n\nURL: mariadb.com/kb/en/linestringfromtext/','','https://mariadb.com/kb/en/linestringfromtext/'),(21,'MLineFromText',3,'Syntax\n------\n\nMLineFromText(wkt[,srid])\nMultiLineStringFromText(wkt[,srid])\n\nDescription\n-----------\n\nConstructs a MULTILINESTRING value using its WKT representation and SRID.\n\nMLineFromText() and MultiLineStringFromText() are synonyms.\n\nExamples\n--------\n\nCREATE TABLE gis_multi_line (g MULTILINESTRING);\nSHOW FIELDS FROM gis_multi_line;\nINSERT INTO gis_multi_line VALUES\n  (MultiLineStringFromText(\'MULTILINESTRING((10 48,10 21,10 0),(16 0,16\n23,16 48))\')),\n  (MLineFromText(\'MULTILINESTRING((10 48,10 21,10 0))\')),\n  (MLineFromWKB(AsWKB(MultiLineString(\n   LineString(Point(1, 2), Point(3, 5)),\n   LineString(Point(2, 5), Point(5, 8), Point(21, 7))))));\n\n\n\nURL: mariadb.com/kb/en/mlinefromtext/','','https://mariadb.com/kb/en/mlinefromtext/'),(22,'MPointFromText',3,'Syntax\n------\n\nMPointFromText(wkt[,srid])\nMultiPointFromText(wkt[,srid])\n\nDescription\n-----------\n\nConstructs a MULTIPOINT value using its WKT representation and SRID.\n\nMPointFromText() and MultiPointFromText() are synonyms.\n\nExamples\n--------\n\nCREATE TABLE gis_multi_point (g MULTIPOINT);\nSHOW FIELDS FROM gis_multi_point;\nINSERT INTO gis_multi_point VALUES\n  (MultiPointFromText(\'MULTIPOINT(0 0,10 10,10 20,20 20)\')),\n  (MPointFromText(\'MULTIPOINT(1 1,11 11,11 21,21 21)\')),\n  (MPointFromWKB(AsWKB(MultiPoint(Point(3, 6), Point(4, 10)))));\n\n\n\nURL: mariadb.com/kb/en/mpointfromtext/','','https://mariadb.com/kb/en/mpointfromtext/'),(12,'WKT Definition',3,'Description\n-----------\n\nThe Well-Known Text (WKT) representation of Geometry is designed to exchange\ngeometry data in ASCII form. Examples of the basic geometry types include:\n\n+------------------------------------------------------------------------------\n\n| Geometry Types                                                              \n|\n+------------------------------------------------------------------------------\n\n| POINT                                                                       \n|\n+------------------------------------------------------------------------------\n\n| LINESTRING                                                                  \n|\n+------------------------------------------------------------------------------\n\n| POLYGON                                                                     \n|\n+------------------------------------------------------------------------------\n\n| MULTIPOINT                                                                  \n|\n+------------------------------------------------------------------------------\n\n| MULTILINESTRING                                                             \n|\n+------------------------------------------------------------------------------\n\n| MULTIPOLYGON                                                                \n|\n+------------------------------------------------------------------------------\n\n| GEOMETRYCOLLECTION                                                          \n|\n+------------------------------------------------------------------------------\n\n| GEOMETRY                                                                    \n|\n+------------------------------------------------------------------------------\n\n\n\nURL: mariadb.com/kb/en/wkt-definition/','','https://mariadb.com/kb/en/wkt-definition/'),(23,'MPolyFromText',3,'Syntax\n------\n\nMPolyFromText(wkt[,srid])\nMultiPolygonFromText(wkt[,srid])\n\nDescription\n-----------\n\nConstructs a MULTIPOLYGON value using its WKT representation and SRID.\n\nMPolyFromText() and MultiPolygonFromText() are synonyms.\n\nExamples\n--------\n\nCREATE TABLE gis_multi_polygon  (g MULTIPOLYGON);\nSHOW FIELDS FROM gis_multi_polygon;\nINSERT INTO gis_multi_polygon VALUES\n  (MultiPolygonFromText(\'MULTIPOLYGON(\n   ((28 26,28 0,84 0,84 42,28 26),(52 18,66 23,73 9,48 6,52 18)),\n   ((59 18,67 18,67 13,59 13,59 18)))\')),\n  (MPolyFromText(\'MULTIPOLYGON(\n   ((28 26,28 0,84 0,84 42,28 26),(52 18,66 23,73 9,48 6,52 18)),\n   ((59 18,67 18,67 13,59 13,59 18)))\')),\n  (MPolyFromWKB(AsWKB(MultiPolygon(Polygon(\n   LineString(Point(0, 3), Point(3, 3), Point(3, 0), Point(0, 3)))))));\n\n\n\nURL: mariadb.com/kb/en/mpolyfromtext/','','https://mariadb.com/kb/en/mpolyfromtext/'),(24,'MultiLineStringFromText',3,'A synonym for MLineFromText.\n\n\n\nURL: mariadb.com/kb/en/multilinestringfromtext/','','https://mariadb.com/kb/en/multilinestringfromtext/'),(25,'MultiPointFromText',3,'A synonym for MPointFromText.\n\n\n\nURL: mariadb.com/kb/en/multipointfromtext/','','https://mariadb.com/kb/en/multipointfromtext/'),(26,'MultiPolygonFromText',3,'A synonym for MPolyFromText.\n\n\n\nURL: mariadb.com/kb/en/multipolygonfromtext/','','https://mariadb.com/kb/en/multipolygonfromtext/'),(27,'PointFromText',3,'A synonym for ST_PointFromText.\n\n\n\nURL: mariadb.com/kb/en/wkt-pointfromtext/','','https://mariadb.com/kb/en/wkt-pointfromtext/'),(28,'PolyFromText',3,'A synonym for ST_PolyFromText.\n\n\n\nURL: mariadb.com/kb/en/wkt-polyfromtext/','','https://mariadb.com/kb/en/wkt-polyfromtext/'),(29,'PolygonFromText',3,'A synonym for ST_PolyFromText.\n\n\n\nURL: mariadb.com/kb/en/polygonfromtext/','','https://mariadb.com/kb/en/polygonfromtext/'),(30,'ST_AsText',3,'Syntax\n------\n\nST_AsText(g)\nAsText(g)\nST_AsWKT(g)\nAsWKT(g)\n\nDescription\n-----------\n\nConverts a value in internal geometry format to its WKT representation and\nreturns the string result.\n\nST_AsText(), AsText(), ST_AsWKT() and AsWKT() are all synonyms.\n\nExamples\n--------\n\nSET @g = \'LineString(1 1,4 4,6 6)\';\n\nSELECT ST_AsText(ST_GeomFromText(@g));\n+--------------------------------+\n| ST_AsText(ST_GeomFromText(@g)) |\n+--------------------------------+\n| LINESTRING(1 1,4 4,6 6)        |\n+--------------------------------+\n\n\n\nURL: mariadb.com/kb/en/st_astext/','','https://mariadb.com/kb/en/st_astext/'),(31,'ST_ASWKT',3,'A synonym for ST_ASTEXT().\n\n\n\nURL: mariadb.com/kb/en/st_aswkt/','','https://mariadb.com/kb/en/st_aswkt/'),(32,'ST_GeomCollFromText',3,'Syntax\n------\n\nST_GeomCollFromText(wkt[,srid])\nST_GeometryCollectionFromText(wkt[,srid])\nGeomCollFromText(wkt[,srid])\nGeometryCollectionFromText(wkt[,srid])\n\nDescription\n-----------\n\nConstructs a GEOMETRYCOLLECTION value using its WKT representation and SRID.\n\nST_GeomCollFromText(), ST_GeometryCollectionFromText(), GeomCollFromText() and\nGeometryCollectionFromText() are all synonyms.\n\nExample\n-------\n\nCREATE TABLE gis_geometrycollection  (g GEOMETRYCOLLECTION);\nSHOW FIELDS FROM gis_geometrycollection;\nINSERT INTO gis_geometrycollection VALUES\n  (GeomCollFromText(\'GEOMETRYCOLLECTION(POINT(0 0), LINESTRING(0 0,10\n10))\')),\n  (GeometryFromWKB(AsWKB(GeometryCollection(Point(44, 6),\nLineString(Point(3, 6), Point(7, 9)))))),\n  (GeomFromText(\'GeometryCollection()\')),\n  (GeomFromText(\'GeometryCollection EMPTY\'));\n\n\n\nURL: mariadb.com/kb/en/st_geomcollfromtext/','','https://mariadb.com/kb/en/st_geomcollfromtext/'),(33,'ST_GeometryCollectionFromText',3,'A synonym for ST_GeomCollFromText.\n\n\n\nURL: mariadb.com/kb/en/st_geometrycollectionfromtext/','','https://mariadb.com/kb/en/st_geometrycollectionfromtext/'),(34,'ST_GeometryFromText',3,'A synonym for ST_GeomFromText.\n\n\n\nURL: mariadb.com/kb/en/st_geometryfromtext/','','https://mariadb.com/kb/en/st_geometryfromtext/'),(35,'ST_GeomFromText',3,'Syntax\n------\n\nST_GeomFromText(wkt[,srid])\nST_GeometryFromText(wkt[,srid])\nGeomFromText(wkt[,srid])\nGeometryFromText(wkt[,srid])\n\nDescription\n-----------\n\nConstructs a geometry value of any type using its WKT representation and SRID.\n\nGeomFromText(), GeometryFromText(), ST_GeomFromText() and\nST_GeometryFromText() are all synonyms.\n\nExample\n-------\n\nSET @g = ST_GEOMFROMTEXT(\'POLYGON((1 1,1 5,4 9,6 9,9 3,7 2,1 1))\');\n\n\n\nURL: mariadb.com/kb/en/st_geomfromtext/','','https://mariadb.com/kb/en/st_geomfromtext/'),(36,'ST_LineFromText',3,'Syntax\n------\n\nST_LineFromText(wkt[,srid])\nST_LineStringFromText(wkt[,srid])\nLineFromText(wkt[,srid])\nLineStringFromText(wkt[,srid])\n\nDescription\n-----------\n\nConstructs a LINESTRING value using its WKT representation and SRID.\n\nST_LineFromText(), ST_LineStringFromText(), ST_LineFromText() and\nST_LineStringFromText() are all synonyms.\n\nExamples\n--------\n\nCREATE TABLE gis_line  (g LINESTRING);\nSHOW FIELDS FROM gis_line;\nINSERT INTO gis_line VALUES\n  (LineFromText(\'LINESTRING(0 0,0 10,10 0)\')),\n  (LineStringFromText(\'LINESTRING(10 10,20 10,20 20,10 20,10 10)\')),\n  (LineStringFromWKB(AsWKB(LineString(Point(10, 10), Point(40, 10)))));\n\n\n\nURL: mariadb.com/kb/en/st_linefromtext/','','https://mariadb.com/kb/en/st_linefromtext/'),(37,'ST_LineStringFromText',3,'A synonym for ST_LineFromText.\n\n\n\nURL: mariadb.com/kb/en/st_linestringfromtext/','','https://mariadb.com/kb/en/st_linestringfromtext/'),(38,'ST_PointFromText',3,'Syntax\n------\n\nST_PointFromText(wkt[,srid])\nPointFromText(wkt[,srid])\n\nDescription\n-----------\n\nConstructs a POINT value using its WKT representation and SRID.\n\nST_PointFromText() and PointFromText() are synonyms.\n\nExamples\n--------\n\nCREATE TABLE gis_point  (g POINT);\nSHOW FIELDS FROM gis_point;\nINSERT INTO gis_point VALUES\n  (PointFromText(\'POINT(10 10)\')),\n  (PointFromText(\'POINT(20 10)\')),\n  (PointFromText(\'POINT(20 20)\')),\n  (PointFromWKB(AsWKB(PointFromText(\'POINT(10 20)\'))));\n\n\n\nURL: mariadb.com/kb/en/st_pointfromtext/','','https://mariadb.com/kb/en/st_pointfromtext/'),(39,'ST_PolyFromText',3,'Syntax\n------\n\nST_PolyFromText(wkt[,srid])\nST_PolygonFromText(wkt[,srid])\nPolyFromText(wkt[,srid])\nPolygonFromText(wkt[,srid])\n\nDescription\n-----------\n\nConstructs a POLYGON value using its WKT representation and SRID.\n\nST_PolyFromText(), ST_PolygonFromText(), PolyFromText() and\nST_PolygonFromText() are all synonyms.\n\nExamples\n--------\n\nCREATE TABLE gis_polygon   (g POLYGON);\nINSERT INTO gis_polygon VALUES\n  (PolygonFromText(\'POLYGON((10 10,20 10,20 20,10 20,10 10))\')),\n  (PolyFromText(\'POLYGON((0 0,50 0,50 50,0 50,0 0), (10 10,20 10,20 20,10\n20,10 10))\'));\n\n\n\nURL: mariadb.com/kb/en/st_polyfromtext/','','https://mariadb.com/kb/en/st_polyfromtext/'),(40,'ST_PolygonFromText',3,'A synonym for ST_PolyFromText.\n\n\n\nURL: mariadb.com/kb/en/st_polygonfromtext/','','https://mariadb.com/kb/en/st_polygonfromtext/'),(41,'Addition Operator (+)',4,'Syntax\n------\n\n+\n\nDescription\n-----------\n\nAddition.\n\nIf both operands are integers, the result is calculated with BIGINT precision.\nIf either integer is unsigned, the result is also an unsigned integer.\n\nFor real or string operands, the operand with the highest precision determines\nthe result precision.\n\nExamples\n--------\n\nSELECT 3+5;\n+-----+\n| 3+5 |\n+-----+\n|   8 |\n+-----+\n\n\n\nURL: mariadb.com/kb/en/addition-operator/','','https://mariadb.com/kb/en/addition-operator/'),(42,'Subtraction Operator (-)',4,'Syntax\n------\n\n-\n\nDescription\n-----------\n\nSubtraction. The operator is also used as the unary minus for changing sign.\n\nIf both operands are integers, the result is calculated with BIGINT precision.\nIf either integer is unsigned, the result is also an unsigned integer, unless\nthe NO_UNSIGNED_SUBTRACTION SQL_MODE is enabled, in which case the result is\nalways signed.\n\nFor real or string operands, the operand with the highest precision determines\nthe result precision.\n\nExamples\n--------\n\nSELECT 96-9;\n+------+\n| 96-9 |\n+------+\n|   87 |\n+------+\n\nSELECT 15-17;\n+-------+\n| 15-17 |\n+-------+\n|    -2 |\n+-------+\n\nSELECT 3.66 + 1.333;\n+--------------+\n| 3.66 + 1.333 |\n+--------------+\n|        4.993 |\n+--------------+\n\nUnary minus:\n\nSELECT - (3+5);\n+---------+\n| - (3+5) |\n+---------+\n|      -8 |\n+---------+\n\n\n\nURL: mariadb.com/kb/en/subtraction-operator-/','','https://mariadb.com/kb/en/subtraction-operator-/'),(43,'Division Operator (/)',4,'Syntax\n------\n\n/\n\nDescription\n-----------\n\nDivision operator. Dividing by zero will return NULL. By default, returns four\ndigits after the decimal. This is determined by the server system variable\ndiv_precision_increment which by default is four. It can be set from 0 to 30.\n\nDividing by zero returns NULL. If the ERROR_ON_DIVISION_BY_ZERO SQL_MODE is\nused (the default since MariaDB 10.2.4), a division by zero also produces a\nwarning.\n\nExamples\n--------\n\nSELECT 4/5;\n+--------+\n| 4/5    |\n+--------+\n| 0.8000 |\n+--------+\n\nSELECT 300/(2-2);\n+-----------+\n| 300/(2-2) |\n+-----------+\n|      NULL |\n+-----------+\n\nSELECT 300/7;\n+---------+\n| 300/7   |\n+---------+\n| 42.8571 |\n+---------+\n\nChanging div_precision_increment for the session from the default of four to\nsix:\n\nSET div_precision_increment = 6;\n\nSELECT 300/7;\n+-----------+\n| 300/7     |\n+-----------+\n| 42.857143 |\n+-----------+\n\nSELECT 300/7;\n+-----------+\n| 300/7     |\n+-----------+\n| 42.857143 |\n+-----------+\n\n\n\nURL: mariadb.com/kb/en/division-operator/','','https://mariadb.com/kb/en/division-operator/'),(44,'Multiplication Operator (*)',4,'Syntax\n------\n\n*\n\nDescription\n-----------\n\nMultiplication operator.\n\nExamples\n--------\n\nSELECT 7*6;\n+-----+\n| 7*6 |\n+-----+\n|  42 |\n+-----+\n\nSELECT 1234567890*9876543210;\n+-----------------------+\n| 1234567890*9876543210 |\n+-----------------------+\n|  -6253480962446024716 |\n+-----------------------+\n\nSELECT 18014398509481984*18014398509481984.0;\n+---------------------------------------+\n| 18014398509481984*18014398509481984.0 |\n+---------------------------------------+\n|   324518553658426726783156020576256.0 |\n+---------------------------------------+\n\nSELECT 18014398509481984*18014398509481984;\n+-------------------------------------+\n| 18014398509481984*18014398509481984 |\n+-------------------------------------+\n|                                   0 |\n+-------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/multiplication-operator/','','https://mariadb.com/kb/en/multiplication-operator/'),(45,'Modulo Operator (%)',4,'Syntax\n------\n\nN % M\n\nDescription\n-----------\n\nModulo operator. Returns the remainder of N divided by M. See also MOD.\n\nExamples\n--------\n\nSELECT 1042 % 50;\n+-----------+\n| 1042 % 50 |\n+-----------+\n|        42 |\n+-----------+\n\n\n\nURL: mariadb.com/kb/en/modulo-operator/','','https://mariadb.com/kb/en/modulo-operator/'),(46,'DIV',4,'Syntax\n------\n\nDIV\n\nDescription\n-----------\n\nInteger division. Similar to FLOOR(), but is safe with BIGINT values.\nIncorrect results may occur for non-integer operands that exceed BIGINT range.\n\nIf the ERROR_ON_DIVISION_BY_ZERO SQL_MODE is used, a division by zero produces\nan error. Otherwise, it returns NULL.\n\nThe remainder of a division can be obtained using the MOD operator.\n\nExamples\n--------\n\nSELECT 300 DIV 7;\n+-----------+\n| 300 DIV 7 |\n+-----------+\n|        42 |\n+-----------+\n\nSELECT 300 DIV 0;\n+-----------+\n| 300 DIV 0 |\n+-----------+\n|      NULL |\n+-----------+\n\n\n\nURL: mariadb.com/kb/en/div/','','https://mariadb.com/kb/en/div/'),(47,'ABS',4,'Syntax\n------\n\nABS(X)\n\nDescription\n-----------\n\nReturns the absolute (non-negative) value of X. If X is not a number, it is\nconverted to a numeric type.\n\nExamples\n--------\n\nSELECT ABS(42);\n+---------+\n| ABS(42) |\n+---------+\n|      42 |\n+---------+\n\nSELECT ABS(-42);\n+----------+\n| ABS(-42) |\n+----------+\n|       42 |\n+----------+\n\nSELECT ABS(DATE \'1994-01-01\');\n+------------------------+\n| ABS(DATE \'1994-01-01\') |\n+------------------------+\n|               19940101 |\n+------------------------+\n\n\n\nURL: mariadb.com/kb/en/abs/','','https://mariadb.com/kb/en/abs/'),(48,'ACOS',4,'Syntax\n------\n\nACOS(X)\n\nDescription\n-----------\n\nReturns the arc cosine of X, that is, the value whose cosine is X. Returns\nNULL if X is not in the range -1 to 1.\n\nExamples\n--------\n\nSELECT ACOS(1);\n+---------+\n| ACOS(1) |\n+---------+\n|       0 |\n+---------+\n\nSELECT ACOS(1.0001);\n+--------------+\n| ACOS(1.0001) |\n+--------------+\n|         NULL |\n+--------------+\n\nSELECT ACOS(0);\n+-----------------+\n| ACOS(0)         |\n+-----------------+\n| 1.5707963267949 |\n+-----------------+\n\nSELECT ACOS(0.234);\n+------------------+\n| ACOS(0.234)      |\n+------------------+\n| 1.33460644244679 |\n+------------------+\n\n\n\nURL: mariadb.com/kb/en/acos/','','https://mariadb.com/kb/en/acos/'),(49,'ASIN',4,'Syntax\n------\n\nASIN(X)\n\nDescription\n-----------\n\nReturns the arc sine of X, that is, the value whose sine is X. Returns NULL if\nX is not in the range -1 to 1.\n\nExamples\n--------\n\nSELECT ASIN(0.2);\n+--------------------+\n| ASIN(0.2)          |\n+--------------------+\n| 0.2013579207903308 |\n+--------------------+\n\nSELECT ASIN(\'foo\');\n+-------------+\n| ASIN(\'foo\') |\n+-------------+\n|           0 |\n+-------------+\n\nSHOW WARNINGS;\n+---------+------+-----------------------------------------+\n| Level   | Code | Message                                 |\n+---------+------+-----------------------------------------+\n| Warning | 1292 | Truncated incorrect DOUBLE value: \'foo\' |\n+---------+------+-----------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/asin/','','https://mariadb.com/kb/en/asin/'),(50,'ATAN',4,'Syntax\n------\n\nATAN(X)\n\nDescription\n-----------\n\nReturns the arc tangent of X, that is, the value whose tangent is X.\n\nExamples\n--------\n\nSELECT ATAN(2);\n+--------------------+\n| ATAN(2)            |\n+--------------------+\n| 1.1071487177940904 |\n+--------------------+\n\nSELECT ATAN(-2);\n+---------------------+\n| ATAN(-2)            |\n+---------------------+\n| -1.1071487177940904 |\n+---------------------+\n\n\n\nURL: mariadb.com/kb/en/atan/','','https://mariadb.com/kb/en/atan/'),(51,'ATAN2',4,'Syntax\n------\n\nATAN(Y,X), ATAN2(Y,X)\n\nDescription\n-----------\n\nReturns the arc tangent of the two variables X and Y. It is similar to\ncalculating the arc tangent of Y / X, except that the signs of both arguments\nare used to determine the quadrant of the result.\n\nExamples\n--------\n\nSELECT ATAN(-2,2);\n+---------------------+\n| ATAN(-2,2)          |\n+---------------------+\n| -0.7853981633974483 |\n+---------------------+\n\nSELECT ATAN2(PI(),0);\n+--------------------+\n| ATAN2(PI(),0)      |\n+--------------------+\n| 1.5707963267948966 |\n+--------------------+\n\n\n\nURL: mariadb.com/kb/en/atan2/','','https://mariadb.com/kb/en/atan2/'),(52,'CEIL',4,'Syntax\n------\n\nCEIL(X)\n\nDescription\n-----------\n\nCEIL() is a synonym for CEILING().\n\n\n\nURL: mariadb.com/kb/en/ceil/','','https://mariadb.com/kb/en/ceil/'),(53,'CEILING',4,'Syntax\n------\n\nCEILING(X)\n\nDescription\n-----------\n\nReturns the smallest integer value not less than X.\n\nExamples\n--------\n\nSELECT CEILING(1.23);\n+---------------+\n| CEILING(1.23) |\n+---------------+\n|             2 |\n+---------------+\n\nSELECT CEILING(-1.23);\n+----------------+\n| CEILING(-1.23) |\n+----------------+\n|             -1 |\n+----------------+\n\n\n\nURL: mariadb.com/kb/en/ceiling/','','https://mariadb.com/kb/en/ceiling/'),(54,'CONV',4,'Syntax\n------\n\nCONV(N,from_base,to_base)\n\nDescription\n-----------\n\nConverts numbers between different number bases. Returns a string\nrepresentation of the number N, converted from base from_base to base to_base.\n\nReturns NULL if any argument is NULL, or if the second or third argument are\nnot in the allowed range.\n\nThe argument N is interpreted as an integer, but may be specified as an\ninteger or a string. The minimum base is 2 and the maximum base is 36. If\nto_base is a negative number, N is regarded as a signed number. Otherwise, N\nis treated as unsigned. CONV() works with 64-bit precision.\n\nSome shortcuts for this function are also available: BIN(), OCT(), HEX(),\nUNHEX(). Also, MariaDB allows binary literal values and hexadecimal literal\nvalues.\n\nExamples\n--------\n\nSELECT CONV(\'a\',16,2);\n+----------------+\n| CONV(\'a\',16,2) |\n+----------------+\n| 1010           |\n+----------------+\n\nSELECT CONV(\'6E\',18,8);\n+-----------------+\n| CONV(\'6E\',18,8) |\n+-----------------+\n| 172             |\n+-----------------+\n\nSELECT CONV(-17,10,-18);\n+------------------+\n| CONV(-17,10,-18) |\n+------------------+\n| -H               |\n+------------------+\n\nSELECT CONV(12+\'10\'+\'10\'+0xa,10,10);\n+------------------------------+\n| CONV(12+\'10\'+\'10\'+0xa,10,10) |\n+------------------------------+\n| 42                           |\n+------------------------------+\n\n\n\nURL: mariadb.com/kb/en/conv/','','https://mariadb.com/kb/en/conv/'),(55,'COS',4,'Syntax\n------\n\nCOS(X)\n\nDescription\n-----------\n\nReturns the cosine of X, where X is given in radians.\n\nExamples\n--------\n\nSELECT COS(PI());\n+-----------+\n| COS(PI()) |\n+-----------+\n|        -1 |\n+-----------+\n\n\n\nURL: mariadb.com/kb/en/cos/','','https://mariadb.com/kb/en/cos/'),(56,'COT',4,'Syntax\n------\n\nCOT(X)\n\nDescription\n-----------\n\nReturns the cotangent of X.\n\nExamples\n--------\n\nSELECT COT(42);\n+--------------------+\n| COT(42)            |\n+--------------------+\n| 0.4364167060752729 |\n+--------------------+\n\nSELECT COT(12);\n+---------------------+\n| COT(12)             |\n+---------------------+\n| -1.5726734063976893 |\n+---------------------+\n\nSELECT COT(0);\nERROR 1690 (22003): DOUBLE value is out of range in \'cot(0)\'\n\n\n\nURL: mariadb.com/kb/en/cot/','','https://mariadb.com/kb/en/cot/'),(57,'CRC32',4,'Syntax\n------\n\n<= MariaDB 10.7\n\nCRC32(expr)\n\nFrom MariaDB 10.8\n\nCRC32([par,]expr)\n\nDescription\n-----------\n\nComputes a cyclic redundancy check (CRC) value and returns a 32-bit unsigned\nvalue. The result is NULL if the argument is NULL. The argument is expected to\nbe a string and (if possible) is treated as one if it is not.\n\nUses the ISO 3309 polynomial that used by zlib and many others. MariaDB 10.8\nintroduced the CRC32C() function, which uses the alternate Castagnoli\npolynomia.\n\nMariaDB starting with 10.8\n--------------------------\nOften, CRC is computed in pieces. To facilitate this, MariaDB 10.8.0\nintroduced an optional parameter: CRC32(\'MariaDB\')=CRC32(CRC32(\'Maria\'),\'DB\').\n\nExamples\n--------\n\nSELECT CRC32(\'MariaDB\');\n+------------------+\n| CRC32(\'MariaDB\') |\n+------------------+\n|       4227209140 |\n+------------------+\n\nSELECT CRC32(\'mariadb\');\n+------------------+\n| CRC32(\'mariadb\') |\n+------------------+\n|       2594253378 |\n+------------------+\n\nFrom MariaDB 10.8.0\n\nSELECT CRC32(CRC32(\'Maria\'),\'DB\');\n+----------------------------+\n| CRC32(CRC32(\'Maria\'),\'DB\') |\n+----------------------------+\n|                 4227209140 |\n+----------------------------+\n\n\n\nURL: mariadb.com/kb/en/crc32/','','https://mariadb.com/kb/en/crc32/'),(58,'DEGREES',4,'Syntax\n------\n\nDEGREES(X)\n\nDescription\n-----------\n\nReturns the argument X, converted from radians to degrees.\n\nThis is the converse of the RADIANS() function.\n\nExamples\n--------\n\nSELECT DEGREES(PI());\n+---------------+\n| DEGREES(PI()) |\n+---------------+\n|           180 |\n+---------------+\n\nSELECT DEGREES(PI() / 2);\n+-------------------+\n| DEGREES(PI() / 2) |\n+-------------------+\n|                90 |\n+-------------------+\n\nSELECT DEGREES(45);\n+-----------------+\n| DEGREES(45)     |\n+-----------------+\n| 2578.3100780887 |\n+-----------------+\n\n\n\nURL: mariadb.com/kb/en/degrees/','','https://mariadb.com/kb/en/degrees/'),(59,'EXP',4,'Syntax\n------\n\nEXP(X)\n\nDescription\n-----------\n\nReturns the value of e (the base of natural logarithms) raised to the power of\nX. The inverse of this function is LOG() (using a single argument only) or\nLN().\n\nIf X is NULL, this function returns NULL.\n\nExamples\n--------\n\nSELECT EXP(2);\n+------------------+\n| EXP(2)           |\n+------------------+\n| 7.38905609893065 |\n+------------------+\n\nSELECT EXP(-2);\n+--------------------+\n| EXP(-2)            |\n+--------------------+\n| 0.1353352832366127 |\n+--------------------+\n\nSELECT EXP(0);\n+--------+\n| EXP(0) |\n+--------+\n|      1 |\n+--------+\n\nSELECT EXP(NULL);\n+-----------+\n| EXP(NULL) |\n+-----------+\n|      NULL |\n+-----------+\n\n\n\nURL: mariadb.com/kb/en/exp/','','https://mariadb.com/kb/en/exp/'),(60,'FLOOR',4,'Syntax\n------\n\nFLOOR(X)\n\nDescription\n-----------\n\nReturns the largest integer value not greater than X.\n\nExamples\n--------\n\nSELECT FLOOR(1.23);\n+-------------+\n| FLOOR(1.23) |\n+-------------+\n|           1 |\n+-------------+\n\nSELECT FLOOR(-1.23);\n+--------------+\n| FLOOR(-1.23) |\n+--------------+\n|           -2 |\n+--------------+\n\n\n\nURL: mariadb.com/kb/en/floor/','','https://mariadb.com/kb/en/floor/'),(61,'LN',4,'Syntax\n------\n\nLN(X)\n\nDescription\n-----------\n\nReturns the natural logarithm of X; that is, the base-e logarithm of X. If X\nis less than or equal to 0, or NULL, then NULL is returned.\n\nThe inverse of this function is EXP().\n\nExamples\n--------\n\nSELECT LN(2);\n+-------------------+\n| LN(2)             |\n+-------------------+\n| 0.693147180559945 |\n+-------------------+\n\nSELECT LN(-2);\n+--------+\n| LN(-2) |\n+--------+\n|   NULL |\n+--------+\n\n\n\nURL: mariadb.com/kb/en/ln/','','https://mariadb.com/kb/en/ln/'),(62,'LOG',4,'Syntax\n------\n\nLOG(X), LOG(B,X)\n\nDescription\n-----------\n\nIf called with one parameter, this function returns the natural logarithm of\nX. If X is less than or equal to 0, then NULL is returned.\n\nIf called with two parameters, it returns the logarithm of X to the base B. If\nB is <= 1 or X <= 0, the function returns NULL.\n\nIf any argument is NULL, the function returns NULL.\n\nThe inverse of this function (when called with a single argument) is the EXP()\nfunction.\n\nExamples\n--------\n\nLOG(X):\n\nSELECT LOG(2);\n+-------------------+\n| LOG(2)            |\n+-------------------+\n| 0.693147180559945 |\n+-------------------+\n\nSELECT LOG(-2);\n+---------+\n| LOG(-2) |\n+---------+\n|    NULL |\n+---------+\n\nLOG(B,X)\n\nSELECT LOG(2,16);\n+-----------+\n| LOG(2,16) |\n+-----------+\n|         4 |\n+-----------+\n\nSELECT LOG(3,27);\n+-----------+\n| LOG(3,27) |\n+-----------+\n|         3 |\n+-----------+\n\nSELECT LOG(3,1);\n+----------+\n| LOG(3,1) |\n+----------+\n|        0 |\n+----------+\n\nSELECT LOG(3,0);\n+----------+\n| LOG(3,0) |\n+----------+\n|     NULL |\n+----------+\n\n\n\nURL: mariadb.com/kb/en/log/','','https://mariadb.com/kb/en/log/'),(63,'LOG10',4,'Syntax\n------\n\nLOG10(X)\n\nDescription\n-----------\n\nReturns the base-10 logarithm of X.\n\nExamples\n--------\n\nSELECT LOG10(2);\n+-------------------+\n| LOG10(2)          |\n+-------------------+\n| 0.301029995663981 |\n+-------------------+\n\nSELECT LOG10(100);\n+------------+\n| LOG10(100) |\n+------------+\n|          2 |\n+------------+\n\nSELECT LOG10(-100);\n+-------------+\n| LOG10(-100) |\n+-------------+\n|        NULL |\n+-------------+\n\n\n\nURL: mariadb.com/kb/en/log10/','','https://mariadb.com/kb/en/log10/'),(64,'LOG2',4,'Syntax\n------\n\nLOG2(X)\n\nDescription\n-----------\n\nReturns the base-2 logarithm of X.\n\nExamples\n--------\n\nSELECT LOG2(4398046511104);\n+---------------------+\n| LOG2(4398046511104) |\n+---------------------+\n|                  42 |\n+---------------------+\n\nSELECT LOG2(65536);\n+-------------+\n| LOG2(65536) |\n+-------------+\n|          16 |\n+-------------+\n\nSELECT LOG2(-100);\n+------------+\n| LOG2(-100) |\n+------------+\n|       NULL |\n+------------+\n\n\n\nURL: mariadb.com/kb/en/log2/','','https://mariadb.com/kb/en/log2/'),(65,'MOD',4,'Syntax\n------\n\nMOD(N,M), N % M, N MOD M\n\nDescription\n-----------\n\nModulo operation. Returns the remainder of N divided by M. See also Modulo\nOperator.\n\nIf the ERROR_ON_DIVISION_BY_ZERO SQL_MODE is used, any number modulus zero\nproduces an error. Otherwise, it returns NULL.\n\nThe integer part of a division can be obtained using DIV.\n\nExamples\n--------\n\nSELECT 1042 % 50;\n+-----------+\n| 1042 % 50 |\n+-----------+\n|        42 |\n+-----------+\n\nSELECT MOD(234, 10);\n+--------------+\n| MOD(234, 10) |\n+--------------+\n|            4 |\n+--------------+\n\nSELECT 253 % 7;\n+---------+\n| 253 % 7 |\n+---------+\n|       1 |\n+---------+\n\nSELECT MOD(29,9);\n+-----------+\n| MOD(29,9) |\n+-----------+\n|         2 |\n+-----------+\n\nSELECT 29 MOD 9;\n+----------+\n| 29 MOD 9 |\n+----------+\n|        2 |\n+----------+\n\n\n\nURL: mariadb.com/kb/en/mod/','','https://mariadb.com/kb/en/mod/'),(66,'OCT',4,'Syntax\n------\n\nOCT(N)\n\nDescription\n-----------\n\nReturns a string representation of the octal value of N, where N is a longlong\n(BIGINT) number. This is equivalent to CONV(N,10,8). Returns NULL if N is NULL.\n\nExamples\n--------\n\nSELECT OCT(34);\n+---------+\n| OCT(34) |\n+---------+\n| 42      |\n+---------+\n\nSELECT OCT(12);\n+---------+\n| OCT(12) |\n+---------+\n| 14      |\n+---------+\n\n\n\nURL: mariadb.com/kb/en/oct/','','https://mariadb.com/kb/en/oct/'),(67,'PI',4,'Syntax\n------\n\nPI()\n\nDescription\n-----------\n\nReturns the value of π (pi). The default number of decimal places displayed is\nsix, but MariaDB uses the full double-precision value internally.\n\nExamples\n--------\n\nSELECT PI();\n+----------+\n| PI()     |\n+----------+\n| 3.141593 |\n+----------+\n\nSELECT PI()+0.0000000000000000000000;\n+-------------------------------+\n| PI()+0.0000000000000000000000 |\n+-------------------------------+\n|      3.1415926535897931159980 |\n+-------------------------------+\n\n\n\nURL: mariadb.com/kb/en/pi/','','https://mariadb.com/kb/en/pi/'),(68,'POW',4,'Syntax\n------\n\nPOW(X,Y)\n\nDescription\n-----------\n\nReturns the value of X raised to the power of Y.\n\nPOWER() is a synonym.\n\nExamples\n--------\n\nSELECT POW(2,3);\n+----------+\n| POW(2,3) |\n+----------+\n|        8 |\n+----------+\n\nSELECT POW(2,-2);\n+-----------+\n| POW(2,-2) |\n+-----------+\n|      0.25 |\n+-----------+\n\n\n\nURL: mariadb.com/kb/en/pow/','','https://mariadb.com/kb/en/pow/'),(69,'POWER',4,'Syntax\n------\n\nPOWER(X,Y)\n\nDescription\n-----------\n\nThis is a synonym for POW(), which returns the value of X raised to the power\nof Y.\n\n\n\nURL: mariadb.com/kb/en/power/','','https://mariadb.com/kb/en/power/'),(70,'RADIANS',4,'Syntax\n------\n\nRADIANS(X)\n\nDescription\n-----------\n\nReturns the argument X, converted from degrees to radians. Note that π radians\nequals 180 degrees.\n\nThis is the converse of the DEGREES() function.\n\nExamples\n--------\n\nSELECT RADIANS(45);\n+-------------------+\n| RADIANS(45)       |\n+-------------------+\n| 0.785398163397448 |\n+-------------------+\n\nSELECT RADIANS(90);\n+-----------------+\n| RADIANS(90)     |\n+-----------------+\n| 1.5707963267949 |\n+-----------------+\n\nSELECT RADIANS(PI());\n+--------------------+\n| RADIANS(PI())      |\n+--------------------+\n| 0.0548311355616075 |\n+--------------------+\n\nSELECT RADIANS(180);\n+------------------+\n| RADIANS(180)     |\n+------------------+\n| 3.14159265358979 |\n+------------------+\n\n\n\nURL: mariadb.com/kb/en/radians/','','https://mariadb.com/kb/en/radians/'),(73,'SIGN',4,'Syntax\n------\n\nSIGN(X)\n\nDescription\n-----------\n\nReturns the sign of the argument as -1, 0, or 1, depending on whether X is\nnegative, zero, or positive.\n\nExamples\n--------\n\nSELECT SIGN(-32);\n+-----------+\n| SIGN(-32) |\n+-----------+\n|        -1 |\n+-----------+\n\nSELECT SIGN(0);\n+---------+\n| SIGN(0) |\n+---------+\n|       0 |\n+---------+\n\nSELECT SIGN(234);\n+-----------+\n| SIGN(234) |\n+-----------+\n|         1 |\n+-----------+\n\n\n\nURL: mariadb.com/kb/en/sign/','','https://mariadb.com/kb/en/sign/'),(74,'SIN',4,'Syntax\n------\n\nSIN(X)\n\nDescription\n-----------\n\nReturns the sine of X, where X is given in radians.\n\nExamples\n--------\n\nSELECT SIN(1.5707963267948966);\n+-------------------------+\n| SIN(1.5707963267948966) |\n+-------------------------+\n|                       1 |\n+-------------------------+\n\nSELECT SIN(PI());\n+----------------------+\n| SIN(PI())            |\n+----------------------+\n| 1.22460635382238e-16 |\n+----------------------+\n\nSELECT ROUND(SIN(PI()));\n+------------------+\n| ROUND(SIN(PI())) |\n+------------------+\n|                0 |\n+------------------+\n\n\n\nURL: mariadb.com/kb/en/sin/','','https://mariadb.com/kb/en/sin/'),(75,'SQRT',4,'Syntax\n------\n\nSQRT(X)\n\nDescription\n-----------\n\nReturns the square root of X. If X is negative, NULL is returned.\n\nExamples\n--------\n\nSELECT SQRT(4);\n+---------+\n| SQRT(4) |\n+---------+\n|       2 |\n+---------+\n\nSELECT SQRT(20);\n+------------------+\n| SQRT(20)         |\n+------------------+\n| 4.47213595499958 |\n+------------------+\n\nSELECT SQRT(-16);\n+-----------+\n| SQRT(-16) |\n+-----------+\n|      NULL |\n+-----------+\n\nSELECT SQRT(1764);\n+------------+\n| SQRT(1764) |\n+------------+\n|         42 |\n+------------+\n\n\n\nURL: mariadb.com/kb/en/sqrt/','','https://mariadb.com/kb/en/sqrt/'),(76,'TAN',4,'Syntax\n------\n\nTAN(X)\n\nDescription\n-----------\n\nReturns the tangent of X, where X is given in radians.\n\nExamples\n--------\n\nSELECT TAN(0.7853981633974483);\n+-------------------------+\n| TAN(0.7853981633974483) |\n+-------------------------+\n|      0.9999999999999999 |\n+-------------------------+\n\nSELECT TAN(PI());\n+-----------------------+\n| TAN(PI())             |\n+-----------------------+\n| -1.22460635382238e-16 |\n+-----------------------+\n\nSELECT TAN(PI()+1);\n+-----------------+\n| TAN(PI()+1)     |\n+-----------------+\n| 1.5574077246549 |\n+-----------------+\n\nSELECT TAN(RADIANS(PI()));\n+--------------------+\n| TAN(RADIANS(PI())) |\n+--------------------+\n| 0.0548861508080033 |\n+--------------------+\n\n\n\nURL: mariadb.com/kb/en/tan/','','https://mariadb.com/kb/en/tan/'),(71,'RAND',4,'Syntax\n------\n\nRAND(), RAND(N)\n\nDescription\n-----------\n\nReturns a random DOUBLE precision floating point value v in the range 0 <= v <\n1.0. If a constant integer argument N is specified, it is used as the seed\nvalue, which produces a repeatable sequence of column values. In the example\nbelow, note that the sequences of values produced by RAND(3) is the same both\nplaces where it occurs.\n\nIn a WHERE clause, RAND() is evaluated each time the WHERE is executed.\n\nStatements using the RAND() function are not safe for statement-based\nreplication.\n\nPractical uses\n--------------\n\nThe expression to get a random integer from a given range is the following:\n\nFLOOR(min_value + RAND() * (max_value - min_value +1))\n\nRAND() is often used to read random rows from a table, as follows:\n\nSELECT * FROM my_table ORDER BY RAND() LIMIT 10;\n\nNote, however, that this technique should never be used on a large table as it\nwill be extremely slow. MariaDB will read all rows in the table, generate a\nrandom value for each of them, order them, and finally will apply the LIMIT\nclause.\n\nExamples\n--------\n\nCREATE TABLE t (i INT);\n\nINSERT INTO t VALUES(1),(2),(3);\n\nSELECT i, RAND() FROM t;\n+------+-------------------+\n| i    | RAND()            |\n+------+-------------------+\n|    1 | 0.255651095188829 |\n|    2 | 0.833920199269355 |\n|    3 |  0.40264774151393 |\n+------+-------------------+\n\nSELECT i, RAND(3) FROM t;\n+------+-------------------+\n| i    | RAND(3)           |\n+------+-------------------+\n|    1 |  0.90576975597606 |\n|    2 | 0.373079058130345 |\n|    3 | 0.148086053457191 |\n+------+-------------------+\n\nSELECT i, RAND() FROM t;\n+------+-------------------+\n| i    | RAND()            |\n+------+-------------------+\n|    1 | 0.511478140495232 |\n|    2 | 0.349447508668012 |\n|    3 | 0.212803152588013 |\n+------+-------------------+\n\nUsing the same seed, the same sequence will be returned:\n\nSELECT i, RAND(3) FROM t;\n+------+-------------------+\n| i    | RAND(3)           |\n+------+-------------------+\n|    1 |  0.90576975597606 |\n|    2 | 0.373079058130345 |\n|    3 | 0.148086053457191 |\n+------+-------------------+\n\nGenerating a random number from 5 to 15:\n\nSELECT FLOOR(5 + (RAND() * 11));\n\n\n\nURL: mariadb.com/kb/en/rand/','','https://mariadb.com/kb/en/rand/'),(72,'ROUND',4,'Syntax\n------\n\nROUND(X), ROUND(X,D)\n\nDescription\n-----------\n\nRounds the argument X to D decimal places. The rounding algorithm depends on\nthe data type of X. D defaults to 0 if not specified. D can be negative to\ncause D digits left of the decimal point of the value X to become zero.\n\nExamples\n--------\n\nSELECT ROUND(-1.23);\n+--------------+\n| ROUND(-1.23) |\n+--------------+\n|           -1 |\n+--------------+\n\nSELECT ROUND(-1.58);\n+--------------+\n| ROUND(-1.58) |\n+--------------+\n|           -2 |\n+--------------+\n\nSELECT ROUND(1.58); \n+-------------+\n| ROUND(1.58) |\n+-------------+\n|           2 |\n+-------------+\n\nSELECT ROUND(1.298, 1);\n+-----------------+\n| ROUND(1.298, 1) |\n+-----------------+\n|             1.3 |\n+-----------------+\n\nSELECT ROUND(1.298, 0);\n+-----------------+\n| ROUND(1.298, 0) |\n+-----------------+\n|               1 |\n+-----------------+\n\nSELECT ROUND(23.298, -1);\n+-------------------+\n| ROUND(23.298, -1) |\n+-------------------+\n|                20 |\n+-------------------+\n\n\n\nURL: mariadb.com/kb/en/round/','','https://mariadb.com/kb/en/round/'),(77,'TRUNCATE',4,'This page documents the TRUNCATE function. See TRUNCATE TABLE for the\nDDL statement.\n\nSyntax\n------\n\nTRUNCATE(X,D)\n\nDescription\n-----------\n\nReturns the number X, truncated to D decimal places. If D is 0, the result has\nno decimal point or fractional part. D can be negative to cause D digits left\nof the decimal point of the value X to become zero.\n\nExamples\n--------\n\nSELECT TRUNCATE(1.223,1);\n+-------------------+\n| TRUNCATE(1.223,1) |\n+-------------------+\n|               1.2 |\n+-------------------+\n\nSELECT TRUNCATE(1.999,1);\n+-------------------+\n| TRUNCATE(1.999,1) |\n+-------------------+\n|               1.9 |\n+-------------------+\n\nSELECT TRUNCATE(1.999,0); \n+-------------------+\n| TRUNCATE(1.999,0) |\n+-------------------+\n|                 1 |\n+-------------------+\n\nSELECT TRUNCATE(-1.999,1);\n+--------------------+\n| TRUNCATE(-1.999,1) |\n+--------------------+\n|               -1.9 |\n+--------------------+\n\nSELECT TRUNCATE(122,-2);\n+------------------+\n| TRUNCATE(122,-2) |\n+------------------+\n|              100 |\n+------------------+\n\nSELECT TRUNCATE(10.28*100,0);\n+-----------------------+\n| TRUNCATE(10.28*100,0) |\n+-----------------------+\n|                  1028 |\n+-----------------------+\n\n\n\nURL: mariadb.com/kb/en/truncate/','','https://mariadb.com/kb/en/truncate/'),(78,'Plugin Overview',5,'Plugins are server components that enhance MariaDB in some way. These can be\nanything from new storage engines, plugins for enhancing full-text parsing, or\neven small enhancements, such as a plugin to get a timestamp as an integer.\n\nQuerying Plugin Information\n---------------------------\n\nThere are a number of ways to see which plugins are currently active.\n\nA server almost always has a large number of active plugins, because the\nserver contains a large number of built-in plugins, which are active by\ndefault and cannot be uninstalled.\n\nQuerying Plugin Information with SHOW PLUGINS\n---------------------------------------------\n\nThe SHOW PLUGINS statement can be used to query information about all active\nplugins.\n\nFor example:\n\nSHOW PLUGINSG;\n********************** 1. row **********************\n Name: binlog\n Status: ACTIVE\n Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n********************** 2. row **********************\n Name: mysql_native_password\n Status: ACTIVE\n Type: AUTHENTICATION\nLibrary: NULL\nLicense: GPL\n********************** 3. row **********************\n Name: mysql_old_password\n Status: ACTIVE\n Type: AUTHENTICATION\nLibrary: NULL\nLicense: GPL\n...\n\nIf a plugin\'s Library column has a NULL value, then the plugin is built-in,\nand it cannot be uninstalled.\n\nQuerying Plugin Information with information_schema.PLUGINS\n-----------------------------------------------------------\n\nThe information_schema.PLUGINS table can be queried to get more detailed\ninformation about plugins.\n\nFor example:\n\nSELECT * FROM information_schema.PLUGINSG\n...\n*************************** 6. row ***************************\n     PLUGIN_NAME: CSV\n    PLUGIN_VERSION: 1.0\n    PLUGIN_STATUS: ACTIVE\n     PLUGIN_TYPE: STORAGE ENGINE\n PLUGIN_TYPE_VERSION: 100003.0\n    PLUGIN_LIBRARY: NULL\nPLUGIN_LIBRARY_VERSION: NULL\n    PLUGIN_AUTHOR: Brian Aker, MySQL AB\n  PLUGIN_DESCRIPTION: CSV storage engine\n    PLUGIN_LICENSE: GPL\n     LOAD_OPTION: FORCE\n   PLUGIN_MATURITY: Stable\n PLUGIN_AUTH_VERSION: 1.0\n*************************** 7. row ***************************\n     PLUGIN_NAME: MEMORY\n    PLUGIN_VERSION: 1.0\n    PLUGIN_STATUS: ACTIVE\n     PLUGIN_TYPE: STORAGE ENGINE\n PLUGIN_TYPE_VERSION: 100003.0\n    PLUGIN_LIBRARY: NULL\nPLUGIN_LIBRARY_VERSION: NULL\n    PLUGIN_AUTHOR: MySQL AB\n  PLUGIN_DESCRIPTION: Hash based, stored in memory, useful for temporary\ntables\n    PLUGIN_LICENSE: GPL\n     LOAD_OPTION: FORCE\n   PLUGIN_MATURITY: Stable\n PLUGIN_AUTH_VERSION: 1.0\n...\n\nIf a plugin\'s PLUGIN_LIBRARY column has the NULL value, then the plugin is\nbuilt-in, and it cannot be uninstalled.\n\nQuerying Plugin Information with mysql.plugin\n---------------------------------------------\n\nThe mysql.plugin table can be queried to get information about installed\nplugins.\n\nThis table only contains information about plugins that have been installed\nvia the following methods:\n\n* The INSTALL SONAME statement.\n* The INSTALL PLUGIN statement.\n* The mysql_plugin utility.\n\nThis table does not contain information about:\n\n* Built-in plugins.\n* Plugins loaded with the --plugin-load-add option.\n* Plugins loaded with the --plugin-load option.\n\nThis table only contains enough information to reload the plugin when the\nserver is restarted, which means it only contains the plugin name and the\nplugin library.\n\nFor example:\n\nSELECT * FROM mysql.plugin;\n\n+------+------------+\n| name | dl         |\n+------+------------+\n| PBXT | libpbxt.so |\n+------+------------+\n\nInstalling a Plugin\n-------------------\n\nThere are three primary ways to install a plugin:\n\n* A plugin can be installed dynamically with an SQL statement.\n* A plugin can be installed with a mysqld option, but it requires a server\nrestart.\n* A plugin can be installed with the mysql_plugin utility, while the server is\ncompletely offline.\n\nWhen you are installing a plugin, you also have to ensure that:\n\n* The server\'s plugin directory is properly configured, and the plugin\'s\nlibrary is in the plugin directory.\n* The server\'s minimum plugin maturity is properly configured, and the plugin\nis mature enough to be installed.\n\nInstalling a Plugin Dynamically\n-------------------------------\n\nA plugin can be installed dynamically by executing either the INSTALL SONAME\nor the INSTALL PLUGIN statement.\n\nIf a plugin is installed with one of these statements, then a record will be\nadded to the mysql.plugins table for the plugin. This means that the plugin\nwill automatically be loaded every time the server restarts, unless\nspecifically uninstalled or deactivated.\n\nInstalling a Plugin with INSTALL SONAME\n---------------------------------------\n\nYou can install a plugin dynamically by executing the INSTALL SONAME\nstatement. INSTALL SONAME installs all plugins from the given plugin library.\nThis could be required for some plugin libraries.\n\nFor example, to install all plugins in the server_audit plugin library (which\nis currently only the server_audit audit plugin), you could execute the\nfollowing:\n\nINSTALL SONAME \'server_audit\';\n\nInstalling a Plugin with INSTALL PLUGIN\n---------------------------------------\n\nYou can install a plugin dynamically by executing the INSTALL PLUGIN\nstatement. INSTALL PLUGIN installs a single plugin from the given plugin\nlibrary.\n\nFor example, to install the server_audit audit plugin from the server_audit\nplugin library, you could execute the following:\n\nINSTALL PLUGIN server_audit SONAME \'server_audit\';\n\nInstalling a Plugin with Plugin Load Options\n--------------------------------------------\n\nA plugin can be installed with a mysqld option by providing either the\n--plugin-load-add or the --plugin-load option.\n\nIf a plugin is installed with one of these options, then a record will not be\nadded to the mysql.plugins table for the plugin. This means that if the server\nis restarted without the same option set, then the plugin will not\nautomatically be loaded.\n\nInstalling a Plugin with --plugin-load-add\n------------------------------------------\n\nYou can install a plugin with the --plugin-load-add option by specifying the\noption as a command-line argument to mysqld or by specifying the option in a\nrelevant server option group in an option file.\n\nThe --plugin-load-add option uses the following format:\n\n* Plugins can be specified in the format name=library, where name is the\nplugin name and library is the plugin library. This format installs a single\nplugin from the given plugin library.\n* Plugins can also be specified in the format library, where library is the\nplugin library. This format installs all plugins from the given plugin library.\n* Multiple plugins can be specified by separating them with semicolons.\n\nFor example, to install all plugins in the server_audit plugin library (which\nis currently only the server_audit audit plugin) and also the ed25519\nauthentication plugin from the auth_ed25519 plugin library, you could set the\noption to the following values on the command-line:\n\n$ mysqld --user=mysql --plugin-load-add=\'server_audit\'\n--plugin-load-add=\'ed25519=auth_ed25519\'\n\nYou could also set the option to the same values in an option file:\n\n[mariadb]\n...\nplugin_load_add = server_audit\nplugin_load_add = ed25519=auth_ed25519\n\nSpecial care must be taken when specifying both the --plugin-load option and\nthe --plugin-load-add option together. The --plugin-load option resets the\nplugin load list, and this can cause unexpected problems if you are not aware.\nThe --plugin-load-add option does not reset the plugin load list, so it is\nmuch safer to use. See Specifying Multiple Plugin Load Options for more\ninformation.\n\nInstalling a Plugin with --plugin-load\n--------------------------------------\n\nYou can install a plugin with the --plugin-load option by specifying the\noption as a command-line argument to mysqld or by specifying the option in a\nrelevant server option group in an option file.\n\nThe --plugin-load option uses the following format:\n\n* Plugins can be specified in the format name=library, where name is the\nplugin name and library is the plugin library. This format installs a single\nplugin from the given plugin library.\n* Plugins can also be specified in the format library, where library is the\nplugin library. This format installs all plugins from the given plugin library.\n* Multiple plugins can be specified by separating them with semicolons.\n\nFor example, to install all plugins in the server_audit plugin library (which\nis currently only the server_audit audit plugin) and also the ed25519\nauthentication plugin from the auth_ed25519 plugin library, you could set the\noption to the following values on the command-line:\n\n$ mysqld --user=mysql --plugin-load=\'server_audit;ed25519=auth_ed25519\'\n\nYou could also set the option to the same values in an option file:\n\n[mariadb]\n...\nplugin_load = server_audit;ed25519=auth_ed25519\n\nSpecial care must be taken when specifying the --plugin-load option multiple\ntimes, or when specifying both the --plugin-load option and the\n--plugin-load-add option together. The --plugin-load option resets the plugin\nload list, and this can cause unexpected problems if you are not aware. The\n--plugin-load-add option does not reset the plugin load list, so it is much\nsafer to use. See Specifying Multiple Plugin Load Options for more information.\n\nSpecifying Multiple Plugin Load Options\n---------------------------------------\n\nSpecial care must be taken when specifying the --plugin-load option multiple\ntimes, or when specifying both the --plugin-load option and the\n--plugin-load-add option. The --plugin-load option resets the plugin load\nlist, and this can cause unexpected problems if you are not aware. The\n--plugin-load-add option does not reset the plugin load list, so it is much\nsafer to use.\n\nThis can have the following consequences:\n\n* If the --plugin-load option is specified multiple times, then only the last\ninstance will have any effect. For example, in the following case, the first\ninstance of the option is reset:\n\n[mariadb]\n...\nplugin_load = server_audit\nplugin_load = ed25519=auth_ed25519\n\n* If the --plugin-load option is specified after the --plugin-load-add option,\nthen it will also reset the changes made by that option. For example, in the\nfollowing case, the --plugin-load-add option does not do anything, because the\nsubsequent --plugin-load option resets the plugin load list:\n\n[mariadb]\n...\nplugin_load_add = server_audit\nplugin_load = ed25519=auth_ed25519\n\n* In contrast, if the --plugin-load option is specified before the\n--plugin-load-add option, then it will work fine, because the\n--plugin-load-add option does not reset the plugin load list. For example, in\nthe following case, both plugins are properly loaded:\n\n[mariadb]\n...\nplugin_load = server_audit\nplugin_load_add = ed25519=auth_ed25519\n\nInstalling a Plugin with mysql_plugin\n-------------------------------------\n\nA plugin can be installed with the mysql_plugin utility if the server is\ncompletely offline.\n\nThe syntax is:\n\nmysql_plugin [options] <plugin> ENABLE|DISABLE\n\nFor example, to install the server_audit audit plugin, you could execute the\nfollowing:\n\nmysql_plugin server_audit ENABLE\n\nIf a plugin is installed with this utility, then a record will be added to the\nmysql.plugins table for the plugin. This means that the plugin will\nautomatically be loaded every time the server restarts, unless specifically\nuninstalled or deactivated.\n\nConfiguring the Plugin Directory\n--------------------------------\n\nWhen a plugin is being installed, the server looks for the plugin\'s library in\nthe server\'s plugin directory. This directory is configured by the plugin_dir\nsystem variable. This can be specified as a command-line argument to mysqld or\nit can be specified in a relevant server option group in an option file. For\nexample:\n\n[mariadb]\n...\nplugin_dir = /usr/lib64/mysql/plugin\n\nConfiguring the Minimum Plugin Maturity\n---------------------------------------\n\nWhen a plugin is being installed, the server compares the plugin\'s maturity\nlevel against the server\'s minimum allowed plugin maturity. This can help\nprevent users from using unstable plugins on production servers. This minimum\nplugin maturity is configured by the plugin_maturity system variable. This can\nbe specified as a command-line argument to mysqld or it can be specified in a\nrelevant server option group in an option file. For example:\n\n[mariadb]\n...\nplugin_maturity = stable\n\nConfiguring Plugin Activation at Server Startup\n-----------------------------------------------\n\nA plugin will be loaded by default when the server starts if:\n\n* The plugin was installed with the INSTALL SONAME statement.\n* The plugin was installed with the INSTALL PLUGIN statement.\n* The plugin was installed with the mysql_plugin utility.\n* The server is configured to load the plugin with the --plugin-load-add\noption.\n* The server is configured to load the plugin with the --plugin-load option.\n\nThis behavior can be changed with special options that take the form\n--plugin-name. For example, for the server_audit audit plugin, the special\noption is called --server-audit.\n\nThe possible values for these special options are:\n\n+----------------------------------------+------------------------------------+\n| Option Value                           | Description                        |\n+----------------------------------------+------------------------------------+\n| OFF                                    | Disables the plugin without        |\n|                                        | removing it from the               |\n|                                        | mysql.plugins table.               |\n+----------------------------------------+------------------------------------+\n| ON                                     | Enables the plugin. If the plugin  |\n|                                        | cannot be initialized, then the    |\n|                                        | server will still continue         |\n|                                        | starting up, but the plugin will   |\n|                                        | be disabled.                       |\n+----------------------------------------+------------------------------------+\n| FORCE                                  | Enables the plugin. If the plugin  |\n|                                        | cannot be initialized, then the    |\n|                                        | server will fail to start with an  |\n|                                        | error.                             |\n+----------------------------------------+------------------------------------+\n| FORCE_PLUS_PERMANENT                   | Enables the plugin. If the plugin  |\n|                                        | cannot be initialized, then the    |\n|                                        | server will fail to start with an  |\n|                                        | error. In addition, the plugin     |\n|                                        | cannot be uninstalled with         |\n|                                        | UNINSTALL SONAME or UNINSTALL      |\n|                                        | PLUGIN while the server is         |\n|                                        | running.                           |\n+----------------------------------------+------------------------------------+\n\nA plugin\'s status can be found by looking at the PLUGIN_STATUS column of the\ninformation_schema.PLUGINS table.\n\nUninstalling Plugins\n--------------------\n\nPlugins that are found in the mysql.plugin table, that is those that were\ninstalled with INSTALL SONAME, INSTALL PLUGIN or mysql_plugin can be\nuninstalled in one of two ways:\n\n* The UNINSTALL SONAME or the UNINSTALL PLUGIN statement while the server is\nrunning\n* With mysql_plugin while the server is offline.\n\nPlugins that were enabled as a --plugin-load option do not need to be\nuninstalled. If --plugin-load is omitted the next time the server starts, or\nthe plugin is not listed as one of the --plugin-load entries, the plugin will\nnot be loaded.\n\nUNINSTALL PLUGIN uninstalls a single installed plugin, while UNINSTALL SONAME\nuninstalls all plugins belonging to a given library.\n\n\n\nURL: mariadb.com/kb/en/plugin-overview/','','https://mariadb.com/kb/en/plugin-overview/'),(80,'UNINSTALL PLUGIN',5,'Syntax\n------\n\nUNINSTALL PLUGIN [IF EXISTS] plugin_name\n\nDescription\n-----------\n\nThis statement removes a single installed plugin. To uninstall the whole\nlibrary which contains the plugin, use UNINSTALL SONAME. You cannot uninstall\na plugin if any table that uses it is open.\n\nplugin_name must be the name of some plugin that is listed in the mysql.plugin\ntable. The server executes the plugin\'s deinitialization function and removes\nthe row for the plugin from the mysql.plugin table, so that subsequent server\nrestarts will not load and initialize the plugin. UNINSTALL PLUGIN does not\nremove the plugin\'s shared library file.\n\nTo use UNINSTALL PLUGIN, you must have the DELETE privilege for the\nmysql.plugin table.\n\nMariaDB starting with 10.4.0\n----------------------------\n\nIF EXISTS\n---------\n\nIf the IF EXISTS clause is used, MariaDB will return a note instead of an\nerror if the plugin does not exist. See SHOW WARNINGS.\n\nExamples\n--------\n\nUNINSTALL PLUGIN example;\n\nFrom MariaDB 10.4.0:\n\nUNINSTALL PLUGIN IF EXISTS example;\nQuery OK, 0 rows affected (0.099 sec)\n\nUNINSTALL PLUGIN IF EXISTS example;\nQuery OK, 0 rows affected, 1 warning (0.000 sec)\n\nSHOW WARNINGS;\n+-------+------+-------------------------------+\n| Level | Code | Message                       |\n+-------+------+-------------------------------+\n| Note  | 1305 | PLUGIN example does not exist |\n+-------+------+-------------------------------+\n\n\n\nURL: mariadb.com/kb/en/uninstall-plugin/','','https://mariadb.com/kb/en/uninstall-plugin/'),(83,'MBR Definition',6,'Description\n-----------\n\nThe MBR (Minimum Bounding Rectangle), or Envelope is the bounding geometry,\nformed by the minimum and maximum (X,Y) coordinates:\n\nExamples\n--------\n\n((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))\n\n\n\nURL: mariadb.com/kb/en/mbr-definition/','','https://mariadb.com/kb/en/mbr-definition/'),(84,'MBRContains',6,'Syntax\n------\n\nMBRContains(g1,g2)\n\nDescription\n-----------\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1\ncontains the Minimum Bounding Rectangle of g2. This tests the opposite\nrelationship as MBRWithin().\n\nExamples\n--------\n\nSET @g1 = GeomFromText(\'Polygon((0 0,0 3,3 3,3 0,0 0))\');\n\nSET @g2 = GeomFromText(\'Point(1 1)\');\n\nSELECT MBRContains(@g1,@g2), MBRContains(@g2,@g1);\n+----------------------+----------------------+\n| MBRContains(@g1,@g2) | MBRContains(@g2,@g1) |\n+----------------------+----------------------+\n|                    1 |                    0 |\n+----------------------+----------------------+\n\n\n\nURL: mariadb.com/kb/en/mbrcontains/','','https://mariadb.com/kb/en/mbrcontains/'),(79,'INSTALL PLUGIN',5,'Syntax\n------\n\nINSTALL PLUGIN [IF NOT EXISTS] plugin_name SONAME \'plugin_library\'\n\nDescription\n-----------\n\nThis statement installs an individual plugin from the specified library. To\ninstall the whole library (which could be required), use INSTALL SONAME. See\nalso Installing a Plugin.\n\nplugin_name is the name of the plugin as defined in the plugin declaration\nstructure contained in the library file. Plugin names are not case sensitive.\nFor maximal compatibility, plugin names should be limited to ASCII letters,\ndigits, and underscore, because they are used in C source files, shell command\nlines, M4 and Bourne shell scripts, and SQL environments.\n\nplugin_library is the name of the shared library that contains the plugin\ncode. The file name extension can be omitted (which makes the statement look\nthe same on all architectures).\n\nThe shared library must be located in the plugin directory (that is, the\ndirectory named by the plugin_dir system variable). The library must be in the\nplugin directory itself, not in a subdirectory. By default, plugin_dir is\nplugin directory under the directory named by the pkglibdir configuration\nvariable, but it can be changed by setting the value of plugin_dir at server\nstartup. For example, set its value in a my.cnf file:\n\n[mysqld]\nplugin_dir=/path/to/plugin/directory\nIf the value of plugin_dir is a relative path name, it is taken to be relative\nto the MySQL base directory (the value of the basedir system variable).\n\nINSTALL PLUGIN adds a line to the mysql.plugin table that describes the\nplugin. This table contains the plugin name and library file name.\n\nINSTALL PLUGIN causes the server to read option (my.cnf) files just as during\nserver startup. This enables the plugin to pick up any relevant options from\nthose files. It is possible to add plugin options to an option file even\nbefore loading a plugin (if the loose prefix is used). It is also possible to\nuninstall a plugin, edit my.cnf, and install the plugin again. Restarting the\nplugin this way enables it to the new option values without a server restart.\n\nINSTALL PLUGIN also loads and initializes the plugin code to make the plugin\navailable for use. A plugin is initialized by executing its initialization\nfunction, which handles any setup that the plugin must perform before it can\nbe used.\n\nTo use INSTALL PLUGIN, you must have the INSERT privilege for the mysql.plugin\ntable.\n\nAt server startup, the server loads and initializes any plugin that is listed\nin the mysql.plugin table. This means that a plugin is installed with INSTALL\nPLUGIN only once, not every time the server starts. Plugin loading at startup\ndoes not occur if the server is started with the --skip-grant-tables option.\n\nWhen the server shuts down, it executes the de-initialization function for\neach plugin that is loaded so that the plugin has a chance to perform any\nfinal cleanup.\n\nIf you need to load plugins for a single server startup when the\n--skip-grant-tables option is given (which tells the server not to read system\ntables), use the --plugin-load mysqld option.\n\nMariaDB starting with 10.4.0\n----------------------------\n\nIF NOT EXISTS\n-------------\n\nWhen the IF NOT EXISTS clause is used, MariaDB will return a note instead of\nan error if the specified plugin already exists. See SHOW WARNINGS.\n\nExamples\n--------\n\nINSTALL PLUGIN sphinx SONAME \'ha_sphinx.so\';\n\nThe extension can also be omitted:\n\nINSTALL PLUGIN innodb SONAME \'ha_xtradb\';\n\nFrom MariaDB 10.4.0:\n\nINSTALL PLUGIN IF NOT EXISTS example SONAME \'ha_example\';\nQuery OK, 0 rows affected (0.104 sec)\n\nINSTALL PLUGIN IF NOT EXISTS example SONAME \'ha_example\';\nQuery OK, 0 rows affected, 1 warning (0.000 sec)\n\nSHOW WARNINGS;\n+-------+------+------------------------------------+\n| Level | Code | Message                            |\n+-------+------+------------------------------------+\n| Note  | 1968 | Plugin \'example\' already installed |\n+-------+------+------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/install-plugin/','','https://mariadb.com/kb/en/install-plugin/'),(81,'INSTALL SONAME',5,'Syntax\n------\n\nINSTALL SONAME \'plugin_library\'\n\nDescription\n-----------\n\nThis statement is a variant of INSTALL PLUGIN. It installs all plugins from a\ngiven plugin_library. See INSTALL PLUGIN for details.\n\nplugin_library is the name of the shared library that contains the plugin\ncode. The file name extension (for example, libmyplugin.so or libmyplugin.dll)\ncan be omitted (which makes the statement look the same on all architectures).\n\nThe shared library must be located in the plugin directory (that is, the\ndirectory named by the plugin_dir system variable). The library must be in the\nplugin directory itself, not in a subdirectory. By default, plugin_dir is\nplugin directory under the directory named by the pkglibdir configuration\nvariable, but it can be changed by setting the value of plugin_dir at server\nstartup. For example, set its value in a my.cnf file:\n\n[mysqld]\nplugin_dir=/path/to/plugin/directory\nIf the value of plugin_dir is a relative path name, it is taken to be relative\nto the MySQL base directory (the value of the basedir system variable).\n\nINSTALL SONAME adds one or more lines to the mysql.plugin table that describes\nthe plugin. This table contains the plugin name and library file name.\n\nINSTALL SONAME causes the server to read option (my.cnf) files just as during\nserver startup. This enables the plugin to pick up any relevant options from\nthose files. It is possible to add plugin options to an option file even\nbefore loading a plugin (if the loose prefix is used). It is also possible to\nuninstall a plugin, edit my.cnf, and install the plugin again. Restarting the\nplugin this way enables it to the new option values without a server restart.\n\nINSTALL SONAME also loads and initializes the plugin code to make the plugin\navailable for use. A plugin is initialized by executing its initialization\nfunction, which handles any setup that the plugin must perform before it can\nbe used.\n\nTo use INSTALL SONAME, you must have the INSERT privilege for the mysql.plugin\ntable.\n\nAt server startup, the server loads and initializes any plugin that is listed\nin the mysql.plugin table. This means that a plugin is installed with INSTALL\nSONAME only once, not every time the server starts. Plugin loading at startup\ndoes not occur if the server is started with the --skip-grant-tables option.\n\nWhen the server shuts down, it executes the de-initialization function for\neach plugin that is loaded so that the plugin has a chance to perform any\nfinal cleanup.\n\nIf you need to load plugins for a single server startup when the\n--skip-grant-tables option is given (which tells the server not to read system\ntables), use the --plugin-load mysqld option.\n\nIf you need to install only one plugin from a library, use the INSTALL PLUGIN\nstatement.\n\nExamples\n--------\n\nTo load the XtraDB storage engine and all of its information_schema tables\nwith one statement, use\n\nINSTALL SONAME \'ha_xtradb\';\n\nThis statement can be used instead of INSTALL PLUGIN even when the library\ncontains only one plugin:\n\nINSTALL SONAME \'ha_sequence\';\n\n\n\nURL: mariadb.com/kb/en/install-soname/','','https://mariadb.com/kb/en/install-soname/'),(86,'MBREqual',6,'Syntax\n------\n\nMBREqual(g1,g2)\n\nDescription\n-----------\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of the two\ngeometries g1 and g2 are the same.\n\nExamples\n--------\n\nSET @g1=GEOMFROMTEXT(\'LINESTRING(0 0, 1 2)\');\nSET @g2=GEOMFROMTEXT(\'POLYGON((0 0, 0 2, 1 2, 1 0, 0 0))\');\nSELECT MbrEqual(@g1,@g2);\n+-------------------+\n| MbrEqual(@g1,@g2) |\n+-------------------+\n|                 1 |\n+-------------------+\n\nSET @g1=GEOMFROMTEXT(\'LINESTRING(0 0, 1 3)\');\nSET @g2=GEOMFROMTEXT(\'POLYGON((0 0, 0 2, 1 4, 1 0, 0 0))\');\nSELECT MbrEqual(@g1,@g2);\n+-------------------+\n| MbrEqual(@g1,@g2) |\n+-------------------+\n|                 0 |\n+-------------------+\n\n\n\nURL: mariadb.com/kb/en/mbrequal/','','https://mariadb.com/kb/en/mbrequal/'),(82,'UNINSTALL SONAME',5,'Syntax\n------\n\nUNINSTALL SONAME  [IF EXISTS] \'plugin_library\'\n\nDescription\n-----------\n\nThis statement is a variant of UNINSTALL PLUGIN statement, that removes all\nplugins belonging to a specified plugin_library. See UNINSTALL PLUGIN for\ndetails.\n\nplugin_library is the name of the shared library that contains the plugin\ncode. The file name extension (for example, libmyplugin.so or libmyplugin.dll)\ncan be omitted (which makes the statement look the same on all architectures).\n\nTo use UNINSTALL SONAME, you must have the DELETE privilege for the\nmysql.plugin table.\n\nMariaDB starting with 10.4.0\n----------------------------\n\nIF EXISTS\n---------\n\nIf the IF EXISTS clause is used, MariaDB will return a note instead of an\nerror if the plugin library does not exist. See SHOW WARNINGS.\n\nExamples\n--------\n\nTo uninstall the XtraDB plugin and all of its information_schema tables with\none statement, use\n\nUNINSTALL SONAME \'ha_xtradb\';\n\nFrom MariaDB 10.4.0:\n\nUNINSTALL SONAME IF EXISTS \'ha_example\';\nQuery OK, 0 rows affected (0.099 sec)\n\nUNINSTALL SONAME IF EXISTS \'ha_example\';\nQuery OK, 0 rows affected, 1 warning (0.000 sec)\n\nSHOW WARNINGS;\n+-------+------+-------------------------------------+\n| Level | Code | Message                             |\n+-------+------+-------------------------------------+\n| Note  | 1305 | SONAME ha_example.so does not exist |\n+-------+------+-------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/uninstall-soname/','','https://mariadb.com/kb/en/uninstall-soname/'),(85,'MBRDisjoint',6,'Syntax\n------\n\nMBRDisjoint(g1,g2)\n\nDescription\n-----------\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of the two\ngeometries g1 and g2 are disjoint. Two geometries are disjoint if they do not\nintersect, that is touch or overlap.\n\nExamples\n--------\n\nSET @g1 = GeomFromText(\'Polygon((0 0,0 3,3 3,3 0,0 0))\');\nSET @g2 = GeomFromText(\'Polygon((4 4,4 7,7 7,7 4,4 4))\');\nSELECTmbrdisjoint(@g1,@g2);\n+----------------------+\n| mbrdisjoint(@g1,@g2) |\n+----------------------+\n|                    1 |\n+----------------------+\n\nSET @g1 = GeomFromText(\'Polygon((0 0,0 3,3 3,3 0,0 0))\');\nSET @g2 = GeomFromText(\'Polygon((3 3,3 6,6 6,6 3,3 3))\');\nSELECT mbrdisjoint(@g1,@g2);\n+----------------------+\n| mbrdisjoint(@g1,@g2) |\n+----------------------+\n|                    0 |\n+----------------------+\n\n\n\nURL: mariadb.com/kb/en/mbrdisjoint/','','https://mariadb.com/kb/en/mbrdisjoint/'),(87,'MBRIntersects',6,'Syntax\n------\n\nMBRIntersects(g1,g2)\n\nDescription\n-----------\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of the two\ngeometries g1 and g2 intersect.\n\nExamples\n--------\n\nSET @g1 = GeomFromText(\'Polygon((0 0,0 3,3 3,3 0,0 0))\');\nSET @g2 = GeomFromText(\'Polygon((3 3,3 6,6 6,6 3,3 3))\');\nSELECT mbrintersects(@g1,@g2);\n+------------------------+\n| mbrintersects(@g1,@g2) |\n+------------------------+\n|                      1 |\n+------------------------+\n\nSET @g1 = GeomFromText(\'Polygon((0 0,0 3,3 3,3 0,0 0))\');\nSET @g2 = GeomFromText(\'Polygon((4 4,4 7,7 7,7 4,4 4))\');\nSELECT mbrintersects(@g1,@g2);\n+------------------------+\n| mbrintersects(@g1,@g2) |\n+------------------------+\n|                      0 |\n+------------------------+\n\n\n\nURL: mariadb.com/kb/en/mbrintersects/','','https://mariadb.com/kb/en/mbrintersects/'),(88,'MBROverlaps',6,'Syntax\n------\n\nMBROverlaps(g1,g2)\n\nDescription\n-----------\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of the two\ngeometries g1 and g2 overlap. The term spatially overlaps is used if two\ngeometries intersect and their intersection results in a geometry of the same\ndimension but not equal to either of the given geometries.\n\nExamples\n--------\n\nSET @g1 = GeomFromText(\'Polygon((0 0,0 3,3 3,3 0,0 0))\');\nSET @g2 = GeomFromText(\'Polygon((4 4,4 7,7 7,7 4,4 4))\');\nSELECT mbroverlaps(@g1,@g2);\n+----------------------+\n| mbroverlaps(@g1,@g2) |\n+----------------------+\n|                    0 |\n+----------------------+\n\nSET @g1 = GeomFromText(\'Polygon((0 0,0 3,3 3,3 0,0 0))\');\nSET @g2 = GeomFromText(\'Polygon((3 3,3 6,6 6,6 3,3 3))\');\nSELECT mbroverlaps(@g1,@g2);\n+----------------------+\n| mbroverlaps(@g1,@g2) |\n+----------------------+\n|                    0 |\n+----------------------+\n\nSET @g1 = GeomFromText(\'Polygon((0 0,0 4,4 4,4 0,0 0))\');\nSET @g2 = GeomFromText(\'Polygon((3 3,3 6,6 6,6 3,3 3))\');\nSELECT mbroverlaps(@g1,@g2);\n+----------------------+\n| mbroverlaps(@g1,@g2) |\n+----------------------+\n|                    1 |\n+----------------------+\n\n\n\nURL: mariadb.com/kb/en/mbroverlaps/','','https://mariadb.com/kb/en/mbroverlaps/'),(89,'MBRTouches',6,'Syntax\n------\n\nMBRTouches(g1,g2)\n\nDescription\n-----------\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of the two\ngeometries g1 and g2 touch. Two geometries spatially touch if the interiors of\nthe geometries do not intersect, but the boundary of one of the geometries\nintersects either the boundary or the interior of the other.\n\nExamples\n--------\n\nSET @g1 = GeomFromText(\'Polygon((0 0,0 3,3 3,3 0,0 0))\');\nSET @g2 = GeomFromText(\'Polygon((4 4,4 7,7 7,7 4,4 4))\');\nSELECT mbrtouches(@g1,@g2);\n+---------------------+\n| mbrtouches(@g1,@g2) |\n+---------------------+\n|                   0 |\n+---------------------+\n\nSET @g1 = GeomFromText(\'Polygon((0 0,0 3,3 3,3 0,0 0))\');\nSET @g2 = GeomFromText(\'Polygon((3 3,3 6,6 6,6 3,3 3))\');\nSELECT mbrtouches(@g1,@g2);\n+---------------------+\n| mbrtouches(@g1,@g2) |\n+---------------------+\n|                   1 |\n+---------------------+\n\nSET @g1 = GeomFromText(\'Polygon((0 0,0 4,4 4,4 0,0 0))\');\nSET @g2 = GeomFromText(\'Polygon((3 3,3 6,6 6,6 3,3 3))\');\nSELECT mbrtouches(@g1,@g2);\n+---------------------+\n| mbrtouches(@g1,@g2) |\n+---------------------+\n|                   0 |\n+---------------------+\n\n\n\nURL: mariadb.com/kb/en/mbrtouches/','','https://mariadb.com/kb/en/mbrtouches/'),(90,'MBRWithin',6,'Syntax\n------\n\nMBRWithin(g1,g2)\n\nDescription\n-----------\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1 is\nwithin the Minimum Bounding Rectangle of g2. This tests the opposite\nrelationship as MBRContains().\n\nExamples\n--------\n\nSET @g1 = GeomFromText(\'Polygon((0 0,0 3,3 3,3 0,0 0))\');\nSET @g2 = GeomFromText(\'Polygon((0 0,0 5,5 5,5 0,0 0))\');\nSELECT MBRWithin(@g1,@g2), MBRWithin(@g2,@g1);\n+--------------------+--------------------+\n| MBRWithin(@g1,@g2) | MBRWithin(@g2,@g1) |\n+--------------------+--------------------+\n|                  1 |                  0 |\n+--------------------+--------------------+\n\n\n\nURL: mariadb.com/kb/en/mbrwithin/','','https://mariadb.com/kb/en/mbrwithin/'),(94,'NULLIF',7,'Syntax\n------\n\nNULLIF(expr1,expr2)\n\nDescription\n-----------\n\nReturns NULL if expr1 = expr2 is true, otherwise returns expr1. This is the\nsame as CASE WHEN expr1 = expr2 THEN NULL ELSE expr1 END.\n\nExamples\n--------\n\nSELECT NULLIF(1,1);\n+-------------+\n| NULLIF(1,1) |\n+-------------+\n|        NULL |\n+-------------+\n\nSELECT NULLIF(1,2);\n+-------------+\n| NULLIF(1,2) |\n+-------------+\n|           1 |\n+-------------+\n\n\n\nURL: mariadb.com/kb/en/nullif/','','https://mariadb.com/kb/en/nullif/'),(95,'CHANGE MASTER TO',8,'The terms master and slave have historically been used in replication,\nbut the terms terms primary and replica are now preferred. The old terms are\nused still used in parts of the documentation, and in MariaDB commands,\nalthough MariaDB 10.5 has begun the process of renaming. The documentation\nprocess is ongoing. See MDEV-18777 to follow progress on this effort.\n\nSyntax\n------\n\nCHANGE MASTER [\'connection_name\'] TO master_def  [, master_def] ... \n [FOR CHANNEL \'channel_name\']\n\nmaster_def:\n  MASTER_BIND = \'interface_name\'\n | MASTER_HOST = \'host_name\'\n | MASTER_USER = \'user_name\'\n | MASTER_PASSWORD = \'password\'\n | MASTER_PORT = port_num\n | MASTER_CONNECT_RETRY = interval\n | MASTER_HEARTBEAT_PERIOD = interval\n | MASTER_LOG_FILE = \'master_log_name\'\n | MASTER_LOG_POS = master_log_pos\n | RELAY_LOG_FILE = \'relay_log_name\'\n | RELAY_LOG_POS = relay_log_pos\n | MASTER_DELAY = interval\n | MASTER_SSL = {0|1}\n | MASTER_SSL_CA = \'ca_file_name\'\n | MASTER_SSL_CAPATH = \'ca_directory_name\'\n | MASTER_SSL_CERT = \'cert_file_name\'\n | MASTER_SSL_CRL = \'crl_file_name\'\n | MASTER_SSL_CRLPATH = \'crl_directory_name\'\n | MASTER_SSL_KEY = \'key_file_name\'\n | MASTER_SSL_CIPHER = \'cipher_list\'\n | MASTER_SSL_VERIFY_SERVER_CERT = {0|1}\n | MASTER_USE_GTID = {current_pos|slave_pos|no}\n | IGNORE_SERVER_IDS = (server_id_list)\n | DO_DOMAIN_IDS = ([N,..])\n | IGNORE_DOMAIN_IDS = ([N,..])\n\nDescription\n-----------\n\nThe CHANGE MASTER statement sets the options that a replica uses to connect to\nand replicate from a primary.\n\nMariaDB starting with 10.7.0\n----------------------------\nThe FOR CHANNEL keyword was added for MySQL compatibility. This is identical\nto using the channel_name directly after CHANGE MASTER.\n\nMulti-Source Replication\n------------------------\n\nIf you are using multi-source replication, then you need to specify a\nconnection name when you execute CHANGE MASTER. There are two ways to do this:\n\n* Setting the default_master_connection system variable prior to executing\nCHANGE MASTER.\n* Setting the connection_name parameter when executing CHANGE MASTER.\n\ndefault_master_connection\n-------------------------\n\nSET default_master_connection = \'gandalf\';\nSTOP SLAVE;\nCHANGE MASTER TO \n MASTER_PASSWORD=\'new3cret\';\nSTART SLAVE;\n\nconnection_name\n---------------\n\nSTOP SLAVE \'gandalf\';\nCHANGE MASTER \'gandalf\' TO \n MASTER_PASSWORD=\'new3cret\';\nSTART SLAVE \'gandalf\';\n\nOptions\n-------\n\nConnection Options\n------------------\n\nMASTER_USER\n-----------\n\nThe MASTER_USER option for CHANGE MASTER defines the user account that the\nreplica will use to connect to the primary.\n\nThis user account will need the REPLICATION SLAVE privilege (or, from MariaDB\n10.5.1, the REPLICATION REPLICA on the primary.\n\nFor example:\n\nSTOP SLAVE;\nCHANGE MASTER TO\n MASTER_USER=\'repl\',\n MASTER_PASSWORD=\'new3cret\';\nSTART SLAVE;\n\nThe maximum length of the MASTER_USER string is 96 characters until MariaDB\n10.5, and 128 characters from MariaDB 10.6.\n\nMASTER_PASSWORD\n---------------\n\nThe MASTER_USER option for CHANGE MASTER defines the password that the replica\nwill use to connect to the primary as the user account defined by the\nMASTER_USER option.\n\nFor example:\n\nSTOP SLAVE;\nCHANGE MASTER TO \n MASTER_PASSWORD=\'new3cret\';\nSTART SLAVE;\n\nThe maximum length of the MASTER_PASSWORD string is 32 characters.\n\nMASTER_HOST\n-----------\n\nThe MASTER_HOST option for CHANGE MASTER defines the hostname or IP address of\nthe primary.\n\nIf you set the value of the MASTER_HOST option to the empty string, then that\nis not the same as not setting the option\'s value at all. If you set the value\nof the MASTER_HOST option to the empty string, then the CHANGE MASTER command\nwill fail with an error. In MariaDB 5.3 and before, if you set the value of\nthe MASTER_HOST option to the empty string, then the CHANGE MASTER command\nwould succeed, but the subsequent START SLAVE command would fail.\n\nFor example:\n\nSTOP SLAVE;\nCHANGE MASTER TO\n MASTER_HOST=\'dbserver1.example.com\',\n MASTER_USER=\'repl\',\n MASTER_PASSWORD=\'new3cret\',\n MASTER_USE_GTID=slave_pos;\nSTART SLAVE;\n\nIf you set the value of the MASTER_HOST option in a CHANGE MASTER command,\nthen the replica assumes that the primary is different from before, even if\nyou set the value of this option to the same value it had previously. In this\nscenario, the replica will consider the old values for the primary\'s binary\nlog file name and position to be invalid for the new primary. As a side\neffect, if you do not explicitly set the values of the MASTER_LOG_FILE and\nMASTER_LOG_POS options in the statement, then the statement will be implicitly\nappended with MASTER_LOG_FILE=\'\' and MASTER_LOG_POS=4. However, if you enable\nGTID mode for replication by setting the MASTER_USE_GTID option to some value\nother than no in the statement, then these values will effectively be ignored\nanyway.\n\nReplicas cannot connect to primaries using Unix socket files or Windows named\npipes. The replica must connect to the primary using TCP/IP.\n\nThe maximum length of the MASTER_HOST string is 60 characters until MariaDB\n10.5, and 255 characters from MariaDB 10.6.\n\nMASTER_PORT\n-----------\n\nThe MASTER_PORT option for CHANGE MASTER defines the TCP/IP port of the\nprimary.\n\nFor example:\n\nSTOP SLAVE;\nCHANGE MASTER TO\n MASTER_HOST=\'dbserver1.example.com\',\n MASTER_PORT=3307,\n MASTER_USER=\'repl\',\n MASTER_PASSWORD=\'new3cret\',\n MASTER_USE_GTID=slave_pos;\nSTART SLAVE;\n\nIf you set the value of the MASTER_PORT option in a CHANGE MASTER command,\nthen the replica assumes that the primary is different from before, even if\nyou set the value of this option to the same value it had previously. In this\nscenario, the replica will consider the old values for the primary\'s binary\nlog file name and position to be invalid for the new primary. As a side\neffect, if you do not explicitly set the values of the MASTER_LOG_FILE and\nMASTER_LOG_POS options in the statement, then the statement will be implicitly\nappended with MASTER_LOG_FILE=\'\' and MASTER_LOG_POS=4. However, if you enable\nGTID mode for replication by setting the MASTER_USE_GTID option to some value\nother than no in the statement, then these values will effectively be ignored\nanyway.\n\nReplicas cannot connect to primaries using Unix socket files or Windows named\npipes. The replica must connect to the primary using TCP/IP.\n\nMASTER_CONNECT_RETRY\n--------------------\n\nThe MASTER_CONNECT_RETRY option for CHANGE MASTER defines how many seconds\nthat the replica will wait between connection retries. The default is 60.\n\nSTOP SLAVE;\nCHANGE MASTER TO \n MASTER_CONNECT_RETRY=20;\nSTART SLAVE;\n\nThe number of connection attempts is limited by the master_retry_count option.\nIt can be set either on the command-line or in a server option group in an\noption file prior to starting up the server. For example:\n\n[mariadb]\n...\nmaster_retry_count=4294967295\n\nMASTER_BIND\n-----------\n\nThe MASTER_BIND option for CHANGE MASTER is only supported by MySQL 5.6.2 and\nlater and by MySQL NDB Cluster 7.3.1 and later. This option is not supported\nby MariaDB. See MDEV-19248 for more information.\n\nThe MASTER_BIND option for CHANGE MASTER can be used on replicas that have\nmultiple network interfaces to choose which network interface the replica will\nuse to connect to the primary.\n\nMASTER_HEARTBEAT_PERIOD\n-----------------------\n\nThe MASTER_HEARTBEAT_PERIOD option for CHANGE MASTER can be used to set the\ninterval in seconds between replication heartbeats. Whenever the primary\'s\nbinary log is updated with an event, the waiting period for the next heartbeat\nis reset.\n\nThis option\'s interval argument has the following characteristics:\n\n* It is a decimal value with a range of 0 to 4294967 seconds.\n* It has a resolution of hundredths of a second.\n* Its smallest valid non-zero value is 0.001.\n* Its default value is the value of the slave_net_timeout system variable\ndivided by 2.\n* If it\'s set to 0, then heartbeats are disabled.\n\nHeartbeats are sent by the primary only if there are no unsent events in the\nbinary log file for a period longer than the interval.\n\nIf the RESET SLAVE statement is executed, then the heartbeat interval is reset\nto the default.\n\nIf the slave_net_timeout system variable is set to a value that is lower than\nthe current heartbeat interval, then a warning will be issued.\n\nTLS Options\n-----------\n\nThe TLS options are used for providing information about TLS. The options can\nbe set even on replicas that are compiled without TLS support. The TLS options\nare saved to either the default master.info file or the file that is\nconfigured by the master_info_file option, but these TLS options are ignored\nunless the replica supports TLS.\n\nSee Replication with Secure Connections for more information.\n\nMASTER_SSL\n----------\n\nThe MASTER_SSL option for CHANGE MASTER tells the replica whether to force TLS\nfor the connection. The valid values are 0 or 1.\n\nFor example:\n\nSTOP SLAVE;\nCHANGE MASTER TO\n MASTER_SSL=1;\nSTART SLAVE;\n\nMASTER_SSL_CA\n-------------\n\nThe MASTER_SSL_CA option for CHANGE MASTER defines a path to a PEM file that\nshould contain one or more X509 certificates for trusted Certificate\nAuthorities (CAs) to use for TLS. This option requires that you use the\nabsolute path, not a relative path. This option implies the MASTER_SSL option.\n\nFor example:\n\nSTOP SLAVE;\nCHANGE MASTER TO\n MASTER_SSL_CERT=\'/etc/my.cnf.d/certificates/server-cert.pem\',\n MASTER_SSL_KEY=\'/etc/my.cnf.d/certificates/server-key.pem\',\n MASTER_SSL_CA=\'/etc/my.cnf.d/certificates/ca.pem\',\n MASTER_SSL_VERIFY_SERVER_CERT=1;\nSTART SLAVE;\n\nSee Secure Connections Overview: Certificate Authorities (CAs) for more\ninformation.\n\nThe maximum length of MASTER_SSL_CA string is 511 characters.\n\nMASTER_SSL_CAPATH\n-----------------\n\nThe MASTER_SSL_CAPATH option for CHANGE MASTER defines a path to a directory\nthat contains one or more PEM files that should each contain one X509\ncertificate for a trusted Certificate Authority (CA) to use for TLS. This\noption requires that you use the absolute path, not a relative path. The\ndirectory specified by this option needs to be run through the openssl rehash\ncommand. This option implies the MASTER_SSL option.\n\nFor example:\n\nSTOP SLAVE;\nCHANGE MASTER TO\n MASTER_SSL_CERT=\'/etc/my.cnf.d/certificates/server-cert.pem\',\n MASTER_SSL_KEY=\'/etc/my.cnf.d/certificates/server-key.pem\',\n MASTER_SSL_CAPATH=\'/etc/my.cnf.d/certificates/ca/\',\n MASTER_SSL_VERIFY_SERVER_CERT=1;\nSTART SLAVE;\n\nSee Secure Connections Overview: Certificate Authorities (CAs) for more\ninformation.\n\nThe maximum length of MASTER_SSL_CA_PATH string is 511 characters.\n\nMASTER_SSL_CERT\n---------------\n\nThe MASTER_SSL_CERT option for CHANGE MASTER defines a path to the X509\ncertificate file to use for TLS. This option requires that you use the\nabsolute path, not a relative path. This option implies the MASTER_SSL option.\n\nFor example:\n\nSTOP SLAVE;\nCHANGE MASTER TO\n MASTER_SSL_CERT=\'/etc/my.cnf.d/certificates/server-cert.pem\',\n MASTER_SSL_KEY=\'/etc/my.cnf.d/certificates/server-key.pem\',\n MASTER_SSL_CA=\'/etc/my.cnf.d/certificates/ca.pem\',\n MASTER_SSL_VERIFY_SERVER_CERT=1;\nSTART SLAVE;\n\nThe maximum length of MASTER_SSL_CERT string is 511 characters.\n\nMASTER_SSL_CRL\n--------------\n\nThe MASTER_SSL_CRL option for CHANGE MASTER defines a path to a PEM file that\nshould contain one or more revoked X509 certificates to use for TLS. This\noption requires that you use the absolute path, not a relative path.\n\nThis option is only supported if the server was built with OpenSSL. If the\nserver was built with yaSSL, then this option is not supported. See TLS and\nCryptography Libraries Used by MariaDB for more information about which\nlibraries are used on which platforms.\n\nFor example:\n\nSTOP SLAVE;\nCHANGE MASTER TO\n MASTER_SSL_CERT=\'/etc/my.cnf.d/certificates/server-cert.pem\',\n MASTER_SSL_KEY=\'/etc/my.cnf.d/certificates/server-key.pem\',\n MASTER_SSL_CA=\'/etc/my.cnf.d/certificates/ca.pem\',\n MASTER_SSL_VERIFY_SERVER_CERT=1,\n MASTER_SSL_CRL=\'/etc/my.cnf.d/certificates/crl.pem\';\nSTART SLAVE;\n\nSee Secure Connections Overview: Certificate Revocation Lists (CRLs) for more\ninformation.\n\nThe maximum length of MASTER_SSL_CRL string is 511 characters.\n\nMASTER_SSL_CRLPATH\n------------------\n\nThe MASTER_SSL_CRLPATH option for CHANGE MASTER defines a path to a directory\nthat contains one or more PEM files that should each contain one revoked X509\ncertificate to use for TLS. This option requires that you use the absolute\npath, not a relative path. The directory specified by this variable needs to\nbe run through the openssl rehash command.\n\nThis option is only supported if the server was built with OpenSSL. If the\nserver was built with yaSSL, then this option is not supported. See TLS and\nCryptography Libraries Used by MariaDB for more information about which\nlibraries are used on which platforms.\n\nFor example:\n\nSTOP SLAVE;\nCHANGE MASTER TO\n MASTER_SSL_CERT=\'/etc/my.cnf.d/certificates/server-cert.pem\',\n MASTER_SSL_KEY=\'/etc/my.cnf.d/certificates/server-key.pem\',\n MASTER_SSL_CA=\'/etc/my.cnf.d/certificates/ca.pem\',\n MASTER_SSL_VERIFY_SERVER_CERT=1,\n MASTER_SSL_CRLPATH=\'/etc/my.cnf.d/certificates/crl/\';\nSTART SLAVE;\n\nSee Secure Connections Overview: Certificate Revocation Lists (CRLs) for more\ninformation.\n\nThe maximum length of MASTER_SSL_CRL_PATH string is 511 characters.\n\nMASTER_SSL_KEY\n--------------\n\nThe MASTER_SSL_KEY option for CHANGE MASTER defines a path to a private key\nfile to use for TLS. This option requires that you use the absolute path, not\na relative path. This option implies the MASTER_SSL option.\n\nFor example:\n\nSTOP SLAVE;\nCHANGE MASTER TO\n MASTER_SSL_CERT=\'/etc/my.cnf.d/certificates/server-cert.pem\',\n MASTER_SSL_KEY=\'/etc/my.cnf.d/certificates/server-key.pem\',\n MASTER_SSL_CA=\'/etc/my.cnf.d/certificates/ca.pem\',\n MASTER_SSL_VERIFY_SERVER_CERT=1;\nSTART SLAVE;\n\nThe maximum length of MASTER_SSL_KEY string is 511 characters.\n\nMASTER_SSL_CIPHER\n-----------------\n\nThe MASTER_SSL_CIPHER option for CHANGE MASTER defines the list of permitted\nciphers or cipher suites to use for TLS. Besides cipher names, if MariaDB was\ncompiled with OpenSSL, this option could be set to \"SSLv3\" or \"TLSv1.2\" to\nallow all SSLv3 or all TLSv1.2 ciphers. Note that the TLSv1.3 ciphers cannot\nbe excluded when using OpenSSL, even by using this option. See Using TLSv1.3\nfor details. This option implies the MASTER_SSL option.\n\nFor example:\n\nSTOP SLAVE;\nCHANGE MASTER TO\n MASTER_SSL_CERT=\'/etc/my.cnf.d/certificates/server-cert.pem\',\n MASTER_SSL_KEY=\'/etc/my.cnf.d/certificates/server-key.pem\',\n MASTER_SSL_CA=\'/etc/my.cnf.d/certificates/ca.pem\',\n MASTER_SSL_VERIFY_SERVER_CERT=1,\n MASTER_SSL_CIPHER=\'TLSv1.2\';\nSTART SLAVE;\n\nThe maximum length of MASTER_SSL_CIPHER string is 511 characters.\n\nMASTER_SSL_VERIFY_SERVER_CERT\n-----------------------------\n\nThe MASTER_SSL_VERIFY_SERVER_CERT option for CHANGE MASTER enables server\ncertificate verification. This option is disabled by default.\n\nFor example:\n\nSTOP SLAVE;\nCHANGE MASTER TO\n MASTER_SSL_CERT=\'/etc/my.cnf.d/certificates/server-cert.pem\',\n MASTER_SSL_KEY=\'/etc/my.cnf.d/certificates/server-key.pem\',\n MASTER_SSL_CA=\'/etc/my.cnf.d/certificates/ca.pem\',\n MASTER_SSL_VERIFY_SERVER_CERT=1;\nSTART SLAVE;\n\nSee Secure Connections Overview: Server Certificate Verification for more\ninformation.\n\nBinary Log Options\n------------------\n\nThese options are related to the binary log position on the primary.\n\nMASTER_LOG_FILE\n---------------\n\nThe MASTER_LOG_FILE option for CHANGE MASTER can be used along with\nMASTER_LOG_POS to specify the coordinates at which the replica\'s I/O thread\nshould begin reading from the primary\'s binary logs the next time the thread\nstarts.\n\nFor example:\n\nSTOP SLAVE;\nCHANGE MASTER TO\n MASTER_LOG_FILE=\'master2-bin.001\',\n MASTER_LOG_POS=4;\nSTART SLAVE;\n\nThe MASTER_LOG_FILE and MASTER_LOG_POS options cannot be specified if the\nRELAY_LOG_FILE and RELAY_LOG_POS options were also specified.\n\nThe MASTER_LOG_FILE and MASTER_LOG_POS options are effectively ignored if you\nenable GTID mode for replication by setting the MASTER_USE_GTID option to some\nvalue other than no in the statement.\n\nMASTER_LOG_POS\n--------------\n\nThe MASTER_LOG_POS option for CHANGE MASTER can be used along with\nMASTER_LOG_FILE to specify the coordinates at which the replica\'s I/O thread\nshould begin reading from the primary\'s binary logs the next time the thread\nstarts.\n\nFor example:\n\nSTOP SLAVE;\nCHANGE MASTER TO\n MASTER_LOG_FILE=\'master2-bin.001\',\n MASTER_LOG_POS=4;\nSTART SLAVE;\n\nThe MASTER_LOG_FILE and MASTER_LOG_POS options cannot be specified if the\nRELAY_LOG_FILE and RELAY_LOG_POS options were also specified.\n\nThe MASTER_LOG_FILE and MASTER_LOG_POS options are effectively ignored if you\nenable GTID mode for replication by setting the MASTER_USE_GTID option to some\nvalue other than no in the statement.\n\nRelay Log Options\n-----------------\n\nThese options are related to the relay log position on the replica.\n\nRELAY_LOG_FILE\n--------------\n\nThe RELAY_LOG_FILE option for CHANGE MASTER can be used along with the\nRELAY_LOG_POS option to specify the coordinates at which the replica\'s SQL\nthread should begin reading from the relay log the next time the thread starts.\n\nThe CHANGE MASTER statement usually deletes all relay log files. However, if\nthe RELAY_LOG_FILE and/or RELAY_LOG_POS options are specified, then existing\nrelay log files are kept.\n\nWhen you want to change the relay log position, you only need to stop the\nreplica\'s SQL thread. The replica\'s I/O thread can continue running. The STOP\nSLAVE and START SLAVE statements support the SQL_THREAD option for this\nscenario. For example:\n\nSTOP SLAVE SQL_THREAD;\nCHANGE MASTER TO\n RELAY_LOG_FILE=\'slave-relay-bin.006\',\n RELAY_LOG_POS=4025;\nSTART SLAVE SQL_THREAD;\n\nWhen the value of this option is changed, the metadata about the replica\'s SQL\nthread\'s position in the relay logs will also be changed in the relay-log.info\nfile or the file that is configured by the relay_log_info_file system variable.\n\nThe RELAY_LOG_FILE and RELAY_LOG_POS options cannot be specified if the\nMASTER_LOG_FILE and MASTER_LOG_POS options were also specified.\n\nRELAY_LOG_POS\n-------------\n\nThe RELAY_LOG_POS option for CHANGE MASTER can be used along with the\nRELAY_LOG_FILE option to specify the coordinates at which the replica\'s SQL\nthread should begin reading from the relay log the next time the thread starts.\n\nThe CHANGE MASTER statement usually deletes all relay log files. However, if\nthe RELAY_LOG_FILE and/or RELAY_LOG_POS options are specified, then existing\nrelay log files are kept.\n\nWhen you want to change the relay log position, you only need to stop the\nreplica\'s SQL thread. The replica\'s I/O thread can continue running. The STOP\nSLAVE and START SLAVE statements support the SQL_THREAD option for this\nscenario. For example:\n\nSTOP SLAVE SQL_THREAD;\nCHANGE MASTER TO\n RELAY_LOG_FILE=\'slave-relay-bin.006\',\n RELAY_LOG_POS=4025;\nSTART SLAVE SQL_THREAD;\n\nWhen the value of this option is changed, the metadata about the replica\'s SQL\nthread\'s position in the relay logs will also be changed in the relay-log.info\nfile or the file that is configured by the relay_log_info_file system variable.\n\nThe RELAY_LOG_FILE and RELAY_LOG_POS options cannot be specified if the\nMASTER_LOG_FILE and MASTER_LOG_P\nOS options were also specified.\n\nGTID Options\n------------\n\nMASTER_USE_GTID\n---------------\n\nThe MASTER_USE_GTID option for CHANGE MASTER can be used to configure the\nreplica to use the global transaction ID (GTID) when connecting to a primary.\nThe possible values are:\n\n* current_pos - Replicate in GTID mode and use gtid_current_pos as the\nposition to start downloading transactions from the primary.\n* slave_pos - Replicate in GTID mode and use gtid_slave_pos as the position to\nstart downloading transactions from the primary. From MariaDB 10.5.1,\nreplica_pos is an alias for slave_pos.\n* no - Don\'t replicate in GTID mode.\n\nFor example:\n\nSTOP SLAVE;\nCHANGE MASTER TO\n MASTER_USE_GTID = current_pos;\nSTART SLAVE;\n\nOr:\n\nSTOP SLAVE;\nSET GLOBAL gtid_slave_pos=\'0-1-153\';\nCHANGE MASTER TO\n MASTER_USE_GTID = slave_pos;\nSTART SLAVE;\n\nReplication Filter Options\n--------------------------\n\nAlso see Replication filters.\n\nIGNORE_SERVER_IDS\n-----------------\n\nThe IGNORE_SERVER_IDS option for CHANGE MASTER can be used to configure a\nreplica to ignore binary log events that originated from certain servers.\nFiltered binary log events will not get logged to the replica’s relay log, and\nthey will not be applied by the replica.\n\nThe option\'s value can be specified by providing a comma-separated list of\nserver_id values. For example:\n\nSTOP SLAVE;\nCHANGE MASTER TO \n IGNORE_SERVER_IDS = (3,5);\nSTART SLAVE;\n\nIf you would like to clear a previously set list, then you can set the value\nto an empty list. For example:\n\nSTOP SLAVE;\nCHANGE MASTER TO \n IGNORE_SERVER_IDS = ();\nSTART SLAVE;\n\nDO_DOMAIN_IDS\n-------------\n\nThe DO_DOMAIN_IDS option for CHANGE MASTER can be used to configure a replica\nto only apply binary log events if the transaction\'s GTID is in a specific\ngtid_domain_id value. Filtered binary log events will not get logged to the\nreplica’s relay log, and they will not be applied by the replica.\n\nThe option\'s value can be specified by providing a comma-separated list of\ngtid_domain_id values. Duplicate values are automatically ignored. For example:\n\nSTOP SLAVE;\nCHANGE MASTER TO \n DO_DOMAIN_IDS = (1,2);\nSTART SLAVE;\n\nIf you would like to clear a previously set list, then you can set the value\nto an empty list. For example:\n\nSTOP SLAVE;\nCHANGE MASTER TO \n DO_DOMAIN_IDS = ();\nSTART SLAVE;\n\nThe DO_DOMAIN_IDS option and the IGNORE_DOMAIN_IDS option cannot both be set\nto non-empty values at the same time. If you want to set the DO_DOMAIN_IDS\noption, and the IGNORE_DOMAIN_IDS option was previously set, then you need to\nclear the value of the IGNORE_DOMAIN_IDS option. For example:\n\nSTOP SLAVE;\nCHANGE MASTER TO \n IGNORE_DOMAIN_IDS = (),\n DO_DOMAIN_IDS = (1,2);\nSTART SLAVE;\n\nThe DO_DOMAIN_IDS option can only be specified if the replica is replicating\nin GTID mode. Therefore, the MASTER_USE_GTID option must also be set to some\nvalue other than no in order to use this option.\n\nIGNORE_DOMAIN_IDS\n-----------------\n\nThe IGNORE_DOMAIN_IDS option for CHANGE MASTER can be used to configure a\nreplica to ignore binary log events if the transaction\'s GTID is in a specific\ngtid_domain_id value. Filtered binary log events will not get logged to the\nreplica’s relay log, and they will not be applied by the replica.\n\nThe option\'s value can be specified by providing a comma-separated list of\ngtid_domain_id values. Duplicate values are automatically ignored. For example:\n\nSTOP SLAVE;\nCHANGE MASTER TO \n IGNORE_DOMAIN_IDS = (1,2);\nSTART SLAVE;\n\nIf you would like to clear a previously set list, then you can set the value\nto an empty list. For example:\n\nSTOP SLAVE;\nCHANGE MASTER TO \n IGNORE_DOMAIN_IDS = ();\nSTART SLAVE;\n\nThe DO_DOMAIN_IDS option and the IGNORE_DOMAIN_IDS option cannot both be set\nto non-empty values at the same time. If you want to set the IGNORE_DOMAIN_IDS\noption, and the DO_DOMAIN_IDS option was previously set, then you need to\nclear the value of the DO_DOMAIN_IDS option. For example:\n\nSTOP SLAVE;\nCHANGE MASTER TO \n DO_DOMAIN_IDS = (),\n IGNORE_DOMAIN_IDS = (1,2);\nSTART SLAVE;\n\nThe IGNORE_DOMAIN_IDS option can only be specified if the replica is\nreplicating in GTID mode. Therefore, the MASTER_USE_GTID option must also be\nset to some value other than no in order to use this option.\n\nDelayed Replication Options\n---------------------------\n\nMASTER_DELAY\n------------\n\nMariaDB starting with 10.2.3\n----------------------------\nThe MASTER_DELAY option for CHANGE MASTER was first added in MariaDB 10.2.3 to\nenable delayed replication.\n\nThe MASTER_DELAY option for CHANGE MASTER can be used to enable delayed\nreplication. This option specifies the time in seconds (at least) that a\nreplica should lag behind the primary up to a maximum value of 2147483647, or\nabout 68 years. Before executing an event, the replica will first wait, if\nnecessary, until the given time has passed since the event was created on the\nprimary. The result is that the replica will reflect the state of the primary\nsome time back in the past. The default is zero, no delay.\n\nSTOP SLAVE;\nCHANGE MASTER TO \n MASTER_DELAY=3600;\nSTART SLAVE;\n\nChanging Option Values\n----------------------\n\nIf you don\'t specify a given option when executing the CHANGE MASTER\nstatement, then the option keeps its old value in most cases. Most of the\ntime, there is no need to specify the options that do not need to change. For\nexample, if the password for the user account that the replica uses to connect\nto its primary has changed, but no other options need to change, then you can\njust change the MASTER_PASSWORD option by executing the following commands:\n\nSTOP SLAVE;\nCHANGE MASTER TO \n MASTER_PASSWORD=\'new3cret\';\nSTART SLAVE;\n\nThere are some cases where options are implicitly reset, such as when the\nMASTER_HOST and MASTER_PORT options are changed.\n\nOption Persistence\n------------------\n\nThe values of the MASTER_LOG_FILE and MASTER_LOG_POS options (i.e. the binary\nlog position on the primary) and most other options are written to either the\ndefault master.info file or the file that is configured by the\nmaster_info_file option. The replica\'s I/O thread keeps this binary log\nposition updated as it downloads events only when MASTER_USE_GTID option is\nset to NO. Otherwise the file is not updated on a per event basis.\n\nThe master_info_file option can be set either on the command-line or in a\nserver option group in an option file prior to starting up the server. For\nexample:\n\n[mariadb]\n...\nmaster_info_file=/mariadb/myserver1-master.info\n\nThe values of the RELAY_LOG_FILE and RELAY_LOG_POS options (i.e. the relay log\nposition) are written to either the default relay-log.info file or the file\nthat is configured by the relay_log_info_file system variable. The replica\'s\nSQL thread keeps this relay log position updated as it applies events.\n\nThe relay_log_info_file system variable can be set either on the command-line\nor in a server option group in an option file prior to starting up the server.\nFor example:\n\n[mariadb]\n...\nrelay_log_info_file=/mariadb/myserver1-relay-log.info\n\nGTID Persistence\n----------------\n\nIf the replica is replicating binary log events that contain GTIDs, then the\nreplica\'s SQL thread will write every GTID that it applies to the\nmysql.gtid_slave_pos table. This GTID can be inspected and modified through\nthe gtid_slave_pos system variable.\n\nIf the replica has the log_slave_updates system variable enabled and if the\nreplica has the binary log enabled, then every write by the replica\'s SQL\nthread will also go into the replica\'s binary log. This means that GTIDs of\nreplicated transactions would be reflected in the value of the gtid_binlog_pos\nsystem variable.\n\nCreating a Replica from a Backup\n--------------------------------\n\nThe CHANGE MASTER statement is useful for setting up a replica when you have a\nbackup of the primary and you also have the binary log position or GTID\nposition corresponding to the backup.\n\nAfter restoring the backup on the replica, you could execute something like\nthis to use the binary log position:\n\nCHANGE MASTER TO\n MASTER_LOG_FILE=\'master2-bin.001\',\n MASTER_LOG_POS=4;\nSTART SLAVE;\n\nOr you could execute something like this to use the GTID position:\n\nSET GLOBAL gtid_slave_pos=\'0-1-153\';\nCHANGE MASTER TO\n MASTER_USE_GTID=slave_pos;\nSTART SLAVE;\n\nSee Setting up a Replication Slave with Mariabackup for more information on\nhow to do this with Mariabackup.\n\nExample\n-------\n\nThe following example changes the primary and primary\'s binary log\ncoordinates. This is used when you want to set up the replica to replicate the\nprimary:\n\nCHANGE MASTER TO\n MASTER_HOST=\'master2.mycompany.com\',\n MASTER_USER=\'replication\',\n MASTER_PASSWORD=\'bigs3cret\',\n MASTER_PORT=3306,\n MASTER_LOG_FILE=\'master2-bin.001\',\n MASTER_LOG_POS=4,\n MASTER_CONNECT_RETRY=10;\nSTART SLAVE;\n\n\n\nURL: mariadb.com/kb/en/change-master-to/','','https://mariadb.com/kb/en/change-master-to/'),(106,'RESET MASTER',8,'RESET MASTER [TO #]\n\nDeletes all binary log files listed in the index file, resets the binary log\nindex file to be empty, and creates a new binary log file with a suffix of\n.000001.\n\nIf TO # is given, then the first new binary log file will start from number #.\n\nThis statement is for use only when the master is started for the first time,\nand should never be used if any slaves are actively replicating from the\nbinary log.\n\n\n\nURL: mariadb.com/kb/en/reset-master/','','https://mariadb.com/kb/en/reset-master/'),(91,'CASE OPERATOR',7,'Syntax\n------\n\nCASE value WHEN [compare_value] THEN result [WHEN [compare_value] THEN\nresult ...] [ELSE result] END\n\nCASE WHEN [condition] THEN result [WHEN [condition] THEN result ...]\n[ELSE result] END\n\nDescription\n-----------\n\nThe first version returns the result where value=compare_value. The second\nversion returns the result for the first condition that is true. If there was\nno matching result value, the result after ELSE is returned, or NULL if there\nis no ELSE part.\n\nThere is also a CASE statement, which differs from the CASE operator described\nhere.\n\nExamples\n--------\n\nSELECT CASE 1 WHEN 1 THEN \'one\' WHEN 2 THEN \'two\' ELSE \'more\' END;\n+------------------------------------------------------------+\n| CASE 1 WHEN 1 THEN \'one\' WHEN 2 THEN \'two\' ELSE \'more\' END |\n+------------------------------------------------------------+\n| one                                                        |\n+------------------------------------------------------------+\n\nSELECT CASE WHEN 1>0 THEN \'true\' ELSE \'false\' END;\n+--------------------------------------------+\n| CASE WHEN 1>0 THEN \'true\' ELSE \'false\' END |\n+--------------------------------------------+\n| true                                       |\n+--------------------------------------------+\n\nSELECT CASE BINARY \'B\' WHEN \'a\' THEN 1 WHEN \'b\' THEN 2 END;\n+-----------------------------------------------------+\n| CASE BINARY \'B\' WHEN \'a\' THEN 1 WHEN \'b\' THEN 2 END |\n+-----------------------------------------------------+\n|                                                NULL |\n+-----------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/case-operator/','','https://mariadb.com/kb/en/case-operator/'),(92,'IF Function',7,'Syntax\n------\n\nIF(expr1,expr2,expr3)\n\nDescription\n-----------\n\nIf expr1 is TRUE (expr1 <> 0 and expr1 <> NULL) then IF() returns expr2;\notherwise it returns expr3. IF() returns a numeric or string value, depending\non the context in which it is used.\n\nNote: There is also an IF statement which differs from the IF() function\ndescribed here.\n\nExamples\n--------\n\nSELECT IF(1>2,2,3);\n+-------------+\n| IF(1>2,2,3) |\n+-------------+\n|           3 |\n+-------------+\n\nSELECT IF(1<2,\'yes\',\'no\');\n+--------------------+\n| IF(1<2,\'yes\',\'no\') |\n+--------------------+\n| yes                |\n+--------------------+\n\nSELECT IF(STRCMP(\'test\',\'test1\'),\'no\',\'yes\');\n+---------------------------------------+\n| IF(STRCMP(\'test\',\'test1\'),\'no\',\'yes\') |\n+---------------------------------------+\n| no                                    |\n+---------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/if-function/','','https://mariadb.com/kb/en/if-function/'),(93,'IFNULL',7,'Syntax\n------\n\nIFNULL(expr1,expr2)\nNVL(expr1,expr2)\n\nDescription\n-----------\n\nIf expr1 is not NULL, IFNULL() returns expr1; otherwise it returns expr2.\nIFNULL() returns a numeric or string value, depending on the context in which\nit is used.\n\nFrom MariaDB 10.3, NVL() is an alias for IFNULL().\n\nExamples\n--------\n\nSELECT IFNULL(1,0); \n+-------------+\n| IFNULL(1,0) |\n+-------------+\n|           1 |\n+-------------+\n\nSELECT IFNULL(NULL,10);\n+-----------------+\n| IFNULL(NULL,10) |\n+-----------------+\n|              10 |\n+-----------------+\n\nSELECT IFNULL(1/0,10);\n+----------------+\n| IFNULL(1/0,10) |\n+----------------+\n|        10.0000 |\n+----------------+\n\nSELECT IFNULL(1/0,\'yes\');\n+-------------------+\n| IFNULL(1/0,\'yes\') |\n+-------------------+\n| yes               |\n+-------------------+\n\n\n\nURL: mariadb.com/kb/en/ifnull/','','https://mariadb.com/kb/en/ifnull/'),(96,'COMMIT',8,'The COMMIT statement ends a transaction, saving any changes to the\ndata so that they become visible to subsequent transactions. Also, unlocks\nmetadata changed by current transaction. If autocommit is set to 1, an\nimplicit commit is performed after each statement. Otherwise, all transactions\nwhich don\'t end with an explicit COMMIT are implicitly rollbacked and the\nchanges are lost. The ROLLBACK statement can be used to do this explicitly.\n\nThe required syntax for the COMMIT statement is as follows:\n\nCOMMIT [WORK] [AND [NO] CHAIN] [[NO] RELEASE]\n\nCOMMIT is the more important transaction terminator, as well as the more\ninteresting one. The basic form of the COMMIT statement is simply the keyword\nCOMMIT (the keyword WORK is simply noise and can be omitted without changing\nthe effect).\n\nThe optional AND CHAIN clause is a convenience for initiating a new\ntransaction as soon as the old transaction terminates. If AND CHAIN is\nspecified, then there is effectively nothing between the old and new\ntransactions, although they remain separate. The characteristics of the new\ntransaction will be the same as the characteristics of the old one — that is,\nthe new transaction will have the same access mode, isolation level and\ndiagnostics area size (we\'ll discuss all of these shortly) as the transaction\njust terminated.\n\nRELEASE tells the server to disconnect the client immediately after the\ncurrent transaction.\n\nThere are NO RELEASE and AND NO CHAIN options. By default, commits do not\nRELEASE or CHAIN, but it\'s possible to change this default behavior with the\ncompletion_type server system variable. In this case, the AND NO CHAIN and NO\nRELEASE options override the server default.\n\n\n\nURL: mariadb.com/kb/en/commit/','','https://mariadb.com/kb/en/commit/'),(113,'UNLOCK TABLES',8,'Syntax\n------\n\nUNLOCK TABLES\n\nDescription\n-----------\n\nUNLOCK TABLES explicitly releases any table locks held by the current session.\nSee LOCK TABLES for more information.\n\nIn addition to releasing table locks acquired by the LOCK TABLES statement,\nthe UNLOCK TABLES statement also releases the global read lock acquired by the\nFLUSH TABLES WITH READ LOCK statement. The FLUSH TABLES WITH READ LOCK\nstatement is very useful for performing backups. See FLUSH for more\ninformation about FLUSH TABLES WITH READ LOCK.\n\n\n\nURL: mariadb.com/kb/en/transactions-unlock-tables/','','https://mariadb.com/kb/en/transactions-unlock-tables/'),(115,'XA Transactions',8,'Overview\n--------\n\nThe MariaDB XA implementation is based on the X/Open CAE document Distributed\nTransaction Processing: The XA Specification. This document is published by\nThe Open Group and available at\nhttp://www.opengroup.org/public/pubs/catalog/c193.htm.\n\nXA transactions are designed to allow distributed transactions, where a\ntransaction manager (the application) controls a transaction which involves\nmultiple resources. Such resources are usually DBMSs, but could be resources\nof any type. The whole set of required transactional operations is called a\nglobal transaction. Each subset of operations which involve a single resource\nis called a local transaction. XA used a 2-phases commit (2PC). With the first\ncommit, the transaction manager tells each resource to prepare an effective\ncommit, and waits for a confirm message. The changes are not still made\neffective at this point. If any of the resources encountered an error, the\ntransaction manager will rollback the global transaction. If all resources\ncommunicate that the first commit is successful, the transaction manager can\nrequire a second commit, which makes the changes effective.\n\nIn MariaDB, XA transactions can only be used with storage engines that support\nthem. At least InnoDB, TokuDB, SPIDER and MyRocks support them. For InnoDB,\nuntil MariaDB 10.2, XA transactions can be disabled by setting the\ninnodb_support_xa server system variable to 0. From MariaDB 10.3, XA\ntransactions are always supported.\n\nLike regular transactions, XA transactions create metadata locks on accessed\ntables.\n\nXA transactions require REPEATABLE READ as a minimum isolation level. However,\ndistributed transactions should always use SERIALIZABLE.\n\nTrying to start more than one XA transaction at the same time produces a 1400\nerror (SQLSTATE \'XAE09\'). The same error is produced when attempting to start\nan XA transaction while a regular transaction is in effect. Trying to start a\nregular transaction while an XA transaction is in effect produces a 1399 error\n(SQLSTATE \'XAE07\').\n\nThe statements that cause an implicit COMMIT for regular transactions produce\na 1400 error (SQLSTATE \'XAE09\') if a XA transaction is in effect.\n\nInternal XA vs External XA\n--------------------------\n\nXA transactions are an overloaded term in MariaDB. If a storage engine is\nXA-capable, it can mean one or both of these:\n\n* It supports MariaDB\'s internal two-phase commit API. This is transparent to\nthe user. Sometimes this is called \"internal XA\", since MariaDB\'s internal\ntransaction coordinator log can handle coordinating these transactions.\n\n* It supports XA transactions, with the XA START, XA PREPARE, XA COMMIT, etc.\nstatements. Sometimes this is called \"external XA\", since it requires the use\nof an external transaction coordinator to use this feature properly.\n\nTransaction Coordinator Log\n---------------------------\n\nIf you have two or more XA-capable storage engines enabled, then a transaction\ncoordinator log must be available.\n\nThere are currently two implementations of the transaction coordinator log:\n\n* Binary log-based transaction coordinator log\n* Memory-mapped file-based transaction coordinator log\n\nIf the binary log is enabled on a server, then the server will use the binary\nlog-based transaction coordinator log. Otherwise, it will use the\nmemory-mapped file-based transaction coordinator log.\n\nSee Transaction Coordinator Log for more information.\n\nSyntax\n------\n\nXA {START|BEGIN} xid [JOIN|RESUME]\n\nXA END xid [SUSPEND [FOR MIGRATE]]\n\nXA PREPARE xid\n\nXA COMMIT xid [ONE PHASE]\n\nXA ROLLBACK xid\n\nXA RECOVER [FORMAT=[\'RAW\'|\'SQL\']]\n\nxid: gtrid [, bqual [, formatID ]]\n\nThe interface to XA transactions is a set of SQL statements starting with XA.\nEach statement changes a transaction\'s state, determining which actions it can\nperform. A transaction which does not exist is in the NON-EXISTING state.\n\nXA START (or BEGIN) starts a transaction and defines its xid (a transaction\nidentifier). The JOIN or RESUME keywords have no effect. The new transaction\nwill be in ACTIVE state.\n\nThe xid can have 3 components, though only the first one is mandatory. gtrid\nis a quoted string representing a global transaction identifier. bqual is a\nquoted string representing a local transaction identifier. formatID is an\nunsigned integer indicating the format used for the first two components; if\nnot specified, defaults to 1. MariaDB does not interpret in any way these\ncomponents, and only uses them to identify a transaction. xids of transactions\nin effect must be unique.\n\nXA END declares that the specified ACTIVE transaction is finished and it\nchanges its state to IDLE. SUSPEND [FOR MIGRATE] has no effect.\n\nXA PREPARE prepares an IDLE transaction for commit, changing its state to\nPREPARED. This is the first commit.\n\nXA COMMIT definitely commits and terminates a transaction which has already\nbeen PREPARED. If the ONE PHASE clause is specified, this statements performs\na 1-phase commit on an IDLE transaction.\n\nXA ROLLBACK rolls back and terminates an IDLE or PREPARED transaction.\n\nXA RECOVER shows information about all PREPARED transactions.\n\nWhen trying to execute an operation which is not allowed for the transaction\'s\ncurrent state, an error is produced:\n\nXA COMMIT \'test\' ONE PHASE;\nERROR 1399 (XAE07): XAER_RMFAIL: The command cannot be executed when global\ntransaction is in the  ACTIVE state\n\nXA COMMIT \'test2\';\nERROR 1399 (XAE07): XAER_RMFAIL: The command cannot be executed when global\ntransaction is in the  NON-EXISTING state\n\nXA RECOVER\n----------\n\nThe XA RECOVER statement shows information about all transactions which are in\nthe PREPARED state. It does not matter which connection created the\ntransaction: if it has been PREPARED, it appears. But this does not mean that\na connection can commit or rollback a transaction which was started by another\nconnection. Note that transactions using a 1-phase commit are never in the\nPREPARED state, so they cannot be shown by XA RECOVER.\n\nXA RECOVER produces four columns:\n\nXA RECOVER;\n+----------+--------------+--------------+------+\n| formatID | gtrid_length | bqual_length | data |\n+----------+--------------+--------------+------+\n|        1 |            4 |            0 | test |\n+----------+--------------+--------------+------+\n\nMariaDB starting with 10.3.3\n----------------------------\nYou can use XA RECOVER FORMAT=\'SQL\' to get the data in a human readable form\nthat can be directly copy-pasted into XA COMMIT or XA ROLLBACK. This is\nparticularly useful for binary xid generated by some transaction coordinators.\n\nformatID is the formatID part of xid.\n\ndata are the gtrid and bqual parts of xid, concatenated.\n\ngtrid_length and bqual_length are the lengths of gtrid and bqual, respectevely.\n\nExamples\n--------\n\n2-phases commit:\n\nXA START \'test\';\n\nINSERT INTO t VALUES (1,2);\n\nXA END \'test\';\n\nXA PREPARE \'test\';\n\nXA COMMIT \'test\';\n\n1-phase commit:\n\nXA START \'test\';\n\nINSERT INTO t VALUES (1,2);\n\nXA END \'test\';\n\nXA COMMIT \'test\' ONE PHASE;\n\nHuman-readable:\n\nxa start \'12\r34	67v78\', \'abc\ndef\', 3;\n\ninsert t1 values (40);\n\nxa end \'12\r34	67v78\', \'abc\ndef\', 3;\n\nxa prepare \'12\r34	67v78\', \'abc\ndef\', 3;\n\nxa recover format=\'RAW\';\n+----------+--------------+--------------+--------------------+\n| formatID | gtrid_length | bqual_length | data               |\n+----------+--------------+--------------+--------------------+\n34      67v78abc       11 |            7 | 12\ndef |\n+----------+--------------+--------------+--------------------+\n\nxa recover format=\'SQL\';\n+----------+--------------+--------------+-------------------------------------\n---------+\n| formatID | gtrid_length | bqual_length | data                               \n     |\n+----------+--------------+--------------+-------------------------------------\n---------+\n|        3 |           11 |            7 |\nX\'31320d3334093637763738\',X\'6162630a646566\',3 |\n+----------+--------------+--------------+-------------------------------------\n---------+\n\nxa rollback X\'31320d3334093637763738\',X\'6162630a646566\',3;\n\nKnown Issues\n------------\n\nMariaDB Galera Cluster\n----------------------\n\nMariaDB Galera Cluster does not support XA transactions.\n\nHowever, MariaDB Galera Cluster builds include a built-in plugin called wsrep.\nPrior to MariaDB 10.4.3, this plugin was internally considered an XA-capable\nstorage engine. Consequently, these MariaDB Galera Cluster builds have\nmultiple XA-capable storage engines by default, even if the only \"real\"\nstorage engine that supports external XA transactions enabled on these builds\nby default is InnoDB. Therefore, when using one these builds MariaDB would be\nforced to use a transaction coordinator log by default, which could have\nperformance implications.\n\nSee Transaction Coordinator Log Overview: MariaDB Galera Cluster for more\ninformation.\n\n\n\nURL: mariadb.com/kb/en/xa-transactions/','','https://mariadb.com/kb/en/xa-transactions/'),(117,'Authentication from MariaDB 10.4',10,'MariaDB starting with 10.4\n--------------------------\nMariaDB 10.4 introduces a number of changes to the authentication process,\nintended to make things easier and more intuitive.\n\nOverview\n--------\n\nThere are four new main features in 10.4 relating to authentication:\n\n* It is possible to use more than one authentication plugin for each user\naccount. For example, this can be useful to slowly migrate users to the more\nsecure ed25519 authentication plugin over time, while allowing the old\nmysql_native_password authentication plugin as an alternative for the\ntransitional period.\n* The root@localhost user account created by mysql_install_db is created with\nthe ability to use two authentication plugins.\nFirst, it is configured to try to use the unix_socket authentication plugin.\nThis allows the root@localhost user to login without a password via the local\nUnix socket file defined by the socket system variable, as long as the login\nis attempted from a process owned by the operating system root user account.\nSecond, if authentication fails with the unix_socket authentication plugin,\nthen it is configured to try to use the mysql_native_password authentication\nplugin. However, an invalid password is initially set, so in order to\nauthenticate this way, a password must be set with SET PASSWORD.\nHowever, just using the unix_socket authentication plugin may be fine for many\nusers, and it is very secure. You may want to try going without password\nauthentication to see how well it works for you. Remember, the best way to\nkeep your password safe is not to have one!\n\n* All user accounts, passwords, and global privileges are now stored in the\nmysql.global_priv table. The mysql.user table still exists and has exactly the\nsame set of columns as before, but it’s now a view that references the\nmysql.global_priv table. Tools that analyze the mysql.user table should\ncontinue to work as before. From MariaDB 10.4.13, the dedicated mariadb.sys\nuser is created as the definer of this view. Previously root was the definer,\nwhich resulted in privilege problems when this username was changed.\n* MariaDB 10.4 adds supports for User Password Expiry, which is not active by\ndefault.\n\nDescription\n-----------\n\nAs a result of the above changes, the open-for-everyone all-powerful root\naccount is finally gone. And installation scripts will no longer demand that\nyou “PLEASE REMEMBER TO SET A PASSWORD FOR THE MariaDB root USER !”, because\nthe root account is securely created automatically.\n\nTwo all-powerful accounts are created by default — root and the OS user that\nowns the data directory, typically mysql. They are created as:\n\nCREATE USER root@localhost IDENTIFIED VIA unix_socket OR mysql_native_password\nUSING \'invalid\'\nCREATE USER mysql@localhost IDENTIFIED VIA unix_socket OR\nmysql_native_password USING \'invalid\'\n\nUsing unix_socket means that if you are the system root user, you can login as\nroot@locahost without a password. This technique was pioneered by Otto\nKekäläinen in Debian MariaDB packages and has been successfully used in Debian\nsince as early as MariaDB 10.0.\n\nIt is based on a simple fact that asking the system root for a password adds\nno extra security — root has full access to all the data files and all process\nmemory anyway. But not asking for a password means, there is no root password\nto forget (no need for the numerous tutorials on “how to reset MariaDB root\npassword”). And if you want to script some tedious database work, there is no\nneed to store the root password in plain text for the script to use (no need\nfor debian-sys-maint user).\n\nStill, some users may wish to log in as MariaDB root without using sudo. Hence\nthe old authentication method — conventional MariaDB password — is still\navailable. By default it is disabled (“invalid” is not a valid password hash),\nbut one can set the password with a usual SET PASSWORD statement. And still\nretain the password-less access via sudo.\n\nIf you install MariaDB locally (say from a tarball), you would not want to use\nsudo to be able to login. This is why MariaDB creates a second all-powerful\nuser with the same name as a system user that owns the data directory. In\nlocal (not system-wide) installations, this will be the user who installed\nMariaDB — they automatically get convenient password-less root-like access,\nbecause they can access all the data files anyway.\n\nEven if MariaDB is installed system-wide, you may not want to run your\ndatabase maintenance scripts as system root — now you can run them as system\nmysql user. And you will know that they will never destroy your entire system,\neven if you make a typo in a shell script.\n\nHowever, seasoned MariaDB DBAs who are used to the old ways do need to makes\nsome changes. See the examples below for common tasks.\n\nCookbook\n--------\n\nAfter installing MariaDB system-wide the first thing you’ve got used to doing\nis logging in into the unprotected root account and protecting it, that is,\nsetting the root password:\n\n$ sudo dnf install MariaDB-server\n$ mysql -uroot\n...\nMariaDB> set password = password(\"XH4VmT3_jt\");\n\nThis is not only unnecessary now, it will simply not work — there is no\nunprotected root account. To login as root use\n\n$ sudo dnf install MariaDB-server\n$ sudo mysql\n\nNote that it implies you are connecting via the unix socket, not tcp. If you\nhappen to have protocol=tcp in a system-wide /etc/my.cnf file, use sudo mysql\n--protocol=socket.\n\nAfter installing MariaDB locally you’ve also used to connect to the\nunprotected root account using mysql -uroot. This will not work either, simply\nuse mysql without specifying a username.\n\nIf you\'ve forgotten your root password, no problem — you can still connect\nusing sudo and change the password. And if you\'ve also removed unix_socket\nauthentication, to restore access do as follows:\n\n* restart MariaDB with --skip-grant-tables\n* login into the unprotected server\n* run FLUSH PRIVILEGES (note, before 10.4 this would’ve been the last step,\nnot anymore). This disables --skip-grant-tables and allows you to change the\nstored authentication method\n* run SET PASSWORD FOR root@localhost to change the root password.\n\nTo view inside privilege tables, the old mysql.user table still exists. You\ncan select from it as before, although you cannot update it anymore. It\ndoesn’t show alternative authentication plugins and this was one of the\nreasons for switching to the mysql.global_priv table — complex authentication\nrules did not fit into rigid structure of a relational table. You can select\nfrom the new table, for example:\n\nselect concat(user, \'@\', host, \' => \', json_detailed(priv)) from\nmysql.global_priv;\n\nReverting to the Previous Authentication Method for root@localhost\n------------------------------------------------------------------\n\nIf you don\'t want the root@localhost user account created by mysql_install_db\nto use unix_socket authentication by default, then there are a few ways to\nrevert to the previous mysql_native_password authentication method for this\nuser account.\n\nConfiguring mysql_install_db to Revert to the Previous Authentication Method\n----------------------------------------------------------------------------\n\nOne way to revert to the previous mysql_native_password authentication method\nfor the root@localhost user account is to execute mysql_install_db with a\nspecial option. If mysql_install_db is executed while\n--auth-root-authentication-method=normal is specified, then it will create the\ndefault user accounts using the default behavior of MariaDB 10.3 and before.\n\nThis means that the root@localhost user account will use mysql_native_password\nauthentication by default. There are some other differences as well. See\nmysql_install_db: User Accounts Created by Default for more information.\n\nFor example, the option can be set on the command-line while running\nmysql_install_db:\n\nmysql_install_db --user=mysql --datadir=/var/lib/mysql\n--auth-root-authentication-method=normal\n\nThe option can also be set in an option file in an option group supported by\nmysql_install_db. For example:\n\n[mysql_install_db]\nauth_root_authentication_method=normal\n\nIf the option is set in an option file and if mysql_install_db is executed,\nthen mysql_install_db will read this option from the option file, and it will\nautomatically set this option.\n\nAltering the User Account to Revert to the Previous Authentication Method\n-------------------------------------------------------------------------\n\nIf you have already installed MariaDB, and if the root@localhost user account\nis already using unix_socket authentication, then you can revert to the old\nmysql_native_password authentication method for the user account by executing\nthe following:\n\nALTER USER root@localhost IDENTIFIED VIA mysql_native_password USING\nPASSWORD(\"verysecret\")\n\n\n\nURL: mariadb.com/kb/en/authentication-from-mariadb-104/','','https://mariadb.com/kb/en/authentication-from-mariadb-104/'),(118,'CREATE USER',10,'Syntax\n------\n\nCREATE [OR REPLACE] USER [IF NOT EXISTS] \n user_specification [,user_specification ...] \n [REQUIRE {NONE | tls_option [[AND] tls_option ...] }]\n [WITH resource_option [resource_option ...] ]\n [lock_option] [password_option]\n\nuser_specification:\n username [authentication_option]\n\nauthentication_option:\n IDENTIFIED BY \'password\'\n | IDENTIFIED BY PASSWORD \'password_hash\'\n | IDENTIFIED {VIA|WITH} authentication_rule [OR authentication_rule  ...]\n\nauthentication_rule:\n  authentication_plugin\n | authentication_plugin {USING|AS} \'authentication_string\'\n | authentication_plugin {USING|AS} PASSWORD(\'password\')\n\ntls_option:\n SSL\n | X509\n | CIPHER \'cipher\'\n | ISSUER \'issuer\'\n | SUBJECT \'subject\'\n\nresource_option:\n MAX_QUERIES_PER_HOUR count\n | MAX_UPDATES_PER_HOUR count\n | MAX_CONNECTIONS_PER_HOUR count\n | MAX_USER_CONNECTIONS count\n | MAX_STATEMENT_TIME time\n\npassword_option:\n PASSWORD EXPIRE\n | PASSWORD EXPIRE DEFAULT\n | PASSWORD EXPIRE NEVER\n | PASSWORD EXPIRE INTERVAL N DAY\n\nlock_option:\n  ACCOUNT LOCK\n | ACCOUNT UNLOCK\n}\n\nDescription\n-----------\n\nThe CREATE USER statement creates new MariaDB accounts. To use it, you must\nhave the global CREATE USER privilege or the INSERT privilege for the mysql\ndatabase. For each account, CREATE USER creates a new row in mysql.user (until\nMariaDB 10.3 this is a table, from MariaDB 10.4 it\'s a view) or\nmysql.global_priv_table (from MariaDB 10.4) that has no privileges.\n\nIf any of the specified accounts, or any permissions for the specified\naccounts, already exist, then the server returns ERROR 1396 (HY000). If an\nerror occurs, CREATE USER will still create the accounts that do not result in\nan error. Only one error is produced for all users which have not been created:\n\nERROR 1396 (HY000): \n Operation CREATE USER failed for \'u1\'@\'%\',\'u2\'@\'%\'\n\nCREATE USER, DROP USER, CREATE ROLE, and DROP ROLE all produce the same error\ncode when they fail.\n\nSee Account Names below for details on how account names are specified.\n\nOR REPLACE\n----------\n\nIf the optional OR REPLACE clause is used, it is basically a shortcut for:\n\nDROP USER IF EXISTS name;\nCREATE USER name ...;\n\nFor example:\n\nCREATE USER foo2@test IDENTIFIED BY \'password\';\nERROR 1396 (HY000): Operation CREATE USER failed for \'foo2\'@\'test\'\n\nCREATE OR REPLACE USER foo2@test IDENTIFIED BY \'password\';\nQuery OK, 0 rows affected (0.00 sec)\n\nIF NOT EXISTS\n-------------\n\nWhen the IF NOT EXISTS clause is used, MariaDB will return a warning instead\nof an error if the specified user already exists.\n\nFor example:\n\nCREATE USER foo2@test IDENTIFIED BY \'password\';\nERROR 1396 (HY000): Operation CREATE USER failed for \'foo2\'@\'test\'\n\nCREATE USER IF NOT EXISTS foo2@test IDENTIFIED BY \'password\';\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nSHOW WARNINGS;\n+-------+------+----------------------------------------------------+\n| Level | Code | Message                                            |\n+-------+------+----------------------------------------------------+\n| Note  | 1973 | Can\'t create user \'foo2\'@\'test\'; it already exists |\n+-------+------+----------------------------------------------------+\n\nAuthentication Options\n----------------------\n\nIDENTIFIED BY \'password\'\n------------------------\n\nThe optional IDENTIFIED BY clause can be used to provide an account with a\npassword. The password should be specified in plain text. It will be hashed by\nthe PASSWORD function prior to being stored in the\nmysql.user/mysql.global_priv_table table.\n\nFor example, if our password is mariadb, then we can create the user with:\n\nCREATE USER foo2@test IDENTIFIED BY \'mariadb\';\n\nIf you do not specify a password with the IDENTIFIED BY clause, the user will\nbe able to connect without a password. A blank password is not a wildcard to\nmatch any password. The user must connect without providing a password if no\npassword is set.\n\nThe only authentication plugins that this clause supports are\nmysql_native_password and mysql_old_password.\n\nIDENTIFIED BY PASSWORD \'password_hash\'\n--------------------------------------\n\nThe optional IDENTIFIED BY PASSWORD clause can be used to provide an account\nwith a password that has already been hashed. The password should be specified\nas a hash that was provided by the PASSWORD function. It will be stored in the\nmysql.user/mysql.global_priv_table table as-is.\n\nFor example, if our password is mariadb, then we can find the hash with:\n\nSELECT PASSWORD(\'mariadb\');\n+-------------------------------------------+\n| PASSWORD(\'mariadb\')                       |\n+-------------------------------------------+\n| *54958E764CE10E50764C2EECBB71D01F08549980 |\n+-------------------------------------------+\n1 row in set (0.00 sec)\n\nAnd then we can create a user with the hash:\n\nCREATE USER foo2@test IDENTIFIED BY PASSWORD\n\'*54958E764CE10E50764C2EECBB71D01F08549980\';\n\nIf you do not specify a password with the IDENTIFIED BY clause, the user will\nbe able to connect without a password. A blank password is not a wildcard to\nmatch any password. The user must connect without providing a password if no\npassword is set.\n\nThe only authentication plugins that this clause supports are\nmysql_native_password and mysql_old_password.\n\nIDENTIFIED {VIA|WITH} authentication_plugin\n-------------------------------------------\n\nThe optional IDENTIFIED VIA authentication_plugin allows you to specify that\nthe account should be authenticated by a specific authentication plugin. The\nplugin name must be an active authentication plugin as per SHOW PLUGINS. If it\ndoesn\'t show up in that output, then you will need to install it with INSTALL\nPLUGIN or INSTALL SONAME.\n\nFor example, this could be used with the PAM authentication plugin:\n\nCREATE USER foo2@test IDENTIFIED VIA pam;\n\nSome authentication plugins allow additional arguments to be specified after a\nUSING or AS keyword. For example, the PAM authentication plugin accepts a\nservice name:\n\nCREATE USER foo2@test IDENTIFIED VIA pam USING \'mariadb\';\n\nThe exact meaning of the additional argument would depend on the specific\nauthentication plugin.\n\nMariaDB starting with 10.4.0\n----------------------------\nThe USING or AS keyword can also be used to provide a plain-text password to a\nplugin if it\'s provided as an argument to the PASSWORD() function. This is\nonly valid for authentication plugins that have implemented a hook for the\nPASSWORD() function. For example, the ed25519 authentication plugin supports\nthis:\n\nCREATE USER safe@\'%\' IDENTIFIED VIA ed25519 USING PASSWORD(\'secret\');\n\nMariaDB starting with 10.4.3\n----------------------------\nOne can specify many authentication plugins, they all work as alternatives\nways of authenticating a user:\n\nCREATE USER safe@\'%\' IDENTIFIED VIA ed25519 USING PASSWORD(\'secret\') OR\nunix_socket;\n\nBy default, when you create a user without specifying an authentication\nplugin, MariaDB uses the mysql_native_password plugin.\n\nTLS Options\n-----------\n\nBy default, MariaDB transmits data between the server and clients without\nencrypting it. This is generally acceptable when the server and client run on\nthe same host or in networks where security is guaranteed through other means.\nHowever, in cases where the server and client exist on separate networks or\nthey are in a high-risk network, the lack of encryption does introduce\nsecurity concerns as a malicious actor could potentially eavesdrop on the\ntraffic as it is sent over the network between them.\n\nTo mitigate this concern, MariaDB allows you to encrypt data in transit\nbetween the server and clients using the Transport Layer Security (TLS)\nprotocol. TLS was formerly known as Secure Socket Layer (SSL), but strictly\nspeaking the SSL protocol is a predecessor to TLS and, that version of the\nprotocol is now considered insecure. The documentation still uses the term SSL\noften and for compatibility reasons TLS-related server system and status\nvariables still use the prefix ssl_, but internally, MariaDB only supports its\nsecure successors.\n\nSee Secure Connections Overview for more information about how to determine\nwhether your MariaDB server has TLS support.\n\nYou can set certain TLS-related restrictions for specific user accounts. For\ninstance, you might use this with user accounts that require access to\nsensitive data while sending it across networks that you do not control. These\nrestrictions can be enabled for a user account with the CREATE USER, ALTER\nUSER, or GRANT statements. The following options are available:\n\n+---------------------------+-------------------------------------------------+\n| Option                    | Description                                     |\n+---------------------------+-------------------------------------------------+\n| REQUIRE NONE              | TLS is not required for this account, but can   |\n|                           | still be used.                                  |\n+---------------------------+-------------------------------------------------+\n| REQUIRE SSL               | The account must use TLS, but no valid X509     |\n|                           | certificate is required. This option cannot be  |\n|                           | combined with other TLS options.                |\n+---------------------------+-------------------------------------------------+\n| REQUIRE X509              | The account must use TLS and must have a valid  |\n|                           | X509 certificate. This option implies REQUIRE   |\n|                           | SSL. This option cannot be combined with other  |\n|                           | TLS options.                                    |\n+---------------------------+-------------------------------------------------+\n| REQUIRE ISSUER \'issuer\'   | The account must use TLS and must have a valid  |\n|                           | X509 certificate. Also, the Certificate         |\n|                           | Authority must be the one specified via the     |\n|                           | string issuer. This option implies REQUIRE      |\n|                           | X509. This option can be combined with the      |\n|                           | SUBJECT, and CIPHER options in any order.       |\n+---------------------------+-------------------------------------------------+\n| REQUIRE SUBJECT \'subject\' | The account must use TLS and must have a valid  |\n|                           | X509 certificate. Also, the certificate\'s       |\n|                           | Subject must be the one specified via the       |\n|                           | string subject. This option implies REQUIRE     |\n|                           | X509. This option can be combined with the      |\n|                           | ISSUER, and CIPHER options in any order.        |\n+---------------------------+-------------------------------------------------+\n| REQUIRE CIPHER \'cipher\'   | The account must use TLS, but no valid X509     |\n|                           | certificate is required. Also, the encryption   |\n|                           | used for the connection must use a specific     |\n|                           | cipher method specified in the string cipher.   |\n|                           | This option implies REQUIRE SSL. This option    |\n|                           | can be combined with the ISSUER, and SUBJECT    |\n|                           | options in any order.                           |\n+---------------------------+-------------------------------------------------+\n\nThe REQUIRE keyword must be used only once for all specified options, and the\nAND keyword can be used to separate individual options, but it is not required.\n\nFor example, you can create a user account that requires these TLS options\nwith the following:\n\nCREATE USER \'alice\'@\'%\'\n REQUIRE SUBJECT \'/CN=alice/O=My Dom, Inc./C=US/ST=Oregon/L=Portland\'\n AND ISSUER \'/C=FI/ST=Somewhere/L=City/ O=Some Company/CN=Peter\nParker/emailAddress=p.parker@marvel.com\'\n AND CIPHER \'SHA-DES-CBC3-EDH-RSA\';\n\nIf any of these options are set for a specific user account, then any client\nwho tries to connect with that user account will have to be configured to\nconnect with TLS.\n\nSee Securing Connections for Client and Server for information on how to\nenable TLS on the client and server.\n\nResource Limit Options\n----------------------\n\nMariaDB starting with 10.2.0\n----------------------------\nMariaDB 10.2.0 introduced a number of resource limit options.\n\nIt is possible to set per-account limits for certain server resources. The\nfollowing table shows the values that can be set per account:\n\n+--------------------------------------+--------------------------------------+\n| Limit Type                           | Decription                           |\n+--------------------------------------+--------------------------------------+\n| MAX_QUERIES_PER_HOUR                 | Number of statements that the        |\n|                                      | account can issue per hour           |\n|                                      | (including updates)                  |\n+--------------------------------------+--------------------------------------+\n| MAX_UPDATES_PER_HOUR                 | Number of updates (not queries)      |\n|                                      | that the account can issue per hour  |\n+--------------------------------------+--------------------------------------+\n| MAX_CONNECTIONS_PER_HOUR             | Number of connections that the       |\n|                                      | account can start per hour           |\n+--------------------------------------+--------------------------------------+\n| MAX_USER_CONNECTIONS                 | Number of simultaneous connections   |\n|                                      | that can be accepted from the same   |\n|                                      | account; if it is 0,                 |\n|                                      | max_connections will be used         |\n|                                      | instead; if max_connections is 0,    |\n|                                      | there is no limit for this           |\n|                                      | account\'s simultaneous connections.  |\n+--------------------------------------+--------------------------------------+\n| MAX_STATEMENT_TIME                   | Timeout, in seconds, for statements  |\n|                                      | executed by the user. See also       |\n|                                      | Aborting Statements that Exceed a    |\n|                                      | Certain Time to Execute.             |\n+--------------------------------------+--------------------------------------+\n\nIf any of these limits are set to 0, then there is no limit for that resource\nfor that user.\n\nHere is an example showing how to create a user with resource limits:\n\nCREATE USER \'someone\'@\'localhost\' WITH\n  MAX_USER_CONNECTIONS 10\n  MAX_QUERIES_PER_HOUR 200;\n\nThe resources are tracked per account, which means \'user\'@\'server\'; not per\nuser name or per connection.\n\nThe count can be reset for all users using FLUSH USER_RESOURCES, FLUSH\nPRIVILEGES or mysqladmin reload.\n\nPer account resource limits are stored in the user table, in the mysql\ndatabase. Columns used for resources limits are named max_questions,\nmax_updates, max_connections (for MAX_CONNECTIONS_PER_HOUR), and\nmax_user_connections (for MAX_USER_CONNECTIONS).\n\nAccount Names\n-------------\n\nAccount names have both a user name component and a host name component, and\nare specified as \'user_name\'@\'host_name\'.\n\nThe user name and host name may be unquoted, quoted as strings using double\nquotes (\") or single quotes (\'), or quoted as identifiers using backticks (`).\nYou must use quotes when using special characters (such as a hyphen) or\nwildcard characters. If you quote, you must quote the user name and host name\nseparately (for example \'user_name\'@\'host_name\').\n\nHost Name Component\n-------------------\n\nIf the host name is not provided, it is assumed to be \'%\'.\n\nHost names may contain the wildcard characters % and _. They are matched as if\nby the LIKE clause. If you need to use a wildcard character literally (for\nexample, to match a domain name with an underscore), prefix the character with\na backslash. See LIKE for more information on escaping wildcard characters.\n\nHost name matches are case-insensitive. Host names can match either domain\nnames or IP addresses. Use \'localhost\' as the host name to allow only local\nclient connections.\n\nYou can use a netmask to match a range of IP addresses using \'base_ip/netmask\'\nas the host name. A user with an IP address ip_addr will be allowed to connect\nif the following condition is true:\n\nip_addr & netmask = base_ip\n\nFor example, given a user:\n\nCREATE USER \'maria\'@\'247.150.130.0/255.255.255.0\';\n\nthe IP addresses satisfying this condition range from 247.150.130.0 to\n247.150.130.255.\n\nUsing 255.255.255.255 is equivalent to not using a netmask at all. Netmasks\ncannot be used for IPv6 addresses.\n\nNote that the credentials added when creating a user with the \'%\' wildcard\nhost will not grant access in all cases. For example, some systems come with\nan anonymous localhost user, and when connecting from localhost this will take\nprecedence.\n\nBefore MariaDB 10.6, the host name component could be up to 60 characters in\nlength. Starting from MariaDB 10.6, it can be up to 255 characters.\n\nUser Name Component\n-------------------\n\nUser names must match exactly, including case. A user name that is empty is\nknown as an anonymous account and is allowed to match a login attempt with any\nuser name component. These are described more in the next section.\n\nFor valid identifiers to use as user names, see Identifier Names.\n\nIt is possible for more than one account to match when a user connects.\nMariaDB selects the first matching account after sorting according to the\nfollowing criteria:\n\n* Accounts with an exact host name are sorted before accounts using a wildcard\nin the\nhost name. Host names using a netmask are considered to be exact for sorting.\n* Accounts with a wildcard in the host name are sorted according to the\nposition of\nthe first wildcard character. Those with a wildcard character later in the\nhost name\nsort before those with a wildcard character earlier in the host name.\n* Accounts with a non-empty user name sort before accounts with an empty user\nname.\n* Accounts with an empty user name are sorted last. As mentioned previously,\nthese are known as anonymous accounts. These are described more in the next\nsection.\n\nThe following table shows a list of example account as sorted by these\ncriteria:\n\n+---------+-------------+\n| User    | Host        |\n+---------+-------------+\n| joffrey | 192.168.0.3 |\n|         | 192.168.0.% |\n| joffrey | 192.168.%   |\n|         | 192.168.%   |\n+---------+-------------+\n\nOnce connected, you only have the privileges granted to the account that\nmatched, not all accounts that could have matched. For example, consider the\nfollowing commands:\n\nCREATE USER \'joffrey\'@\'192.168.0.3\';\nCREATE USER \'joffrey\'@\'%\';\nGRANT SELECT ON test.t1 to \'joffrey\'@\'192.168.0.3\';\nGRANT SELECT ON test.t2 to \'joffrey\'@\'%\';\n\nIf you connect as joffrey from 192.168.0.3, you will have the SELECT privilege\non the table test.t1, but not on the table test.t2. If you connect as joffrey\nfrom any other IP address, you will have the SELECT privilege on the table\ntest.t2, but not on the table test.t1.\n\nUsernames c\nan be up to 80 characters long before 10.6 and starting from 10.6\nit can be 128 characters long.\n\nAnonymous Accounts\n------------------\n\nAnonymous accounts are accounts where the user name portion of the account\nname is empty. These accounts act as special catch-all accounts. If a user\nattempts to log into the system from a host, and an anonymous account exists\nwith a host name portion that matches the user\'s host, then the user will log\nin as the anonymous account if there is no more specific account match for the\nuser name that the user entered.\n\nFor example, here are some anonymous accounts:\n\nCREATE USER \'\'@\'localhost\';\nCREATE USER \'\'@\'192.168.0.3\';\n\nFixing a Legacy Default Anonymous Account\n-----------------------------------------\n\nOn some systems, the mysql.db table has some entries for the \'\'@\'%\' anonymous\naccount by default. Unfortunately, there is no matching entry in the\nmysql.user/mysql.global_priv_table table, which means that this anonymous\naccount doesn\'t exactly exist, but it does have privileges--usually on the\ndefault test database created by mysql_install_db. These account-less\nprivileges are a legacy that is leftover from a time when MySQL\'s privilege\nsystem was less advanced.\n\nThis situation means that you will run into errors if you try to create a\n\'\'@\'%\' account. For example:\n\nCREATE USER \'\'@\'%\';\nERROR 1396 (HY000): Operation CREATE USER failed for \'\'@\'%\'\n\nThe fix is to DELETE the row in the mysql.db table and then execute FLUSH\nPRIVILEGES:\n\nDELETE FROM mysql.db WHERE User=\'\' AND Host=\'%\';\nFLUSH PRIVILEGES;\n\nAnd then the account can be created:\n\nCREATE USER \'\'@\'%\';\nQuery OK, 0 rows affected (0.01 sec)\n\nSee MDEV-13486 for more information.\n\nPassword Expiry\n---------------\n\nMariaDB starting with 10.4.3\n----------------------------\nBesides automatic password expiry, as determined by default_password_lifetime,\npassword expiry times can be set on an individual user basis, overriding the\nglobal setting, for example:\n\nCREATE USER \'monty\'@\'localhost\' PASSWORD EXPIRE INTERVAL 120 DAY;\n\nSee User Password Expiry for more details.\n\nAccount Locking\n---------------\n\nMariaDB starting with 10.4.2\n----------------------------\nAccount locking permits privileged administrators to lock/unlock user\naccounts. No new client connections will be permitted if an account is locked\n(existing connections are not affected). For example:\n\nCREATE USER \'marijn\'@\'localhost\' ACCOUNT LOCK;\n\nSee Account Locking for more details.\n\nFrom MariaDB 10.4.7 and MariaDB 10.5.8, the lock_option and password_option\nclauses can occur in either order.\n\n\n\nURL: mariadb.com/kb/en/create-user/','','https://mariadb.com/kb/en/create-user/'),(119,'ALTER USER',10,'MariaDB starting with 10.2.0\n----------------------------\nThe ALTER USER statement was introduced in MariaDB 10.2.0.\n\nSyntax\n------\n\nALTER USER [IF EXISTS] \n user_specification [,user_specification] ...\n [REQUIRE {NONE | tls_option [[AND] tls_option] ...}]\n [WITH resource_option [resource_option] ...]\n [lock_option] [password_option]\n\nuser_specification:\n username [authentication_option]\n\nauthentication_option:\n IDENTIFIED BY \'password\'\n | IDENTIFIED BY PASSWORD \'password_hash\'\n | IDENTIFIED {VIA|WITH} authentication_rule [OR authentication_rule] ...\n\nauthentication_rule:\n authentication_plugin\n | authentication_plugin {USING|AS} \'authentication_string\'\n | authentication_plugin {USING|AS} PASSWORD(\'password\')\n\ntls_option\n SSL\n | X509\n | CIPHER \'cipher\'\n | ISSUER \'issuer\'\n | SUBJECT \'subject\'\n\nresource_option\n MAX_QUERIES_PER_HOUR count\n | MAX_UPDATES_PER_HOUR count\n | MAX_CONNECTIONS_PER_HOUR count\n | MAX_USER_CONNECTIONS count\n | MAX_STATEMENT_TIME time\n\npassword_option:\n PASSWORD EXPIRE\n | PASSWORD EXPIRE DEFAULT\n | PASSWORD EXPIRE NEVER\n | PASSWORD EXPIRE INTERVAL N DAY\n\nlock_option:\n  ACCOUNT LOCK\n | ACCOUNT UNLOCK\n}\n\nDescription\n-----------\n\nThe ALTER USER statement modifies existing MariaDB accounts. To use it, you\nmust have the global CREATE USER privilege or the UPDATE privilege for the\nmysql database. The global SUPER privilege is also required if the read_only\nsystem variable is enabled.\n\nIf any of the specified user accounts do not yet exist, an error results. If\nan error occurs, ALTER USER will still modify the accounts that do not result\nin an error. Only one error is produced for all users which have not been\nmodified.\n\nIF EXISTS\n---------\n\nWhen the IF EXISTS clause is used, MariaDB will return a warning instead of an\nerror for each specified user that does not exist.\n\nAccount Names\n-------------\n\nFor ALTER USER statements, account names are specified as the username\nargument in the same way as they are for CREATE USER statements. See account\nnames from the CREATE USER page for details on how account names are specified.\n\nCURRENT_USER or CURRENT_USER() can also be used to alter the account logged\ninto the current session. For example, to change the current user\'s password\nto mariadb:\n\nALTER USER CURRENT_USER() IDENTIFIED BY \'mariadb\';\n\nAuthentication Options\n----------------------\n\nMariaDB starting with 10.4\n--------------------------\nFrom MariaDB 10.4, it is possible to use more than one authentication plugin\nfor each user account. For example, this can be useful to slowly migrate users\nto the more secure ed25519 authentication plugin over time, while allowing the\nold mysql_native_password authentication plugin as an alternative for the\ntransitional period. See Authentication from MariaDB 10.4 for more.\n\nWhen running ALTER USER, not specifying an authentication option in the\nIDENTIFIED VIA clause will remove that authentication method. (However this\nwas not the case before MariaDB 10.4.13, see MDEV-21928)\n\nFor example, a user is created with the ability to authenticate via both a\npassword and unix_socket:\n\nCREATE USER \'bob\'@\'localhost\' \n IDENTIFIED VIA mysql_native_password USING PASSWORD(\'pwd\')\n OR unix_socket;\n\nSHOW CREATE USER \'bob\'@\'localhost\'G\n*************************** 1. row ***************************\nCREATE USER for bob@localhost: CREATE USER `bob`@`localhost` \n IDENTIFIED VIA mysql_native_password\n USING \'*975B2CD4FF9AE554FE8AD33168FBFC326D2021DD\'\n OR unix_socket\n\nIf the user\'s password is updated, but unix_socket authentication is not\nspecified in the IDENTIFIED VIA clause, unix_socket authentication will no\nlonger be permitted.\n\nALTER USER \'bob\'@\'localhost\' IDENTIFIED VIA mysql_native_password \n USING PASSWORD(\'pwd2\');\n\nSHOW CREATE USER \'bob\'@\'localhost\'G\n*************************** 1. row ***************************\nCREATE USER for bob@localhost: CREATE USER `bob`@`localhost` \n IDENTIFIED BY PASSWORD \'*38366FDA01695B6A5A9DD4E428D9FB8F7EB75512\'\n\nIDENTIFIED BY \'password\'\n------------------------\n\nThe optional IDENTIFIED BY clause can be used to provide an account with a\npassword. The password should be specified in plain text. It will be hashed by\nthe PASSWORD function prior to being stored to the mysql.user table.\n\nFor example, if our password is mariadb, then we can set the account\'s\npassword with:\n\nALTER USER foo2@test IDENTIFIED BY \'mariadb\';\n\nIf you do not specify a password with the IDENTIFIED BY clause, the user will\nbe able to connect without a password. A blank password is not a wildcard to\nmatch any password. The user must connect without providing a password if no\npassword is set.\n\nThe only authentication plugins that this clause supports are\nmysql_native_password and mysql_old_password.\n\nIDENTIFIED BY PASSWORD \'password_hash\'\n--------------------------------------\n\nThe optional IDENTIFIED BY PASSWORD clause can be used to provide an account\nwith a password that has already been hashed. The password should be specified\nas a hash that was provided by the PASSWORD#function. It will be stored to the\nmysql.user table as-is.\n\nFor example, if our password is mariadb, then we can find the hash with:\n\nSELECT PASSWORD(\'mariadb\');\n+-------------------------------------------+\n| PASSWORD(\'mariadb\')                       |\n+-------------------------------------------+\n| *54958E764CE10E50764C2EECBB71D01F08549980 |\n+-------------------------------------------+\n\nAnd then we can set an account\'s password with the hash:\n\nALTER USER foo2@test \n IDENTIFIED BY PASSWORD \'*54958E764CE10E50764C2EECBB71D01F08549980\';\n\nIf you do not specify a password with the IDENTIFIED BY clause, the user will\nbe able to connect without a password. A blank password is not a wildcard to\nmatch any password. The user must connect without providing a password if no\npassword is set.\n\nThe only authentication plugins that this clause supports are\nmysql_native_password and mysql_old_password.\n\nIDENTIFIED {VIA|WITH} authentication_plugin\n-------------------------------------------\n\nThe optional IDENTIFIED VIA authentication_plugin allows you to specify that\nthe account should be authenticated by a specific authentication plugin. The\nplugin name must be an active authentication plugin as per SHOW PLUGINS. If it\ndoesn\'t show up in that output, then you will need to install it with INSTALL\nPLUGIN or INSTALL SONAME.\n\nFor example, this could be used with the PAM authentication plugin:\n\nALTER USER foo2@test IDENTIFIED VIA pam;\n\nSome authentication plugins allow additional arguments to be specified after a\nUSING or AS keyword. For example, the PAM authentication plugin accepts a\nservice name:\n\nALTER USER foo2@test IDENTIFIED VIA pam USING \'mariadb\';\n\nThe exact meaning of the additional argument would depend on the specific\nauthentication plugin.\n\nIn MariaDB 10.4 and later, the USING or AS keyword can also be used to provide\na plain-text password to a plugin if it\'s provided as an argument to the\nPASSWORD() function. This is only valid for authentication plugins that have\nimplemented a hook for the PASSWORD() function. For example, the ed25519\nauthentication plugin supports this:\n\nALTER USER safe@\'%\' IDENTIFIED VIA ed25519 USING PASSWORD(\'secret\');\n\nTLS Options\n-----------\n\nBy default, MariaDB transmits data between the server and clients without\nencrypting it. This is generally acceptable when the server and client run on\nthe same host or in networks where security is guaranteed through other means.\nHowever, in cases where the server and client exist on separate networks or\nthey are in a high-risk network, the lack of encryption does introduce\nsecurity concerns as a malicious actor could potentially eavesdrop on the\ntraffic as it is sent over the network between them.\n\nTo mitigate this concern, MariaDB allows you to encrypt data in transit\nbetween the server and clients using the Transport Layer Security (TLS)\nprotocol. TLS was formerly known as Secure Socket Layer (SSL), but strictly\nspeaking the SSL protocol is a predecessor to TLS and, that version of the\nprotocol is now considered insecure. The documentation still uses the term SSL\noften and for compatibility reasons TLS-related server system and status\nvariables still use the prefix ssl_, but internally, MariaDB only supports its\nsecure successors.\n\nSee Secure Connections Overview for more information about how to determine\nwhether your MariaDB server has TLS support.\n\nYou can set certain TLS-related restrictions for specific user accounts. For\ninstance, you might use this with user accounts that require access to\nsensitive data while sending it across networks that you do not control. These\nrestrictions can be enabled for a user account with the CREATE USER, ALTER\nUSER, or GRANT statements. The following options are available:\n\n+---------------------------+-------------------------------------------------+\n| Option                    | Description                                     |\n+---------------------------+-------------------------------------------------+\n| REQUIRE NONE              | TLS is not required for this account, but can   |\n|                           | still be used.                                  |\n+---------------------------+-------------------------------------------------+\n| REQUIRE SSL               | The account must use TLS, but no valid X509     |\n|                           | certificate is required. This option cannot be  |\n|                           | combined with other TLS options.                |\n+---------------------------+-------------------------------------------------+\n| REQUIRE X509              | The account must use TLS and must have a valid  |\n|                           | X509 certificate. This option implies REQUIRE   |\n|                           | SSL. This option cannot be combined with other  |\n|                           | TLS options.                                    |\n+---------------------------+-------------------------------------------------+\n| REQUIRE ISSUER \'issuer\'   | The account must use TLS and must have a valid  |\n|                           | X509 certificate. Also, the Certificate         |\n|                           | Authority must be the one specified via the     |\n|                           | string issuer. This option implies REQUIRE      |\n|                           | X509. This option can be combined with the      |\n|                           | SUBJECT, and CIPHER options in any order.       |\n+---------------------------+-------------------------------------------------+\n| REQUIRE SUBJECT \'subject\' | The account must use TLS and must have a valid  |\n|                           | X509 certificate. Also, the certificate\'s       |\n|                           | Subject must be the one specified via the       |\n|                           | string subject. This option implies REQUIRE     |\n|                           | X509. This option can be combined with the      |\n|                           | ISSUER, and CIPHER options in any order.        |\n+---------------------------+-------------------------------------------------+\n| REQUIRE CIPHER \'cipher\'   | The account must use TLS, but no valid X509     |\n|                           | certificate is required. Also, the encryption   |\n|                           | used for the connection must use a specific     |\n|                           | cipher method specified in the string cipher.   |\n|                           | This option implies REQUIRE SSL. This option    |\n|                           | can be combined with the ISSUER, and SUBJECT    |\n|                           | options in any order.                           |\n+---------------------------+-------------------------------------------------+\n\nThe REQUIRE keyword must be used only once for all specified options, and the\nAND keyword can be used to separate individual options, but it is not required.\n\nFor example, you can alter a user account to require these TLS options with\nthe following:\n\nALTER USER \'alice\'@\'%\'\n REQUIRE SUBJECT \'/CN=alice/O=My Dom, Inc./C=US/ST=Oregon/L=Portland\' AND\n ISSUER \'/C=FI/ST=Somewhere/L=City/ O=Some Company/CN=Peter\nParker/emailAddress=p.parker@marvel.com\'\n AND CIPHER \'SHA-DES-CBC3-EDH-RSA\';\n\nIf any of these options are set for a specific user account, then any client\nwho tries to connect with that user account will have to be configured to\nconnect with TLS.\n\nSee Securing Connections for Client and Server for information on how to\nenable TLS on the client and server.\n\nResource Limit Options\n----------------------\n\nMariaDB starting with 10.2.0\n----------------------------\nMariaDB 10.2.0 introduced a number of resource limit options.\n\nIt is possible to set per-account limits for certain server resources. The\nfollowing table shows the values that can be set per account:\n\n+------------------------------------+----------------------------------------+\n| Limit Type                         | Description                            |\n+------------------------------------+----------------------------------------+\n| MAX_QUERIES_PER_HOUR               | Number of statements that the account  |\n|                                    | can issue per hour (including updates) |\n+------------------------------------+----------------------------------------+\n| MAX_UPDATES_PER_HOUR               | Number of updates (not queries) that   |\n|                                    | the account can issue per hour         |\n+------------------------------------+----------------------------------------+\n| MAX_CONNECTIONS_PER_HOUR           | Number of connections that the         |\n|                                    | account can start per hour             |\n+------------------------------------+----------------------------------------+\n| MAX_USER_CONNECTIONS               | Number of simultaneous connections     |\n|                                    | that can be accepted from the same     |\n|                                    | account; if it is 0, max_connections   |\n|                                    | will be used instead; if               |\n|                                    | max_connections is 0, there is no      |\n|                                    | limit for this account\'s simultaneous  |\n|                                    | connections.                           |\n+------------------------------------+----------------------------------------+\n| MAX_STATEMENT_TIME                 | Timeout, in seconds, for statements    |\n|                                    | executed by the user. See also         |\n|                                    | Aborting Statements that Exceed a      |\n|                                    | Certain Time to Execute.               |\n+------------------------------------+----------------------------------------+\n\nIf any of these limits are set to 0, then there is no limit for that resource\nfor that user.\n\nHere is an example showing how to set an account\'s resource limits:\n\nALTER USER \'someone\'@\'localhost\' WITH\n  MAX_USER_CONNECTIONS 10\n  MAX_QUERIES_PER_HOUR 200;\n\nThe resources are tracked per account, which means \'user\'@\'server\'; not per\nuser name or per connection.\n\nThe count can be reset for all users using FLUSH USER_RESOURCES, FLUSH\nPRIVILEGES or mysqladmin reload.\n\nPer account resource limits are stored in the user table, in the mysql\ndatabase. Columns used for resources limits are named max_questions,\nmax_updates, max_connections (for MAX_CONNECTIONS_PER_HOUR), and\nmax_user_connections (for MAX_USER_CONNECTIONS).\n\nPassword Expiry\n---------------\n\nMariaDB starting with 10.4.3\n----------------------------\nBesides automatic password expiry, as determined by default_password_lifetime,\npassword expiry times can be set on an individual user basis, overriding the\nglobal setting, for example:\n\nALTER USER \'monty\'@\'localhost\' PASSWORD EXPIRE INTERVAL 120 DAY;\nALTER USER \'monty\'@\'localhost\' PASSWORD EXPIRE NEVER;\nALTER USER \'monty\'@\'localhost\' PASSWORD EXPIRE DEFAULT;\n\nSee User Password Expiry for more details.\n\nAccount Locking\n---------------\n\nMariaDB starting with 10.4.2\n----------------------------\nAccount locking permits privileged administrators to lock/unlock user\naccounts. No new client connections will be permitted if an account is locked\n(existing connections are not affected). For example:\n\nALTER USER \'marijn\'@\'localhost\' ACCOUNT LOCK;\n\nSee Account Locking for more details.\n\nFrom MariaDB 10.4.7 and MariaDB 10.5.8, the lock_option and password_option\nclauses can occur in either order.\n\n\n\nURL: mariadb.com/kb/en/alter-user/','','https://mariadb.com/kb/en/alter-user/');
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_stats`
--

DROP TABLE IF EXISTS `index_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_stats` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `index_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `prefix_arity` int(11) unsigned NOT NULL,
  `avg_frequency` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`,`index_name`,`prefix_arity`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='Statistics on Indexes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_stats`
--

LOCK TABLES `index_stats` WRITE;
/*!40000 ALTER TABLE `index_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `innodb_index_stats`
--

DROP TABLE IF EXISTS `innodb_index_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `innodb_index_stats` (
  `database_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(199) COLLATE utf8mb3_bin NOT NULL,
  `index_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `stat_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `stat_value` bigint(20) unsigned NOT NULL,
  `sample_size` bigint(20) unsigned DEFAULT NULL,
  `stat_description` varchar(1024) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`,`index_name`,`stat_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `innodb_index_stats`
--

LOCK TABLES `innodb_index_stats` WRITE;
/*!40000 ALTER TABLE `innodb_index_stats` DISABLE KEYS */;
INSERT INTO `innodb_index_stats` VALUES ('as1','auction','PRIMARY','2023-04-27 19:12:11','n_diff_pfx01',0,1,'id'),('as1','auction','PRIMARY','2023-04-27 19:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('as1','auction','PRIMARY','2023-04-27 19:12:11','size',1,NULL,'Number of pages in the index'),('as1','auction','categoryID_idx','2023-04-27 19:12:11','n_diff_pfx01',0,1,'categoryId'),('as1','auction','categoryID_idx','2023-04-27 19:12:11','n_diff_pfx02',0,1,'categoryId,id'),('as1','auction','categoryID_idx','2023-04-27 19:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('as1','auction','categoryID_idx','2023-04-27 19:12:11','size',1,NULL,'Number of pages in the index'),('as1','bid_history','PRIMARY','2023-04-27 19:12:11','n_diff_pfx01',0,1,'change_id'),('as1','bid_history','PRIMARY','2023-04-27 19:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('as1','bid_history','PRIMARY','2023-04-27 19:12:11','size',1,NULL,'Number of pages in the index'),('as1','category','PRIMARY','2023-04-27 19:12:11','n_diff_pfx01',0,1,'categoryId'),('as1','category','PRIMARY','2023-04-27 19:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('as1','category','PRIMARY','2023-04-27 19:12:11','size',1,NULL,'Number of pages in the index'),('as1','register','PRIMARY','2023-04-27 19:12:11','n_diff_pfx01',0,1,'registerId'),('as1','register','PRIMARY','2023-04-27 19:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('as1','register','PRIMARY','2023-04-27 19:12:11','size',1,NULL,'Number of pages in the index'),('as1','review','PRIMARY','2023-04-27 19:12:11','n_diff_pfx01',0,1,'reviewID'),('as1','review','PRIMARY','2023-04-27 19:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('as1','review','PRIMARY','2023-04-27 19:12:11','size',1,NULL,'Number of pages in the index'),('as1','user','PRIMARY','2023-04-27 19:12:11','n_diff_pfx01',0,1,'userID'),('as1','user','PRIMARY','2023-04-27 19:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('as1','user','PRIMARY','2023-04-27 19:12:11','size',1,NULL,'Number of pages in the index'),('csy2028','person','PRIMARY','2023-04-27 19:12:11','n_diff_pfx01',0,1,'email'),('csy2028','person','PRIMARY','2023-04-27 19:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('csy2028','person','PRIMARY','2023-04-27 19:12:11','size',1,NULL,'Number of pages in the index'),('ijdb','category','PRIMARY','2023-04-27 19:12:11','n_diff_pfx01',0,1,'id'),('ijdb','category','PRIMARY','2023-04-27 19:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('ijdb','category','PRIMARY','2023-04-27 19:12:11','size',1,NULL,'Number of pages in the index'),('ijdb','joke','PRIMARY','2023-04-27 19:12:11','n_diff_pfx01',0,1,'id'),('ijdb','joke','PRIMARY','2023-04-27 19:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('ijdb','joke','PRIMARY','2023-04-27 19:12:11','size',1,NULL,'Number of pages in the index'),('job','applicants','PRIMARY','2023-04-27 19:12:11','n_diff_pfx01',0,1,'id'),('job','applicants','PRIMARY','2023-04-27 19:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('job','applicants','PRIMARY','2023-04-27 19:12:11','size',1,NULL,'Number of pages in the index'),('job','category','PRIMARY','2023-04-27 19:12:11','n_diff_pfx01',0,1,'id'),('job','category','PRIMARY','2023-04-27 19:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('job','category','PRIMARY','2023-04-27 19:12:11','size',1,NULL,'Number of pages in the index'),('job','enquiry','PRIMARY','2023-04-27 19:12:11','n_diff_pfx01',0,1,'id'),('job','enquiry','PRIMARY','2023-04-27 19:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('job','enquiry','PRIMARY','2023-04-27 19:12:11','size',1,NULL,'Number of pages in the index'),('job','job','PRIMARY','2023-04-27 19:12:11','n_diff_pfx01',0,1,'id'),('job','job','PRIMARY','2023-04-27 19:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('job','job','PRIMARY','2023-04-27 19:12:11','size',1,NULL,'Number of pages in the index'),('job','users','PRIMARY','2023-04-27 19:12:11','n_diff_pfx01',0,1,'id'),('job','users','PRIMARY','2023-04-27 19:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('job','users','PRIMARY','2023-04-27 19:12:11','size',1,NULL,'Number of pages in the index'),('job','users','username_UNIQUE','2023-04-27 19:12:11','n_diff_pfx01',0,1,'username'),('job','users','username_UNIQUE','2023-04-27 19:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('job','users','username_UNIQUE','2023-04-27 19:12:11','size',1,NULL,'Number of pages in the index'),('mysql','gtid_slave_pos','PRIMARY','2023-04-27 19:12:11','n_diff_pfx01',0,1,'domain_id'),('mysql','gtid_slave_pos','PRIMARY','2023-04-27 19:12:11','n_diff_pfx02',0,1,'domain_id,sub_id'),('mysql','gtid_slave_pos','PRIMARY','2023-04-27 19:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('mysql','gtid_slave_pos','PRIMARY','2023-04-27 19:12:11','size',1,NULL,'Number of pages in the index');
/*!40000 ALTER TABLE `innodb_index_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `innodb_table_stats`
--

DROP TABLE IF EXISTS `innodb_table_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `innodb_table_stats` (
  `database_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(199) COLLATE utf8mb3_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `n_rows` bigint(20) unsigned NOT NULL,
  `clustered_index_size` bigint(20) unsigned NOT NULL,
  `sum_of_other_index_sizes` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `innodb_table_stats`
--

LOCK TABLES `innodb_table_stats` WRITE;
/*!40000 ALTER TABLE `innodb_table_stats` DISABLE KEYS */;
INSERT INTO `innodb_table_stats` VALUES ('as1','auction','2023-04-27 19:12:11',0,1,1),('as1','bid_history','2023-04-27 19:12:11',0,1,0),('as1','category','2023-04-27 19:12:11',0,1,0),('as1','register','2023-04-27 19:12:11',0,1,0),('as1','review','2023-04-27 19:12:11',0,1,0),('as1','user','2023-04-27 19:12:11',0,1,0),('csy2028','person','2023-04-27 19:12:11',0,1,0),('ijdb','category','2023-04-27 19:12:11',0,1,0),('ijdb','joke','2023-04-27 19:12:11',0,1,0),('job','applicants','2023-04-27 19:12:11',0,1,0),('job','category','2023-04-27 19:12:11',0,1,0),('job','enquiry','2023-04-27 19:12:11',0,1,0),('job','job','2023-04-27 19:12:11',0,1,0),('job','users','2023-04-27 19:12:11',0,1,1),('mysql','gtid_slave_pos','2023-04-27 19:12:11',0,1,0);
/*!40000 ALTER TABLE `innodb_table_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin`
--

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proc`
--

DROP TABLE IF EXISTS `proc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proc` (
  `db` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `type` enum('FUNCTION','PROCEDURE','PACKAGE','PACKAGE BODY') NOT NULL,
  `specific_name` char(64) NOT NULL DEFAULT '',
  `language` enum('SQL') NOT NULL DEFAULT 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL DEFAULT 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL DEFAULT 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` longblob NOT NULL,
  `body` longblob NOT NULL,
  `definer` varchar(384) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','IGNORE_BAD_TABLE_OPTIONS','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH','EMPTY_STRING_IS_NULL','SIMULTANEOUS_ASSIGNMENT','TIME_ROUND_FRACTIONAL') NOT NULL DEFAULT '',
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `character_set_client` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `body_utf8` longblob DEFAULT NULL,
  `aggregate` enum('NONE','GROUP') NOT NULL DEFAULT 'NONE',
  PRIMARY KEY (`db`,`name`,`type`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Stored Procedures';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proc`
--

LOCK TABLES `proc` WRITE;
/*!40000 ALTER TABLE `proc` DISABLE KEYS */;
INSERT INTO `proc` VALUES ('mysql','AddGeometryColumn','PROCEDURE','AddGeometryColumn','SQL','CONTAINS_SQL','NO','INVOKER','catalog varchar(64), t_schema varchar(64),\n   t_name varchar(64), geometry_column varchar(64), t_srid int','','begin\n  set @qwe= concat(\'ALTER TABLE \', t_schema, \'.\', t_name, \' ADD \', geometry_column,\' GEOMETRY REF_SYSTEM_ID=\', t_srid); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','','utf8mb3','utf8mb3_general_ci','utf8mb4_general_ci','begin\n  set @qwe= concat(\'ALTER TABLE \', t_schema, \'.\', t_name, \' ADD \', geometry_column,\' GEOMETRY REF_SYSTEM_ID=\', t_srid); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end','NONE'),('mysql','DropGeometryColumn','PROCEDURE','DropGeometryColumn','SQL','CONTAINS_SQL','NO','INVOKER','catalog varchar(64), t_schema varchar(64),\n   t_name varchar(64), geometry_column varchar(64)','','begin\n  set @qwe= concat(\'ALTER TABLE \', t_schema, \'.\', t_name, \' DROP \', geometry_column); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','','utf8mb3','utf8mb3_general_ci','utf8mb4_general_ci','begin\n  set @qwe= concat(\'ALTER TABLE \', t_schema, \'.\', t_name, \' DROP \', geometry_column); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end','NONE'),('sys','extract_schema_from_file_name','FUNCTION','extract_schema_from_file_name','SQL','NO_SQL','YES','INVOKER','path VARCHAR(512)\n    ','varchar(64) CHARSET utf8mb3','BEGIN\n    RETURN LEFT(SUBSTRING_INDEX(SUBSTRING_INDEX(REPLACE(path, \'\\\\\', \'/\'), \'/\', -2), \'/\', 1), 64);\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Takes a raw file path, and attempts to extract the schema name from it.\n             Useful for when interacting with Performance Schema data\n             concerning IO statistics, for example.\n             Currently relies on the fact that a table data file will be within a\n             specified database directory (will not work with partitions or tables\n             that specify an individual DATA_DIRECTORY).\n             Parameters\n             path (VARCHAR(512)):\n               The full file path to a data file to extract the schema name from.\n             Returns\n             VARCHAR(64)\n             Example\n             mysql> SELECT sys.extract_schema_from_file_name(\'/var/lib/mysql/employees/employee.ibd\');\n             +----------------------------------------------------------------------------+\n             | sys.extract_schema_from_file_name(\'/var/lib/mysql/employees/employee.ibd\') |\n             +----------------------------------------------------------------------------+\n             | employees                                                                  |\n             +----------------------------------------------------------------------------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    RETURN LEFT(SUBSTRING_INDEX(SUBSTRING_INDEX(REPLACE(path, \'\\\', \'/\'), \'/\', -2), \'/\', 1), 64);\nEND','NONE'),('sys','extract_table_from_file_name','FUNCTION','extract_table_from_file_name','SQL','NO_SQL','YES','INVOKER','path VARCHAR(512)\n    ','varchar(64) CHARSET utf8mb3','BEGIN\n    RETURN LEFT(SUBSTRING_INDEX(REPLACE(SUBSTRING_INDEX(REPLACE(path, \'\\\\\', \'/\'), \'/\', -1), \'@0024\', \'$\'), \'.\', 1), 64);\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Takes a raw file path, and extracts the table name from it.\n             Useful for when interacting with Performance Schema data\n             concerning IO statistics, for example.\n             Parameters\n             path (VARCHAR(512)):\n               The full file path to a data file to extract the table name from.\n             Returns\n             VARCHAR(64)\n             Example\n             mysql> SELECT sys.extract_table_from_file_name(\'/var/lib/mysql/employees/employee.ibd\');\n             +---------------------------------------------------------------------------+\n             | sys.extract_table_from_file_name(\'/var/lib/mysql/employees/employee.ibd\') |\n             +---------------------------------------------------------------------------+\n             | employee                                                                  |\n             +---------------------------------------------------------------------------+\n             1 row in set (0.02 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    RETURN LEFT(SUBSTRING_INDEX(REPLACE(SUBSTRING_INDEX(REPLACE(path, \'\\\', \'/\'), \'/\', -1), \'@0024\', \'$\'), \'.\', 1), 64);\nEND','NONE'),('sys','format_bytes','FUNCTION','format_bytes','SQL','NO_SQL','YES','INVOKER','bytes TEXT\n    ','text CHARSET utf8mb3','BEGIN\n  IF bytes IS NULL THEN RETURN NULL;\n  ELSEIF bytes >= 1125899906842624 THEN RETURN CONCAT(ROUND(bytes / 1125899906842624, 2), \' PiB\');\n  ELSEIF bytes >= 1099511627776 THEN RETURN CONCAT(ROUND(bytes / 1099511627776, 2), \' TiB\');\n  ELSEIF bytes >= 1073741824 THEN RETURN CONCAT(ROUND(bytes / 1073741824, 2), \' GiB\');\n  ELSEIF bytes >= 1048576 THEN RETURN CONCAT(ROUND(bytes / 1048576, 2), \' MiB\');\n  ELSEIF bytes >= 1024 THEN RETURN CONCAT(ROUND(bytes / 1024, 2), \' KiB\');\n  ELSE RETURN CONCAT(ROUND(bytes, 0), \' bytes\');\n  END IF;\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Takes a raw bytes value, and converts it to a human readable format.\n             Parameters\n             bytes (TEXT):\n               A raw bytes value.\n             Returns\n             TEXT\n             Example\n             mysql> SELECT sys.format_bytes(2348723492723746) AS size;\n             +----------+\n             | size     |\n             +----------+\n             | 2.09 PiB |\n             +----------+\n             1 row in set (0.00 sec)\n             mysql> SELECT sys.format_bytes(2348723492723) AS size;\n             +----------+\n             | size     |\n             +----------+\n             | 2.14 TiB |\n             +----------+\n             1 row in set (0.00 sec)\n             mysql> SELECT sys.format_bytes(23487234) AS size;\n             +-----------+\n             | size      |\n             +-----------+\n             | 22.40 MiB |\n             +-----------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n  IF bytes IS NULL THEN RETURN NULL;\n  ELSEIF bytes >= 1125899906842624 THEN RETURN CONCAT(ROUND(bytes / 1125899906842624, 2), \' PiB\');\n  ELSEIF bytes >= 1099511627776 THEN RETURN CONCAT(ROUND(bytes / 1099511627776, 2), \' TiB\');\n  ELSEIF bytes >= 1073741824 THEN RETURN CONCAT(ROUND(bytes / 1073741824, 2), \' GiB\');\n  ELSEIF bytes >= 1048576 THEN RETURN CONCAT(ROUND(bytes / 1048576, 2), \' MiB\');\n  ELSEIF bytes >= 1024 THEN RETURN CONCAT(ROUND(bytes / 1024, 2), \' KiB\');\n  ELSE RETURN CONCAT(ROUND(bytes, 0), \' bytes\');\n  END IF;\nEND','NONE'),('sys','ps_thread_stack','FUNCTION','ps_thread_stack','SQL','READS_SQL_DATA','NO','INVOKER','thd_id BIGINT UNSIGNED,\n        debug BOOLEAN\n    ','longtext CHARSET latin1','BEGIN\n    DECLARE json_objects LONGTEXT;\n    \n    UPDATE performance_schema.threads\n       SET instrumented = \'NO\'\n     WHERE processlist_id = CONNECTION_ID();\n    \n    SET SESSION group_concat_max_len=@@global.max_allowed_packet;\n    SELECT GROUP_CONCAT(CONCAT( \'{\'\n              , CONCAT_WS( \', \'\n              , CONCAT(\'\"nesting_event_id\": \"\', IF(nesting_event_id IS NULL, \'0\', nesting_event_id), \'\"\')\n              , CONCAT(\'\"event_id\": \"\', event_id, \'\"\')\n              , CONCAT( \'\"timer_wait\": \', ROUND(timer_wait/1000000, 2))\n              , CONCAT( \'\"event_info\": \"\'\n                  , CASE\n                        WHEN event_name NOT LIKE \'wait/io%\' THEN REPLACE(SUBSTRING_INDEX(event_name, \'/\', -2), \'\\\\\', \'\\\\\\\\\')\n                        WHEN event_name NOT LIKE \'wait/io/file%\' OR event_name NOT LIKE \'wait/io/socket%\' THEN REPLACE(SUBSTRING_INDEX(event_name, \'/\', -4), \'\\\\\', \'\\\\\\\\\')\n                        ELSE event_name\n                    END\n                  , \'\"\'\n              )\n              , CONCAT( \'\"wait_info\": \"\', IFNULL(wait_info, \'\'), \'\"\')\n              , CONCAT( \'\"source\": \"\', IF(true AND event_name LIKE \'wait%\', IFNULL(wait_info, \'\'), \'\'), \'\"\')\n              , CASE\n                     WHEN event_name LIKE \'wait/io/file%\'      THEN \'\"event_type\": \"io/file\"\'\n                     WHEN event_name LIKE \'wait/io/table%\'     THEN \'\"event_type\": \"io/table\"\'\n                     WHEN event_name LIKE \'wait/io/socket%\'    THEN \'\"event_type\": \"io/socket\"\'\n                     WHEN event_name LIKE \'wait/synch/mutex%\'  THEN \'\"event_type\": \"synch/mutex\"\'\n                     WHEN event_name LIKE \'wait/synch/cond%\'   THEN \'\"event_type\": \"synch/cond\"\'\n                     WHEN event_name LIKE \'wait/synch/rwlock%\' THEN \'\"event_type\": \"synch/rwlock\"\'\n                     WHEN event_name LIKE \'wait/lock%\'         THEN \'\"event_type\": \"lock\"\'\n                     WHEN event_name LIKE \'statement/%\'        THEN \'\"event_type\": \"stmt\"\'\n                     WHEN event_name LIKE \'stage/%\'            THEN \'\"event_type\": \"stage\"\'\n                     WHEN event_name LIKE \'%idle%\'             THEN \'\"event_type\": \"idle\"\'\n                     ELSE \'\'\n                END\n            )\n            , \'}\'\n          )\n          ORDER BY event_id ASC SEPARATOR \',\') event\n    INTO json_objects\n    FROM (\n          \n          (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id,\n                  CONCAT(sql_text, \'\\\\n\',\n                         \'errors: \', errors, \'\\\\n\',\n                         \'warnings: \', warnings, \'\\\\n\',\n                         \'lock time: \', ROUND(lock_time/1000000, 2),\'us\\\\n\',\n                         \'rows affected: \', rows_affected, \'\\\\n\',\n                         \'rows sent: \', rows_sent, \'\\\\n\',\n                         \'rows examined: \', rows_examined, \'\\\\n\',\n                         \'tmp tables: \', created_tmp_tables, \'\\\\n\',\n                         \'tmp disk tables: \', created_tmp_disk_tables, \'\\\\n\',\n                         \'select scan: \', select_scan, \'\\\\n\',\n                         \'select full join: \', select_full_join, \'\\\\n\',\n                         \'select full range join: \', select_full_range_join, \'\\\\n\',\n                         \'select range: \', select_range, \'\\\\n\',\n                         \'select range check: \', select_range_check, \'\\\\n\',\n                         \'sort merge passes: \', sort_merge_passes, \'\\\\n\',\n                         \'sort rows: \', sort_rows, \'\\\\n\',\n                         \'sort range: \', sort_range, \'\\\\n\',\n                         \'sort scan: \', sort_scan, \'\\\\n\',\n                         \'no index used: \', IF(no_index_used, \'TRUE\', \'FALSE\'), \'\\\\n\',\n                         \'no good index used: \', IF(no_good_index_used, \'TRUE\', \'FALSE\'), \'\\\\n\'\n                         ) AS wait_info\n             FROM performance_schema.events_statements_history_long WHERE thread_id = thd_id)\n          UNION\n          (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, null AS wait_info\n             FROM performance_schema.events_stages_history_long WHERE thread_id = thd_id)\n          UNION \n          (SELECT thread_id, event_id,\n                  CONCAT(event_name ,\n                         IF(event_name NOT LIKE \'wait/synch/mutex%\', IFNULL(CONCAT(\' - \', operation), \'\'), \'\'),\n                         IF(number_of_bytes IS NOT NULL, CONCAT(\' \', number_of_bytes, \' bytes\'), \'\'),\n                         IF(event_name LIKE \'wait/io/file%\', \'\\\\n\', \'\'),\n                         IF(object_schema IS NOT NULL, CONCAT(\'\\\\nObject: \', object_schema, \'.\'), \'\'),\n                         IF(object_name IS NOT NULL,\n                            IF (event_name LIKE \'wait/io/socket%\',\n                                CONCAT(IF (object_name LIKE \':0%\', @@socket, object_name)),\n                                object_name),\n                            \'\'),\n                          IF(index_name IS NOT NULL, CONCAT(\' Index: \', index_name), \'\'),\'\\\\n\'\n                         ) AS event_name,\n                  timer_wait, timer_start, nesting_event_id, source AS wait_info\n             FROM performance_schema.events_waits_history_long WHERE thread_id = thd_id)) events\n    ORDER BY event_id;\n    RETURN CONCAT(\'{\',\n                  CONCAT_WS(\',\',\n                            \'\"rankdir\": \"LR\"\',\n                            \'\"nodesep\": \"0.10\"\',\n                            CONCAT(\'\"stack_created\": \"\', NOW(), \'\"\'),\n                            CONCAT(\'\"mysql_version\": \"\', VERSION(), \'\"\'),\n                            CONCAT(\'\"mysql_user\": \"\', CURRENT_USER(), \'\"\'),\n                            CONCAT(\'\"events\": [\', IFNULL(json_objects,\'\'), \']\')\n                           ),\n                  \'}\');\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Outputs a JSON formatted stack of all statements, stages and events\n             within Performance Schema for the specified thread.\n             Parameters\n             thd_id (BIGINT UNSIGNED):\n               The id of the thread to trace. This should match the thread_id\n               column from the performance_schema.threads table.\n             in_verbose (BOOLEAN):\n               Include file:lineno information in the events.\n             Example\n             (line separation added for output)\n             mysql> SELECT sys.ps_thread_stack(37, FALSE) AS thread_stack\\G\n             *************************** 1. row ***************************\n             thread_stack: {\"rankdir\": \"LR\",\"nodesep\": \"0.10\",\"stack_created\": \"2014-02-19 13:39:03\",\n             \"mysql_version\": \"5.7.3-m13\",\"mysql_user\": \"root@localhost\",\"events\":\n             [{\"nesting_event_id\": \"0\", \"event_id\": \"10\", \"timer_wait\": 256.35, \"event_info\":\n             \"sql/select\", \"wait_info\": \"select @@version_comment limit 1\\nerrors: 0\\nwarnings: 0\\nlock time:\n             ...\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    DECLARE json_objects LONGTEXT;\n    \n    UPDATE performance_schema.threads\n       SET instrumented = \'NO\'\n     WHERE processlist_id = CONNECTION_ID();\n    \n    SET SESSION group_concat_max_len=@@global.max_allowed_packet;\n    SELECT GROUP_CONCAT(CONCAT( \'{\'\n              , CONCAT_WS( \', \'\n              , CONCAT(\'\"nesting_event_id\": \"\', IF(nesting_event_id IS NULL, \'0\', nesting_event_id), \'\"\')\n              , CONCAT(\'\"event_id\": \"\', event_id, \'\"\')\n              , CONCAT( \'\"timer_wait\": \', ROUND(timer_wait/1000000, 2))\n              , CONCAT( \'\"event_info\": \"\'\n                  , CASE\n                        WHEN event_name NOT LIKE \'wait/io%\' THEN REPLACE(SUBSTRING_INDEX(event_name, \'/\', -2), \'\\\', \'\\\\\')\n                        WHEN event_name NOT LIKE \'wait/io/file%\' OR event_name NOT LIKE \'wait/io/socket%\' THEN REPLACE(SUBSTRING_INDEX(event_name, \'/\', -4), \'\\\', \'\\\\\')\n                        ELSE event_name\n                    END\n                  , \'\"\'\n              )\n              , CONCAT( \'\"wait_info\": \"\', IFNULL(wait_info, \'\'), \'\"\')\n              , CONCAT( \'\"source\": \"\', IF(true AND event_name LIKE \'wait%\', IFNULL(wait_info, \'\'), \'\'), \'\"\')\n              , CASE\n                     WHEN event_name LIKE \'wait/io/file%\'      THEN \'\"event_type\": \"io/file\"\'\n                     WHEN event_name LIKE \'wait/io/table%\'     THEN \'\"event_type\": \"io/table\"\'\n                     WHEN event_name LIKE \'wait/io/socket%\'    THEN \'\"event_type\": \"io/socket\"\'\n                     WHEN event_name LIKE \'wait/synch/mutex%\'  THEN \'\"event_type\": \"synch/mutex\"\'\n                     WHEN event_name LIKE \'wait/synch/cond%\'   THEN \'\"event_type\": \"synch/cond\"\'\n                     WHEN event_name LIKE \'wait/synch/rwlock%\' THEN \'\"event_type\": \"synch/rwlock\"\'\n                     WHEN event_name LIKE \'wait/lock%\'         THEN \'\"event_type\": \"lock\"\'\n                     WHEN event_name LIKE \'statement/%\'        THEN \'\"event_type\": \"stmt\"\'\n                     WHEN event_name LIKE \'stage/%\'            THEN \'\"event_type\": \"stage\"\'\n                     WHEN event_name LIKE \'%idle%\'             THEN \'\"event_type\": \"idle\"\'\n                     ELSE \'\'\n                END\n            )\n            , \'}\'\n          )\n          ORDER BY event_id ASC SEPARATOR \',\') event\n    INTO json_objects\n    FROM (\n          \n          (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id,\n                  CONCAT(sql_text, \'\\n\',\n                         \'errors: \', errors, \'\\n\',\n                         \'warnings: \', warnings, \'\\n\',\n                         \'lock time: \', ROUND(lock_time/1000000, 2),\'us\\n\',\n                         \'rows affected: \', rows_affected, \'\\n\',\n                         \'rows sent: \', rows_sent, \'\\n\',\n                         \'rows examined: \', rows_examined, \'\\n\',\n                         \'tmp tables: \', created_tmp_tables, \'\\n\',\n                         \'tmp disk tables: \', created_tmp_disk_tables, \'\\n\',\n                         \'select scan: \', select_scan, \'\\n\',\n                         \'select full join: \', select_full_join, \'\\n\',\n                         \'select full range join: \', select_full_range_join, \'\\n\',\n                         \'select range: \', select_range, \'\\n\',\n                         \'select range check: \', select_range_check, \'\\n\',\n                         \'sort merge passes: \', sort_merge_passes, \'\\n\',\n                         \'sort rows: \', sort_rows, \'\\n\',\n                         \'sort range: \', sort_range, \'\\n\',\n                         \'sort scan: \', sort_scan, \'\\n\',\n                         \'no index used: \', IF(no_index_used, \'TRUE\', \'FALSE\'), \'\\n\',\n                         \'no good index used: \', IF(no_good_index_used, \'TRUE\', \'FALSE\'), \'\\n\'\n                         ) AS wait_info\n             FROM performance_schema.events_statements_history_long WHERE thread_id = thd_id)\n          UNION\n          (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, null AS wait_info\n             FROM performance_schema.events_stages_history_long WHERE thread_id = thd_id)\n          UNION \n          (SELECT thread_id, event_id,\n                  CONCAT(event_name ,\n                         IF(event_name NOT LIKE \'wait/synch/mutex%\', IFNULL(CONCAT(\' - \', operation), \'\'), \'\'),\n                         IF(number_of_bytes IS NOT NULL, CONCAT(\' \', number_of_bytes, \' bytes\'), \'\'),\n                         IF(event_name LIKE \'wait/io/file%\', \'\\n\', \'\'),\n                         IF(object_schema IS NOT NULL, CONCAT(\'\\nObject: \', object_schema, \'.\'), \'\'),\n                         IF(object_name IS NOT NULL,\n                            IF (event_name LIKE \'wait/io/socket%\',\n                                CONCAT(IF (object_name LIKE \':0%\', @@socket, object_name)),\n                                object_name),\n                            \'\'),\n                          IF(index_name IS NOT NULL, CONCAT(\' Index: \', index_name), \'\'),\'\\n\'\n                         ) AS event_name,\n                  timer_wait, timer_start, nesting_event_id, source AS wait_info\n             FROM performance_schema.events_waits_history_long WHERE thread_id = thd_id)) events\n    ORDER BY event_id;\n    RETURN CONCAT(\'{\',\n                  CONCAT_WS(\',\',\n                            \'\"rankdir\": \"LR\"\',\n                            \'\"nodesep\": \"0.10\"\',\n                            CONCAT(\'\"stack_created\": \"\', NOW(), \'\"\'),\n                            CONCAT(\'\"mysql_version\": \"\', VERSION(), \'\"\'),\n                            CONCAT(\'\"mysql_user\": \"\', CURRENT_USER(), \'\"\'),\n                            CONCAT(\'\"events\": [\', IFNULL(json_objects,\'\'), \']\')\n                           ),\n                  \'}\');\nEND','NONE'),('sys','ps_thread_trx_info','FUNCTION','ps_thread_trx_info','SQL','READS_SQL_DATA','NO','INVOKER','in_thread_id BIGINT UNSIGNED\n    ','longtext CHARSET utf8mb3','BEGIN\n    DECLARE v_output LONGTEXT DEFAULT \'{}\';\n    DECLARE v_msg_text TEXT DEFAULT \'\';\n    DECLARE v_signal_msg TEXT DEFAULT \'\';\n    DECLARE v_mysql_errno INT;\n    DECLARE v_max_output_len BIGINT;\n    DECLARE EXIT HANDLER FOR SQLWARNING, SQLEXCEPTION\n    BEGIN\n        GET DIAGNOSTICS CONDITION 1\n            v_msg_text = MESSAGE_TEXT,\n            v_mysql_errno = MYSQL_ERRNO;\n        IF v_mysql_errno = 1260 THEN\n            SET v_signal_msg = CONCAT(\'{ \"error\": \"Trx info truncated: \', v_msg_text, \'\" }\');\n        ELSE\n            SET v_signal_msg = CONCAT(\'{ \"error\": \"\', v_msg_text, \'\" }\');\n        END IF;\n        RETURN v_signal_msg;\n    END;\n    IF (@sys.ps_thread_trx_info.max_length IS NULL) THEN\n        SET @sys.ps_thread_trx_info.max_length = sys.sys_get_config(\'ps_thread_trx_info.max_length\', 65535);\n    END IF;\n    IF (@sys.ps_thread_trx_info.max_length != @@session.group_concat_max_len) THEN\n        SET @old_group_concat_max_len = @@session.group_concat_max_len;\n        SET v_max_output_len = (@sys.ps_thread_trx_info.max_length - 5);\n        SET SESSION group_concat_max_len = v_max_output_len;\n    END IF;\n    SET v_output = (\n        SELECT CONCAT(\'[\', IFNULL(GROUP_CONCAT(trx_info ORDER BY event_id), \'\'), \'\\n]\') AS trx_info\n          FROM (SELECT trxi.thread_id,\n                       trxi.event_id,\n                       GROUP_CONCAT(\n                         IFNULL(\n                           CONCAT(\'\\n  {\\n\',\n                                  \'    \"time\": \"\', IFNULL(sys.format_time(trxi.timer_wait), \'\'), \'\",\\n\',\n                                  \'    \"state\": \"\', IFNULL(trxi.state, \'\'), \'\",\\n\',\n                                  \'    \"mode\": \"\', IFNULL(trxi.access_mode, \'\'), \'\",\\n\',\n                                  \'    \"autocommitted\": \"\', IFNULL(trxi.autocommit, \'\'), \'\",\\n\',\n                                  \'    \"gtid\": \"\', IFNULL(trxi.gtid, \'\'), \'\",\\n\',\n                                  \'    \"isolation\": \"\', IFNULL(trxi.isolation_level, \'\'), \'\",\\n\',\n                                  \'    \"statements_executed\": [\', IFNULL(s.stmts, \'\'), IF(s.stmts IS NULL, \' ]\\n\', \'\\n    ]\\n\'),\n                                  \'  }\'\n                           ),\n                           \'\')\n                         ORDER BY event_id) AS trx_info\n                  FROM (\n                        (SELECT thread_id, event_id, timer_wait, state,access_mode, autocommit, gtid, isolation_level\n                           FROM performance_schema.events_transactions_current\n                          WHERE thread_id = in_thread_id\n                            AND end_event_id IS NULL)\n                        UNION\n                        (SELECT thread_id, event_id, timer_wait, state,access_mode, autocommit, gtid, isolation_level\n                           FROM performance_schema.events_transactions_history\n                          WHERE thread_id = in_thread_id)\n                       ) AS trxi\n                  LEFT JOIN (SELECT thread_id,\n                                    nesting_event_id,\n                                    GROUP_CONCAT(\n                                      IFNULL(\n                                        CONCAT(\'\\n      {\\n\',\n                                               \'        \"sql_text\": \"\', IFNULL(sys.format_statement(REPLACE(sql_text, \'\\\\\', \'\\\\\\\\\')), \'\'), \'\",\\n\',\n                                               \'        \"time\": \"\', IFNULL(sys.format_time(timer_wait), \'\'), \'\",\\n\',\n                                               \'        \"schema\": \"\', IFNULL(current_schema, \'\'), \'\",\\n\',\n                                               \'        \"rows_examined\": \', IFNULL(rows_examined, \'\'), \',\\n\',\n                                               \'        \"rows_affected\": \', IFNULL(rows_affected, \'\'), \',\\n\',\n                                               \'        \"rows_sent\": \', IFNULL(rows_sent, \'\'), \',\\n\',\n                                               \'        \"tmp_tables\": \', IFNULL(created_tmp_tables, \'\'), \',\\n\',\n                                               \'        \"tmp_disk_tables\": \', IFNULL(created_tmp_disk_tables, \'\'), \',\\n\',\n                                               \'        \"sort_rows\": \', IFNULL(sort_rows, \'\'), \',\\n\',\n                                               \'        \"sort_merge_passes\": \', IFNULL(sort_merge_passes, \'\'), \'\\n\',\n                                               \'      }\'), \'\') ORDER BY event_id) AS stmts\n                               FROM performance_schema.events_statements_history\n                              WHERE sql_text IS NOT NULL\n                                AND thread_id = in_thread_id\n                              GROUP BY thread_id, nesting_event_id\n                            ) AS s\n                    ON trxi.thread_id = s.thread_id\n                   AND trxi.event_id = s.nesting_event_id\n                 WHERE trxi.thread_id = in_thread_id\n                 GROUP BY trxi.thread_id, trxi.event_id\n                ) trxs\n          GROUP BY thread_id\n    );\n    IF (@old_group_concat_max_len IS NOT NULL) THEN\n        SET SESSION group_concat_max_len = @old_group_concat_max_len;\n    END IF;\n    RETURN v_output;\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Returns a JSON object with info on the given threads current transaction,\n             and the statements it has already executed, derived from the\n             performance_schema.events_transactions_current and\n             performance_schema.events_statements_history tables (so the consumers\n             for these also have to be enabled within Performance Schema to get full\n             data in the object).\n             When the output exceeds the default truncation length (65535), a JSON error\n             object is returned, such as:\n             { \"error\": \"Trx info truncated: Row 6 was cut by GROUP_CONCAT()\" }\n             Similar error objects are returned for other warnings/and exceptions raised\n             when calling the function.\n             The max length of the output of this function can be controlled with the\n             ps_thread_trx_info.max_length variable set via sys_config, or the\n             @sys.ps_thread_trx_info.max_length user variable, as appropriate.\n             Parameters\n             in_thread_id (BIGINT UNSIGNED):\n               The id of the thread to return the transaction info for.\n             Example\n             SELECT sys.ps_thread_trx_info(48)\\G\n             *************************** 1. row ***************************\n             sys.ps_thread_trx_info(48): [\n               {\n                 \"time\": \"790.70 us\",\n                 \"state\": \"COMMITTED\",\n                 \"mode\": \"READ WRITE\",\n                 \"autocommitted\": \"NO\",\n                 \"gtid\": \"AUTOMATIC\",\n                 \"isolation\": \"REPEATABLE READ\",\n                 \"statements_executed\": [\n                   {\n                     \"sql_text\": \"INSERT INTO info VALUES (1, \'foo\')\",\n                     \"time\": \"471.02 us\",\n                     \"schema\": \"trx\",\n                     \"rows_examined\": 0,\n                     \"rows_affected\": 1,\n                     \"rows_sent\": 0,\n                     \"tmp_tables\": 0,\n                     \"tmp_disk_tables\": 0,\n                     \"sort_rows\": 0,\n                     \"sort_merge_passes\": 0\n                   },\n                   {\n                     \"sql_text\": \"COMMIT\",\n                     \"time\": \"254.42 us\",\n                     \"schema\": \"trx\",\n                     \"rows_examined\": 0,\n                     \"rows_affected\": 0,\n                     \"rows_sent\": 0,\n                     \"tmp_tables\": 0,\n                     \"tmp_disk_tables\": 0,\n                     \"sort_rows\": 0,\n                     \"sort_merge_passes\": 0\n                   }\n                 ]\n               },\n               {\n                 \"time\": \"426.20 us\",\n                 \"state\": \"COMMITTED\",\n                 \"mode\": \"READ WRITE\",\n                 \"autocommitted\": \"NO\",\n                 \"gtid\": \"AUTOMATIC\",\n                 \"isolation\": \"REPEATABLE READ\",\n                 \"statements_executed\": [\n                   {\n                     \"sql_text\": \"INSERT INTO info VALUES (2, \'bar\')\",\n                     \"time\": \"107.33 us\",\n                     \"schema\": \"trx\",\n                     \"rows_examined\": 0,\n                     \"rows_affected\": 1,\n                     \"rows_sent\": 0,\n                     \"tmp_tables\": 0,\n                     \"tmp_disk_tables\": 0,\n                     \"sort_rows\": 0,\n                     \"sort_merge_passes\": 0\n                   },\n                   {\n                     \"sql_text\": \"COMMIT\",\n                     \"time\": \"213.23 us\",\n                     \"schema\": \"trx\",\n                     \"rows_examined\": 0,\n                     \"rows_affected\": 0,\n                     \"rows_sent\": 0,\n                     \"tmp_tables\": 0,\n                     \"tmp_disk_tables\": 0,\n                     \"sort_rows\": 0,\n                     \"sort_merge_passes\": 0\n                   }\n                 ]\n               }\n             ]\n             1 row in set (0.03 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    DECLARE v_output LONGTEXT DEFAULT \'{}\';\n    DECLARE v_msg_text TEXT DEFAULT \'\';\n    DECLARE v_signal_msg TEXT DEFAULT \'\';\n    DECLARE v_mysql_errno INT;\n    DECLARE v_max_output_len BIGINT;\n    DECLARE EXIT HANDLER FOR SQLWARNING, SQLEXCEPTION\n    BEGIN\n        GET DIAGNOSTICS CONDITION 1\n            v_msg_text = MESSAGE_TEXT,\n            v_mysql_errno = MYSQL_ERRNO;\n        IF v_mysql_errno = 1260 THEN\n            SET v_signal_msg = CONCAT(\'{ \"error\": \"Trx info truncated: \', v_msg_text, \'\" }\');\n        ELSE\n            SET v_signal_msg = CONCAT(\'{ \"error\": \"\', v_msg_text, \'\" }\');\n        END IF;\n        RETURN v_signal_msg;\n    END;\n    IF (@sys.ps_thread_trx_info.max_length IS NULL) THEN\n        SET @sys.ps_thread_trx_info.max_length = sys.sys_get_config(\'ps_thread_trx_info.max_length\', 65535);\n    END IF;\n    IF (@sys.ps_thread_trx_info.max_length != @@session.group_concat_max_len) THEN\n        SET @old_group_concat_max_len = @@session.group_concat_max_len;\n        SET v_max_output_len = (@sys.ps_thread_trx_info.max_length - 5);\n        SET SESSION group_concat_max_len = v_max_output_len;\n    END IF;\n    SET v_output = (\n        SELECT CONCAT(\'[\', IFNULL(GROUP_CONCAT(trx_info ORDER BY event_id), \'\'), \'\\n]\') AS trx_info\n          FROM (SELECT trxi.thread_id,\n                       trxi.event_id,\n                       GROUP_CONCAT(\n                         IFNULL(\n                           CONCAT(\'\\n  {\\n\',\n                                  \'    \"time\": \"\', IFNULL(sys.format_time(trxi.timer_wait), \'\'), \'\",\\n\',\n                                  \'    \"state\": \"\', IFNULL(trxi.state, \'\'), \'\",\\n\',\n                                  \'    \"mode\": \"\', IFNULL(trxi.access_mode, \'\'), \'\",\\n\',\n                                  \'    \"autocommitted\": \"\', IFNULL(trxi.autocommit, \'\'), \'\",\\n\',\n                                  \'    \"gtid\": \"\', IFNULL(trxi.gtid, \'\'), \'\",\\n\',\n                                  \'    \"isolation\": \"\', IFNULL(trxi.isolation_level, \'\'), \'\",\\n\',\n                                  \'    \"statements_executed\": [\', IFNULL(s.stmts, \'\'), IF(s.stmts IS NULL, \' ]\\n\', \'\\n    ]\\n\'),\n                                  \'  }\'\n                           ),\n                           \'\')\n                         ORDER BY event_id) AS trx_info\n                  FROM (\n                        (SELECT thread_id, event_id, timer_wait, state,access_mode, autocommit, gtid, isolation_level\n                           FROM performance_schema.events_transactions_current\n                          WHERE thread_id = in_thread_id\n                            AND end_event_id IS NULL)\n                        UNION\n                        (SELECT thread_id, event_id, timer_wait, state,access_mode, autocommit, gtid, isolation_level\n                           FROM performance_schema.events_transactions_history\n                          WHERE thread_id = in_thread_id)\n                       ) AS trxi\n                  LEFT JOIN (SELECT thread_id,\n                                    nesting_event_id,\n                                    GROUP_CONCAT(\n                                      IFNULL(\n                                        CONCAT(\'\\n      {\\n\',\n                                               \'        \"sql_text\": \"\', IFNULL(sys.format_statement(REPLACE(sql_text, \'\\\', \'\\\\\')), \'\'), \'\",\\n\',\n                                               \'        \"time\": \"\', IFNULL(sys.format_time(timer_wait), \'\'), \'\",\\n\',\n                                               \'        \"schema\": \"\', IFNULL(current_schema, \'\'), \'\",\\n\',\n                                               \'        \"rows_examined\": \', IFNULL(rows_examined, \'\'), \',\\n\',\n                                               \'        \"rows_affected\": \', IFNULL(rows_affected, \'\'), \',\\n\',\n                                               \'        \"rows_sent\": \', IFNULL(rows_sent, \'\'), \',\\n\',\n                                               \'        \"tmp_tables\": \', IFNULL(created_tmp_tables, \'\'), \',\\n\',\n                                               \'        \"tmp_disk_tables\": \', IFNULL(created_tmp_disk_tables, \'\'), \',\\n\',\n                                               \'        \"sort_rows\": \', IFNULL(sort_rows, \'\'), \',\\n\',\n                                               \'        \"sort_merge_passes\": \', IFNULL(sort_merge_passes, \'\'), \'\\n\',\n                                               \'      }\'), \'\') ORDER BY event_id) AS stmts\n                               FROM performance_schema.events_statements_history\n                              WHERE sql_text IS NOT NULL\n                                AND thread_id = in_thread_id\n                              GROUP BY thread_id, nesting_event_id\n                            ) AS s\n                    ON trxi.thread_id = s.thread_id\n                   AND trxi.event_id = s.nesting_event_id\n                 WHERE trxi.thread_id = in_thread_id\n                 GROUP BY trxi.thread_id, trxi.event_id\n                ) trxs\n          GROUP BY thread_id\n    );\n    IF (@old_group_concat_max_len IS NOT NULL) THEN\n        SET SESSION group_concat_max_len = @old_group_concat_max_len;\n    END IF;\n    RETURN v_output;\nEND','NONE'),('sys','create_synonym_db','PROCEDURE','create_synonym_db','SQL','MODIFIES_SQL_DATA','NO','INVOKER','\n        IN in_db_name VARCHAR(64),\n        IN in_synonym VARCHAR(64)\n    ','','BEGIN\n    DECLARE v_done bool DEFAULT FALSE;\n    DECLARE v_db_name_check VARCHAR(64);\n    DECLARE v_db_err_msg TEXT;\n    DECLARE v_table VARCHAR(64);\n    DECLARE v_views_created INT DEFAULT 0;\n    DECLARE v_table_exists ENUM(\'\', \'BASE TABLE\', \'VIEW\', \'TEMPORARY\') DEFAULT \'\';\n    DECLARE v_temp_table TEXT;\n    DECLARE c_table_names CURSOR FOR\n        SELECT TABLE_NAME\n          FROM INFORMATION_SCHEMA.TABLES\n         WHERE TABLE_SCHEMA = in_db_name;\n    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;\n    SELECT SCHEMA_NAME INTO v_db_name_check\n      FROM INFORMATION_SCHEMA.SCHEMATA\n     WHERE SCHEMA_NAME = in_db_name;\n    IF v_db_name_check IS NULL THEN\n        SET v_db_err_msg = CONCAT(\'Unknown database \', in_db_name);\n        SIGNAL SQLSTATE \'HY000\'\n            SET MESSAGE_TEXT = v_db_err_msg;\n    END IF;\n    SELECT SCHEMA_NAME INTO v_db_name_check\n      FROM INFORMATION_SCHEMA.SCHEMATA\n     WHERE SCHEMA_NAME = in_synonym;\n    IF v_db_name_check = in_synonym THEN\n        SET v_db_err_msg = CONCAT(\'Can\\\'t create database \', in_synonym, \'; database exists\');\n        SIGNAL SQLSTATE \'HY000\'\n            SET MESSAGE_TEXT = v_db_err_msg;\n    END IF;\n    SET @create_db_stmt := CONCAT(\'CREATE DATABASE \', sys.quote_identifier(in_synonym));\n    PREPARE create_db_stmt FROM @create_db_stmt;\n    EXECUTE create_db_stmt;\n    DEALLOCATE PREPARE create_db_stmt;\n    SET v_done = FALSE;\n    OPEN c_table_names;\n    c_table_names: LOOP\n        FETCH c_table_names INTO v_table;\n        IF v_done THEN\n            LEAVE c_table_names;\n        END IF;\n        CALL sys.table_exists(in_db_name, v_table, v_table_exists);\n        IF (v_table_exists = \'TEMPORARY\') THEN\n            SET v_temp_table =\n            CONCAT(\n                \'Table\',\n                 sys.quote_identifier(in_db_name),\n                 \'.\',\n                 sys.quote_identifier(v_table),\n                 \'shadows base table. View cannot be created! Terminating!\');\n             SIGNAL SQLSTATE \'HY000\'\n                 SET MESSAGE_TEXT = v_temp_table;\n             LEAVE c_table_names;\n        END IF;\n        SET @create_view_stmt = CONCAT(\n            \'CREATE SQL SECURITY INVOKER VIEW \',\n            sys.quote_identifier(in_synonym),\n            \'.\',\n            sys.quote_identifier(v_table),\n            \' AS SELECT * FROM \',\n            sys.quote_identifier(in_db_name),\n            \'.\',\n            sys.quote_identifier(v_table)\n        );\n        PREPARE create_view_stmt FROM @create_view_stmt;\n        EXECUTE create_view_stmt;\n        DEALLOCATE PREPARE create_view_stmt;\n        SET v_views_created = v_views_created + 1;\n    END LOOP;\n    CLOSE c_table_names;\n    SELECT CONCAT(\n        \'Created \', v_views_created, \' view\',\n        IF(v_views_created != 1, \'s\', \'\'), \' in the \',\n        sys.quote_identifier(in_synonym), \' database\'\n    ) AS summary;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Takes a source database name and synonym name, and then creates the\n             synonym database with views that point to all of the tables within\n             the source database.\n             Useful for creating a \"ps\" synonym for \"performance_schema\",\n             or \"is\" instead of \"information_schema\", for example.\n             Parameters\n             in_db_name (VARCHAR(64)):\n               The database name that you would like to create a synonym for.\n             in_synonym (VARCHAR(64)):\n               The database synonym name.\n             Example\n             mysql> SHOW DATABASES;\n             +--------------------+\n             | Database           |\n             +--------------------+\n             | information_schema |\n             | mysql              |\n             | performance_schema |\n             | sys                |\n             | test               |\n             +--------------------+\n             5 rows in set (0.00 sec)\n             mysql> CALL sys.create_synonym_db(\'performance_schema\', \'ps\');\n             +---------------------------------------+\n             | summary                               |\n             +---------------------------------------+\n             | Created 74 views in the `ps` database |\n             +---------------------------------------+\n             1 row in set (8.57 sec)\n             Query OK, 0 rows affected (8.57 sec)\n             mysql> SHOW DATABASES;\n             +--------------------+\n             | Database           |\n             +--------------------+\n             | information_schema |\n             | mysql              |\n             | performance_schema |\n             | ps                 |\n             | sys                |\n             | test               |\n             +--------------------+\n             6 rows in set (0.00 sec)\n             mysql> SHOW FULL TABLES FROM ps;\n             +------------------------------------------------------+------------+\n             | Tables_in_ps                                         | Table_type |\n             +------------------------------------------------------+------------+\n             | accounts                                             | VIEW       |\n             | cond_instances                                       | VIEW       |\n             | events_stages_current                                | VIEW       |\n             | events_stages_history                                | VIEW       |\n             ...\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    DECLARE v_done bool DEFAULT FALSE;\n    DECLARE v_db_name_check VARCHAR(64);\n    DECLARE v_db_err_msg TEXT;\n    DECLARE v_table VARCHAR(64);\n    DECLARE v_views_created INT DEFAULT 0;\n    DECLARE v_table_exists ENUM(\'\', \'BASE TABLE\', \'VIEW\', \'TEMPORARY\') DEFAULT \'\';\n    DECLARE v_temp_table TEXT;\n    DECLARE c_table_names CURSOR FOR\n        SELECT TABLE_NAME\n          FROM INFORMATION_SCHEMA.TABLES\n         WHERE TABLE_SCHEMA = in_db_name;\n    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;\n    SELECT SCHEMA_NAME INTO v_db_name_check\n      FROM INFORMATION_SCHEMA.SCHEMATA\n     WHERE SCHEMA_NAME = in_db_name;\n    IF v_db_name_check IS NULL THEN\n        SET v_db_err_msg = CONCAT(\'Unknown database \', in_db_name);\n        SIGNAL SQLSTATE \'HY000\'\n            SET MESSAGE_TEXT = v_db_err_msg;\n    END IF;\n    SELECT SCHEMA_NAME INTO v_db_name_check\n      FROM INFORMATION_SCHEMA.SCHEMATA\n     WHERE SCHEMA_NAME = in_synonym;\n    IF v_db_name_check = in_synonym THEN\n        SET v_db_err_msg = CONCAT(\'Can\'\'t create database \', in_synonym, \'; database exists\');\n        SIGNAL SQLSTATE \'HY000\'\n            SET MESSAGE_TEXT = v_db_err_msg;\n    END IF;\n    SET @create_db_stmt := CONCAT(\'CREATE DATABASE \', sys.quote_identifier(in_synonym));\n    PREPARE create_db_stmt FROM @create_db_stmt;\n    EXECUTE create_db_stmt;\n    DEALLOCATE PREPARE create_db_stmt;\n    SET v_done = FALSE;\n    OPEN c_table_names;\n    c_table_names: LOOP\n        FETCH c_table_names INTO v_table;\n        IF v_done THEN\n            LEAVE c_table_names;\n        END IF;\n        CALL sys.table_exists(in_db_name, v_table, v_table_exists);\n        IF (v_table_exists = \'TEMPORARY\') THEN\n            SET v_temp_table =\n            CONCAT(\n                \'Table\',\n                 sys.quote_identifier(in_db_name),\n                 \'.\',\n                 sys.quote_identifier(v_table),\n                 \'shadows base table. View cannot be created! Terminating!\');\n             SIGNAL SQLSTATE \'HY000\'\n                 SET MESSAGE_TEXT = v_temp_table;\n             LEAVE c_table_names;\n        END IF;\n        SET @create_view_stmt = CONCAT(\n            \'CREATE SQL SECURITY INVOKER VIEW \',\n            sys.quote_identifier(in_synonym),\n            \'.\',\n            sys.quote_identifier(v_table),\n            \' AS SELECT * FROM \',\n            sys.quote_identifier(in_db_name),\n            \'.\',\n            sys.quote_identifier(v_table)\n        );\n        PREPARE create_view_stmt FROM @create_view_stmt;\n        EXECUTE create_view_stmt;\n        DEALLOCATE PREPARE create_view_stmt;\n        SET v_views_created = v_views_created + 1;\n    END LOOP;\n    CLOSE c_table_names;\n    SELECT CONCAT(\n        \'Created \', v_views_created, \' view\',\n        IF(v_views_created != 1, \'s\', \'\'), \' in the \',\n        sys.quote_identifier(in_synonym), \' database\'\n    ) AS summary;\nEND','NONE'),('sys','diagnostics','PROCEDURE','diagnostics','SQL','READS_SQL_DATA','NO','INVOKER','\n        IN in_max_runtime int unsigned, IN in_interval int unsigned,\n        IN in_auto_config enum (\'current\', \'medium\', \'full\')\n    ','','BEGIN\n    DECLARE v_start, v_runtime, v_iter_start, v_sleep DECIMAL(20,2) DEFAULT 0.0;\n    DECLARE v_has_innodb, v_has_ndb, v_has_ps, v_has_replication, v_has_ps_replication VARCHAR(8) CHARSET utf8 DEFAULT \'NO\';\n    DECLARE v_this_thread_enabled, v_has_ps_vars, v_has_metrics ENUM(\'YES\', \'NO\');\n    DECLARE v_table_name, v_banner VARCHAR(64) CHARSET utf8;\n    DECLARE v_sql_status_summary_select, v_sql_status_summary_delta, v_sql_status_summary_from, v_no_delta_names TEXT;\n    DECLARE v_output_time, v_output_time_prev DECIMAL(20,3) UNSIGNED;\n    DECLARE v_output_count, v_count, v_old_group_concat_max_len INT UNSIGNED DEFAULT 0;\n    DECLARE v_status_summary_width TINYINT UNSIGNED DEFAULT 50;\n    DECLARE v_done BOOLEAN DEFAULT FALSE;\n    DECLARE c_ndbinfo CURSOR FOR\n        SELECT TABLE_NAME\n          FROM information_schema.TABLES\n         WHERE TABLE_SCHEMA = \'ndbinfo\'\n               AND TABLE_NAME NOT IN (\n                  \'blocks\',\n                  \'config_params\',\n                  \'dict_obj_types\',\n                  \'disk_write_speed_base\',\n                  \'memory_per_fragment\',\n                  \'memoryusage\',\n                  \'operations_per_fragment\',\n                  \'threadblocks\'\n               );\n    DECLARE c_sysviews_w_delta CURSOR FOR\n        SELECT table_name\n          FROM tmp_sys_views_delta\n         ORDER BY table_name;\n    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;\n    SELECT INSTRUMENTED INTO v_this_thread_enabled FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();\n    IF (v_this_thread_enabled = \'YES\') THEN\n        CALL sys.ps_setup_disable_thread(CONNECTION_ID());\n    END IF;\n    IF (in_max_runtime < in_interval) THEN\n        SIGNAL SQLSTATE \'45000\'\n           SET MESSAGE_TEXT = \'in_max_runtime must be greater than or equal to in_interval\';\n    END IF;\n    IF (in_max_runtime = 0) THEN\n        SIGNAL SQLSTATE \'45000\'\n           SET MESSAGE_TEXT = \'in_max_runtime must be greater than 0\';\n    END IF;\n    IF (in_interval = 0) THEN\n        SIGNAL SQLSTATE \'45000\'\n           SET MESSAGE_TEXT = \'in_interval must be greater than 0\';\n    END IF;\n    IF (@sys.diagnostics.allow_i_s_tables IS NULL) THEN\n        SET @sys.diagnostics.allow_i_s_tables = sys.sys_get_config(\'diagnostics.allow_i_s_tables\', \'OFF\');\n    END IF;\n    IF (@sys.diagnostics.include_raw IS NULL) THEN\n        SET @sys.diagnostics.include_raw      = sys.sys_get_config(\'diagnostics.include_raw\'     , \'OFF\');\n    END IF;\n    IF (@sys.debug IS NULL) THEN\n        SET @sys.debug                        = sys.sys_get_config(\'debug\'                       , \'OFF\');\n    END IF;\n    IF (@sys.statement_truncate_len IS NULL) THEN\n        SET @sys.statement_truncate_len       = sys.sys_get_config(\'statement_truncate_len\'      , \'64\' );\n    END IF;\n    SET @log_bin := @@sql_log_bin;\n    IF (@log_bin = 1) THEN\n        SET sql_log_bin = 0;\n    END IF;\n    SET v_no_delta_names = CONCAT(\'s%{COUNT}.Variable_name NOT IN (\',\n        \'\'\'innodb_buffer_pool_pages_total\'\', \',\n        \'\'\'innodb_page_size\'\', \',\n        \'\'\'last_query_cost\'\', \',\n        \'\'\'last_query_partial_plans\'\', \',\n        \'\'\'qcache_total_blocks\'\', \',\n        \'\'\'slave_last_heartbeat\'\', \',\n        \'\'\'ssl_ctx_verify_depth\'\', \',\n        \'\'\'ssl_ctx_verify_mode\'\', \',\n        \'\'\'ssl_session_cache_size\'\', \',\n        \'\'\'ssl_verify_depth\'\', \',\n        \'\'\'ssl_verify_mode\'\', \',\n        \'\'\'ssl_version\'\', \',\n        \'\'\'buffer_flush_lsn_avg_rate\'\', \',\n        \'\'\'buffer_flush_pct_for_dirty\'\', \',\n        \'\'\'buffer_flush_pct_for_lsn\'\', \',\n        \'\'\'buffer_pool_pages_total\'\', \',\n        \'\'\'lock_row_lock_time_avg\'\', \',\n        \'\'\'lock_row_lock_time_max\'\', \',\n        \'\'\'innodb_page_size\'\'\',\n    \')\');\n    IF (in_auto_config <> \'current\') THEN\n        IF (@sys.debug = \'ON\') THEN\n            SELECT CONCAT(\'Updating Performance Schema configuration to \', in_auto_config) AS \'Debug\';\n        END IF;\n        CALL sys.ps_setup_save(0);\n        IF (in_auto_config = \'medium\') THEN\n            UPDATE performance_schema.setup_consumers\n                SET ENABLED = \'YES\'\n            WHERE NAME NOT LIKE \'%\\_history%\';\n            UPDATE performance_schema.setup_instruments\n                SET ENABLED = \'YES\',\n                    TIMED   = \'YES\'\n            WHERE NAME NOT LIKE \'wait/synch/%\';\n        ELSEIF (in_auto_config = \'full\') THEN\n            UPDATE performance_schema.setup_consumers\n                SET ENABLED = \'YES\';\n            UPDATE performance_schema.setup_instruments\n                SET ENABLED = \'YES\',\n                    TIMED   = \'YES\';\n        END IF;\n        UPDATE performance_schema.threads\n           SET INSTRUMENTED = \'YES\'\n         WHERE PROCESSLIST_ID <> CONNECTION_ID();\n    END IF;\n    SET v_start        = UNIX_TIMESTAMP(NOW(2)),\n        in_interval    = IFNULL(in_interval, 30),\n        in_max_runtime = IFNULL(in_max_runtime, 60);\n    SET v_banner = REPEAT(\n                      \'-\',\n                      LEAST(\n                         GREATEST(\n                            36,\n                            CHAR_LENGTH(VERSION()),\n                            CHAR_LENGTH(@@global.version_comment),\n                            CHAR_LENGTH(@@global.version_compile_os),\n                            CHAR_LENGTH(@@global.version_compile_machine),\n                            CHAR_LENGTH(@@global.socket),\n                            CHAR_LENGTH(@@global.datadir)\n                         ),\n                         64\n                      )\n                   );\n    SELECT \'Hostname\' AS \'Name\', @@global.hostname AS \'Value\'\n    UNION ALL\n    SELECT \'Port\' AS \'Name\', @@global.port AS \'Value\'\n    UNION ALL\n    SELECT \'Socket\' AS \'Name\', @@global.socket AS \'Value\'\n    UNION ALL\n    SELECT \'Datadir\' AS \'Name\', @@global.datadir AS \'Value\'\n    UNION ALL\n    SELECT REPEAT(\'-\', 23) AS \'Name\', v_banner AS \'Value\'\n    UNION ALL\n    SELECT \'MySQL Version\' AS \'Name\', VERSION() AS \'Value\'\n    UNION ALL\n    SELECT \'Sys Schema Version\' AS \'Name\', (SELECT sys_version FROM sys.version) AS \'Value\'\n    UNION ALL\n    SELECT \'Version Comment\' AS \'Name\', @@global.version_comment AS \'Value\'\n    UNION ALL\n    SELECT \'Version Compile OS\' AS \'Name\', @@global.version_compile_os AS \'Value\'\n    UNION ALL\n    SELECT \'Version Compile Machine\' AS \'Name\', @@global.version_compile_machine AS \'Value\'\n    UNION ALL\n    SELECT REPEAT(\'-\', 23) AS \'Name\', v_banner AS \'Value\'\n    UNION ALL\n    SELECT \'UTC Time\' AS \'Name\', UTC_TIMESTAMP() AS \'Value\'\n    UNION ALL\n    SELECT \'Local Time\' AS \'Name\', NOW() AS \'Value\'\n    UNION ALL\n    SELECT \'Time Zone\' AS \'Name\', @@global.time_zone AS \'Value\'\n    UNION ALL\n    SELECT \'System Time Zone\' AS \'Name\', @@global.system_time_zone AS \'Value\'\n    UNION ALL\n    SELECT \'Time Zone Offset\' AS \'Name\', TIMEDIFF(NOW(), UTC_TIMESTAMP()) AS \'Value\';\n    SET v_has_innodb         = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = \'InnoDB\'), \'NO\'),\n        v_has_ndb            = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = \'NDBCluster\'), \'NO\'),\n        v_has_ps             = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = \'PERFORMANCE_SCHEMA\'), \'NO\'),\n        v_has_ps_replication = IF(v_has_ps = \'YES\'\n                                   AND EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA = \'performance_schema\' AND TABLE_NAME = \'replication_applier_status\'),\n                                   \'YES\',\n                                   \'NO\'\n                               ),\n        v_has_replication    = \'MAYBE\',\n        v_has_metrics        = IF(v_has_ps = \'YES\' OR (sys.version_major() = 5 AND sys.version_minor() = 6), \'YES\', \'NO\'),\n        v_has_ps_vars        = \'NO\';\n    \n    \n    IF (@sys.debug = \'ON\') THEN\n       SELECT v_has_innodb AS \'Has_InnoDB\', v_has_ndb AS \'Has_NDBCluster\',\n              v_has_ps AS \'Has_Performance_Schema\', v_has_ps_vars AS \'Has_P_S_SHOW_Variables\',\n              v_has_metrics AS \'Has_metrics\',\n              v_has_ps_replication \'AS Has_P_S_Replication\', v_has_replication AS \'Has_Replication\';\n    END IF;\n    IF (v_has_innodb IN (\'DEFAULT\', \'YES\')) THEN\n        SET @sys.diagnostics.sql = \'SHOW ENGINE InnoDB STATUS\';\n        PREPARE stmt_innodb_status FROM @sys.diagnostics.sql;\n    END IF;\n    IF (v_has_ps = \'YES\') THEN\n        SET @sys.diagnostics.sql = \'SHOW ENGINE PERFORMANCE_SCHEMA STATUS\';\n        PREPARE stmt_ps_status FROM @sys.diagnostics.sql;\n    END IF;\n    IF (v_has_ndb IN (\'DEFAULT\', \'YES\')) THEN\n        SET @sys.diagnostics.sql = \'SHOW ENGINE NDBCLUSTER STATUS\';\n        PREPARE stmt_ndbcluster_status FROM @sys.diagnostics.sql;\n    END IF;\n    SET @sys.diagnostics.sql_gen_query_template = \'SELECT CONCAT(\n           \'\'SELECT \'\',\n           GROUP_CONCAT(\n               CASE WHEN (SUBSTRING(TABLE_NAME, 3), COLUMN_NAME) IN (\n                                (\'\'io_global_by_file_by_bytes\'\', \'\'total\'\'),\n                                (\'\'io_global_by_wait_by_bytes\'\', \'\'total_requested\'\')\n                         )\n                         THEN CONCAT(\'\'sys.format_bytes(\'\', COLUMN_NAME, \'\') AS \'\', COLUMN_NAME)\n                    WHEN SUBSTRING(COLUMN_NAME, -8) = \'\'_latency\'\'\n                         THEN CONCAT(\'\'sys.format_time(\'\', COLUMN_NAME, \'\') AS \'\', COLUMN_NAME)\n                    WHEN SUBSTRING(COLUMN_NAME, -7) = \'\'_memory\'\' OR SUBSTRING(COLUMN_NAME, -17) = \'\'_memory_allocated\'\'\n                         OR ((SUBSTRING(COLUMN_NAME, -5) = \'\'_read\'\' OR SUBSTRING(COLUMN_NAME, -8) = \'\'_written\'\' OR SUBSTRING(COLUMN_NAME, -6) = \'\'_write\'\') AND SUBSTRING(COLUMN_NAME, 1, 6) <> \'\'COUNT_\'\')\n                         THEN CONCAT(\'\'sys.format_bytes(\'\', COLUMN_NAME, \'\') AS \'\', COLUMN_NAME)\n                    ELSE COLUMN_NAME\n               END\n               ORDER BY ORDINAL_POSITION\n               SEPARATOR \'\',\\n       \'\'\n           ),\n           \'\'\\n  FROM tmp_\'\', SUBSTRING(TABLE_NAME FROM 3), \'\'_%{OUTPUT}\'\'\n       ) AS Query INTO @sys.diagnostics.sql_select\n  FROM information_schema.COLUMNS\n WHERE TABLE_SCHEMA = \'\'sys\'\' AND TABLE_NAME = ?\n GROUP BY TABLE_NAME\';\n    SET @sys.diagnostics.sql_gen_query_delta = \'SELECT CONCAT(\n           \'\'SELECT \'\',\n           GROUP_CONCAT(\n               CASE WHEN FIND_IN_SET(COLUMN_NAME, diag.pk)\n                         THEN COLUMN_NAME\n                    WHEN diag.TABLE_NAME = \'\'io_global_by_file_by_bytes\'\' AND COLUMN_NAME = \'\'write_pct\'\'\n                         THEN CONCAT(\'\'IFNULL(ROUND(100-(((e.total_read-IFNULL(s.total_read, 0))\'\',\n                                     \'\'/NULLIF(((e.total_read-IFNULL(s.total_read, 0))+(e.total_written-IFNULL(s.total_written, 0))), 0))*100), 2), 0.00) AS \'\',\n                                     COLUMN_NAME)\n                    WHEN (diag.TABLE_NAME, COLUMN_NAME) IN (\n                                (\'\'io_global_by_file_by_bytes\'\', \'\'total\'\'),\n                                (\'\'io_global_by_wait_by_bytes\'\', \'\'total_requested\'\')\n                         )\n                         THEN CONCAT(\'\'sys.format_bytes(e.\'\', COLUMN_NAME, \'\'-IFNULL(s.\'\', COLUMN_NAME, \'\', 0)) AS \'\', COLUMN_NAME)\n                    WHEN SUBSTRING(COLUMN_NAME, 1, 4) IN (\'\'max_\'\', \'\'min_\'\') AND SUBSTRING(COLUMN_NAME, -8) = \'\'_latency\'\'\n                         THEN CONCAT(\'\'sys.format_time(e.\'\', COLUMN_NAME, \'\') AS \'\', COLUMN_NAME)\n                    WHEN COLUMN_NAME = \'\'avg_latency\'\'\n                         THEN CONCAT(\'\'sys.format_time((e.total_latency - IFNULL(s.total_latency, 0))\'\',\n                                     \'\'/NULLIF(e.total - IFNULL(s.total, 0), 0)) AS \'\', COLUMN_NAME)\n                    WHEN SUBSTRING(COLUMN_NAME, -12) = \'\'_avg_latency\'\'\n                         THEN CONCAT(\'\'sys.format_time((e.\'\', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), \'\'_latency - IFNULL(s.\'\', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), \'\'_latency, 0))\'\',\n                                     \'\'/NULLIF(e.\'\', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), \'\'s - IFNULL(s.\'\', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), \'\'s, 0), 0)) AS \'\', COLUMN_NAME)\n                    WHEN SUBSTRING(COLUMN_NAME, -8) = \'\'_latency\'\'\n                         THEN CONCAT(\'\'sys.format_time(e.\'\', COLUMN_NAME, \'\' - IFNULL(s.\'\', COLUMN_NAME, \'\', 0)) AS \'\', COLUMN_NAME)\n                    WHEN COLUMN_NAME IN (\'\'avg_read\'\', \'\'avg_write\'\', \'\'avg_written\'\')\n                         THEN CONCAT(\'\'sys.format_bytes(IFNULL((e.total_\'\', IF(COLUMN_NAME = \'\'avg_read\'\', \'\'read\'\', \'\'written\'\'), \'\'-IFNULL(s.total_\'\', IF(COLUMN_NAME = \'\'avg_read\'\', \'\'read\'\', \'\'written\'\'), \'\', 0))\'\',\n                                     \'\'/NULLIF(e.count_\'\', IF(COLUMN_NAME = \'\'avg_read\'\', \'\'read\'\', \'\'write\'\'), \'\'-IFNULL(s.count_\'\', IF(COLUMN_NAME = \'\'avg_read\'\', \'\'read\'\', \'\'write\'\'), \'\', 0), 0), 0)) AS \'\',\n                                     COLUMN_NAME)\n                    WHEN SUBSTRING(COLUMN_NAME, -7) = \'\'_memory\'\' OR SUBSTRING(COLUMN_NAME, -17) = \'\'_memory_allocated\'\'\n                         OR ((SUBSTRING(COLUMN_NAME, -5) = \'\'_read\'\' OR SUBSTRING(COLUMN_NAME, -8) = \'\'_written\'\' OR SUBSTRING(COLUMN_NAME, -6) = \'\'_write\'\') AND SUBSTRING(COLUMN_NAME, 1, 6) <> \'\'COUNT_\'\')\n                         THEN CONCAT(\'\'sys.format_bytes(e.\'\', COLUMN_NAME, \'\' - IFNULL(s.\'\', COLUMN_NAME, \'\', 0)) AS \'\', COLUMN_NAME)\n                    ELSE CONCAT(\'\'(e.\'\', COLUMN_NAME, \'\' - IFNULL(s.\'\', COLUMN_NAME, \'\', 0)) AS \'\', COLUMN_NAME)\n               END\n               ORDER BY ORDINAL_POSITION\n               SEPARATOR \'\',\\n       \'\'\n           ),\n           \'\'\\n  FROM tmp_\'\', diag.TABLE_NAME, \'\'_end e\n       LEFT OUTER JOIN tmp_\'\', diag.TABLE_NAME, \'\'_start s USING (\'\', diag.pk, \'\')\'\'\n       ) AS Query INTO @sys.diagnostics.sql_select\n  FROM tmp_sys_views_delta diag\n       INNER JOIN information_schema.COLUMNS c ON c.TABLE_NAME = CONCAT(\'\'x$\'\', diag.TABLE_NAME)\n WHERE c.TABLE_SCHEMA = \'\'sys\'\' AND diag.TABLE_NAME = ?\n GROUP BY diag.TABLE_NAME\';\n    IF (v_has_ps = \'YES\') THEN\n        DROP TEMPORARY TABLE IF EXISTS tmp_sys_views_delta;\n        CREATE TEMPORARY TABLE tmp_sys_views_delta (\n            TABLE_NAME varchar(64) NOT NULL,\n            order_by text COMMENT \'ORDER BY clause for the initial and overall views\',\n            order_by_delta text COMMENT \'ORDER BY clause for the delta views\',\n            where_delta text COMMENT \'WHERE clause to use for delta views to only include rows with a \"count\" > 0\',\n            limit_rows int unsigned COMMENT \'The maximum number of rows to include for the view\',\n            pk varchar(128) COMMENT \'Used with the FIND_IN_SET() function so use comma separated list without whitespace\',\n            PRIMARY KEY (TABLE_NAME)\n        );\n        IF (@sys.debug = \'ON\') THEN\n            SELECT \'Populating tmp_sys_views_delta\' AS \'Debug\';\n        END IF;\n        INSERT INTO tmp_sys_views_delta\n        VALUES (\'host_summary\'                       , \'%{TABLE}.statement_latency DESC\',\n                                                       \'(e.statement_latency-IFNULL(s.statement_latency, 0)) DESC\',\n                                                       \'(e.statements - IFNULL(s.statements, 0)) > 0\', NULL, \'host\'),\n               (\'host_summary_by_file_io\'            , \'%{TABLE}.io_latency DESC\',\n                                                       \'(e.io_latency-IFNULL(s.io_latency, 0)) DESC\',\n                                                       \'(e.ios - IFNULL(s.ios, 0)) > 0\', NULL, \'host\'),\n               (\'host_summary_by_file_io_type\'       , \'%{TABLE}.host, %{TABLE}.total_latency DESC\',\n                                                       \'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'host,event_name\'),\n               (\'host_summary_by_stages\'             , \'%{TABLE}.host, %{TABLE}.total_latency DESC\',\n                                                       \'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'host,event_name\'),\n               (\'host_summary_by_statement_latency\'  , \'%{TABLE}.total_latency DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'host\'),\n               (\'host_summary_by_statement_type\'     , \'%{TABLE}.host, %{TABLE}.total_latency DESC\',\n                                                       \'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'host,statement\'),\n               (\'io_by_thread_by_latency\'            , \'%{TABLE}.total_latency DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'user,thread_id,processlist_id\'),\n               (\'io_global_by_file_by_bytes\'         , \'%{TABLE}.total DESC\',\n                                                       \'(e.total-IFNULL(s.total, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', 100, \'file\'),\n               (\'io_global_by_file_by_latency\'       , \'%{TABLE}.total_latency DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', 100, \'file\'),\n               (\'io_global_by_wait_by_bytes\'         , \'%{TABLE}.total_requested DESC\',\n                                                       \'(e.total_requested-IFNULL(s.total_requested, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'event_name\'),\n               (\'io_global_by_wait_by_latency\'       , \'%{TABLE}.total_latency DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'event_name\'),\n               (\'schema_index_statistics\'            , \'(%{TABLE}.select_latency+%{TABLE}.insert_latency+%{TABLE}.update_latency+%{TABLE}.delete_latency) DESC\',\n                                                       \'((e.select_latency+e.insert_latency+e.update_latency+e.delete_latency)-IFNULL(s.select_latency+s.insert_latency+s.update_latency+s.delete_latency, 0)) DESC\',\n                                                       \'((e.rows_selected+e.insert_latency+e.rows_updated+e.rows_deleted)-IFNULL(s.rows_selected+s.rows_inserted+s.rows_updated+s.rows_deleted, 0)) > 0\',\n                                                       100, \'table_schema,table_name,index_name\'),\n               (\'schema_table_statistics\'            , \'%{TABLE}.total_latency DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) > 0\', 100, \'table_schema,table_name\'),\n               (\'schema_tables_with_full_table_scans\', \'%{TABLE}.rows_full_scanned DESC\',\n                                                       \'(e.rows_full_scanned-IFNULL(s.rows_full_scanned, 0)) DESC\',\n                                                       \'(e.rows_full_scanned-IFNULL(s.rows_full_scanned, 0)) > 0\', 100, \'object_schema,object_name\'),\n               (\'user_summary\'                       , \'%{TABLE}.statement_latency DESC\',\n                                                       \'(e.statement_latency-IFNULL(s.statement_latency, 0)) DESC\',\n                                                       \'(e.statements - IFNULL(s.statements, 0)) > 0\', NULL, \'user\'),\n               (\'user_summary_by_file_io\'            , \'%{TABLE}.io_latency DESC\',\n                                                       \'(e.io_latency-IFNULL(s.io_latency, 0)) DESC\',\n                                                       \'(e.ios - IFNULL(s.ios, 0)) > 0\', NULL, \'user\'),\n               (\'user_summary_by_file_io_type\'       , \'%{TABLE}.user, %{TABLE}.latency DESC\',\n                                                       \'e.user, (e.latency-IFNULL(s.latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'user,event_name\'),\n               (\'user_summary_by_stages\'             , \'%{TABLE}.user, %{TABLE}.total_latency DESC\',\n                                                       \'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'user,event_name\'),\n               (\'user_summary_by_statement_latency\'  , \'%{TABLE}.total_latency DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'user\'),\n               (\'user_summary_by_statement_type\'     , \'%{TABLE}.user, %{TABLE}.total_latency DESC\',\n                                                       \'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'user,statement\'),\n               (\'wait_classes_global_by_avg_latency\' , \'IFNULL(%{TABLE}.total_latency / NULLIF(%{TABLE}.total, 0), 0) DESC\',\n                                                       \'IFNULL((e.total_latency-IFNULL(s.total_latency, 0)) / NULLIF((e.total - IFNULL(s.total, 0)), 0), 0) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'event_class\'),\n               (\'wait_classes_global_by_latency\'     , \'%{TABLE}.total_latency DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'event_class\'),\n               (\'waits_by_host_by_latency\'           , \'%{TABLE}.host, %{TABLE}.total_latency DESC\',\n                                                       \'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'host,event\'),\n               (\'waits_by_user_by_latency\'           , \'%{TABLE}.user, %{TABLE}.total_latency DESC\',\n                                                       \'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'user,event\'),\n               (\'waits_global_by_latency\'            , \'%{TABLE}.total_latency DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'events\')\n        ;\n    END IF;\n    SELECT \'\n=======================\n     Configuration\n=======================\n\' AS \'\';\n    SELECT \'GLOBAL VARIABLES\' AS \'The following output is:\';\n    IF (v_has_ps_vars = \'YES\') THEN\n        SELECT LOWER(VARIABLE_NAME) AS Variable_name, VARIABLE_VALUE AS Variable_value FROM performance_schema.global_variables ORDER BY VARIABLE_NAME;\n    ELSE\n        SELECT LOWER(VARIABLE_NAME) AS Variable_name, VARIABLE_VALUE AS Variable_value FROM information_schema.GLOBAL_VARIABLES ORDER BY VARIABLE_NAME;\n    END IF;\n    IF (v_has_ps = \'YES\') THEN\n        SELECT \'Performance Schema Setup - Actors\' AS \'The following output is:\';\n        SELECT * FROM performance_schema.setup_actors;\n        SELECT \'Performance Schema Setup - Consumers\' AS \'The following output is:\';\n        SELECT NAME AS Consumer, ENABLED, sys.ps_is_consumer_enabled(NAME) AS COLLECTS\n          FROM performance_schema.setup_consumers;\n        SELECT \'Performance Schema Setup - Instruments\' AS \'The following output is:\';\n        SELECT SUBSTRING_INDEX(NAME, \'/\', 2) AS \'InstrumentClass\',\n               ROUND(100*SUM(IF(ENABLED = \'YES\', 1, 0))/COUNT(*), 2) AS \'EnabledPct\',\n               ROUND(100*SUM(IF(TIMED = \'YES\', 1, 0))/COUNT(*), 2) AS \'TimedPct\'\n          FROM performance_schema.setup_instruments\n         GROUP BY SUBSTRING_INDEX(NAME, \'/\', 2)\n         ORDER BY SUBSTRING_INDEX(NAME, \'/\', 2);\n        SELECT \'Performance Schema Setup - Objects\' AS \'The following output is:\';\n        SELECT * FROM performance_schema.setup_objects;\n        SELECT \'Performance Schema Setup - Threads\' AS \'The following output is:\';\n        SELECT `TYPE` AS ThreadType, COUNT(*) AS \'Total\', ROUND(100*SUM(IF(INSTRUMENTED = \'YES\', 1, 0))/COUNT(*), 2) AS \'InstrumentedPct\'\n          FROM performance_schema.threads\n        GROUP BY TYPE;\n    END IF;\n    IF (v_has_replication = \'NO\') THEN\n        SELECT \'No Replication Configured\' AS \'Replication Status\';\n    ELSE\n        SELECT CONCAT(\'Replication Configured: \', v_has_replication, \' - Performance Schema Replication Tables: \', v_has_ps_replication) AS \'Replication Status\';\n        IF (v_has_ps_replication = \'YES\') THEN\n            SELECT \'Replication - Connection Configuration\' AS \'The following output is:\';\n            SELECT * FROM performance_schema.replication_connection_configuration;\n        END IF;\n        IF (v_has_ps_replication = \'YES\') THEN\n            SELECT \'Replication - Applier Configuration\' AS \'The following output is:\';\n            SELECT * FROM performance_schema.replication_applier_configuration ORDER BY CHANNEL_NAME;\n        END IF;\n    END IF;\n    IF (v_has_ndb IN (\'DEFAULT\', \'YES\')) THEN\n       SELECT \'Cluster Thread Blocks\' AS \'The following output is:\';\n       SELECT * FROM ndbinfo.threadblocks;\n    END IF;\n    IF (v_has_ps = \'YES\') THEN\n        IF (@sys.diagnostics.include_raw = \'ON\') THEN\n            SELECT \'\n========================\n     Initial Status\n========================\n\' AS \'\';\n        END IF;\n        DROP TEMPORARY TABLE IF EXISTS tmp_digests_start;\n        CALL sys.statement_performance_analyzer(\'create_tmp\', \'tmp_digests_start\', NULL);\n        CALL sys.statement_performance_analyzer(\'snapshot\', NULL, NULL);\n        CALL sys.statement_performance_analyzer(\'save\', \'tmp_digests_start\', NULL);\n        IF (@sys.diagnostics.include_raw = \'ON\') THEN\n            SET @sys.diagnostics.sql = REPLACE(@sys.diagnostics.sql_gen_query_template, \'%{OUTPUT}\', \'start\');\n            IF (@sys.debug = \'ON\') THEN\n                SELECT \'The following query will be used to generate the query for each sys view\' AS \'Debug\';\n                SELECT @sys.diagnostics.sql AS \'Debug\';\n            END IF;\n            PREPARE stmt_gen_query FROM @sys.diagnostics.sql;\n        END IF;\n        SET v_done = FALSE;\n        OPEN c_sysviews_w_delta;\n        c_sysviews_w_delta_loop: LOOP\n            FETCH c_sysviews_w_delta INTO v_table_name;\n            IF v_done THEN\n                LEAVE c_sysviews_w_delta_loop;\n            END IF;\n            IF (@sys.debug = \'ON\') THEN\n                SELECT CONCAT(\'The following queries are for storing the initial content of \', v_table_name) AS \'Debug\';\n            END IF;\n            CALL sys.execute_prepared_stmt(CONCAT(\'DROP TEMPORARY TABLE IF EXISTS `tmp_\', v_table_name, \'_start`\'));\n            CALL sys.execute_prepared_stmt(CONCAT(\'CREATE TEMPORARY TABLE `tmp_\', v_table_name, \'_start` SELECT * FROM `sys`.`x$\', v_table_name, \'`\'));\n            IF (@sys.diagnostics.include_raw = \'ON\') THEN\n                SET @sys.diagnostics.table_name = CONCAT(\'x$\', v_table_name);\n                EXECUTE stmt_gen_query USING @sys.diagnostics.table_name;\n                SELECT CONCAT(@sys.diagnostics.sql_select,\n                              IF(order_by IS NOT NULL, CONCAT(\'\\n ORDER BY \', REPLACE(order_by, \'%{TABLE}\', CONCAT(\'tmp_\', v_table_name, \'_start\'))), \'\'),\n                              IF(limit_rows IS NOT NULL, CONCAT(\'\\n LIMIT \', limit_rows), \'\')\n                       )\n                  INTO @sys.diagnostics.sql_select\n                  FROM tmp_sys_views_delta\n                 WHERE TABLE_NAME = v_table_name;\n                SELECT CONCAT(\'Initial \', v_table_name) AS \'The following output is:\';\n                CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);\n            END IF;\n        END LOOP;\n        CLOSE c_sysviews_w_delta;\n        IF (@sys.diagnostics.include_raw = \'ON\') THEN\n            DEALLOCATE PREPARE stmt_gen_query;\n        END IF;\n    END IF;\n    SET v_sql_status_summary_select = \'SELECT Variable_name\',\n        v_sql_status_summary_delta  = \'\',\n        v_sql_status_summary_from   = \'\';\n    REPEAT\n        SET v_output_count = v_output_count + 1;\n        IF (v_output_count > 1) THEN\n            SET v_sleep = in_interval-(UNIX_TIMESTAMP(NOW(2))-v_iter_start);\n            SELECT NOW() AS \'Time\', CONCAT(\'Going to sleep for \', v_sleep, \' seconds. Please do not interrupt\') AS \'The following output is:\';\n            DO SLEEP(in_interval);\n        END IF;\n        SET v_iter_start = UNIX_TIMESTAMP(NOW(2));\n        SELECT NOW(), CONCAT(\'Iteration Number \', IFNULL(v_output_count, \'NULL\')) AS \'The following output is:\';\n        IF (@@log_bin = 1) THEN\n            SELECT \'SHOW MASTER STATUS\' AS \'The following output is:\';\n            SHOW MASTER STATUS;\n        END IF;\n        IF (v_has_replication <> \'NO\') THEN\n            SELECT \'SHOW SLAVE STATUS\' AS \'The following output is:\';\n            SHOW SLAVE STATUS;\n        END IF;\n        SET v_table_name = CONCAT(\'tmp_metrics_\', v_output_count);\n        CALL sys.execute_prepared_stmt(CONCAT(\'DROP TEMPORARY TABLE IF EXISTS \', v_table_name));\n        CALL sys.execute_prepared_stmt(CONCAT(\'CREATE TEMPORARY TABLE \', v_table_name, \' (\n  Variable_name VARCHAR(193) NOT NULL,\n  Variable_value VARCHAR(1024),\n  Type VARCHAR(100) NOT NULL,\n  Enabled ENUM(\'\'YES\'\', \'\'NO\'\', \'\'PARTIAL\'\') NOT NULL,\n  PRIMARY KEY (Type, Variable_name)\n) ENGINE = InnoDB DEFAULT CHARSET=utf8\'));\n        IF (v_has_metrics) THEN\n            SET @sys.diagnostics.sql = CONCAT(\n                \'INSERT INTO \', v_table_name,\n                \' SELECT Variable_name, REPLACE(Variable_value, \'\'\\n\'\', \'\'\\\\\\\\n\'\') AS Variable_value, Type, Enabled FROM sys.metrics\'\n            );\n        ELSE\n            SET @sys.diagnostics.sql = CONCAT(\n                \'INSERT INTO \', v_table_name,\n                \'(SELECT LOWER(VARIABLE_NAME) AS Variable_name, REPLACE(VARIABLE_VALUE, \'\'\\n\'\', \'\'\\\\\\\\n\'\') AS Variable_value,\n                         \'\'Global Status\'\' AS Type, \'\'YES\'\' AS Enabled\n  FROM performance_schema.global_status\n) UNION ALL (\nSELECT NAME AS Variable_name, COUNT AS Variable_value,\n       CONCAT(\'\'InnoDB Metrics - \'\', SUBSYSTEM) AS Type,\n       IF(STATUS = \'\'enabled\'\', \'\'YES\'\', \'\'NO\'\') AS Enabled\n  FROM information_schema.INNODB_METRICS\n WHERE NAME NOT IN (\n     \'\'lock_row_lock_time\'\', \'\'lock_row_lock_time_avg\'\', \'\'lock_row_lock_time_max\'\', \'\'lock_row_lock_waits\'\',\n     \'\'buffer_pool_reads\'\', \'\'buffer_pool_read_requests\'\', \'\'buffer_pool_write_requests\'\', \'\'buffer_pool_wait_free\'\',\n     \'\'buffer_pool_read_ahead\'\', \'\'buffer_pool_read_ahead_evicted\'\', \'\'buffer_pool_pages_total\'\', \'\'buffer_pool_pages_misc\'\',\n     \'\'buffer_pool_pages_data\'\', \'\'buffer_pool_bytes_data\'\', \'\'buffer_pool_pages_dirty\'\', \'\'buffer_pool_bytes_dirty\'\',\n     \'\'buffer_pool_pages_free\'\', \'\'buffer_pages_created\'\', \'\'buffer_pages_written\'\', \'\'buffer_pages_read\'\',\n     \'\'buffer_data_reads\'\', \'\'buffer_data_written\'\', \'\'file_num_open_files\'\',\n     \'\'os_log_bytes_written\'\', \'\'os_log_fsyncs\'\', \'\'os_log_pending_fsyncs\'\', \'\'os_log_pending_writes\'\',\n     \'\'log_waits\'\', \'\'log_write_requests\'\', \'\'log_writes\'\', \'\'innodb_dblwr_writes\'\', \'\'innodb_dblwr_pages_written\'\', \'\'innodb_page_size\'\')\n) UNION ALL (\nSELECT \'\'NOW()\'\' AS Variable_name, NOW(3) AS Variable_value, \'\'System Time\'\' AS Type, \'\'YES\'\' AS Enabled\n) UNION ALL (\nSELECT \'\'UNIX_TIMESTAMP()\'\' AS Variable_name, ROUND(UNIX_TIMESTAMP(NOW(3)), 3) AS Variable_value, \'\'System Time\'\' AS Type, \'\'YES\'\' AS Enabled\n)\n ORDER BY Type, Variable_name;\'\n            );\n        END IF;\n        CALL sys.execute_prepared_stmt(@sys.diagnostics.sql);\n        CALL sys.execute_prepared_stmt(\n            CONCAT(\'SELECT Variable_value INTO @sys.diagnostics.output_time FROM \', v_table_name, \' WHERE Type = \'\'System Time\'\' AND Variable_name = \'\'UNIX_TIMESTAMP()\'\'\')\n        );\n        SET v_output_time = @sys.diagnostics.output_time;\n        SET v_sql_status_summary_select = CONCAT(v_sql_status_summary_select, \',\n       CONCAT(\n           LEFT(s\', v_output_count, \'.Variable_value, \', v_status_summary_width, \'),\n           IF(\', REPLACE(v_no_delta_names, \'%{COUNT}\', v_output_count), \' AND s\', v_output_count, \'.Variable_value REGEXP \'\'^[0-9]+(\\\\\\\\.[0-9]+)?$\'\', CONCAT(\'\' (\'\', ROUND(s\', v_output_count, \'.Variable_value/\', v_output_time, \', 2), \'\'/sec)\'\'), \'\'\'\')\n       ) AS \'\'Output \', v_output_count, \'\'\'\'),\n            v_sql_status_summary_from   = CONCAT(v_sql_status_summary_from, \'\n\',\n                                                    IF(v_output_count = 1, \'  FROM \', \'       INNER JOIN \'),\n                                                    v_table_name, \' s\', v_output_count,\n                                                    IF (v_output_count = 1, \'\', \' USING (Type, Variable_name)\'));\n        IF (v_output_count > 1) THEN\n            SET v_sql_status_summary_delta  = CONCAT(v_sql_status_summary_delta, \',\n       IF(\', REPLACE(v_no_delta_names, \'%{COUNT}\', v_output_count), \' AND s\', (v_output_count-1), \'.Variable_value REGEXP \'\'^[0-9]+(\\\\\\\\.[0-9]+)?$\'\' AND s\', v_output_count, \'.Variable_value REGEXP \'\'^[0-9]+(\\\\\\\\.[0-9]+)?$\'\',\n          CONCAT(IF(s\', (v_output_count-1), \'.Variable_value REGEXP \'\'^[0-9]+\\\\\\\\.[0-9]+$\'\' OR s\', v_output_count, \'.Variable_value REGEXP \'\'^[0-9]+\\\\\\\\.[0-9]+$\'\',\n                    ROUND((s\', v_output_count, \'.Variable_value-s\', (v_output_count-1), \'.Variable_value), 2),\n                    (s\', v_output_count, \'.Variable_value-s\', (v_output_count-1), \'.Variable_value)\n                   ),\n                 \'\' (\'\', ROUND((s\', v_output_count, \'.Variable_value-s\', (v_output_count-1), \'.Variable_value)/(\', v_output_time, \'-\', v_output_time_prev, \'), 2), \'\'/sec)\'\'\n          ),\n          \'\'\'\'\n       ) AS \'\'Delta (\', (v_output_count-1), \' -> \', v_output_count, \')\'\'\');\n        END IF;\n        SET v_output_time_prev = v_output_time;\n        IF (@sys.diagnostics.include_raw = \'ON\') THEN\n            IF (v_has_metrics) THEN\n                SELECT \'SELECT * FROM sys.metrics\' AS \'The following output is:\';\n            ELSE\n                SELECT \'sys.metrics equivalent\' AS \'The following output is:\';\n            END IF;\n            CALL sys.execute_prepared_stmt(CONCAT(\'SELECT Type, Variable_name, Enabled, Variable_value FROM \', v_table_name, \' ORDER BY Type, Variable_name\'));\n        END IF;\n        IF (v_has_innodb IN (\'DEFAULT\', \'YES\')) THEN\n            SELECT \'SHOW ENGINE INNODB STATUS\' AS \'The following output is:\';\n            EXECUTE stmt_innodb_status;\n            SELECT \'InnoDB - Transactions\' AS \'The following output is:\';\n            SELECT * FROM information_schema.INNODB_TRX;\n        END IF;\n        IF (v_has_ndb IN (\'DEFAULT\', \'YES\')) THEN\n            SELECT \'SHOW ENGINE NDBCLUSTER STATUS\' AS \'The following output is:\';\n            EXECUTE stmt_ndbcluster_status;\n            SELECT \'ndbinfo.memoryusage\' AS \'The following output is:\';\n            SELECT node_id, memory_type, sys.format_bytes(used) AS used, used_pages, sys.format_bytes(total) AS total, total_pages,\n                   ROUND(100*(used/total), 2) AS \'Used %\'\n            FROM ndbinfo.memoryusage;\n            SET v_done = FALSE;\n            OPEN c_ndbinfo;\n            c_ndbinfo_loop: LOOP\n                FETCH c_ndbinfo INTO v_table_name;\n                IF v_done THEN\n                LEAVE c_ndbinfo_loop;\n                END IF;\n                SELECT CONCAT(\'SELECT * FROM ndbinfo.\', v_table_name) AS \'The following output is:\';\n                CALL sys.execute_prepared_stmt(CONCAT(\'SELECT * FROM `ndbinfo`.`\', v_table_name, \'`\'));\n            END LOOP;\n            CLOSE c_ndbinfo;\n            SELECT * FROM information_schema.FILES;\n        END IF;\n        SELECT \'SELECT * FROM sys.processlist\' AS \'The following output is:\';\n        SELECT processlist.* FROM sys.processlist;\n        IF (v_has_ps = \'YES\') THEN\n            IF (sys.ps_is_consumer_enabled(\'events_waits_history_long\') = \'YES\') THEN\n                SELECT \'SELECT * FROM sys.latest_file_io\' AS \'The following output is:\';\n                SELECT * FROM sys.latest_file_io;\n            END IF;\n            IF (EXISTS(SELECT 1 FROM performance_schema.setup_instruments WHERE NAME LIKE \'memory/%\' AND ENABLED = \'YES\')) THEN\n                SELECT \'SELECT * FROM sys.memory_by_host_by_current_bytes\' AS \'The following output is:\';\n                SELECT * FROM sys.memory_by_host_by_current_bytes;\n                SELECT \'SELECT * FROM sys.memory_by_thread_by_current_bytes\' AS \'The following output is:\';\n                SELECT * FROM sys.memory_by_thread_by_current_bytes;\n                SELECT \'SELECT * FROM sys.memory_by_user_by_current_bytes\' AS \'The following output is:\';\n                SELECT * FROM sys.memory_by_user_by_current_bytes;\n                SELECT \'SELECT * FROM sys.memory_global_by_current_bytes\' AS \'The following output is:\';\n                SELECT * FROM sys.memory_global_by_current_bytes;\n            END IF;\n        END IF;\n        SET v_runtime = (UNIX_TIMESTAMP(NOW(2)) - v_start);\n    UNTIL (v_runtime + in_interval >= in_max_runtime) END REPEAT;\n    IF (v_has_ps = \'YES\') THEN\n        SELECT \'SHOW ENGINE PERFORMANCE_SCHEMA STATUS\' AS \'The following output is:\';\n        EXECUTE stmt_ps_status;\n    END IF;\n    IF (v_has_innodb IN (\'DEFAULT\', \'YES\')) THEN\n        DEALLOCATE PREPARE stmt_innodb_status;\n    END IF;\n    IF (v_has_ps = \'YES\') THEN\n        DEALLOCATE PREPARE stmt_ps_status;\n    END IF;\n    IF (v_has_ndb IN (\'DEFAULT\', \'YES\')) THEN\n        DEALLOCATE PREPARE stmt_ndbcluster_status;\n    END IF;\n    SELECT \'\n============================\n     Schema Information\n============================\n\' AS \'\';\n    SELECT COUNT(*) AS \'Total Number of Tables\' FROM information_schema.TABLES;\n    IF (@sys.diagnostics.allow_i_s_tables = \'ON\') THEN\n        SELECT \'Storage Engine Usage\' AS \'The following output is:\';\n        SELECT ENGINE, COUNT(*) AS NUM_TABLES,\n                sys.format_bytes(SUM(DATA_LENGTH)) AS DATA_LENGTH,\n                sys.format_bytes(SUM(INDEX_LENGTH)) AS INDEX_LENGTH,\n                sys.format_bytes(SUM(DATA_LENGTH+INDEX_LENGTH)) AS TOTAL\n            FROM information_schema.TABLES\n            GROUP BY ENGINE;\n        SELECT \'Schema Object Overview\' AS \'The following output is:\';\n        SELECT * FROM sys.schema_object_overview;\n        SELECT \'Tables without a PRIMARY KEY\' AS \'The following output is:\';\n        SELECT TABLES.TABLE_SCHEMA, ENGINE, COUNT(*) AS NumTables\n          FROM information_schema.TABLES\n               LEFT OUTER JOIN information_schema.STATISTICS ON STATISTICS.TABLE_SCHEMA = TABLES.TABLE_SCHEMA\n                                                                AND STATISTICS.TABLE_NAME = TABLES.TABLE_NAME\n                                                                AND STATISTICS.INDEX_NAME = \'PRIMARY\'\n         WHERE STATISTICS.TABLE_NAME IS NULL\n               AND TABLES.TABLE_SCHEMA NOT IN (\'mysql\', \'information_schema\', \'performance_schema\', \'sys\')\n               AND TABLES.TABLE_TYPE = \'BASE TABLE\'\n         GROUP BY TABLES.TABLE_SCHEMA, ENGINE;\n    END IF;\n    IF (v_has_ps = \'YES\') THEN\n        SELECT \'Unused Indexes\' AS \'The following output is:\';\n        SELECT object_schema, COUNT(*) AS NumUnusedIndexes\n          FROM performance_schema.table_io_waits_summary_by_index_usage\n         WHERE index_name IS NOT NULL\n               AND count_star = 0\n               AND object_schema NOT IN (\'mysql\', \'sys\')\n               AND index_name != \'PRIMARY\'\n         GROUP BY object_schema;\n    END IF;\n    IF (v_has_ps = \'YES\') THEN\n        SELECT \'\n=========================\n     Overall Status\n=========================\n\' AS \'\';\n        SELECT \'CALL sys.ps_statement_avg_latency_histogram()\' AS \'The following output is:\';\n        CALL sys.ps_statement_avg_latency_histogram();\n        CALL sys.statement_performance_analyzer(\'snapshot\', NULL, NULL);\n        CALL sys.statement_performance_analyzer(\'overall\', NULL, \'with_runtimes_in_95th_percentile\');\n        SET @sys.diagnostics.sql = REPLACE(@sys.diagnostics.sql_gen_query_template, \'%{OUTPUT}\', \'end\');\n        IF (@sys.debug = \'ON\') THEN\n            SELECT \'The following query will be used to generate the query for each sys view\' AS \'Debug\';\n            SELECT @sys.diagnostics.sql AS \'Debug\';\n        END IF;\n        PREPARE stmt_gen_query FROM @sys.diagnostics.sql;\n        SET v_done = FALSE;\n        OPEN c_sysviews_w_delta;\n        c_sysviews_w_delta_loop: LOOP\n            FETCH c_sysviews_w_delta INTO v_table_name;\n            IF v_done THEN\n                LEAVE c_sysviews_w_delta_loop;\n            END IF;\n            IF (@sys.debug = \'ON\') THEN\n                SELECT CONCAT(\'The following queries are for storing the final content of \', v_table_name) AS \'Debug\';\n            END IF;\n            CALL sys.execute_prepared_stmt(CONCAT(\'DROP TEMPORARY TABLE IF EXISTS `tmp_\', v_table_name, \'_end`\'));\n            CALL sys.execute_prepared_stmt(CONCAT(\'CREATE TEMPORARY TABLE `tmp_\', v_table_name, \'_end` SELECT * FROM `sys`.`x$\', v_table_name, \'`\'));\n            IF (@sys.diagnostics.include_raw = \'ON\') THEN\n                SET @sys.diagnostics.table_name = CONCAT(\'x$\', v_table_name);\n                EXECUTE stmt_gen_query USING @sys.diagnostics.table_name;\n                SELECT CONCAT(@sys.diagnostics.sql_select,\n                                IF(order_by IS NOT NULL, CONCAT(\'\\n ORDER BY \', REPLACE(order_by, \'%{TABLE}\', CONCAT(\'tmp_\', v_table_name, \'_end\'))), \'\'),\n                                IF(limit_rows IS NOT NULL, CONCAT(\'\\n LIMIT \', limit_rows), \'\')\n                        )\n                    INTO @sys.diagnostics.sql_select\n                    FROM tmp_sys_views_delta\n                    WHERE TABLE_NAME = v_table_name;\n                SELECT CONCAT(\'Overall \', v_table_name) AS \'The following output is:\';\n                CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);\n            END IF;\n        END LOOP;\n        CLOSE c_sysviews_w_delta;\n        DEALLOCATE PREPARE stmt_gen_query;\n        SELECT \'\n======================\n     Delta Status\n======================\n\' AS \'\';\n        CALL sys.statement_performance_analyzer(\'delta\', \'tmp_digests_start\', \'with_runtimes_in_95th_percentile\');\n        CALL sys.statement_performance_analyzer(\'cleanup\', NULL, NULL);\n        DROP TEMPORARY TABLE tmp_digests_start;\n        IF (@sys.debug = \'ON\') THEN\n            SELECT \'The following query will be used to generate the query for each sys view delta\' AS \'Debug\';\n            SELECT @sys.diagnostics.sql_gen_query_delta AS \'Debug\';\n        END IF;\n        PREPARE stmt_gen_query_delta FROM @sys.diagnostics.sql_gen_query_delta;\n        SET v_old_group_concat_max_len = @@session.group_concat_max_len;\n        SET @@session.group_concat_max_len = 2048;\n        SET v_done = FALSE;\n        OPEN c_sysviews_w_delta;\n        c_sysviews_w_delta_loop: LOOP\n            FETCH c_sysviews_w_delta INTO v_table_name;\n            IF v_done THEN\n                LEAVE c_sysviews_w_delta_loop;\n            END IF;\n            SET @sys.diagnostics.table_name = v_table_name;\n            EXECUTE stmt_gen_query_delta USING @sys.diagnostics.table_name;\n            SELECT CONCAT(@sys.diagnostics.sql_select,\n                            IF(where_delta IS NOT NULL, CONCAT(\'\\n WHERE \', where_delta), \'\'),\n                            IF(order_by_delta IS NOT NULL, CONCAT(\'\\n ORDER BY \', order_by_delta), \'\'),\n                            IF(limit_rows IS NOT NULL, CONCAT(\'\\n LIMIT \', limit_rows), \'\')\n                    )\n                INTO @sys.diagnostics.sql_select\n                FROM tmp_sys_views_delta\n                WHERE TABLE_NAME = v_table_name;\n            SELECT CONCAT(\'Delta \', v_table_name) AS \'The following output is:\';\n            CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);\n            CALL sys.execute_prepared_stmt(CONCAT(\'DROP TEMPORARY TABLE `tmp_\', v_table_name, \'_end`\'));\n            CALL sys.execute_prepared_stmt(CONCAT(\'DROP TEMPORARY TABLE `tmp_\', v_table_name, \'_start`\'));\n        END LOOP;\n        CLOSE c_sysviews_w_delta;\n        SET @@session.group_concat_max_len = v_old_group_concat_max_len;\n        DEALLOCATE PREPARE stmt_gen_query_delta;\n        DROP TEMPORARY TABLE tmp_sys_views_delta;\n    END IF;\n    IF (v_has_metrics) THEN\n        SELECT \'SELECT * FROM sys.metrics\' AS \'The following output is:\';\n    ELSE\n        SELECT \'sys.metrics equivalent\' AS \'The following output is:\';\n    END IF;\n    CALL sys.execute_prepared_stmt(\n        CONCAT(v_sql_status_summary_select, v_sql_status_summary_delta, \', Type, s1.Enabled\', v_sql_status_summary_from,\n               \'\n ORDER BY Type, Variable_name\'\n        )\n    );\n    SET v_count = 0;\n    WHILE (v_count < v_output_count) DO\n        SET v_count = v_count + 1;\n        SET v_table_name = CONCAT(\'tmp_metrics_\', v_count);\n        CALL sys.execute_prepared_stmt(CONCAT(\'DROP TEMPORARY TABLE IF EXISTS \', v_table_name));\n    END WHILE;\n    IF (in_auto_config <> \'current\') THEN\n        CALL sys.ps_setup_reload_saved();\n        SET sql_log_bin = @log_bin;\n    END IF;\n    SET @sys.diagnostics.output_time            = NULL,\n        @sys.diagnostics.sql                    = NULL,\n        @sys.diagnostics.sql_gen_query_delta    = NULL,\n        @sys.diagnostics.sql_gen_query_template = NULL,\n        @sys.diagnostics.sql_select             = NULL,\n        @sys.diagnostics.table_name             = NULL;\n    IF (v_this_thread_enabled = \'YES\') THEN\n        CALL sys.ps_setup_enable_thread(CONNECTION_ID());\n    END IF;\n    IF (@log_bin = 1) THEN\n        SET sql_log_bin = @log_bin;\n    END IF;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Create a report of the current status of the server for diagnostics purposes. Data collected includes (some items depends on versions and settings):\n                * The GLOBAL VARIABLES\n                * Several sys schema views including metrics or equivalent (depending on version and settings)\n                * Queries in the 95th percentile\n                * Several ndbinfo views for MySQL Cluster\n                * Replication (both master and slave) information.\n             Some of the sys schema views are calculated as initial (optional), overall, delta:\n                * The initial view is the content of the view at the start of this procedure.\n                  This output will be the same as the the start values used for the delta view.\n                  The initial view is included if @sys.diagnostics.include_raw = \'ON\'.\n                * The overall view is the content of the view at the end of this procedure.\n                  This output is the same as the end values used for the delta view.\n                  The overall view is always included.\n                * The delta view is the difference from the beginning to the end. Note that for min and max values\n                  they are simply the min or max value from the end view respectively, so does not necessarily reflect\n                  the minimum/maximum value in the monitored period.\n                  Note: except for the metrics views the delta is only calculation between the first and last outputs.\n             Requires the SUPER privilege for \"SET sql_log_bin = 0;\".\n             Versions supported:\n                * MySQL 5.6: 5.6.10 and later\n                * MySQL 5.7: 5.7.9 and later\n             Parameters\n             in_max_runtime (INT UNSIGNED):\n               The maximum time to keep collecting data.\n               Use NULL to get the default which is 60 seconds, otherwise enter a value greater than 0.\n             in_interval (INT UNSIGNED):\n               How long to sleep between data collections.\n               Use NULL to get the default which is 30 seconds, otherwise enter a value greater than 0.\n             in_auto_config (ENUM(\'current\', \'medium\', \'full\'))\n               Automatically enable Performance Schema instruments and consumers.\n               NOTE: The more that are enabled, the more impact on the performance.\n               Supported values are:\n                  * current - use the current settings.\n                  * medium - enable some settings.\n                  * full - enables all settings. This will have a big impact on the\n                           performance - be careful using this option.\n               If another setting the \'current\' is chosen, the current settings\n               are restored at the end of the procedure.\n             Configuration Options\n             sys.diagnostics.allow_i_s_tables\n               Specifies whether it is allowed to do table scan queries on information_schema.TABLES. This can be expensive if there\n               are many tables. Set to \'ON\' to allow, \'OFF\' to not allow.\n               Default is \'OFF\'.\n             sys.diagnostics.include_raw\n               Set to \'ON\' to include the raw data (e.g. the original output of \"SELECT * FROM sys.metrics\").\n               Use this to get the initial values of the various views.\n               Default is \'OFF\'.\n             sys.statement_truncate_len\n               How much of queries in the process list output to include.\n               Default is 64.\n             sys.debug\n               Whether to provide debugging output.\n               Default is \'OFF\'. Set to \'ON\' to include.\n             Example\n             To create a report and append it to the file diag.out:\n             mysql> TEE diag.out;\n             mysql> CALL sys.diagnostics(120, 30, \'current\');\n             ...\n             mysql> NOTEE;\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    DECLARE v_start, v_runtime, v_iter_start, v_sleep DECIMAL(20,2) DEFAULT 0.0;\n    DECLARE v_has_innodb, v_has_ndb, v_has_ps, v_has_replication, v_has_ps_replication VARCHAR(8) CHARSET utf8 DEFAULT \'NO\';\n    DECLARE v_this_thread_enabled, v_has_ps_vars, v_has_metrics ENUM(\'YES\', \'NO\');\n    DECLARE v_table_name, v_banner VARCHAR(64) CHARSET utf8;\n    DECLARE v_sql_status_summary_select, v_sql_status_summary_delta, v_sql_status_summary_from, v_no_delta_names TEXT;\n    DECLARE v_output_time, v_output_time_prev DECIMAL(20,3) UNSIGNED;\n    DECLARE v_output_count, v_count, v_old_group_concat_max_len INT UNSIGNED DEFAULT 0;\n    DECLARE v_status_summary_width TINYINT UNSIGNED DEFAULT 50;\n    DECLARE v_done BOOLEAN DEFAULT FALSE;\n    DECLARE c_ndbinfo CURSOR FOR\n        SELECT TABLE_NAME\n          FROM information_schema.TABLES\n         WHERE TABLE_SCHEMA = \'ndbinfo\'\n               AND TABLE_NAME NOT IN (\n                  \'blocks\',\n                  \'config_params\',\n                  \'dict_obj_types\',\n                  \'disk_write_speed_base\',\n                  \'memory_per_fragment\',\n                  \'memoryusage\',\n                  \'operations_per_fragment\',\n                  \'threadblocks\'\n               );\n    DECLARE c_sysviews_w_delta CURSOR FOR\n        SELECT table_name\n          FROM tmp_sys_views_delta\n         ORDER BY table_name;\n    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;\n    SELECT INSTRUMENTED INTO v_this_thread_enabled FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();\n    IF (v_this_thread_enabled = \'YES\') THEN\n        CALL sys.ps_setup_disable_thread(CONNECTION_ID());\n    END IF;\n    IF (in_max_runtime < in_interval) THEN\n        SIGNAL SQLSTATE \'45000\'\n           SET MESSAGE_TEXT = \'in_max_runtime must be greater than or equal to in_interval\';\n    END IF;\n    IF (in_max_runtime = 0) THEN\n        SIGNAL SQLSTATE \'45000\'\n           SET MESSAGE_TEXT = \'in_max_runtime must be greater than 0\';\n    END IF;\n    IF (in_interval = 0) THEN\n        SIGNAL SQLSTATE \'45000\'\n           SET MESSAGE_TEXT = \'in_interval must be greater than 0\';\n    END IF;\n    IF (@sys.diagnostics.allow_i_s_tables IS NULL) THEN\n        SET @sys.diagnostics.allow_i_s_tables = sys.sys_get_config(\'diagnostics.allow_i_s_tables\', \'OFF\');\n    END IF;\n    IF (@sys.diagnostics.include_raw IS NULL) THEN\n        SET @sys.diagnostics.include_raw      = sys.sys_get_config(\'diagnostics.include_raw\'     , \'OFF\');\n    END IF;\n    IF (@sys.debug IS NULL) THEN\n        SET @sys.debug                        = sys.sys_get_config(\'debug\'                       , \'OFF\');\n    END IF;\n    IF (@sys.statement_truncate_len IS NULL) THEN\n        SET @sys.statement_truncate_len       = sys.sys_get_config(\'statement_truncate_len\'      , \'64\' );\n    END IF;\n    SET @log_bin := @@sql_log_bin;\n    IF (@log_bin = 1) THEN\n        SET sql_log_bin = 0;\n    END IF;\n    SET v_no_delta_names = CONCAT(\'s%{COUNT}.Variable_name NOT IN (\',\n        \'\'\'innodb_buffer_pool_pages_total\'\', \',\n        \'\'\'innodb_page_size\'\', \',\n        \'\'\'last_query_cost\'\', \',\n        \'\'\'last_query_partial_plans\'\', \',\n        \'\'\'qcache_total_blocks\'\', \',\n        \'\'\'slave_last_heartbeat\'\', \',\n        \'\'\'ssl_ctx_verify_depth\'\', \',\n        \'\'\'ssl_ctx_verify_mode\'\', \',\n        \'\'\'ssl_session_cache_size\'\', \',\n        \'\'\'ssl_verify_depth\'\', \',\n        \'\'\'ssl_verify_mode\'\', \',\n        \'\'\'ssl_version\'\', \',\n        \'\'\'buffer_flush_lsn_avg_rate\'\', \',\n        \'\'\'buffer_flush_pct_for_dirty\'\', \',\n        \'\'\'buffer_flush_pct_for_lsn\'\', \',\n        \'\'\'buffer_pool_pages_total\'\', \',\n        \'\'\'lock_row_lock_time_avg\'\', \',\n        \'\'\'lock_row_lock_time_max\'\', \',\n        \'\'\'innodb_page_size\'\'\',\n    \')\');\n    IF (in_auto_config <> \'current\') THEN\n        IF (@sys.debug = \'ON\') THEN\n            SELECT CONCAT(\'Updating Performance Schema configuration to \', in_auto_config) AS \'Debug\';\n        END IF;\n        CALL sys.ps_setup_save(0);\n        IF (in_auto_config = \'medium\') THEN\n            UPDATE performance_schema.setup_consumers\n                SET ENABLED = \'YES\'\n            WHERE NAME NOT LIKE \'%\\_history%\';\n            UPDATE performance_schema.setup_instruments\n                SET ENABLED = \'YES\',\n                    TIMED   = \'YES\'\n            WHERE NAME NOT LIKE \'wait/synch/%\';\n        ELSEIF (in_auto_config = \'full\') THEN\n            UPDATE performance_schema.setup_consumers\n                SET ENABLED = \'YES\';\n            UPDATE performance_schema.setup_instruments\n                SET ENABLED = \'YES\',\n                    TIMED   = \'YES\';\n        END IF;\n        UPDATE performance_schema.threads\n           SET INSTRUMENTED = \'YES\'\n         WHERE PROCESSLIST_ID <> CONNECTION_ID();\n    END IF;\n    SET v_start        = UNIX_TIMESTAMP(NOW(2)),\n        in_interval    = IFNULL(in_interval, 30),\n        in_max_runtime = IFNULL(in_max_runtime, 60);\n    SET v_banner = REPEAT(\n                      \'-\',\n                      LEAST(\n                         GREATEST(\n                            36,\n                            CHAR_LENGTH(VERSION()),\n                            CHAR_LENGTH(@@global.version_comment),\n                            CHAR_LENGTH(@@global.version_compile_os),\n                            CHAR_LENGTH(@@global.version_compile_machine),\n                            CHAR_LENGTH(@@global.socket),\n                            CHAR_LENGTH(@@global.datadir)\n                         ),\n                         64\n                      )\n                   );\n    SELECT \'Hostname\' AS \'Name\', @@global.hostname AS \'Value\'\n    UNION ALL\n    SELECT \'Port\' AS \'Name\', @@global.port AS \'Value\'\n    UNION ALL\n    SELECT \'Socket\' AS \'Name\', @@global.socket AS \'Value\'\n    UNION ALL\n    SELECT \'Datadir\' AS \'Name\', @@global.datadir AS \'Value\'\n    UNION ALL\n    SELECT REPEAT(\'-\', 23) AS \'Name\', v_banner AS \'Value\'\n    UNION ALL\n    SELECT \'MySQL Version\' AS \'Name\', VERSION() AS \'Value\'\n    UNION ALL\n    SELECT \'Sys Schema Version\' AS \'Name\', (SELECT sys_version FROM sys.version) AS \'Value\'\n    UNION ALL\n    SELECT \'Version Comment\' AS \'Name\', @@global.version_comment AS \'Value\'\n    UNION ALL\n    SELECT \'Version Compile OS\' AS \'Name\', @@global.version_compile_os AS \'Value\'\n    UNION ALL\n    SELECT \'Version Compile Machine\' AS \'Name\', @@global.version_compile_machine AS \'Value\'\n    UNION ALL\n    SELECT REPEAT(\'-\', 23) AS \'Name\', v_banner AS \'Value\'\n    UNION ALL\n    SELECT \'UTC Time\' AS \'Name\', UTC_TIMESTAMP() AS \'Value\'\n    UNION ALL\n    SELECT \'Local Time\' AS \'Name\', NOW() AS \'Value\'\n    UNION ALL\n    SELECT \'Time Zone\' AS \'Name\', @@global.time_zone AS \'Value\'\n    UNION ALL\n    SELECT \'System Time Zone\' AS \'Name\', @@global.system_time_zone AS \'Value\'\n    UNION ALL\n    SELECT \'Time Zone Offset\' AS \'Name\', TIMEDIFF(NOW(), UTC_TIMESTAMP()) AS \'Value\';\n    SET v_has_innodb         = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = \'InnoDB\'), \'NO\'),\n        v_has_ndb            = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = \'NDBCluster\'), \'NO\'),\n        v_has_ps             = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = \'PERFORMANCE_SCHEMA\'), \'NO\'),\n        v_has_ps_replication = IF(v_has_ps = \'YES\'\n                                   AND EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA = \'performance_schema\' AND TABLE_NAME = \'replication_applier_status\'),\n                                   \'YES\',\n                                   \'NO\'\n                               ),\n        v_has_replication    = \'MAYBE\',\n        v_has_metrics        = IF(v_has_ps = \'YES\' OR (sys.version_major() = 5 AND sys.version_minor() = 6), \'YES\', \'NO\'),\n        v_has_ps_vars        = \'NO\';\n    \n    \n    IF (@sys.debug = \'ON\') THEN\n       SELECT v_has_innodb AS \'Has_InnoDB\', v_has_ndb AS \'Has_NDBCluster\',\n              v_has_ps AS \'Has_Performance_Schema\', v_has_ps_vars AS \'Has_P_S_SHOW_Variables\',\n              v_has_metrics AS \'Has_metrics\',\n              v_has_ps_replication \'AS Has_P_S_Replication\', v_has_replication AS \'Has_Replication\';\n    END IF;\n    IF (v_has_innodb IN (\'DEFAULT\', \'YES\')) THEN\n        SET @sys.diagnostics.sql = \'SHOW ENGINE InnoDB STATUS\';\n        PREPARE stmt_innodb_status FROM @sys.diagnostics.sql;\n    END IF;\n    IF (v_has_ps = \'YES\') THEN\n        SET @sys.diagnostics.sql = \'SHOW ENGINE PERFORMANCE_SCHEMA STATUS\';\n        PREPARE stmt_ps_status FROM @sys.diagnostics.sql;\n    END IF;\n    IF (v_has_ndb IN (\'DEFAULT\', \'YES\')) THEN\n        SET @sys.diagnostics.sql = \'SHOW ENGINE NDBCLUSTER STATUS\';\n        PREPARE stmt_ndbcluster_status FROM @sys.diagnostics.sql;\n    END IF;\n    SET @sys.diagnostics.sql_gen_query_template = \'SELECT CONCAT(\\n           \'\'SELECT \'\',\\n           GROUP_CONCAT(\\n               CASE WHEN (SUBSTRING(TABLE_NAME, 3), COLUMN_NAME) IN (\\n                                (\'\'io_global_by_file_by_bytes\'\', \'\'total\'\'),\\n                                (\'\'io_global_by_wait_by_bytes\'\', \'\'total_requested\'\')\\n                         )\\n                         THEN CONCAT(\'\'sys.format_bytes(\'\', COLUMN_NAME, \'\') AS \'\', COLUMN_NAME)\\n                    WHEN SUBSTRING(COLUMN_NAME, -8) = \'\'_latency\'\'\\n                         THEN CONCAT(\'\'sys.format_time(\'\', COLUMN_NAME, \'\') AS \'\', COLUMN_NAME)\\n                    WHEN SUBSTRING(COLUMN_NAME, -7) = \'\'_memory\'\' OR SUBSTRING(COLUMN_NAME, -17) = \'\'_memory_allocated\'\'\\n                         OR ((SUBSTRING(COLUMN_NAME, -5) = \'\'_read\'\' OR SUBSTRING(COLUMN_NAME, -8) = \'\'_written\'\' OR SUBSTRING(COLUMN_NAME, -6) = \'\'_write\'\') AND SUBSTRING(COLUMN_NAME, 1, 6) <> \'\'COUNT_\'\')\\n                         THEN CONCAT(\'\'sys.format_bytes(\'\', COLUMN_NAME, \'\') AS \'\', COLUMN_NAME)\\n                    ELSE COLUMN_NAME\\n               END\\n               ORDER BY ORDINAL_POSITION\\n               SEPARATOR \'\',\\n       \'\'\\n           ),\\n           \'\'\\n  FROM tmp_\'\', SUBSTRING(TABLE_NAME FROM 3), \'\'_%{OUTPUT}\'\'\\n       ) AS Query INTO @sys.diagnostics.sql_select\\n  FROM information_schema.COLUMNS\\n WHERE TABLE_SCHEMA = \'\'sys\'\' AND TABLE_NAME = ?\\n GROUP BY TABLE_NAME\';\n    SET @sys.diagnostics.sql_gen_query_delta = \'SELECT CONCAT(\\n           \'\'SELECT \'\',\\n           GROUP_CONCAT(\\n               CASE WHEN FIND_IN_SET(COLUMN_NAME, diag.pk)\\n                         THEN COLUMN_NAME\\n                    WHEN diag.TABLE_NAME = \'\'io_global_by_file_by_bytes\'\' AND COLUMN_NAME = \'\'write_pct\'\'\\n                         THEN CONCAT(\'\'IFNULL(ROUND(100-(((e.total_read-IFNULL(s.total_read, 0))\'\',\\n                                     \'\'/NULLIF(((e.total_read-IFNULL(s.total_read, 0))+(e.total_written-IFNULL(s.total_written, 0))), 0))*100), 2), 0.00) AS \'\',\\n                                     COLUMN_NAME)\\n                    WHEN (diag.TABLE_NAME, COLUMN_NAME) IN (\\n                                (\'\'io_global_by_file_by_bytes\'\', \'\'total\'\'),\\n                                (\'\'io_global_by_wait_by_bytes\'\', \'\'total_requested\'\')\\n                         )\\n                         THEN CONCAT(\'\'sys.format_bytes(e.\'\', COLUMN_NAME, \'\'-IFNULL(s.\'\', COLUMN_NAME, \'\', 0)) AS \'\', COLUMN_NAME)\\n                    WHEN SUBSTRING(COLUMN_NAME, 1, 4) IN (\'\'max_\'\', \'\'min_\'\') AND SUBSTRING(COLUMN_NAME, -8) = \'\'_latency\'\'\\n                         THEN CONCAT(\'\'sys.format_time(e.\'\', COLUMN_NAME, \'\') AS \'\', COLUMN_NAME)\\n                    WHEN COLUMN_NAME = \'\'avg_latency\'\'\\n                         THEN CONCAT(\'\'sys.format_time((e.total_latency - IFNULL(s.total_latency, 0))\'\',\\n                                     \'\'/NULLIF(e.total - IFNULL(s.total, 0), 0)) AS \'\', COLUMN_NAME)\\n                    WHEN SUBSTRING(COLUMN_NAME, -12) = \'\'_avg_latency\'\'\\n                         THEN CONCAT(\'\'sys.format_time((e.\'\', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), \'\'_latency - IFNULL(s.\'\', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), \'\'_latency, 0))\'\',\\n                                     \'\'/NULLIF(e.\'\', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), \'\'s - IFNULL(s.\'\', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), \'\'s, 0), 0)) AS \'\', COLUMN_NAME)\\n                    WHEN SUBSTRING(COLUMN_NAME, -8) = \'\'_latency\'\'\\n                         THEN CONCAT(\'\'sys.format_time(e.\'\', COLUMN_NAME, \'\' - IFNULL(s.\'\', COLUMN_NAME, \'\', 0)) AS \'\', COLUMN_NAME)\\n                    WHEN COLUMN_NAME IN (\'\'avg_read\'\', \'\'avg_write\'\', \'\'avg_written\'\')\\n                         THEN CONCAT(\'\'sys.format_bytes(IFNULL((e.total_\'\', IF(COLUMN_NAME = \'\'avg_read\'\', \'\'read\'\', \'\'written\'\'), \'\'-IFNULL(s.total_\'\', IF(COLUMN_NAME = \'\'avg_read\'\', \'\'read\'\', \'\'written\'\'), \'\', 0))\'\',\\n                                     \'\'/NULLIF(e.count_\'\', IF(COLUMN_NAME = \'\'avg_read\'\', \'\'read\'\', \'\'write\'\'), \'\'-IFNULL(s.count_\'\', IF(COLUMN_NAME = \'\'avg_read\'\', \'\'read\'\', \'\'write\'\'), \'\', 0), 0), 0)) AS \'\',\\n                                     COLUMN_NAME)\\n                    WHEN SUBSTRING(COLUMN_NAME, -7) = \'\'_memory\'\' OR SUBSTRING(COLUMN_NAME, -17) = \'\'_memory_allocated\'\'\\n                         OR ((SUBSTRING(COLUMN_NAME, -5) = \'\'_read\'\' OR SUBSTRING(COLUMN_NAME, -8) = \'\'_written\'\' OR SUBSTRING(COLUMN_NAME, -6) = \'\'_write\'\') AND SUBSTRING(COLUMN_NAME, 1, 6) <> \'\'COUNT_\'\')\\n                         THEN CONCAT(\'\'sys.format_bytes(e.\'\', COLUMN_NAME, \'\' - IFNULL(s.\'\', COLUMN_NAME, \'\', 0)) AS \'\', COLUMN_NAME)\\n                    ELSE CONCAT(\'\'(e.\'\', COLUMN_NAME, \'\' - IFNULL(s.\'\', COLUMN_NAME, \'\', 0)) AS \'\', COLUMN_NAME)\\n               END\\n               ORDER BY ORDINAL_POSITION\\n               SEPARATOR \'\',\\n       \'\'\\n           ),\\n           \'\'\\n  FROM tmp_\'\', diag.TABLE_NAME, \'\'_end e\\n       LEFT OUTER JOIN tmp_\'\', diag.TABLE_NAME, \'\'_start s USING (\'\', diag.pk, \'\')\'\'\\n       ) AS Query INTO @sys.diagnostics.sql_select\\n  FROM tmp_sys_views_delta diag\\n       INNER JOIN information_schema.COLUMNS c ON c.TABLE_NAME = CONCAT(\'\'x$\'\', diag.TABLE_NAME)\\n WHERE c.TABLE_SCHEMA = \'\'sys\'\' AND diag.TABLE_NAME = ?\\n GROUP BY diag.TABLE_NAME\';\n    IF (v_has_ps = \'YES\') THEN\n        DROP TEMPORARY TABLE IF EXISTS tmp_sys_views_delta;\n        CREATE TEMPORARY TABLE tmp_sys_views_delta (\n            TABLE_NAME varchar(64) NOT NULL,\n            order_by text COMMENT \'ORDER BY clause for the initial and overall views\',\n            order_by_delta text COMMENT \'ORDER BY clause for the delta views\',\n            where_delta text COMMENT \'WHERE clause to use for delta views to only include rows with a \"count\" > 0\',\n            limit_rows int unsigned COMMENT \'The maximum number of rows to include for the view\',\n            pk varchar(128) COMMENT \'Used with the FIND_IN_SET() function so use comma separated list without whitespace\',\n            PRIMARY KEY (TABLE_NAME)\n        );\n        IF (@sys.debug = \'ON\') THEN\n            SELECT \'Populating tmp_sys_views_delta\' AS \'Debug\';\n        END IF;\n        INSERT INTO tmp_sys_views_delta\n        VALUES (\'host_summary\'                       , \'%{TABLE}.statement_latency DESC\',\n                                                       \'(e.statement_latency-IFNULL(s.statement_latency, 0)) DESC\',\n                                                       \'(e.statements - IFNULL(s.statements, 0)) > 0\', NULL, \'host\'),\n               (\'host_summary_by_file_io\'            , \'%{TABLE}.io_latency DESC\',\n                                                       \'(e.io_latency-IFNULL(s.io_latency, 0)) DESC\',\n                                                       \'(e.ios - IFNULL(s.ios, 0)) > 0\', NULL, \'host\'),\n               (\'host_summary_by_file_io_type\'       , \'%{TABLE}.host, %{TABLE}.total_latency DESC\',\n                                                       \'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'host,event_name\'),\n               (\'host_summary_by_stages\'             , \'%{TABLE}.host, %{TABLE}.total_latency DESC\',\n                                                       \'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'host,event_name\'),\n               (\'host_summary_by_statement_latency\'  , \'%{TABLE}.total_latency DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'host\'),\n               (\'host_summary_by_statement_type\'     , \'%{TABLE}.host, %{TABLE}.total_latency DESC\',\n                                                       \'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'host,statement\'),\n               (\'io_by_thread_by_latency\'            , \'%{TABLE}.total_latency DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'user,thread_id,processlist_id\'),\n               (\'io_global_by_file_by_bytes\'         , \'%{TABLE}.total DESC\',\n                                                       \'(e.total-IFNULL(s.total, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', 100, \'file\'),\n               (\'io_global_by_file_by_latency\'       , \'%{TABLE}.total_latency DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', 100, \'file\'),\n               (\'io_global_by_wait_by_bytes\'         , \'%{TABLE}.total_requested DESC\',\n                                                       \'(e.total_requested-IFNULL(s.total_requested, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'event_name\'),\n               (\'io_global_by_wait_by_latency\'       , \'%{TABLE}.total_latency DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'event_name\'),\n               (\'schema_index_statistics\'            , \'(%{TABLE}.select_latency+%{TABLE}.insert_latency+%{TABLE}.update_latency+%{TABLE}.delete_latency) DESC\',\n                                                       \'((e.select_latency+e.insert_latency+e.update_latency+e.delete_latency)-IFNULL(s.select_latency+s.insert_latency+s.update_latency+s.delete_latency, 0)) DESC\',\n                                                       \'((e.rows_selected+e.insert_latency+e.rows_updated+e.rows_deleted)-IFNULL(s.rows_selected+s.rows_inserted+s.rows_updated+s.rows_deleted, 0)) > 0\',\n                                                       100, \'table_schema,table_name,index_name\'),\n               (\'schema_table_statistics\'            , \'%{TABLE}.total_latency DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) > 0\', 100, \'table_schema,table_name\'),\n               (\'schema_tables_with_full_table_scans\', \'%{TABLE}.rows_full_scanned DESC\',\n                                                       \'(e.rows_full_scanned-IFNULL(s.rows_full_scanned, 0)) DESC\',\n                                                       \'(e.rows_full_scanned-IFNULL(s.rows_full_scanned, 0)) > 0\', 100, \'object_schema,object_name\'),\n               (\'user_summary\'                       , \'%{TABLE}.statement_latency DESC\',\n                                                       \'(e.statement_latency-IFNULL(s.statement_latency, 0)) DESC\',\n                                                       \'(e.statements - IFNULL(s.statements, 0)) > 0\', NULL, \'user\'),\n               (\'user_summary_by_file_io\'            , \'%{TABLE}.io_latency DESC\',\n                                                       \'(e.io_latency-IFNULL(s.io_latency, 0)) DESC\',\n                                                       \'(e.ios - IFNULL(s.ios, 0)) > 0\', NULL, \'user\'),\n               (\'user_summary_by_file_io_type\'       , \'%{TABLE}.user, %{TABLE}.latency DESC\',\n                                                       \'e.user, (e.latency-IFNULL(s.latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'user,event_name\'),\n               (\'user_summary_by_stages\'             , \'%{TABLE}.user, %{TABLE}.total_latency DESC\',\n                                                       \'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'user,event_name\'),\n               (\'user_summary_by_statement_latency\'  , \'%{TABLE}.total_latency DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'user\'),\n               (\'user_summary_by_statement_type\'     , \'%{TABLE}.user, %{TABLE}.total_latency DESC\',\n                                                       \'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'user,statement\'),\n               (\'wait_classes_global_by_avg_latency\' , \'IFNULL(%{TABLE}.total_latency / NULLIF(%{TABLE}.total, 0), 0) DESC\',\n                                                       \'IFNULL((e.total_latency-IFNULL(s.total_latency, 0)) / NULLIF((e.total - IFNULL(s.total, 0)), 0), 0) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'event_class\'),\n               (\'wait_classes_global_by_latency\'     , \'%{TABLE}.total_latency DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'event_class\'),\n               (\'waits_by_host_by_latency\'           , \'%{TABLE}.host, %{TABLE}.total_latency DESC\',\n                                                       \'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'host,event\'),\n               (\'waits_by_user_by_latency\'           , \'%{TABLE}.user, %{TABLE}.total_latency DESC\',\n                                                       \'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'user,event\'),\n               (\'waits_global_by_latency\'            , \'%{TABLE}.total_latency DESC\',\n                                                       \'(e.total_latency-IFNULL(s.total_latency, 0)) DESC\',\n                                                       \'(e.total - IFNULL(s.total, 0)) > 0\', NULL, \'events\')\n        ;\n    END IF;\n    SELECT \'\\n=======================\\n     Configuration\\n=======================\\n\' AS \'\';\n    SELECT \'GLOBAL VARIABLES\' AS \'The following output is:\';\n    IF (v_has_ps_vars = \'YES\') THEN\n        SELECT LOWER(VARIABLE_NAME) AS Variable_name, VARIABLE_VALUE AS Variable_value FROM performance_schema.global_variables ORDER BY VARIABLE_NAME;\n    ELSE\n        SELECT LOWER(VARIABLE_NAME) AS Variable_name, VARIABLE_VALUE AS Variable_value FROM information_schema.GLOBAL_VARIABLES ORDER BY VARIABLE_NAME;\n    END IF;\n    IF (v_has_ps = \'YES\') THEN\n        SELECT \'Performance Schema Setup - Actors\' AS \'The following output is:\';\n        SELECT * FROM performance_schema.setup_actors;\n        SELECT \'Performance Schema Setup - Consumers\' AS \'The following output is:\';\n        SELECT NAME AS Consumer, ENABLED, sys.ps_is_consumer_enabled(NAME) AS COLLECTS\n          FROM performance_schema.setup_consumers;\n        SELECT \'Performance Schema Setup - Instruments\' AS \'The following output is:\';\n        SELECT SUBSTRING_INDEX(NAME, \'/\', 2) AS \'InstrumentClass\',\n               ROUND(100*SUM(IF(ENABLED = \'YES\', 1, 0))/COUNT(*), 2) AS \'EnabledPct\',\n               ROUND(100*SUM(IF(TIMED = \'YES\', 1, 0))/COUNT(*), 2) AS \'TimedPct\'\n          FROM performance_schema.setup_instruments\n         GROUP BY SUBSTRING_INDEX(NAME, \'/\', 2)\n         ORDER BY SUBSTRING_INDEX(NAME, \'/\', 2);\n        SELECT \'Performance Schema Setup - Objects\' AS \'The following output is:\';\n        SELECT * FROM performance_schema.setup_objects;\n        SELECT \'Performance Schema Setup - Threads\' AS \'The following output is:\';\n        SELECT `TYPE` AS ThreadType, COUNT(*) AS \'Total\', ROUND(100*SUM(IF(INSTRUMENTED = \'YES\', 1, 0))/COUNT(*), 2) AS \'InstrumentedPct\'\n          FROM performance_schema.threads\n        GROUP BY TYPE;\n    END IF;\n    IF (v_has_replication = \'NO\') THEN\n        SELECT \'No Replication Configured\' AS \'Replication Status\';\n    ELSE\n        SELECT CONCAT(\'Replication Configured: \', v_has_replication, \' - Performance Schema Replication Tables: \', v_has_ps_replication) AS \'Replication Status\';\n        IF (v_has_ps_replication = \'YES\') THEN\n            SELECT \'Replication - Connection Configuration\' AS \'The following output is:\';\n            SELECT * FROM performance_schema.replication_connection_configuration;\n        END IF;\n        IF (v_has_ps_replication = \'YES\') THEN\n            SELECT \'Replication - Applier Configuration\' AS \'The following output is:\';\n            SELECT * FROM performance_schema.replication_applier_configuration ORDER BY CHANNEL_NAME;\n        END IF;\n    END IF;\n    IF (v_has_ndb IN (\'DEFAULT\', \'YES\')) THEN\n       SELECT \'Cluster Thread Blocks\' AS \'The following output is:\';\n       SELECT * FROM ndbinfo.threadblocks;\n    END IF;\n    IF (v_has_ps = \'YES\') THEN\n        IF (@sys.diagnostics.include_raw = \'ON\') THEN\n            SELECT \'\\n========================\\n     Initial Status\\n========================\\n\' AS \'\';\n        END IF;\n        DROP TEMPORARY TABLE IF EXISTS tmp_digests_start;\n        CALL sys.statement_performance_analyzer(\'create_tmp\', \'tmp_digests_start\', NULL);\n        CALL sys.statement_performance_analyzer(\'snapshot\', NULL, NULL);\n        CALL sys.statement_performance_analyzer(\'save\', \'tmp_digests_start\', NULL);\n        IF (@sys.diagnostics.include_raw = \'ON\') THEN\n            SET @sys.diagnostics.sql = REPLACE(@sys.diagnostics.sql_gen_query_template, \'%{OUTPUT}\', \'start\');\n            IF (@sys.debug = \'ON\') THEN\n                SELECT \'The following query will be used to generate the query for each sys view\' AS \'Debug\';\n                SELECT @sys.diagnostics.sql AS \'Debug\';\n            END IF;\n            PREPARE stmt_gen_query FROM @sys.diagnostics.sql;\n        END IF;\n        SET v_done = FALSE;\n        OPEN c_sysviews_w_delta;\n        c_sysviews_w_delta_loop: LOOP\n            FETCH c_sysviews_w_delta INTO v_table_name;\n            IF v_done THEN\n                LEAVE c_sysviews_w_delta_loop;\n            END IF;\n            IF (@sys.debug = \'ON\') THEN\n                SELECT CONCAT(\'The following queries are for storing the initial content of \', v_table_name) AS \'Debug\';\n            END IF;\n            CALL sys.execute_prepared_stmt(CONCAT(\'DROP TEMPORARY TABLE IF EXISTS `tmp_\', v_table_name, \'_start`\'));\n            CALL sys.execute_prepared_stmt(CONCAT(\'CREATE TEMPORARY TABLE `tmp_\', v_table_name, \'_start` SELECT * FROM `sys`.`x$\', v_table_name, \'`\'));\n            IF (@sys.diagnostics.include_raw = \'ON\') THEN\n                SET @sys.diagnostics.table_name = CONCAT(\'x$\', v_table_name);\n                EXECUTE stmt_gen_query USING @sys.diagnostics.table_name;\n                SELECT CONCAT(@sys.diagnostics.sql_select,\n                              IF(order_by IS NOT NULL, CONCAT(\'\\n ORDER BY \', REPLACE(order_by, \'%{TABLE}\', CONCAT(\'tmp_\', v_table_name, \'_start\'))), \'\'),\n                              IF(limit_rows IS NOT NULL, CONCAT(\'\\n LIMIT \', limit_rows), \'\')\n                       )\n                  INTO @sys.diagnostics.sql_select\n                  FROM tmp_sys_views_delta\n                 WHERE TABLE_NAME = v_table_name;\n                SELECT CONCAT(\'Initial \', v_table_name) AS \'The following output is:\';\n                CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);\n            END IF;\n        END LOOP;\n        CLOSE c_sysviews_w_delta;\n        IF (@sys.diagnostics.include_raw = \'ON\') THEN\n            DEALLOCATE PREPARE stmt_gen_query;\n        END IF;\n    END IF;\n    SET v_sql_status_summary_select = \'SELECT Variable_name\',\n        v_sql_status_summary_delta  = \'\',\n        v_sql_status_summary_from   = \'\';\n    REPEAT\n        SET v_output_count = v_output_count + 1;\n        IF (v_output_count > 1) THEN\n            SET v_sleep = in_interval-(UNIX_TIMESTAMP(NOW(2))-v_iter_start);\n            SELECT NOW() AS \'Time\', CONCAT(\'Going to sleep for \', v_sleep, \' seconds. Please do not interrupt\') AS \'The following output is:\';\n            DO SLEEP(in_interval);\n        END IF;\n        SET v_iter_start = UNIX_TIMESTAMP(NOW(2));\n        SELECT NOW(), CONCAT(\'Iteration Number \', IFNULL(v_output_count, \'NULL\')) AS \'The following output is:\';\n        IF (@@log_bin = 1) THEN\n            SELECT \'SHOW MASTER STATUS\' AS \'The following output is:\';\n            SHOW MASTER STATUS;\n        END IF;\n        IF (v_has_replication <> \'NO\') THEN\n            SELECT \'SHOW SLAVE STATUS\' AS \'The following output is:\';\n            SHOW SLAVE STATUS;\n        END IF;\n        SET v_table_name = CONCAT(\'tmp_metrics_\', v_output_count);\n        CALL sys.execute_prepared_stmt(CONCAT(\'DROP TEMPORARY TABLE IF EXISTS \', v_table_name));\n        CALL sys.execute_prepared_stmt(CONCAT(\'CREATE TEMPORARY TABLE \', v_table_name, \' (\\n  Variable_name VARCHAR(193) NOT NULL,\\n  Variable_value VARCHAR(1024),\\n  Type VARCHAR(100) NOT NULL,\\n  Enabled ENUM(\'\'YES\'\', \'\'NO\'\', \'\'PARTIAL\'\') NOT NULL,\\n  PRIMARY KEY (Type, Variable_name)\\n) ENGINE = InnoDB DEFAULT CHARSET=utf8\'));\n        IF (v_has_metrics) THEN\n            SET @sys.diagnostics.sql = CONCAT(\n                \'INSERT INTO \', v_table_name,\n                \' SELECT Variable_name, REPLACE(Variable_value, \'\'\\n\'\', \'\'\\\\n\'\') AS Variable_value, Type, Enabled FROM sys.metrics\'\n            );\n        ELSE\n            SET @sys.diagnostics.sql = CONCAT(\n                \'INSERT INTO \', v_table_name,\n                \'(SELECT LOWER(VARIABLE_NAME) AS Variable_name, REPLACE(VARIABLE_VALUE, \'\'\\n\'\', \'\'\\\\n\'\') AS Variable_value,\\n                         \'\'Global Status\'\' AS Type, \'\'YES\'\' AS Enabled\\n  FROM performance_schema.global_status\\n) UNION ALL (\\nSELECT NAME AS Variable_name, COUNT AS Variable_value,\\n       CONCAT(\'\'InnoDB Metrics - \'\', SUBSYSTEM) AS Type,\\n       IF(STATUS = \'\'enabled\'\', \'\'YES\'\', \'\'NO\'\') AS Enabled\\n  FROM information_schema.INNODB_METRICS\\n WHERE NAME NOT IN (\\n     \'\'lock_row_lock_time\'\', \'\'lock_row_lock_time_avg\'\', \'\'lock_row_lock_time_max\'\', \'\'lock_row_lock_waits\'\',\\n     \'\'buffer_pool_reads\'\', \'\'buffer_pool_read_requests\'\', \'\'buffer_pool_write_requests\'\', \'\'buffer_pool_wait_free\'\',\\n     \'\'buffer_pool_read_ahead\'\', \'\'buffer_pool_read_ahead_evicted\'\', \'\'buffer_pool_pages_total\'\', \'\'buffer_pool_pages_misc\'\',\\n     \'\'buffer_pool_pages_data\'\', \'\'buffer_pool_bytes_data\'\', \'\'buffer_pool_pages_dirty\'\', \'\'buffer_pool_bytes_dirty\'\',\\n     \'\'buffer_pool_pages_free\'\', \'\'buffer_pages_created\'\', \'\'buffer_pages_written\'\', \'\'buffer_pages_read\'\',\\n     \'\'buffer_data_reads\'\', \'\'buffer_data_written\'\', \'\'file_num_open_files\'\',\\n     \'\'os_log_bytes_written\'\', \'\'os_log_fsyncs\'\', \'\'os_log_pending_fsyncs\'\', \'\'os_log_pending_writes\'\',\\n     \'\'log_waits\'\', \'\'log_write_requests\'\', \'\'log_writes\'\', \'\'innodb_dblwr_writes\'\', \'\'innodb_dblwr_pages_written\'\', \'\'innodb_page_size\'\')\\n) UNION ALL (\\nSELECT \'\'NOW()\'\' AS Variable_name, NOW(3) AS Variable_value, \'\'System Time\'\' AS Type, \'\'YES\'\' AS Enabled\\n) UNION ALL (\\nSELECT \'\'UNIX_TIMESTAMP()\'\' AS Variable_name, ROUND(UNIX_TIMESTAMP(NOW(3)), 3) AS Variable_value, \'\'System Time\'\' AS Type, \'\'YES\'\' AS Enabled\\n)\\n ORDER BY Type, Variable_name;\'\n            );\n        END IF;\n        CALL sys.execute_prepared_stmt(@sys.diagnostics.sql);\n        CALL sys.execute_prepared_stmt(\n            CONCAT(\'SELECT Variable_value INTO @sys.diagnostics.output_time FROM \', v_table_name, \' WHERE Type = \'\'System Time\'\' AND Variable_name = \'\'UNIX_TIMESTAMP()\'\'\')\n        );\n        SET v_output_time = @sys.diagnostics.output_time;\n        SET v_sql_status_summary_select = CONCAT(v_sql_status_summary_select, \',\\n       CONCAT(\\n           LEFT(s\', v_output_count, \'.Variable_value, \', v_status_summary_width, \'),\\n           IF(\', REPLACE(v_no_delta_names, \'%{COUNT}\', v_output_count), \' AND s\', v_output_count, \'.Variable_value REGEXP \'\'^[0-9]+(\\\\.[0-9]+)?$\'\', CONCAT(\'\' (\'\', ROUND(s\', v_output_count, \'.Variable_value/\', v_output_time, \', 2), \'\'/sec)\'\'), \'\'\'\')\\n       ) AS \'\'Output \', v_output_count, \'\'\'\'),\n            v_sql_status_summary_from   = CONCAT(v_sql_status_summary_from, \'\\n\',\n                                                    IF(v_output_count = 1, \'  FROM \', \'       INNER JOIN \'),\n                                                    v_table_name, \' s\', v_output_count,\n                                                    IF (v_output_count = 1, \'\', \' USING (Type, Variable_name)\'));\n        IF (v_output_count > 1) THEN\n            SET v_sql_status_summary_delta  = CONCAT(v_sql_status_summary_delta, \',\\n       IF(\', REPLACE(v_no_delta_names, \'%{COUNT}\', v_output_count), \' AND s\', (v_output_count-1), \'.Variable_value REGEXP \'\'^[0-9]+(\\\\.[0-9]+)?$\'\' AND s\', v_output_count, \'.Variable_value REGEXP \'\'^[0-9]+(\\\\.[0-9]+)?$\'\',\\n          CONCAT(IF(s\', (v_output_count-1), \'.Variable_value REGEXP \'\'^[0-9]+\\\\.[0-9]+$\'\' OR s\', v_output_count, \'.Variable_value REGEXP \'\'^[0-9]+\\\\.[0-9]+$\'\',\\n                    ROUND((s\', v_output_count, \'.Variable_value-s\', (v_output_count-1), \'.Variable_value), 2),\\n                    (s\', v_output_count, \'.Variable_value-s\', (v_output_count-1), \'.Variable_value)\\n                   ),\\n                 \'\' (\'\', ROUND((s\', v_output_count, \'.Variable_value-s\', (v_output_count-1), \'.Variable_value)/(\', v_output_time, \'-\', v_output_time_prev, \'), 2), \'\'/sec)\'\'\\n          ),\\n          \'\'\'\'\\n       ) AS \'\'Delta (\', (v_output_count-1), \' -> \', v_output_count, \')\'\'\');\n        END IF;\n        SET v_output_time_prev = v_output_time;\n        IF (@sys.diagnostics.include_raw = \'ON\') THEN\n            IF (v_has_metrics) THEN\n                SELECT \'SELECT * FROM sys.metrics\' AS \'The following output is:\';\n            ELSE\n                SELECT \'sys.metrics equivalent\' AS \'The following output is:\';\n            END IF;\n            CALL sys.execute_prepared_stmt(CONCAT(\'SELECT Type, Variable_name, Enabled, Variable_value FROM \', v_table_name, \' ORDER BY Type, Variable_name\'));\n        END IF;\n        IF (v_has_innodb IN (\'DEFAULT\', \'YES\')) THEN\n            SELECT \'SHOW ENGINE INNODB STATUS\' AS \'The following output is:\';\n            EXECUTE stmt_innodb_status;\n            SELECT \'InnoDB - Transactions\' AS \'The following output is:\';\n            SELECT * FROM information_schema.INNODB_TRX;\n        END IF;\n        IF (v_has_ndb IN (\'DEFAULT\', \'YES\')) THEN\n            SELECT \'SHOW ENGINE NDBCLUSTER STATUS\' AS \'The following output is:\';\n            EXECUTE stmt_ndbcluster_status;\n            SELECT \'ndbinfo.memoryusage\' AS \'The following output is:\';\n            SELECT node_id, memory_type, sys.format_bytes(used) AS used, used_pages, sys.format_bytes(total) AS total, total_pages,\n                   ROUND(100*(used/total), 2) AS \'Used %\'\n            FROM ndbinfo.memoryusage;\n            SET v_done = FALSE;\n            OPEN c_ndbinfo;\n            c_ndbinfo_loop: LOOP\n                FETCH c_ndbinfo INTO v_table_name;\n                IF v_done THEN\n                LEAVE c_ndbinfo_loop;\n                END IF;\n                SELECT CONCAT(\'SELECT * FROM ndbinfo.\', v_table_name) AS \'The following output is:\';\n                CALL sys.execute_prepared_stmt(CONCAT(\'SELECT * FROM `ndbinfo`.`\', v_table_name, \'`\'));\n            END LOOP;\n            CLOSE c_ndbinfo;\n            SELECT * FROM information_schema.FILES;\n        END IF;\n        SELECT \'SELECT * FROM sys.processlist\' AS \'The following output is:\';\n        SELECT processlist.* FROM sys.processlist;\n        IF (v_has_ps = \'YES\') THEN\n            IF (sys.ps_is_consumer_enabled(\'events_waits_history_long\') = \'YES\') THEN\n                SELECT \'SELECT * FROM sys.latest_file_io\' AS \'The following output is:\';\n                SELECT * FROM sys.latest_file_io;\n            END IF;\n            IF (EXISTS(SELECT 1 FROM performance_schema.setup_instruments WHERE NAME LIKE \'memory/%\' AND ENABLED = \'YES\')) THEN\n                SELECT \'SELECT * FROM sys.memory_by_host_by_current_bytes\' AS \'The following output is:\';\n                SELECT * FROM sys.memory_by_host_by_current_bytes;\n                SELECT \'SELECT * FROM sys.memory_by_thread_by_current_bytes\' AS \'The following output is:\';\n                SELECT * FROM sys.memory_by_thread_by_current_bytes;\n                SELECT \'SELECT * FROM sys.memory_by_user_by_current_bytes\' AS \'The following output is:\';\n                SELECT * FROM sys.memory_by_user_by_current_bytes;\n                SELECT \'SELECT * FROM sys.memory_global_by_current_bytes\' AS \'The following output is:\';\n                SELECT * FROM sys.memory_global_by_current_bytes;\n            END IF;\n        END IF;\n        SET v_runtime = (UNIX_TIMESTAMP(NOW(2)) - v_start);\n    UNTIL (v_runtime + in_interval >= in_max_runtime) END REPEAT;\n    IF (v_has_ps = \'YES\') THEN\n        SELECT \'SHOW ENGINE PERFORMANCE_SCHEMA STATUS\' AS \'The following output is:\';\n        EXECUTE stmt_ps_status;\n    END IF;\n    IF (v_has_innodb IN (\'DEFAULT\', \'YES\')) THEN\n        DEALLOCATE PREPARE stmt_innodb_status;\n    END IF;\n    IF (v_has_ps = \'YES\') THEN\n        DEALLOCATE PREPARE stmt_ps_status;\n    END IF;\n    IF (v_has_ndb IN (\'DEFAULT\', \'YES\')) THEN\n        DEALLOCATE PREPARE stmt_ndbcluster_status;\n    END IF;\n    SELECT \'\\n============================\\n     Schema Information\\n============================\\n\' AS \'\';\n    SELECT COUNT(*) AS \'Total Number of Tables\' FROM information_schema.TABLES;\n    IF (@sys.diagnostics.allow_i_s_tables = \'ON\') THEN\n        SELECT \'Storage Engine Usage\' AS \'The following output is:\';\n        SELECT ENGINE, COUNT(*) AS NUM_TABLES,\n                sys.format_bytes(SUM(DATA_LENGTH)) AS DATA_LENGTH,\n                sys.format_bytes(SUM(INDEX_LENGTH)) AS INDEX_LENGTH,\n                sys.format_bytes(SUM(DATA_LENGTH+INDEX_LENGTH)) AS TOTAL\n            FROM information_schema.TABLES\n            GROUP BY ENGINE;\n        SELECT \'Schema Object Overview\' AS \'The following output is:\';\n        SELECT * FROM sys.schema_object_overview;\n        SELECT \'Tables without a PRIMARY KEY\' AS \'The following output is:\';\n        SELECT TABLES.TABLE_SCHEMA, ENGINE, COUNT(*) AS NumTables\n          FROM information_schema.TABLES\n               LEFT OUTER JOIN information_schema.STATISTICS ON STATISTICS.TABLE_SCHEMA = TABLES.TABLE_SCHEMA\n                                                                AND STATISTICS.TABLE_NAME = TABLES.TABLE_NAME\n                                                                AND STATISTICS.INDEX_NAME = \'PRIMARY\'\n         WHERE STATISTICS.TABLE_NAME IS NULL\n               AND TABLES.TABLE_SCHEMA NOT IN (\'mysql\', \'information_schema\', \'performance_schema\', \'sys\')\n               AND TABLES.TABLE_TYPE = \'BASE TABLE\'\n         GROUP BY TABLES.TABLE_SCHEMA, ENGINE;\n    END IF;\n    IF (v_has_ps = \'YES\') THEN\n        SELECT \'Unused Indexes\' AS \'The following output is:\';\n        SELECT object_schema, COUNT(*) AS NumUnusedIndexes\n          FROM performance_schema.table_io_waits_summary_by_index_usage\n         WHERE index_name IS NOT NULL\n               AND count_star = 0\n               AND object_schema NOT IN (\'mysql\', \'sys\')\n               AND index_name != \'PRIMARY\'\n         GROUP BY object_schema;\n    END IF;\n    IF (v_has_ps = \'YES\') THEN\n        SELECT \'\\n=========================\\n     Overall Status\\n=========================\\n\' AS \'\';\n        SELECT \'CALL sys.ps_statement_avg_latency_histogram()\' AS \'The following output is:\';\n        CALL sys.ps_statement_avg_latency_histogram();\n        CALL sys.statement_performance_analyzer(\'snapshot\', NULL, NULL);\n        CALL sys.statement_performance_analyzer(\'overall\', NULL, \'with_runtimes_in_95th_percentile\');\n        SET @sys.diagnostics.sql = REPLACE(@sys.diagnostics.sql_gen_query_template, \'%{OUTPUT}\', \'end\');\n        IF (@sys.debug = \'ON\') THEN\n            SELECT \'The following query will be used to generate the query for each sys view\' AS \'Debug\';\n            SELECT @sys.diagnostics.sql AS \'Debug\';\n        END IF;\n        PREPARE stmt_gen_query FROM @sys.diagnostics.sql;\n        SET v_done = FALSE;\n        OPEN c_sysviews_w_delta;\n        c_sysviews_w_delta_loop: LOOP\n            FETCH c_sysviews_w_delta INTO v_table_name;\n            IF v_done THEN\n                LEAVE c_sysviews_w_delta_loop;\n            END IF;\n            IF (@sys.debug = \'ON\') THEN\n                SELECT CONCAT(\'The following queries are for storing the final content of \', v_table_name) AS \'Debug\';\n            END IF;\n            CALL sys.execute_prepared_stmt(CONCAT(\'DROP TEMPORARY TABLE IF EXISTS `tmp_\', v_table_name, \'_end`\'));\n            CALL sys.execute_prepared_stmt(CONCAT(\'CREATE TEMPORARY TABLE `tmp_\', v_table_name, \'_end` SELECT * FROM `sys`.`x$\', v_table_name, \'`\'));\n            IF (@sys.diagnostics.include_raw = \'ON\') THEN\n                SET @sys.diagnostics.table_name = CONCAT(\'x$\', v_table_name);\n                EXECUTE stmt_gen_query USING @sys.diagnostics.table_name;\n                SELECT CONCAT(@sys.diagnostics.sql_select,\n                                IF(order_by IS NOT NULL, CONCAT(\'\\n ORDER BY \', REPLACE(order_by, \'%{TABLE}\', CONCAT(\'tmp_\', v_table_name, \'_end\'))), \'\'),\n                                IF(limit_rows IS NOT NULL, CONCAT(\'\\n LIMIT \', limit_rows), \'\')\n                        )\n                    INTO @sys.diagnostics.sql_select\n                    FROM tmp_sys_views_delta\n                    WHERE TABLE_NAME = v_table_name;\n                SELECT CONCAT(\'Overall \', v_table_name) AS \'The following output is:\';\n                CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);\n            END IF;\n        END LOOP;\n        CLOSE c_sysviews_w_delta;\n        DEALLOCATE PREPARE stmt_gen_query;\n        SELECT \'\\n======================\\n     Delta Status\\n======================\\n\' AS \'\';\n        CALL sys.statement_performance_analyzer(\'delta\', \'tmp_digests_start\', \'with_runtimes_in_95th_percentile\');\n        CALL sys.statement_performance_analyzer(\'cleanup\', NULL, NULL);\n        DROP TEMPORARY TABLE tmp_digests_start;\n        IF (@sys.debug = \'ON\') THEN\n            SELECT \'The following query will be used to generate the query for each sys view delta\' AS \'Debug\';\n            SELECT @sys.diagnostics.sql_gen_query_delta AS \'Debug\';\n        END IF;\n        PREPARE stmt_gen_query_delta FROM @sys.diagnostics.sql_gen_query_delta;\n        SET v_old_group_concat_max_len = @@session.group_concat_max_len;\n        SET @@session.group_concat_max_len = 2048;\n        SET v_done = FALSE;\n        OPEN c_sysviews_w_delta;\n        c_sysviews_w_delta_loop: LOOP\n            FETCH c_sysviews_w_delta INTO v_table_name;\n            IF v_done THEN\n                LEAVE c_sysviews_w_delta_loop;\n            END IF;\n            SET @sys.diagnostics.table_name = v_table_name;\n            EXECUTE stmt_gen_query_delta USING @sys.diagnostics.table_name;\n            SELECT CONCAT(@sys.diagnostics.sql_select,\n                            IF(where_delta IS NOT NULL, CONCAT(\'\\n WHERE \', where_delta), \'\'),\n                            IF(order_by_delta IS NOT NULL, CONCAT(\'\\n ORDER BY \', order_by_delta), \'\'),\n                            IF(limit_rows IS NOT NULL, CONCAT(\'\\n LIMIT \', limit_rows), \'\')\n                    )\n                INTO @sys.diagnostics.sql_select\n                FROM tmp_sys_views_delta\n                WHERE TABLE_NAME = v_table_name;\n            SELECT CONCAT(\'Delta \', v_table_name) AS \'The following output is:\';\n            CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);\n            CALL sys.execute_prepared_stmt(CONCAT(\'DROP TEMPORARY TABLE `tmp_\', v_table_name, \'_end`\'));\n            CALL sys.execute_prepared_stmt(CONCAT(\'DROP TEMPORARY TABLE `tmp_\', v_table_name, \'_start`\'));\n        END LOOP;\n        CLOSE c_sysviews_w_delta;\n        SET @@session.group_concat_max_len = v_old_group_concat_max_len;\n        DEALLOCATE PREPARE stmt_gen_query_delta;\n        DROP TEMPORARY TABLE tmp_sys_views_delta;\n    END IF;\n    IF (v_has_metrics) THEN\n        SELECT \'SELECT * FROM sys.metrics\' AS \'The following output is:\';\n    ELSE\n        SELECT \'sys.metrics equivalent\' AS \'The following output is:\';\n    END IF;\n    CALL sys.execute_prepared_stmt(\n        CONCAT(v_sql_status_summary_select, v_sql_status_summary_delta, \', Type, s1.Enabled\', v_sql_status_summary_from,\n               \'\\n ORDER BY Type, Variable_name\'\n        )\n    );\n    SET v_count = 0;\n    WHILE (v_count < v_output_count) DO\n        SET v_count = v_count + 1;\n        SET v_table_name = CONCAT(\'tmp_metrics_\', v_count);\n        CALL sys.execute_prepared_stmt(CONCAT(\'DROP TEMPORARY TABLE IF EXISTS \', v_table_name));\n    END WHILE;\n    IF (in_auto_config <> \'current\') THEN\n        CALL sys.ps_setup_reload_saved();\n        SET sql_log_bin = @log_bin;\n    END IF;\n    SET @sys.diagnostics.output_time            = NULL,\n        @sys.diagnostics.sql                    = NULL,\n        @sys.diagnostics.sql_gen_query_delta    = NULL,\n        @sys.diagnostics.sql_gen_query_template = NULL,\n        @sys.diagnostics.sql_select             = NULL,\n        @sys.diagnostics.table_name             = NULL;\n    IF (v_this_thread_enabled = \'YES\') THEN\n        CALL sys.ps_setup_enable_thread(CONNECTION_ID());\n    END IF;\n    IF (@log_bin = 1) THEN\n        SET sql_log_bin = @log_bin;\n    END IF;\nEND','NONE'),('sys','format_path','FUNCTION','format_path','SQL','NO_SQL','YES','INVOKER','in_path VARCHAR(512)\n    ','varchar(512) CHARSET utf8mb3','BEGIN\n  DECLARE v_dir VARCHAR(1024);\n  DECLARE v_path VARCHAR(512);\n  DECLARE path_separator CHAR(1) DEFAULT \'/\';\n  IF @@global.version_compile_os LIKE \'win%\' THEN\n    SET path_separator = \'\\\\\';\n  END IF;\n  IF in_path LIKE \'/private/%\' THEN\n    SET v_path = REPLACE(in_path, \'/private\', \'\');\n  ELSE\n    SET v_path = in_path;\n  END IF;\n  SET v_dir= IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = \'innodb_data_home_dir\'), \'\');\n  IF v_path IS NULL THEN\n    RETURN NULL;\n  END IF;\n  IF v_path LIKE CONCAT(@@global.datadir, IF(SUBSTRING(@@global.datadir, -1) = path_separator, \'%\', CONCAT(path_separator, \'%\'))) ESCAPE \'|\' THEN\n    SET v_path = REPLACE(v_path, @@global.datadir, CONCAT(\'@@datadir\', IF(SUBSTRING(@@global.datadir, -1) = path_separator, path_separator, \'\')));\n    RETURN v_path;\n  END IF;\n  IF v_path LIKE CONCAT(@@global.tmpdir, IF(SUBSTRING(@@global.tmpdir, -1) = path_separator, \'%\', CONCAT(path_separator, \'%\'))) ESCAPE \'|\' THEN\n    SET v_path = REPLACE(v_path, @@global.tmpdir, CONCAT(\'@@tmpdir\', IF(SUBSTRING(@@global.tmpdir, -1) = path_separator, path_separator, \'\')));\n    RETURN v_path;\n  END IF;\n  SET v_dir= IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = \'innodb_data_home_dir\'), \'\');\n  IF v_path LIKE CONCAT(v_dir, IF(SUBSTRING(v_dir, -1) = path_separator, \'%\', CONCAT(path_separator, \'%\'))) ESCAPE \'|\' THEN\n    SET v_path = REPLACE(v_path, v_dir, CONCAT(\'@@innodb_data_home_dir\', IF(SUBSTRING(v_dir, -1) = path_separator, path_separator, \'\')));\n    RETURN v_path;\n  END IF;\n  SET v_dir= IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = \'innodb_log_group_home_dir\'), \'\');\n  IF v_path LIKE CONCAT(v_dir, IF(SUBSTRING(v_dir, -1) = path_separator, \'%\', CONCAT(path_separator, \'%\'))) ESCAPE \'|\' THEN\n    SET v_path = REPLACE(v_path, v_dir, CONCAT(\'@@innodb_log_group_home_dir\', IF(SUBSTRING(v_dir, -1) = path_separator, path_separator, \'\')));\n    RETURN v_path;\n  END IF;\n  SET v_dir= IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = \'slave_load_tmpdir\'), \'\');\n  IF v_path LIKE CONCAT(v_dir, IF(SUBSTRING(v_dir, -1) = path_separator, \'%\', CONCAT(path_separator, \'%\'))) ESCAPE \'|\' THEN\n    SET v_path = REPLACE(v_path, v_dir, CONCAT(\'@@slave_load_tmpdir\', IF(SUBSTRING(v_dir, -1) = path_separator, path_separator, \'\')));\n    RETURN v_path;\n  END IF;\n  SET v_dir = IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = \'innodb_undo_directory\'), \'\');\n  IF v_path LIKE CONCAT(v_dir, IF(SUBSTRING(v_dir, -1) = path_separator, \'%\', CONCAT(path_separator, \'%\'))) ESCAPE \'|\' THEN\n    SET v_path = REPLACE(v_path, v_dir, CONCAT(\'@@innodb_undo_directory\', IF(SUBSTRING(v_dir, -1) = path_separator, path_separator, \'\')));\n    RETURN v_path;\n  END IF;\n  IF v_path LIKE CONCAT(@@global.basedir, IF(SUBSTRING(@@global.basedir, -1) = path_separator, \'%\', CONCAT(path_separator, \'%\'))) ESCAPE \'|\' THEN\n    SET v_path = REPLACE(v_path, @@global.basedir, CONCAT(\'@@basedir\', IF(SUBSTRING(@@global.basedir, -1) = path_separator, path_separator, \'\')));\n    RETURN v_path;\n  END IF;\n  RETURN v_path;\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Takes a raw path value, and strips out the datadir or tmpdir\n             replacing with @@datadir and @@tmpdir respectively.\n             Also normalizes the paths across operating systems, so backslashes\n             on Windows are converted to forward slashes\n             Parameters\n             path (VARCHAR(512)):\n               The raw file path value to format.\n             Returns\n             VARCHAR(512) CHARSET UTF8\n             Example\n             mysql> select @@datadir;\n             +-----------------------------------------------+\n             | @@datadir                                     |\n             +-----------------------------------------------+\n             | /Users/mark/sandboxes/SmallTree/AMaster/data/ |\n             +-----------------------------------------------+\n             1 row in set (0.06 sec)\n             mysql> select format_path(\'/Users/mark/sandboxes/SmallTree/AMaster/data/mysql/proc.MYD\') AS path;\n             +--------------------------+\n             | path                     |\n             +--------------------------+\n             | @@datadir/mysql/proc.MYD |\n             +--------------------------+\n             1 row in set (0.03 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n  DECLARE v_dir VARCHAR(1024);\n  DECLARE v_path VARCHAR(512);\n  DECLARE path_separator CHAR(1) DEFAULT \'/\';\n  IF @@global.version_compile_os LIKE \'win%\' THEN\n    SET path_separator = \'\\\';\n  END IF;\n  IF in_path LIKE \'/private/%\' THEN\n    SET v_path = REPLACE(in_path, \'/private\', \'\');\n  ELSE\n    SET v_path = in_path;\n  END IF;\n  SET v_dir= IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = \'innodb_data_home_dir\'), \'\');\n  IF v_path IS NULL THEN\n    RETURN NULL;\n  END IF;\n  IF v_path LIKE CONCAT(@@global.datadir, IF(SUBSTRING(@@global.datadir, -1) = path_separator, \'%\', CONCAT(path_separator, \'%\'))) ESCAPE \'|\' THEN\n    SET v_path = REPLACE(v_path, @@global.datadir, CONCAT(\'@@datadir\', IF(SUBSTRING(@@global.datadir, -1) = path_separator, path_separator, \'\')));\n    RETURN v_path;\n  END IF;\n  IF v_path LIKE CONCAT(@@global.tmpdir, IF(SUBSTRING(@@global.tmpdir, -1) = path_separator, \'%\', CONCAT(path_separator, \'%\'))) ESCAPE \'|\' THEN\n    SET v_path = REPLACE(v_path, @@global.tmpdir, CONCAT(\'@@tmpdir\', IF(SUBSTRING(@@global.tmpdir, -1) = path_separator, path_separator, \'\')));\n    RETURN v_path;\n  END IF;\n  SET v_dir= IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = \'innodb_data_home_dir\'), \'\');\n  IF v_path LIKE CONCAT(v_dir, IF(SUBSTRING(v_dir, -1) = path_separator, \'%\', CONCAT(path_separator, \'%\'))) ESCAPE \'|\' THEN\n    SET v_path = REPLACE(v_path, v_dir, CONCAT(\'@@innodb_data_home_dir\', IF(SUBSTRING(v_dir, -1) = path_separator, path_separator, \'\')));\n    RETURN v_path;\n  END IF;\n  SET v_dir= IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = \'innodb_log_group_home_dir\'), \'\');\n  IF v_path LIKE CONCAT(v_dir, IF(SUBSTRING(v_dir, -1) = path_separator, \'%\', CONCAT(path_separator, \'%\'))) ESCAPE \'|\' THEN\n    SET v_path = REPLACE(v_path, v_dir, CONCAT(\'@@innodb_log_group_home_dir\', IF(SUBSTRING(v_dir, -1) = path_separator, path_separator, \'\')));\n    RETURN v_path;\n  END IF;\n  SET v_dir= IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = \'slave_load_tmpdir\'), \'\');\n  IF v_path LIKE CONCAT(v_dir, IF(SUBSTRING(v_dir, -1) = path_separator, \'%\', CONCAT(path_separator, \'%\'))) ESCAPE \'|\' THEN\n    SET v_path = REPLACE(v_path, v_dir, CONCAT(\'@@slave_load_tmpdir\', IF(SUBSTRING(v_dir, -1) = path_separator, path_separator, \'\')));\n    RETURN v_path;\n  END IF;\n  SET v_dir = IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = \'innodb_undo_directory\'), \'\');\n  IF v_path LIKE CONCAT(v_dir, IF(SUBSTRING(v_dir, -1) = path_separator, \'%\', CONCAT(path_separator, \'%\'))) ESCAPE \'|\' THEN\n    SET v_path = REPLACE(v_path, v_dir, CONCAT(\'@@innodb_undo_directory\', IF(SUBSTRING(v_dir, -1) = path_separator, path_separator, \'\')));\n    RETURN v_path;\n  END IF;\n  IF v_path LIKE CONCAT(@@global.basedir, IF(SUBSTRING(@@global.basedir, -1) = path_separator, \'%\', CONCAT(path_separator, \'%\'))) ESCAPE \'|\' THEN\n    SET v_path = REPLACE(v_path, @@global.basedir, CONCAT(\'@@basedir\', IF(SUBSTRING(@@global.basedir, -1) = path_separator, path_separator, \'\')));\n    RETURN v_path;\n  END IF;\n  RETURN v_path;\nEND','NONE'),('sys','format_statement','FUNCTION','format_statement','SQL','NO_SQL','YES','INVOKER','statement LONGTEXT\n    ','longtext CHARSET utf8mb3','BEGIN\n  IF @sys.statement_truncate_len IS NULL THEN\n      SET @sys.statement_truncate_len = sys_get_config(\'statement_truncate_len\', 64);\n  END IF;\n  IF CHAR_LENGTH(statement) > @sys.statement_truncate_len THEN\n      RETURN REPLACE(CONCAT(LEFT(statement, (@sys.statement_truncate_len/2)-2), \' ... \', RIGHT(statement, (@sys.statement_truncate_len/2)-2)), \'\\n\', \' \');\n  ELSE\n      RETURN REPLACE(statement, \'\\n\', \' \');\n  END IF;\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Formats a normalized statement, truncating it if it is > 64 characters long by default.\n             To configure the length to truncate the statement to by default, update the `statement_truncate_len`\n             variable with `sys_config` table to a different value. Alternatively, to change it just for just\n             your particular session, use `SET @sys.statement_truncate_len := <some new value>`.\n             Useful for printing statement related data from Performance Schema from\n             the command line.\n             Parameters\n             statement (LONGTEXT):\n               The statement to format.\n             Returns\n             LONGTEXT\n             Example\n             mysql> SELECT sys.format_statement(digest_text)\n                 ->   FROM performance_schema.events_statements_summary_by_digest\n                 ->  ORDER by sum_timer_wait DESC limit 5;\n             +-------------------------------------------------------------------+\n             | sys.format_statement(digest_text)                                 |\n             +-------------------------------------------------------------------+\n             | CREATE SQL SECURITY INVOKER VI ... KE ? AND `variable_value` > ?  |\n             | CREATE SQL SECURITY INVOKER VI ... ait` IS NOT NULL , `esc` . ... |\n             | CREATE SQL SECURITY INVOKER VI ... ait` IS NOT NULL , `sys` . ... |\n             | CREATE SQL SECURITY INVOKER VI ...  , `compressed_size` ) ) DESC  |\n             | CREATE SQL SECURITY INVOKER VI ... LIKE ? ORDER BY `timer_start`  |\n             +-------------------------------------------------------------------+\n             5 rows in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n  IF @sys.statement_truncate_len IS NULL THEN\n      SET @sys.statement_truncate_len = sys_get_config(\'statement_truncate_len\', 64);\n  END IF;\n  IF CHAR_LENGTH(statement) > @sys.statement_truncate_len THEN\n      RETURN REPLACE(CONCAT(LEFT(statement, (@sys.statement_truncate_len/2)-2), \' ... \', RIGHT(statement, (@sys.statement_truncate_len/2)-2)), \'\\n\', \' \');\n  ELSE\n      RETURN REPLACE(statement, \'\\n\', \' \');\n  END IF;\nEND','NONE'),('sys','list_add','FUNCTION','list_add','SQL','CONTAINS_SQL','YES','INVOKER','in_list TEXT,\n        in_add_value TEXT\n    ','text CHARSET utf8mb3','BEGIN\n    IF (in_add_value IS NULL) THEN\n        SIGNAL SQLSTATE \'02200\'\n           SET MESSAGE_TEXT = \'Function sys.list_add: in_add_value input variable should not be NULL\',\n               MYSQL_ERRNO = 1138;\n    END IF;\n    IF (in_list IS NULL OR LENGTH(in_list) = 0) THEN\n        RETURN in_add_value;\n    END IF;\n    RETURN (SELECT CONCAT(TRIM(BOTH \',\' FROM TRIM(in_list)), \',\', in_add_value));\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Takes a list, and a value to add to the list, and returns the resulting list.\n             Useful for altering certain session variables, like sql_mode or optimizer_switch for instance.\n             Parameters\n             in_list (TEXT):\n               The comma separated list to add a value to\n             in_add_value (TEXT):\n               The value to add to the input list\n             Returns\n             TEXT\n             Example\n             mysql> select @@sql_mode;\n             +-----------------------------------------------------------------------------------+\n             | @@sql_mode                                                                        |\n             +-----------------------------------------------------------------------------------+\n             | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n             +-----------------------------------------------------------------------------------+\n             1 row in set (0.00 sec)\n             mysql> set sql_mode = sys.list_add(@@sql_mode, \'ANSI_QUOTES\');\n             Query OK, 0 rows affected (0.06 sec)\n             mysql> select @@sql_mode;\n             +-----------------------------------------------------------------------------------------------+\n             | @@sql_mode                                                                                    |\n             +-----------------------------------------------------------------------------------------------+\n             | ANSI_QUOTES,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n             +-----------------------------------------------------------------------------------------------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    IF (in_add_value IS NULL) THEN\n        SIGNAL SQLSTATE \'02200\'\n           SET MESSAGE_TEXT = \'Function sys.list_add: in_add_value input variable should not be NULL\',\n               MYSQL_ERRNO = 1138;\n    END IF;\n    IF (in_list IS NULL OR LENGTH(in_list) = 0) THEN\n        RETURN in_add_value;\n    END IF;\n    RETURN (SELECT CONCAT(TRIM(BOTH \',\' FROM TRIM(in_list)), \',\', in_add_value));\nEND','NONE'),('sys','ps_statement_avg_latency_histogram','PROCEDURE','ps_statement_avg_latency_histogram','SQL','READS_SQL_DATA','NO','INVOKER','','','BEGIN\nSELECT CONCAT(\'\\n\',\n       \'\\n  . = 1 unit\',\n       \'\\n  * = 2 units\',\n       \'\\n  # = 3 units\\n\',\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(0 - \',\n                                               ROUND((@bucket_size := (SELECT ROUND((MAX(avg_us) - MIN(avg_us)) / (@buckets := 16)) AS size\n                                                                         FROM sys.x$ps_digest_avg_latency_distribution)) / (@unit_div := 1000)),\n                                                (@unit := \'ms\'), \')\'),\n                        REPEAT(\' \', (@max_label_size := ((1 + LENGTH(ROUND((@bucket_size * 15) / @unit_div)) + 3 + LENGTH(ROUND(@bucket_size * 16) / @unit_div)) + 1)) - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us <= @bucket_size), 0)),\n       REPEAT(\' \', (@max_label_len := (@max_label_size + LENGTH((@total_queries := (SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution)))) + 1) - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < (@one_unit := 40), \'.\', IF(@count_in_bucket < (@two_unit := 80), \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND(@bucket_size / @unit_div), \' - \', ROUND((@bucket_size * 2) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size AND b1.avg_us <= @bucket_size * 2), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 2) / @unit_div), \' - \', ROUND((@bucket_size * 3) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 2 AND b1.avg_us <= @bucket_size * 3), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 3) / @unit_div), \' - \', ROUND((@bucket_size * 4) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 3 AND b1.avg_us <= @bucket_size * 4), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 4) / @unit_div), \' - \', ROUND((@bucket_size * 5) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 4 AND b1.avg_us <= @bucket_size * 5), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 5) / @unit_div), \' - \', ROUND((@bucket_size * 6) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 5 AND b1.avg_us <= @bucket_size * 6), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 6) / @unit_div), \' - \', ROUND((@bucket_size * 7) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 6 AND b1.avg_us <= @bucket_size * 7), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 7) / @unit_div), \' - \', ROUND((@bucket_size * 8) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 7 AND b1.avg_us <= @bucket_size * 8), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 8) / @unit_div), \' - \', ROUND((@bucket_size * 9) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 8 AND b1.avg_us <= @bucket_size * 9), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 9) / @unit_div), \' - \', ROUND((@bucket_size * 10) / @unit_div), @unit, \')\'),\n                         REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                         @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                       FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                      WHERE b1.avg_us > @bucket_size * 9 AND b1.avg_us <= @bucket_size * 10), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 10) / @unit_div), \' - \', ROUND((@bucket_size * 11) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 10 AND b1.avg_us <= @bucket_size * 11), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 11) / @unit_div), \' - \', ROUND((@bucket_size * 12) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 11 AND b1.avg_us <= @bucket_size * 12), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 12) / @unit_div), \' - \', ROUND((@bucket_size * 13) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 12 AND b1.avg_us <= @bucket_size * 13), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 13) / @unit_div), \' - \', ROUND((@bucket_size * 14) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 13 AND b1.avg_us <= @bucket_size * 14), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 14) / @unit_div), \' - \', ROUND((@bucket_size * 15) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 14 AND b1.avg_us <= @bucket_size * 15), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 15) / @unit_div), \' - \', ROUND((@bucket_size * 16) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 15 AND b1.avg_us <= @bucket_size * 16), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       \'\\n\\n  Total Statements: \', @total_queries, \'; Buckets: \', @buckets , \'; Bucket Size: \', ROUND(@bucket_size / @unit_div) , \' \', @unit, \';\\n\'\n      ) AS `Performance Schema Statement Digest Average Latency Histogram`;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Outputs a textual histogram graph of the average latency values\n             across all normalized queries tracked within the Performance Schema\n             events_statements_summary_by_digest table.\n             Can be used to show a very high level picture of what kind of\n             latency distribution statements running within this instance have.\n             Parameters\n             None.\n             Example\n             mysql> CALL sys.ps_statement_avg_latency_histogram()\\G\n             *************************** 1. row ***************************\n             Performance Schema Statement Digest Average Latency Histogram:\n               . = 1 unit\n               * = 2 units\n               # = 3 units\n             (0 - 38ms)     240 | ################################################################################\n             (38 - 77ms)    38  | ......................................\n             (77 - 115ms)   3   | ...\n             (115 - 154ms)  62  | *******************************\n             (154 - 192ms)  3   | ...\n             (192 - 231ms)  0   |\n             (231 - 269ms)  0   |\n             (269 - 307ms)  0   |\n             (307 - 346ms)  0   |\n             (346 - 384ms)  1   | .\n             (384 - 423ms)  1   | .\n             (423 - 461ms)  0   |\n             (461 - 499ms)  0   |\n             (499 - 538ms)  0   |\n             (538 - 576ms)  0   |\n             (576 - 615ms)  1   | .\n               Total Statements: 350; Buckets: 16; Bucket Size: 38 ms;\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\nSELECT CONCAT(\'\\n\',\n       \'\\n  . = 1 unit\',\n       \'\\n  * = 2 units\',\n       \'\\n  # = 3 units\\n\',\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(0 - \',\n                                               ROUND((@bucket_size := (SELECT ROUND((MAX(avg_us) - MIN(avg_us)) / (@buckets := 16)) AS size\n                                                                         FROM sys.x$ps_digest_avg_latency_distribution)) / (@unit_div := 1000)),\n                                                (@unit := \'ms\'), \')\'),\n                        REPEAT(\' \', (@max_label_size := ((1 + LENGTH(ROUND((@bucket_size * 15) / @unit_div)) + 3 + LENGTH(ROUND(@bucket_size * 16) / @unit_div)) + 1)) - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us <= @bucket_size), 0)),\n       REPEAT(\' \', (@max_label_len := (@max_label_size + LENGTH((@total_queries := (SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution)))) + 1) - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < (@one_unit := 40), \'.\', IF(@count_in_bucket < (@two_unit := 80), \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND(@bucket_size / @unit_div), \' - \', ROUND((@bucket_size * 2) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size AND b1.avg_us <= @bucket_size * 2), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 2) / @unit_div), \' - \', ROUND((@bucket_size * 3) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 2 AND b1.avg_us <= @bucket_size * 3), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 3) / @unit_div), \' - \', ROUND((@bucket_size * 4) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 3 AND b1.avg_us <= @bucket_size * 4), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 4) / @unit_div), \' - \', ROUND((@bucket_size * 5) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 4 AND b1.avg_us <= @bucket_size * 5), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 5) / @unit_div), \' - \', ROUND((@bucket_size * 6) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 5 AND b1.avg_us <= @bucket_size * 6), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 6) / @unit_div), \' - \', ROUND((@bucket_size * 7) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 6 AND b1.avg_us <= @bucket_size * 7), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 7) / @unit_div), \' - \', ROUND((@bucket_size * 8) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 7 AND b1.avg_us <= @bucket_size * 8), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 8) / @unit_div), \' - \', ROUND((@bucket_size * 9) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 8 AND b1.avg_us <= @bucket_size * 9), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 9) / @unit_div), \' - \', ROUND((@bucket_size * 10) / @unit_div), @unit, \')\'),\n                         REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                         @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                       FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                      WHERE b1.avg_us > @bucket_size * 9 AND b1.avg_us <= @bucket_size * 10), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 10) / @unit_div), \' - \', ROUND((@bucket_size * 11) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 10 AND b1.avg_us <= @bucket_size * 11), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 11) / @unit_div), \' - \', ROUND((@bucket_size * 12) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 11 AND b1.avg_us <= @bucket_size * 12), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 12) / @unit_div), \' - \', ROUND((@bucket_size * 13) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 12 AND b1.avg_us <= @bucket_size * 13), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 13) / @unit_div), \' - \', ROUND((@bucket_size * 14) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 13 AND b1.avg_us <= @bucket_size * 14), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 14) / @unit_div), \' - \', ROUND((@bucket_size * 15) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 14 AND b1.avg_us <= @bucket_size * 15), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       @label := CONCAT(@label_inner := CONCAT(\'\\n(\', ROUND((@bucket_size * 15) / @unit_div), \' - \', ROUND((@bucket_size * 16) / @unit_div), @unit, \')\'),\n                        REPEAT(\' \', @max_label_size - LENGTH(@label_inner)),\n                        @count_in_bucket := IFNULL((SELECT SUM(cnt)\n                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1\n                                                     WHERE b1.avg_us > @bucket_size * 15 AND b1.avg_us <= @bucket_size * 16), 0)),\n       REPEAT(\' \', @max_label_len - LENGTH(@label)), \'| \',\n       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, \'.\', IF(@count_in_bucket < @two_unit, \'*\', \'#\')),\n       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,\n       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), \'\'),\n       \'\\n\\n  Total Statements: \', @total_queries, \'; Buckets: \', @buckets , \'; Bucket Size: \', ROUND(@bucket_size / @unit_div) , \' \', @unit, \';\\n\'\n      ) AS `Performance Schema Statement Digest Average Latency Histogram`;\nEND','NONE'),('sys','ps_trace_statement_digest','PROCEDURE','ps_trace_statement_digest','SQL','MODIFIES_SQL_DATA','NO','INVOKER','\n        IN in_digest VARCHAR(32),\n        IN in_runtime INT,\n        IN in_interval DECIMAL(2,2),\n        IN in_start_fresh BOOLEAN,\n        IN in_auto_enable BOOLEAN\n    ','','BEGIN\n    DECLARE v_start_fresh BOOLEAN DEFAULT false;\n    DECLARE v_auto_enable BOOLEAN DEFAULT false;\n    DECLARE v_explain     BOOLEAN DEFAULT true;\n    DECLARE v_this_thread_enabed ENUM(\'YES\', \'NO\');\n    DECLARE v_runtime INT DEFAULT 0;\n    DECLARE v_start INT DEFAULT 0;\n    DECLARE v_found_stmts INT;\n    SET @log_bin := @@sql_log_bin;\n    SET sql_log_bin = 0;\n    SELECT INSTRUMENTED INTO v_this_thread_enabed FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();\n    CALL sys.ps_setup_disable_thread(CONNECTION_ID());\n    DROP TEMPORARY TABLE IF EXISTS stmt_trace;\n    CREATE TEMPORARY TABLE stmt_trace (\n        thread_id BIGINT UNSIGNED,\n        timer_start BIGINT UNSIGNED,\n        event_id BIGINT UNSIGNED,\n        sql_text longtext,\n        timer_wait BIGINT UNSIGNED,\n        lock_time BIGINT UNSIGNED,\n        errors BIGINT UNSIGNED,\n        mysql_errno INT,\n        rows_sent BIGINT UNSIGNED,\n        rows_affected BIGINT UNSIGNED,\n        rows_examined BIGINT UNSIGNED,\n        created_tmp_tables BIGINT UNSIGNED,\n        created_tmp_disk_tables BIGINT UNSIGNED,\n        no_index_used BIGINT UNSIGNED,\n        PRIMARY KEY (thread_id, timer_start)\n    );\n    DROP TEMPORARY TABLE IF EXISTS stmt_stages;\n    CREATE TEMPORARY TABLE stmt_stages (\n       event_id BIGINT UNSIGNED,\n       stmt_id BIGINT UNSIGNED,\n       event_name VARCHAR(128),\n       timer_wait BIGINT UNSIGNED,\n       PRIMARY KEY (event_id)\n    );\n    SET v_start_fresh = in_start_fresh;\n    IF v_start_fresh THEN\n        TRUNCATE TABLE performance_schema.events_statements_history_long;\n        TRUNCATE TABLE performance_schema.events_stages_history_long;\n    END IF;\n    SET v_auto_enable = in_auto_enable;\n    IF v_auto_enable THEN\n        CALL sys.ps_setup_save(0);\n        UPDATE performance_schema.threads\n           SET INSTRUMENTED = IF(PROCESSLIST_ID IS NOT NULL, \'YES\', \'NO\');\n        UPDATE performance_schema.setup_consumers\n           SET ENABLED = \'YES\'\n         WHERE NAME NOT LIKE \'%\\_history\'\n               AND NAME NOT LIKE \'events_wait%\'\n               AND NAME NOT LIKE \'events_transactions%\'\n               AND NAME <> \'statements_digest\';\n        UPDATE performance_schema.setup_instruments\n           SET ENABLED = \'YES\',\n               TIMED   = \'YES\'\n         WHERE NAME LIKE \'statement/%\' OR NAME LIKE \'stage/%\';\n    END IF;\n    WHILE v_runtime < in_runtime DO\n        SELECT UNIX_TIMESTAMP() INTO v_start;\n        INSERT IGNORE INTO stmt_trace\n        SELECT thread_id, timer_start, event_id, sql_text, timer_wait, lock_time, errors, mysql_errno,\n               rows_sent, rows_affected, rows_examined, created_tmp_tables, created_tmp_disk_tables, no_index_used\n          FROM performance_schema.events_statements_history_long\n        WHERE digest = in_digest;\n        INSERT IGNORE INTO stmt_stages\n        SELECT stages.event_id, stmt_trace.event_id,\n               stages.event_name, stages.timer_wait\n          FROM performance_schema.events_stages_history_long AS stages\n          JOIN stmt_trace ON stages.nesting_event_id = stmt_trace.event_id;\n        SELECT SLEEP(in_interval) INTO @sleep;\n        SET v_runtime = v_runtime + (UNIX_TIMESTAMP() - v_start);\n    END WHILE;\n    SELECT \"SUMMARY STATISTICS\";\n    SELECT COUNT(*) executions,\n           sys.format_time(SUM(timer_wait)) AS exec_time,\n           sys.format_time(SUM(lock_time)) AS lock_time,\n           SUM(rows_sent) AS rows_sent,\n           SUM(rows_affected) AS rows_affected,\n           SUM(rows_examined) AS rows_examined,\n           SUM(created_tmp_tables) AS tmp_tables,\n           SUM(no_index_used) AS full_scans\n      FROM stmt_trace;\n    SELECT event_name,\n           COUNT(*) as count,\n           sys.format_time(SUM(timer_wait)) as latency\n      FROM stmt_stages\n     GROUP BY event_name\n     ORDER BY SUM(timer_wait) DESC;\n    SELECT \"LONGEST RUNNING STATEMENT\";\n    SELECT thread_id,\n           sys.format_time(timer_wait) AS exec_time,\n           sys.format_time(lock_time) AS lock_time,\n           rows_sent,\n           rows_affected,\n           rows_examined,\n           created_tmp_tables AS tmp_tables,\n           no_index_used AS full_scan\n      FROM stmt_trace\n     ORDER BY timer_wait DESC LIMIT 1;\n    SELECT sql_text\n      FROM stmt_trace\n     ORDER BY timer_wait DESC LIMIT 1;\n    SELECT sql_text, event_id INTO @sql, @sql_id\n      FROM stmt_trace\n    ORDER BY timer_wait DESC LIMIT 1;\n    IF (@sql_id IS NOT NULL) THEN\n        SELECT event_name,\n               sys.format_time(timer_wait) as latency\n          FROM stmt_stages\n         WHERE stmt_id = @sql_id\n         ORDER BY event_id;\n    END IF;\n    DROP TEMPORARY TABLE stmt_trace;\n    DROP TEMPORARY TABLE stmt_stages;\n    IF (@sql IS NOT NULL) THEN\n        SET @stmt := CONCAT(\"EXPLAIN FORMAT=JSON \", @sql);\n        BEGIN\n            DECLARE CONTINUE HANDLER FOR 1064, 1146 SET v_explain = false;\n            PREPARE explain_stmt FROM @stmt;\n        END;\n        IF (v_explain) THEN\n            EXECUTE explain_stmt;\n            DEALLOCATE PREPARE explain_stmt;\n        END IF;\n    END IF;\n    IF v_auto_enable THEN\n        CALL sys.ps_setup_reload_saved();\n    END IF;\n    IF (v_this_thread_enabed = \'YES\') THEN\n        CALL sys.ps_setup_enable_thread(CONNECTION_ID());\n    END IF;\n    SET sql_log_bin = @log_bin;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Traces all instrumentation within Performance Schema for a specific\n             Statement Digest.\n             When finding a statement of interest within the\n             performance_schema.events_statements_summary_by_digest table, feed\n             the DIGEST MD5 value in to this procedure, set how long to poll for,\n             and at what interval to poll, and it will generate a report of all\n             statistics tracked within Performance Schema for that digest for the\n             interval.\n             It will also attempt to generate an EXPLAIN for the longest running\n             example of the digest during the interval. Note this may fail, as:\n                * Performance Schema truncates long SQL_TEXT values (and hence the\n                  EXPLAIN will fail due to parse errors)\n                * the default schema is sys (so tables that are not fully qualified\n                  in the query may not be found)\n                * some queries such as SHOW are not supported in EXPLAIN.\n             When the EXPLAIN fails, the error will be ignored and no EXPLAIN\n             output generated.\n             Requires the SUPER privilege for \"SET sql_log_bin = 0;\".\n             Parameters\n             in_digest (VARCHAR(32)):\n               The statement digest identifier you would like to analyze\n             in_runtime (INT):\n               The number of seconds to run analysis for\n             in_interval (DECIMAL(2,2)):\n               The interval (in seconds, may be fractional) at which to try\n               and take snapshots\n             in_start_fresh (BOOLEAN):\n               Whether to TRUNCATE the events_statements_history_long and\n               events_stages_history_long tables before starting\n             in_auto_enable (BOOLEAN):\n               Whether to automatically turn on required consumers\n             Example\n             mysql> call ps_trace_statement_digest(\'891ec6860f98ba46d89dd20b0c03652c\', 10, 0.1, true, true);\n             +--------------------+\n             | SUMMARY STATISTICS |\n             +--------------------+\n             | SUMMARY STATISTICS |\n             +--------------------+\n             1 row in set (9.11 sec)\n             +------------+-----------+-----------+-----------+---------------+------------+------------+\n             | executions | exec_time | lock_time | rows_sent | rows_examined | tmp_tables | full_scans |\n             +------------+-----------+-----------+-----------+---------------+------------+------------+\n             |         21 | 4.11 ms   | 2.00 ms   |         0 |            21 |          0 |          0 |\n             +------------+-----------+-----------+-----------+---------------+------------+------------+\n             1 row in set (9.11 sec)\n             +------------------------------------------+-------+-----------+\n             | event_name                               | count | latency   |\n             +------------------------------------------+-------+-----------+\n             | stage/sql/checking query cache for query |    16 | 724.37 us |\n             | stage/sql/statistics                     |    16 | 546.92 us |\n             | stage/sql/freeing items                  |    18 | 520.11 us |\n             | stage/sql/init                           |    51 | 466.80 us |\n             ...\n             | stage/sql/cleaning up                    |    18 | 11.92 us  |\n             | stage/sql/executing                      |    16 | 6.95 us   |\n             +------------------------------------------+-------+-----------+\n             17 rows in set (9.12 sec)\n             +---------------------------+\n             | LONGEST RUNNING STATEMENT |\n             +---------------------------+\n             | LONGEST RUNNING STATEMENT |\n             +---------------------------+\n             1 row in set (9.16 sec)\n             +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n             | thread_id | exec_time | lock_time | rows_sent | rows_examined | tmp_tables | full_scan |\n             +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n             |    166646 | 618.43 us | 1.00 ms   |         0 |             1 |          0 |         0 |\n             +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n             1 row in set (9.16 sec)\n             // Truncated for clarity...\n             +-----------------------------------------------------------------+\n             | sql_text                                                        |\n             +-----------------------------------------------------------------+\n             | select hibeventhe0_.id as id1382_, hibeventhe0_.createdTime ... |\n             +-----------------------------------------------------------------+\n             1 row in set (9.17 sec)\n             +------------------------------------------+-----------+\n             | event_name                               | latency   |\n             +------------------------------------------+-----------+\n             | stage/sql/init                           | 8.61 us   |\n             | stage/sql/Waiting for query cache lock   | 453.23 us |\n             | stage/sql/init                           | 331.07 ns |\n             | stage/sql/checking query cache for query | 43.04 us  |\n             ...\n             | stage/sql/freeing items                  | 30.46 us  |\n             | stage/sql/cleaning up                    | 662.13 ns |\n             +------------------------------------------+-----------+\n             18 rows in set (9.23 sec)\n             +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n             | id | select_type | table        | type  | possible_keys | key       | key_len | ref         | rows | Extra |\n             +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n             |  1 | SIMPLE      | hibeventhe0_ | const | fixedTime     | fixedTime | 775     | const,const |    1 | NULL  |\n             +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n             1 row in set (9.27 sec)\n             Query OK, 0 rows affected (9.28 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    DECLARE v_start_fresh BOOLEAN DEFAULT false;\n    DECLARE v_auto_enable BOOLEAN DEFAULT false;\n    DECLARE v_explain     BOOLEAN DEFAULT true;\n    DECLARE v_this_thread_enabed ENUM(\'YES\', \'NO\');\n    DECLARE v_runtime INT DEFAULT 0;\n    DECLARE v_start INT DEFAULT 0;\n    DECLARE v_found_stmts INT;\n    SET @log_bin := @@sql_log_bin;\n    SET sql_log_bin = 0;\n    SELECT INSTRUMENTED INTO v_this_thread_enabed FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();\n    CALL sys.ps_setup_disable_thread(CONNECTION_ID());\n    DROP TEMPORARY TABLE IF EXISTS stmt_trace;\n    CREATE TEMPORARY TABLE stmt_trace (\n        thread_id BIGINT UNSIGNED,\n        timer_start BIGINT UNSIGNED,\n        event_id BIGINT UNSIGNED,\n        sql_text longtext,\n        timer_wait BIGINT UNSIGNED,\n        lock_time BIGINT UNSIGNED,\n        errors BIGINT UNSIGNED,\n        mysql_errno INT,\n        rows_sent BIGINT UNSIGNED,\n        rows_affected BIGINT UNSIGNED,\n        rows_examined BIGINT UNSIGNED,\n        created_tmp_tables BIGINT UNSIGNED,\n        created_tmp_disk_tables BIGINT UNSIGNED,\n        no_index_used BIGINT UNSIGNED,\n        PRIMARY KEY (thread_id, timer_start)\n    );\n    DROP TEMPORARY TABLE IF EXISTS stmt_stages;\n    CREATE TEMPORARY TABLE stmt_stages (\n       event_id BIGINT UNSIGNED,\n       stmt_id BIGINT UNSIGNED,\n       event_name VARCHAR(128),\n       timer_wait BIGINT UNSIGNED,\n       PRIMARY KEY (event_id)\n    );\n    SET v_start_fresh = in_start_fresh;\n    IF v_start_fresh THEN\n        TRUNCATE TABLE performance_schema.events_statements_history_long;\n        TRUNCATE TABLE performance_schema.events_stages_history_long;\n    END IF;\n    SET v_auto_enable = in_auto_enable;\n    IF v_auto_enable THEN\n        CALL sys.ps_setup_save(0);\n        UPDATE performance_schema.threads\n           SET INSTRUMENTED = IF(PROCESSLIST_ID IS NOT NULL, \'YES\', \'NO\');\n        UPDATE performance_schema.setup_consumers\n           SET ENABLED = \'YES\'\n         WHERE NAME NOT LIKE \'%\\_history\'\n               AND NAME NOT LIKE \'events_wait%\'\n               AND NAME NOT LIKE \'events_transactions%\'\n               AND NAME <> \'statements_digest\';\n        UPDATE performance_schema.setup_instruments\n           SET ENABLED = \'YES\',\n               TIMED   = \'YES\'\n         WHERE NAME LIKE \'statement/%\' OR NAME LIKE \'stage/%\';\n    END IF;\n    WHILE v_runtime < in_runtime DO\n        SELECT UNIX_TIMESTAMP() INTO v_start;\n        INSERT IGNORE INTO stmt_trace\n        SELECT thread_id, timer_start, event_id, sql_text, timer_wait, lock_time, errors, mysql_errno,\n               rows_sent, rows_affected, rows_examined, created_tmp_tables, created_tmp_disk_tables, no_index_used\n          FROM performance_schema.events_statements_history_long\n        WHERE digest = in_digest;\n        INSERT IGNORE INTO stmt_stages\n        SELECT stages.event_id, stmt_trace.event_id,\n               stages.event_name, stages.timer_wait\n          FROM performance_schema.events_stages_history_long AS stages\n          JOIN stmt_trace ON stages.nesting_event_id = stmt_trace.event_id;\n        SELECT SLEEP(in_interval) INTO @sleep;\n        SET v_runtime = v_runtime + (UNIX_TIMESTAMP() - v_start);\n    END WHILE;\n    SELECT \"SUMMARY STATISTICS\";\n    SELECT COUNT(*) executions,\n           sys.format_time(SUM(timer_wait)) AS exec_time,\n           sys.format_time(SUM(lock_time)) AS lock_time,\n           SUM(rows_sent) AS rows_sent,\n           SUM(rows_affected) AS rows_affected,\n           SUM(rows_examined) AS rows_examined,\n           SUM(created_tmp_tables) AS tmp_tables,\n           SUM(no_index_used) AS full_scans\n      FROM stmt_trace;\n    SELECT event_name,\n           COUNT(*) as count,\n           sys.format_time(SUM(timer_wait)) as latency\n      FROM stmt_stages\n     GROUP BY event_name\n     ORDER BY SUM(timer_wait) DESC;\n    SELECT \"LONGEST RUNNING STATEMENT\";\n    SELECT thread_id,\n           sys.format_time(timer_wait) AS exec_time,\n           sys.format_time(lock_time) AS lock_time,\n           rows_sent,\n           rows_affected,\n           rows_examined,\n           created_tmp_tables AS tmp_tables,\n           no_index_used AS full_scan\n      FROM stmt_trace\n     ORDER BY timer_wait DESC LIMIT 1;\n    SELECT sql_text\n      FROM stmt_trace\n     ORDER BY timer_wait DESC LIMIT 1;\n    SELECT sql_text, event_id INTO @sql, @sql_id\n      FROM stmt_trace\n    ORDER BY timer_wait DESC LIMIT 1;\n    IF (@sql_id IS NOT NULL) THEN\n        SELECT event_name,\n               sys.format_time(timer_wait) as latency\n          FROM stmt_stages\n         WHERE stmt_id = @sql_id\n         ORDER BY event_id;\n    END IF;\n    DROP TEMPORARY TABLE stmt_trace;\n    DROP TEMPORARY TABLE stmt_stages;\n    IF (@sql IS NOT NULL) THEN\n        SET @stmt := CONCAT(\"EXPLAIN FORMAT=JSON \", @sql);\n        BEGIN\n            DECLARE CONTINUE HANDLER FOR 1064, 1146 SET v_explain = false;\n            PREPARE explain_stmt FROM @stmt;\n        END;\n        IF (v_explain) THEN\n            EXECUTE explain_stmt;\n            DEALLOCATE PREPARE explain_stmt;\n        END IF;\n    END IF;\n    IF v_auto_enable THEN\n        CALL sys.ps_setup_reload_saved();\n    END IF;\n    IF (v_this_thread_enabed = \'YES\') THEN\n        CALL sys.ps_setup_enable_thread(CONNECTION_ID());\n    END IF;\n    SET sql_log_bin = @log_bin;\nEND','NONE'),('sys','ps_trace_thread','PROCEDURE','ps_trace_thread','SQL','MODIFIES_SQL_DATA','NO','INVOKER','\n        IN in_thread_id BIGINT UNSIGNED,\n        IN in_outfile VARCHAR(255),\n        IN in_max_runtime DECIMAL(20,2),\n        IN in_interval DECIMAL(20,2),\n        IN in_start_fresh BOOLEAN,\n        IN in_auto_setup BOOLEAN,\n        IN in_debug BOOLEAN\n    ','','BEGIN\n    DECLARE v_done bool DEFAULT FALSE;\n    DECLARE v_start, v_runtime DECIMAL(20,2) DEFAULT 0.0;\n    DECLARE v_min_event_id bigint unsigned DEFAULT 0;\n    DECLARE v_this_thread_enabed ENUM(\'YES\', \'NO\');\n    DECLARE v_event longtext;\n    DECLARE c_stack CURSOR FOR\n        SELECT CONCAT(IF(nesting_event_id IS NOT NULL, CONCAT(nesting_event_id, \' -> \'), \'\'),\n                    event_id, \'; \', event_id, \' [label=\"\',\n                    \'(\', sys.format_time(timer_wait), \') \',\n                    IF (event_name NOT LIKE \'wait/io%\',\n                        SUBSTRING_INDEX(event_name, \'/\', -2),\n                        IF (event_name NOT LIKE \'wait/io/file%\' OR event_name NOT LIKE \'wait/io/socket%\',\n                            SUBSTRING_INDEX(event_name, \'/\', -4),\n                            event_name)\n                        ),\n                    IF (event_name LIKE \'statement/%\', IFNULL(CONCAT(\'\\\\n\', wait_info), \'\'), \'\'),\n                    IF (in_debug AND event_name LIKE \'wait%\', wait_info, \'\'),\n                    \'\", \',\n                    CASE WHEN event_name LIKE \'wait/io/file%\' THEN\n                           \'shape=box, style=filled, color=red\'\n                         WHEN event_name LIKE \'wait/io/table%\' THEN\n                           \'shape=box, style=filled, color=green\'\n                         WHEN event_name LIKE \'wait/io/socket%\' THEN\n                           \'shape=box, style=filled, color=yellow\'\n                         WHEN event_name LIKE \'wait/synch/mutex%\' THEN\n                           \'style=filled, color=lightskyblue\'\n                         WHEN event_name LIKE \'wait/synch/cond%\' THEN\n                           \'style=filled, color=darkseagreen3\'\n                         WHEN event_name LIKE \'wait/synch/rwlock%\' THEN\n                           \'style=filled, color=orchid\'\n                         WHEN event_name LIKE \'wait/lock%\' THEN\n                           \'shape=box, style=filled, color=tan\'\n                         WHEN event_name LIKE \'statement/%\' THEN\n                           CONCAT(\'shape=box, style=bold\',\n                                  CASE WHEN event_name LIKE \'statement/com/%\' THEN\n                                         \' style=filled, color=darkseagreen\'\n                                       ELSE\n                                         IF((timer_wait/1000000000000) > @@long_query_time,\n                                            \' style=filled, color=red\',\n                                            \' style=filled, color=lightblue\')\n                                  END\n                           )\n                         WHEN event_name LIKE \'stage/%\' THEN\n                           \'style=filled, color=slategray3\'\n                         WHEN event_name LIKE \'%idle%\' THEN\n                           \'shape=box, style=filled, color=firebrick3\'\n                         ELSE \'\' END,\n                     \'];\\n\'\n                   ) event, event_id\n        FROM (\n             (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id,\n                     CONCAT(sql_text, \'\\\\n\',\n                            \'errors: \', errors, \'\\\\n\',\n                            \'warnings: \', warnings, \'\\\\n\',\n                            \'lock time: \', sys.format_time(lock_time),\'\\\\n\',\n                            \'rows affected: \', rows_affected, \'\\\\n\',\n                            \'rows sent: \', rows_sent, \'\\\\n\',\n                            \'rows examined: \', rows_examined, \'\\\\n\',\n                            \'tmp tables: \', created_tmp_tables, \'\\\\n\',\n                            \'tmp disk tables: \', created_tmp_disk_tables, \'\\\\n\'\n                            \'select scan: \', select_scan, \'\\\\n\',\n                            \'select full join: \', select_full_join, \'\\\\n\',\n                            \'select full range join: \', select_full_range_join, \'\\\\n\',\n                            \'select range: \', select_range, \'\\\\n\',\n                            \'select range check: \', select_range_check, \'\\\\n\',\n                            \'sort merge passes: \', sort_merge_passes, \'\\\\n\',\n                            \'sort rows: \', sort_rows, \'\\\\n\',\n                            \'sort range: \', sort_range, \'\\\\n\',\n                            \'sort scan: \', sort_scan, \'\\\\n\',\n                            \'no index used: \', IF(no_index_used, \'TRUE\', \'FALSE\'), \'\\\\n\',\n                            \'no good index used: \', IF(no_good_index_used, \'TRUE\', \'FALSE\'), \'\\\\n\'\n                     ) AS wait_info\n                FROM performance_schema.events_statements_history_long\n               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)\n             UNION\n             (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, null AS wait_info\n                FROM performance_schema.events_stages_history_long\n               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)\n             UNION\n             (SELECT thread_id, event_id,\n                     CONCAT(event_name,\n                            IF(event_name NOT LIKE \'wait/synch/mutex%\', IFNULL(CONCAT(\' - \', operation), \'\'), \'\'),\n                            IF(number_of_bytes IS NOT NULL, CONCAT(\' \', number_of_bytes, \' bytes\'), \'\'),\n                            IF(event_name LIKE \'wait/io/file%\', \'\\\\n\', \'\'),\n                            IF(object_schema IS NOT NULL, CONCAT(\'\\\\nObject: \', object_schema, \'.\'), \'\'),\n                            IF(object_name IS NOT NULL,\n                               IF (event_name LIKE \'wait/io/socket%\',\n                                   CONCAT(\'\\\\n\', IF (object_name LIKE \':0%\', @@socket, object_name)),\n                                   object_name),\n                               \'\'\n                            ),\n                            IF(index_name IS NOT NULL, CONCAT(\' Index: \', index_name), \'\'), \'\\\\n\'\n                     ) AS event_name,\n                     timer_wait, timer_start, nesting_event_id, source AS wait_info\n                FROM performance_schema.events_waits_history_long\n               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)\n           ) events\n       ORDER BY event_id;\n    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;\n    SET @log_bin := @@sql_log_bin;\n    SET sql_log_bin = 0;\n    SELECT INSTRUMENTED INTO v_this_thread_enabed FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();\n    CALL sys.ps_setup_disable_thread(CONNECTION_ID());\n    IF (in_auto_setup) THEN\n        CALL sys.ps_setup_save(0);\n        DELETE FROM performance_schema.setup_actors;\n        UPDATE performance_schema.threads\n           SET INSTRUMENTED = IF(THREAD_ID = in_thread_id, \'YES\', \'NO\');\n        UPDATE performance_schema.setup_consumers\n           SET ENABLED = \'YES\'\n         WHERE NAME NOT LIKE \'%\\_history\';\n        UPDATE performance_schema.setup_instruments\n           SET ENABLED = \'YES\',\n               TIMED   = \'YES\';\n    END IF;\n    IF (in_start_fresh) THEN\n        TRUNCATE performance_schema.events_statements_history_long;\n        TRUNCATE performance_schema.events_stages_history_long;\n        TRUNCATE performance_schema.events_waits_history_long;\n    END IF;\n    DROP TEMPORARY TABLE IF EXISTS tmp_events;\n    CREATE TEMPORARY TABLE tmp_events (\n      event_id bigint unsigned NOT NULL,\n      event longblob,\n      PRIMARY KEY (event_id)\n    );\n    INSERT INTO tmp_events VALUES (0, CONCAT(\'digraph events { rankdir=LR; nodesep=0.10;\\n\',\n                                             \'// Stack created .....: \', NOW(), \'\\n\',\n                                             \'// MySQL version .....: \', VERSION(), \'\\n\',\n                                             \'// MySQL hostname ....: \', @@hostname, \'\\n\',\n                                             \'// MySQL port ........: \', @@port, \'\\n\',\n                                             \'// MySQL socket ......: \', @@socket, \'\\n\',\n                                             \'// MySQL user ........: \', CURRENT_USER(), \'\\n\'));\n    SELECT CONCAT(\'Data collection starting for THREAD_ID = \', in_thread_id) AS \'Info\';\n    SET v_min_event_id = 0,\n        v_start        = UNIX_TIMESTAMP(),\n        in_interval    = IFNULL(in_interval, 1.00),\n        in_max_runtime = IFNULL(in_max_runtime, 60.00);\n    WHILE (v_runtime < in_max_runtime\n           AND (SELECT INSTRUMENTED FROM performance_schema.threads WHERE THREAD_ID = in_thread_id) = \'YES\') DO\n        SET v_done = FALSE;\n        OPEN c_stack;\n        c_stack_loop: LOOP\n            FETCH c_stack INTO v_event, v_min_event_id;\n            IF v_done THEN\n                LEAVE c_stack_loop;\n            END IF;\n            IF (LENGTH(v_event) > 0) THEN\n                INSERT INTO tmp_events VALUES (v_min_event_id, v_event);\n            END IF;\n        END LOOP;\n        CLOSE c_stack;\n        SELECT SLEEP(in_interval) INTO @sleep;\n        SET v_runtime = (UNIX_TIMESTAMP() - v_start);\n    END WHILE;\n    INSERT INTO tmp_events VALUES (v_min_event_id+1, \'}\');\n    SET @query = CONCAT(\'SELECT event FROM tmp_events ORDER BY event_id INTO OUTFILE \'\'\', in_outfile, \'\'\' FIELDS ESCAPED BY \'\'\'\' LINES TERMINATED BY \'\'\'\'\');\n    PREPARE stmt_output FROM @query;\n    EXECUTE stmt_output;\n    DEALLOCATE PREPARE stmt_output;\n    SELECT CONCAT(\'Stack trace written to \', in_outfile) AS \'Info\';\n    SELECT CONCAT(\'dot -Tpdf -o /tmp/stack_\', in_thread_id, \'.pdf \', in_outfile) AS \'Convert to PDF\';\n    SELECT CONCAT(\'dot -Tpng -o /tmp/stack_\', in_thread_id, \'.png \', in_outfile) AS \'Convert to PNG\';\n    DROP TEMPORARY TABLE tmp_events;\n    IF (in_auto_setup) THEN\n        CALL sys.ps_setup_reload_saved();\n    END IF;\n    IF (v_this_thread_enabed = \'YES\') THEN\n        CALL sys.ps_setup_enable_thread(CONNECTION_ID());\n    END IF;\n    SET sql_log_bin = @log_bin;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Dumps all data within Performance Schema for an instrumented thread,\n             to create a DOT formatted graph file.\n             Each resultset returned from the procedure should be used for a complete graph\n             Requires the SUPER privilege for \"SET sql_log_bin = 0;\".\n             Parameters\n             in_thread_id (BIGINT UNSIGNED):\n               The thread that you would like a stack trace for\n             in_outfile  (VARCHAR(255)):\n               The filename the dot file will be written to\n             in_max_runtime (DECIMAL(20,2)):\n               The maximum time to keep collecting data.\n               Use NULL to get the default which is 60 seconds.\n             in_interval (DECIMAL(20,2)):\n               How long to sleep between data collections.\n               Use NULL to get the default which is 1 second.\n             in_start_fresh (BOOLEAN):\n               Whether to reset all Performance Schema data before tracing.\n             in_auto_setup (BOOLEAN):\n               Whether to disable all other threads and enable all consumers/instruments.\n               This will also reset the settings at the end of the run.\n             in_debug (BOOLEAN):\n               Whether you would like to include file:lineno in the graph\n             Example\n             mysql> CALL sys.ps_trace_thread(25, CONCAT(\'/tmp/stack-\', REPLACE(NOW(), \' \', \'-\'), \'.dot\'), NULL, NULL, TRUE, TRUE, TRUE);\n             +-------------------+\n             | summary           |\n             +-------------------+\n             | Disabled 1 thread |\n             +-------------------+\n             1 row in set (0.00 sec)\n             +---------------------------------------------+\n             | Info                                        |\n             +---------------------------------------------+\n             | Data collection starting for THREAD_ID = 25 |\n             +---------------------------------------------+\n             1 row in set (0.03 sec)\n             +-----------------------------------------------------------+\n             | Info                                                      |\n             +-----------------------------------------------------------+\n             | Stack trace written to /tmp/stack-2014-02-16-21:18:41.dot |\n             +-----------------------------------------------------------+\n             1 row in set (60.07 sec)\n             +-------------------------------------------------------------------+\n             | Convert to PDF                                                    |\n             +-------------------------------------------------------------------+\n             | dot -Tpdf -o /tmp/stack_25.pdf /tmp/stack-2014-02-16-21:18:41.dot |\n             +-------------------------------------------------------------------+\n             1 row in set (60.07 sec)\n             +-------------------------------------------------------------------+\n             | Convert to PNG                                                    |\n             +-------------------------------------------------------------------+\n             | dot -Tpng -o /tmp/stack_25.png /tmp/stack-2014-02-16-21:18:41.dot |\n             +-------------------------------------------------------------------+\n             1 row in set (60.07 sec)\n             +------------------+\n             | summary          |\n             +------------------+\n             | Enabled 1 thread |\n             +------------------+\n             1 row in set (60.32 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    DECLARE v_done bool DEFAULT FALSE;\n    DECLARE v_start, v_runtime DECIMAL(20,2) DEFAULT 0.0;\n    DECLARE v_min_event_id bigint unsigned DEFAULT 0;\n    DECLARE v_this_thread_enabed ENUM(\'YES\', \'NO\');\n    DECLARE v_event longtext;\n    DECLARE c_stack CURSOR FOR\n        SELECT CONCAT(IF(nesting_event_id IS NOT NULL, CONCAT(nesting_event_id, \' -> \'), \'\'),\n                    event_id, \'; \', event_id, \' [label=\"\',\n                    \'(\', sys.format_time(timer_wait), \') \',\n                    IF (event_name NOT LIKE \'wait/io%\',\n                        SUBSTRING_INDEX(event_name, \'/\', -2),\n                        IF (event_name NOT LIKE \'wait/io/file%\' OR event_name NOT LIKE \'wait/io/socket%\',\n                            SUBSTRING_INDEX(event_name, \'/\', -4),\n                            event_name)\n                        ),\n                    IF (event_name LIKE \'statement/%\', IFNULL(CONCAT(\'\\n\', wait_info), \'\'), \'\'),\n                    IF (in_debug AND event_name LIKE \'wait%\', wait_info, \'\'),\n                    \'\", \',\n                    CASE WHEN event_name LIKE \'wait/io/file%\' THEN\n                           \'shape=box, style=filled, color=red\'\n                         WHEN event_name LIKE \'wait/io/table%\' THEN\n                           \'shape=box, style=filled, color=green\'\n                         WHEN event_name LIKE \'wait/io/socket%\' THEN\n                           \'shape=box, style=filled, color=yellow\'\n                         WHEN event_name LIKE \'wait/synch/mutex%\' THEN\n                           \'style=filled, color=lightskyblue\'\n                         WHEN event_name LIKE \'wait/synch/cond%\' THEN\n                           \'style=filled, color=darkseagreen3\'\n                         WHEN event_name LIKE \'wait/synch/rwlock%\' THEN\n                           \'style=filled, color=orchid\'\n                         WHEN event_name LIKE \'wait/lock%\' THEN\n                           \'shape=box, style=filled, color=tan\'\n                         WHEN event_name LIKE \'statement/%\' THEN\n                           CONCAT(\'shape=box, style=bold\',\n                                  CASE WHEN event_name LIKE \'statement/com/%\' THEN\n                                         \' style=filled, color=darkseagreen\'\n                                       ELSE\n                                         IF((timer_wait/1000000000000) > @@long_query_time,\n                                            \' style=filled, color=red\',\n                                            \' style=filled, color=lightblue\')\n                                  END\n                           )\n                         WHEN event_name LIKE \'stage/%\' THEN\n                           \'style=filled, color=slategray3\'\n                         WHEN event_name LIKE \'%idle%\' THEN\n                           \'shape=box, style=filled, color=firebrick3\'\n                         ELSE \'\' END,\n                     \'];\\n\'\n                   ) event, event_id\n        FROM (\n             (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id,\n                     CONCAT(sql_text, \'\\n\',\n                            \'errors: \', errors, \'\\n\',\n                            \'warnings: \', warnings, \'\\n\',\n                            \'lock time: \', sys.format_time(lock_time),\'\\n\',\n                            \'rows affected: \', rows_affected, \'\\n\',\n                            \'rows sent: \', rows_sent, \'\\n\',\n                            \'rows examined: \', rows_examined, \'\\n\',\n                            \'tmp tables: \', created_tmp_tables, \'\\n\',\n                            \'tmp disk tables: \', created_tmp_disk_tables, \'\\n\'\n                            \'select scan: \', select_scan, \'\\n\',\n                            \'select full join: \', select_full_join, \'\\n\',\n                            \'select full range join: \', select_full_range_join, \'\\n\',\n                            \'select range: \', select_range, \'\\n\',\n                            \'select range check: \', select_range_check, \'\\n\',\n                            \'sort merge passes: \', sort_merge_passes, \'\\n\',\n                            \'sort rows: \', sort_rows, \'\\n\',\n                            \'sort range: \', sort_range, \'\\n\',\n                            \'sort scan: \', sort_scan, \'\\n\',\n                            \'no index used: \', IF(no_index_used, \'TRUE\', \'FALSE\'), \'\\n\',\n                            \'no good index used: \', IF(no_good_index_used, \'TRUE\', \'FALSE\'), \'\\n\'\n                     ) AS wait_info\n                FROM performance_schema.events_statements_history_long\n               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)\n             UNION\n             (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, null AS wait_info\n                FROM performance_schema.events_stages_history_long\n               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)\n             UNION\n             (SELECT thread_id, event_id,\n                     CONCAT(event_name,\n                            IF(event_name NOT LIKE \'wait/synch/mutex%\', IFNULL(CONCAT(\' - \', operation), \'\'), \'\'),\n                            IF(number_of_bytes IS NOT NULL, CONCAT(\' \', number_of_bytes, \' bytes\'), \'\'),\n                            IF(event_name LIKE \'wait/io/file%\', \'\\n\', \'\'),\n                            IF(object_schema IS NOT NULL, CONCAT(\'\\nObject: \', object_schema, \'.\'), \'\'),\n                            IF(object_name IS NOT NULL,\n                               IF (event_name LIKE \'wait/io/socket%\',\n                                   CONCAT(\'\\n\', IF (object_name LIKE \':0%\', @@socket, object_name)),\n                                   object_name),\n                               \'\'\n                            ),\n                            IF(index_name IS NOT NULL, CONCAT(\' Index: \', index_name), \'\'), \'\\n\'\n                     ) AS event_name,\n                     timer_wait, timer_start, nesting_event_id, source AS wait_info\n                FROM performance_schema.events_waits_history_long\n               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)\n           ) events\n       ORDER BY event_id;\n    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;\n    SET @log_bin := @@sql_log_bin;\n    SET sql_log_bin = 0;\n    SELECT INSTRUMENTED INTO v_this_thread_enabed FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();\n    CALL sys.ps_setup_disable_thread(CONNECTION_ID());\n    IF (in_auto_setup) THEN\n        CALL sys.ps_setup_save(0);\n        DELETE FROM performance_schema.setup_actors;\n        UPDATE performance_schema.threads\n           SET INSTRUMENTED = IF(THREAD_ID = in_thread_id, \'YES\', \'NO\');\n        UPDATE performance_schema.setup_consumers\n           SET ENABLED = \'YES\'\n         WHERE NAME NOT LIKE \'%\\_history\';\n        UPDATE performance_schema.setup_instruments\n           SET ENABLED = \'YES\',\n               TIMED   = \'YES\';\n    END IF;\n    IF (in_start_fresh) THEN\n        TRUNCATE performance_schema.events_statements_history_long;\n        TRUNCATE performance_schema.events_stages_history_long;\n        TRUNCATE performance_schema.events_waits_history_long;\n    END IF;\n    DROP TEMPORARY TABLE IF EXISTS tmp_events;\n    CREATE TEMPORARY TABLE tmp_events (\n      event_id bigint unsigned NOT NULL,\n      event longblob,\n      PRIMARY KEY (event_id)\n    );\n    INSERT INTO tmp_events VALUES (0, CONCAT(\'digraph events { rankdir=LR; nodesep=0.10;\\n\',\n                                             \'// Stack created .....: \', NOW(), \'\\n\',\n                                             \'// MySQL version .....: \', VERSION(), \'\\n\',\n                                             \'// MySQL hostname ....: \', @@hostname, \'\\n\',\n                                             \'// MySQL port ........: \', @@port, \'\\n\',\n                                             \'// MySQL socket ......: \', @@socket, \'\\n\',\n                                             \'// MySQL user ........: \', CURRENT_USER(), \'\\n\'));\n    SELECT CONCAT(\'Data collection starting for THREAD_ID = \', in_thread_id) AS \'Info\';\n    SET v_min_event_id = 0,\n        v_start        = UNIX_TIMESTAMP(),\n        in_interval    = IFNULL(in_interval, 1.00),\n        in_max_runtime = IFNULL(in_max_runtime, 60.00);\n    WHILE (v_runtime < in_max_runtime\n           AND (SELECT INSTRUMENTED FROM performance_schema.threads WHERE THREAD_ID = in_thread_id) = \'YES\') DO\n        SET v_done = FALSE;\n        OPEN c_stack;\n        c_stack_loop: LOOP\n            FETCH c_stack INTO v_event, v_min_event_id;\n            IF v_done THEN\n                LEAVE c_stack_loop;\n            END IF;\n            IF (LENGTH(v_event) > 0) THEN\n                INSERT INTO tmp_events VALUES (v_min_event_id, v_event);\n            END IF;\n        END LOOP;\n        CLOSE c_stack;\n        SELECT SLEEP(in_interval) INTO @sleep;\n        SET v_runtime = (UNIX_TIMESTAMP() - v_start);\n    END WHILE;\n    INSERT INTO tmp_events VALUES (v_min_event_id+1, \'}\');\n    SET @query = CONCAT(\'SELECT event FROM tmp_events ORDER BY event_id INTO OUTFILE \'\'\', in_outfile, \'\'\' FIELDS ESCAPED BY \'\'\'\' LINES TERMINATED BY \'\'\'\'\');\n    PREPARE stmt_output FROM @query;\n    EXECUTE stmt_output;\n    DEALLOCATE PREPARE stmt_output;\n    SELECT CONCAT(\'Stack trace written to \', in_outfile) AS \'Info\';\n    SELECT CONCAT(\'dot -Tpdf -o /tmp/stack_\', in_thread_id, \'.pdf \', in_outfile) AS \'Convert to PDF\';\n    SELECT CONCAT(\'dot -Tpng -o /tmp/stack_\', in_thread_id, \'.png \', in_outfile) AS \'Convert to PNG\';\n    DROP TEMPORARY TABLE tmp_events;\n    IF (in_auto_setup) THEN\n        CALL sys.ps_setup_reload_saved();\n    END IF;\n    IF (v_this_thread_enabed = \'YES\') THEN\n        CALL sys.ps_setup_enable_thread(CONNECTION_ID());\n    END IF;\n    SET sql_log_bin = @log_bin;\nEND','NONE'),('sys','ps_setup_reset_to_default','PROCEDURE','ps_setup_reset_to_default','SQL','MODIFIES_SQL_DATA','NO','INVOKER','\n       IN in_verbose BOOLEAN\n    ','','BEGIN\n    SET @query = \'DELETE\n                    FROM performance_schema.setup_actors\n                   WHERE NOT (HOST = \'\'%\'\' AND USER = \'\'%\'\' AND ROLE = \'\'%\'\')\';\n    IF (in_verbose) THEN\n        SELECT CONCAT(\'Resetting: setup_actors\\n\', REPLACE(@query, \'  \', \'\')) AS status;\n    END IF;\n    PREPARE reset_stmt FROM @query;\n    EXECUTE reset_stmt;\n    DEALLOCATE PREPARE reset_stmt;\n    SET @query = \'INSERT IGNORE INTO performance_schema.setup_actors\n                  VALUES (\'\'%\'\', \'\'%\'\', \'\'%\'\', \'\'YES\'\', \'\'YES\'\')\';\n    IF (in_verbose) THEN\n        SELECT CONCAT(\'Resetting: setup_actors\\n\', REPLACE(@query, \'  \', \'\')) AS status;\n    END IF;\n    PREPARE reset_stmt FROM @query;\n    EXECUTE reset_stmt;\n    DEALLOCATE PREPARE reset_stmt;\n    SET @query = \'UPDATE performance_schema.setup_instruments\n                     SET ENABLED = sys.ps_is_instrument_default_enabled(NAME),\n                         TIMED   = sys.ps_is_instrument_default_timed(NAME)\';\n    IF (in_verbose) THEN\n        SELECT CONCAT(\'Resetting: setup_instruments\\n\', REPLACE(@query, \'  \', \'\')) AS status;\n    END IF;\n    PREPARE reset_stmt FROM @query;\n    EXECUTE reset_stmt;\n    DEALLOCATE PREPARE reset_stmt;\n    SET @query = \'UPDATE performance_schema.setup_consumers\n                     SET ENABLED = IF(NAME IN (\'\'events_statements_current\'\', \'\'events_transactions_current\'\', \'\'global_instrumentation\'\', \'\'thread_instrumentation\'\', \'\'statements_digest\'\'), \'\'YES\'\', \'\'NO\'\')\';\n    IF (in_verbose) THEN\n        SELECT CONCAT(\'Resetting: setup_consumers\\n\', REPLACE(@query, \'  \', \'\')) AS status;\n    END IF;\n    PREPARE reset_stmt FROM @query;\n    EXECUTE reset_stmt;\n    DEALLOCATE PREPARE reset_stmt;\n    SET @query = \'DELETE\n                    FROM performance_schema.setup_objects\n                   WHERE NOT (OBJECT_TYPE IN (\'\'EVENT\'\', \'\'FUNCTION\'\', \'\'PROCEDURE\'\', \'\'TABLE\'\', \'\'TRIGGER\'\') AND OBJECT_NAME = \'\'%\'\'\n                     AND (OBJECT_SCHEMA = \'\'mysql\'\'              AND ENABLED = \'\'NO\'\'  AND TIMED = \'\'NO\'\' )\n                      OR (OBJECT_SCHEMA = \'\'performance_schema\'\' AND ENABLED = \'\'NO\'\'  AND TIMED = \'\'NO\'\' )\n                      OR (OBJECT_SCHEMA = \'\'information_schema\'\' AND ENABLED = \'\'NO\'\'  AND TIMED = \'\'NO\'\' )\n                      OR (OBJECT_SCHEMA = \'\'%\'\'                  AND ENABLED = \'\'YES\'\' AND TIMED = \'\'YES\'\'))\';\n    IF (in_verbose) THEN\n        SELECT CONCAT(\'Resetting: setup_objects\\n\', REPLACE(@query, \'  \', \'\')) AS status;\n    END IF;\n    PREPARE reset_stmt FROM @query;\n    EXECUTE reset_stmt;\n    DEALLOCATE PREPARE reset_stmt;\n    SET @query = \'INSERT IGNORE INTO performance_schema.setup_objects\n                  VALUES (\'\'EVENT\'\'    , \'\'mysql\'\'             , \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\n                         (\'\'EVENT\'\'    , \'\'performance_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\n                         (\'\'EVENT\'\'    , \'\'information_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\n                         (\'\'EVENT\'\'    , \'\'%\'\'                 , \'\'%\'\', \'\'YES\'\', \'\'YES\'\'),\n                         (\'\'FUNCTION\'\' , \'\'mysql\'\'             , \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\n                         (\'\'FUNCTION\'\' , \'\'performance_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\n                         (\'\'FUNCTION\'\' , \'\'information_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\n                         (\'\'FUNCTION\'\' , \'\'%\'\'                 , \'\'%\'\', \'\'YES\'\', \'\'YES\'\'),\n                         (\'\'PROCEDURE\'\', \'\'mysql\'\'             , \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\n                         (\'\'PROCEDURE\'\', \'\'performance_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\n                         (\'\'PROCEDURE\'\', \'\'information_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\n                         (\'\'PROCEDURE\'\', \'\'%\'\'                 , \'\'%\'\', \'\'YES\'\', \'\'YES\'\'),\n                         (\'\'TABLE\'\'    , \'\'mysql\'\'             , \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\n                         (\'\'TABLE\'\'    , \'\'performance_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\n                         (\'\'TABLE\'\'    , \'\'information_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\n                         (\'\'TABLE\'\'    , \'\'%\'\'                 , \'\'%\'\', \'\'YES\'\', \'\'YES\'\'),\n                         (\'\'TRIGGER\'\'  , \'\'mysql\'\'             , \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\n                         (\'\'TRIGGER\'\'  , \'\'performance_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\n                         (\'\'TRIGGER\'\'  , \'\'information_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\n                         (\'\'TRIGGER\'\'  , \'\'%\'\'                 , \'\'%\'\', \'\'YES\'\', \'\'YES\'\')\';\n    IF (in_verbose) THEN\n        SELECT CONCAT(\'Resetting: setup_objects\\n\', REPLACE(@query, \'  \', \'\')) AS status;\n    END IF;\n    PREPARE reset_stmt FROM @query;\n    EXECUTE reset_stmt;\n    DEALLOCATE PREPARE reset_stmt;\n    SET @query = \'UPDATE performance_schema.threads\n                     SET INSTRUMENTED = \'\'YES\'\'\';\n    IF (in_verbose) THEN\n        SELECT CONCAT(\'Resetting: threads\\n\', REPLACE(@query, \'  \', \'\')) AS status;\n    END IF;\n    PREPARE reset_stmt FROM @query;\n    EXECUTE reset_stmt;\n    DEALLOCATE PREPARE reset_stmt;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Resets the Performance Schema setup to the default settings.\n             Parameters\n             in_verbose (BOOLEAN):\n               Whether to print each setup stage (including the SQL) whilst running.\n             Example\n             mysql> CALL sys.ps_setup_reset_to_default(true)\\G\n             *************************** 1. row ***************************\n             status: Resetting: setup_actors\n             DELETE\n             FROM performance_schema.setup_actors\n              WHERE NOT (HOST = \'%\' AND USER = \'%\' AND ROLE = \'%\')\n             1 row in set (0.00 sec)\n             *************************** 1. row ***************************\n             status: Resetting: setup_actors\n             INSERT IGNORE INTO performance_schema.setup_actors\n             VALUES (\'%\', \'%\', \'%\')\n             1 row in set (0.00 sec)\n             ...\n             mysql> CALL sys.ps_setup_reset_to_default(false)\\G\n             Query OK, 0 rows affected (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    SET @query = \'DELETE\\n                    FROM performance_schema.setup_actors\\n                   WHERE NOT (HOST = \'\'%\'\' AND USER = \'\'%\'\' AND ROLE = \'\'%\'\')\';\n    IF (in_verbose) THEN\n        SELECT CONCAT(\'Resetting: setup_actors\\n\', REPLACE(@query, \'  \', \'\')) AS status;\n    END IF;\n    PREPARE reset_stmt FROM @query;\n    EXECUTE reset_stmt;\n    DEALLOCATE PREPARE reset_stmt;\n    SET @query = \'INSERT IGNORE INTO performance_schema.setup_actors\\n                  VALUES (\'\'%\'\', \'\'%\'\', \'\'%\'\', \'\'YES\'\', \'\'YES\'\')\';\n    IF (in_verbose) THEN\n        SELECT CONCAT(\'Resetting: setup_actors\\n\', REPLACE(@query, \'  \', \'\')) AS status;\n    END IF;\n    PREPARE reset_stmt FROM @query;\n    EXECUTE reset_stmt;\n    DEALLOCATE PREPARE reset_stmt;\n    SET @query = \'UPDATE performance_schema.setup_instruments\\n                     SET ENABLED = sys.ps_is_instrument_default_enabled(NAME),\\n                         TIMED   = sys.ps_is_instrument_default_timed(NAME)\';\n    IF (in_verbose) THEN\n        SELECT CONCAT(\'Resetting: setup_instruments\\n\', REPLACE(@query, \'  \', \'\')) AS status;\n    END IF;\n    PREPARE reset_stmt FROM @query;\n    EXECUTE reset_stmt;\n    DEALLOCATE PREPARE reset_stmt;\n    SET @query = \'UPDATE performance_schema.setup_consumers\\n                     SET ENABLED = IF(NAME IN (\'\'events_statements_current\'\', \'\'events_transactions_current\'\', \'\'global_instrumentation\'\', \'\'thread_instrumentation\'\', \'\'statements_digest\'\'), \'\'YES\'\', \'\'NO\'\')\';\n    IF (in_verbose) THEN\n        SELECT CONCAT(\'Resetting: setup_consumers\\n\', REPLACE(@query, \'  \', \'\')) AS status;\n    END IF;\n    PREPARE reset_stmt FROM @query;\n    EXECUTE reset_stmt;\n    DEALLOCATE PREPARE reset_stmt;\n    SET @query = \'DELETE\\n                    FROM performance_schema.setup_objects\\n                   WHERE NOT (OBJECT_TYPE IN (\'\'EVENT\'\', \'\'FUNCTION\'\', \'\'PROCEDURE\'\', \'\'TABLE\'\', \'\'TRIGGER\'\') AND OBJECT_NAME = \'\'%\'\'\\n                     AND (OBJECT_SCHEMA = \'\'mysql\'\'              AND ENABLED = \'\'NO\'\'  AND TIMED = \'\'NO\'\' )\\n                      OR (OBJECT_SCHEMA = \'\'performance_schema\'\' AND ENABLED = \'\'NO\'\'  AND TIMED = \'\'NO\'\' )\\n                      OR (OBJECT_SCHEMA = \'\'information_schema\'\' AND ENABLED = \'\'NO\'\'  AND TIMED = \'\'NO\'\' )\\n                      OR (OBJECT_SCHEMA = \'\'%\'\'                  AND ENABLED = \'\'YES\'\' AND TIMED = \'\'YES\'\'))\';\n    IF (in_verbose) THEN\n        SELECT CONCAT(\'Resetting: setup_objects\\n\', REPLACE(@query, \'  \', \'\')) AS status;\n    END IF;\n    PREPARE reset_stmt FROM @query;\n    EXECUTE reset_stmt;\n    DEALLOCATE PREPARE reset_stmt;\n    SET @query = \'INSERT IGNORE INTO performance_schema.setup_objects\\n                  VALUES (\'\'EVENT\'\'    , \'\'mysql\'\'             , \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\\n                         (\'\'EVENT\'\'    , \'\'performance_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\\n                         (\'\'EVENT\'\'    , \'\'information_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\\n                         (\'\'EVENT\'\'    , \'\'%\'\'                 , \'\'%\'\', \'\'YES\'\', \'\'YES\'\'),\\n                         (\'\'FUNCTION\'\' , \'\'mysql\'\'             , \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\\n                         (\'\'FUNCTION\'\' , \'\'performance_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\\n                         (\'\'FUNCTION\'\' , \'\'information_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\\n                         (\'\'FUNCTION\'\' , \'\'%\'\'                 , \'\'%\'\', \'\'YES\'\', \'\'YES\'\'),\\n                         (\'\'PROCEDURE\'\', \'\'mysql\'\'             , \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\\n                         (\'\'PROCEDURE\'\', \'\'performance_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\\n                         (\'\'PROCEDURE\'\', \'\'information_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\\n                         (\'\'PROCEDURE\'\', \'\'%\'\'                 , \'\'%\'\', \'\'YES\'\', \'\'YES\'\'),\\n                         (\'\'TABLE\'\'    , \'\'mysql\'\'             , \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\\n                         (\'\'TABLE\'\'    , \'\'performance_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\\n                         (\'\'TABLE\'\'    , \'\'information_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\\n                         (\'\'TABLE\'\'    , \'\'%\'\'                 , \'\'%\'\', \'\'YES\'\', \'\'YES\'\'),\\n                         (\'\'TRIGGER\'\'  , \'\'mysql\'\'             , \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\\n                         (\'\'TRIGGER\'\'  , \'\'performance_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\\n                         (\'\'TRIGGER\'\'  , \'\'information_schema\'\', \'\'%\'\', \'\'NO\'\' , \'\'NO\'\' ),\\n                         (\'\'TRIGGER\'\'  , \'\'%\'\'                 , \'\'%\'\', \'\'YES\'\', \'\'YES\'\')\';\n    IF (in_verbose) THEN\n        SELECT CONCAT(\'Resetting: setup_objects\\n\', REPLACE(@query, \'  \', \'\')) AS status;\n    END IF;\n    PREPARE reset_stmt FROM @query;\n    EXECUTE reset_stmt;\n    DEALLOCATE PREPARE reset_stmt;\n    SET @query = \'UPDATE performance_schema.threads\\n                     SET INSTRUMENTED = \'\'YES\'\'\';\n    IF (in_verbose) THEN\n        SELECT CONCAT(\'Resetting: threads\\n\', REPLACE(@query, \'  \', \'\')) AS status;\n    END IF;\n    PREPARE reset_stmt FROM @query;\n    EXECUTE reset_stmt;\n    DEALLOCATE PREPARE reset_stmt;\nEND','NONE'),('sys','ps_setup_show_disabled_instruments','PROCEDURE','ps_setup_show_disabled_instruments','SQL','READS_SQL_DATA','YES','INVOKER','','','BEGIN\n    SELECT name AS disabled_instruments, timed\n      FROM performance_schema.setup_instruments\n     WHERE enabled = \'NO\'\n     ORDER BY disabled_instruments;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Shows all currently disabled instruments.\n             Parameters\n             None\n             Example\n             mysql> CALL sys.ps_setup_show_disabled_instruments();\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    SELECT name AS disabled_instruments, timed\n      FROM performance_schema.setup_instruments\n     WHERE enabled = \'NO\'\n     ORDER BY disabled_instruments;\nEND','NONE'),('sys','format_time','FUNCTION','format_time','SQL','NO_SQL','YES','INVOKER','picoseconds TEXT\n    ','text CHARSET utf8mb3','BEGIN\n  IF picoseconds IS NULL THEN RETURN NULL;\n  ELSEIF picoseconds >= 604800000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 604800000000000000, 2), \' w\');\n  ELSEIF picoseconds >= 86400000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 86400000000000000, 2), \' d\');\n  ELSEIF picoseconds >= 3600000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 3600000000000000, 2), \' h\');\n  ELSEIF picoseconds >= 60000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 60000000000000, 2), \' m\');\n  ELSEIF picoseconds >= 1000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000000000, 2), \' s\');\n  ELSEIF picoseconds >= 1000000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000000, 2), \' ms\');\n  ELSEIF picoseconds >= 1000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000, 2), \' us\');\n  ELSEIF picoseconds >= 1000 THEN RETURN CONCAT(ROUND(picoseconds / 1000, 2), \' ns\');\n  ELSE RETURN CONCAT(picoseconds, \' ps\');\n  END IF;\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Takes a raw picoseconds value, and converts it to a human readable form.\n             Picoseconds are the precision that all latency values are printed in\n             within Performance Schema, however are not user friendly when wanting\n             to scan output from the command line.\n             Parameters\n             picoseconds (TEXT):\n               The raw picoseconds value to convert.\n             Returns\n             TEXT\n             Example\n             mysql> select format_time(342342342342345);\n             +------------------------------+\n             | format_time(342342342342345) |\n             +------------------------------+\n             | 00:05:42                     |\n             +------------------------------+\n             1 row in set (0.00 sec)\n             mysql> select format_time(342342342);\n             +------------------------+\n             | format_time(342342342) |\n             +------------------------+\n             | 342.34 us              |\n             +------------------------+\n             1 row in set (0.00 sec)\n             mysql> select format_time(34234);\n              +--------------------+\n             | format_time(34234) |\n             +--------------------+\n             | 34.23 ns           |\n             +--------------------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n  IF picoseconds IS NULL THEN RETURN NULL;\n  ELSEIF picoseconds >= 604800000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 604800000000000000, 2), \' w\');\n  ELSEIF picoseconds >= 86400000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 86400000000000000, 2), \' d\');\n  ELSEIF picoseconds >= 3600000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 3600000000000000, 2), \' h\');\n  ELSEIF picoseconds >= 60000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 60000000000000, 2), \' m\');\n  ELSEIF picoseconds >= 1000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000000000, 2), \' s\');\n  ELSEIF picoseconds >= 1000000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000000, 2), \' ms\');\n  ELSEIF picoseconds >= 1000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000, 2), \' us\');\n  ELSEIF picoseconds >= 1000 THEN RETURN CONCAT(ROUND(picoseconds / 1000, 2), \' ns\');\n  ELSE RETURN CONCAT(picoseconds, \' ps\');\n  END IF;\nEND','NONE'),('sys','list_drop','FUNCTION','list_drop','SQL','CONTAINS_SQL','YES','INVOKER','in_list TEXT,\n        in_drop_value TEXT\n    ','text CHARSET utf8mb3','BEGIN\n    IF (in_drop_value IS NULL) THEN\n        SIGNAL SQLSTATE \'02200\'\n           SET MESSAGE_TEXT = \'Function sys.list_drop: in_drop_value input variable should not be NULL\',\n               MYSQL_ERRNO = 1138;\n    END IF;\n    IF (in_list IS NULL OR LENGTH(in_list) = 0) THEN\n        RETURN in_list;\n    END IF;\n    RETURN (SELECT TRIM(BOTH \',\' FROM REPLACE(REPLACE(CONCAT(\',\', in_list), CONCAT(\',\', in_drop_value), \'\'), CONCAT(\', \', in_drop_value), \'\')));\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Takes a list, and a value to attempt to remove from the list, and returns the resulting list.\n             Useful for altering certain session variables, like sql_mode or optimizer_switch for instance.\n             Parameters\n             in_list (TEXT):\n               The comma separated list to drop a value from\n             in_drop_value (TEXT):\n               The value to drop from the input list\n             Returns\n             TEXT\n             Example\n             mysql> select @@sql_mode;\n             +-----------------------------------------------------------------------------------------------+\n             | @@sql_mode                                                                                    |\n             +-----------------------------------------------------------------------------------------------+\n             | ANSI_QUOTES,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n             +-----------------------------------------------------------------------------------------------+\n             1 row in set (0.00 sec)\n             mysql> set sql_mode = sys.list_drop(@@sql_mode, \'ONLY_FULL_GROUP_BY\');\n             Query OK, 0 rows affected (0.03 sec)\n             mysql> select @@sql_mode;\n             +----------------------------------------------------------------------------+\n             | @@sql_mode                                                                 |\n             +----------------------------------------------------------------------------+\n             | ANSI_QUOTES,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n             +----------------------------------------------------------------------------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    IF (in_drop_value IS NULL) THEN\n        SIGNAL SQLSTATE \'02200\'\n           SET MESSAGE_TEXT = \'Function sys.list_drop: in_drop_value input variable should not be NULL\',\n               MYSQL_ERRNO = 1138;\n    END IF;\n    IF (in_list IS NULL OR LENGTH(in_list) = 0) THEN\n        RETURN in_list;\n    END IF;\n    RETURN (SELECT TRIM(BOTH \',\' FROM REPLACE(REPLACE(CONCAT(\',\', in_list), CONCAT(\',\', in_drop_value), \'\'), CONCAT(\', \', in_drop_value), \'\')));\nEND','NONE'),('sys','ps_setup_show_enabled_instruments','PROCEDURE','ps_setup_show_enabled_instruments','SQL','READS_SQL_DATA','YES','INVOKER','','','BEGIN\n    SELECT name AS enabled_instruments, timed\n      FROM performance_schema.setup_instruments\n     WHERE enabled = \'YES\'\n     ORDER BY enabled_instruments;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Shows all currently enabled instruments.\n             Parameters\n             None\n             Example\n             mysql> CALL sys.ps_setup_show_enabled_instruments();\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    SELECT name AS enabled_instruments, timed\n      FROM performance_schema.setup_instruments\n     WHERE enabled = \'YES\'\n     ORDER BY enabled_instruments;\nEND','NONE'),('sys','statement_performance_analyzer','PROCEDURE','statement_performance_analyzer','SQL','CONTAINS_SQL','NO','INVOKER','\n        IN in_action ENUM(\'snapshot\', \'overall\', \'delta\', \'create_table\', \'create_tmp\', \'save\', \'cleanup\'),\n        IN in_table VARCHAR(129),\n        IN in_views SET (\'with_runtimes_in_95th_percentile\', \'analysis\', \'with_errors_or_warnings\', \'with_full_table_scans\', \'with_sorting\', \'with_temp_tables\', \'custom\')\n    ','','BEGIN\n    DECLARE v_table_exists, v_tmp_digests_table_exists, v_custom_view_exists ENUM(\'\', \'BASE TABLE\', \'VIEW\', \'TEMPORARY\') DEFAULT \'\';\n    DECLARE v_this_thread_enabled ENUM(\'YES\', \'NO\');\n    DECLARE v_force_new_snapshot BOOLEAN DEFAULT FALSE;\n    DECLARE v_digests_table VARCHAR(133);\n    DECLARE v_quoted_table, v_quoted_custom_view VARCHAR(133) DEFAULT \'\';\n    DECLARE v_table_db, v_table_name, v_custom_db, v_custom_name VARCHAR(64);\n    DECLARE v_digest_table_template, v_checksum_ref, v_checksum_table text;\n    DECLARE v_sql longtext;\n    DECLARE v_error_msg VARCHAR(128);\n    SELECT INSTRUMENTED INTO v_this_thread_enabled FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();\n    IF (v_this_thread_enabled = \'YES\') THEN\n        CALL sys.ps_setup_disable_thread(CONNECTION_ID());\n    END IF;\n    SET @log_bin := @@sql_log_bin;\n    IF (@log_bin = 1) THEN\n        SET sql_log_bin = 0;\n    END IF;\n    IF (@sys.statement_performance_analyzer.limit IS NULL) THEN\n        SET @sys.statement_performance_analyzer.limit = sys.sys_get_config(\'statement_performance_analyzer.limit\', \'100\');\n    END IF;\n    IF (@sys.debug IS NULL) THEN\n        SET @sys.debug                                = sys.sys_get_config(\'debug\'                               , \'OFF\');\n    END IF;\n    IF (in_table = \'NOW()\') THEN\n        SET v_force_new_snapshot = TRUE,\n            in_table             = NULL;\n    ELSEIF (in_table IS NOT NULL) THEN\n        IF (NOT INSTR(in_table, \'.\')) THEN\n            SET v_table_db   = DATABASE(),\n                v_table_name = in_table;\n        ELSE\n            SET v_table_db   = SUBSTRING_INDEX(in_table, \'.\', 1);\n            SET v_table_name = SUBSTRING(in_table, CHAR_LENGTH(v_table_db)+2);\n        END IF;\n        SET v_quoted_table = CONCAT(\'`\', v_table_db, \'`.`\', v_table_name, \'`\');\n        IF (@sys.debug = \'ON\') THEN\n            SELECT CONCAT(\'in_table is: db = \'\'\', v_table_db, \'\'\', table = \'\'\', v_table_name, \'\'\'\') AS \'Debug\';\n        END IF;\n        IF (v_table_db = DATABASE() AND (v_table_name = \'tmp_digests\' OR v_table_name = \'tmp_digests_delta\')) THEN\n            SET v_error_msg = CONCAT(\'Invalid value for in_table: \', v_quoted_table, \' is reserved table name.\');\n            SIGNAL SQLSTATE \'45000\'\n               SET MESSAGE_TEXT = v_error_msg;\n        END IF;\n        CALL sys.table_exists(v_table_db, v_table_name, v_table_exists);\n        IF (@sys.debug = \'ON\') THEN\n            SELECT CONCAT(\'v_table_exists = \', v_table_exists) AS \'Debug\';\n        END IF;\n        IF (v_table_exists = \'BASE TABLE\') THEN\n            SET v_checksum_ref = (\n                 SELECT GROUP_CONCAT(CONCAT(COLUMN_NAME, COLUMN_TYPE) ORDER BY ORDINAL_POSITION) AS Checksum\n                   FROM information_schema.COLUMNS\n                  WHERE TABLE_SCHEMA = \'performance_schema\' AND TABLE_NAME = \'events_statements_summary_by_digest\'\n                ),\n                v_checksum_table = (\n                 SELECT GROUP_CONCAT(CONCAT(COLUMN_NAME, COLUMN_TYPE) ORDER BY ORDINAL_POSITION) AS Checksum\n                   FROM information_schema.COLUMNS\n                  WHERE TABLE_SCHEMA = v_table_db AND TABLE_NAME = v_table_name\n                );\n            IF (v_checksum_ref <> v_checksum_table) THEN\n                SET v_error_msg = CONCAT(\'The table \',\n                                         IF(CHAR_LENGTH(v_quoted_table) > 93, CONCAT(\'...\', SUBSTRING(v_quoted_table, -90)), v_quoted_table),\n                                         \' has the wrong definition.\');\n                SIGNAL SQLSTATE \'45000\'\n                   SET MESSAGE_TEXT = v_error_msg;\n            END IF;\n        END IF;\n    END IF;\n    IF (in_views IS NULL OR in_views = \'\') THEN\n        SET in_views = \'with_runtimes_in_95th_percentile,analysis,with_errors_or_warnings,with_full_table_scans,with_sorting,with_temp_tables\';\n    END IF;\n    CALL sys.table_exists(DATABASE(), \'tmp_digests\', v_tmp_digests_table_exists);\n    IF (@sys.debug = \'ON\') THEN\n        SELECT CONCAT(\'v_tmp_digests_table_exists = \', v_tmp_digests_table_exists) AS \'Debug\';\n    END IF;\n    CASE\n        WHEN in_action IN (\'snapshot\', \'overall\') THEN\n            IF (in_table IS NOT NULL) THEN\n                IF (NOT v_table_exists IN (\'TEMPORARY\', \'BASE TABLE\')) THEN\n                    SET v_error_msg = CONCAT(\'The \', in_action, \' action requires in_table to be NULL, NOW() or specify an existing table.\',\n                                             \' The table \',\n                                             IF(CHAR_LENGTH(v_quoted_table) > 16, CONCAT(\'...\', SUBSTRING(v_quoted_table, -13)), v_quoted_table),\n                                             \' does not exist.\');\n                    SIGNAL SQLSTATE \'45000\'\n                       SET MESSAGE_TEXT = v_error_msg;\n                END IF;\n            END IF;\n        WHEN in_action IN (\'delta\', \'save\') THEN\n            IF (v_table_exists NOT IN (\'TEMPORARY\', \'BASE TABLE\')) THEN\n                SET v_error_msg = CONCAT(\'The \', in_action, \' action requires in_table to be an existing table.\',\n                                         IF(in_table IS NOT NULL, CONCAT(\' The table \',\n                                             IF(CHAR_LENGTH(v_quoted_table) > 39, CONCAT(\'...\', SUBSTRING(v_quoted_table, -36)), v_quoted_table),\n                                             \' does not exist.\'), \'\'));\n                SIGNAL SQLSTATE \'45000\'\n                   SET MESSAGE_TEXT = v_error_msg;\n            END IF;\n            IF (in_action = \'delta\' AND v_tmp_digests_table_exists <> \'TEMPORARY\') THEN\n                SIGNAL SQLSTATE \'45000\'\n                   SET MESSAGE_TEXT = \'An existing snapshot generated with the statement_performance_analyzer() must exist.\';\n            END IF;\n        WHEN in_action = \'create_tmp\' THEN\n            IF (v_table_exists = \'TEMPORARY\') THEN\n                SET v_error_msg = CONCAT(\'Cannot create the table \',\n                                         IF(CHAR_LENGTH(v_quoted_table) > 72, CONCAT(\'...\', SUBSTRING(v_quoted_table, -69)), v_quoted_table),\n                                         \' as it already exists.\');\n                SIGNAL SQLSTATE \'45000\'\n                   SET MESSAGE_TEXT = v_error_msg;\n            END IF;\n        WHEN in_action = \'create_table\' THEN\n            IF (v_table_exists <> \'\') THEN\n                SET v_error_msg = CONCAT(\'Cannot create the table \',\n                                         IF(CHAR_LENGTH(v_quoted_table) > 52, CONCAT(\'...\', SUBSTRING(v_quoted_table, -49)), v_quoted_table),\n                                         \' as it already exists\',\n                                         IF(v_table_exists = \'TEMPORARY\', \' as a temporary table.\', \'.\'));\n                SIGNAL SQLSTATE \'45000\'\n                   SET MESSAGE_TEXT = v_error_msg;\n            END IF;\n        WHEN in_action = \'cleanup\' THEN\n            DO (SELECT 1);\n        ELSE\n            SIGNAL SQLSTATE \'45000\'\n               SET MESSAGE_TEXT = \'Unknown action. Supported actions are: cleanup, create_table, create_tmp, delta, overall, save, snapshot\';\n    END CASE;\n    SET v_digest_table_template = \'CREATE %{TEMPORARY}TABLE %{TABLE_NAME} (\n  `SCHEMA_NAME` varchar(64) DEFAULT NULL,\n  `DIGEST` varchar(32) DEFAULT NULL,\n  `DIGEST_TEXT` longtext,\n  `COUNT_STAR` bigint(20) unsigned NOT NULL,\n  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,\n  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,\n  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,\n  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,\n  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,\n  `SUM_ERRORS` bigint(20) unsigned NOT NULL,\n  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,\n  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,\n  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,\n  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,\n  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,\n  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,\n  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,\n  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,\n  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,\n  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,\n  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,\n  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,\n  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,\n  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,\n  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,\n  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,\n  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL,\n  `FIRST_SEEN` timestamp NULL DEFAULT NULL,\n  `LAST_SEEN` timestamp NULL DEFAULT NULL,\n  INDEX (SCHEMA_NAME, DIGEST)\n) DEFAULT CHARSET=utf8\';\n    IF (v_force_new_snapshot\n           OR in_action = \'snapshot\'\n           OR (in_action = \'overall\' AND in_table IS NULL)\n           OR (in_action = \'save\' AND v_tmp_digests_table_exists <> \'TEMPORARY\')\n       ) THEN\n        IF (v_tmp_digests_table_exists = \'TEMPORARY\') THEN\n            IF (@sys.debug = \'ON\') THEN\n                SELECT \'DROP TEMPORARY TABLE IF EXISTS tmp_digests\' AS \'Debug\';\n            END IF;\n            DROP TEMPORARY TABLE IF EXISTS tmp_digests;\n        END IF;\n        CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, \'%{TEMPORARY}\', \'TEMPORARY \'), \'%{TABLE_NAME}\', \'tmp_digests\'));\n        SET v_sql = CONCAT(\'INSERT INTO tmp_digests SELECT * FROM \',\n                           IF(in_table IS NULL OR in_action = \'save\', \'performance_schema.events_statements_summary_by_digest\', v_quoted_table));\n        CALL sys.execute_prepared_stmt(v_sql);\n    END IF;\n    IF (in_action IN (\'create_table\', \'create_tmp\')) THEN\n        IF (in_action = \'create_table\') THEN\n            CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, \'%{TEMPORARY}\', \'\'), \'%{TABLE_NAME}\', v_quoted_table));\n        ELSE\n            CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, \'%{TEMPORARY}\', \'TEMPORARY \'), \'%{TABLE_NAME}\', v_quoted_table));\n        END IF;\n    ELSEIF (in_action = \'save\') THEN\n        CALL sys.execute_prepared_stmt(CONCAT(\'DELETE FROM \', v_quoted_table));\n        CALL sys.execute_prepared_stmt(CONCAT(\'INSERT INTO \', v_quoted_table, \' SELECT * FROM tmp_digests\'));\n    ELSEIF (in_action = \'cleanup\') THEN\n        DROP TEMPORARY TABLE IF EXISTS sys.tmp_digests;\n        DROP TEMPORARY TABLE IF EXISTS sys.tmp_digests_delta;\n    ELSEIF (in_action IN (\'overall\', \'delta\')) THEN\n        IF (in_action = \'overall\') THEN\n            IF (in_table IS NULL) THEN\n                SET v_digests_table = \'tmp_digests\';\n            ELSE\n                SET v_digests_table = v_quoted_table;\n            END IF;\n        ELSE\n            SET v_digests_table = \'tmp_digests_delta\';\n            DROP TEMPORARY TABLE IF EXISTS tmp_digests_delta;\n            CREATE TEMPORARY TABLE tmp_digests_delta LIKE tmp_digests;\n            SET v_sql = CONCAT(\'INSERT INTO tmp_digests_delta\nSELECT `d_end`.`SCHEMA_NAME`,\n       `d_end`.`DIGEST`,\n       `d_end`.`DIGEST_TEXT`,\n       `d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0) AS \'\'COUNT_STAR\'\',\n       `d_end`.`SUM_TIMER_WAIT`-IFNULL(`d_start`.`SUM_TIMER_WAIT`, 0) AS \'\'SUM_TIMER_WAIT\'\',\n       `d_end`.`MIN_TIMER_WAIT` AS \'\'MIN_TIMER_WAIT\'\',\n       IFNULL((`d_end`.`SUM_TIMER_WAIT`-IFNULL(`d_start`.`SUM_TIMER_WAIT`, 0))/NULLIF(`d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0), 0), 0) AS \'\'AVG_TIMER_WAIT\'\',\n       `d_end`.`MAX_TIMER_WAIT` AS \'\'MAX_TIMER_WAIT\'\',\n       `d_end`.`SUM_LOCK_TIME`-IFNULL(`d_start`.`SUM_LOCK_TIME`, 0) AS \'\'SUM_LOCK_TIME\'\',\n       `d_end`.`SUM_ERRORS`-IFNULL(`d_start`.`SUM_ERRORS`, 0) AS \'\'SUM_ERRORS\'\',\n       `d_end`.`SUM_WARNINGS`-IFNULL(`d_start`.`SUM_WARNINGS`, 0) AS \'\'SUM_WARNINGS\'\',\n       `d_end`.`SUM_ROWS_AFFECTED`-IFNULL(`d_start`.`SUM_ROWS_AFFECTED`, 0) AS \'\'SUM_ROWS_AFFECTED\'\',\n       `d_end`.`SUM_ROWS_SENT`-IFNULL(`d_start`.`SUM_ROWS_SENT`, 0) AS \'\'SUM_ROWS_SENT\'\',\n       `d_end`.`SUM_ROWS_EXAMINED`-IFNULL(`d_start`.`SUM_ROWS_EXAMINED`, 0) AS \'\'SUM_ROWS_EXAMINED\'\',\n       `d_end`.`SUM_CREATED_TMP_DISK_TABLES`-IFNULL(`d_start`.`SUM_CREATED_TMP_DISK_TABLES`, 0) AS \'\'SUM_CREATED_TMP_DISK_TABLES\'\',\n       `d_end`.`SUM_CREATED_TMP_TABLES`-IFNULL(`d_start`.`SUM_CREATED_TMP_TABLES`, 0) AS \'\'SUM_CREATED_TMP_TABLES\'\',\n       `d_end`.`SUM_SELECT_FULL_JOIN`-IFNULL(`d_start`.`SUM_SELECT_FULL_JOIN`, 0) AS \'\'SUM_SELECT_FULL_JOIN\'\',\n       `d_end`.`SUM_SELECT_FULL_RANGE_JOIN`-IFNULL(`d_start`.`SUM_SELECT_FULL_RANGE_JOIN`, 0) AS \'\'SUM_SELECT_FULL_RANGE_JOIN\'\',\n       `d_end`.`SUM_SELECT_RANGE`-IFNULL(`d_start`.`SUM_SELECT_RANGE`, 0) AS \'\'SUM_SELECT_RANGE\'\',\n       `d_end`.`SUM_SELECT_RANGE_CHECK`-IFNULL(`d_start`.`SUM_SELECT_RANGE_CHECK`, 0) AS \'\'SUM_SELECT_RANGE_CHECK\'\',\n       `d_end`.`SUM_SELECT_SCAN`-IFNULL(`d_start`.`SUM_SELECT_SCAN`, 0) AS \'\'SUM_SELECT_SCAN\'\',\n       `d_end`.`SUM_SORT_MERGE_PASSES`-IFNULL(`d_start`.`SUM_SORT_MERGE_PASSES`, 0) AS \'\'SUM_SORT_MERGE_PASSES\'\',\n       `d_end`.`SUM_SORT_RANGE`-IFNULL(`d_start`.`SUM_SORT_RANGE`, 0) AS \'\'SUM_SORT_RANGE\'\',\n       `d_end`.`SUM_SORT_ROWS`-IFNULL(`d_start`.`SUM_SORT_ROWS`, 0) AS \'\'SUM_SORT_ROWS\'\',\n       `d_end`.`SUM_SORT_SCAN`-IFNULL(`d_start`.`SUM_SORT_SCAN`, 0) AS \'\'SUM_SORT_SCAN\'\',\n       `d_end`.`SUM_NO_INDEX_USED`-IFNULL(`d_start`.`SUM_NO_INDEX_USED`, 0) AS \'\'SUM_NO_INDEX_USED\'\',\n       `d_end`.`SUM_NO_GOOD_INDEX_USED`-IFNULL(`d_start`.`SUM_NO_GOOD_INDEX_USED`, 0) AS \'\'SUM_NO_GOOD_INDEX_USED\'\',\n       `d_end`.`FIRST_SEEN`,\n       `d_end`.`LAST_SEEN`\n  FROM tmp_digests d_end\n       LEFT OUTER JOIN \', v_quoted_table, \' d_start ON `d_start`.`DIGEST` = `d_end`.`DIGEST`\n                                                    AND (`d_start`.`SCHEMA_NAME` = `d_end`.`SCHEMA_NAME`\n                                                          OR (`d_start`.`SCHEMA_NAME` IS NULL AND `d_end`.`SCHEMA_NAME` IS NULL)\n                                                        )\n WHERE `d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0) > 0\');\n            CALL sys.execute_prepared_stmt(v_sql);\n        END IF;\n        IF (FIND_IN_SET(\'with_runtimes_in_95th_percentile\', in_views)) THEN\n            SELECT \'Queries with Runtime in 95th Percentile\' AS \'Next Output\';\n            DROP TEMPORARY TABLE IF EXISTS tmp_digest_avg_latency_distribution1;\n            DROP TEMPORARY TABLE IF EXISTS tmp_digest_avg_latency_distribution2;\n            DROP TEMPORARY TABLE IF EXISTS tmp_digest_95th_percentile_by_avg_us;\n            CREATE TEMPORARY TABLE tmp_digest_avg_latency_distribution1 (\n              cnt bigint unsigned NOT NULL,\n              avg_us decimal(21,0) NOT NULL,\n              PRIMARY KEY (avg_us)\n            ) ENGINE=InnoDB;\n            SET v_sql = CONCAT(\'INSERT INTO tmp_digest_avg_latency_distribution1\nSELECT COUNT(*) cnt,\n       ROUND(avg_timer_wait/1000000) AS avg_us\n  FROM \', v_digests_table, \'\n GROUP BY avg_us\');\n            CALL sys.execute_prepared_stmt(v_sql);\n            CREATE TEMPORARY TABLE tmp_digest_avg_latency_distribution2 LIKE tmp_digest_avg_latency_distribution1;\n            INSERT INTO tmp_digest_avg_latency_distribution2 SELECT * FROM tmp_digest_avg_latency_distribution1;\n            CREATE TEMPORARY TABLE tmp_digest_95th_percentile_by_avg_us (\n              avg_us decimal(21,0) NOT NULL,\n              percentile decimal(46,4) NOT NULL,\n              PRIMARY KEY (avg_us)\n            ) ENGINE=InnoDB;\n            SET v_sql = CONCAT(\'INSERT INTO tmp_digest_95th_percentile_by_avg_us\nSELECT s2.avg_us avg_us,\n       IFNULL(SUM(s1.cnt)/NULLIF((SELECT COUNT(*) FROM \', v_digests_table, \'), 0), 0) percentile\n  FROM tmp_digest_avg_latency_distribution1 AS s1\n       JOIN tmp_digest_avg_latency_distribution2 AS s2 ON s1.avg_us <= s2.avg_us\n GROUP BY s2.avg_us\nHAVING percentile > 0.95\n ORDER BY percentile\n LIMIT 1\');\n            CALL sys.execute_prepared_stmt(v_sql);\n            SET v_sql =\n                REPLACE(\n                    REPLACE(\n                        (SELECT VIEW_DEFINITION\n                           FROM information_schema.VIEWS\n                          WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = \'statements_with_runtimes_in_95th_percentile\'\n                        ),\n                        \'`performance_schema`.`events_statements_summary_by_digest`\',\n                        v_digests_table\n                    ),\n                    \'sys.x$ps_digest_95th_percentile_by_avg_us\',\n                    \'`sys`.`x$ps_digest_95th_percentile_by_avg_us`\'\n              );\n            CALL sys.execute_prepared_stmt(v_sql);\n            DROP TEMPORARY TABLE tmp_digest_avg_latency_distribution1;\n            DROP TEMPORARY TABLE tmp_digest_avg_latency_distribution2;\n            DROP TEMPORARY TABLE tmp_digest_95th_percentile_by_avg_us;\n        END IF;\n        IF (FIND_IN_SET(\'analysis\', in_views)) THEN\n            SELECT CONCAT(\'Top \', @sys.statement_performance_analyzer.limit, \' Queries Ordered by Total Latency\') AS \'Next Output\';\n            SET v_sql =\n                REPLACE(\n                    (SELECT VIEW_DEFINITION\n                       FROM information_schema.VIEWS\n                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = \'statement_analysis\'\n                    ),\n                    \'`performance_schema`.`events_statements_summary_by_digest`\',\n                    v_digests_table\n                );\n            IF (@sys.statement_performance_analyzer.limit > 0) THEN\n                SET v_sql = CONCAT(v_sql, \' LIMIT \', @sys.statement_performance_analyzer.limit);\n            END IF;\n            CALL sys.execute_prepared_stmt(v_sql);\n        END IF;\n        IF (FIND_IN_SET(\'with_errors_or_warnings\', in_views)) THEN\n            SELECT CONCAT(\'Top \', @sys.statement_performance_analyzer.limit, \' Queries with Errors\') AS \'Next Output\';\n            SET v_sql =\n                REPLACE(\n                    (SELECT VIEW_DEFINITION\n                       FROM information_schema.VIEWS\n                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = \'statements_with_errors_or_warnings\'\n                    ),\n                    \'`performance_schema`.`events_statements_summary_by_digest`\',\n                    v_digests_table\n                );\n            IF (@sys.statement_performance_analyzer.limit > 0) THEN\n                SET v_sql = CONCAT(v_sql, \' LIMIT \', @sys.statement_performance_analyzer.limit);\n            END IF;\n            CALL sys.execute_prepared_stmt(v_sql);\n        END IF;\n        IF (FIND_IN_SET(\'with_full_table_scans\', in_views)) THEN\n            SELECT CONCAT(\'Top \', @sys.statement_performance_analyzer.limit, \' Queries with Full Table Scan\') AS \'Next Output\';\n            SET v_sql =\n                REPLACE(\n                    (SELECT VIEW_DEFINITION\n                       FROM information_schema.VIEWS\n                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = \'statements_with_full_table_scans\'\n                    ),\n                    \'`performance_schema`.`events_statements_summary_by_digest`\',\n                    v_digests_table\n                );\n            IF (@sys.statement_performance_analyzer.limit > 0) THEN\n                SET v_sql = CONCAT(v_sql, \' LIMIT \', @sys.statement_performance_analyzer.limit);\n            END IF;\n            CALL sys.execute_prepared_stmt(v_sql);\n        END IF;\n        IF (FIND_IN_SET(\'with_sorting\', in_views)) THEN\n            SELECT CONCAT(\'Top \', @sys.statement_performance_analyzer.limit, \' Queries with Sorting\') AS \'Next Output\';\n            SET v_sql =\n                REPLACE(\n                    (SELECT VIEW_DEFINITION\n                       FROM information_schema.VIEWS\n                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = \'statements_with_sorting\'\n                    ),\n                    \'`performance_schema`.`events_statements_summary_by_digest`\',\n                    v_digests_table\n                );\n            IF (@sys.statement_performance_analyzer.limit > 0) THEN\n                SET v_sql = CONCAT(v_sql, \' LIMIT \', @sys.statement_performance_analyzer.limit);\n            END IF;\n            CALL sys.execute_prepared_stmt(v_sql);\n        END IF;\n        IF (FIND_IN_SET(\'with_temp_tables\', in_views)) THEN\n            SELECT CONCAT(\'Top \', @sys.statement_performance_analyzer.limit, \' Queries with Internal Temporary Tables\') AS \'Next Output\';\n            SET v_sql =\n                REPLACE(\n                    (SELECT VIEW_DEFINITION\n                       FROM information_schema.VIEWS\n                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = \'statements_with_temp_tables\'\n                    ),\n                    \'`performance_schema`.`events_statements_summary_by_digest`\',\n                    v_digests_table\n                );\n            IF (@sys.statement_performance_analyzer.limit > 0) THEN\n                SET v_sql = CONCAT(v_sql, \' LIMIT \', @sys.statement_performance_analyzer.limit);\n            END IF;\n            CALL sys.execute_prepared_stmt(v_sql);\n        END IF;\n        IF (FIND_IN_SET(\'custom\', in_views)) THEN\n            SELECT CONCAT(\'Top \', @sys.statement_performance_analyzer.limit, \' Queries Using Custom View\') AS \'Next Output\';\n            IF (@sys.statement_performance_analyzer.view IS NULL) THEN\n                SET @sys.statement_performance_analyzer.view = sys.sys_get_config(\'statement_performance_analyzer.view\', NULL);\n            END IF;\n            IF (@sys.statement_performance_analyzer.view IS NULL) THEN\n                SIGNAL SQLSTATE \'45000\'\n                   SET MESSAGE_TEXT = \'The @sys.statement_performance_analyzer.view user variable must be set with the view or query to use.\';\n            END IF;\n            IF (NOT INSTR(@sys.statement_performance_analyzer.view, \' \')) THEN\n                IF (NOT INSTR(@sys.statement_performance_analyzer.view, \'.\')) THEN\n                    SET v_custom_db   = DATABASE(),\n                        v_custom_name = @sys.statement_performance_analyzer.view;\n                ELSE\n                    SET v_custom_db   = SUBSTRING_INDEX(@sys.statement_performance_analyzer.view, \'.\', 1);\n                    SET v_custom_name = SUBSTRING(@sys.statement_performance_analyzer.view, CHAR_LENGTH(v_custom_db)+2);\n                END IF;\n                CALL sys.table_exists(v_custom_db, v_custom_name, v_custom_view_exists);\n                IF (v_custom_view_exists <> \'VIEW\') THEN\n                    SIGNAL SQLSTATE \'45000\'\n                       SET MESSAGE_TEXT = \'The @sys.statement_performance_analyzer.view user variable is set but specified neither an existing view nor a query.\';\n                END IF;\n                SET v_sql =\n                    REPLACE(\n                        (SELECT VIEW_DEFINITION\n                           FROM information_schema.VIEWS\n                          WHERE TABLE_SCHEMA = v_custom_db AND TABLE_NAME = v_custom_name\n                        ),\n                        \'`performance_schema`.`events_statements_summary_by_digest`\',\n                        v_digests_table\n                    );\n            ELSE\n                SET v_sql = REPLACE(@sys.statement_performance_analyzer.view, \'`performance_schema`.`events_statements_summary_by_digest`\', v_digests_table);\n            END IF;\n            IF (@sys.statement_performance_analyzer.limit > 0) THEN\n                SET v_sql = CONCAT(v_sql, \' LIMIT \', @sys.statement_performance_analyzer.limit);\n            END IF;\n            CALL sys.execute_prepared_stmt(v_sql);\n        END IF;\n    END IF;\n    IF (v_this_thread_enabled = \'YES\') THEN\n        CALL sys.ps_setup_enable_thread(CONNECTION_ID());\n    END IF;\n    IF (@log_bin = 1) THEN\n        SET sql_log_bin = @log_bin;\n    END IF;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Create a report of the statements running on the server.\n             The views are calculated based on the overall and/or delta activity.\n             Requires the SUPER privilege for \"SET sql_log_bin = 0;\".\n             Parameters\n             in_action (ENUM(\'snapshot\', \'overall\', \'delta\', \'create_tmp\', \'create_table\', \'save\', \'cleanup\')):\n               The action to take. Supported actions are:\n                 * snapshot      Store a snapshot. The default is to make a snapshot of the current content of\n                                 performance_schema.events_statements_summary_by_digest, but by setting in_table\n                                 this can be overwritten to copy the content of the specified table.\n                                 The snapshot is stored in the sys.tmp_digests temporary table.\n                 * overall       Generate analyzis based on the content specified by in_table. For the overall analyzis,\n                                 in_table can be NOW() to use a fresh snapshot. This will overwrite an existing snapshot.\n                                 Use NULL for in_table to use the existing snapshot. If in_table IS NULL and no snapshot\n                                 exists, a new will be created.\n                                 See also in_views and @sys.statement_performance_analyzer.limit.\n                 * delta         Generate a delta analysis. The delta will be calculated between the reference table in\n                                 in_table and the snapshot. An existing snapshot must exist.\n                                 The action uses the sys.tmp_digests_delta temporary table.\n                                 See also in_views and @sys.statement_performance_analyzer.limit.\n                 * create_table  Create a regular table suitable for storing the snapshot for later use, e.g. for\n                                 calculating deltas.\n                 * create_tmp    Create a temporary table suitable for storing the snapshot for later use, e.g. for\n                                 calculating deltas.\n                 * save          Save the snapshot in the table specified by in_table. The table must exists and have\n                                 the correct structure.\n                                 If no snapshot exists, a new is created.\n                 * cleanup       Remove the temporary tables used for the snapshot and delta.\n             in_table (VARCHAR(129)):\n               The table argument used for some actions. Use the format \'db1.t1\' or \'t1\' without using any backticks (`)\n               for quoting. Periods (.) are not supported in the database and table names.\n               The meaning of the table for each action supporting the argument is:\n                 * snapshot      The snapshot is created based on the specified table. Set to NULL or NOW() to use\n                                 the current content of performance_schema.events_statements_summary_by_digest.\n                 * overall       The table with the content to create the overall analyzis for. The following values\n                                 can be used:\n                                   - A table name - use the content of that table.\n                                   - NOW()        - create a fresh snapshot and overwrite the existing snapshot.\n                                   - NULL         - use the last stored snapshot.\n                 * delta         The table name is mandatory and specified the reference view to compare the currently\n                                 stored snapshot against. If no snapshot exists, a new will be created.\n                 * create_table  The name of the regular table to create.\n                 * create_tmp    The name of the temporary table to create.\n                 * save          The name of the table to save the currently stored snapshot into.\n             in_views (SET (\'with_runtimes_in_95th_percentile\', \'analysis\', \'with_errors_or_warnings\',\n                            \'with_full_table_scans\', \'with_sorting\', \'with_temp_tables\', \'custom\'))\n               Which views to include:\n                 * with_runtimes_in_95th_percentile  Based on the sys.statements_with_runtimes_in_95th_percentile view\n                 * analysis                          Based on the sys.statement_analysis view\n                 * with_errors_or_warnings           Based on the sys.statements_with_errors_or_warnings view\n                 * with_full_table_scans             Based on the sys.statements_with_full_table_scans view\n                 * with_sorting                      Based on the sys.statements_with_sorting view\n                 * with_temp_tables                  Based on the sys.statements_with_temp_tables view\n                 * custom                            Use a custom view. This view must be specified in @sys.statement_performance_analyzer.view to an existing view or a query\n             Default is to include all except \'custom\'.\n             Configuration Options\n             sys.statement_performance_analyzer.limit\n               The maximum number of rows to include for the views that does not have a built-in limit (e.g. the 95th percentile view).\n               If not set the limit is 100.\n             sys.statement_performance_analyzer.view\n               Used together with the \'custom\' view. If the value contains a space, it is considered a query, otherwise it must be\n               an existing view querying the performance_schema.events_statements_summary_by_digest table. There cannot be any limit\n               clause including in the query or view definition if @sys.statement_performance_analyzer.limit > 0.\n               If specifying a view, use the same format as for in_table.\n             sys.debug\n               Whether to provide debugging output.\n               Default is \'OFF\'. Set to \'ON\' to include.\n             Example\n             To create a report with the queries in the 95th percentile since last truncate of performance_schema.events_statements_summary_by_digest\n             and the delta for a 1 minute period:\n                1. Create a temporary table to store the initial snapshot.\n                2. Create the initial snapshot.\n                3. Save the initial snapshot in the temporary table.\n                4. Wait one minute.\n                5. Create a new snapshot.\n                6. Perform analyzis based on the new snapshot.\n                7. Perform analyzis based on the delta between the initial and new snapshots.\n             mysql> CALL sys.statement_performance_analyzer(\'create_tmp\', \'mydb.tmp_digests_ini\', NULL);\n             Query OK, 0 rows affected (0.08 sec)\n             mysql> CALL sys.statement_performance_analyzer(\'snapshot\', NULL, NULL);\n             Query OK, 0 rows affected (0.02 sec)\n             mysql> CALL sys.statement_performance_analyzer(\'save\', \'mydb.tmp_digests_ini\', NULL);\n             Query OK, 0 rows affected (0.00 sec)\n             mysql> DO SLEEP(60);\n             Query OK, 0 rows affected (1 min 0.00 sec)\n             mysql> CALL sys.statement_performance_analyzer(\'snapshot\', NULL, NULL);\n             Query OK, 0 rows affected (0.02 sec)\n             mysql> CALL sys.statement_performance_analyzer(\'overall\', NULL, \'with_runtimes_in_95th_percentile\');\n             +-----------------------------------------+\n             | Next Output                             |\n             +-----------------------------------------+\n             | Queries with Runtime in 95th Percentile |\n             +-----------------------------------------+\n             1 row in set (0.05 sec)\n             ...\n             mysql> CALL sys.statement_performance_analyzer(\'delta\', \'mydb.tmp_digests_ini\', \'with_runtimes_in_95th_percentile\');\n             +-----------------------------------------+\n             | Next Output                             |\n             +-----------------------------------------+\n             | Queries with Runtime in 95th Percentile |\n             +-----------------------------------------+\n             1 row in set (0.03 sec)\n             ...\n             To create an overall report of the 95th percentile queries and the top 10 queries with full table scans:\n             mysql> CALL sys.statement_performance_analyzer(\'snapshot\', NULL, NULL);\n             Query OK, 0 rows affected (0.01 sec)\n             mysql> SET @sys.statement_performance_analyzer.limit = 10;\n             Query OK, 0 rows affected (0.00 sec)\n             mysql> CALL sys.statement_performance_analyzer(\'overall\', NULL, \'with_runtimes_in_95th_percentile,with_full_table_scans\');\n             +-----------------------------------------+\n             | Next Output                             |\n             +-----------------------------------------+\n             | Queries with Runtime in 95th Percentile |\n             +-----------------------------------------+\n             1 row in set (0.01 sec)\n             ...\n             +-------------------------------------+\n             | Next Output                         |\n             +-------------------------------------+\n             | Top 10 Queries with Full Table Scan |\n             +-------------------------------------+\n             1 row in set (0.09 sec)\n             ...\n             Use a custom view showing the top 10 query sorted by total execution time refreshing the view every minute using\n             the watch command in Linux.\n             mysql> CREATE OR REPLACE VIEW mydb.my_statements AS\n                 -> SELECT sys.format_statement(DIGEST_TEXT) AS query,\n                 ->        SCHEMA_NAME AS db,\n                 ->        COUNT_STAR AS exec_count,\n                 ->        sys.format_time(SUM_TIMER_WAIT) AS total_latency,\n                 ->        sys.format_time(AVG_TIMER_WAIT) AS avg_latency,\n                 ->        ROUND(IFNULL(SUM_ROWS_SENT / NULLIF(COUNT_STAR, 0), 0)) AS rows_sent_avg,\n                 ->        ROUND(IFNULL(SUM_ROWS_EXAMINED / NULLIF(COUNT_STAR, 0), 0)) AS rows_examined_avg,\n                 ->        ROUND(IFNULL(SUM_ROWS_AFFECTED / NULLIF(COUNT_STAR, 0), 0)) AS rows_affected_avg,\n                 ->        DIGEST AS digest\n                 ->   FROM performance_schema.events_statements_summary_by_digest\n                 -> ORDER BY SUM_TIMER_WAIT DESC;\n             Query OK, 0 rows affected (0.01 sec)\n             mysql> CALL sys.statement_performance_analyzer(\'create_table\', \'mydb.digests_prev\', NULL);\n             Query OK, 0 rows affected (0.10 sec)\n             shell$ watch -n 60 \"mysql sys --table -e \"\n             > SET @sys.statement_performance_analyzer.view = \'mydb.my_statements\';\n             > SET @sys.statement_performance_analyzer.limit = 10;\n             > CALL statement_performance_analyzer(\'snapshot\', NULL, NULL);\n             > CALL statement_performance_analyzer(\'delta\', \'mydb.digests_prev\', \'custom\');\n             > CALL statement_performance_analyzer(\'save\', \'mydb.digests_prev\', NULL);\n             > \"\"\n             Every 60.0s: mysql sys --table -e \"                                                                                                   ...  Mon Dec 22 10:58:51 2014\n             +----------------------------------+\n             | Next Output                      |\n             +----------------------------------+\n             | Top 10 Queries Using Custom View |\n             +----------------------------------+\n             +-------------------+-------+------------+---------------+-------------+---------------+-------------------+-------------------+----------------------------------+\n             | query             | db    | exec_count | total_latency | avg_latency | rows_sent_avg | rows_examined_avg | rows_affected_avg | digest                           |\n             +-------------------+-------+------------+---------------+-------------+---------------+-------------------+-------------------+----------------------------------+\n             ...\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    DECLARE v_table_exists, v_tmp_digests_table_exists, v_custom_view_exists ENUM(\'\', \'BASE TABLE\', \'VIEW\', \'TEMPORARY\') DEFAULT \'\';\n    DECLARE v_this_thread_enabled ENUM(\'YES\', \'NO\');\n    DECLARE v_force_new_snapshot BOOLEAN DEFAULT FALSE;\n    DECLARE v_digests_table VARCHAR(133);\n    DECLARE v_quoted_table, v_quoted_custom_view VARCHAR(133) DEFAULT \'\';\n    DECLARE v_table_db, v_table_name, v_custom_db, v_custom_name VARCHAR(64);\n    DECLARE v_digest_table_template, v_checksum_ref, v_checksum_table text;\n    DECLARE v_sql longtext;\n    DECLARE v_error_msg VARCHAR(128);\n    SELECT INSTRUMENTED INTO v_this_thread_enabled FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();\n    IF (v_this_thread_enabled = \'YES\') THEN\n        CALL sys.ps_setup_disable_thread(CONNECTION_ID());\n    END IF;\n    SET @log_bin := @@sql_log_bin;\n    IF (@log_bin = 1) THEN\n        SET sql_log_bin = 0;\n    END IF;\n    IF (@sys.statement_performance_analyzer.limit IS NULL) THEN\n        SET @sys.statement_performance_analyzer.limit = sys.sys_get_config(\'statement_performance_analyzer.limit\', \'100\');\n    END IF;\n    IF (@sys.debug IS NULL) THEN\n        SET @sys.debug                                = sys.sys_get_config(\'debug\'                               , \'OFF\');\n    END IF;\n    IF (in_table = \'NOW()\') THEN\n        SET v_force_new_snapshot = TRUE,\n            in_table             = NULL;\n    ELSEIF (in_table IS NOT NULL) THEN\n        IF (NOT INSTR(in_table, \'.\')) THEN\n            SET v_table_db   = DATABASE(),\n                v_table_name = in_table;\n        ELSE\n            SET v_table_db   = SUBSTRING_INDEX(in_table, \'.\', 1);\n            SET v_table_name = SUBSTRING(in_table, CHAR_LENGTH(v_table_db)+2);\n        END IF;\n        SET v_quoted_table = CONCAT(\'`\', v_table_db, \'`.`\', v_table_name, \'`\');\n        IF (@sys.debug = \'ON\') THEN\n            SELECT CONCAT(\'in_table is: db = \'\'\', v_table_db, \'\'\', table = \'\'\', v_table_name, \'\'\'\') AS \'Debug\';\n        END IF;\n        IF (v_table_db = DATABASE() AND (v_table_name = \'tmp_digests\' OR v_table_name = \'tmp_digests_delta\')) THEN\n            SET v_error_msg = CONCAT(\'Invalid value for in_table: \', v_quoted_table, \' is reserved table name.\');\n            SIGNAL SQLSTATE \'45000\'\n               SET MESSAGE_TEXT = v_error_msg;\n        END IF;\n        CALL sys.table_exists(v_table_db, v_table_name, v_table_exists);\n        IF (@sys.debug = \'ON\') THEN\n            SELECT CONCAT(\'v_table_exists = \', v_table_exists) AS \'Debug\';\n        END IF;\n        IF (v_table_exists = \'BASE TABLE\') THEN\n            SET v_checksum_ref = (\n                 SELECT GROUP_CONCAT(CONCAT(COLUMN_NAME, COLUMN_TYPE) ORDER BY ORDINAL_POSITION) AS Checksum\n                   FROM information_schema.COLUMNS\n                  WHERE TABLE_SCHEMA = \'performance_schema\' AND TABLE_NAME = \'events_statements_summary_by_digest\'\n                ),\n                v_checksum_table = (\n                 SELECT GROUP_CONCAT(CONCAT(COLUMN_NAME, COLUMN_TYPE) ORDER BY ORDINAL_POSITION) AS Checksum\n                   FROM information_schema.COLUMNS\n                  WHERE TABLE_SCHEMA = v_table_db AND TABLE_NAME = v_table_name\n                );\n            IF (v_checksum_ref <> v_checksum_table) THEN\n                SET v_error_msg = CONCAT(\'The table \',\n                                         IF(CHAR_LENGTH(v_quoted_table) > 93, CONCAT(\'...\', SUBSTRING(v_quoted_table, -90)), v_quoted_table),\n                                         \' has the wrong definition.\');\n                SIGNAL SQLSTATE \'45000\'\n                   SET MESSAGE_TEXT = v_error_msg;\n            END IF;\n        END IF;\n    END IF;\n    IF (in_views IS NULL OR in_views = \'\') THEN\n        SET in_views = \'with_runtimes_in_95th_percentile,analysis,with_errors_or_warnings,with_full_table_scans,with_sorting,with_temp_tables\';\n    END IF;\n    CALL sys.table_exists(DATABASE(), \'tmp_digests\', v_tmp_digests_table_exists);\n    IF (@sys.debug = \'ON\') THEN\n        SELECT CONCAT(\'v_tmp_digests_table_exists = \', v_tmp_digests_table_exists) AS \'Debug\';\n    END IF;\n    CASE\n        WHEN in_action IN (\'snapshot\', \'overall\') THEN\n            IF (in_table IS NOT NULL) THEN\n                IF (NOT v_table_exists IN (\'TEMPORARY\', \'BASE TABLE\')) THEN\n                    SET v_error_msg = CONCAT(\'The \', in_action, \' action requires in_table to be NULL, NOW() or specify an existing table.\',\n                                             \' The table \',\n                                             IF(CHAR_LENGTH(v_quoted_table) > 16, CONCAT(\'...\', SUBSTRING(v_quoted_table, -13)), v_quoted_table),\n                                             \' does not exist.\');\n                    SIGNAL SQLSTATE \'45000\'\n                       SET MESSAGE_TEXT = v_error_msg;\n                END IF;\n            END IF;\n        WHEN in_action IN (\'delta\', \'save\') THEN\n            IF (v_table_exists NOT IN (\'TEMPORARY\', \'BASE TABLE\')) THEN\n                SET v_error_msg = CONCAT(\'The \', in_action, \' action requires in_table to be an existing table.\',\n                                         IF(in_table IS NOT NULL, CONCAT(\' The table \',\n                                             IF(CHAR_LENGTH(v_quoted_table) > 39, CONCAT(\'...\', SUBSTRING(v_quoted_table, -36)), v_quoted_table),\n                                             \' does not exist.\'), \'\'));\n                SIGNAL SQLSTATE \'45000\'\n                   SET MESSAGE_TEXT = v_error_msg;\n            END IF;\n            IF (in_action = \'delta\' AND v_tmp_digests_table_exists <> \'TEMPORARY\') THEN\n                SIGNAL SQLSTATE \'45000\'\n                   SET MESSAGE_TEXT = \'An existing snapshot generated with the statement_performance_analyzer() must exist.\';\n            END IF;\n        WHEN in_action = \'create_tmp\' THEN\n            IF (v_table_exists = \'TEMPORARY\') THEN\n                SET v_error_msg = CONCAT(\'Cannot create the table \',\n                                         IF(CHAR_LENGTH(v_quoted_table) > 72, CONCAT(\'...\', SUBSTRING(v_quoted_table, -69)), v_quoted_table),\n                                         \' as it already exists.\');\n                SIGNAL SQLSTATE \'45000\'\n                   SET MESSAGE_TEXT = v_error_msg;\n            END IF;\n        WHEN in_action = \'create_table\' THEN\n            IF (v_table_exists <> \'\') THEN\n                SET v_error_msg = CONCAT(\'Cannot create the table \',\n                                         IF(CHAR_LENGTH(v_quoted_table) > 52, CONCAT(\'...\', SUBSTRING(v_quoted_table, -49)), v_quoted_table),\n                                         \' as it already exists\',\n                                         IF(v_table_exists = \'TEMPORARY\', \' as a temporary table.\', \'.\'));\n                SIGNAL SQLSTATE \'45000\'\n                   SET MESSAGE_TEXT = v_error_msg;\n            END IF;\n        WHEN in_action = \'cleanup\' THEN\n            DO (SELECT 1);\n        ELSE\n            SIGNAL SQLSTATE \'45000\'\n               SET MESSAGE_TEXT = \'Unknown action. Supported actions are: cleanup, create_table, create_tmp, delta, overall, save, snapshot\';\n    END CASE;\n    SET v_digest_table_template = \'CREATE %{TEMPORARY}TABLE %{TABLE_NAME} (\\n  `SCHEMA_NAME` varchar(64) DEFAULT NULL,\\n  `DIGEST` varchar(32) DEFAULT NULL,\\n  `DIGEST_TEXT` longtext,\\n  `COUNT_STAR` bigint(20) unsigned NOT NULL,\\n  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,\\n  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,\\n  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,\\n  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,\\n  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,\\n  `SUM_ERRORS` bigint(20) unsigned NOT NULL,\\n  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,\\n  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,\\n  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,\\n  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,\\n  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,\\n  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,\\n  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,\\n  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,\\n  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,\\n  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,\\n  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,\\n  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,\\n  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,\\n  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,\\n  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,\\n  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,\\n  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL,\\n  `FIRST_SEEN` timestamp NULL DEFAULT NULL,\\n  `LAST_SEEN` timestamp NULL DEFAULT NULL,\\n  INDEX (SCHEMA_NAME, DIGEST)\\n) DEFAULT CHARSET=utf8\';\n    IF (v_force_new_snapshot\n           OR in_action = \'snapshot\'\n           OR (in_action = \'overall\' AND in_table IS NULL)\n           OR (in_action = \'save\' AND v_tmp_digests_table_exists <> \'TEMPORARY\')\n       ) THEN\n        IF (v_tmp_digests_table_exists = \'TEMPORARY\') THEN\n            IF (@sys.debug = \'ON\') THEN\n                SELECT \'DROP TEMPORARY TABLE IF EXISTS tmp_digests\' AS \'Debug\';\n            END IF;\n            DROP TEMPORARY TABLE IF EXISTS tmp_digests;\n        END IF;\n        CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, \'%{TEMPORARY}\', \'TEMPORARY \'), \'%{TABLE_NAME}\', \'tmp_digests\'));\n        SET v_sql = CONCAT(\'INSERT INTO tmp_digests SELECT * FROM \',\n                           IF(in_table IS NULL OR in_action = \'save\', \'performance_schema.events_statements_summary_by_digest\', v_quoted_table));\n        CALL sys.execute_prepared_stmt(v_sql);\n    END IF;\n    IF (in_action IN (\'create_table\', \'create_tmp\')) THEN\n        IF (in_action = \'create_table\') THEN\n            CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, \'%{TEMPORARY}\', \'\'), \'%{TABLE_NAME}\', v_quoted_table));\n        ELSE\n            CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, \'%{TEMPORARY}\', \'TEMPORARY \'), \'%{TABLE_NAME}\', v_quoted_table));\n        END IF;\n    ELSEIF (in_action = \'save\') THEN\n        CALL sys.execute_prepared_stmt(CONCAT(\'DELETE FROM \', v_quoted_table));\n        CALL sys.execute_prepared_stmt(CONCAT(\'INSERT INTO \', v_quoted_table, \' SELECT * FROM tmp_digests\'));\n    ELSEIF (in_action = \'cleanup\') THEN\n        DROP TEMPORARY TABLE IF EXISTS sys.tmp_digests;\n        DROP TEMPORARY TABLE IF EXISTS sys.tmp_digests_delta;\n    ELSEIF (in_action IN (\'overall\', \'delta\')) THEN\n        IF (in_action = \'overall\') THEN\n            IF (in_table IS NULL) THEN\n                SET v_digests_table = \'tmp_digests\';\n            ELSE\n                SET v_digests_table = v_quoted_table;\n            END IF;\n        ELSE\n            SET v_digests_table = \'tmp_digests_delta\';\n            DROP TEMPORARY TABLE IF EXISTS tmp_digests_delta;\n            CREATE TEMPORARY TABLE tmp_digests_delta LIKE tmp_digests;\n            SET v_sql = CONCAT(\'INSERT INTO tmp_digests_delta\\nSELECT `d_end`.`SCHEMA_NAME`,\\n       `d_end`.`DIGEST`,\\n       `d_end`.`DIGEST_TEXT`,\\n       `d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0) AS \'\'COUNT_STAR\'\',\\n       `d_end`.`SUM_TIMER_WAIT`-IFNULL(`d_start`.`SUM_TIMER_WAIT`, 0) AS \'\'SUM_TIMER_WAIT\'\',\\n       `d_end`.`MIN_TIMER_WAIT` AS \'\'MIN_TIMER_WAIT\'\',\\n       IFNULL((`d_end`.`SUM_TIMER_WAIT`-IFNULL(`d_start`.`SUM_TIMER_WAIT`, 0))/NULLIF(`d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0), 0), 0) AS \'\'AVG_TIMER_WAIT\'\',\\n       `d_end`.`MAX_TIMER_WAIT` AS \'\'MAX_TIMER_WAIT\'\',\\n       `d_end`.`SUM_LOCK_TIME`-IFNULL(`d_start`.`SUM_LOCK_TIME`, 0) AS \'\'SUM_LOCK_TIME\'\',\\n       `d_end`.`SUM_ERRORS`-IFNULL(`d_start`.`SUM_ERRORS`, 0) AS \'\'SUM_ERRORS\'\',\\n       `d_end`.`SUM_WARNINGS`-IFNULL(`d_start`.`SUM_WARNINGS`, 0) AS \'\'SUM_WARNINGS\'\',\\n       `d_end`.`SUM_ROWS_AFFECTED`-IFNULL(`d_start`.`SUM_ROWS_AFFECTED`, 0) AS \'\'SUM_ROWS_AFFECTED\'\',\\n       `d_end`.`SUM_ROWS_SENT`-IFNULL(`d_start`.`SUM_ROWS_SENT`, 0) AS \'\'SUM_ROWS_SENT\'\',\\n       `d_end`.`SUM_ROWS_EXAMINED`-IFNULL(`d_start`.`SUM_ROWS_EXAMINED`, 0) AS \'\'SUM_ROWS_EXAMINED\'\',\\n       `d_end`.`SUM_CREATED_TMP_DISK_TABLES`-IFNULL(`d_start`.`SUM_CREATED_TMP_DISK_TABLES`, 0) AS \'\'SUM_CREATED_TMP_DISK_TABLES\'\',\\n       `d_end`.`SUM_CREATED_TMP_TABLES`-IFNULL(`d_start`.`SUM_CREATED_TMP_TABLES`, 0) AS \'\'SUM_CREATED_TMP_TABLES\'\',\\n       `d_end`.`SUM_SELECT_FULL_JOIN`-IFNULL(`d_start`.`SUM_SELECT_FULL_JOIN`, 0) AS \'\'SUM_SELECT_FULL_JOIN\'\',\\n       `d_end`.`SUM_SELECT_FULL_RANGE_JOIN`-IFNULL(`d_start`.`SUM_SELECT_FULL_RANGE_JOIN`, 0) AS \'\'SUM_SELECT_FULL_RANGE_JOIN\'\',\\n       `d_end`.`SUM_SELECT_RANGE`-IFNULL(`d_start`.`SUM_SELECT_RANGE`, 0) AS \'\'SUM_SELECT_RANGE\'\',\\n       `d_end`.`SUM_SELECT_RANGE_CHECK`-IFNULL(`d_start`.`SUM_SELECT_RANGE_CHECK`, 0) AS \'\'SUM_SELECT_RANGE_CHECK\'\',\\n       `d_end`.`SUM_SELECT_SCAN`-IFNULL(`d_start`.`SUM_SELECT_SCAN`, 0) AS \'\'SUM_SELECT_SCAN\'\',\\n       `d_end`.`SUM_SORT_MERGE_PASSES`-IFNULL(`d_start`.`SUM_SORT_MERGE_PASSES`, 0) AS \'\'SUM_SORT_MERGE_PASSES\'\',\\n       `d_end`.`SUM_SORT_RANGE`-IFNULL(`d_start`.`SUM_SORT_RANGE`, 0) AS \'\'SUM_SORT_RANGE\'\',\\n       `d_end`.`SUM_SORT_ROWS`-IFNULL(`d_start`.`SUM_SORT_ROWS`, 0) AS \'\'SUM_SORT_ROWS\'\',\\n       `d_end`.`SUM_SORT_SCAN`-IFNULL(`d_start`.`SUM_SORT_SCAN`, 0) AS \'\'SUM_SORT_SCAN\'\',\\n       `d_end`.`SUM_NO_INDEX_USED`-IFNULL(`d_start`.`SUM_NO_INDEX_USED`, 0) AS \'\'SUM_NO_INDEX_USED\'\',\\n       `d_end`.`SUM_NO_GOOD_INDEX_USED`-IFNULL(`d_start`.`SUM_NO_GOOD_INDEX_USED`, 0) AS \'\'SUM_NO_GOOD_INDEX_USED\'\',\\n       `d_end`.`FIRST_SEEN`,\\n       `d_end`.`LAST_SEEN`\\n  FROM tmp_digests d_end\\n       LEFT OUTER JOIN \', v_quoted_table, \' d_start ON `d_start`.`DIGEST` = `d_end`.`DIGEST`\\n                                                    AND (`d_start`.`SCHEMA_NAME` = `d_end`.`SCHEMA_NAME`\\n                                                          OR (`d_start`.`SCHEMA_NAME` IS NULL AND `d_end`.`SCHEMA_NAME` IS NULL)\\n                                                        )\\n WHERE `d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0) > 0\');\n            CALL sys.execute_prepared_stmt(v_sql);\n        END IF;\n        IF (FIND_IN_SET(\'with_runtimes_in_95th_percentile\', in_views)) THEN\n            SELECT \'Queries with Runtime in 95th Percentile\' AS \'Next Output\';\n            DROP TEMPORARY TABLE IF EXISTS tmp_digest_avg_latency_distribution1;\n            DROP TEMPORARY TABLE IF EXISTS tmp_digest_avg_latency_distribution2;\n            DROP TEMPORARY TABLE IF EXISTS tmp_digest_95th_percentile_by_avg_us;\n            CREATE TEMPORARY TABLE tmp_digest_avg_latency_distribution1 (\n              cnt bigint unsigned NOT NULL,\n              avg_us decimal(21,0) NOT NULL,\n              PRIMARY KEY (avg_us)\n            ) ENGINE=InnoDB;\n            SET v_sql = CONCAT(\'INSERT INTO tmp_digest_avg_latency_distribution1\\nSELECT COUNT(*) cnt,\\n       ROUND(avg_timer_wait/1000000) AS avg_us\\n  FROM \', v_digests_table, \'\\n GROUP BY avg_us\');\n            CALL sys.execute_prepared_stmt(v_sql);\n            CREATE TEMPORARY TABLE tmp_digest_avg_latency_distribution2 LIKE tmp_digest_avg_latency_distribution1;\n            INSERT INTO tmp_digest_avg_latency_distribution2 SELECT * FROM tmp_digest_avg_latency_distribution1;\n            CREATE TEMPORARY TABLE tmp_digest_95th_percentile_by_avg_us (\n              avg_us decimal(21,0) NOT NULL,\n              percentile decimal(46,4) NOT NULL,\n              PRIMARY KEY (avg_us)\n            ) ENGINE=InnoDB;\n            SET v_sql = CONCAT(\'INSERT INTO tmp_digest_95th_percentile_by_avg_us\\nSELECT s2.avg_us avg_us,\\n       IFNULL(SUM(s1.cnt)/NULLIF((SELECT COUNT(*) FROM \', v_digests_table, \'), 0), 0) percentile\\n  FROM tmp_digest_avg_latency_distribution1 AS s1\\n       JOIN tmp_digest_avg_latency_distribution2 AS s2 ON s1.avg_us <= s2.avg_us\\n GROUP BY s2.avg_us\\nHAVING percentile > 0.95\\n ORDER BY percentile\\n LIMIT 1\');\n            CALL sys.execute_prepared_stmt(v_sql);\n            SET v_sql =\n                REPLACE(\n                    REPLACE(\n                        (SELECT VIEW_DEFINITION\n                           FROM information_schema.VIEWS\n                          WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = \'statements_with_runtimes_in_95th_percentile\'\n                        ),\n                        \'`performance_schema`.`events_statements_summary_by_digest`\',\n                        v_digests_table\n                    ),\n                    \'sys.x$ps_digest_95th_percentile_by_avg_us\',\n                    \'`sys`.`x$ps_digest_95th_percentile_by_avg_us`\'\n              );\n            CALL sys.execute_prepared_stmt(v_sql);\n            DROP TEMPORARY TABLE tmp_digest_avg_latency_distribution1;\n            DROP TEMPORARY TABLE tmp_digest_avg_latency_distribution2;\n            DROP TEMPORARY TABLE tmp_digest_95th_percentile_by_avg_us;\n        END IF;\n        IF (FIND_IN_SET(\'analysis\', in_views)) THEN\n            SELECT CONCAT(\'Top \', @sys.statement_performance_analyzer.limit, \' Queries Ordered by Total Latency\') AS \'Next Output\';\n            SET v_sql =\n                REPLACE(\n                    (SELECT VIEW_DEFINITION\n                       FROM information_schema.VIEWS\n                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = \'statement_analysis\'\n                    ),\n                    \'`performance_schema`.`events_statements_summary_by_digest`\',\n                    v_digests_table\n                );\n            IF (@sys.statement_performance_analyzer.limit > 0) THEN\n                SET v_sql = CONCAT(v_sql, \' LIMIT \', @sys.statement_performance_analyzer.limit);\n            END IF;\n            CALL sys.execute_prepared_stmt(v_sql);\n        END IF;\n        IF (FIND_IN_SET(\'with_errors_or_warnings\', in_views)) THEN\n            SELECT CONCAT(\'Top \', @sys.statement_performance_analyzer.limit, \' Queries with Errors\') AS \'Next Output\';\n            SET v_sql =\n                REPLACE(\n                    (SELECT VIEW_DEFINITION\n                       FROM information_schema.VIEWS\n                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = \'statements_with_errors_or_warnings\'\n                    ),\n                    \'`performance_schema`.`events_statements_summary_by_digest`\',\n                    v_digests_table\n                );\n            IF (@sys.statement_performance_analyzer.limit > 0) THEN\n                SET v_sql = CONCAT(v_sql, \' LIMIT \', @sys.statement_performance_analyzer.limit);\n            END IF;\n            CALL sys.execute_prepared_stmt(v_sql);\n        END IF;\n        IF (FIND_IN_SET(\'with_full_table_scans\', in_views)) THEN\n            SELECT CONCAT(\'Top \', @sys.statement_performance_analyzer.limit, \' Queries with Full Table Scan\') AS \'Next Output\';\n            SET v_sql =\n                REPLACE(\n                    (SELECT VIEW_DEFINITION\n                       FROM information_schema.VIEWS\n                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = \'statements_with_full_table_scans\'\n                    ),\n                    \'`performance_schema`.`events_statements_summary_by_digest`\',\n                    v_digests_table\n                );\n            IF (@sys.statement_performance_analyzer.limit > 0) THEN\n                SET v_sql = CONCAT(v_sql, \' LIMIT \', @sys.statement_performance_analyzer.limit);\n            END IF;\n            CALL sys.execute_prepared_stmt(v_sql);\n        END IF;\n        IF (FIND_IN_SET(\'with_sorting\', in_views)) THEN\n            SELECT CONCAT(\'Top \', @sys.statement_performance_analyzer.limit, \' Queries with Sorting\') AS \'Next Output\';\n            SET v_sql =\n                REPLACE(\n                    (SELECT VIEW_DEFINITION\n                       FROM information_schema.VIEWS\n                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = \'statements_with_sorting\'\n                    ),\n                    \'`performance_schema`.`events_statements_summary_by_digest`\',\n                    v_digests_table\n                );\n            IF (@sys.statement_performance_analyzer.limit > 0) THEN\n                SET v_sql = CONCAT(v_sql, \' LIMIT \', @sys.statement_performance_analyzer.limit);\n            END IF;\n            CALL sys.execute_prepared_stmt(v_sql);\n        END IF;\n        IF (FIND_IN_SET(\'with_temp_tables\', in_views)) THEN\n            SELECT CONCAT(\'Top \', @sys.statement_performance_analyzer.limit, \' Queries with Internal Temporary Tables\') AS \'Next Output\';\n            SET v_sql =\n                REPLACE(\n                    (SELECT VIEW_DEFINITION\n                       FROM information_schema.VIEWS\n                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = \'statements_with_temp_tables\'\n                    ),\n                    \'`performance_schema`.`events_statements_summary_by_digest`\',\n                    v_digests_table\n                );\n            IF (@sys.statement_performance_analyzer.limit > 0) THEN\n                SET v_sql = CONCAT(v_sql, \' LIMIT \', @sys.statement_performance_analyzer.limit);\n            END IF;\n            CALL sys.execute_prepared_stmt(v_sql);\n        END IF;\n        IF (FIND_IN_SET(\'custom\', in_views)) THEN\n            SELECT CONCAT(\'Top \', @sys.statement_performance_analyzer.limit, \' Queries Using Custom View\') AS \'Next Output\';\n            IF (@sys.statement_performance_analyzer.view IS NULL) THEN\n                SET @sys.statement_performance_analyzer.view = sys.sys_get_config(\'statement_performance_analyzer.view\', NULL);\n            END IF;\n            IF (@sys.statement_performance_analyzer.view IS NULL) THEN\n                SIGNAL SQLSTATE \'45000\'\n                   SET MESSAGE_TEXT = \'The @sys.statement_performance_analyzer.view user variable must be set with the view or query to use.\';\n            END IF;\n            IF (NOT INSTR(@sys.statement_performance_analyzer.view, \' \')) THEN\n                IF (NOT INSTR(@sys.statement_performance_analyzer.view, \'.\')) THEN\n                    SET v_custom_db   = DATABASE(),\n                        v_custom_name = @sys.statement_performance_analyzer.view;\n                ELSE\n                    SET v_custom_db   = SUBSTRING_INDEX(@sys.statement_performance_analyzer.view, \'.\', 1);\n                    SET v_custom_name = SUBSTRING(@sys.statement_performance_analyzer.view, CHAR_LENGTH(v_custom_db)+2);\n                END IF;\n                CALL sys.table_exists(v_custom_db, v_custom_name, v_custom_view_exists);\n                IF (v_custom_view_exists <> \'VIEW\') THEN\n                    SIGNAL SQLSTATE \'45000\'\n                       SET MESSAGE_TEXT = \'The @sys.statement_performance_analyzer.view user variable is set but specified neither an existing view nor a query.\';\n                END IF;\n                SET v_sql =\n                    REPLACE(\n                        (SELECT VIEW_DEFINITION\n                           FROM information_schema.VIEWS\n                          WHERE TABLE_SCHEMA = v_custom_db AND TABLE_NAME = v_custom_name\n                        ),\n                        \'`performance_schema`.`events_statements_summary_by_digest`\',\n                        v_digests_table\n                    );\n            ELSE\n                SET v_sql = REPLACE(@sys.statement_performance_analyzer.view, \'`performance_schema`.`events_statements_summary_by_digest`\', v_digests_table);\n            END IF;\n            IF (@sys.statement_performance_analyzer.limit > 0) THEN\n                SET v_sql = CONCAT(v_sql, \' LIMIT \', @sys.statement_performance_analyzer.limit);\n            END IF;\n            CALL sys.execute_prepared_stmt(v_sql);\n        END IF;\n    END IF;\n    IF (v_this_thread_enabled = \'YES\') THEN\n        CALL sys.ps_setup_enable_thread(CONNECTION_ID());\n    END IF;\n    IF (@log_bin = 1) THEN\n        SET sql_log_bin = @log_bin;\n    END IF;\nEND','NONE'),('sys','ps_is_account_enabled','FUNCTION','ps_is_account_enabled','SQL','READS_SQL_DATA','YES','INVOKER','in_host VARCHAR(60),\n        in_user VARCHAR(16)\n    ','enum(\'YES\',\'NO\') CHARSET utf8mb3','BEGIN\n    RETURN IF(EXISTS(SELECT 1\n                       FROM performance_schema.setup_actors\n                      WHERE (`HOST` = \'%\' OR in_host LIKE `HOST`)\n                        AND (`USER` = \'%\' OR `USER` = in_user)\n                    ),\n              \'YES\', \'NO\'\n           );\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Determines whether instrumentation of an account is enabled\n             within Performance Schema.\n             Parameters\n             in_host VARCHAR(60):\n               The hostname of the account to check.\n             in_user (VARCHAR(16)):\n               The username of the account to check.\n             Returns\n             ENUM(\'YES\', \'NO\', \'PARTIAL\')\n             Example\n             mysql> SELECT sys.ps_is_account_enabled(\'localhost\', \'root\');\n             +------------------------------------------------+\n             | sys.ps_is_account_enabled(\'localhost\', \'root\') |\n             +------------------------------------------------+\n             | YES                                            |\n             +------------------------------------------------+\n             1 row in set (0.01 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    RETURN IF(EXISTS(SELECT 1\n                       FROM performance_schema.setup_actors\n                      WHERE (`HOST` = \'%\' OR in_host LIKE `HOST`)\n                        AND (`USER` = \'%\' OR `USER` = in_user)\n                    ),\n              \'YES\', \'NO\'\n           );\nEND','NONE'),('sys','ps_is_consumer_enabled','FUNCTION','ps_is_consumer_enabled','SQL','READS_SQL_DATA','YES','INVOKER','in_consumer varchar(64)\n   ','enum(\'YES\',\'NO\') CHARSET utf8mb3','BEGIN\n    RETURN (\n        SELECT (CASE\n                   WHEN c.NAME = \'global_instrumentation\' THEN c.ENABLED\n                   WHEN c.NAME = \'thread_instrumentation\' THEN IF(cg.ENABLED = \'YES\' AND c.ENABLED = \'YES\', \'YES\', \'NO\')\n                   WHEN c.NAME LIKE \'%\\_digest\'           THEN IF(cg.ENABLED = \'YES\' AND c.ENABLED = \'YES\', \'YES\', \'NO\')\n                   WHEN c.NAME LIKE \'%\\_current\'          THEN IF(cg.ENABLED = \'YES\' AND ct.ENABLED = \'YES\' AND c.ENABLED = \'YES\', \'YES\', \'NO\')\n                   ELSE IF(cg.ENABLED = \'YES\' AND ct.ENABLED = \'YES\' AND c.ENABLED = \'YES\'\n                           AND ( SELECT cc.ENABLED FROM performance_schema.setup_consumers cc WHERE NAME = CONCAT(SUBSTRING_INDEX(c.NAME, \'_\', 2), \'_current\')\n                               ) = \'YES\', \'YES\', \'NO\')\n                END) AS IsEnabled\n          FROM performance_schema.setup_consumers c\n               INNER JOIN performance_schema.setup_consumers cg\n               INNER JOIN performance_schema.setup_consumers ct\n         WHERE cg.NAME       = \'global_instrumentation\'\n               AND ct.NAME   = \'thread_instrumentation\'\n               AND c.NAME    = in_consumer\n       );\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Determines whether a consumer is enabled (taking the consumer hierarchy into consideration)\n             within the Performance Schema.\n             Parameters\n             in_consumer VARCHAR(64):\n               The name of the consumer to check.\n             Returns\n             ENUM(\'YES\', \'NO\')\n             Example\n             mysql> SELECT sys.ps_is_consumer_enabled(\'events_stages_history\');\n             +-----------------------------------------------------+\n             | sys.ps_is_consumer_enabled(\'events_stages_history\') |\n             +-----------------------------------------------------+\n             | NO                                                  |\n             +-----------------------------------------------------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    RETURN (\n        SELECT (CASE\n                   WHEN c.NAME = \'global_instrumentation\' THEN c.ENABLED\n                   WHEN c.NAME = \'thread_instrumentation\' THEN IF(cg.ENABLED = \'YES\' AND c.ENABLED = \'YES\', \'YES\', \'NO\')\n                   WHEN c.NAME LIKE \'%\\_digest\'           THEN IF(cg.ENABLED = \'YES\' AND c.ENABLED = \'YES\', \'YES\', \'NO\')\n                   WHEN c.NAME LIKE \'%\\_current\'          THEN IF(cg.ENABLED = \'YES\' AND ct.ENABLED = \'YES\' AND c.ENABLED = \'YES\', \'YES\', \'NO\')\n                   ELSE IF(cg.ENABLED = \'YES\' AND ct.ENABLED = \'YES\' AND c.ENABLED = \'YES\'\n                           AND ( SELECT cc.ENABLED FROM performance_schema.setup_consumers cc WHERE NAME = CONCAT(SUBSTRING_INDEX(c.NAME, \'_\', 2), \'_current\')\n                               ) = \'YES\', \'YES\', \'NO\')\n                END) AS IsEnabled\n          FROM performance_schema.setup_consumers c\n               INNER JOIN performance_schema.setup_consumers cg\n               INNER JOIN performance_schema.setup_consumers ct\n         WHERE cg.NAME       = \'global_instrumentation\'\n               AND ct.NAME   = \'thread_instrumentation\'\n               AND c.NAME    = in_consumer\n       );\nEND','NONE'),('sys','table_exists','PROCEDURE','table_exists','SQL','CONTAINS_SQL','NO','INVOKER','\n        IN in_db VARCHAR(64), IN in_table VARCHAR(64),\n        OUT out_exists ENUM(\'\', \'BASE TABLE\', \'VIEW\', \'TEMPORARY\', \'SEQUENCE\', \'SYSTEM VIEW\')\n    ','','BEGIN\n    DECLARE v_error BOOLEAN DEFAULT FALSE;\n    DECLARE db_quoted VARCHAR(64);\n    DECLARE table_quoted VARCHAR(64);\n    DECLARE v_table_type VARCHAR(16) DEFAULT \'\';\n    DECLARE v_system_db BOOLEAN\n        DEFAULT LOWER(in_db) IN (\'information_schema\', \'performance_schema\');\n    DECLARE CONTINUE HANDLER FOR 1050 SET v_error = TRUE;\n    DECLARE CONTINUE HANDLER FOR 1146 SET v_error = TRUE;\n    SET out_exists = \'\';\n    SET db_quoted = sys.quote_identifier(in_db);\n    SET table_quoted = sys.quote_identifier(in_table);\n    IF (EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA = in_db AND TABLE_NAME = in_table)) THEN\n        IF v_system_db = FALSE THEN\n            SET @sys.tmp.table_exists.SQL = CONCAT(\'CREATE TEMPORARY TABLE \',\n                                                    db_quoted,\n                                                    \'.\',\n                                                    table_quoted,\n                                                    \'(id INT PRIMARY KEY)\');\n            PREPARE stmt_create_table FROM @sys.tmp.table_exists.SQL;\n            EXECUTE stmt_create_table;\n            DEALLOCATE PREPARE stmt_create_table;\n            SET @sys.tmp.table_exists.SQL = CONCAT(\'DROP TEMPORARY TABLE \',\n                                                                db_quoted,\n                                                                \'.\',\n                                                                table_quoted);\n            PREPARE stmt_drop_table FROM @sys.tmp.table_exists.SQL;\n            EXECUTE stmt_drop_table;\n            DEALLOCATE PREPARE stmt_drop_table;\n        END IF;\n        IF (v_error) THEN\n            SET out_exists = \'TEMPORARY\';\n        ELSE\n            SET v_table_type = (SELECT TABLE_TYPE FROM information_schema.TABLES WHERE TABLE_SCHEMA = in_db AND TABLE_NAME = in_table);\n            IF v_table_type = \'SYSTEM VERSIONED\' THEN\n                SET out_exists = \'BASE TABLE\';\n            ELSE\n                SET out_exists = v_table_type;\n            END IF;\n        END IF;\n    ELSE\n        IF v_system_db = FALSE THEN\n            SET @sys.tmp.table_exists.SQL = CONCAT(\'SELECT COUNT(*) FROM \',\n                                                            db_quoted,\n                                                            \'.\',\n                                                            table_quoted);\n            PREPARE stmt_select FROM @sys.tmp.table_exists.SQL;\n            IF (NOT v_error) THEN\n                DEALLOCATE PREPARE stmt_select;\n                SET out_exists = \'TEMPORARY\';\n            END IF;\n        END IF;\n    END IF;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Tests whether the table specified in in_db and in_table exists either as a regular\n             table, or as a temporary table. The returned value corresponds to the table that\n             will be used, so if there\'s both a temporary and a permanent table with the given\n             name, then \'TEMPORARY\' will be returned.\n             Parameters\n             in_db (VARCHAR(64)):\n               The database name to check for the existence of the table in.\n             in_table (VARCHAR(64)):\n               The name of the table to check the existence of.\n             out_exists ENUM(\'\', \'BASE TABLE\', \'VIEW\', \'TEMPORARY\'):\n               The return value: whether the table exists. The value is one of:\n                 * \'\'             - the table does not exist neither as a base table, view, sequence nor temporary table.\n                 * \'BASE TABLE\'   - the table name exists as a permanent base table table.\n                 * \'VIEW\'         - the table name exists as a view.\n                 * \'TEMPORARY\'    - the table name exists as a temporary table.\n                 * \'SEQUENCE\'     - the table name exists as a sequence.\n                 * \'SYSTEM VIEW\'  - the table name exists as a system view.\n             Example\n             mysql> CREATE DATABASE db1;\n             Query OK, 1 row affected (0.07 sec)\n             mysql> use db1;\n             Database changed\n             mysql> CREATE TABLE t1 (id INT PRIMARY KEY);\n             Query OK, 0 rows affected (0.08 sec)\n             mysql> CREATE TABLE t2 (id INT PRIMARY KEY);\n             Query OK, 0 rows affected (0.08 sec)\n             mysql> CREATE view v_t1 AS SELECT * FROM t1;\n             Query OK, 0 rows affected (0.00 sec)\n             mysql> CREATE TEMPORARY TABLE t1 (id INT PRIMARY KEY);\n             Query OK, 0 rows affected (0.00 sec)\n             mysql> CALL sys.table_exists(\'db1\', \'t1\', @exists); SELECT @exists;\n             Query OK, 0 rows affected (0.00 sec)\n             +------------+\n             | @exists    |\n             +------------+\n             | TEMPORARY  |\n             +------------+\n             1 row in set (0.00 sec)\n             mysql> CALL sys.table_exists(\'db1\', \'t2\', @exists); SELECT @exists;\n             Query OK, 0 rows affected (0.00 sec)\n             +------------+\n             | @exists    |\n             +------------+\n             | BASE TABLE |\n             +------------+\n             1 row in set (0.01 sec)\n             mysql> CALL sys.table_exists(\'db1\', \'v_t1\', @exists); SELECT @exists;\n             Query OK, 0 rows affected (0.00 sec)\n             +---------+\n             | @exists |\n             +---------+\n             | VIEW    |\n             +---------+\n             1 row in set (0.00 sec)\n             MariaDB [sys]> CALL sys.table_exists(\'db1\', \'s\', @exists); SELECT @exists;\n             Query OK, 0 rows affected (0.006 sec)\n             +----------+\n             | @exists  |\n             +----------+\n             | SEQUENCE |\n             +----------+\n             1 row in set (0.000 sec)\n             MariaDB [sys]> CALL table_exists(\'information_schema\', \'user_variables\', @exists); SELECT @exists;\n             Query OK, 0 rows affected (0.003 sec)\n             +-------------+\n             | @exists     |\n             +-------------+\n             | SYSTEM VIEW |\n             +-------------+\n             1 row in set (0.001 sec)\n             mysql> CALL sys.table_exists(\'db1\', \'t3\', @exists); SELECT @exists;\n             Query OK, 0 rows affected (0.01 sec)\n             +---------+\n             | @exists |\n             +---------+\n             |         |\n             +---------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    DECLARE v_error BOOLEAN DEFAULT FALSE;\n    DECLARE db_quoted VARCHAR(64);\n    DECLARE table_quoted VARCHAR(64);\n    DECLARE v_table_type VARCHAR(16) DEFAULT \'\';\n    DECLARE v_system_db BOOLEAN\n        DEFAULT LOWER(in_db) IN (\'information_schema\', \'performance_schema\');\n    DECLARE CONTINUE HANDLER FOR 1050 SET v_error = TRUE;\n    DECLARE CONTINUE HANDLER FOR 1146 SET v_error = TRUE;\n    SET out_exists = \'\';\n    SET db_quoted = sys.quote_identifier(in_db);\n    SET table_quoted = sys.quote_identifier(in_table);\n    IF (EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA = in_db AND TABLE_NAME = in_table)) THEN\n        IF v_system_db = FALSE THEN\n            SET @sys.tmp.table_exists.SQL = CONCAT(\'CREATE TEMPORARY TABLE \',\n                                                    db_quoted,\n                                                    \'.\',\n                                                    table_quoted,\n                                                    \'(id INT PRIMARY KEY)\');\n            PREPARE stmt_create_table FROM @sys.tmp.table_exists.SQL;\n            EXECUTE stmt_create_table;\n            DEALLOCATE PREPARE stmt_create_table;\n            SET @sys.tmp.table_exists.SQL = CONCAT(\'DROP TEMPORARY TABLE \',\n                                                                db_quoted,\n                                                                \'.\',\n                                                                table_quoted);\n            PREPARE stmt_drop_table FROM @sys.tmp.table_exists.SQL;\n            EXECUTE stmt_drop_table;\n            DEALLOCATE PREPARE stmt_drop_table;\n        END IF;\n        IF (v_error) THEN\n            SET out_exists = \'TEMPORARY\';\n        ELSE\n            SET v_table_type = (SELECT TABLE_TYPE FROM information_schema.TABLES WHERE TABLE_SCHEMA = in_db AND TABLE_NAME = in_table);\n            IF v_table_type = \'SYSTEM VERSIONED\' THEN\n                SET out_exists = \'BASE TABLE\';\n            ELSE\n                SET out_exists = v_table_type;\n            END IF;\n        END IF;\n    ELSE\n        IF v_system_db = FALSE THEN\n            SET @sys.tmp.table_exists.SQL = CONCAT(\'SELECT COUNT(*) FROM \',\n                                                            db_quoted,\n                                                            \'.\',\n                                                            table_quoted);\n            PREPARE stmt_select FROM @sys.tmp.table_exists.SQL;\n            IF (NOT v_error) THEN\n                DEALLOCATE PREPARE stmt_select;\n                SET out_exists = \'TEMPORARY\';\n            END IF;\n        END IF;\n    END IF;\nEND','NONE'),('sys','ps_is_instrument_default_enabled','FUNCTION','ps_is_instrument_default_enabled','SQL','READS_SQL_DATA','YES','INVOKER','in_instrument VARCHAR(128)\n    ','enum(\'YES\',\'NO\') CHARSET utf8mb3','BEGIN\n    DECLARE v_enabled ENUM(\'YES\', \'NO\');\n    SET v_enabled = IF(in_instrument LIKE \'wait/io/file/%\'\n                        OR in_instrument LIKE \'wait/io/table/%\'\n                        OR in_instrument LIKE \'statement/%\'\n                        OR in_instrument LIKE \'memory/performance_schema/%\'\n                        OR in_instrument IN (\'wait/lock/table/sql/handler\', \'idle\')\n               \n                      ,\n                       \'YES\',\n                       \'NO\'\n                    );\n    RETURN v_enabled;\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Returns whether an instrument is enabled by default in this version of MySQL.\n             Parameters\n             in_instrument VARCHAR(128):\n               The instrument to check.\n             Returns\n             ENUM(\'YES\', \'NO\')\n             Example\n             mysql> SELECT sys.ps_is_instrument_default_enabled(\'statement/sql/select\');\n             +--------------------------------------------------------------+\n             | sys.ps_is_instrument_default_enabled(\'statement/sql/select\') |\n             +--------------------------------------------------------------+\n             | YES                                                          |\n             +--------------------------------------------------------------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    DECLARE v_enabled ENUM(\'YES\', \'NO\');\n    SET v_enabled = IF(in_instrument LIKE \'wait/io/file/%\'\n                        OR in_instrument LIKE \'wait/io/table/%\'\n                        OR in_instrument LIKE \'statement/%\'\n                        OR in_instrument LIKE \'memory/performance_schema/%\'\n                        OR in_instrument IN (\'wait/lock/table/sql/handler\', \'idle\')\n               \n                      ,\n                       \'YES\',\n                       \'NO\'\n                    );\n    RETURN v_enabled;\nEND','NONE'),('sys','ps_is_instrument_default_timed','FUNCTION','ps_is_instrument_default_timed','SQL','READS_SQL_DATA','YES','INVOKER','in_instrument VARCHAR(128)\n    ','enum(\'YES\',\'NO\') CHARSET utf8mb3','BEGIN\n    DECLARE v_timed ENUM(\'YES\', \'NO\');\n    SET v_timed = IF(in_instrument LIKE \'wait/io/file/%\'\n                        OR in_instrument LIKE \'wait/io/table/%\'\n                        OR in_instrument LIKE \'statement/%\'\n                        OR in_instrument IN (\'wait/lock/table/sql/handler\', \'idle\')\n               \n                      ,\n                       \'YES\',\n                       \'NO\'\n                    );\n    RETURN v_timed;\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Returns whether an instrument is timed by default in this version of MySQL.\n             Parameters\n             in_instrument VARCHAR(128):\n               The instrument to check.\n             Returns\n             ENUM(\'YES\', \'NO\')\n             Example\n             mysql> SELECT sys.ps_is_instrument_default_timed(\'statement/sql/select\');\n             +------------------------------------------------------------+\n             | sys.ps_is_instrument_default_timed(\'statement/sql/select\') |\n             +------------------------------------------------------------+\n             | YES                                                        |\n             +------------------------------------------------------------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    DECLARE v_timed ENUM(\'YES\', \'NO\');\n    SET v_timed = IF(in_instrument LIKE \'wait/io/file/%\'\n                        OR in_instrument LIKE \'wait/io/table/%\'\n                        OR in_instrument LIKE \'statement/%\'\n                        OR in_instrument IN (\'wait/lock/table/sql/handler\', \'idle\')\n               \n                      ,\n                       \'YES\',\n                       \'NO\'\n                    );\n    RETURN v_timed;\nEND','NONE'),('sys','ps_is_thread_instrumented','FUNCTION','ps_is_thread_instrumented','SQL','READS_SQL_DATA','NO','INVOKER','in_connection_id BIGINT UNSIGNED\n    ','enum(\'YES\',\'NO\',\'UNKNOWN\') CHARSET utf8mb3','BEGIN\n    DECLARE v_enabled ENUM(\'YES\', \'NO\', \'UNKNOWN\');\n    IF (in_connection_id IS NULL) THEN\n        RETURN NULL;\n    END IF;\n    SELECT INSTRUMENTED INTO v_enabled\n      FROM performance_schema.threads\n     WHERE PROCESSLIST_ID = in_connection_id;\n    IF (v_enabled IS NULL) THEN\n        RETURN \'UNKNOWN\';\n    ELSE\n        RETURN v_enabled;\n    END IF;\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Checks whether the provided connection id is instrumented within Performance Schema.\n             Parameters\n             in_connection_id (BIGINT UNSIGNED):\n               The id of the connection to check.\n             Returns\n             ENUM(\'YES\', \'NO\', \'UNKNOWN\')\n             Example\n             mysql> SELECT sys.ps_is_thread_instrumented(CONNECTION_ID());\n             +------------------------------------------------+\n             | sys.ps_is_thread_instrumented(CONNECTION_ID()) |\n             +------------------------------------------------+\n             | YES                                            |\n             +------------------------------------------------+\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    DECLARE v_enabled ENUM(\'YES\', \'NO\', \'UNKNOWN\');\n    IF (in_connection_id IS NULL) THEN\n        RETURN NULL;\n    END IF;\n    SELECT INSTRUMENTED INTO v_enabled\n      FROM performance_schema.threads\n     WHERE PROCESSLIST_ID = in_connection_id;\n    IF (v_enabled IS NULL) THEN\n        RETURN \'UNKNOWN\';\n    ELSE\n        RETURN v_enabled;\n    END IF;\nEND','NONE'),('sys','ps_thread_id','FUNCTION','ps_thread_id','SQL','READS_SQL_DATA','NO','INVOKER','in_connection_id BIGINT UNSIGNED\n    ','bigint(20) unsigned','BEGIN\n    RETURN (SELECT THREAD_ID\n              FROM `performance_schema`.`threads`\n             WHERE PROCESSLIST_ID = IFNULL(in_connection_id, CONNECTION_ID())\n           );\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Return the Performance Schema THREAD_ID for the specified connection ID.\n             Parameters\n             in_connection_id (BIGINT UNSIGNED):\n               The id of the connection to return the thread id for. If NULL, the current\n               connection thread id is returned.\n             Example\n             mysql> SELECT sys.ps_thread_id(79);\n             +----------------------+\n             | sys.ps_thread_id(79) |\n             +----------------------+\n             |                   98 |\n             +----------------------+\n             1 row in set (0.00 sec)\n             mysql> SELECT sys.ps_thread_id(CONNECTION_ID());\n             +-----------------------------------+\n             | sys.ps_thread_id(CONNECTION_ID()) |\n             +-----------------------------------+\n             |                                98 |\n             +-----------------------------------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    RETURN (SELECT THREAD_ID\n              FROM `performance_schema`.`threads`\n             WHERE PROCESSLIST_ID = IFNULL(in_connection_id, CONNECTION_ID())\n           );\nEND','NONE'),('sys','ps_thread_account','FUNCTION','ps_thread_account','SQL','READS_SQL_DATA','NO','INVOKER','in_thread_id BIGINT UNSIGNED\n    ','text CHARSET utf8mb3','BEGIN\n    RETURN (SELECT IF(\n                      type = \'FOREGROUND\',\n                      CONCAT(processlist_user, \'@\', processlist_host),\n                      type\n                     ) AS account\n              FROM `performance_schema`.`threads`\n             WHERE thread_id = in_thread_id);\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Return the user@host account for the given Performance Schema thread id.\n             Parameters\n             in_thread_id (BIGINT UNSIGNED):\n               The id of the thread to return the account for.\n             Example\n             mysql> select thread_id, processlist_user, processlist_host from performance_schema.threads where type = \'foreground\';\n              +-----------+------------------+------------------+\n              | thread_id | processlist_user | processlist_host |\n              +-----------+------------------+------------------+\n              |        23 | NULL             | NULL             |\n              |        30 | root             | localhost        |\n              |        31 | msandbox         | localhost        |\n              |        32 | msandbox         | localhost        |\n              +-----------+------------------+------------------+\n              4 rows in set (0.00 sec)\n              mysql> select sys.ps_thread_account(31);\n              +---------------------------+\n              | sys.ps_thread_account(31) |\n              +---------------------------+\n              | msandbox@localhost        |\n              +---------------------------+\n              1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    RETURN (SELECT IF(\n                      type = \'FOREGROUND\',\n                      CONCAT(processlist_user, \'@\', processlist_host),\n                      type\n                     ) AS account\n              FROM `performance_schema`.`threads`\n             WHERE thread_id = in_thread_id);\nEND','NONE'),('sys','quote_identifier','FUNCTION','quote_identifier','SQL','NO_SQL','YES','INVOKER','in_identifier TEXT','text CHARSET utf8mb3','BEGIN\n    RETURN CONCAT(\'`\', REPLACE(in_identifier, \'`\', \'``\'), \'`\');\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Takes an unquoted identifier (schema name, table name, etc.) and\n             returns the identifier quoted with backticks.\n             Parameters\n             in_identifier (TEXT):\n               The identifier to quote.\n             Returns\n             TEXT\n             Example\n             mysql> SELECT sys.quote_identifier(\'my_identifier\') AS Identifier;\n             +-----------------+\n             | Identifier      |\n             +-----------------+\n             | `my_identifier` |\n             +-----------------+\n             1 row in set (0.00 sec)\n             mysql> SELECT sys.quote_identifier(\'my`idenfier\') AS Identifier;\n             +----------------+\n             | Identifier     |\n             +----------------+\n             | `my``idenfier` |\n             +----------------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    RETURN CONCAT(\'`\', REPLACE(in_identifier, \'`\', \'``\'), \'`\');\nEND','NONE'),('sys','sys_get_config','FUNCTION','sys_get_config','SQL','READS_SQL_DATA','YES','INVOKER','in_variable_name VARCHAR(128),\n        in_default_value VARCHAR(128)\n    ','varchar(128) CHARSET utf8mb3','BEGIN\n    DECLARE v_value VARCHAR(128) DEFAULT NULL;\n    DECLARE old_val INTEGER DEFAULT NULL;\n    SET v_value = (SELECT value FROM sys.sys_config WHERE variable = in_variable_name);\n    IF (v_value IS NULL) THEN\n        SET v_value = in_default_value;\n    END IF;\n    RETURN v_value;\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Returns the value for the requested variable using the following logic:\n                1. If the option exists in sys.sys_config return the value from there.\n                2. Else fall back on the provided default value.\n             Notes for using sys_get_config():\n                * If the default value argument to sys_get_config() is NULL and case 2. is reached, NULL is returned.\n                  It is then expected that the caller is able to handle NULL for the given configuration option.\n                * The convention is to name the user variables @sys.<name of variable>. It is <name of variable> that\n                  is stored in the sys_config table and is what is expected as the argument to sys_get_config().\n                * If you want to check whether the configuration option has already been set and if not assign with\n                  the return value of sys_get_config() you can use IFNULL(...) (see example below). However this should\n                  not be done inside a loop (e.g. for each row in a result set) as for repeated calls where assignment\n                  is only needed in the first iteration using IFNULL(...) is expected to be significantly slower than\n                  using an IF (...) THEN ... END IF; block (see example below).\n             Parameters\n             in_variable_name (VARCHAR(128)):\n               The name of the config option to return the value for.\n             in_default_value (VARCHAR(128)):\n               The default value to return if the variable does not exist in sys.sys_config.\n             Returns\n             VARCHAR(128)\n             Example\n             mysql> SELECT sys.sys_get_config(\'statement_truncate_len\', 128) AS Value;\n             +-------+\n             | Value |\n             +-------+\n             | 64    |\n             +-------+\n             1 row in set (0.00 sec)\n             mysql> SET @sys.statement_truncate_len = IFNULL(@sys.statement_truncate_len, sys.sys_get_config(\'statement_truncate_len\', 64));\n             Query OK, 0 rows affected (0.00 sec)\n             IF (@sys.statement_truncate_len IS NULL) THEN\n                 SET @sys.statement_truncate_len = sys.sys_get_config(\'statement_truncate_len\', 64);\n             END IF;\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    DECLARE v_value VARCHAR(128) DEFAULT NULL;\n    DECLARE old_val INTEGER DEFAULT NULL;\n    SET v_value = (SELECT value FROM sys.sys_config WHERE variable = in_variable_name);\n    IF (v_value IS NULL) THEN\n        SET v_value = in_default_value;\n    END IF;\n    RETURN v_value;\nEND','NONE'),('sys','version_major','FUNCTION','version_major','SQL','NO_SQL','NO','INVOKER','','tinyint(3) unsigned','BEGIN\n    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), \'-\', 1), \'.\', 1);\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Returns the major version of MySQL Server.\n             Returns\n             TINYINT UNSIGNED\n             Example\n             mysql> SELECT VERSION(), sys.version_major();\n             +--------------------------------------+---------------------+\n             | VERSION()                            | sys.version_major() |\n             +--------------------------------------+---------------------+\n             | 5.7.9-enterprise-commercial-advanced | 5                   |\n             +--------------------------------------+---------------------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), \'-\', 1), \'.\', 1);\nEND','NONE'),('sys','version_minor','FUNCTION','version_minor','SQL','NO_SQL','NO','INVOKER','','tinyint(3) unsigned','BEGIN\n    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), \'-\', 1), \'.\', 2), \'.\', -1);\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Returns the minor (release series) version of MySQL Server.\n             Returns\n             TINYINT UNSIGNED\n             Example\n             mysql> SELECT VERSION(), sys.server_minor();\n             +--------------------------------------+---------------------+\n             | VERSION()                            | sys.version_minor() |\n             +--------------------------------------+---------------------+\n             | 5.7.9-enterprise-commercial-advanced | 7                   |\n             +--------------------------------------+---------------------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), \'-\', 1), \'.\', 2), \'.\', -1);\nEND','NONE'),('sys','version_patch','FUNCTION','version_patch','SQL','NO_SQL','NO','INVOKER','','tinyint(3) unsigned','BEGIN\n    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), \'-\', 1), \'.\', -1);\nEND','mariadb.sys@localhost','2022-10-03 11:40:13','2022-10-03 11:40:13','','\n             Description\n             Returns the patch release version of MySQL Server.\n             Returns\n             TINYINT UNSIGNED\n             Example\n             mysql> SELECT VERSION(), sys.version_patch();\n             +--------------------------------------+---------------------+\n             | VERSION()                            | sys.version_patch() |\n             +--------------------------------------+---------------------+\n             | 5.7.9-enterprise-commercial-advanced | 9                   |\n             +--------------------------------------+---------------------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), \'-\', 1), \'.\', -1);\nEND','NONE'),('sys','execute_prepared_stmt','PROCEDURE','execute_prepared_stmt','SQL','READS_SQL_DATA','NO','INVOKER','\n        IN in_query longtext CHARACTER SET UTF8\n    ','','BEGIN\n    IF (@sys.debug IS NULL) THEN\n        SET @sys.debug = sys.sys_get_config(\'debug\', \'OFF\');\n    END IF;\n    IF (in_query IS NULL OR LENGTH(in_query) < 4) THEN\n       SIGNAL SQLSTATE \'45000\'\n          SET MESSAGE_TEXT = \"The @sys.execute_prepared_stmt.sql must contain a query\";\n    END IF;\n    SET @sys.execute_prepared_stmt.sql = in_query;\n    IF (@sys.debug = \'ON\') THEN\n        SELECT @sys.execute_prepared_stmt.sql AS \'Debug\';\n    END IF;\n    PREPARE sys_execute_prepared_stmt FROM @sys.execute_prepared_stmt.sql;\n    EXECUTE sys_execute_prepared_stmt;\n    DEALLOCATE PREPARE sys_execute_prepared_stmt;\n    SET @sys.execute_prepared_stmt.sql = NULL;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Takes the query in the argument and executes it using a prepared statement. The prepared statement is deallocated,\n             so the procedure is mainly useful for executing one off dynamically created queries.\n             The sys_execute_prepared_stmt prepared statement name is used for the query and is required not to exist.\n             Parameters\n             in_query (longtext CHARACTER SET UTF8):\n               The query to execute.\n             Configuration Options\n             sys.debug\n               Whether to provide debugging output.\n               Default is \'OFF\'. Set to \'ON\' to include.\n             Example\n             mysql> CALL sys.execute_prepared_stmt(\'SELECT * FROM sys.sys_config\');\n             +------------------------+-------+---------------------+--------+\n             | variable               | value | set_time            | set_by |\n             +------------------------+-------+---------------------+--------+\n             | statement_truncate_len | 64    | 2015-06-30 13:06:00 | NULL   |\n             +------------------------+-------+---------------------+--------+\n             1 row in set (0.00 sec)\n             Query OK, 0 rows affected (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    IF (@sys.debug IS NULL) THEN\n        SET @sys.debug = sys.sys_get_config(\'debug\', \'OFF\');\n    END IF;\n    IF (in_query IS NULL OR LENGTH(in_query) < 4) THEN\n       SIGNAL SQLSTATE \'45000\'\n          SET MESSAGE_TEXT = \"The @sys.execute_prepared_stmt.sql must contain a query\";\n    END IF;\n    SET @sys.execute_prepared_stmt.sql = in_query;\n    IF (@sys.debug = \'ON\') THEN\n        SELECT @sys.execute_prepared_stmt.sql AS \'Debug\';\n    END IF;\n    PREPARE sys_execute_prepared_stmt FROM @sys.execute_prepared_stmt.sql;\n    EXECUTE sys_execute_prepared_stmt;\n    DEALLOCATE PREPARE sys_execute_prepared_stmt;\n    SET @sys.execute_prepared_stmt.sql = NULL;\nEND','NONE'),('sys','ps_setup_disable_background_threads','PROCEDURE','ps_setup_disable_background_threads','SQL','MODIFIES_SQL_DATA','NO','INVOKER','','','BEGIN\n    UPDATE performance_schema.threads\n       SET instrumented = \'NO\'\n     WHERE type = \'BACKGROUND\';\n    SELECT CONCAT(\'Disabled \', @rows := ROW_COUNT(), \' background thread\', IF(@rows != 1, \'s\', \'\')) AS summary;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Disable all background thread instrumentation within Performance Schema.\n             Parameters\n             None.\n             Example\n             mysql> CALL sys.ps_setup_disable_background_threads();\n             +--------------------------------+\n             | summary                        |\n             +--------------------------------+\n             | Disabled 18 background threads |\n             +--------------------------------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    UPDATE performance_schema.threads\n       SET instrumented = \'NO\'\n     WHERE type = \'BACKGROUND\';\n    SELECT CONCAT(\'Disabled \', @rows := ROW_COUNT(), \' background thread\', IF(@rows != 1, \'s\', \'\')) AS summary;\nEND','NONE'),('sys','ps_setup_disable_consumer','PROCEDURE','ps_setup_disable_consumer','SQL','MODIFIES_SQL_DATA','NO','INVOKER','\n        IN consumer VARCHAR(128)\n    ','','BEGIN\n    UPDATE performance_schema.setup_consumers\n       SET enabled = \'NO\'\n     WHERE name LIKE CONCAT(\'%\', consumer, \'%\');\n    SELECT CONCAT(\'Disabled \', @rows := ROW_COUNT(), \' consumer\', IF(@rows != 1, \'s\', \'\')) AS summary;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Disables consumers within Performance Schema\n             matching the input pattern.\n             Parameters\n             consumer (VARCHAR(128)):\n               A LIKE pattern match (using \"%consumer%\") of consumers to disable\n             Example\n             To disable all consumers:\n             mysql> CALL sys.ps_setup_disable_consumer(\'\');\n             +--------------------------+\n             | summary                  |\n             +--------------------------+\n             | Disabled 15 consumers    |\n             +--------------------------+\n             1 row in set (0.02 sec)\n             To disable just the event_stage consumers:\n             mysql> CALL sys.ps_setup_disable_comsumers(\'stage\');\n             +------------------------+\n             | summary                |\n             +------------------------+\n             | Disabled 3 consumers   |\n             +------------------------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    UPDATE performance_schema.setup_consumers\n       SET enabled = \'NO\'\n     WHERE name LIKE CONCAT(\'%\', consumer, \'%\');\n    SELECT CONCAT(\'Disabled \', @rows := ROW_COUNT(), \' consumer\', IF(@rows != 1, \'s\', \'\')) AS summary;\nEND','NONE'),('sys','ps_setup_disable_instrument','PROCEDURE','ps_setup_disable_instrument','SQL','MODIFIES_SQL_DATA','NO','INVOKER','\n        IN in_pattern VARCHAR(128)\n    ','','BEGIN\n    UPDATE performance_schema.setup_instruments\n       SET enabled = \'NO\', timed = \'NO\'\n     WHERE name LIKE CONCAT(\'%\', in_pattern, \'%\');\n    SELECT CONCAT(\'Disabled \', @rows := ROW_COUNT(), \' instrument\', IF(@rows != 1, \'s\', \'\')) AS summary;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Disables instruments within Performance Schema\n             matching the input pattern.\n             Parameters\n             in_pattern (VARCHAR(128)):\n               A LIKE pattern match (using \"%in_pattern%\") of events to disable\n             Example\n             To disable all mutex instruments:\n             mysql> CALL sys.ps_setup_disable_instrument(\'wait/synch/mutex\');\n             +--------------------------+\n             | summary                  |\n             +--------------------------+\n             | Disabled 155 instruments |\n             +--------------------------+\n             1 row in set (0.02 sec)\n             To disable just a specific TCP/IP based network IO instrument:\n             mysql> CALL sys.ps_setup_disable_instrument(\'wait/io/socket/sql/server_tcpip_socket\');\n             +------------------------+\n             | summary                |\n             +------------------------+\n             | Disabled 1 instruments |\n             +------------------------+\n             1 row in set (0.00 sec)\n             To disable all instruments:\n             mysql> CALL sys.ps_setup_disable_instrument(\'\');\n             +--------------------------+\n             | summary                  |\n             +--------------------------+\n             | Disabled 547 instruments |\n             +--------------------------+\n             1 row in set (0.01 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    UPDATE performance_schema.setup_instruments\n       SET enabled = \'NO\', timed = \'NO\'\n     WHERE name LIKE CONCAT(\'%\', in_pattern, \'%\');\n    SELECT CONCAT(\'Disabled \', @rows := ROW_COUNT(), \' instrument\', IF(@rows != 1, \'s\', \'\')) AS summary;\nEND','NONE'),('sys','ps_setup_disable_thread','PROCEDURE','ps_setup_disable_thread','SQL','MODIFIES_SQL_DATA','NO','INVOKER','\n        IN in_connection_id BIGINT\n    ','','BEGIN\n    UPDATE performance_schema.threads\n       SET instrumented = \'NO\'\n     WHERE processlist_id = in_connection_id;\n    SELECT CONCAT(\'Disabled \', @rows := ROW_COUNT(), \' thread\', IF(@rows != 1, \'s\', \'\')) AS summary;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Disable the given connection/thread in Performance Schema.\n             Parameters\n             in_connection_id (BIGINT):\n               The connection ID (PROCESSLIST_ID from performance_schema.threads\n               or the ID shown within SHOW PROCESSLIST)\n             Example\n             mysql> CALL sys.ps_setup_disable_thread(3);\n             +-------------------+\n             | summary           |\n             +-------------------+\n             | Disabled 1 thread |\n             +-------------------+\n             1 row in set (0.01 sec)\n             To disable the current connection:\n             mysql> CALL sys.ps_setup_disable_thread(CONNECTION_ID());\n             +-------------------+\n             | summary           |\n             +-------------------+\n             | Disabled 1 thread |\n             +-------------------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    UPDATE performance_schema.threads\n       SET instrumented = \'NO\'\n     WHERE processlist_id = in_connection_id;\n    SELECT CONCAT(\'Disabled \', @rows := ROW_COUNT(), \' thread\', IF(@rows != 1, \'s\', \'\')) AS summary;\nEND','NONE'),('sys','ps_setup_enable_background_threads','PROCEDURE','ps_setup_enable_background_threads','SQL','MODIFIES_SQL_DATA','NO','INVOKER','','','BEGIN\n    UPDATE performance_schema.threads\n       SET instrumented = \'YES\'\n     WHERE type = \'BACKGROUND\';\n    SELECT CONCAT(\'Enabled \', @rows := ROW_COUNT(), \' background thread\', IF(@rows != 1, \'s\', \'\')) AS summary;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Enable all background thread instrumentation within Performance Schema.\n             Parameters\n             None.\n             Example\n             mysql> CALL sys.ps_setup_enable_background_threads();\n             +-------------------------------+\n             | summary                       |\n             +-------------------------------+\n             | Enabled 18 background threads |\n             +-------------------------------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    UPDATE performance_schema.threads\n       SET instrumented = \'YES\'\n     WHERE type = \'BACKGROUND\';\n    SELECT CONCAT(\'Enabled \', @rows := ROW_COUNT(), \' background thread\', IF(@rows != 1, \'s\', \'\')) AS summary;\nEND','NONE'),('sys','ps_setup_enable_consumer','PROCEDURE','ps_setup_enable_consumer','SQL','MODIFIES_SQL_DATA','NO','INVOKER','\n        IN consumer VARCHAR(128)\n    ','','BEGIN\n    UPDATE performance_schema.setup_consumers\n       SET enabled = \'YES\'\n     WHERE name LIKE CONCAT(\'%\', consumer, \'%\');\n    SELECT CONCAT(\'Enabled \', @rows := ROW_COUNT(), \' consumer\', IF(@rows != 1, \'s\', \'\')) AS summary;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Enables consumers within Performance Schema\n             matching the input pattern.\n             Parameters\n             consumer (VARCHAR(128)):\n               A LIKE pattern match (using \"%consumer%\") of consumers to enable\n             Example\n             To enable all consumers:\n             mysql> CALL sys.ps_setup_enable_consumer(\'\');\n             +-------------------------+\n             | summary                 |\n             +-------------------------+\n             | Enabled 10 consumers    |\n             +-------------------------+\n             1 row in set (0.02 sec)\n             Query OK, 0 rows affected (0.02 sec)\n             To enable just \"waits\" consumers:\n             mysql> CALL sys.ps_setup_enable_consumer(\'waits\');\n             +-----------------------+\n             | summary               |\n             +-----------------------+\n             | Enabled 3 consumers   |\n             +-----------------------+\n             1 row in set (0.00 sec)\n             Query OK, 0 rows affected (0.00 sec)\n             ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    UPDATE performance_schema.setup_consumers\n       SET enabled = \'YES\'\n     WHERE name LIKE CONCAT(\'%\', consumer, \'%\');\n    SELECT CONCAT(\'Enabled \', @rows := ROW_COUNT(), \' consumer\', IF(@rows != 1, \'s\', \'\')) AS summary;\nEND','NONE'),('sys','ps_setup_enable_instrument','PROCEDURE','ps_setup_enable_instrument','SQL','MODIFIES_SQL_DATA','NO','INVOKER','\n        IN in_pattern VARCHAR(128)\n    ','','BEGIN\n    UPDATE performance_schema.setup_instruments\n       SET enabled = \'YES\', timed = \'YES\'\n     WHERE name LIKE CONCAT(\'%\', in_pattern, \'%\');\n    SELECT CONCAT(\'Enabled \', @rows := ROW_COUNT(), \' instrument\', IF(@rows != 1, \'s\', \'\')) AS summary;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Enables instruments within Performance Schema\n             matching the input pattern.\n             Parameters\n             in_pattern (VARCHAR(128)):\n               A LIKE pattern match (using \"%in_pattern%\") of events to enable\n             Example\n             To enable all mutex instruments:\n             mysql> CALL sys.ps_setup_enable_instrument(\'wait/synch/mutex\');\n             +-------------------------+\n             | summary                 |\n             +-------------------------+\n             | Enabled 155 instruments |\n             +-------------------------+\n             1 row in set (0.02 sec)\n             Query OK, 0 rows affected (0.02 sec)\n             To enable just a specific TCP/IP based network IO instrument:\n             mysql> CALL sys.ps_setup_enable_instrument(\'wait/io/socket/sql/server_tcpip_socket\');\n             +-----------------------+\n             | summary               |\n             +-----------------------+\n             | Enabled 1 instruments |\n             +-----------------------+\n             1 row in set (0.00 sec)\n             Query OK, 0 rows affected (0.00 sec)\n             To enable all instruments:\n             mysql> CALL sys.ps_setup_enable_instrument(\'\');\n             +-------------------------+\n             | summary                 |\n             +-------------------------+\n             | Enabled 547 instruments |\n             +-------------------------+\n             1 row in set (0.01 sec)\n             Query OK, 0 rows affected (0.01 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    UPDATE performance_schema.setup_instruments\n       SET enabled = \'YES\', timed = \'YES\'\n     WHERE name LIKE CONCAT(\'%\', in_pattern, \'%\');\n    SELECT CONCAT(\'Enabled \', @rows := ROW_COUNT(), \' instrument\', IF(@rows != 1, \'s\', \'\')) AS summary;\nEND','NONE'),('sys','ps_setup_enable_thread','PROCEDURE','ps_setup_enable_thread','SQL','MODIFIES_SQL_DATA','NO','INVOKER','\n        IN in_connection_id BIGINT\n    ','','BEGIN\n    UPDATE performance_schema.threads\n       SET instrumented = \'YES\'\n     WHERE processlist_id = in_connection_id;\n    SELECT CONCAT(\'Enabled \', @rows := ROW_COUNT(), \' thread\', IF(@rows != 1, \'s\', \'\')) AS summary;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Enable the given connection/thread in Performance Schema.\n             Parameters\n             in_connection_id (BIGINT):\n               The connection ID (PROCESSLIST_ID from performance_schema.threads\n               or the ID shown within SHOW PROCESSLIST)\n             Example\n             mysql> CALL sys.ps_setup_enable_thread(3);\n             +------------------+\n             | summary          |\n             +------------------+\n             | Enabled 1 thread |\n             +------------------+\n             1 row in set (0.01 sec)\n             To enable the current connection:\n             mysql> CALL sys.ps_setup_enable_thread(CONNECTION_ID());\n             +------------------+\n             | summary          |\n             +------------------+\n             | Enabled 1 thread |\n             +------------------+\n             1 row in set (0.00 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    UPDATE performance_schema.threads\n       SET instrumented = \'YES\'\n     WHERE processlist_id = in_connection_id;\n    SELECT CONCAT(\'Enabled \', @rows := ROW_COUNT(), \' thread\', IF(@rows != 1, \'s\', \'\')) AS summary;\nEND','NONE'),('sys','ps_setup_save','PROCEDURE','ps_setup_save','SQL','MODIFIES_SQL_DATA','NO','INVOKER','\n        IN in_timeout INT\n    ','','BEGIN\n    DECLARE v_lock_result INT;\n    SET @log_bin := @@sql_log_bin;\n    SET sql_log_bin = 0;\n    SELECT GET_LOCK(\'sys.ps_setup_save\', in_timeout) INTO v_lock_result;\n    IF v_lock_result THEN\n        DROP TEMPORARY TABLE IF EXISTS tmp_setup_actors;\n        DROP TEMPORARY TABLE IF EXISTS tmp_setup_consumers;\n        DROP TEMPORARY TABLE IF EXISTS tmp_setup_instruments;\n        DROP TEMPORARY TABLE IF EXISTS tmp_threads;\n        CREATE TEMPORARY TABLE tmp_setup_actors AS SELECT * FROM performance_schema.setup_actors;\n        CREATE TEMPORARY TABLE tmp_setup_consumers AS SELECT * FROM  performance_schema.setup_consumers;\n        CREATE TEMPORARY TABLE tmp_setup_instruments AS SELECT * FROM  performance_schema.setup_instruments;\n        CREATE TEMPORARY TABLE tmp_threads (THREAD_ID bigint unsigned NOT NULL PRIMARY KEY, INSTRUMENTED enum(\'YES\',\'NO\') NOT NULL);\n        INSERT INTO tmp_threads SELECT THREAD_ID, INSTRUMENTED FROM performance_schema.threads;\n    ELSE\n        SIGNAL SQLSTATE VALUE \'90000\'\n           SET MESSAGE_TEXT = \'Could not lock the sys.ps_setup_save user lock, another thread has a saved configuration\';\n    END IF;\n    SET sql_log_bin = @log_bin;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Saves the current configuration of Performance Schema,\n             so that you can alter the setup for debugging purposes,\n             but restore it to a previous state.\n             Use the companion procedure - ps_setup_reload_saved(), to\n             restore the saved config.\n             The named lock \"sys.ps_setup_save\" is taken before the\n             current configuration is saved. If the attempt to get the named\n             lock times out, an error occurs.\n             The lock is released after the settings have been restored by\n             calling ps_setup_reload_saved().\n             Requires the SUPER privilege for \"SET sql_log_bin = 0;\".\n             Parameters\n             in_timeout INT\n               The timeout in seconds used when trying to obtain the lock.\n               A negative timeout means infinite timeout.\n             Example\n             mysql> CALL sys.ps_setup_save(-1);\n             Query OK, 0 rows affected (0.08 sec)\n             mysql> UPDATE performance_schema.setup_instruments\n                 ->    SET enabled = \'YES\', timed = \'YES\';\n             Query OK, 547 rows affected (0.40 sec)\n             Rows matched: 784  Changed: 547  Warnings: 0\n             /* Run some tests that need more detailed instrumentation here */\n             mysql> CALL sys.ps_setup_reload_saved();\n             Query OK, 0 rows affected (0.32 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    DECLARE v_lock_result INT;\n    SET @log_bin := @@sql_log_bin;\n    SET sql_log_bin = 0;\n    SELECT GET_LOCK(\'sys.ps_setup_save\', in_timeout) INTO v_lock_result;\n    IF v_lock_result THEN\n        DROP TEMPORARY TABLE IF EXISTS tmp_setup_actors;\n        DROP TEMPORARY TABLE IF EXISTS tmp_setup_consumers;\n        DROP TEMPORARY TABLE IF EXISTS tmp_setup_instruments;\n        DROP TEMPORARY TABLE IF EXISTS tmp_threads;\n        CREATE TEMPORARY TABLE tmp_setup_actors AS SELECT * FROM performance_schema.setup_actors;\n        CREATE TEMPORARY TABLE tmp_setup_consumers AS SELECT * FROM  performance_schema.setup_consumers;\n        CREATE TEMPORARY TABLE tmp_setup_instruments AS SELECT * FROM  performance_schema.setup_instruments;\n        CREATE TEMPORARY TABLE tmp_threads (THREAD_ID bigint unsigned NOT NULL PRIMARY KEY, INSTRUMENTED enum(\'YES\',\'NO\') NOT NULL);\n        INSERT INTO tmp_threads SELECT THREAD_ID, INSTRUMENTED FROM performance_schema.threads;\n    ELSE\n        SIGNAL SQLSTATE VALUE \'90000\'\n           SET MESSAGE_TEXT = \'Could not lock the sys.ps_setup_save user lock, another thread has a saved configuration\';\n    END IF;\n    SET sql_log_bin = @log_bin;\nEND','NONE'),('sys','ps_setup_reload_saved','PROCEDURE','ps_setup_reload_saved','SQL','MODIFIES_SQL_DATA','NO','INVOKER','','','BEGIN\n    DECLARE v_done bool DEFAULT FALSE;\n    DECLARE v_lock_result INT;\n    DECLARE v_lock_used_by BIGINT;\n    DECLARE v_signal_message TEXT;\n    DECLARE EXIT HANDLER FOR SQLEXCEPTION\n    BEGIN\n        SIGNAL SQLSTATE VALUE \'90001\'\n           SET MESSAGE_TEXT = \'An error occurred, was sys.ps_setup_save() run before this procedure?\';\n    END;\n    SET @log_bin := @@sql_log_bin;\n    SET sql_log_bin = 0;\n    SELECT IS_USED_LOCK(\'sys.ps_setup_save\') INTO v_lock_used_by;\n    IF (v_lock_used_by != CONNECTION_ID()) THEN\n        SET v_signal_message = CONCAT(\'The sys.ps_setup_save lock is currently owned by \', v_lock_used_by);\n        SIGNAL SQLSTATE VALUE \'90002\'\n           SET MESSAGE_TEXT = v_signal_message;\n    END IF;\n    DELETE FROM performance_schema.setup_actors;\n    INSERT INTO performance_schema.setup_actors SELECT * FROM tmp_setup_actors;\n    BEGIN\n        DECLARE v_name varchar(64);\n        DECLARE v_enabled enum(\'YES\', \'NO\');\n        DECLARE c_consumers CURSOR FOR SELECT NAME, ENABLED FROM tmp_setup_consumers;\n        DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;\n        SET v_done = FALSE;\n        OPEN c_consumers;\n        c_consumers_loop: LOOP\n            FETCH c_consumers INTO v_name, v_enabled;\n            IF v_done THEN\n               LEAVE c_consumers_loop;\n            END IF;\n            UPDATE performance_schema.setup_consumers\n               SET ENABLED = v_enabled\n             WHERE NAME = v_name;\n         END LOOP;\n         CLOSE c_consumers;\n    END;\n    UPDATE performance_schema.setup_instruments\n     INNER JOIN tmp_setup_instruments USING (NAME)\n       SET performance_schema.setup_instruments.ENABLED = tmp_setup_instruments.ENABLED,\n           performance_schema.setup_instruments.TIMED   = tmp_setup_instruments.TIMED;\n    BEGIN\n        DECLARE v_thread_id bigint unsigned;\n        DECLARE v_instrumented enum(\'YES\', \'NO\');\n        DECLARE c_threads CURSOR FOR SELECT THREAD_ID, INSTRUMENTED FROM tmp_threads;\n        DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;\n        SET v_done = FALSE;\n        OPEN c_threads;\n        c_threads_loop: LOOP\n            FETCH c_threads INTO v_thread_id, v_instrumented;\n            IF v_done THEN\n               LEAVE c_threads_loop;\n            END IF;\n            UPDATE performance_schema.threads\n               SET INSTRUMENTED = v_instrumented\n             WHERE THREAD_ID = v_thread_id;\n        END LOOP;\n        CLOSE c_threads;\n    END;\n    UPDATE performance_schema.threads\n       SET INSTRUMENTED = IF(PROCESSLIST_USER IS NOT NULL,\n                             sys.ps_is_account_enabled(PROCESSLIST_HOST, PROCESSLIST_USER),\n                             \'YES\')\n     WHERE THREAD_ID NOT IN (SELECT THREAD_ID FROM tmp_threads);\n    DROP TEMPORARY TABLE tmp_setup_actors;\n    DROP TEMPORARY TABLE tmp_setup_consumers;\n    DROP TEMPORARY TABLE tmp_setup_instruments;\n    DROP TEMPORARY TABLE tmp_threads;\n    SELECT RELEASE_LOCK(\'sys.ps_setup_save\') INTO v_lock_result;\n    SET sql_log_bin = @log_bin;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Reloads a saved Performance Schema configuration,\n             so that you can alter the setup for debugging purposes,\n             but restore it to a previous state.\n             Use the companion procedure - ps_setup_save(), to\n             save a configuration.\n             Requires the SUPER privilege for \"SET sql_log_bin = 0;\".\n             Parameters\n             None.\n             Example\n             mysql> CALL sys.ps_setup_save();\n             Query OK, 0 rows affected (0.08 sec)\n             mysql> UPDATE performance_schema.setup_instruments SET enabled = \'YES\', timed = \'YES\';\n             Query OK, 547 rows affected (0.40 sec)\n             Rows matched: 784  Changed: 547  Warnings: 0\n             /* Run some tests that need more detailed instrumentation here */\n             mysql> CALL sys.ps_setup_reload_saved();\n             Query OK, 0 rows affected (0.32 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    DECLARE v_done bool DEFAULT FALSE;\n    DECLARE v_lock_result INT;\n    DECLARE v_lock_used_by BIGINT;\n    DECLARE v_signal_message TEXT;\n    DECLARE EXIT HANDLER FOR SQLEXCEPTION\n    BEGIN\n        SIGNAL SQLSTATE VALUE \'90001\'\n           SET MESSAGE_TEXT = \'An error occurred, was sys.ps_setup_save() run before this procedure?\';\n    END;\n    SET @log_bin := @@sql_log_bin;\n    SET sql_log_bin = 0;\n    SELECT IS_USED_LOCK(\'sys.ps_setup_save\') INTO v_lock_used_by;\n    IF (v_lock_used_by != CONNECTION_ID()) THEN\n        SET v_signal_message = CONCAT(\'The sys.ps_setup_save lock is currently owned by \', v_lock_used_by);\n        SIGNAL SQLSTATE VALUE \'90002\'\n           SET MESSAGE_TEXT = v_signal_message;\n    END IF;\n    DELETE FROM performance_schema.setup_actors;\n    INSERT INTO performance_schema.setup_actors SELECT * FROM tmp_setup_actors;\n    BEGIN\n        DECLARE v_name varchar(64);\n        DECLARE v_enabled enum(\'YES\', \'NO\');\n        DECLARE c_consumers CURSOR FOR SELECT NAME, ENABLED FROM tmp_setup_consumers;\n        DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;\n        SET v_done = FALSE;\n        OPEN c_consumers;\n        c_consumers_loop: LOOP\n            FETCH c_consumers INTO v_name, v_enabled;\n            IF v_done THEN\n               LEAVE c_consumers_loop;\n            END IF;\n            UPDATE performance_schema.setup_consumers\n               SET ENABLED = v_enabled\n             WHERE NAME = v_name;\n         END LOOP;\n         CLOSE c_consumers;\n    END;\n    UPDATE performance_schema.setup_instruments\n     INNER JOIN tmp_setup_instruments USING (NAME)\n       SET performance_schema.setup_instruments.ENABLED = tmp_setup_instruments.ENABLED,\n           performance_schema.setup_instruments.TIMED   = tmp_setup_instruments.TIMED;\n    BEGIN\n        DECLARE v_thread_id bigint unsigned;\n        DECLARE v_instrumented enum(\'YES\', \'NO\');\n        DECLARE c_threads CURSOR FOR SELECT THREAD_ID, INSTRUMENTED FROM tmp_threads;\n        DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;\n        SET v_done = FALSE;\n        OPEN c_threads;\n        c_threads_loop: LOOP\n            FETCH c_threads INTO v_thread_id, v_instrumented;\n            IF v_done THEN\n               LEAVE c_threads_loop;\n            END IF;\n            UPDATE performance_schema.threads\n               SET INSTRUMENTED = v_instrumented\n             WHERE THREAD_ID = v_thread_id;\n        END LOOP;\n        CLOSE c_threads;\n    END;\n    UPDATE performance_schema.threads\n       SET INSTRUMENTED = IF(PROCESSLIST_USER IS NOT NULL,\n                             sys.ps_is_account_enabled(PROCESSLIST_HOST, PROCESSLIST_USER),\n                             \'YES\')\n     WHERE THREAD_ID NOT IN (SELECT THREAD_ID FROM tmp_threads);\n    DROP TEMPORARY TABLE tmp_setup_actors;\n    DROP TEMPORARY TABLE tmp_setup_consumers;\n    DROP TEMPORARY TABLE tmp_setup_instruments;\n    DROP TEMPORARY TABLE tmp_threads;\n    SELECT RELEASE_LOCK(\'sys.ps_setup_save\') INTO v_lock_result;\n    SET sql_log_bin = @log_bin;\nEND','NONE'),('sys','ps_setup_show_disabled','PROCEDURE','ps_setup_show_disabled','SQL','READS_SQL_DATA','NO','INVOKER','\n        IN in_show_instruments BOOLEAN,\n        IN in_show_threads BOOLEAN\n    ','','BEGIN\n    SELECT @@performance_schema AS performance_schema_enabled;\n    \n    SELECT object_type,\n           CONCAT(object_schema, \'.\', object_name) AS objects,\n           enabled,\n           timed\n      FROM performance_schema.setup_objects\n     WHERE enabled = \'NO\'\n     ORDER BY object_type, objects;\n    SELECT name AS disabled_consumers\n      FROM performance_schema.setup_consumers\n     WHERE enabled = \'NO\'\n     ORDER BY disabled_consumers;\n    IF (in_show_threads) THEN\n        SELECT IF(name = \'thread/sql/one_connection\',\n                  CONCAT(processlist_user, \'@\', processlist_host),\n                  REPLACE(name, \'thread/\', \'\')) AS disabled_threads,\n        TYPE AS thread_type\n          FROM performance_schema.threads\n         WHERE INSTRUMENTED = \'NO\'\n         ORDER BY disabled_threads;\n    END IF;\n    IF (in_show_instruments) THEN\n        SELECT name AS disabled_instruments,\n               timed\n          FROM performance_schema.setup_instruments\n         WHERE enabled = \'NO\'\n         ORDER BY disabled_instruments;\n    END IF;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Shows all currently disable Performance Schema configuration.\n             Disabled users is only available for MySQL 5.7.6 and later.\n             In earlier versions it was only possible to enable users.\n             Parameters\n             in_show_instruments (BOOLEAN):\n               Whether to print disabled instruments (can print many items)\n             in_show_threads (BOOLEAN):\n               Whether to print disabled threads\n             Example\n             mysql> CALL sys.ps_setup_show_disabled(TRUE, TRUE);\n             +----------------------------+\n             | performance_schema_enabled |\n             +----------------------------+\n             |                          1 |\n             +----------------------------+\n             1 row in set (0.00 sec)\n             +--------------------+\n             | disabled_users     |\n             +--------------------+\n             | \'mark\'@\'localhost\' |\n             +--------------------+\n             1 row in set (0.00 sec)\n             +-------------+----------------------+---------+-------+\n             | object_type | objects              | enabled | timed |\n             +-------------+----------------------+---------+-------+\n             | EVENT       | mysql.%              | NO      | NO    |\n             | EVENT       | performance_schema.% | NO      | NO    |\n             | EVENT       | information_schema.% | NO      | NO    |\n             | FUNCTION    | mysql.%              | NO      | NO    |\n             | FUNCTION    | performance_schema.% | NO      | NO    |\n             | FUNCTION    | information_schema.% | NO      | NO    |\n             | PROCEDURE   | mysql.%              | NO      | NO    |\n             | PROCEDURE   | performance_schema.% | NO      | NO    |\n             | PROCEDURE   | information_schema.% | NO      | NO    |\n             | TABLE       | mysql.%              | NO      | NO    |\n             | TABLE       | performance_schema.% | NO      | NO    |\n             | TABLE       | information_schema.% | NO      | NO    |\n             | TRIGGER     | mysql.%              | NO      | NO    |\n             | TRIGGER     | performance_schema.% | NO      | NO    |\n             | TRIGGER     | information_schema.% | NO      | NO    |\n             +-------------+----------------------+---------+-------+\n             15 rows in set (0.00 sec)\n             +----------------------------------+\n             | disabled_consumers               |\n             +----------------------------------+\n             | events_stages_current            |\n             | events_stages_history            |\n             | events_stages_history_long       |\n             | events_statements_history        |\n             | events_statements_history_long   |\n             | events_transactions_history      |\n             | events_transactions_history_long |\n             | events_waits_current             |\n             | events_waits_history             |\n             | events_waits_history_long        |\n             +----------------------------------+\n             10 rows in set (0.00 sec)\n             Empty set (0.00 sec)\n             +---------------------------------------------------------------------------------------+-------+\n             | disabled_instruments                                                                  | timed |\n             +---------------------------------------------------------------------------------------+-------+\n             | wait/synch/mutex/sql/TC_LOG_MMAP::LOCK_tc                                             | NO    |\n             | wait/synch/mutex/sql/LOCK_des_key_file                                                | NO    |\n             | wait/synch/mutex/sql/MYSQL_BIN_LOG::LOCK_commit                                       | NO    |\n             ...\n             | memory/sql/servers_cache                                                              | NO    |\n             | memory/sql/udf_mem                                                                    | NO    |\n             | wait/lock/metadata/sql/mdl                                                            | NO    |\n             +---------------------------------------------------------------------------------------+-------+\n             547 rows in set (0.00 sec)\n             Query OK, 0 rows affected (0.01 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    SELECT @@performance_schema AS performance_schema_enabled;\n    \n    SELECT object_type,\n           CONCAT(object_schema, \'.\', object_name) AS objects,\n           enabled,\n           timed\n      FROM performance_schema.setup_objects\n     WHERE enabled = \'NO\'\n     ORDER BY object_type, objects;\n    SELECT name AS disabled_consumers\n      FROM performance_schema.setup_consumers\n     WHERE enabled = \'NO\'\n     ORDER BY disabled_consumers;\n    IF (in_show_threads) THEN\n        SELECT IF(name = \'thread/sql/one_connection\',\n                  CONCAT(processlist_user, \'@\', processlist_host),\n                  REPLACE(name, \'thread/\', \'\')) AS disabled_threads,\n        TYPE AS thread_type\n          FROM performance_schema.threads\n         WHERE INSTRUMENTED = \'NO\'\n         ORDER BY disabled_threads;\n    END IF;\n    IF (in_show_instruments) THEN\n        SELECT name AS disabled_instruments,\n               timed\n          FROM performance_schema.setup_instruments\n         WHERE enabled = \'NO\'\n         ORDER BY disabled_instruments;\n    END IF;\nEND','NONE'),('sys','ps_setup_show_disabled_consumers','PROCEDURE','ps_setup_show_disabled_consumers','SQL','READS_SQL_DATA','YES','INVOKER','','','BEGIN\n    SELECT name AS disabled_consumers\n      FROM performance_schema.setup_consumers\n     WHERE enabled = \'NO\'\n     ORDER BY disabled_consumers;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Shows all currently disabled consumers.\n             Parameters\n             None\n             Example\n             mysql> CALL sys.ps_setup_show_disabled_consumers();\n             +---------------------------+\n             | disabled_consumers        |\n             +---------------------------+\n             | events_statements_current |\n             | global_instrumentation    |\n             | thread_instrumentation    |\n             | statements_digest         |\n             +---------------------------+\n             4 rows in set (0.05 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    SELECT name AS disabled_consumers\n      FROM performance_schema.setup_consumers\n     WHERE enabled = \'NO\'\n     ORDER BY disabled_consumers;\nEND','NONE'),('sys','ps_setup_show_enabled_consumers','PROCEDURE','ps_setup_show_enabled_consumers','SQL','READS_SQL_DATA','YES','INVOKER','','','BEGIN\n    SELECT name AS enabled_consumers\n      FROM performance_schema.setup_consumers\n     WHERE enabled = \'YES\'\n     ORDER BY enabled_consumers;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Shows all currently enabled consumers.\n             Parameters\n             None\n             Example\n             mysql> CALL sys.ps_setup_show_enabled_consumers();\n             +---------------------------+\n             | enabled_consumers         |\n             +---------------------------+\n             | events_statements_current |\n             | global_instrumentation    |\n             | thread_instrumentation    |\n             | statements_digest         |\n             +---------------------------+\n             4 rows in set (0.05 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    SELECT name AS enabled_consumers\n      FROM performance_schema.setup_consumers\n     WHERE enabled = \'YES\'\n     ORDER BY enabled_consumers;\nEND','NONE'),('sys','ps_truncate_all_tables','PROCEDURE','ps_truncate_all_tables','SQL','MODIFIES_SQL_DATA','YES','INVOKER','\n        IN in_verbose BOOLEAN\n    ','','BEGIN\n    DECLARE v_done INT DEFAULT FALSE;\n    DECLARE v_total_tables INT DEFAULT 0;\n    DECLARE v_ps_table VARCHAR(64);\n    DECLARE ps_tables CURSOR FOR\n        SELECT table_name\n          FROM INFORMATION_SCHEMA.TABLES\n         WHERE table_schema = \'performance_schema\'\n           AND (table_name LIKE \'%summary%\'\n            OR table_name LIKE \'%history%\');\n    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;\n    OPEN ps_tables;\n    ps_tables_loop: LOOP\n        FETCH ps_tables INTO v_ps_table;\n        IF v_done THEN\n          LEAVE ps_tables_loop;\n        END IF;\n        SET @truncate_stmt := CONCAT(\'TRUNCATE TABLE performance_schema.\', v_ps_table);\n        IF in_verbose THEN\n            SELECT CONCAT(\'Running: \', @truncate_stmt) AS status;\n        END IF;\n        PREPARE truncate_stmt FROM @truncate_stmt;\n        EXECUTE truncate_stmt;\n        DEALLOCATE PREPARE truncate_stmt;\n        SET v_total_tables = v_total_tables + 1;\n    END LOOP;\n    CLOSE ps_tables;\n    SELECT CONCAT(\'Truncated \', v_total_tables, \' tables\') AS summary;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Truncates all summary tables within Performance Schema,\n             resetting all aggregated instrumentation as a snapshot.\n             Parameters\n             in_verbose (BOOLEAN):\n               Whether to print each TRUNCATE statement before running\n             Example\n             mysql> CALL sys.ps_truncate_all_tables(false);\n             +---------------------+\n             | summary             |\n             +---------------------+\n             | Truncated 44 tables |\n             +---------------------+\n             1 row in set (0.10 sec)\n             Query OK, 0 rows affected (0.10 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    DECLARE v_done INT DEFAULT FALSE;\n    DECLARE v_total_tables INT DEFAULT 0;\n    DECLARE v_ps_table VARCHAR(64);\n    DECLARE ps_tables CURSOR FOR\n        SELECT table_name\n          FROM INFORMATION_SCHEMA.TABLES\n         WHERE table_schema = \'performance_schema\'\n           AND (table_name LIKE \'%summary%\'\n            OR table_name LIKE \'%history%\');\n    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;\n    OPEN ps_tables;\n    ps_tables_loop: LOOP\n        FETCH ps_tables INTO v_ps_table;\n        IF v_done THEN\n          LEAVE ps_tables_loop;\n        END IF;\n        SET @truncate_stmt := CONCAT(\'TRUNCATE TABLE performance_schema.\', v_ps_table);\n        IF in_verbose THEN\n            SELECT CONCAT(\'Running: \', @truncate_stmt) AS status;\n        END IF;\n        PREPARE truncate_stmt FROM @truncate_stmt;\n        EXECUTE truncate_stmt;\n        DEALLOCATE PREPARE truncate_stmt;\n        SET v_total_tables = v_total_tables + 1;\n    END LOOP;\n    CLOSE ps_tables;\n    SELECT CONCAT(\'Truncated \', v_total_tables, \' tables\') AS summary;\nEND','NONE'),('sys','ps_setup_show_enabled','PROCEDURE','ps_setup_show_enabled','SQL','READS_SQL_DATA','YES','INVOKER','\n        IN in_show_instruments BOOLEAN,\n        IN in_show_threads BOOLEAN\n    ','','BEGIN\n    SELECT @@performance_schema AS performance_schema_enabled;\n    SELECT CONCAT(\'\\\'\', user, \'\\\'@\\\'\', host, \'\\\'\') AS enabled_users\n      FROM performance_schema.setup_actors\n      WHERE enabled = \'YES\'\n     ORDER BY enabled_users;\n    SELECT object_type,\n           CONCAT(object_schema, \'.\', object_name) AS objects,\n           enabled,\n           timed\n      FROM performance_schema.setup_objects\n     WHERE enabled = \'YES\'\n     ORDER BY object_type, objects;\n    SELECT name AS enabled_consumers\n      FROM performance_schema.setup_consumers\n     WHERE enabled = \'YES\'\n     ORDER BY enabled_consumers;\n    IF (in_show_threads) THEN\n        SELECT IF(name = \'thread/sql/one_connection\',\n                  CONCAT(processlist_user, \'@\', processlist_host),\n                  REPLACE(name, \'thread/\', \'\')) AS enabled_threads,\n        TYPE AS thread_type\n          FROM performance_schema.threads\n         WHERE INSTRUMENTED = \'YES\' AND name <> \'thread/innodb/thread_pool_thread\'\n         ORDER BY enabled_threads;\n    END IF;\n    IF (in_show_instruments) THEN\n        SELECT name AS enabled_instruments,\n               timed\n          FROM performance_schema.setup_instruments\n         WHERE enabled = \'YES\'\n         ORDER BY enabled_instruments;\n    END IF;\nEND','mariadb.sys@localhost','2022-10-03 11:40:14','2022-10-03 11:40:14','','\n             Description\n             Shows all currently enabled Performance Schema configuration.\n             Parameters\n             in_show_instruments (BOOLEAN):\n               Whether to print enabled instruments (can print many items)\n             in_show_threads (BOOLEAN):\n               Whether to print enabled threads\n             Example\n             mysql> CALL sys.ps_setup_show_enabled(TRUE, TRUE);\n             +----------------------------+\n             | performance_schema_enabled |\n             +----------------------------+\n             |                          1 |\n             +----------------------------+\n             1 row in set (0.00 sec)\n             +---------------+\n             | enabled_users |\n             +---------------+\n             | \'%\'@\'%\'       |\n             +---------------+\n             1 row in set (0.01 sec)\n             +-------------+---------+---------+-------+\n             | object_type | objects | enabled | timed |\n             +-------------+---------+---------+-------+\n             | EVENT       | %.%     | YES     | YES   |\n             | FUNCTION    | %.%     | YES     | YES   |\n             | PROCEDURE   | %.%     | YES     | YES   |\n             | TABLE       | %.%     | YES     | YES   |\n             | TRIGGER     | %.%     | YES     | YES   |\n             +-------------+---------+---------+-------+\n             5 rows in set (0.01 sec)\n             +---------------------------+\n             | enabled_consumers         |\n             +---------------------------+\n             | events_statements_current |\n             | global_instrumentation    |\n             | thread_instrumentation    |\n             | statements_digest         |\n             +---------------------------+\n             4 rows in set (0.05 sec)\n             +---------------------------------+-------------+\n             | enabled_threads                 | thread_type |\n             +---------------------------------+-------------+\n             | sql/main                        | BACKGROUND  |\n             | sql/thread_timer_notifier       | BACKGROUND  |\n             | innodb/io_ibuf_thread           | BACKGROUND  |\n             | innodb/io_log_thread            | BACKGROUND  |\n             | innodb/io_read_thread           | BACKGROUND  |\n             | innodb/io_read_thread           | BACKGROUND  |\n             | innodb/io_write_thread          | BACKGROUND  |\n             | innodb/io_write_thread          | BACKGROUND  |\n             | innodb/page_cleaner_thread      | BACKGROUND  |\n             | innodb/srv_lock_timeout_thread  | BACKGROUND  |\n             | innodb/srv_error_monitor_thread | BACKGROUND  |\n             | innodb/srv_monitor_thread       | BACKGROUND  |\n             | innodb/srv_master_thread        | BACKGROUND  |\n             | innodb/srv_purge_thread         | BACKGROUND  |\n             | innodb/srv_worker_thread        | BACKGROUND  |\n             | innodb/srv_worker_thread        | BACKGROUND  |\n             | innodb/srv_worker_thread        | BACKGROUND  |\n             | innodb/buf_dump_thread          | BACKGROUND  |\n             | innodb/dict_stats_thread        | BACKGROUND  |\n             | sql/signal_handler              | BACKGROUND  |\n             | sql/compress_gtid_table         | FOREGROUND  |\n             | root@localhost                  | FOREGROUND  |\n             +---------------------------------+-------------+\n             22 rows in set (0.01 sec)\n             +-------------------------------------+-------+\n             | enabled_instruments                 | timed |\n             +-------------------------------------+-------+\n             | wait/io/file/sql/map                | YES   |\n             | wait/io/file/sql/binlog             | YES   |\n             ...\n             | statement/com/Error                 | YES   |\n             | statement/com/                      | YES   |\n             | idle                                | YES   |\n             +-------------------------------------+-------+\n             210 rows in set (0.08 sec)\n             Query OK, 0 rows affected (0.89 sec)\n            ','utf8mb3','utf8mb3_general_ci','utf8mb3_general_ci','BEGIN\n    SELECT @@performance_schema AS performance_schema_enabled;\n    SELECT CONCAT(\'\'\'\', user, \'\'\'@\'\'\', host, \'\'\'\') AS enabled_users\n      FROM performance_schema.setup_actors\n      WHERE enabled = \'YES\'\n     ORDER BY enabled_users;\n    SELECT object_type,\n           CONCAT(object_schema, \'.\', object_name) AS objects,\n           enabled,\n           timed\n      FROM performance_schema.setup_objects\n     WHERE enabled = \'YES\'\n     ORDER BY object_type, objects;\n    SELECT name AS enabled_consumers\n      FROM performance_schema.setup_consumers\n     WHERE enabled = \'YES\'\n     ORDER BY enabled_consumers;\n    IF (in_show_threads) THEN\n        SELECT IF(name = \'thread/sql/one_connection\',\n                  CONCAT(processlist_user, \'@\', processlist_host),\n                  REPLACE(name, \'thread/\', \'\')) AS enabled_threads,\n        TYPE AS thread_type\n          FROM performance_schema.threads\n         WHERE INSTRUMENTED = \'YES\' AND name <> \'thread/innodb/thread_pool_thread\'\n         ORDER BY enabled_threads;\n    END IF;\n    IF (in_show_instruments) THEN\n        SELECT name AS enabled_instruments,\n               timed\n          FROM performance_schema.setup_instruments\n         WHERE enabled = \'YES\'\n         ORDER BY enabled_instruments;\n    END IF;\nEND','NONE');
/*!40000 ALTER TABLE `proc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procs_priv` (
  `Host` char(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8mb3 NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE','PACKAGE','PACKAGE BODY') COLLATE utf8mb3_bin NOT NULL,
  `Grantor` varchar(384) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8mb3 NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Procedure privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procs_priv`
--

LOCK TABLES `procs_priv` WRITE;
/*!40000 ALTER TABLE `procs_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `procs_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxies_priv`
--

DROP TABLE IF EXISTS `proxies_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proxies_priv` (
  `Host` char(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Proxied_host` char(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Proxied_user` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT 0,
  `Grantor` varchar(384) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='User proxy privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxies_priv`
--

LOCK TABLES `proxies_priv` WRITE;
/*!40000 ALTER TABLE `proxies_priv` DISABLE KEYS */;
INSERT INTO `proxies_priv` VALUES ('localhost','root','','',1,'','2022-10-03 11:40:13');
/*!40000 ALTER TABLE `proxies_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_mapping`
--

DROP TABLE IF EXISTS `roles_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_mapping` (
  `Host` char(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Role` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Admin_option` enum('N','Y') CHARACTER SET utf8mb3 NOT NULL DEFAULT 'N',
  UNIQUE KEY `Host` (`Host`,`User`,`Role`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Granted roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_mapping`
--

LOCK TABLES `roles_mapping` WRITE;
/*!40000 ALTER TABLE `roles_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` varchar(2048) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(128) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int(4) NOT NULL DEFAULT 0,
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` varchar(512) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_stats`
--

DROP TABLE IF EXISTS `table_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_stats` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `cardinality` bigint(21) unsigned DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='Statistics on Tables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_stats`
--

LOCK TABLES `table_stats` WRITE;
/*!40000 ALTER TABLE `table_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tables_priv` (
  `Host` char(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Grantor` varchar(384) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger','Delete versioning rows') CHARACTER SET utf8mb3 NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8mb3 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Table privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables_priv`
--

LOCK TABLES `tables_priv` WRITE;
/*!40000 ALTER TABLE `tables_priv` DISABLE KEYS */;
INSERT INTO `tables_priv` VALUES ('localhost','mysql','mariadb.sys','global_priv','root@localhost','0000-00-00 00:00:00','Select,Delete','');
/*!40000 ALTER TABLE `tables_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) ENGINE=Aria AUTO_INCREMENT=1788 DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone`
--

LOCK TABLES `time_zone` WRITE;
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
INSERT INTO `time_zone` VALUES (1,'N'),(2,'N'),(3,'N'),(4,'N'),(5,'N'),(6,'N'),(7,'N'),(8,'N'),(9,'N'),(10,'N'),(11,'N'),(12,'N'),(13,'N'),(14,'N'),(15,'N'),(16,'N'),(17,'N'),(18,'N'),(19,'N'),(20,'N'),(21,'N'),(22,'N'),(23,'N'),(24,'N'),(25,'N'),(26,'N'),(27,'N'),(28,'N'),(29,'N'),(30,'N'),(31,'N'),(32,'N'),(33,'N'),(34,'N'),(35,'N'),(36,'N'),(37,'N'),(38,'N'),(39,'N'),(40,'N'),(41,'N'),(42,'N'),(43,'N'),(44,'N'),(45,'N'),(46,'N'),(47,'N'),(48,'N'),(49,'N'),(50,'N'),(51,'N'),(52,'N'),(53,'N'),(54,'N'),(55,'N'),(56,'N'),(57,'N'),(58,'N'),(59,'N'),(60,'N'),(61,'N'),(62,'N'),(63,'N'),(64,'N'),(65,'N'),(66,'N'),(67,'N'),(68,'N'),(69,'N'),(70,'N'),(71,'N'),(72,'N'),(73,'N'),(74,'N'),(75,'N'),(76,'N'),(77,'N'),(78,'N'),(79,'N'),(80,'N'),(81,'N'),(82,'N'),(83,'N'),(84,'N'),(85,'N'),(86,'N'),(87,'N'),(88,'N'),(89,'N'),(90,'N'),(91,'N'),(92,'N'),(93,'N'),(94,'N'),(95,'N'),(96,'N'),(97,'N'),(98,'N'),(99,'N'),(100,'N'),(101,'N'),(102,'N'),(103,'N'),(104,'N'),(105,'N'),(106,'N'),(107,'N'),(108,'N'),(109,'N'),(110,'N'),(111,'N'),(112,'N'),(113,'N'),(114,'N'),(115,'N'),(116,'N'),(117,'N'),(118,'N'),(119,'N'),(120,'N'),(121,'N'),(122,'N'),(123,'N'),(124,'N'),(125,'N'),(126,'N'),(127,'N'),(128,'N'),(129,'N'),(130,'N'),(131,'N'),(132,'N'),(133,'N'),(134,'N'),(135,'N'),(136,'N'),(137,'N'),(138,'N'),(139,'N'),(140,'N'),(141,'N'),(142,'N'),(143,'N'),(144,'N'),(145,'N'),(146,'N'),(147,'N'),(148,'N'),(149,'N'),(150,'N'),(151,'N'),(152,'N'),(153,'N'),(154,'N'),(155,'N'),(156,'N'),(157,'N'),(158,'N'),(159,'N'),(160,'N'),(161,'N'),(162,'N'),(163,'N'),(164,'N'),(165,'N'),(166,'N'),(167,'N'),(168,'N'),(169,'N'),(170,'N'),(171,'N'),(172,'N'),(173,'N'),(174,'N'),(175,'N'),(176,'N'),(177,'N'),(178,'N'),(179,'N'),(180,'N'),(181,'N'),(182,'N'),(183,'N'),(184,'N'),(185,'N'),(186,'N'),(187,'N'),(188,'N'),(189,'N'),(190,'N'),(191,'N'),(192,'N'),(193,'N'),(194,'N'),(195,'N'),(196,'N'),(197,'N'),(198,'N'),(199,'N'),(200,'N'),(201,'N'),(202,'N'),(203,'N'),(204,'N'),(205,'N'),(206,'N'),(207,'N'),(208,'N'),(209,'N'),(210,'N'),(211,'N'),(212,'N'),(213,'N'),(214,'N'),(215,'N'),(216,'N'),(217,'N'),(218,'N'),(219,'N'),(220,'N'),(221,'N'),(222,'N'),(223,'N'),(224,'N'),(225,'N'),(226,'N'),(227,'N'),(228,'N'),(229,'N'),(230,'N'),(231,'N'),(232,'N'),(233,'N'),(234,'N'),(235,'N'),(236,'N'),(237,'N'),(238,'N'),(239,'N'),(240,'N'),(241,'N'),(242,'N'),(243,'N'),(244,'N'),(245,'N'),(246,'N'),(247,'N'),(248,'N'),(249,'N'),(250,'N'),(251,'N'),(252,'N'),(253,'N'),(254,'N'),(255,'N'),(256,'N'),(257,'N'),(258,'N'),(259,'N'),(260,'N'),(261,'N'),(262,'N'),(263,'N'),(264,'N'),(265,'N'),(266,'N'),(267,'N'),(268,'N'),(269,'N'),(270,'N'),(271,'N'),(272,'N'),(273,'N'),(274,'N'),(275,'N'),(276,'N'),(277,'N'),(278,'N'),(279,'N'),(280,'N'),(281,'N'),(282,'N'),(283,'N'),(284,'N'),(285,'N'),(286,'N'),(287,'N'),(288,'N'),(289,'N'),(290,'N'),(291,'N'),(292,'N'),(293,'N'),(294,'N'),(295,'N'),(296,'N'),(297,'N'),(298,'N'),(299,'N'),(300,'N'),(301,'N'),(302,'N'),(303,'N'),(304,'N'),(305,'N'),(306,'N'),(307,'N'),(308,'N'),(309,'N'),(310,'N'),(311,'N'),(312,'N'),(313,'N'),(314,'N'),(315,'N'),(316,'N'),(317,'N'),(318,'N'),(319,'N'),(320,'N'),(321,'N'),(322,'N'),(323,'N'),(324,'N'),(325,'N'),(326,'N'),(327,'N'),(328,'N'),(329,'N'),(330,'N'),(331,'N'),(332,'N'),(333,'N'),(334,'N'),(335,'N'),(336,'N'),(337,'N'),(338,'N'),(339,'N'),(340,'N'),(341,'N'),(342,'N'),(343,'N'),(344,'N'),(345,'N'),(346,'N'),(347,'N'),(348,'N'),(349,'N'),(350,'N'),(351,'N'),(352,'N'),(353,'N'),(354,'N'),(355,'N'),(356,'N'),(357,'N'),(358,'N'),(359,'N'),(360,'N'),(361,'N'),(362,'N'),(363,'N'),(364,'N'),(365,'N'),(366,'N'),(367,'N'),(368,'N'),(369,'N'),(370,'N'),(371,'N'),(372,'N'),(373,'N'),(374,'N'),(375,'N'),(376,'N'),(377,'N'),(378,'N'),(379,'N'),(380,'N'),(381,'N'),(382,'N'),(383,'N'),(384,'N'),(385,'N'),(386,'N'),(387,'N'),(388,'N'),(389,'N'),(390,'N'),(391,'N'),(392,'N'),(393,'N'),(394,'N'),(395,'N'),(396,'N'),(397,'N'),(398,'N'),(399,'N'),(400,'N'),(401,'N'),(402,'N'),(403,'N'),(404,'N'),(405,'N'),(406,'N'),(407,'N'),(408,'N'),(409,'N'),(410,'N'),(411,'N'),(412,'N'),(413,'N'),(414,'N'),(415,'N'),(416,'N'),(417,'N'),(418,'N'),(419,'N'),(420,'N'),(421,'N'),(422,'N'),(423,'N'),(424,'N'),(425,'N'),(426,'N'),(427,'N'),(428,'N'),(429,'N'),(430,'N'),(431,'N'),(432,'N'),(433,'N'),(434,'N'),(435,'N'),(436,'N'),(437,'N'),(438,'N'),(439,'N'),(440,'N'),(441,'N'),(442,'N'),(443,'N'),(444,'N'),(445,'N'),(446,'N'),(447,'N'),(448,'N'),(449,'N'),(450,'N'),(451,'N'),(452,'N'),(453,'N'),(454,'N'),(455,'N'),(456,'N'),(457,'N'),(458,'N'),(459,'N'),(460,'N'),(461,'N'),(462,'N'),(463,'N'),(464,'N'),(465,'N'),(466,'N'),(467,'N'),(468,'N'),(469,'N'),(470,'N'),(471,'N'),(472,'N'),(473,'N'),(474,'N'),(475,'N'),(476,'N'),(477,'N'),(478,'N'),(479,'N'),(480,'N'),(481,'N'),(482,'N'),(483,'N'),(484,'N'),(485,'N'),(486,'N'),(487,'N'),(488,'N'),(489,'N'),(490,'N'),(491,'N'),(492,'N'),(493,'N'),(494,'N'),(495,'N'),(496,'N'),(497,'N'),(498,'N'),(499,'N'),(500,'N'),(501,'N'),(502,'N'),(503,'N'),(504,'N'),(505,'N'),(506,'N'),(507,'N'),(508,'N'),(509,'N'),(510,'N'),(511,'N'),(512,'N'),(513,'N'),(514,'N'),(515,'N'),(516,'N'),(517,'N'),(518,'N'),(519,'N'),(520,'N'),(521,'N'),(522,'N'),(523,'N'),(524,'N'),(525,'N'),(526,'N'),(527,'N'),(528,'N'),(529,'N'),(530,'N'),(531,'N'),(532,'N'),(533,'N'),(534,'N'),(535,'N'),(536,'N'),(537,'N'),(538,'N'),(539,'N'),(540,'N'),(541,'N'),(542,'N'),(543,'N'),(544,'N'),(545,'N'),(546,'N'),(547,'N'),(548,'N'),(549,'N'),(550,'N'),(551,'N'),(552,'N'),(553,'N'),(554,'N'),(555,'N'),(556,'N'),(557,'N'),(558,'N'),(559,'N'),(560,'N'),(561,'N'),(562,'N'),(563,'N'),(564,'N'),(565,'N'),(566,'N'),(567,'N'),(568,'N'),(569,'N'),(570,'N'),(571,'N'),(572,'N'),(573,'N'),(574,'N'),(575,'N'),(576,'N'),(577,'N'),(578,'N'),(579,'N'),(580,'N'),(581,'N'),(582,'N'),(583,'N'),(584,'N'),(585,'N'),(586,'N'),(587,'N'),(588,'N'),(589,'N'),(590,'N'),(591,'N'),(592,'N'),(593,'N'),(594,'N'),(595,'N'),(596,'N'),(597,'N'),(598,'N'),(599,'N'),(600,'N'),(601,'N'),(602,'N'),(603,'N'),(604,'N'),(605,'N'),(606,'N'),(607,'N'),(608,'N'),(609,'N'),(610,'N'),(611,'N'),(612,'N'),(613,'N'),(614,'N'),(615,'N'),(616,'N'),(617,'N'),(618,'N'),(619,'N'),(620,'N'),(621,'N'),(622,'N'),(623,'N'),(624,'N'),(625,'N'),(626,'N'),(627,'N'),(628,'N'),(629,'N'),(630,'N'),(631,'N'),(632,'N'),(633,'N'),(634,'N'),(635,'N'),(636,'N'),(637,'N'),(638,'N'),(639,'N'),(640,'N'),(641,'N'),(642,'N'),(643,'N'),(644,'N'),(645,'N'),(646,'N'),(647,'N'),(648,'N'),(649,'N'),(650,'N'),(651,'N'),(652,'N'),(653,'N'),(654,'N'),(655,'N'),(656,'N'),(657,'N'),(658,'N'),(659,'N'),(660,'N'),(661,'N'),(662,'N'),(663,'N'),(664,'N'),(665,'N'),(666,'N'),(667,'N'),(668,'N'),(669,'N'),(670,'N'),(671,'N'),(672,'N'),(673,'N'),(674,'N'),(675,'N'),(676,'N'),(677,'N'),(678,'N'),(679,'N'),(680,'N'),(681,'N'),(682,'N'),(683,'N'),(684,'N'),(685,'N'),(686,'N'),(687,'N'),(688,'N'),(689,'N'),(690,'N'),(691,'N'),(692,'N'),(693,'N'),(694,'N'),(695,'N'),(696,'N'),(697,'N'),(698,'N'),(699,'N'),(700,'N'),(701,'N'),(702,'N'),(703,'N'),(704,'N'),(705,'N'),(706,'N'),(707,'N'),(708,'N'),(709,'N'),(710,'N'),(711,'N'),(712,'N'),(713,'N'),(714,'N'),(715,'N'),(716,'N'),(717,'N'),(718,'N'),(719,'N'),(720,'N'),(721,'N'),(722,'N'),(723,'N'),(724,'N'),(725,'N'),(726,'N'),(727,'N'),(728,'N'),(729,'N'),(730,'N'),(731,'N'),(732,'N'),(733,'N'),(734,'N'),(735,'N'),(736,'N'),(737,'N'),(738,'N'),(739,'N'),(740,'N'),(741,'N'),(742,'N'),(743,'N'),(744,'N'),(745,'N'),(746,'N'),(747,'N'),(748,'N'),(749,'N'),(750,'N'),(751,'N'),(752,'N'),(753,'N'),(754,'N'),(755,'N'),(756,'N'),(757,'N'),(758,'N'),(759,'N'),(760,'N'),(761,'N'),(762,'N'),(763,'N'),(764,'N'),(765,'N'),(766,'N'),(767,'N'),(768,'N'),(769,'N'),(770,'N'),(771,'N'),(772,'N'),(773,'N'),(774,'N'),(775,'N'),(776,'N'),(777,'N'),(778,'N'),(779,'N'),(780,'N'),(781,'N'),(782,'N'),(783,'N'),(784,'N'),(785,'N'),(786,'N'),(787,'N'),(788,'N'),(789,'N'),(790,'N'),(791,'N'),(792,'N'),(793,'N'),(794,'N'),(795,'N'),(796,'N'),(797,'N'),(798,'N'),(799,'N'),(800,'N'),(801,'N'),(802,'N'),(803,'N'),(804,'N'),(805,'N'),(806,'N'),(807,'N'),(808,'N'),(809,'N'),(810,'N'),(811,'N'),(812,'N'),(813,'N'),(814,'N'),(815,'N'),(816,'N'),(817,'N'),(818,'N'),(819,'N'),(820,'N'),(821,'N'),(822,'N'),(823,'N'),(824,'N'),(825,'N'),(826,'N'),(827,'N'),(828,'N'),(829,'N'),(830,'N'),(831,'N'),(832,'N'),(833,'N'),(834,'N'),(835,'N'),(836,'N'),(837,'N'),(838,'N'),(839,'N'),(840,'N'),(841,'N'),(842,'N'),(843,'N'),(844,'N'),(845,'N'),(846,'N'),(847,'N'),(848,'N'),(849,'N'),(850,'N'),(851,'N'),(852,'N'),(853,'N'),(854,'N'),(855,'N'),(856,'N'),(857,'N'),(858,'N'),(859,'N'),(860,'N'),(861,'N'),(862,'N'),(863,'N'),(864,'N'),(865,'N'),(866,'N'),(867,'N'),(868,'N'),(869,'N'),(870,'N'),(871,'N'),(872,'N'),(873,'N'),(874,'N'),(875,'N'),(876,'N'),(877,'N'),(878,'N'),(879,'N'),(880,'N'),(881,'N'),(882,'N'),(883,'N'),(884,'N'),(885,'N'),(886,'N'),(887,'N'),(888,'N'),(889,'N'),(890,'N'),(891,'N'),(892,'N'),(893,'N'),(894,'N'),(895,'N'),(896,'N'),(897,'N'),(898,'N'),(899,'N'),(900,'N'),(901,'N'),(902,'N'),(903,'N'),(904,'N'),(905,'N'),(906,'N'),(907,'N'),(908,'N'),(909,'N'),(910,'N'),(911,'N'),(912,'N'),(913,'N'),(914,'N'),(915,'N'),(916,'N'),(917,'N'),(918,'N'),(919,'N'),(920,'N'),(921,'N'),(922,'N'),(923,'N'),(924,'N'),(925,'N'),(926,'N'),(927,'N'),(928,'N'),(929,'N'),(930,'N'),(931,'N'),(932,'N'),(933,'N'),(934,'N'),(935,'N'),(936,'N'),(937,'N'),(938,'N'),(939,'N'),(940,'N'),(941,'N'),(942,'N'),(943,'N'),(944,'N'),(945,'N'),(946,'N'),(947,'N'),(948,'N'),(949,'N'),(950,'N'),(951,'N'),(952,'N'),(953,'N'),(954,'N'),(955,'N'),(956,'N'),(957,'N'),(958,'N'),(959,'N'),(960,'N'),(961,'N'),(962,'N'),(963,'N'),(964,'N'),(965,'N'),(966,'N'),(967,'N'),(968,'N'),(969,'N'),(970,'N'),(971,'N'),(972,'N'),(973,'N'),(974,'N'),(975,'N'),(976,'N'),(977,'N'),(978,'N'),(979,'N'),(980,'N'),(981,'N'),(982,'N'),(983,'N'),(984,'N'),(985,'N'),(986,'N'),(987,'N'),(988,'N'),(989,'N'),(990,'N'),(991,'N'),(992,'N'),(993,'N'),(994,'N'),(995,'N'),(996,'N'),(997,'N'),(998,'N'),(999,'N'),(1000,'N'),(1001,'N'),(1002,'N'),(1003,'N'),(1004,'N'),(1005,'N'),(1006,'N'),(1007,'N'),(1008,'N'),(1009,'N'),(1010,'N'),(1011,'N'),(1012,'N'),(1013,'N'),(1014,'N'),(1015,'N'),(1016,'N'),(1017,'N'),(1018,'N'),(1019,'N'),(1020,'N'),(1021,'N'),(1022,'N'),(1023,'N'),(1024,'N'),(1025,'N'),(1026,'N'),(1027,'N'),(1028,'N'),(1029,'N'),(1030,'N'),(1031,'N'),(1032,'N'),(1033,'N'),(1034,'N'),(1035,'N'),(1036,'N'),(1037,'N'),(1038,'N'),(1039,'N'),(1040,'N'),(1041,'N'),(1042,'N'),(1043,'N'),(1044,'N'),(1045,'N'),(1046,'N'),(1047,'N'),(1048,'N'),(1049,'N'),(1050,'N'),(1051,'N'),(1052,'N'),(1053,'N'),(1054,'N'),(1055,'N'),(1056,'N'),(1057,'N'),(1058,'N'),(1059,'N'),(1060,'N'),(1061,'N'),(1062,'N'),(1063,'N'),(1064,'N'),(1065,'N'),(1066,'N'),(1067,'N'),(1068,'N'),(1069,'N'),(1070,'N'),(1071,'N'),(1072,'N'),(1073,'N'),(1074,'N'),(1075,'N'),(1076,'N'),(1077,'N'),(1078,'N'),(1079,'N'),(1080,'N'),(1081,'N'),(1082,'N'),(1083,'N'),(1084,'N'),(1085,'N'),(1086,'N'),(1087,'N'),(1088,'N'),(1089,'N'),(1090,'N'),(1091,'N'),(1092,'N'),(1093,'N'),(1094,'N'),(1095,'N'),(1096,'N'),(1097,'N'),(1098,'N'),(1099,'N'),(1100,'N'),(1101,'N'),(1102,'N'),(1103,'N'),(1104,'N'),(1105,'N'),(1106,'N'),(1107,'N'),(1108,'N'),(1109,'N'),(1110,'N'),(1111,'N'),(1112,'N'),(1113,'N'),(1114,'N'),(1115,'N'),(1116,'N'),(1117,'N'),(1118,'N'),(1119,'N'),(1120,'N'),(1121,'N'),(1122,'N'),(1123,'N'),(1124,'N'),(1125,'N'),(1126,'N'),(1127,'N'),(1128,'N'),(1129,'N'),(1130,'N'),(1131,'N'),(1132,'N'),(1133,'N'),(1134,'N'),(1135,'N'),(1136,'N'),(1137,'N'),(1138,'N'),(1139,'N'),(1140,'N'),(1141,'N'),(1142,'N'),(1143,'N'),(1144,'N'),(1145,'N'),(1146,'N'),(1147,'N'),(1148,'N'),(1149,'N'),(1150,'N'),(1151,'N'),(1152,'N'),(1153,'N'),(1154,'N'),(1155,'N'),(1156,'N'),(1157,'N'),(1158,'N'),(1159,'N'),(1160,'N'),(1161,'N'),(1162,'N'),(1163,'N'),(1164,'N'),(1165,'N'),(1166,'N'),(1167,'N'),(1168,'N'),(1169,'N'),(1170,'N'),(1171,'N'),(1172,'N'),(1173,'N'),(1174,'N'),(1175,'N'),(1176,'N'),(1177,'N'),(1178,'N'),(1179,'N'),(1180,'N'),(1181,'N'),(1182,'N'),(1183,'N'),(1184,'N'),(1185,'N'),(1186,'N'),(1187,'N'),(1188,'N'),(1189,'N'),(1190,'N'),(1191,'N'),(1192,'N'),(1193,'Y'),(1194,'Y'),(1195,'Y'),(1196,'Y'),(1197,'Y'),(1198,'Y'),(1199,'Y'),(1200,'Y'),(1201,'Y'),(1202,'Y'),(1203,'Y'),(1204,'Y'),(1205,'Y'),(1206,'Y'),(1207,'Y'),(1208,'Y'),(1209,'Y'),(1210,'Y'),(1211,'Y'),(1212,'Y'),(1213,'Y'),(1214,'Y'),(1215,'Y'),(1216,'Y'),(1217,'Y'),(1218,'Y'),(1219,'Y'),(1220,'Y'),(1221,'Y'),(1222,'Y'),(1223,'Y'),(1224,'Y'),(1225,'Y'),(1226,'Y'),(1227,'Y'),(1228,'Y'),(1229,'Y'),(1230,'Y'),(1231,'Y'),(1232,'Y'),(1233,'Y'),(1234,'Y'),(1235,'Y'),(1236,'Y'),(1237,'Y'),(1238,'Y'),(1239,'Y'),(1240,'Y'),(1241,'Y'),(1242,'Y'),(1243,'Y'),(1244,'Y'),(1245,'Y'),(1246,'Y'),(1247,'Y'),(1248,'Y'),(1249,'Y'),(1250,'Y'),(1251,'Y'),(1252,'Y'),(1253,'Y'),(1254,'Y'),(1255,'Y'),(1256,'Y'),(1257,'Y'),(1258,'Y'),(1259,'Y'),(1260,'Y'),(1261,'Y'),(1262,'Y'),(1263,'Y'),(1264,'Y'),(1265,'Y'),(1266,'Y'),(1267,'Y'),(1268,'Y'),(1269,'Y'),(1270,'Y'),(1271,'Y'),(1272,'Y'),(1273,'Y'),(1274,'Y'),(1275,'Y'),(1276,'Y'),(1277,'Y'),(1278,'Y'),(1279,'Y'),(1280,'Y'),(1281,'Y'),(1282,'Y'),(1283,'Y'),(1284,'Y'),(1285,'Y'),(1286,'Y'),(1287,'Y'),(1288,'Y'),(1289,'Y'),(1290,'Y'),(1291,'Y'),(1292,'Y'),(1293,'Y'),(1294,'Y'),(1295,'Y'),(1296,'Y'),(1297,'Y'),(1298,'Y'),(1299,'Y'),(1300,'Y'),(1301,'Y'),(1302,'Y'),(1303,'Y'),(1304,'Y'),(1305,'Y'),(1306,'Y'),(1307,'Y'),(1308,'Y'),(1309,'Y'),(1310,'Y'),(1311,'Y'),(1312,'Y'),(1313,'Y'),(1314,'Y'),(1315,'Y'),(1316,'Y'),(1317,'Y'),(1318,'Y'),(1319,'Y'),(1320,'Y'),(1321,'Y'),(1322,'Y'),(1323,'Y'),(1324,'Y'),(1325,'Y'),(1326,'Y'),(1327,'Y'),(1328,'Y'),(1329,'Y'),(1330,'Y'),(1331,'Y'),(1332,'Y'),(1333,'Y'),(1334,'Y'),(1335,'Y'),(1336,'Y'),(1337,'Y'),(1338,'Y'),(1339,'Y'),(1340,'Y'),(1341,'Y'),(1342,'Y'),(1343,'Y'),(1344,'Y'),(1345,'Y'),(1346,'Y'),(1347,'Y'),(1348,'Y'),(1349,'Y'),(1350,'Y'),(1351,'Y'),(1352,'Y'),(1353,'Y'),(1354,'Y'),(1355,'Y'),(1356,'Y'),(1357,'Y'),(1358,'Y'),(1359,'Y'),(1360,'Y'),(1361,'Y'),(1362,'Y'),(1363,'Y'),(1364,'Y'),(1365,'Y'),(1366,'Y'),(1367,'Y'),(1368,'Y'),(1369,'Y'),(1370,'Y'),(1371,'Y'),(1372,'Y'),(1373,'Y'),(1374,'Y'),(1375,'Y'),(1376,'Y'),(1377,'Y'),(1378,'Y'),(1379,'Y'),(1380,'Y'),(1381,'Y'),(1382,'Y'),(1383,'Y'),(1384,'Y'),(1385,'Y'),(1386,'Y'),(1387,'Y'),(1388,'Y'),(1389,'Y'),(1390,'Y'),(1391,'Y'),(1392,'Y'),(1393,'Y'),(1394,'Y'),(1395,'Y'),(1396,'Y'),(1397,'Y'),(1398,'Y'),(1399,'Y'),(1400,'Y'),(1401,'Y'),(1402,'Y'),(1403,'Y'),(1404,'Y'),(1405,'Y'),(1406,'Y'),(1407,'Y'),(1408,'Y'),(1409,'Y'),(1410,'Y'),(1411,'Y'),(1412,'Y'),(1413,'Y'),(1414,'Y'),(1415,'Y'),(1416,'Y'),(1417,'Y'),(1418,'Y'),(1419,'Y'),(1420,'Y'),(1421,'Y'),(1422,'Y'),(1423,'Y'),(1424,'Y'),(1425,'Y'),(1426,'Y'),(1427,'Y'),(1428,'Y'),(1429,'Y'),(1430,'Y'),(1431,'Y'),(1432,'Y'),(1433,'Y'),(1434,'Y'),(1435,'Y'),(1436,'Y'),(1437,'Y'),(1438,'Y'),(1439,'Y'),(1440,'Y'),(1441,'Y'),(1442,'Y'),(1443,'Y'),(1444,'Y'),(1445,'Y'),(1446,'Y'),(1447,'Y'),(1448,'Y'),(1449,'Y'),(1450,'Y'),(1451,'Y'),(1452,'Y'),(1453,'Y'),(1454,'Y'),(1455,'Y'),(1456,'Y'),(1457,'Y'),(1458,'Y'),(1459,'Y'),(1460,'Y'),(1461,'Y'),(1462,'Y'),(1463,'Y'),(1464,'Y'),(1465,'Y'),(1466,'Y'),(1467,'Y'),(1468,'Y'),(1469,'Y'),(1470,'Y'),(1471,'Y'),(1472,'Y'),(1473,'Y'),(1474,'Y'),(1475,'Y'),(1476,'Y'),(1477,'Y'),(1478,'Y'),(1479,'Y'),(1480,'Y'),(1481,'Y'),(1482,'Y'),(1483,'Y'),(1484,'Y'),(1485,'Y'),(1486,'Y'),(1487,'Y'),(1488,'Y'),(1489,'Y'),(1490,'Y'),(1491,'Y'),(1492,'Y'),(1493,'Y'),(1494,'Y'),(1495,'Y'),(1496,'Y'),(1497,'Y'),(1498,'Y'),(1499,'Y'),(1500,'Y'),(1501,'Y'),(1502,'Y'),(1503,'Y'),(1504,'Y'),(1505,'Y'),(1506,'Y'),(1507,'Y'),(1508,'Y'),(1509,'Y'),(1510,'Y'),(1511,'Y'),(1512,'Y'),(1513,'Y'),(1514,'Y'),(1515,'Y'),(1516,'Y'),(1517,'Y'),(1518,'Y'),(1519,'Y'),(1520,'Y'),(1521,'Y'),(1522,'Y'),(1523,'Y'),(1524,'Y'),(1525,'Y'),(1526,'Y'),(1527,'Y'),(1528,'Y'),(1529,'Y'),(1530,'Y'),(1531,'Y'),(1532,'Y'),(1533,'Y'),(1534,'Y'),(1535,'Y'),(1536,'Y'),(1537,'Y'),(1538,'Y'),(1539,'Y'),(1540,'Y'),(1541,'Y'),(1542,'Y'),(1543,'Y'),(1544,'Y'),(1545,'Y'),(1546,'Y'),(1547,'Y'),(1548,'Y'),(1549,'Y'),(1550,'Y'),(1551,'Y'),(1552,'Y'),(1553,'Y'),(1554,'Y'),(1555,'Y'),(1556,'Y'),(1557,'Y'),(1558,'Y'),(1559,'Y'),(1560,'Y'),(1561,'Y'),(1562,'Y'),(1563,'Y'),(1564,'Y'),(1565,'Y'),(1566,'Y'),(1567,'Y'),(1568,'Y'),(1569,'Y'),(1570,'Y'),(1571,'Y'),(1572,'Y'),(1573,'Y'),(1574,'Y'),(1575,'Y'),(1576,'Y'),(1577,'Y'),(1578,'Y'),(1579,'Y'),(1580,'Y'),(1581,'Y'),(1582,'Y'),(1583,'Y'),(1584,'Y'),(1585,'Y'),(1586,'Y'),(1587,'Y'),(1588,'Y'),(1589,'Y'),(1590,'Y'),(1591,'Y'),(1592,'Y'),(1593,'Y'),(1594,'Y'),(1595,'Y'),(1596,'Y'),(1597,'Y'),(1598,'Y'),(1599,'Y'),(1600,'Y'),(1601,'Y'),(1602,'Y'),(1603,'Y'),(1604,'Y'),(1605,'Y'),(1606,'Y'),(1607,'Y'),(1608,'Y'),(1609,'Y'),(1610,'Y'),(1611,'Y'),(1612,'Y'),(1613,'Y'),(1614,'Y'),(1615,'Y'),(1616,'Y'),(1617,'Y'),(1618,'Y'),(1619,'Y'),(1620,'Y'),(1621,'Y'),(1622,'Y'),(1623,'Y'),(1624,'Y'),(1625,'Y'),(1626,'Y'),(1627,'Y'),(1628,'Y'),(1629,'Y'),(1630,'Y'),(1631,'Y'),(1632,'Y'),(1633,'Y'),(1634,'Y'),(1635,'Y'),(1636,'Y'),(1637,'Y'),(1638,'Y'),(1639,'Y'),(1640,'Y'),(1641,'Y'),(1642,'Y'),(1643,'Y'),(1644,'Y'),(1645,'Y'),(1646,'Y'),(1647,'Y'),(1648,'Y'),(1649,'Y'),(1650,'Y'),(1651,'Y'),(1652,'Y'),(1653,'Y'),(1654,'Y'),(1655,'Y'),(1656,'Y'),(1657,'Y'),(1658,'Y'),(1659,'Y'),(1660,'Y'),(1661,'Y'),(1662,'Y'),(1663,'Y'),(1664,'Y'),(1665,'Y'),(1666,'Y'),(1667,'Y'),(1668,'Y'),(1669,'Y'),(1670,'Y'),(1671,'Y'),(1672,'Y'),(1673,'Y'),(1674,'Y'),(1675,'Y'),(1676,'Y'),(1677,'Y'),(1678,'Y'),(1679,'Y'),(1680,'Y'),(1681,'Y'),(1682,'Y'),(1683,'Y'),(1684,'Y'),(1685,'Y'),(1686,'Y'),(1687,'Y'),(1688,'Y'),(1689,'Y'),(1690,'Y'),(1691,'Y'),(1692,'Y'),(1693,'Y'),(1694,'Y'),(1695,'Y'),(1696,'Y'),(1697,'Y'),(1698,'Y'),(1699,'Y'),(1700,'Y'),(1701,'Y'),(1702,'Y'),(1703,'Y'),(1704,'Y'),(1705,'Y'),(1706,'Y'),(1707,'Y'),(1708,'Y'),(1709,'Y'),(1710,'Y'),(1711,'Y'),(1712,'Y'),(1713,'Y'),(1714,'Y'),(1715,'Y'),(1716,'Y'),(1717,'Y'),(1718,'Y'),(1719,'Y'),(1720,'Y'),(1721,'Y'),(1722,'Y'),(1723,'Y'),(1724,'Y'),(1725,'Y'),(1726,'Y'),(1727,'Y'),(1728,'Y'),(1729,'Y'),(1730,'Y'),(1731,'Y'),(1732,'Y'),(1733,'Y'),(1734,'Y'),(1735,'Y'),(1736,'Y'),(1737,'Y'),(1738,'Y'),(1739,'Y'),(1740,'Y'),(1741,'Y'),(1742,'Y'),(1743,'Y'),(1744,'Y'),(1745,'Y'),(1746,'Y'),(1747,'Y'),(1748,'Y'),(1749,'Y'),(1750,'Y'),(1751,'Y'),(1752,'Y'),(1753,'Y'),(1754,'Y'),(1755,'Y'),(1756,'Y'),(1757,'Y'),(1758,'Y'),(1759,'Y'),(1760,'Y'),(1761,'Y'),(1762,'Y'),(1763,'Y'),(1764,'Y'),(1765,'Y'),(1766,'Y'),(1767,'Y'),(1768,'Y'),(1769,'Y'),(1770,'Y'),(1771,'Y'),(1772,'Y'),(1773,'Y'),(1774,'Y'),(1775,'Y'),(1776,'Y'),(1777,'Y'),(1778,'Y'),(1779,'Y'),(1780,'Y'),(1781,'Y'),(1782,'Y'),(1783,'Y'),(1784,'Y'),(1785,'Y'),(1786,'Y'),(1787,'Y');
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL,
  PRIMARY KEY (`Transition_time`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_leap_second`
--

LOCK TABLES `time_zone_leap_second` WRITE;
/*!40000 ALTER TABLE `time_zone_leap_second` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_leap_second` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_name`
--

LOCK TABLES `time_zone_name` WRITE;
/*!40000 ALTER TABLE `time_zone_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition`
--

LOCK TABLES `time_zone_transition` WRITE;
/*!40000 ALTER TABLE `time_zone_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  `Offset` int(11) NOT NULL DEFAULT 0,
  `Is_DST` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition_type`
--

LOCK TABLES `time_zone_transition_type` WRITE;
/*!40000 ALTER TABLE `time_zone_transition_type` DISABLE KEYS */;
INSERT INTO `time_zone_transition_type` VALUES (1,0,-968,0,'LMT');
/*!40000 ALTER TABLE `time_zone_transition_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Host` tinyint(4) NOT NULL,
  `User` tinyint(4) NOT NULL,
  `Password` tinyint(4) NOT NULL,
  `Select_priv` tinyint(4) NOT NULL,
  `Insert_priv` tinyint(4) NOT NULL,
  `Update_priv` tinyint(4) NOT NULL,
  `Delete_priv` tinyint(4) NOT NULL,
  `Create_priv` tinyint(4) NOT NULL,
  `Drop_priv` tinyint(4) NOT NULL,
  `Reload_priv` tinyint(4) NOT NULL,
  `Shutdown_priv` tinyint(4) NOT NULL,
  `Process_priv` tinyint(4) NOT NULL,
  `File_priv` tinyint(4) NOT NULL,
  `Grant_priv` tinyint(4) NOT NULL,
  `References_priv` tinyint(4) NOT NULL,
  `Index_priv` tinyint(4) NOT NULL,
  `Alter_priv` tinyint(4) NOT NULL,
  `Show_db_priv` tinyint(4) NOT NULL,
  `Super_priv` tinyint(4) NOT NULL,
  `Create_tmp_table_priv` tinyint(4) NOT NULL,
  `Lock_tables_priv` tinyint(4) NOT NULL,
  `Execute_priv` tinyint(4) NOT NULL,
  `Repl_slave_priv` tinyint(4) NOT NULL,
  `Repl_client_priv` tinyint(4) NOT NULL,
  `Create_view_priv` tinyint(4) NOT NULL,
  `Show_view_priv` tinyint(4) NOT NULL,
  `Create_routine_priv` tinyint(4) NOT NULL,
  `Alter_routine_priv` tinyint(4) NOT NULL,
  `Create_user_priv` tinyint(4) NOT NULL,
  `Event_priv` tinyint(4) NOT NULL,
  `Trigger_priv` tinyint(4) NOT NULL,
  `Create_tablespace_priv` tinyint(4) NOT NULL,
  `Delete_history_priv` tinyint(4) NOT NULL,
  `ssl_type` tinyint(4) NOT NULL,
  `ssl_cipher` tinyint(4) NOT NULL,
  `x509_issuer` tinyint(4) NOT NULL,
  `x509_subject` tinyint(4) NOT NULL,
  `max_questions` tinyint(4) NOT NULL,
  `max_updates` tinyint(4) NOT NULL,
  `max_connections` tinyint(4) NOT NULL,
  `max_user_connections` tinyint(4) NOT NULL,
  `plugin` tinyint(4) NOT NULL,
  `authentication_string` tinyint(4) NOT NULL,
  `password_expired` tinyint(4) NOT NULL,
  `is_role` tinyint(4) NOT NULL,
  `default_role` tinyint(4) NOT NULL,
  `max_statement_time` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumtext NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COMMENT='General log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slow_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int(11) NOT NULL,
  `rows_examined` int(11) NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int(11) NOT NULL,
  `insert_id` int(11) NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `sql_text` mediumtext NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL,
  `rows_affected` int(11) NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COMMENT='Slow log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transaction_registry`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `transaction_registry` (
  `transaction_id` bigint(20) unsigned NOT NULL,
  `commit_id` bigint(20) unsigned NOT NULL,
  `begin_timestamp` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `commit_timestamp` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `isolation_level` enum('READ-UNCOMMITTED','READ-COMMITTED','REPEATABLE-READ','SERIALIZABLE') COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `commit_id` (`commit_id`),
  KEY `begin_timestamp` (`begin_timestamp`),
  KEY `commit_timestamp` (`commit_timestamp`,`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `sys`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sys` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;

USE `sys`;

--
-- Table structure for table `host_summary`
--

DROP TABLE IF EXISTS `host_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_summary` (
  `host` tinyint(4) NOT NULL,
  `statements` tinyint(4) NOT NULL,
  `statement_latency` tinyint(4) NOT NULL,
  `statement_avg_latency` tinyint(4) NOT NULL,
  `table_scans` tinyint(4) NOT NULL,
  `file_ios` tinyint(4) NOT NULL,
  `file_io_latency` tinyint(4) NOT NULL,
  `current_connections` tinyint(4) NOT NULL,
  `total_connections` tinyint(4) NOT NULL,
  `unique_users` tinyint(4) NOT NULL,
  `current_memory` tinyint(4) NOT NULL,
  `total_memory_allocated` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_summary`
--

LOCK TABLES `host_summary` WRITE;
/*!40000 ALTER TABLE `host_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `host_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_summary_by_file_io`
--

DROP TABLE IF EXISTS `host_summary_by_file_io`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_summary_by_file_io` (
  `host` tinyint(4) NOT NULL,
  `ios` tinyint(4) NOT NULL,
  `io_latency` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_summary_by_file_io`
--

LOCK TABLES `host_summary_by_file_io` WRITE;
/*!40000 ALTER TABLE `host_summary_by_file_io` DISABLE KEYS */;
/*!40000 ALTER TABLE `host_summary_by_file_io` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `host_summary_by_file_io_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_summary_by_file_io_type` (
  `host` tinyint(4) NOT NULL,
  `event_name` tinyint(4) NOT NULL,
  `total` tinyint(4) NOT NULL,
  `total_latency` tinyint(4) NOT NULL,
  `max_latency` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_summary_by_file_io_type`
--

LOCK TABLES `host_summary_by_file_io_type` WRITE;
/*!40000 ALTER TABLE `host_summary_by_file_io_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `host_summary_by_file_io_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_summary_by_stages`
--

DROP TABLE IF EXISTS `host_summary_by_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_summary_by_stages` (
  `host` tinyint(4) NOT NULL,
  `event_name` tinyint(4) NOT NULL,
  `total` tinyint(4) NOT NULL,
  `total_latency` tinyint(4) NOT NULL,
  `avg_latency` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_summary_by_stages`
--

LOCK TABLES `host_summary_by_stages` WRITE;
/*!40000 ALTER TABLE `host_summary_by_stages` DISABLE KEYS */;
/*!40000 ALTER TABLE `host_summary_by_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `host_summary_by_statement_latency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_summary_by_statement_latency` (
  `host` tinyint(4) NOT NULL,
  `total` tinyint(4) NOT NULL,
  `total_latency` tinyint(4) NOT NULL,
  `max_latency` tinyint(4) NOT NULL,
  `lock_latency` tinyint(4) NOT NULL,
  `rows_sent` tinyint(4) NOT NULL,
  `rows_examined` tinyint(4) NOT NULL,
  `rows_affected` tinyint(4) NOT NULL,
  `full_scans` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_summary_by_statement_latency`
--

LOCK TABLES `host_summary_by_statement_latency` WRITE;
/*!40000 ALTER TABLE `host_summary_by_statement_latency` DISABLE KEYS */;
/*!40000 ALTER TABLE `host_summary_by_statement_latency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `host_summary_by_statement_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_summary_by_statement_type` (
  `host` tinyint(4) NOT NULL,
  `statement` tinyint(4) NOT NULL,
  `total` tinyint(4) NOT NULL,
  `total_latency` tinyint(4) NOT NULL,
  `max_latency` tinyint(4) NOT NULL,
  `lock_latency` tinyint(4) NOT NULL,
  `rows_sent` tinyint(4) NOT NULL,
  `rows_examined` tinyint(4) NOT NULL,
  `rows_affected` tinyint(4) NOT NULL,
  `full_scans` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_summary_by_statement_type`
--

LOCK TABLES `host_summary_by_statement_type` WRITE;
/*!40000 ALTER TABLE `host_summary_by_statement_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `host_summary_by_statement_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `innodb_buffer_stats_by_schema` (
  `object_schema` tinyint(4) NOT NULL,
  `allocated` tinyint(4) NOT NULL,
  `data` tinyint(4) NOT NULL,
  `pages` tinyint(4) NOT NULL,
  `pages_hashed` tinyint(4) NOT NULL,
  `pages_old` tinyint(4) NOT NULL,
  `rows_cached` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `innodb_buffer_stats_by_schema`
--

LOCK TABLES `innodb_buffer_stats_by_schema` WRITE;
/*!40000 ALTER TABLE `innodb_buffer_stats_by_schema` DISABLE KEYS */;
/*!40000 ALTER TABLE `innodb_buffer_stats_by_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `innodb_buffer_stats_by_table` (
  `object_schema` tinyint(4) NOT NULL,
  `object_name` tinyint(4) NOT NULL,
  `allocated` tinyint(4) NOT NULL,
  `data` tinyint(4) NOT NULL,
  `pages` tinyint(4) NOT NULL,
  `pages_hashed` tinyint(4) NOT NULL,
  `pages_old` tinyint(4) NOT NULL,
  `rows_cached` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `innodb_buffer_stats_by_table`
--

LOCK TABLES `innodb_buffer_stats_by_table` WRITE;
/*!40000 ALTER TABLE `innodb_buffer_stats_by_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `innodb_buffer_stats_by_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `innodb_lock_waits`
--

DROP TABLE IF EXISTS `innodb_lock_waits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `innodb_lock_waits` (
  `wait_started` tinyint(4) NOT NULL,
  `wait_age` tinyint(4) NOT NULL,
  `wait_age_secs` tinyint(4) NOT NULL,
  `locked_table` tinyint(4) NOT NULL,
  `locked_index` tinyint(4) NOT NULL,
  `locked_type` tinyint(4) NOT NULL,
  `waiting_trx_id` tinyint(4) NOT NULL,
  `waiting_trx_started` tinyint(4) NOT NULL,
  `waiting_trx_age` tinyint(4) NOT NULL,
  `waiting_trx_rows_locked` tinyint(4) NOT NULL,
  `waiting_trx_rows_modified` tinyint(4) NOT NULL,
  `waiting_pid` tinyint(4) NOT NULL,
  `waiting_query` tinyint(4) NOT NULL,
  `waiting_lock_id` tinyint(4) NOT NULL,
  `waiting_lock_mode` tinyint(4) NOT NULL,
  `blocking_trx_id` tinyint(4) NOT NULL,
  `blocking_pid` tinyint(4) NOT NULL,
  `blocking_query` tinyint(4) NOT NULL,
  `blocking_lock_id` tinyint(4) NOT NULL,
  `blocking_lock_mode` tinyint(4) NOT NULL,
  `blocking_trx_started` tinyint(4) NOT NULL,
  `blocking_trx_age` tinyint(4) NOT NULL,
  `blocking_trx_rows_locked` tinyint(4) NOT NULL,
  `blocking_trx_rows_modified` tinyint(4) NOT NULL,
  `sql_kill_blocking_query` tinyint(4) NOT NULL,
  `sql_kill_blocking_connection` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `innodb_lock_waits`
--

LOCK TABLES `innodb_lock_waits` WRITE;
/*!40000 ALTER TABLE `innodb_lock_waits` DISABLE KEYS */;
/*!40000 ALTER TABLE `innodb_lock_waits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `io_by_thread_by_latency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `io_by_thread_by_latency` (
  `user` tinyint(4) NOT NULL,
  `total` tinyint(4) NOT NULL,
  `total_latency` tinyint(4) NOT NULL,
  `min_latency` tinyint(4) NOT NULL,
  `avg_latency` tinyint(4) NOT NULL,
  `max_latency` tinyint(4) NOT NULL,
  `thread_id` tinyint(4) NOT NULL,
  `processlist_id` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `io_by_thread_by_latency`
--

LOCK TABLES `io_by_thread_by_latency` WRITE;
/*!40000 ALTER TABLE `io_by_thread_by_latency` DISABLE KEYS */;
/*!40000 ALTER TABLE `io_by_thread_by_latency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `io_global_by_file_by_bytes` (
  `file` tinyint(4) NOT NULL,
  `count_read` tinyint(4) NOT NULL,
  `total_read` tinyint(4) NOT NULL,
  `avg_read` tinyint(4) NOT NULL,
  `count_write` tinyint(4) NOT NULL,
  `total_written` tinyint(4) NOT NULL,
  `avg_write` tinyint(4) NOT NULL,
  `total` tinyint(4) NOT NULL,
  `write_pct` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `io_global_by_file_by_bytes`
--

LOCK TABLES `io_global_by_file_by_bytes` WRITE;
/*!40000 ALTER TABLE `io_global_by_file_by_bytes` DISABLE KEYS */;
/*!40000 ALTER TABLE `io_global_by_file_by_bytes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_file_by_latency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `io_global_by_file_by_latency` (
  `file` tinyint(4) NOT NULL,
  `total` tinyint(4) NOT NULL,
  `total_latency` tinyint(4) NOT NULL,
  `count_read` tinyint(4) NOT NULL,
  `read_latency` tinyint(4) NOT NULL,
  `count_write` tinyint(4) NOT NULL,
  `write_latency` tinyint(4) NOT NULL,
  `count_misc` tinyint(4) NOT NULL,
  `misc_latency` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `io_global_by_file_by_latency`
--

LOCK TABLES `io_global_by_file_by_latency` WRITE;
/*!40000 ALTER TABLE `io_global_by_file_by_latency` DISABLE KEYS */;
/*!40000 ALTER TABLE `io_global_by_file_by_latency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `io_global_by_wait_by_bytes` (
  `event_name` tinyint(4) NOT NULL,
  `total` tinyint(4) NOT NULL,
  `total_latency` tinyint(4) NOT NULL,
  `min_latency` tinyint(4) NOT NULL,
  `avg_latency` tinyint(4) NOT NULL,
  `max_latency` tinyint(4) NOT NULL,
  `count_read` tinyint(4) NOT NULL,
  `total_read` tinyint(4) NOT NULL,
  `avg_read` tinyint(4) NOT NULL,
  `count_write` tinyint(4) NOT NULL,
  `total_written` tinyint(4) NOT NULL,
  `avg_written` tinyint(4) NOT NULL,
  `total_requested` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `io_global_by_wait_by_bytes`
--

LOCK TABLES `io_global_by_wait_by_bytes` WRITE;
/*!40000 ALTER TABLE `io_global_by_wait_by_bytes` DISABLE KEYS */;
/*!40000 ALTER TABLE `io_global_by_wait_by_bytes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `io_global_by_wait_by_latency` (
  `event_name` tinyint(4) NOT NULL,
  `total` tinyint(4) NOT NULL,
  `total_latency` tinyint(4) NOT NULL,
  `avg_latency` tinyint(4) NOT NULL,
  `max_latency` tinyint(4) NOT NULL,
  `read_latency` tinyint(4) NOT NULL,
  `write_latency` tinyint(4) NOT NULL,
  `misc_latency` tinyint(4) NOT NULL,
  `count_read` tinyint(4) NOT NULL,
  `total_read` tinyint(4) NOT NULL,
  `avg_read` tinyint(4) NOT NULL,
  `count_write` tinyint(4) NOT NULL,
  `total_written` tinyint(4) NOT NULL,
  `avg_written` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `io_global_by_wait_by_latency`
--

LOCK TABLES `io_global_by_wait_by_latency` WRITE;
/*!40000 ALTER TABLE `io_global_by_wait_by_latency` DISABLE KEYS */;
/*!40000 ALTER TABLE `io_global_by_wait_by_latency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `latest_file_io`
--

DROP TABLE IF EXISTS `latest_file_io`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `latest_file_io` (
  `thread` tinyint(4) NOT NULL,
  `file` tinyint(4) NOT NULL,
  `latency` tinyint(4) NOT NULL,
  `operation` tinyint(4) NOT NULL,
  `requested` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `latest_file_io`
--

LOCK TABLES `latest_file_io` WRITE;
/*!40000 ALTER TABLE `latest_file_io` DISABLE KEYS */;
/*!40000 ALTER TABLE `latest_file_io` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memory_by_host_by_current_bytes` (
  `host` tinyint(4) NOT NULL,
  `current_count_used` tinyint(4) NOT NULL,
  `current_allocated` tinyint(4) NOT NULL,
  `current_avg_alloc` tinyint(4) NOT NULL,
  `current_max_alloc` tinyint(4) NOT NULL,
  `total_allocated` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memory_by_host_by_current_bytes`
--

LOCK TABLES `memory_by_host_by_current_bytes` WRITE;
/*!40000 ALTER TABLE `memory_by_host_by_current_bytes` DISABLE KEYS */;
/*!40000 ALTER TABLE `memory_by_host_by_current_bytes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memory_by_thread_by_current_bytes` (
  `thread_id` tinyint(4) NOT NULL,
  `user` tinyint(4) NOT NULL,
  `current_count_used` tinyint(4) NOT NULL,
  `current_allocated` tinyint(4) NOT NULL,
  `current_avg_alloc` tinyint(4) NOT NULL,
  `current_max_alloc` tinyint(4) NOT NULL,
  `total_allocated` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memory_by_thread_by_current_bytes`
--

LOCK TABLES `memory_by_thread_by_current_bytes` WRITE;
/*!40000 ALTER TABLE `memory_by_thread_by_current_bytes` DISABLE KEYS */;
/*!40000 ALTER TABLE `memory_by_thread_by_current_bytes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memory_by_user_by_current_bytes` (
  `user` tinyint(4) NOT NULL,
  `current_count_used` tinyint(4) NOT NULL,
  `current_allocated` tinyint(4) NOT NULL,
  `current_avg_alloc` tinyint(4) NOT NULL,
  `current_max_alloc` tinyint(4) NOT NULL,
  `total_allocated` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memory_by_user_by_current_bytes`
--

LOCK TABLES `memory_by_user_by_current_bytes` WRITE;
/*!40000 ALTER TABLE `memory_by_user_by_current_bytes` DISABLE KEYS */;
/*!40000 ALTER TABLE `memory_by_user_by_current_bytes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_global_by_current_bytes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memory_global_by_current_bytes` (
  `event_name` tinyint(4) NOT NULL,
  `current_count` tinyint(4) NOT NULL,
  `current_alloc` tinyint(4) NOT NULL,
  `current_avg_alloc` tinyint(4) NOT NULL,
  `high_count` tinyint(4) NOT NULL,
  `high_alloc` tinyint(4) NOT NULL,
  `high_avg_alloc` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memory_global_by_current_bytes`
--

LOCK TABLES `memory_global_by_current_bytes` WRITE;
/*!40000 ALTER TABLE `memory_global_by_current_bytes` DISABLE KEYS */;
/*!40000 ALTER TABLE `memory_global_by_current_bytes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memory_global_total`
--

DROP TABLE IF EXISTS `memory_global_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memory_global_total` (
  `total_allocated` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memory_global_total`
--

LOCK TABLES `memory_global_total` WRITE;
/*!40000 ALTER TABLE `memory_global_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `memory_global_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metrics` (
  `Variable_name` tinyint(4) NOT NULL,
  `Variable_value` tinyint(4) NOT NULL,
  `Type` tinyint(4) NOT NULL,
  `Enabled` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrics`
--

LOCK TABLES `metrics` WRITE;
/*!40000 ALTER TABLE `metrics` DISABLE KEYS */;
/*!40000 ALTER TABLE `metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processlist`
--

DROP TABLE IF EXISTS `processlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processlist` (
  `thd_id` tinyint(4) NOT NULL,
  `conn_id` tinyint(4) NOT NULL,
  `user` tinyint(4) NOT NULL,
  `db` tinyint(4) NOT NULL,
  `command` tinyint(4) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `time` tinyint(4) NOT NULL,
  `current_statement` tinyint(4) NOT NULL,
  `statement_latency` tinyint(4) NOT NULL,
  `progress` tinyint(4) NOT NULL,
  `lock_latency` tinyint(4) NOT NULL,
  `rows_examined` tinyint(4) NOT NULL,
  `rows_sent` tinyint(4) NOT NULL,
  `rows_affected` tinyint(4) NOT NULL,
  `tmp_tables` tinyint(4) NOT NULL,
  `tmp_disk_tables` tinyint(4) NOT NULL,
  `full_scan` tinyint(4) NOT NULL,
  `last_statement` tinyint(4) NOT NULL,
  `last_statement_latency` tinyint(4) NOT NULL,
  `current_memory` tinyint(4) NOT NULL,
  `last_wait` tinyint(4) NOT NULL,
  `last_wait_latency` tinyint(4) NOT NULL,
  `source` tinyint(4) NOT NULL,
  `trx_latency` tinyint(4) NOT NULL,
  `trx_state` tinyint(4) NOT NULL,
  `trx_autocommit` tinyint(4) NOT NULL,
  `pid` tinyint(4) NOT NULL,
  `program_name` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processlist`
--

LOCK TABLES `processlist` WRITE;
/*!40000 ALTER TABLE `processlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `processlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_check_lost_instrumentation`
--

DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_check_lost_instrumentation` (
  `variable_name` tinyint(4) NOT NULL,
  `variable_value` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_check_lost_instrumentation`
--

LOCK TABLES `ps_check_lost_instrumentation` WRITE;
/*!40000 ALTER TABLE `ps_check_lost_instrumentation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_check_lost_instrumentation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_auto_increment_columns`
--

DROP TABLE IF EXISTS `schema_auto_increment_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_auto_increment_columns` (
  `table_schema` tinyint(4) NOT NULL,
  `table_name` tinyint(4) NOT NULL,
  `column_name` tinyint(4) NOT NULL,
  `data_type` tinyint(4) NOT NULL,
  `column_type` tinyint(4) NOT NULL,
  `is_signed` tinyint(4) NOT NULL,
  `is_unsigned` tinyint(4) NOT NULL,
  `max_value` tinyint(4) NOT NULL,
  `auto_increment` tinyint(4) NOT NULL,
  `auto_increment_ratio` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_auto_increment_columns`
--

LOCK TABLES `schema_auto_increment_columns` WRITE;
/*!40000 ALTER TABLE `schema_auto_increment_columns` DISABLE KEYS */;
/*!40000 ALTER TABLE `schema_auto_increment_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_index_statistics`
--

DROP TABLE IF EXISTS `schema_index_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_index_statistics` (
  `table_schema` tinyint(4) NOT NULL,
  `table_name` tinyint(4) NOT NULL,
  `index_name` tinyint(4) NOT NULL,
  `rows_selected` tinyint(4) NOT NULL,
  `select_latency` tinyint(4) NOT NULL,
  `rows_inserted` tinyint(4) NOT NULL,
  `insert_latency` tinyint(4) NOT NULL,
  `rows_updated` tinyint(4) NOT NULL,
  `update_latency` tinyint(4) NOT NULL,
  `rows_deleted` tinyint(4) NOT NULL,
  `delete_latency` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_index_statistics`
--

LOCK TABLES `schema_index_statistics` WRITE;
/*!40000 ALTER TABLE `schema_index_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `schema_index_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_object_overview`
--

DROP TABLE IF EXISTS `schema_object_overview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_object_overview` (
  `db` tinyint(4) NOT NULL,
  `object_type` tinyint(4) NOT NULL,
  `count` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_object_overview`
--

LOCK TABLES `schema_object_overview` WRITE;
/*!40000 ALTER TABLE `schema_object_overview` DISABLE KEYS */;
/*!40000 ALTER TABLE `schema_object_overview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_redundant_indexes`
--

DROP TABLE IF EXISTS `schema_redundant_indexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_redundant_indexes` (
  `table_schema` tinyint(4) NOT NULL,
  `table_name` tinyint(4) NOT NULL,
  `redundant_index_name` tinyint(4) NOT NULL,
  `redundant_index_columns` tinyint(4) NOT NULL,
  `redundant_index_non_unique` tinyint(4) NOT NULL,
  `dominant_index_name` tinyint(4) NOT NULL,
  `dominant_index_columns` tinyint(4) NOT NULL,
  `dominant_index_non_unique` tinyint(4) NOT NULL,
  `subpart_exists` tinyint(4) NOT NULL,
  `sql_drop_index` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_redundant_indexes`
--

LOCK TABLES `schema_redundant_indexes` WRITE;
/*!40000 ALTER TABLE `schema_redundant_indexes` DISABLE KEYS */;
/*!40000 ALTER TABLE `schema_redundant_indexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_table_lock_waits`
--

DROP TABLE IF EXISTS `schema_table_lock_waits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_table_lock_waits` (
  `object_schema` tinyint(4) NOT NULL,
  `object_name` tinyint(4) NOT NULL,
  `waiting_thread_id` tinyint(4) NOT NULL,
  `waiting_pid` tinyint(4) NOT NULL,
  `waiting_account` tinyint(4) NOT NULL,
  `waiting_lock_type` tinyint(4) NOT NULL,
  `waiting_lock_duration` tinyint(4) NOT NULL,
  `waiting_query` tinyint(4) NOT NULL,
  `waiting_query_secs` tinyint(4) NOT NULL,
  `waiting_query_rows_affected` tinyint(4) NOT NULL,
  `waiting_query_rows_examined` tinyint(4) NOT NULL,
  `blocking_thread_id` tinyint(4) NOT NULL,
  `blocking_pid` tinyint(4) NOT NULL,
  `blocking_account` tinyint(4) NOT NULL,
  `blocking_lock_type` tinyint(4) NOT NULL,
  `blocking_lock_duration` tinyint(4) NOT NULL,
  `sql_kill_blocking_query` tinyint(4) NOT NULL,
  `sql_kill_blocking_connection` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_table_lock_waits`
--

LOCK TABLES `schema_table_lock_waits` WRITE;
/*!40000 ALTER TABLE `schema_table_lock_waits` DISABLE KEYS */;
/*!40000 ALTER TABLE `schema_table_lock_waits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_table_statistics`
--

DROP TABLE IF EXISTS `schema_table_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_table_statistics` (
  `table_schema` tinyint(4) NOT NULL,
  `table_name` tinyint(4) NOT NULL,
  `total_latency` tinyint(4) NOT NULL,
  `rows_fetched` tinyint(4) NOT NULL,
  `fetch_latency` tinyint(4) NOT NULL,
  `rows_inserted` tinyint(4) NOT NULL,
  `insert_latency` tinyint(4) NOT NULL,
  `rows_updated` tinyint(4) NOT NULL,
  `update_latency` tinyint(4) NOT NULL,
  `rows_deleted` tinyint(4) NOT NULL,
  `delete_latency` tinyint(4) NOT NULL,
  `io_read_requests` tinyint(4) NOT NULL,
  `io_read` tinyint(4) NOT NULL,
  `io_read_latency` tinyint(4) NOT NULL,
  `io_write_requests` tinyint(4) NOT NULL,
  `io_write` tinyint(4) NOT NULL,
  `io_write_latency` tinyint(4) NOT NULL,
  `io_misc_requests` tinyint(4) NOT NULL,
  `io_misc_latency` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_table_statistics`
--

LOCK TABLES `schema_table_statistics` WRITE;
/*!40000 ALTER TABLE `schema_table_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `schema_table_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_table_statistics_with_buffer` (
  `table_schema` tinyint(4) NOT NULL,
  `table_name` tinyint(4) NOT NULL,
  `rows_fetched` tinyint(4) NOT NULL,
  `fetch_latency` tinyint(4) NOT NULL,
  `rows_inserted` tinyint(4) NOT NULL,
  `insert_latency` tinyint(4) NOT NULL,
  `rows_updated` tinyint(4) NOT NULL,
  `update_latency` tinyint(4) NOT NULL,
  `rows_deleted` tinyint(4) NOT NULL,
  `delete_latency` tinyint(4) NOT NULL,
  `io_read_requests` tinyint(4) NOT NULL,
  `io_read` tinyint(4) NOT NULL,
  `io_read_latency` tinyint(4) NOT NULL,
  `io_write_requests` tinyint(4) NOT NULL,
  `io_write` tinyint(4) NOT NULL,
  `io_write_latency` tinyint(4) NOT NULL,
  `io_misc_requests` tinyint(4) NOT NULL,
  `io_misc_latency` tinyint(4) NOT NULL,
  `innodb_buffer_allocated` tinyint(4) NOT NULL,
  `innodb_buffer_data` tinyint(4) NOT NULL,
  `innodb_buffer_free` tinyint(4) NOT NULL,
  `innodb_buffer_pages` tinyint(4) NOT NULL,
  `innodb_buffer_pages_hashed` tinyint(4) NOT NULL,
  `innodb_buffer_pages_old` tinyint(4) NOT NULL,
  `innodb_buffer_rows_cached` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_table_statistics_with_buffer`
--

LOCK TABLES `schema_table_statistics_with_buffer` WRITE;
/*!40000 ALTER TABLE `schema_table_statistics_with_buffer` DISABLE KEYS */;
/*!40000 ALTER TABLE `schema_table_statistics_with_buffer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_tables_with_full_table_scans` (
  `object_schema` tinyint(4) NOT NULL,
  `object_name` tinyint(4) NOT NULL,
  `rows_full_scanned` tinyint(4) NOT NULL,
  `latency` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_tables_with_full_table_scans`
--

LOCK TABLES `schema_tables_with_full_table_scans` WRITE;
/*!40000 ALTER TABLE `schema_tables_with_full_table_scans` DISABLE KEYS */;
/*!40000 ALTER TABLE `schema_tables_with_full_table_scans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_unused_indexes`
--

DROP TABLE IF EXISTS `schema_unused_indexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_unused_indexes` (
  `object_schema` tinyint(4) NOT NULL,
  `object_name` tinyint(4) NOT NULL,
  `index_name` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_unused_indexes`
--

LOCK TABLES `schema_unused_indexes` WRITE;
/*!40000 ALTER TABLE `schema_unused_indexes` DISABLE KEYS */;
/*!40000 ALTER TABLE `schema_unused_indexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `thd_id` tinyint(4) NOT NULL,
  `conn_id` tinyint(4) NOT NULL,
  `user` tinyint(4) NOT NULL,
  `db` tinyint(4) NOT NULL,
  `command` tinyint(4) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `time` tinyint(4) NOT NULL,
  `current_statement` tinyint(4) NOT NULL,
  `statement_latency` tinyint(4) NOT NULL,
  `progress` tinyint(4) NOT NULL,
  `lock_latency` tinyint(4) NOT NULL,
  `rows_examined` tinyint(4) NOT NULL,
  `rows_sent` tinyint(4) NOT NULL,
  `rows_affected` tinyint(4) NOT NULL,
  `tmp_tables` tinyint(4) NOT NULL,
  `tmp_disk_tables` tinyint(4) NOT NULL,
  `full_scan` tinyint(4) NOT NULL,
  `last_statement` tinyint(4) NOT NULL,
  `last_statement_latency` tinyint(4) NOT NULL,
  `current_memory` tinyint(4) NOT NULL,
  `last_wait` tinyint(4) NOT NULL,
  `last_wait_latency` tinyint(4) NOT NULL,
  `source` tinyint(4) NOT NULL,
  `trx_latency` tinyint(4) NOT NULL,
  `trx_state` tinyint(4) NOT NULL,
  `trx_autocommit` tinyint(4) NOT NULL,
  `pid` tinyint(4) NOT NULL,
  `program_name` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_ssl_status`
--

DROP TABLE IF EXISTS `session_ssl_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_ssl_status` (
  `thread_id` tinyint(4) NOT NULL,
  `ssl_version` tinyint(4) NOT NULL,
  `ssl_cipher` tinyint(4) NOT NULL,
  `ssl_sessions_reused` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_ssl_status`
--

LOCK TABLES `session_ssl_status` WRITE;
/*!40000 ALTER TABLE `session_ssl_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_ssl_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statement_analysis`
--

DROP TABLE IF EXISTS `statement_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statement_analysis` (
  `query` tinyint(4) NOT NULL,
  `db` tinyint(4) NOT NULL,
  `full_scan` tinyint(4) NOT NULL,
  `exec_count` tinyint(4) NOT NULL,
  `err_count` tinyint(4) NOT NULL,
  `warn_count` tinyint(4) NOT NULL,
  `total_latency` tinyint(4) NOT NULL,
  `max_latency` tinyint(4) NOT NULL,
  `avg_latency` tinyint(4) NOT NULL,
  `lock_latency` tinyint(4) NOT NULL,
  `rows_sent` tinyint(4) NOT NULL,
  `rows_sent_avg` tinyint(4) NOT NULL,
  `rows_examined` tinyint(4) NOT NULL,
  `rows_examined_avg` tinyint(4) NOT NULL,
  `rows_affected` tinyint(4) NOT NULL,
  `rows_affected_avg` tinyint(4) NOT NULL,
  `tmp_tables` tinyint(4) NOT NULL,
  `tmp_disk_tables` tinyint(4) NOT NULL,
  `rows_sorted` tinyint(4) NOT NULL,
  `sort_merge_passes` tinyint(4) NOT NULL,
  `digest` tinyint(4) NOT NULL,
  `first_seen` tinyint(4) NOT NULL,
  `last_seen` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statement_analysis`
--

LOCK TABLES `statement_analysis` WRITE;
/*!40000 ALTER TABLE `statement_analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `statement_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statements_with_errors_or_warnings` (
  `query` tinyint(4) NOT NULL,
  `db` tinyint(4) NOT NULL,
  `exec_count` tinyint(4) NOT NULL,
  `errors` tinyint(4) NOT NULL,
  `error_pct` tinyint(4) NOT NULL,
  `warnings` tinyint(4) NOT NULL,
  `warning_pct` tinyint(4) NOT NULL,
  `first_seen` tinyint(4) NOT NULL,
  `last_seen` tinyint(4) NOT NULL,
  `digest` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statements_with_errors_or_warnings`
--

LOCK TABLES `statements_with_errors_or_warnings` WRITE;
/*!40000 ALTER TABLE `statements_with_errors_or_warnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `statements_with_errors_or_warnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `statements_with_full_table_scans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statements_with_full_table_scans` (
  `query` tinyint(4) NOT NULL,
  `db` tinyint(4) NOT NULL,
  `exec_count` tinyint(4) NOT NULL,
  `total_latency` tinyint(4) NOT NULL,
  `no_index_used_count` tinyint(4) NOT NULL,
  `no_good_index_used_count` tinyint(4) NOT NULL,
  `no_index_used_pct` tinyint(4) NOT NULL,
  `rows_sent` tinyint(4) NOT NULL,
  `rows_examined` tinyint(4) NOT NULL,
  `rows_sent_avg` tinyint(4) NOT NULL,
  `rows_examined_avg` tinyint(4) NOT NULL,
  `first_seen` tinyint(4) NOT NULL,
  `last_seen` tinyint(4) NOT NULL,
  `digest` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statements_with_full_table_scans`
--

LOCK TABLES `statements_with_full_table_scans` WRITE;
/*!40000 ALTER TABLE `statements_with_full_table_scans` DISABLE KEYS */;
/*!40000 ALTER TABLE `statements_with_full_table_scans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statements_with_runtimes_in_95th_percentile` (
  `query` tinyint(4) NOT NULL,
  `db` tinyint(4) NOT NULL,
  `full_scan` tinyint(4) NOT NULL,
  `exec_count` tinyint(4) NOT NULL,
  `err_count` tinyint(4) NOT NULL,
  `warn_count` tinyint(4) NOT NULL,
  `total_latency` tinyint(4) NOT NULL,
  `max_latency` tinyint(4) NOT NULL,
  `avg_latency` tinyint(4) NOT NULL,
  `rows_sent` tinyint(4) NOT NULL,
  `rows_sent_avg` tinyint(4) NOT NULL,
  `rows_examined` tinyint(4) NOT NULL,
  `rows_examined_avg` tinyint(4) NOT NULL,
  `first_seen` tinyint(4) NOT NULL,
  `last_seen` tinyint(4) NOT NULL,
  `digest` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statements_with_runtimes_in_95th_percentile`
--

LOCK TABLES `statements_with_runtimes_in_95th_percentile` WRITE;
/*!40000 ALTER TABLE `statements_with_runtimes_in_95th_percentile` DISABLE KEYS */;
/*!40000 ALTER TABLE `statements_with_runtimes_in_95th_percentile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statements_with_sorting`
--

DROP TABLE IF EXISTS `statements_with_sorting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statements_with_sorting` (
  `query` tinyint(4) NOT NULL,
  `db` tinyint(4) NOT NULL,
  `exec_count` tinyint(4) NOT NULL,
  `total_latency` tinyint(4) NOT NULL,
  `sort_merge_passes` tinyint(4) NOT NULL,
  `avg_sort_merges` tinyint(4) NOT NULL,
  `sorts_using_scans` tinyint(4) NOT NULL,
  `sort_using_range` tinyint(4) NOT NULL,
  `rows_sorted` tinyint(4) NOT NULL,
  `avg_rows_sorted` tinyint(4) NOT NULL,
  `first_seen` tinyint(4) NOT NULL,
  `last_seen` tinyint(4) NOT NULL,
  `digest` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statements_with_sorting`
--

LOCK TABLES `statements_with_sorting` WRITE;
/*!40000 ALTER TABLE `statements_with_sorting` DISABLE KEYS */;
/*!40000 ALTER TABLE `statements_with_sorting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statements_with_temp_tables`
--

DROP TABLE IF EXISTS `statements_with_temp_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statements_with_temp_tables` (
  `query` tinyint(4) NOT NULL,
  `db` tinyint(4) NOT NULL,
  `exec_count` tinyint(4) NOT NULL,
  `total_latency` tinyint(4) NOT NULL,
  `memory_tmp_tables` tinyint(4) NOT NULL,
  `disk_tmp_tables` tinyint(4) NOT NULL,
  `avg_tmp_tables_per_query` tinyint(4) NOT NULL,
  `tmp_tables_to_disk_pct` tinyint(4) NOT NULL,
  `first_seen` tinyint(4) NOT NULL,
  `last_seen` tinyint(4) NOT NULL,
  `digest` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statements_with_temp_tables`
--

LOCK TABLES `statements_with_temp_tables` WRITE;
/*!40000 ALTER TABLE `statements_with_temp_tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `statements_with_temp_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `variable` varchar(128) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `set_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `set_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES ('statement_truncate_len','64','2022-10-03 11:40:13',NULL),('statement_performance_analyzer.limit','100','2022-10-03 11:40:13',NULL),('statement_performance_analyzer.view',NULL,'2022-10-03 11:40:13',NULL),('diagnostics.allow_i_s_tables','OFF','2022-10-03 11:40:13',NULL),('diagnostics.include_raw','OFF','2022-10-03 11:40:13',NULL),('ps_thread_trx_info.max_length','65535','2022-10-03 11:40:13',NULL);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_summary`
--

DROP TABLE IF EXISTS `user_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_summary` (
  `user` tinyint(4) NOT NULL,
  `statements` tinyint(4) NOT NULL,
  `statement_latency` tinyint(4) NOT NULL,
  `statement_avg_latency` tinyint(4) NOT NULL,
  `table_scans` tinyint(4) NOT NULL,
  `file_ios` tinyint(4) NOT NULL,
  `file_io_latency` tinyint(4) NOT NULL,
  `current_connections` tinyint(4) NOT NULL,
  `total_connections` tinyint(4) NOT NULL,
  `unique_hosts` tinyint(4) NOT NULL,
  `current_memory` tinyint(4) NOT NULL,
  `total_memory_allocated` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_summary`
--

LOCK TABLES `user_summary` WRITE;
/*!40000 ALTER TABLE `user_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_summary_by_file_io`
--

DROP TABLE IF EXISTS `user_summary_by_file_io`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_summary_by_file_io` (
  `user` tinyint(4) NOT NULL,
  `ios` tinyint(4) NOT NULL,
  `io_latency` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_summary_by_file_io`
--

LOCK TABLES `user_summary_by_file_io` WRITE;
/*!40000 ALTER TABLE `user_summary_by_file_io` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_summary_by_file_io` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `user_summary_by_file_io_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_summary_by_file_io_type` (
  `user` tinyint(4) NOT NULL,
  `event_name` tinyint(4) NOT NULL,
  `total` tinyint(4) NOT NULL,
  `latency` tinyint(4) NOT NULL,
  `max_latency` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_summary_by_file_io_type`
--

LOCK TABLES `user_summary_by_file_io_type` WRITE;
/*!40000 ALTER TABLE `user_summary_by_file_io_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_summary_by_file_io_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_summary_by_stages`
--

DROP TABLE IF EXISTS `user_summary_by_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_summary_by_stages` (
  `user` tinyint(4) NOT NULL,
  `event_name` tinyint(4) NOT NULL,
  `total` tinyint(4) NOT NULL,
  `total_latency` tinyint(4) NOT NULL,
  `avg_latency` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_summary_by_stages`
--

LOCK TABLES `user_summary_by_stages` WRITE;
/*!40000 ALTER TABLE `user_summary_by_stages` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_summary_by_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `user_summary_by_statement_latency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_summary_by_statement_latency` (
  `user` tinyint(4) NOT NULL,
  `total` tinyint(4) NOT NULL,
  `total_latency` tinyint(4) NOT NULL,
  `max_latency` tinyint(4) NOT NULL,
  `lock_latency` tinyint(4) NOT NULL,
  `rows_sent` tinyint(4) NOT NULL,
  `rows_examined` tinyint(4) NOT NULL,
  `rows_affected` tinyint(4) NOT NULL,
  `full_scans` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_summary_by_statement_latency`
--

LOCK TABLES `user_summary_by_statement_latency` WRITE;
/*!40000 ALTER TABLE `user_summary_by_statement_latency` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_summary_by_statement_latency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `user_summary_by_statement_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_summary_by_statement_type` (
  `user` tinyint(4) NOT NULL,
  `statement` tinyint(4) NOT NULL,
  `total` tinyint(4) NOT NULL,
  `total_latency` tinyint(4) NOT NULL,
  `max_latency` tinyint(4) NOT NULL,
  `lock_latency` tinyint(4) NOT NULL,
  `rows_sent` tinyint(4) NOT NULL,
  `rows_examined` tinyint(4) NOT NULL,
  `rows_affected` tinyint(4) NOT NULL,
  `full_scans` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_summary_by_statement_type`
--

LOCK TABLES `user_summary_by_statement_type` WRITE;
/*!40000 ALTER TABLE `user_summary_by_statement_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_summary_by_statement_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version` (
  `sys_version` tinyint(4) NOT NULL,
  `mysql_version` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `wait_classes_global_by_avg_latency` (
  `event_class` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `min_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `wait_classes_global_by_latency` (
  `event_class` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `min_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `waits_by_host_by_latency` (
  `host` tinyint NOT NULL,
  `event` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `waits_by_user_by_latency` (
  `user` tinyint NOT NULL,
  `event` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `waits_global_by_latency`
--

DROP TABLE IF EXISTS `waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `waits_global_by_latency` (
  `events` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$host_summary`
--

DROP TABLE IF EXISTS `x$host_summary`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$host_summary` (
  `host` tinyint NOT NULL,
  `statements` tinyint NOT NULL,
  `statement_latency` tinyint NOT NULL,
  `statement_avg_latency` tinyint NOT NULL,
  `table_scans` tinyint NOT NULL,
  `file_ios` tinyint NOT NULL,
  `file_io_latency` tinyint NOT NULL,
  `current_connections` tinyint NOT NULL,
  `total_connections` tinyint NOT NULL,
  `unique_users` tinyint NOT NULL,
  `current_memory` tinyint NOT NULL,
  `total_memory_allocated` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$host_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$host_summary_by_file_io` (
  `host` tinyint NOT NULL,
  `ios` tinyint NOT NULL,
  `io_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$host_summary_by_file_io_type` (
  `host` tinyint NOT NULL,
  `event_name` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$host_summary_by_stages`
--

DROP TABLE IF EXISTS `x$host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$host_summary_by_stages` (
  `host` tinyint NOT NULL,
  `event_name` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$host_summary_by_statement_latency` (
  `host` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL,
  `lock_latency` tinyint NOT NULL,
  `rows_sent` tinyint NOT NULL,
  `rows_examined` tinyint NOT NULL,
  `rows_affected` tinyint NOT NULL,
  `full_scans` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$host_summary_by_statement_type` (
  `host` tinyint NOT NULL,
  `statement` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL,
  `lock_latency` tinyint NOT NULL,
  `rows_sent` tinyint NOT NULL,
  `rows_examined` tinyint NOT NULL,
  `rows_affected` tinyint NOT NULL,
  `full_scans` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$innodb_buffer_stats_by_schema` (
  `object_schema` tinyint NOT NULL,
  `allocated` tinyint NOT NULL,
  `data` tinyint NOT NULL,
  `pages` tinyint NOT NULL,
  `pages_hashed` tinyint NOT NULL,
  `pages_old` tinyint NOT NULL,
  `rows_cached` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$innodb_buffer_stats_by_table` (
  `object_schema` tinyint NOT NULL,
  `object_name` tinyint NOT NULL,
  `allocated` tinyint NOT NULL,
  `data` tinyint NOT NULL,
  `pages` tinyint NOT NULL,
  `pages_hashed` tinyint NOT NULL,
  `pages_old` tinyint NOT NULL,
  `rows_cached` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$innodb_lock_waits`
--

DROP TABLE IF EXISTS `x$innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$innodb_lock_waits` (
  `wait_started` tinyint NOT NULL,
  `wait_age` tinyint NOT NULL,
  `wait_age_secs` tinyint NOT NULL,
  `locked_table` tinyint NOT NULL,
  `locked_index` tinyint NOT NULL,
  `locked_type` tinyint NOT NULL,
  `waiting_trx_id` tinyint NOT NULL,
  `waiting_trx_started` tinyint NOT NULL,
  `waiting_trx_age` tinyint NOT NULL,
  `waiting_trx_rows_locked` tinyint NOT NULL,
  `waiting_trx_rows_modified` tinyint NOT NULL,
  `waiting_pid` tinyint NOT NULL,
  `waiting_query` tinyint NOT NULL,
  `waiting_lock_id` tinyint NOT NULL,
  `waiting_lock_mode` tinyint NOT NULL,
  `blocking_trx_id` tinyint NOT NULL,
  `blocking_pid` tinyint NOT NULL,
  `blocking_query` tinyint NOT NULL,
  `blocking_lock_id` tinyint NOT NULL,
  `blocking_lock_mode` tinyint NOT NULL,
  `blocking_trx_started` tinyint NOT NULL,
  `blocking_trx_age` tinyint NOT NULL,
  `blocking_trx_rows_locked` tinyint NOT NULL,
  `blocking_trx_rows_modified` tinyint NOT NULL,
  `sql_kill_blocking_query` tinyint NOT NULL,
  `sql_kill_blocking_connection` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `x$io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$io_by_thread_by_latency` (
  `user` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `min_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL,
  `thread_id` tinyint NOT NULL,
  `processlist_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$io_global_by_file_by_bytes` (
  `file` tinyint NOT NULL,
  `count_read` tinyint NOT NULL,
  `total_read` tinyint NOT NULL,
  `avg_read` tinyint NOT NULL,
  `count_write` tinyint NOT NULL,
  `total_written` tinyint NOT NULL,
  `avg_write` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `write_pct` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$io_global_by_file_by_latency` (
  `file` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `count_read` tinyint NOT NULL,
  `read_latency` tinyint NOT NULL,
  `count_write` tinyint NOT NULL,
  `write_latency` tinyint NOT NULL,
  `count_misc` tinyint NOT NULL,
  `misc_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$io_global_by_wait_by_bytes` (
  `event_name` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `min_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL,
  `count_read` tinyint NOT NULL,
  `total_read` tinyint NOT NULL,
  `avg_read` tinyint NOT NULL,
  `count_write` tinyint NOT NULL,
  `total_written` tinyint NOT NULL,
  `avg_written` tinyint NOT NULL,
  `total_requested` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$io_global_by_wait_by_latency` (
  `event_name` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL,
  `read_latency` tinyint NOT NULL,
  `write_latency` tinyint NOT NULL,
  `misc_latency` tinyint NOT NULL,
  `count_read` tinyint NOT NULL,
  `total_read` tinyint NOT NULL,
  `avg_read` tinyint NOT NULL,
  `count_write` tinyint NOT NULL,
  `total_written` tinyint NOT NULL,
  `avg_written` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$latest_file_io`
--

DROP TABLE IF EXISTS `x$latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$latest_file_io` (
  `thread` tinyint NOT NULL,
  `file` tinyint NOT NULL,
  `latency` tinyint NOT NULL,
  `operation` tinyint NOT NULL,
  `requested` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$memory_by_host_by_current_bytes` (
  `host` tinyint NOT NULL,
  `current_count_used` tinyint NOT NULL,
  `current_allocated` tinyint NOT NULL,
  `current_avg_alloc` tinyint NOT NULL,
  `current_max_alloc` tinyint NOT NULL,
  `total_allocated` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$memory_by_thread_by_current_bytes` (
  `thread_id` tinyint NOT NULL,
  `user` tinyint NOT NULL,
  `current_count_used` tinyint NOT NULL,
  `current_allocated` tinyint NOT NULL,
  `current_avg_alloc` tinyint NOT NULL,
  `current_max_alloc` tinyint NOT NULL,
  `total_allocated` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$memory_by_user_by_current_bytes` (
  `user` tinyint NOT NULL,
  `current_count_used` tinyint NOT NULL,
  `current_allocated` tinyint NOT NULL,
  `current_avg_alloc` tinyint NOT NULL,
  `current_max_alloc` tinyint NOT NULL,
  `total_allocated` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$memory_global_by_current_bytes` (
  `event_name` tinyint NOT NULL,
  `current_count` tinyint NOT NULL,
  `current_alloc` tinyint NOT NULL,
  `current_avg_alloc` tinyint NOT NULL,
  `high_count` tinyint NOT NULL,
  `high_alloc` tinyint NOT NULL,
  `high_avg_alloc` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$memory_global_total`
--

DROP TABLE IF EXISTS `x$memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$memory_global_total` (
  `total_allocated` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$processlist`
--

DROP TABLE IF EXISTS `x$processlist`;
/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$processlist` (
  `thd_id` tinyint NOT NULL,
  `conn_id` tinyint NOT NULL,
  `user` tinyint NOT NULL,
  `db` tinyint NOT NULL,
  `command` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `time` tinyint NOT NULL,
  `current_statement` tinyint NOT NULL,
  `statement_latency` tinyint NOT NULL,
  `progress` tinyint NOT NULL,
  `lock_latency` tinyint NOT NULL,
  `rows_examined` tinyint NOT NULL,
  `rows_sent` tinyint NOT NULL,
  `rows_affected` tinyint NOT NULL,
  `tmp_tables` tinyint NOT NULL,
  `tmp_disk_tables` tinyint NOT NULL,
  `full_scan` tinyint NOT NULL,
  `last_statement` tinyint NOT NULL,
  `last_statement_latency` tinyint NOT NULL,
  `current_memory` tinyint NOT NULL,
  `last_wait` tinyint NOT NULL,
  `last_wait_latency` tinyint NOT NULL,
  `source` tinyint NOT NULL,
  `trx_latency` tinyint NOT NULL,
  `trx_state` tinyint NOT NULL,
  `trx_autocommit` tinyint NOT NULL,
  `pid` tinyint NOT NULL,
  `program_name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$ps_digest_95th_percentile_by_avg_us` (
  `avg_us` tinyint NOT NULL,
  `percentile` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$ps_digest_avg_latency_distribution`
--

DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$ps_digest_avg_latency_distribution` (
  `cnt` tinyint NOT NULL,
  `avg_us` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$ps_schema_table_statistics_io`
--

DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`;
/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$ps_schema_table_statistics_io` (
  `table_schema` tinyint NOT NULL,
  `table_name` tinyint NOT NULL,
  `count_read` tinyint NOT NULL,
  `sum_number_of_bytes_read` tinyint NOT NULL,
  `sum_timer_read` tinyint NOT NULL,
  `count_write` tinyint NOT NULL,
  `sum_number_of_bytes_write` tinyint NOT NULL,
  `sum_timer_write` tinyint NOT NULL,
  `count_misc` tinyint NOT NULL,
  `sum_timer_misc` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$schema_flattened_keys`
--

DROP TABLE IF EXISTS `x$schema_flattened_keys`;
/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$schema_flattened_keys` (
  `table_schema` tinyint NOT NULL,
  `table_name` tinyint NOT NULL,
  `index_name` tinyint NOT NULL,
  `non_unique` tinyint NOT NULL,
  `subpart_exists` tinyint NOT NULL,
  `index_columns` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$schema_index_statistics`
--

DROP TABLE IF EXISTS `x$schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$schema_index_statistics` (
  `table_schema` tinyint NOT NULL,
  `table_name` tinyint NOT NULL,
  `index_name` tinyint NOT NULL,
  `rows_selected` tinyint NOT NULL,
  `select_latency` tinyint NOT NULL,
  `rows_inserted` tinyint NOT NULL,
  `insert_latency` tinyint NOT NULL,
  `rows_updated` tinyint NOT NULL,
  `update_latency` tinyint NOT NULL,
  `rows_deleted` tinyint NOT NULL,
  `delete_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$schema_table_lock_waits`
--

DROP TABLE IF EXISTS `x$schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$schema_table_lock_waits` (
  `object_schema` tinyint NOT NULL,
  `object_name` tinyint NOT NULL,
  `waiting_thread_id` tinyint NOT NULL,
  `waiting_pid` tinyint NOT NULL,
  `waiting_account` tinyint NOT NULL,
  `waiting_lock_type` tinyint NOT NULL,
  `waiting_lock_duration` tinyint NOT NULL,
  `waiting_query` tinyint NOT NULL,
  `waiting_query_secs` tinyint NOT NULL,
  `waiting_query_rows_affected` tinyint NOT NULL,
  `waiting_query_rows_examined` tinyint NOT NULL,
  `blocking_thread_id` tinyint NOT NULL,
  `blocking_pid` tinyint NOT NULL,
  `blocking_account` tinyint NOT NULL,
  `blocking_lock_type` tinyint NOT NULL,
  `blocking_lock_duration` tinyint NOT NULL,
  `sql_kill_blocking_query` tinyint NOT NULL,
  `sql_kill_blocking_connection` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$schema_table_statistics`
--

DROP TABLE IF EXISTS `x$schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$schema_table_statistics` (
  `table_schema` tinyint NOT NULL,
  `table_name` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `rows_fetched` tinyint NOT NULL,
  `fetch_latency` tinyint NOT NULL,
  `rows_inserted` tinyint NOT NULL,
  `insert_latency` tinyint NOT NULL,
  `rows_updated` tinyint NOT NULL,
  `update_latency` tinyint NOT NULL,
  `rows_deleted` tinyint NOT NULL,
  `delete_latency` tinyint NOT NULL,
  `io_read_requests` tinyint NOT NULL,
  `io_read` tinyint NOT NULL,
  `io_read_latency` tinyint NOT NULL,
  `io_write_requests` tinyint NOT NULL,
  `io_write` tinyint NOT NULL,
  `io_write_latency` tinyint NOT NULL,
  `io_misc_requests` tinyint NOT NULL,
  `io_misc_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$schema_table_statistics_with_buffer` (
  `table_schema` tinyint NOT NULL,
  `table_name` tinyint NOT NULL,
  `rows_fetched` tinyint NOT NULL,
  `fetch_latency` tinyint NOT NULL,
  `rows_inserted` tinyint NOT NULL,
  `insert_latency` tinyint NOT NULL,
  `rows_updated` tinyint NOT NULL,
  `update_latency` tinyint NOT NULL,
  `rows_deleted` tinyint NOT NULL,
  `delete_latency` tinyint NOT NULL,
  `io_read_requests` tinyint NOT NULL,
  `io_read` tinyint NOT NULL,
  `io_read_latency` tinyint NOT NULL,
  `io_write_requests` tinyint NOT NULL,
  `io_write` tinyint NOT NULL,
  `io_write_latency` tinyint NOT NULL,
  `io_misc_requests` tinyint NOT NULL,
  `io_misc_latency` tinyint NOT NULL,
  `innodb_buffer_allocated` tinyint NOT NULL,
  `innodb_buffer_data` tinyint NOT NULL,
  `innodb_buffer_free` tinyint NOT NULL,
  `innodb_buffer_pages` tinyint NOT NULL,
  `innodb_buffer_pages_hashed` tinyint NOT NULL,
  `innodb_buffer_pages_old` tinyint NOT NULL,
  `innodb_buffer_rows_cached` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$schema_tables_with_full_table_scans` (
  `object_schema` tinyint NOT NULL,
  `object_name` tinyint NOT NULL,
  `rows_full_scanned` tinyint NOT NULL,
  `latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$session`
--

DROP TABLE IF EXISTS `x$session`;
/*!50001 DROP VIEW IF EXISTS `x$session`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$session` (
  `thd_id` tinyint NOT NULL,
  `conn_id` tinyint NOT NULL,
  `user` tinyint NOT NULL,
  `db` tinyint NOT NULL,
  `command` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `time` tinyint NOT NULL,
  `current_statement` tinyint NOT NULL,
  `statement_latency` tinyint NOT NULL,
  `progress` tinyint NOT NULL,
  `lock_latency` tinyint NOT NULL,
  `rows_examined` tinyint NOT NULL,
  `rows_sent` tinyint NOT NULL,
  `rows_affected` tinyint NOT NULL,
  `tmp_tables` tinyint NOT NULL,
  `tmp_disk_tables` tinyint NOT NULL,
  `full_scan` tinyint NOT NULL,
  `last_statement` tinyint NOT NULL,
  `last_statement_latency` tinyint NOT NULL,
  `current_memory` tinyint NOT NULL,
  `last_wait` tinyint NOT NULL,
  `last_wait_latency` tinyint NOT NULL,
  `source` tinyint NOT NULL,
  `trx_latency` tinyint NOT NULL,
  `trx_state` tinyint NOT NULL,
  `trx_autocommit` tinyint NOT NULL,
  `pid` tinyint NOT NULL,
  `program_name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$statement_analysis`
--

DROP TABLE IF EXISTS `x$statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$statement_analysis` (
  `query` tinyint NOT NULL,
  `db` tinyint NOT NULL,
  `full_scan` tinyint NOT NULL,
  `exec_count` tinyint NOT NULL,
  `err_count` tinyint NOT NULL,
  `warn_count` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL,
  `lock_latency` tinyint NOT NULL,
  `rows_sent` tinyint NOT NULL,
  `rows_sent_avg` tinyint NOT NULL,
  `rows_examined` tinyint NOT NULL,
  `rows_examined_avg` tinyint NOT NULL,
  `rows_affected` tinyint NOT NULL,
  `rows_affected_avg` tinyint NOT NULL,
  `tmp_tables` tinyint NOT NULL,
  `tmp_disk_tables` tinyint NOT NULL,
  `rows_sorted` tinyint NOT NULL,
  `sort_merge_passes` tinyint NOT NULL,
  `digest` tinyint NOT NULL,
  `first_seen` tinyint NOT NULL,
  `last_seen` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$statements_with_errors_or_warnings` (
  `query` tinyint NOT NULL,
  `db` tinyint NOT NULL,
  `exec_count` tinyint NOT NULL,
  `errors` tinyint NOT NULL,
  `error_pct` tinyint NOT NULL,
  `warnings` tinyint NOT NULL,
  `warning_pct` tinyint NOT NULL,
  `first_seen` tinyint NOT NULL,
  `last_seen` tinyint NOT NULL,
  `digest` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$statements_with_full_table_scans` (
  `query` tinyint NOT NULL,
  `db` tinyint NOT NULL,
  `exec_count` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `no_index_used_count` tinyint NOT NULL,
  `no_good_index_used_count` tinyint NOT NULL,
  `no_index_used_pct` tinyint NOT NULL,
  `rows_sent` tinyint NOT NULL,
  `rows_examined` tinyint NOT NULL,
  `rows_sent_avg` tinyint NOT NULL,
  `rows_examined_avg` tinyint NOT NULL,
  `first_seen` tinyint NOT NULL,
  `last_seen` tinyint NOT NULL,
  `digest` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$statements_with_runtimes_in_95th_percentile` (
  `query` tinyint NOT NULL,
  `db` tinyint NOT NULL,
  `full_scan` tinyint NOT NULL,
  `exec_count` tinyint NOT NULL,
  `err_count` tinyint NOT NULL,
  `warn_count` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL,
  `rows_sent` tinyint NOT NULL,
  `rows_sent_avg` tinyint NOT NULL,
  `rows_examined` tinyint NOT NULL,
  `rows_examined_avg` tinyint NOT NULL,
  `first_seen` tinyint NOT NULL,
  `last_seen` tinyint NOT NULL,
  `digest` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$statements_with_sorting`
--

DROP TABLE IF EXISTS `x$statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$statements_with_sorting` (
  `query` tinyint NOT NULL,
  `db` tinyint NOT NULL,
  `exec_count` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `sort_merge_passes` tinyint NOT NULL,
  `avg_sort_merges` tinyint NOT NULL,
  `sorts_using_scans` tinyint NOT NULL,
  `sort_using_range` tinyint NOT NULL,
  `rows_sorted` tinyint NOT NULL,
  `avg_rows_sorted` tinyint NOT NULL,
  `first_seen` tinyint NOT NULL,
  `last_seen` tinyint NOT NULL,
  `digest` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$statements_with_temp_tables`
--

DROP TABLE IF EXISTS `x$statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$statements_with_temp_tables` (
  `query` tinyint NOT NULL,
  `db` tinyint NOT NULL,
  `exec_count` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `memory_tmp_tables` tinyint NOT NULL,
  `disk_tmp_tables` tinyint NOT NULL,
  `avg_tmp_tables_per_query` tinyint NOT NULL,
  `tmp_tables_to_disk_pct` tinyint NOT NULL,
  `first_seen` tinyint NOT NULL,
  `last_seen` tinyint NOT NULL,
  `digest` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$user_summary`
--

DROP TABLE IF EXISTS `x$user_summary`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$user_summary` (
  `user` tinyint NOT NULL,
  `statements` tinyint NOT NULL,
  `statement_latency` tinyint NOT NULL,
  `statement_avg_latency` tinyint NOT NULL,
  `table_scans` tinyint NOT NULL,
  `file_ios` tinyint NOT NULL,
  `file_io_latency` tinyint NOT NULL,
  `current_connections` tinyint NOT NULL,
  `total_connections` tinyint NOT NULL,
  `unique_hosts` tinyint NOT NULL,
  `current_memory` tinyint NOT NULL,
  `total_memory_allocated` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$user_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$user_summary_by_file_io` (
  `user` tinyint NOT NULL,
  `ios` tinyint NOT NULL,
  `io_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$user_summary_by_file_io_type` (
  `user` tinyint NOT NULL,
  `event_name` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$user_summary_by_stages`
--

DROP TABLE IF EXISTS `x$user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$user_summary_by_stages` (
  `user` tinyint NOT NULL,
  `event_name` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$user_summary_by_statement_latency` (
  `user` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL,
  `lock_latency` tinyint NOT NULL,
  `rows_sent` tinyint NOT NULL,
  `rows_examined` tinyint NOT NULL,
  `rows_affected` tinyint NOT NULL,
  `full_scans` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$user_summary_by_statement_type` (
  `user` tinyint NOT NULL,
  `statement` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL,
  `lock_latency` tinyint NOT NULL,
  `rows_sent` tinyint NOT NULL,
  `rows_examined` tinyint NOT NULL,
  `rows_affected` tinyint NOT NULL,
  `full_scans` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$wait_classes_global_by_avg_latency` (
  `event_class` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `min_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$wait_classes_global_by_latency` (
  `event_class` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `min_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$waits_by_host_by_latency` (
  `host` tinyint NOT NULL,
  `event` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$waits_by_user_by_latency` (
  `user` tinyint NOT NULL,
  `event` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$waits_global_by_latency`
--

DROP TABLE IF EXISTS `x$waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `x$waits_global_by_latency` (
  `events` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `as1`
--

USE `as1`;

--
-- Current Database: `csy2028`
--

USE `csy2028`;

--
-- Current Database: `eightytwenty`
--

USE `eightytwenty`;

--
-- Current Database: `ijdb`
--

USE `ijdb`;

--
-- Current Database: `job`
--

USE `job`;

--
-- Current Database: `mysql`
--

USE `mysql`;

--
-- Current Database: `sys`
--

USE `sys`;

--
-- Final view structure for view `wait_classes_global_by_avg_latency`
--

/*!50001 DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`*/;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_avg_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(cast(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) as unsigned)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(ifnull(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0),0)) AS `avg_latency`,`sys`.`format_time`(cast(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) as unsigned)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 and `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle' group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by ifnull(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_latency`
--

/*!50001 DROP TABLE IF EXISTS `wait_classes_global_by_latency`*/;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(ifnull(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0),0)) AS `avg_latency`,`sys`.`format_time`(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 and `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle' group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_host_by_latency`
--

/*!50001 DROP TABLE IF EXISTS `waits_by_host_by_latency`*/;
/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_host_by_latency` AS select if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where `performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle' and `performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0 order by if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_user_by_latency`
--

/*!50001 DROP TABLE IF EXISTS `waits_by_user_by_latency`*/;
/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_user_by_latency` AS select if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where `performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle' and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0 order by if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_global_by_latency`
--

/*!50001 DROP TABLE IF EXISTS `waits_global_by_latency`*/;
/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_global_by_latency` AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `events`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle' and `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary`
--

/*!50001 DROP TABLE IF EXISTS `x$host_summary`*/;
/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary` AS select if(`performance_schema`.`accounts`.`HOST` is null,'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,sum(`stmt`.`total_latency`) / sum(`stmt`.`total`) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `sys`.`x$host_summary_by_statement_latency` `stmt` on(`performance_schema`.`accounts`.`HOST` = `stmt`.`host`)) join `sys`.`x$host_summary_by_file_io` `io` on(`performance_schema`.`accounts`.`HOST` = `io`.`host`)) join `sys`.`x$memory_by_host_by_current_bytes` `mem` on(`performance_schema`.`accounts`.`HOST` = `mem`.`host`)) group by if(`performance_schema`.`accounts`.`HOST` is null,'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io`
--

/*!50001 DROP TABLE IF EXISTS `x$host_summary_by_file_io`*/;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io` AS select if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where `performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' group by if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io_type`
--

/*!50001 DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`*/;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io_type` AS select if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where `performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%' and `performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0 order by if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_stages`
--

/*!50001 DROP TABLE IF EXISTS `x$host_summary_by_stages`*/;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_stages` AS select if(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where `performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_latency`
--

/*!50001 DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`*/;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_latency` AS select if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_type`
--

/*!50001 DROP TABLE IF EXISTS `x$host_summary_by_statement_type`*/;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_type` AS select if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-1) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED` AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_schema`
--

/*!50001 DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_schema` AS select if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if(`ibp`.`IS_HASHED`,1,NULL)) AS `pages_hashed`,count(if(`ibp`.`IS_OLD`,1,NULL)) AS `pages_old`,round(ifnull(sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0),0),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where `ibp`.`TABLE_NAME` is not null group by if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) order by sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_table`
--

/*!50001 DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`*/;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_table` AS select if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-1),'`','') AS `object_name`,sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if(`ibp`.`IS_HASHED`,1,NULL)) AS `pages_hashed`,count(if(`ibp`.`IS_OLD`,1,NULL)) AS `pages_old`,round(ifnull(sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0),0),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where `ibp`.`TABLE_NAME` is not null group by if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')),replace(substring_index(`ibp`.`TABLE_NAME`,'.',-1),'`','') order by sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_lock_waits`
--

/*!50001 DROP TABLE IF EXISTS `x$innodb_lock_waits`*/;
/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_lock_waits` AS select `r`.`trx_wait_started` AS `wait_started`,timediff(current_timestamp(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,current_timestamp()) AS `wait_age_secs`,`rl`.`lock_table` AS `locked_table`,`rl`.`lock_index` AS `locked_index`,`rl`.`lock_type` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(current_timestamp(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`r`.`trx_query` AS `waiting_query`,`rl`.`lock_id` AS `waiting_lock_id`,`rl`.`lock_mode` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`b`.`trx_query` AS `blocking_query`,`bl`.`lock_id` AS `blocking_lock_id`,`bl`.`lock_mode` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(current_timestamp(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`information_schema`.`innodb_lock_waits` `w` join `information_schema`.`innodb_trx` `b` on(`b`.`trx_id` = `w`.`blocking_trx_id`)) join `information_schema`.`innodb_trx` `r` on(`r`.`trx_id` = `w`.`requesting_trx_id`)) join `information_schema`.`innodb_locks` `bl` on(`bl`.`lock_id` = `w`.`blocking_lock_id`)) join `information_schema`.`innodb_locks` `rl` on(`rl`.`lock_id` = `w`.`requested_lock_id`)) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_by_thread_by_latency`
--

/*!50001 DROP TABLE IF EXISTS `x$io_by_thread_by_latency`*/;
/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_by_thread_by_latency` AS select if(`performance_schema`.`threads`.`PROCESSLIST_ID` is null,substring_index(`performance_schema`.`threads`.`NAME`,'/',-1),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`)) where `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' and `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0 group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,if(`performance_schema`.`threads`.`PROCESSLIST_ID` is null,substring_index(`performance_schema`.`threads`.`NAME`,'/',-1),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_bytes`
--

/*!50001 DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`*/;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_bytes` AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0),0) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0),0.00) AS `avg_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total`,ifnull(round(100 - `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`,0) * 100,2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_latency`
--

/*!50001 DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`*/;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_latency` AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC` AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_bytes`
--

/*!50001 DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`*/;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_bytes` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-2) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT` AS `min_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0),0) AS `avg_written`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where `performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' and `performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0 order by `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_latency`
--

/*!50001 DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`*/;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_latency` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-2) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC` AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0),0) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where `performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' and `performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0 order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$latest_file_io`
--

/*!50001 DROP TABLE IF EXISTS `x$latest_file_io`*/;
/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$latest_file_io` AS select if(`information_schema`.`processlist`.`ID` is null,concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-1),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`)) AS `thread`,`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` AS `file`,`performance_schema`.`events_waits_history_long`.`TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES` AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on(`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`)) left join `information_schema`.`processlist` on(`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`)) where `performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null and `performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%' order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_host_by_current_bytes`
--

/*!50001 DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`*/;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_host_by_current_bytes` AS select if(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_thread_by_current_bytes`
--

/*!50001 DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_thread_by_current_bytes` AS select `t`.`THREAD_ID` AS `thread_id`,if(`t`.`NAME` = 'thread/sql/one_connection',concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0),0) AS `current_avg_alloc`,max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on(`mt`.`THREAD_ID` = `t`.`THREAD_ID`)) group by `t`.`THREAD_ID`,if(`t`.`NAME` = 'thread/sql/one_connection',concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_user_by_current_bytes`
--

/*!50001 DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`*/;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_user_by_current_bytes` AS select if(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_by_current_bytes`
--

/*!50001 DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`*/;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_by_current_bytes` AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` AS `current_alloc`,ifnull(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0),0) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` AS `high_alloc`,ifnull(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0),0) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0 order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_total`
--

/*!50001 DROP TABLE IF EXISTS `x$memory_global_total`*/;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_total` AS select sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$processlist`
--

/*!50001 DROP TABLE IF EXISTS `x$processlist`*/;
/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$processlist` AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if(`pps`.`NAME` = 'thread/sql/one_connection',concat(`pps`.`PROCESSLIST_USER`,'@',`pps`.`PROCESSLIST_HOST`),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`pps`.`PROCESSLIST_INFO` AS `current_statement`,if(`esc`.`END_EVENT_ID` is null,`esc`.`TIMER_WAIT`,NULL) AS `statement_latency`,if(`esc`.`END_EVENT_ID` is null,round(100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`),2),NULL) AS `progress`,`esc`.`LOCK_TIME` AS `lock_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(`esc`.`NO_GOOD_INDEX_USED` > 0 or `esc`.`NO_INDEX_USED` > 0,'YES','NO') AS `full_scan`,if(`esc`.`END_EVENT_ID` is not null,`esc`.`SQL_TEXT`,NULL) AS `last_statement`,if(`esc`.`END_EVENT_ID` is not null,`esc`.`TIMER_WAIT`,NULL) AS `last_statement_latency`,`mem`.`current_allocated` AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(`ewc`.`END_EVENT_ID` is null and `ewc`.`EVENT_NAME` is not null,'Still Waiting',`ewc`.`TIMER_WAIT`) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`etc`.`TIMER_WAIT` AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on(`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`)) left join `performance_schema`.`events_stages_current` `estc` on(`pps`.`THREAD_ID` = `estc`.`THREAD_ID`)) left join `performance_schema`.`events_statements_current` `esc` on(`pps`.`THREAD_ID` = `esc`.`THREAD_ID`)) left join `performance_schema`.`events_transactions_current` `etc` on(`pps`.`THREAD_ID` = `etc`.`THREAD_ID`)) left join `sys`.`x$memory_by_thread_by_current_bytes` `mem` on(`pps`.`THREAD_ID` = `mem`.`thread_id`)) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID` and `conattr_pid`.`ATTR_NAME` = '_pid')) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID` and `conattr_progname`.`ATTR_NAME` = 'program_name')) order by `pps`.`PROCESSLIST_TIME` desc,if(`ewc`.`END_EVENT_ID` is null and `ewc`.`EVENT_NAME` is not null,'Still Waiting',`ewc`.`TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

/*!50001 DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_95th_percentile_by_avg_us` AS select `s2`.`avg_us` AS `avg_us`,ifnull(sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0),0) AS `percentile` from (`sys`.`x$ps_digest_avg_latency_distribution` `s1` join `sys`.`x$ps_digest_avg_latency_distribution` `s2` on(`s1`.`avg_us` <= `s2`.`avg_us`)) group by `s2`.`avg_us` having ifnull(sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0),0) > 0.95 order by ifnull(sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0),0) limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_avg_latency_distribution`
--

/*!50001 DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_avg_latency_distribution` AS select count(0) AS `cnt`,round(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000,0) AS `avg_us` from `performance_schema`.`events_statements_summary_by_digest` group by round(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000,0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_schema_table_statistics_io`
--

/*!50001 DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`*/;
/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_schema_table_statistics_io` AS select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`),`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_flattened_keys`
--

/*!50001 DROP TABLE IF EXISTS `x$schema_flattened_keys`*/;
/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_flattened_keys` AS select `information_schema`.`STATISTICS`.`TABLE_SCHEMA` AS `table_schema`,`information_schema`.`STATISTICS`.`TABLE_NAME` AS `table_name`,`information_schema`.`STATISTICS`.`INDEX_NAME` AS `index_name`,max(`information_schema`.`STATISTICS`.`NON_UNIQUE`) AS `non_unique`,max(if(`information_schema`.`STATISTICS`.`SUB_PART` is null,0,1)) AS `subpart_exists`,group_concat(`information_schema`.`STATISTICS`.`COLUMN_NAME` order by `information_schema`.`STATISTICS`.`SEQ_IN_INDEX` ASC separator ',') AS `index_columns` from `INFORMATION_SCHEMA`.`STATISTICS` where `information_schema`.`STATISTICS`.`INDEX_TYPE` = 'BTREE' and `information_schema`.`STATISTICS`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','PERFORMANCE_SCHEMA') group by `information_schema`.`STATISTICS`.`TABLE_SCHEMA`,`information_schema`.`STATISTICS`.`TABLE_NAME`,`information_schema`.`STATISTICS`.`INDEX_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_index_statistics`
--

/*!50001 DROP TABLE IF EXISTS `x$schema_index_statistics`*/;
/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_index_statistics` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH` AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE` AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_lock_waits`
--

/*!50001 DROP TABLE IF EXISTS `x$schema_table_lock_waits`*/;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_lock_waits` AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`pt`.`PROCESSLIST_INFO` AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE` and `g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA` and `g`.`OBJECT_NAME` = `p`.`OBJECT_NAME` and `g`.`LOCK_STATUS` = 'GRANTED' and `p`.`LOCK_STATUS` = 'PENDING')) join `performance_schema`.`threads` `gt` on(`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`)) join `performance_schema`.`threads` `pt` on(`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`)) left join `performance_schema`.`events_statements_current` `gs` on(`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`)) left join `performance_schema`.`events_statements_current` `ps` on(`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`)) where `g`.`OBJECT_TYPE` = 'TABLE' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics`
--

/*!50001 DROP TABLE IF EXISTS `x$schema_table_statistics`*/;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`SUM_TIMER_WAIT` AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema` and `pst`.`OBJECT_NAME` = `fsbi`.`table_name`)) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics_with_buffer`
--

/*!50001 DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`*/;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics_with_buffer` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency`,`ibp`.`allocated` AS `innodb_buffer_allocated`,`ibp`.`data` AS `innodb_buffer_data`,`ibp`.`allocated` - `ibp`.`data` AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema` and `pst`.`OBJECT_NAME` = `fsbi`.`table_name`)) left join `sys`.`x$innodb_buffer_stats_by_table` `ibp` on(`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema` and `pst`.`OBJECT_NAME` = `ibp`.`object_name`)) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_tables_with_full_table_scans`
--

/*!50001 DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`*/;
/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_tables_with_full_table_scans` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null and `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0 order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$session`
--

/*!50001 DROP TABLE IF EXISTS `x$session`*/;
/*!50001 DROP VIEW IF EXISTS `x$session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$session` AS select `x$processlist`.`thd_id` AS `thd_id`,`x$processlist`.`conn_id` AS `conn_id`,`x$processlist`.`user` AS `user`,`x$processlist`.`db` AS `db`,`x$processlist`.`command` AS `command`,`x$processlist`.`state` AS `state`,`x$processlist`.`time` AS `time`,`x$processlist`.`current_statement` AS `current_statement`,`x$processlist`.`statement_latency` AS `statement_latency`,`x$processlist`.`progress` AS `progress`,`x$processlist`.`lock_latency` AS `lock_latency`,`x$processlist`.`rows_examined` AS `rows_examined`,`x$processlist`.`rows_sent` AS `rows_sent`,`x$processlist`.`rows_affected` AS `rows_affected`,`x$processlist`.`tmp_tables` AS `tmp_tables`,`x$processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`x$processlist`.`full_scan` AS `full_scan`,`x$processlist`.`last_statement` AS `last_statement`,`x$processlist`.`last_statement_latency` AS `last_statement_latency`,`x$processlist`.`current_memory` AS `current_memory`,`x$processlist`.`last_wait` AS `last_wait`,`x$processlist`.`last_wait_latency` AS `last_wait_latency`,`x$processlist`.`source` AS `source`,`x$processlist`.`trx_latency` AS `trx_latency`,`x$processlist`.`trx_state` AS `trx_state`,`x$processlist`.`trx_autocommit` AS `trx_autocommit`,`x$processlist`.`pid` AS `pid`,`x$processlist`.`program_name` AS `program_name` from `sys`.`x$processlist` where `x$processlist`.`conn_id` is not null and `x$processlist`.`command` <> 'Daemon' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statement_analysis`
--

/*!50001 DROP TABLE IF EXISTS `x$statement_analysis`*/;
/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statement_analysis` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0 or `performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0,'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_errors_or_warnings`
--

/*!50001 DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`*/;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_errors_or_warnings` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100 AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100 AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0 or `performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0 order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_full_table_scans`
--

/*!50001 DROP TABLE IF EXISTS `x$statements_with_full_table_scans`*/;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_full_table_scans` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100,0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0) AS `rows_sent_avg`,round(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0 or `performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) and `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`  not like 'SHOW%' order by round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100,0) desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_runtimes_in_95th_percentile` AS select `stmts`.`DIGEST_TEXT` AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0 or `stmts`.`SUM_NO_INDEX_USED` > 0,'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`stmts`.`SUM_TIMER_WAIT` AS `total_latency`,`stmts`.`MAX_TIMER_WAIT` AS `max_latency`,`stmts`.`AVG_TIMER_WAIT` AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull(`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull(`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `sys`.`x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on(round(`stmts`.`AVG_TIMER_WAIT` / 1000000,0) >= `top_percentile`.`avg_us`)) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_sorting`
--

/*!50001 DROP TABLE IF EXISTS `x$statements_with_sorting`*/;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_sorting` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where `performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0 order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_temp_tables`
--

/*!50001 DROP TABLE IF EXISTS `x$statements_with_temp_tables`*/;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_temp_tables` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_tmp_tables_per_query`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0),0) * 100,0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0 order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary`
--

/*!50001 DROP TABLE IF EXISTS `x$user_summary`*/;
/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary` AS select if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,ifnull(sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0),0) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `sys`.`x$user_summary_by_statement_latency` `stmt` on(if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`)) left join `sys`.`x$user_summary_by_file_io` `io` on(if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`)) left join `sys`.`x$memory_by_user_by_current_bytes` `mem` on(if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`)) group by if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io`
--

/*!50001 DROP TABLE IF EXISTS `x$user_summary_by_file_io`*/;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io` AS select if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where `performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' group by if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io_type`
--

/*!50001 DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`*/;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io_type` AS select if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where `performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%' and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0 order by if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_stages`
--

/*!50001 DROP TABLE IF EXISTS `x$user_summary_by_stages`*/;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_stages` AS select if(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where `performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_latency`
--

/*!50001 DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`*/;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_latency` AS select if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_type`
--

/*!50001 DROP TABLE IF EXISTS `x$user_summary_by_statement_type`*/;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_type` AS select if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-1) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED` AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_avg_latency`
--

/*!50001 DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_avg_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 and `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle' group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by ifnull(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_latency`
--

/*!50001 DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`*/;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 and `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle' group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_host_by_latency`
--

/*!50001 DROP TABLE IF EXISTS `x$waits_by_host_by_latency`*/;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_host_by_latency` AS select if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where `performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle' and `performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0 order by if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_user_by_latency`
--

/*!50001 DROP TABLE IF EXISTS `x$waits_by_user_by_latency`*/;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_user_by_latency` AS select if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where `performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle' and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0 order by if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_global_by_latency`
--

/*!50001 DROP TABLE IF EXISTS `x$waits_global_by_latency`*/;
/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_global_by_latency` AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `events`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle' and `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-04 14:32:37
