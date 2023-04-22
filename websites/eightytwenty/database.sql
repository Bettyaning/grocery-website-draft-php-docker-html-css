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
  `auctionID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `endDate` date NOT NULL,
  `currentBid` double DEFAULT NULL,
  `bid_user` int(11) DEFAULT NULL,
  `bid_placed` datetime DEFAULT NULL,
  `user` int(11) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`auctionID`),
  KEY `categoryID_idx` (`categoryID`),
  CONSTRAINT `categoryID` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`categoryID`)
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
INSERT INTO `global_priv` VALUES ('localhost','mariadb.sys','{\"access\":0,\"plugin\":\"mysql_native_password\",\"authentication_string\":\"\",\"account_locked\":true,\"password_last_changed\":0}'),('localhost','root','{\"access\":18446744073709551615,\"plugin\":\"mysql_native_password\",\"authentication_string\":\"*6A73561D1E49479B0E89BC6072145D20FA359357\",\"password_last_changed\":1664797216}'),('%','root','{\"access\":549755813887,\"version_id\":100903,\"plugin\":\"mysql_native_password\",\"authentication_string\":\"*6A73561D1E49479B0E89BC6072145D20FA359357\",\"password_last_changed\":1664797216}'),('%','v.je','{\"access\":549755813887,\"version_id\":100903,\"plugin\":\"mysql_native_password\",\"authentication_string\":\"*6A73561D1E49479B0E89BC6072145D20FA359357\",\"password_last_changed\":1665044242}'),('%','s.je','{\"access\":549755813887,\"version_id\":100903,\"plugin\":\"mysql_native_password\",\"authentication_string\":\"*2721779FE2256C5EDD7F7989590D8E598CB5B068\",\"password_last_changed\":1665044243}'),('%','student','{\"access\":549755813887,\"version_id\":100903,\"plugin\":\"mysql_native_password\",\"authentication_string\":\"*1308E0FCD43112F8D948AB093F54892CB7B220AA\",\"password_last_changed\":1665044243}');
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
INSERT INTO `help_topic` VALUES (351,'SHOW BINLOG EVENTS',26,'Syntax\n------\n\nSHOW BINLOG EVENTS\n [IN \'log_name\'] [FROM pos] [LIMIT [offset,] row_count]\n\nDescription\n-----------\n\nShows the events in the binary log. If you do not specify \'log_name\', the\nfirst binary log is displayed.\n\nRequires the BINLOG MONITOR privilege (>= MariaDB 10.5.2) or the REPLICATION\nSLAVE privilege (<= MariaDB 10.5.1).\n\nExample\n-------\n\nSHOW BINLOG EVENTS IN \'mysql_sandbox10019-bin.000002\';\n+-------------------------------+-----+-------------------+-----------+--------\n----+------------------------------------------------+\n| Log_name                      | Pos | Event_type        | Server_id |\nEnd_log_pos | Info                                           |\n+-------------------------------+-----+-------------------+-----------+--------\n----+------------------------------------------------+\n| mysql_sandbox10019-bin.000002 |   4 | Format_desc       |         1 |       \n 248 | Server ver: 10.0.19-MariaDB-log, Binlog ver: 4 |\n| mysql_sandbox10019-bin.000002 | 248 | Gtid_list         |         1 |       \n 273 | []                                             |\n| mysql_sandbox10019-bin.000002 | 273 | Binlog_checkpoint |         1 |       \n 325 | mysql_sandbox10019-bin.000002                  |\n| mysql_sandbox10019-bin.000002 | 325 | Gtid              |         1 |       \n 363 | GTID 0-1-1                                     |\n| mysql_sandbox10019-bin.000002 | 363 | Query             |         1 |       \n 446 | CREATE DATABASE blog                           |\n| mysql_sandbox10019-bin.000002 | 446 | Gtid              |         1 |       \n 484 | GTID 0-1-2                                     |\n| mysql_sandbox10019-bin.000002 | 484 | Query             |         1 |       \n 571 | use `blog`; CREATE TABLE bb (id INT)           |\n+-------------------------------+-----+-------------------+-----------+--------\n----+------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/show-binlog-events/','','https://mariadb.com/kb/en/show-binlog-events/'),(349,'SHOW AUTHORS',26,'Syntax\n------\n\nSHOW AUTHORS\n\nDescription\n-----------\n\nThe SHOW AUTHORS statement displays information about the people who work on\nMariaDB. For each author, it displays Name, Location, and Comment values. All\ncolumns are encoded as latin1.\n\nThese include:\n\n* First the active people in MariaDB are listed.\n* Then the active people in MySQL.\n* Last the people that have contributed to MariaDB/MySQL in the past.\n\nThe order is somewhat related to importance of the contribution given to the\nMariaDB project, but this is not 100% accurate. There is still room for\nimprovement and debate...\n\nExample\n-------\n\nSHOW AUTHORSG\n*************************** 1. row ***************************\n  Name: Michael (Monty) Widenius\nLocation: Tusby, Finland\n Comment: Lead developer and main author\n*************************** 2. row ***************************\n  Name: Sergei Golubchik\nLocation: Kerpen, Germany\n Comment: Architect, Full-text search, precision math, plugin framework,\nmerges etc\n*************************** 3. row ***************************\n  Name: Igor Babaev\nLocation: Bellevue, USA\n Comment: Optimizer, keycache, core work\n*************************** 4. row ***************************\n  Name: Sergey Petrunia\nLocation: St. Petersburg, Russia\n Comment: Optimizer\n*************************** 5. row ***************************\n  Name: Oleksandr Byelkin\nLocation: Lugansk, Ukraine\n Comment: Query Cache (4.0), Subqueries (4.1), Views (5.0)\n*************************** 6. row ***************************\n  Name: Timour Katchaounov\nLocation: Sofia , Bulgaria\n Comment: Optimizer\n*************************** 7. row ***************************\n  Name: Kristian Nielsen\nLocation: Copenhagen, Denmark\n Comment: Replication, Async client prototocol, General buildbot stuff\n*************************** 8. row ***************************\n  Name: Alexander (Bar) Barkov\nLocation: Izhevsk, Russia\n Comment: Unicode and character sets\n*************************** 9. row ***************************\n  Name: Alexey Botchkov (Holyfoot)\nLocation: Izhevsk, Russia\n Comment: GIS extensions, embedded server, precision math\n*************************** 10. row ***************************\n  Name: Daniel Bartholomew\nLocation: Raleigh, USA\n Comment: MariaDB documentation, Buildbot, releases\n*************************** 11. row ***************************\n  Name: Colin Charles\nLocation: Selangor, Malesia\n Comment: MariaDB documentation, talks at a LOT of conferences\n*************************** 12. row ***************************\n  Name: Sergey Vojtovich\nLocation: Izhevsk, Russia\n Comment: initial implementation of plugin architecture, maintained native\nstorage engines (MyISAM, MEMORY, ARCHIVE, etc), rewrite of table cache\n*************************** 13. row ***************************\n  Name: Vladislav Vaintroub\nLocation: Mannheim, Germany\n Comment: MariaDB Java connector, new thread pool, Windows optimizations\n*************************** 14. row ***************************\n  Name: Elena Stepanova\nLocation: Sankt Petersburg, Russia\n Comment: QA, test cases\n*************************** 15. row ***************************\n  Name: Georg Richter\nLocation: Heidelberg, Germany\n Comment: New LGPL C connector, PHP connector\n*************************** 16. row ***************************\n  Name: Jan Lindström\nLocation: Ylämylly, Finland\n Comment: Working on InnoDB\n*************************** 17. row ***************************\n  Name: Lixun Peng\nLocation: Hangzhou, China\n Comment: Multi Source replication\n*************************** 18. row ***************************\n  Name: Olivier Bertrand\nLocation: Paris, France\n Comment: CONNECT storage engine\n*************************** 19. row ***************************\n  Name: Kentoku Shiba\nLocation: Tokyo, Japan\n Comment: Spider storage engine, metadata_lock_info Information schema\n*************************** 20. row ***************************\n  Name: Percona\nLocation: CA, USA\n Comment: XtraDB, microslow patches, extensions to slow log\n*************************** 21. row ***************************\n  Name: Vicentiu Ciorbaru\nLocation: Bucharest, Romania\n Comment: Roles\n*************************** 22. row ***************************\n  Name: Sudheera Palihakkara\nLocation: \n Comment: PCRE Regular Expressions\n*************************** 23. row ***************************\n  Name: Pavel Ivanov\nLocation: USA\n Comment: Some patches and bug fixes\n*************************** 24. row ***************************\n  Name: Konstantin Osipov\nLocation: Moscow, Russia\n Comment: Prepared statements (4.1), Cursors (5.0), GET_LOCK (10.0)\n*************************** 25. row ***************************\n  Name: Ian Gilfillan\nLocation: South Africa\n Comment: MariaDB documentation\n*************************** 26. row ***************************\n  Name: Federico Razolli\nLocation: Italy\n Comment: MariaDB documentation Italian translation\n*************************** 27. row ***************************\n  Name: Guilhem Bichot\nLocation: Bordeaux, France\n Comment: Replication (since 4.0)\n*************************** 28. row ***************************\n  Name: Andrei Elkin\nLocation: Espoo, Finland\n Comment: Replication\n*************************** 29. row ***************************\n  Name: Dmitri Lenev\nLocation: Moscow, Russia\n Comment: Time zones support (4.1), Triggers (5.0)\n*************************** 30. row ***************************\n  Name: Marc Alff\nLocation: Denver, CO, USA\n Comment: Signal, Resignal, Performance schema\n*************************** 31. row ***************************\n  Name: Mikael Ronström\nLocation: Stockholm, Sweden\n Comment: NDB Cluster, Partitioning, online alter table\n*************************** 32. row ***************************\n  Name: Ingo Strüwing\nLocation: Berlin, Germany\n Comment: Bug fixing in MyISAM, Merge tables etc\n*************************** 33. row ***************************\n  Name: Marko Mäkelä\nLocation: Helsinki, Finland\n Comment: InnoDB core developer\n...\n\n\n\nURL: mariadb.com/kb/en/show-authors/','','https://mariadb.com/kb/en/show-authors/'),(352,'SHOW CHARACTER SET',26,'Syntax\n------\n\nSHOW CHARACTER SET\n  [LIKE \'pattern\' | WHERE expr]\n\nDescription\n-----------\n\nThe SHOW CHARACTER SET statement shows all available character sets. The LIKE\nclause, if present on its own, indicates which character set names to match.\nThe WHERE and LIKE clauses can be given to select rows using more general\nconditions, as discussed in Extended SHOW.\n\nThe same information can be queried from the Information Schema CHARACTER_SETS\ntable.\n\nSee Setting Character Sets and Collations for details on specifying the\ncharacter set at the server, database, table and column levels.\n\nExamples\n--------\n\nSHOW CHARACTER SET LIKE \'latin%\';\n+---------+-----------------------------+-------------------+--------+\n| Charset | Description                 | Default collation | Maxlen |\n+---------+-----------------------------+-------------------+--------+\n| latin1  | cp1252 West European        | latin1_swedish_ci |      1 |\n| latin2  | ISO 8859-2 Central European | latin2_general_ci |      1 |\n| latin5  | ISO 8859-9 Turkish          | latin5_turkish_ci |      1 |\n| latin7  | ISO 8859-13 Baltic          | latin7_general_ci |      1 |\n+---------+-----------------------------+-------------------+--------+\n\nSHOW CHARACTER SET WHERE Maxlen LIKE \'2\';\n+---------+---------------------------+-------------------+--------+\n| Charset | Description               | Default collation | Maxlen |\n+---------+---------------------------+-------------------+--------+\n| big5    | Big5 Traditional Chinese  | big5_chinese_ci   |      2 |\n| sjis    | Shift-JIS Japanese        | sjis_japanese_ci  |      2 |\n| euckr   | EUC-KR Korean             | euckr_korean_ci   |      2 |\n| gb2312  | GB2312 Simplified Chinese | gb2312_chinese_ci |      2 |\n| gbk     | GBK Simplified Chinese    | gbk_chinese_ci    |      2 |\n| ucs2    | UCS-2 Unicode             | ucs2_general_ci   |      2 |\n| cp932   | SJIS for Windows Japanese | cp932_japanese_ci |      2 |\n+---------+---------------------------+-------------------+--------+\n\n\n\nURL: mariadb.com/kb/en/show-character-set/','','https://mariadb.com/kb/en/show-character-set/'),(353,'SHOW CLIENT_STATISTICS',26,'Syntax\n------\n\nSHOW CLIENT_STATISTICS\n\nDescription\n-----------\n\nThe SHOW CLIENT_STATISTICS statement is part of the User Statistics feature.\nIt was removed as a separate statement in MariaDB 10.1.1, but effectively\nreplaced by the generic SHOW information_schema_table statement. The\ninformation_schema.CLIENT_STATISTICS table holds statistics about client\nconnections.\n\nThe userstat system variable must be set to 1 to activate this feature. See\nthe User Statistics and information_schema.CLIENT_STATISTICS articles for more\ninformation.\n\nExample\n-------\n\nSHOW CLIENT_STATISTICSG\n*************************** 1. row ***************************\n        Client: localhost\n  Total_connections: 35\nConcurrent_connections: 0\n    Connected_time: 708\n      Busy_time: 2.5557979999999985\n       Cpu_time: 0.04123740000000002\n    Bytes_received: 3883\n      Bytes_sent: 21595\n Binlog_bytes_written: 0\n      Rows_read: 18\n      Rows_sent: 115\n     Rows_deleted: 0\n    Rows_inserted: 0\n     Rows_updated: 0\n   Select_commands: 70\n   Update_commands: 0\n    Other_commands: 0\n Commit_transactions: 1\n Rollback_transactions: 0\n  Denied_connections: 0\n   Lost_connections: 0\n    Access_denied: 0\n    Empty_queries: 35\n\n\n\nURL: mariadb.com/kb/en/show-client-statistics/','','https://mariadb.com/kb/en/show-client-statistics/'),(357,'SHOW CREATE DATABASE',26,'Syntax\n------\n\nSHOW CREATE {DATABASE | SCHEMA} db_name\n\nDescription\n-----------\n\nShows the CREATE DATABASE statement that creates the given database. SHOW\nCREATE SCHEMA is a synonym for SHOW CREATE DATABASE. SHOW CREATE DATABASE\nquotes database names according to the value of the sql_quote_show_create\nserver system variable.\n\nExamples\n--------\n\nSHOW CREATE DATABASE test;\n+----------+-----------------------------------------------------------------+\n| Database | Create Database                                                 |\n+----------+-----------------------------------------------------------------+\n| test     | CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET latin1 */ |\n+----------+-----------------------------------------------------------------+\n\nSHOW CREATE SCHEMA test;\n+----------+-----------------------------------------------------------------+\n| Database | Create Database                                                 |\n+----------+-----------------------------------------------------------------+\n| test     | CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET latin1 */ |\n+----------+-----------------------------------------------------------------+\n\nWith sql_quote_show_create off:\n\nSHOW CREATE DATABASE test;\n+----------+---------------------------------------------------------------+\n| Database | Create Database                                               |\n+----------+---------------------------------------------------------------+\n| test     | CREATE DATABASE test /*!40100 DEFAULT CHARACTER SET latin1 */ |\n+----------+---------------------------------------------------------------+\n\nWith a comment, from MariaDB 10.5:\n\nSHOW CREATE DATABASE p;\n+----------+-------------------------------------------------------------------\n------------------+\n| Database | Create Database                                                  \n         |\n+----------+-------------------------------------------------------------------\n------------------+\n| p        | CREATE DATABASE `p` /*!40100 DEFAULT CHARACTER SET latin1 */\nCOMMENT \'presentations\' |\n+----------+-------------------------------------------------------------------\n------------------+\n\n\n\nURL: mariadb.com/kb/en/show-create-database/','','https://mariadb.com/kb/en/show-create-database/'),(354,'SHOW COLLATION',26,'Syntax\n------\n\nSHOW COLLATION\n  [LIKE \'pattern\' | WHERE expr]\n\nDescription\n-----------\n\nThe output from SHOW COLLATION includes all available collations. The LIKE\nclause, if present on its own, indicates which collation names to match. The\nWHERE and LIKE clauses can be given to select rows using more general\nconditions, as discussed in Extended SHOW.\n\nThe same information can be queried from the Information Schema COLLATIONS\ntable.\n\nSee Setting Character Sets and Collations for details on specifying the\ncollation at the server, database, table and column levels.\n\nExamples\n--------\n\nSHOW COLLATION LIKE \'latin1%\';\n+-------------------+---------+----+---------+----------+---------+\n| Collation         | Charset | Id | Default | Compiled | Sortlen |\n+-------------------+---------+----+---------+----------+---------+\n| latin1_german1_ci | latin1  |  5 |         | Yes      |       1 |\n| latin1_swedish_ci | latin1  |  8 | Yes     | Yes      |       1 |\n| latin1_danish_ci  | latin1  | 15 |         | Yes      |       1 |\n| latin1_german2_ci | latin1  | 31 |         | Yes      |       2 |\n| latin1_bin        | latin1  | 47 |         | Yes      |       1 |\n| latin1_general_ci | latin1  | 48 |         | Yes      |       1 |\n| latin1_general_cs | latin1  | 49 |         | Yes      |       1 |\n| latin1_spanish_ci | latin1  | 94 |         | Yes      |       1 |\n+-------------------+---------+----+---------+----------+---------+\n\nSHOW COLLATION WHERE Sortlen LIKE \'8\' AND Charset LIKE \'utf8\';\n+--------------------+---------+-----+---------+----------+---------+\n| Collation          | Charset | Id  | Default | Compiled | Sortlen |\n+--------------------+---------+-----+---------+----------+---------+\n| utf8_unicode_ci    | utf8    | 192 |         | Yes      |       8 |\n| utf8_icelandic_ci  | utf8    | 193 |         | Yes      |       8 |\n| utf8_latvian_ci    | utf8    | 194 |         | Yes      |       8 |\n| utf8_romanian_ci   | utf8    | 195 |         | Yes      |       8 |\n| utf8_slovenian_ci  | utf8    | 196 |         | Yes      |       8 |\n| utf8_polish_ci     | utf8    | 197 |         | Yes      |       8 |\n| utf8_estonian_ci   | utf8    | 198 |         | Yes      |       8 |\n| utf8_spanish_ci    | utf8    | 199 |         | Yes      |       8 |\n| utf8_swedish_ci    | utf8    | 200 |         | Yes      |       8 |\n| utf8_turkish_ci    | utf8    | 201 |         | Yes      |       8 |\n| utf8_czech_ci      | utf8    | 202 |         | Yes      |       8 |\n| utf8_danish_ci     | utf8    | 203 |         | Yes      |       8 |\n| utf8_lithuanian_ci | utf8    | 204 |         | Yes      |       8 |\n| utf8_slovak_ci     | utf8    | 205 |         | Yes      |       8 |\n| utf8_spanish2_ci   | utf8    | 206 |         | Yes      |       8 |\n| utf8_roman_ci      | utf8    | 207 |         | Yes      |       8 |\n| utf8_persian_ci    | utf8    | 208 |         | Yes      |       8 |\n| utf8_esperanto_ci  | utf8    | 209 |         | Yes      |       8 |\n| utf8_hungarian_ci  | utf8    | 210 |         | Yes      |       8 |\n| utf8_sinhala_ci    | utf8    | 211 |         | Yes      |       8 |\n| utf8_croatian_ci   | utf8    | 213 |         | Yes      |       8 |\n+--------------------+---------+-----+---------+----------+---------+\n\n\n\nURL: mariadb.com/kb/en/show-collation/','','https://mariadb.com/kb/en/show-collation/'),(358,'SHOW CREATE EVENT',26,'Syntax\n------\n\nSHOW CREATE EVENT event_name\n\nDescription\n-----------\n\nThis statement displays the CREATE EVENT statement needed to re-create a given\nevent, as well as the SQL_MODE that was used when the trigger has been created\nand the character set used by the connection. To find out which events are\npresent, use SHOW EVENTS.\n\nThe output of this statement is unreliably affected by the\nsql_quote_show_create server system variable - see\nhttp://bugs.mysql.com/bug.php?id=12719\n\nThe information_schema.EVENTS table provides similar, but more complete,\ninformation.\n\nExamples\n--------\n\nSHOW CREATE EVENT test.e_dailyG\n*************************** 1. row ***************************\n       Event: e_daily\n      sql_mode:\n     time_zone: SYSTEM\n    Create Event: CREATE EVENT `e_daily`\n            ON SCHEDULE EVERY 1 DAY\n            STARTS CURRENT_TIMESTAMP + INTERVAL 6 HOUR\n            ON COMPLETION NOT PRESERVE\n            ENABLE\n            COMMENT \'Saves total number of sessions then\n                clears the table each day\'\n            DO BEGIN\n             INSERT INTO site_activity.totals (time, total)\n              SELECT CURRENT_TIMESTAMP, COUNT(*)\n              FROM site_activity.sessions;\n             DELETE FROM site_activity.sessions;\n            END\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n Database Collation: latin1_swedish_ci\n\n\n\nURL: mariadb.com/kb/en/show-create-event/','','https://mariadb.com/kb/en/show-create-event/'),(359,'SHOW CREATE FUNCTION',26,'Syntax\n------\n\nSHOW CREATE FUNCTION func_name\n\nDescription\n-----------\n\nThis statement is similar to SHOW CREATE PROCEDURE but for stored functions.\n\nThe output of this statement is unreliably affected by the\nsql_quote_show_create server system variable - see\nhttp://bugs.mysql.com/bug.php?id=12719\n\nExample\n-------\n\nSHOW CREATE FUNCTION VatCentsG\n*************************** 1. row ***************************\n      Function: VatCents\n      sql_mode:\n  Create Function: CREATE DEFINER=`root`@`localhost` FUNCTION\n`VatCents`(price DECIMAL(10,2)) RETURNS int(11)\n  DETERMINISTIC\nBEGIN\n DECLARE x INT;\n SET x = price * 114;\n RETURN x;\nEND\ncharacter_set_client: utf8\ncollation_connection: utf8_general_ci\n Database Collation: latin1_swedish_ci\n\n\n\nURL: mariadb.com/kb/en/show-create-function/','','https://mariadb.com/kb/en/show-create-function/'),(355,'SHOW COLUMNS',26,'Syntax\n------\n\nSHOW [FULL] {COLUMNS | FIELDS} FROM tbl_name [FROM db_name]\n  [LIKE \'pattern\' | WHERE expr]\n\nDescription\n-----------\n\nSHOW COLUMNS displays information about the columns in a given table. It also\nworks for views. The LIKE clause, if present on its own, indicates which\ncolumn names to match. The WHERE and LIKE clauses can be given to select rows\nusing more general conditions, as discussed in Extended SHOW.\n\nIf the data types differ from what you expect them to be based on a CREATE\nTABLE statement, note that MariaDB sometimes changes data types when you\ncreate or alter a table. The conditions under which this occurs are described\nin the Silent Column Changes article.\n\nThe FULL keyword causes the output to include the column collation and\ncomments, as well as the privileges you have for each column.\n\nYou can use db_name.tbl_name as an alternative to the tbl_name FROM db_name\nsyntax. In other words, these two statements are equivalent:\n\nSHOW COLUMNS FROM mytable FROM mydb;\nSHOW COLUMNS FROM mydb.mytable;\n\nSHOW COLUMNS displays the following values for each table column:\n\nField indicates the column name.\n\nType indicates the column data type.\n\nCollation indicates the collation for non-binary string columns, or NULL for\nother columns. This value is displayed only if you use the FULL keyword.\n\nThe Null field contains YES if NULL values can be stored in the column, NO if\nnot.\n\nThe Key field indicates whether the column is indexed:\n\n* If Key is empty, the column either is not indexed or is indexed only as a\n secondary column in a multiple-column, non-unique index.\n* If Key is PRI, the column is a PRIMARY KEY or\n is one of the columns in a multiple-column PRIMARY KEY.\n* If Key is UNI, the column is the first column of a unique-valued\n index that cannot contain NULL values.\n* If Key is MUL, multiple occurrences of a given value are allowed\n within the column. The column is the first column of a non-unique index or a\n unique-valued index that can contain NULL values.\n\nIf more than one of the Key values applies to a given column of a table, Key\ndisplays the one with the highest priority, in the order PRI, UNI, MUL.\n\nA UNIQUE index may be displayed as PRI if it cannot contain NULL values and\nthere is no PRIMARY KEY in the table. A UNIQUE index may display as MUL if\nseveral columns form a composite UNIQUE index; although the combination of the\ncolumns is unique, each column can still hold multiple occurrences of a given\nvalue.\n\nThe Default field indicates the default value that is assigned to the column.\n\nThe Extra field contains any additional information that is available about a\ngiven column.\n\n+------------------------+----------------------------------------------------+\n| Value                  | Description                                        |\n+------------------------+----------------------------------------------------+\n| AUTO_INCREMENT         | The column was created with the AUTO_INCREMENT     |\n|                        | keyword.                                           |\n+------------------------+----------------------------------------------------+\n| PERSISTENT             | The column was created with the PERSISTENT         |\n|                        | keyword. (New in 5.3)                              |\n+------------------------+----------------------------------------------------+\n| VIRTUAL                | The column was created with the VIRTUAL keyword.   |\n|                        | (New in 5.3)                                       |\n+------------------------+----------------------------------------------------+\n| on update              | The column is a TIMESTAMP column that is           |\n| CURRENT_TIMESTAMP      | automatically updated on INSERT and UPDATE.        |\n+------------------------+----------------------------------------------------+\n\nPrivileges indicates the privileges you have for the column. This value is\ndisplayed only if you use the FULL keyword.\n\nComment indicates any comment the column has. This value is displayed only if\nyou use the FULL keyword.\n\nSHOW FIELDS is a synonym for SHOW COLUMNS. Also DESCRIBE and EXPLAIN can be\nused as shortcuts.\n\nYou can also list a table\'s columns with:\n\nmysqlshow db_name tbl_name\n\nSee the mysqlshow command for more details.\n\nThe DESCRIBE statement provides information similar to SHOW COLUMNS. The\ninformation_schema.COLUMNS table provides similar, but more complete,\ninformation.\n\nThe SHOW CREATE TABLE, SHOW TABLE STATUS, and SHOW INDEX statements also\nprovide information about tables.\n\nExamples\n--------\n\nSHOW COLUMNS FROM city;\n+------------+----------+------+-----+---------+----------------+\n| Field      | Type     | Null | Key | Default | Extra          |\n+------------+----------+------+-----+---------+----------------+\n| Id         | int(11)  | NO   | PRI | NULL    | auto_increment |\n| Name       | char(35) | NO   |     |         |                |\n| Country    | char(3)  | NO   | UNI |         |                |\n| District   | char(20) | YES  | MUL |         |                |\n| Population | int(11)  | NO   |     | 0       |                |\n+------------+----------+------+-----+---------+----------------+\n\nSHOW COLUMNS FROM employees WHERE Type LIKE \'Varchar%\';\n+---------------+-------------+------+-----+---------+-------+\n| Field         | Type        | Null | Key | Default | Extra |\n+---------------+-------------+------+-----+---------+-------+\n| first_name    | varchar(30) | NO   | MUL | NULL    |       |\n| last_name     | varchar(40) | NO   |     | NULL    |       |\n| position      | varchar(25) | NO   |     | NULL    |       |\n| home_address  | varchar(50) | NO   |     | NULL    |       |\n| home_phone    | varchar(12) | NO   |     | NULL    |       |\n| employee_code | varchar(25) | NO   | UNI | NULL    |       |\n+---------------+-------------+------+-----+---------+-------+\n\n\n\nURL: mariadb.com/kb/en/show-columns/','','https://mariadb.com/kb/en/show-columns/'),(356,'SHOW CONTRIBUTORS',26,'Syntax\n------\n\nSHOW CONTRIBUTORS\n\nDescription\n-----------\n\nThe SHOW CONTRIBUTORS statement displays information about the companies and\npeople who financially contribute to MariaDB. For each contributor, it\ndisplays Name, Location, and Comment values. All columns are encoded as latin1.\n\nIt displays all members and sponsors of the MariaDB Foundation as well as\nother financial contributors.\n\nExample\n-------\n\nSHOW CONTRIBUTORS;\n+---------------------+-------------------------------+------------------------\n------------------------------------+\n| Name                | Location                      | Comment               \n                  |\n+---------------------+-------------------------------+------------------------\n------------------------------------+\n| Booking.com         | https://www.booking.com       | Founding member,\nPlatinum Sponsor of the MariaDB Foundation |\n| Alibaba Cloud       | https://www.alibabacloud.com/ | Platinum Sponsor of\nthe MariaDB Foundation                  |\n| Tencent Cloud       | https://cloud.tencent.com     | Platinum Sponsor of\nthe MariaDB Foundation                  |\n| Microsoft           | https://microsoft.com/        | Platinum Sponsor of\nthe MariaDB Foundation                  |\n| MariaDB Corporation | https://mariadb.com           | Founding member,\nPlatinum Sponsor of the MariaDB Foundation |\n| Visma               | https://visma.com             | Gold Sponsor of the\nMariaDB Foundation                      |\n| DBS                 | https://dbs.com               | Gold Sponsor of the\nMariaDB Foundation                      |\n| IBM                 | https://www.ibm.com           | Gold Sponsor of the\nMariaDB Foundation                      |\n| Tencent Games       | http://game.qq.com/           | Gold Sponsor of the\nMariaDB Foundation                      |\n| Nexedi              | https://www.nexedi.com        | Silver Sponsor of the\nMariaDB Foundation                    |\n| Acronis             | https://www.acronis.com       | Silver Sponsor of the\nMariaDB Foundation                    |\n| Verkkokauppa.com    | https://www.verkkokauppa.com  | Bronze Sponsor of the\nMariaDB Foundation                    |\n| Virtuozzo           | https://virtuozzo.com         | Bronze Sponsor of the\nMariaDB Foundation                    |\n| Tencent Game DBA    | http://tencentdba.com/about   | Bronze Sponsor of the\nMariaDB Foundation                    |\n| Tencent TDSQL       | http://tdsql.org              | Bronze Sponsor of the\nMariaDB Foundation                    |\n| Percona             | https://www.percona.com/      | Bronze Sponsor of the\nMariaDB Foundation                    |\n| Google              | USA                           | Sponsoring encryption,\nparallel replication and GTID        |\n| Facebook            | USA                           | Sponsoring\nnon-blocking API, LIMIT ROWS EXAMINED etc        |\n| Ronald Bradford     | Brisbane, Australia           | EFF contribution for\nUC2006 Auction                         |\n| Sheeri Kritzer      | Boston, Mass. USA             | EFF contribution for\nUC2006 Auction                         |\n| Mark Shuttleworth   | London, UK.                   | EFF contribution for\nUC2006 Auction                         |\n+---------------------+-------------------------------+------------------------\n------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/show-contributors/','','https://mariadb.com/kb/en/show-contributors/'),(360,'SHOW CREATE PACKAGE',26,'MariaDB starting with 10.3.5\n----------------------------\nOracle-style packages were introduced in MariaDB 10.3.5.\n\nSyntax\n------\n\nSHOW CREATE PACKAGE  [ db_name . ] package_name\n\nDescription\n-----------\n\nThe SHOW CREATE PACKAGE statement can be used when Oracle SQL_MODE is set.\n\nShows the CREATE statement that creates the given package specification.\n\nExamples\n--------\n\nSHOW CREATE PACKAGE employee_toolsG\n*************************** 1. row ***************************\n      Package: employee_tools\n      sql_mode:\nPIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ORACLE,NO_KEY_OPTIONS,NO_TABLE_OPTIONS\nNO_FIELD_OPTIONS,NO_AUTO_CREATE_USER\n   Create Package: CREATE DEFINER=\"root\"@\"localhost\" PACKAGE\n\"employee_tools\" AS\n FUNCTION getSalary(eid INT) RETURN DECIMAL(10,2);\n PROCEDURE raiseSalary(eid INT, amount DECIMAL(10,2));\n PROCEDURE raiseSalaryStd(eid INT);\n PROCEDURE hire(ename TEXT, esalary DECIMAL(10,2));\nEND\ncharacter_set_client: utf8\ncollation_connection: utf8_general_ci\n Database Collation: latin1_swedish_ci\n\n\n\nURL: mariadb.com/kb/en/show-create-package/','','https://mariadb.com/kb/en/show-create-package/'),(361,'SHOW CREATE PACKAGE BODY',26,'MariaDB starting with 10.3.5\n----------------------------\nOracle-style packages were introduced in MariaDB 10.3.5.\n\nSyntax\n------\n\nSHOW CREATE PACKAGE BODY  [ db_name . ] package_name\n\nDescription\n-----------\n\nThe SHOW CREATE PACKAGE BODY statement can be used when Oracle SQL_MODE is set.\n\nShows the CREATE statement that creates the given package body (i.e. the\nimplementation).\n\nExamples\n--------\n\nSHOW CREATE PACKAGE BODY employee_toolsG\n*************************** 1. row ***************************\n    Package body: employee_tools\n      sql_mode:\nPIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ORACLE,NO_KEY_OPTIONS,NO_TABLE_OPTIONS\nNO_FIELD_OPTIONS,NO_AUTO_CREATE_USER\n Create Package Body: CREATE DEFINER=\"root\"@\"localhost\" PACKAGE BODY\n\"employee_tools\" AS\n\nstdRaiseAmount DECIMAL(10,2):=500;\n\nPROCEDURE log (eid INT, ecmnt TEXT) AS\n BEGIN\n  INSERT INTO employee_log (id, cmnt) VALUES (eid, ecmnt);\n END;\n\nPROCEDURE hire(ename TEXT, esalary DECIMAL(10,2)) AS\n  eid INT;\n BEGIN\n  INSERT INTO employee (name, salary) VALUES (ename, esalary);\n  eid:= last_insert_id();\n  log(eid, \'hire \' || ename);\n END;\n\nFUNCTION getSalary(eid INT) RETURN DECIMAL(10,2) AS\n  nSalary DECIMAL(10,2);\n BEGIN\n  SELECT salary INTO nSalary FROM employee WHERE id=eid;\n  log(eid, \'getSalary id=\' || eid || \' salary=\' || nSalary);\n  RETURN nSalary;\n END;\n\nPROCEDURE raiseSalary(eid INT, amount DECIMAL(10,2)) AS\n BEGIN\n  UPDATE employee SET salary=salary+amount WHERE id=eid;\n  log(eid, \'raiseSalary id=\' || eid || \' amount=\' || amount);\n END;\n\nPROCEDURE raiseSalaryStd(eid INT) AS\n BEGIN\n  raiseSalary(eid, stdRaiseAmount);\n  log(eid, \'raiseSalaryStd id=\' || eid);\n END;\n\nBEGIN  \n log(0, \'Session \' || connection_id() || \' \' || current_user || \' started\');\nEND\ncharacter_set_client: utf8\ncollation_connection: utf8_general_ci\n Database Collation: latin1_swedish_ci\n\n\n\nURL: mariadb.com/kb/en/show-create-package-body/','','https://mariadb.com/kb/en/show-create-package-body/'),(362,'SHOW CREATE PROCEDURE',26,'Syntax\n------\n\nSHOW CREATE PROCEDURE proc_name\n\nDescription\n-----------\n\nThis statement is a MariaDB extension. It returns the exact string that can be\nused to re-create the named stored procedure, as well as the SQL_MODE that was\nused when the trigger has been created and the character set used by the\nconnection.. A similar statement, SHOW CREATE FUNCTION, displays information\nabout stored functions.\n\nBoth statements require that you are the owner of the routine or have the\nSELECT privilege on the mysql.proc table. When neither is true, the statements\ndisplay NULL for the Create Procedure or Create Function field.\n\nWarning Users with SELECT privileges on mysql.proc or USAGE privileges on *.*\ncan view the text of routines, even when they do not have privileges for the\nfunction or procedure itself.\n\nThe output of these statements is unreliably affected by the\nsql_quote_show_create server system variable - see\nhttp://bugs.mysql.com/bug.php?id=12719\n\nExamples\n--------\n\nHere\'s a comparison of the SHOW CREATE PROCEDURE and SHOW CREATE FUNCTION\nstatements.\n\nSHOW CREATE PROCEDURE test.simpleprocG\n*************************** 1. row ***************************\n     Procedure: simpleproc\n      sql_mode:\n  Create Procedure: CREATE PROCEDURE `simpleproc`(OUT param1 INT)\n           BEGIN\n           SELECT COUNT(*) INTO param1 FROM t;\n           END\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n Database Collation: latin1_swedish_ci\n\nSHOW CREATE FUNCTION test.helloG\n*************************** 1. row ***************************\n      Function: hello\n      sql_mode:\n  Create Function: CREATE FUNCTION `hello`(s CHAR(20))\n           RETURNS CHAR(50)\n           RETURN CONCAT(\'Hello, \',s,\'!\')\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n Database Collation: latin1_swedish_ci\n\nWhen the user issuing the statement does not have privileges on the routine,\nattempting to CALL the procedure raises Error 1370.\n\nCALL test.prc1();\nError 1370 (42000): execute command denieed to user \'test_user\'@\'localhost\'\nfor routine \'test\'.\'prc1\'\n\nIf the user neither has privilege to the routine nor the SELECT privilege on\nmysql.proc table, it raises Error 1305, informing them that the procedure does\nnot exist.\n\nSHOW CREATE TABLES test.prc1G\nError 1305 (42000): PROCEDURE prc1 does not exist\n\n\n\nURL: mariadb.com/kb/en/show-create-procedure/','','https://mariadb.com/kb/en/show-create-procedure/'),(363,'SHOW CREATE SEQUENCE',26,'MariaDB starting with 10.3.1\n----------------------------\nSequences were introduced in MariaDB 10.3.\n\nSyntax\n------\n\nSHOW CREATE SEQUENCE sequence_name;\n\nDescription\n-----------\n\nShows the CREATE SEQUENCE statement that created the given sequence. The\nstatement requires the SELECT privilege for the table.\n\nExample\n-------\n\nCREATE SEQUENCE s1 START WITH 50;\nSHOW CREATE SEQUENCE s1G;\n*************************** 1. row ***************************\n   Table: s1\nCreate Table: CREATE SEQUENCE `s1` start with 50 minvalue 1 maxvalue\n9223372036854775806 \n increment by 1 cache 1000 nocycle ENGINE=InnoDB\n\nNotes\n-----\n\nIf you want to see the underlying table structure used for the SEQUENCE you\ncan use SHOW CREATE TABLE on the SEQUENCE. You can also use SELECT to read the\ncurrent recorded state of the SEQUENCE:\n\nSHOW CREATE TABLE s1G\n*************************** 1. row ***************************\n   Table: s1\nCreate Table: CREATE TABLE `s1` (\n `next_not_cached_value` bigint(21) NOT NULL,\n `minimum_value` bigint(21) NOT NULL,\n `maximum_value` bigint(21) NOT NULL,\n `start_value` bigint(21) NOT NULL COMMENT \'start value when sequences is\ncreated \n  or value if RESTART is used\',\n `increment` bigint(21) NOT NULL COMMENT \'increment value\',\n `cache_size` bigint(21) unsigned NOT NULL,\n `cycle_option` tinyint(1) unsigned NOT NULL COMMENT \'0 if no cycles are\nallowed, \n  1 if the sequence should begin a new cycle when maximum_value is passed\',\n `cycle_count` bigint(21) NOT NULL COMMENT \'How many cycles have been done\'\n) ENGINE=InnoDB SEQUENCE=1\n\nSELECT * FROM s1G\n*************************** 1. row ***************************\nnext_not_cached_value: 50\n    minimum_value: 1\n    maximum_value: 9223372036854775806\n     start_value: 50\n      increment: 1\n     cache_size: 1000\n    cycle_option: 0\n     cycle_count: 0\n\n\n\nURL: mariadb.com/kb/en/show-create-sequence/','','https://mariadb.com/kb/en/show-create-sequence/'),(365,'SHOW CREATE TRIGGER',26,'Syntax\n------\n\nSHOW CREATE TRIGGER trigger_name\n\nDescription\n-----------\n\nThis statement shows a CREATE TRIGGER statement that creates the given\ntrigger, as well as the SQL_MODE that was used when the trigger has been\ncreated and the character set used by the connection.\n\nThe output of this statement is unreliably affected by the\nsql_quote_show_create server system variable - see\nhttp://bugs.mysql.com/bug.php?id=12719\n\nExamples\n--------\n\nSHOW CREATE TRIGGER exampleG\n*************************** 1. row ***************************\n       Trigger: example\n       sql_mode:\nONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,STRICT_ALL_TABLES\n,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO\n\nENGINE_SUBSTITUTION\nSQL Original Statement: CREATE DEFINER=`root`@`localhost` TRIGGER example\nBEFORE\n INSERT ON t FOR EACH ROW\nBEGIN\n    SET NEW.c = NEW.c * 2;\nEND\n character_set_client: cp850\n collation_connection: cp850_general_ci\n Database Collation: utf8_general_ci\n Created: 2016-09-29 13:53:34.35\n\nMariaDB starting with 10.2.3\n----------------------------\nThe Created column was added in MySQL 5.7 and MariaDB 10.2.3 as part of\nintroducing multiple trigger events per action.\n\n\n\nURL: mariadb.com/kb/en/show-create-trigger/','','https://mariadb.com/kb/en/show-create-trigger/'),(364,'SHOW CREATE TABLE',26,'Syntax\n------\n\nSHOW CREATE TABLE tbl_name\n\nDescription\n-----------\n\nShows the CREATE TABLE statement that created the given table. The statement\nrequires the SELECT privilege for the table. This statement also works with\nviews and SEQUENCE.\n\nSHOW CREATE TABLE quotes table and column names according to the value of the\nsql_quote_show_create server system variable.\n\nCertain SQL_MODE values can result in parts of the original CREATE statement\nnot being included in the output. MariaDB-specific table options, column\noptions, and index options are not included in the output of this statement if\nthe NO_TABLE_OPTIONS, NO_FIELD_OPTIONS and NO_KEY_OPTIONS SQL_MODE flags are\nused. All MariaDB-specific table attributes are also not shown when a\nnon-MariaDB/MySQL emulation mode is used, which includes ANSI, DB2,\nPOSTGRESQL, MSSQL, MAXDB or ORACLE.\n\nInvalid table options, column options and index options are normally commented\nout (note, that it is possible to create a table with invalid options, by\naltering a table of a different engine, where these options were valid). To\nhave them uncommented, enable the IGNORE_BAD_TABLE_OPTIONS SQL_MODE. Remember\nthat replaying a CREATE TABLE statement with uncommented invalid options will\nfail with an error, unless the IGNORE_BAD_TABLE_OPTIONS SQL_MODE is in effect.\n\nNote that SHOW CREATE TABLE is not meant to provide metadata about a table. It\nprovides information about how the table was declared, but the real table\nstructure could differ a bit. For example, if an index has been declared as\nHASH, the CREATE TABLE statement returned by SHOW CREATE TABLE will declare\nthat index as HASH; however, it is possible that the index is in fact a BTREE,\nbecause the storage engine does not support HASH.\n\nMariaDB starting with 10.2.1\n----------------------------\nMariaDB 10.2.1 permits TEXT and BLOB data types to be assigned a DEFAULT\nvalue. As a result, from MariaDB 10.2.1, SHOW CREATE TABLE will append a\nDEFAULT NULL to nullable TEXT or BLOB fields if no specific default is\nprovided.\n\nMariaDB starting with 10.2.2\n----------------------------\nFrom MariaDB 10.2.2, numbers are no longer quoted in the DEFAULT clause in\nSHOW CREATE statement. Previously, MariaDB quoted numbers.\n\nExamples\n--------\n\nSHOW CREATE TABLE tG\n*************************** 1. row ***************************\n   Table: t\nCreate Table: CREATE TABLE `t` (\n `id` int(11) NOT NULL AUTO_INCREMENT,\n `s` char(60) DEFAULT NULL,\n PRIMARY KEY (`id`)\n) ENGINE=InnoDB DEFAULT CHARSET=latin1\n\nWith sql_quote_show_create off:\n\nSHOW CREATE TABLE tG\n*************************** 1. row ***************************\n   Table: t\nCreate Table: CREATE TABLE t (\n id int(11) NOT NULL AUTO_INCREMENT,\n s char(60) DEFAULT NULL,\n PRIMARY KEY (id)\n) ENGINE=InnoDB DEFAULT CHARSET=latin1\n\nUnquoted numeric DEFAULTs, from MariaDB 10.2.2:\n\nCREATE TABLE td (link TINYINT DEFAULT 1);\n\nSHOW CREATE TABLE tdG\n*************************** 1. row ***************************\n   Table: td\nCreate Table: CREATE TABLE `td` (\n `link` tinyint(4) DEFAULT 1\n) ENGINE=InnoDB DEFAULT CHARSET=latin1\n\nQuoted numeric DEFAULTs, until MariaDB 10.2.1:\n\nCREATE TABLE td (link TINYINT DEFAULT 1);\n\nSHOW CREATE TABLE tdG\n*************************** 1. row ***************************\n   Table: td\nCreate Table: CREATE TABLE `td` (\n `link` tinyint(4) DEFAULT \'1\'\n) ENGINE=InnoDB DEFAULT CHARSET=latin1\n\nSQL_MODE impacting the output:\n\nSELECT @@sql_mode;\n+------------------------------------------------------------------------------\n------------+\n| @@sql_mode                                                                  \n      |\n+------------------------------------------------------------------------------\n------------+\n|\nSTRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SU\nSTITUTION |\n+------------------------------------------------------------------------------\n------------+\n\nCREATE TABLE `t1` (\n   `id` int(11) NOT NULL AUTO_INCREMENT,\n   `msg` varchar(100) DEFAULT NULL,\n   PRIMARY KEY (`id`)\n  ) ENGINE=InnoDB DEFAULT CHARSET=latin1\n;\n\nSHOW CREATE TABLE t1G\n*************************** 1. row ***************************\n   Table: t1\nCreate Table: CREATE TABLE `t1` (\n `id` int(11) NOT NULL AUTO_INCREMENT,\n `msg` varchar(100) DEFAULT NULL,\n PRIMARY KEY (`id`)\n) ENGINE=InnoDB DEFAULT CHARSET=latin1\n\nSET SQL_MODE=ORACLE;\n\nSHOW CREATE TABLE t1G\n*************************** 1. row ***************************\n   Table: t1\nCreate Table: CREATE TABLE \"t1\" (\n \"id\" int(11) NOT NULL,\n \"msg\" varchar(100) DEFAULT NULL,\n PRIMARY KEY (\"id\")\n\n\n\nURL: mariadb.com/kb/en/show-create-table/','','https://mariadb.com/kb/en/show-create-table/'),(366,'SHOW CREATE USER',26,'MariaDB starting with 10.2.0\n----------------------------\nSHOW CREATE USER was introduced in MariaDB 10.2.0\n\nSyntax\n------\n\nSHOW CREATE USER user_name\n\nDescription\n-----------\n\nShows the CREATE USER statement that created the given user. The statement\nrequires the SELECT privilege for the mysql database, except for the current\nuser.\n\nExamples\n--------\n\nCREATE USER foo4@test require cipher \'text\' \n issuer \'foo_issuer\' subject \'foo_subject\';\n\nSHOW CREATE USER foo4@testG\n*************************** 1. row ***************************\nCREATE USER \'foo4\'@\'test\' \n REQUIRE ISSUER \'foo_issuer\'\n SUBJECT \'foo_subject\'\n CIPHER \'text\'\n\nUser Password Expiry:\n\nCREATE USER \'monty\'@\'localhost\' PASSWORD EXPIRE INTERVAL 120 DAY;\n\nSHOW CREATE USER \'monty\'@\'localhost\';\n+------------------------------------------------------------------+\n| CREATE USER for monty@localhost                                  |\n+------------------------------------------------------------------+\n| CREATE USER \'monty\'@\'localhost\' PASSWORD EXPIRE INTERVAL 120 DAY |\n+------------------------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/show-create-user/','','https://mariadb.com/kb/en/show-create-user/'),(367,'SHOW CREATE VIEW',26,'Syntax\n------\n\nSHOW CREATE VIEW view_name\n\nDescription\n-----------\n\nThis statement shows a CREATE VIEW statement that creates the given view, as\nwell as the character set used by the connection when the view was created.\nThis statement also works with views.\n\nSHOW CREATE VIEW quotes table, column and stored function names according to\nthe value of the sql_quote_show_create server system variable.\n\nExamples\n--------\n\nSHOW CREATE VIEW exampleG\n*************************** 1. row ***************************\n        View: example\n    Create View: CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL\nSECURITY DEFINER VIEW `example` AS (select `t`.`id` AS `id`,`t`.`s` AS `s` from\n`t`)\ncharacter_set_client: cp850\ncollation_connection: cp850_general_ci\n\nWith sql_quote_show_create off:\n\nSHOW CREATE VIEW exampleG\n*************************** 1. row ***************************\n        View: example\n    Create View: CREATE ALGORITHM=UNDEFINED DEFINER=root@localhost SQL\nSECU\nRITY DEFINER VIEW example AS (select t.id AS id,t.s AS s from t)\ncharacter_set_client: cp850\ncollation_connection: cp850_general_ci\n\nGrants\n------\n\nTo be able to see a view, you need to have the SHOW VIEW and the SELECT\nprivilege on the view:\n\nGRANT SHOW VIEW,SELECT ON test_database.test_view TO \'test\'@\'localhost\';\n\n\n\nURL: mariadb.com/kb/en/show-create-view/','','https://mariadb.com/kb/en/show-create-view/'),(368,'SHOW DATABASES',26,'Syntax\n------\n\nSHOW {DATABASES | SCHEMAS}\n  [LIKE \'pattern\' | WHERE expr]\n\nDescription\n-----------\n\nSHOW DATABASES lists the databases on the MariaDB server host. SHOW SCHEMAS is\na synonym for SHOW DATABASES. The LIKE clause, if present on its own,\nindicates which database names to match. The WHERE and LIKE clauses can be\ngiven to select rows using more general conditions, as discussed in Extended\nSHOW.\n\nYou see only those databases for which you have some kind of privilege, unless\nyou have the global SHOW DATABASES privilege. You can also get this list using\nthe mysqlshow command.\n\nIf the server was started with the --skip-show-database option, you cannot use\nthis statement at all unless you have the SHOW DATABASES privilege.\n\nThe list of results returned by SHOW DATABASES is based on directories in the\ndata directory, which is how MariaDB implements databases. It\'s possible that\noutput includes directories that do not correspond to actual databases.\n\nThe Information Schema SCHEMATA table also contains database information.\n\nExamples\n--------\n\nSHOW DATABASES;\n+--------------------+\n| Database           |\n+--------------------+\n| information_schema |\n| mysql              |\n| performance_schema |\n| test               |\n+--------------------+\n\nSHOW DATABASES LIKE \'m%\';\n+---------------+\n| Database (m%) |\n+---------------+\n| mysql         |\n+---------------+\n\n\n\nURL: mariadb.com/kb/en/show-databases/','','https://mariadb.com/kb/en/show-databases/'),(371,'SHOW ENGINES',26,'Syntax\n------\n\nSHOW [STORAGE] ENGINES\n\nDescription\n-----------\n\nSHOW ENGINES displays status information about the server\'s storage engines.\nThis is particularly useful for checking whether a storage engine is\nsupported, or to see what the default engine is. SHOW TABLE TYPES is a\ndeprecated synonym.\n\nThe information_schema.ENGINES table provides the same information.\n\nSince storage engines are plugins, different information about them is also\nshown in the information_schema.PLUGINS table and by the SHOW PLUGINS\nstatement.\n\nNote that both MySQL\'s InnoDB and Percona\'s XtraDB replacement are labeled as\nInnoDB. However, if XtraDB is in use, it will be specified in the COMMENT\nfield. See XtraDB and InnoDB. The same applies to FederatedX.\n\nThe output consists of the following columns:\n\n* Engine indicates the engine\'s name.\n* Support indicates whether the engine is installed, and whether it is the\ndefault engine for the current session.\n* Comment is a brief description.\n* Transactions, XA and Savepoints indicate whether transactions, XA\ntransactions and transaction savepoints are supported by the engine.\n\nExamples\n--------\n\nSHOW ENGINESG\n*************************** 1. row ***************************\n   Engine: InnoDB\n  Support: DEFAULT\n  Comment: Supports transactions, row-level locking, and foreign keys\nTransactions: YES\n     XA: YES\n Savepoints: YES\n*************************** 2. row ***************************\n   Engine: CSV\n  Support: YES\n  Comment: CSV storage engine\nTransactions: NO\n     XA: NO\n Savepoints: NO\n*************************** 3. row ***************************\n   Engine: MyISAM\n  Support: YES\n  Comment: MyISAM storage engine\nTransactions: NO\n     XA: NO\n Savepoints: NO\n*************************** 4. row ***************************\n   Engine: BLACKHOLE\n  Support: YES\n  Comment: /dev/null storage engine (anything you write to it disappears)\nTransactions: NO\n     XA: NO\n Savepoints: NO\n*************************** 5. row ***************************\n   Engine: FEDERATED\n  Support: YES\n  Comment: FederatedX pluggable storage engine\nTransactions: YES\n     XA: NO\n Savepoints: YES\n*************************** 6. row ***************************\n   Engine: MRG_MyISAM\n  Support: YES\n  Comment: Collection of identical MyISAM tables\nTransactions: NO\n     XA: NO\n Savepoints: NO\n*************************** 7. row ***************************\n   Engine: ARCHIVE\n  Support: YES\n  Comment: Archive storage engine\nTransactions: NO\n     XA: NO\n Savepoints: NO\n*************************** 8. row ***************************\n   Engine: MEMORY\n  Support: YES\n  Comment: Hash based, stored in memory, useful for temporary tables\nTransactions: NO\n     XA: NO\n Savepoints: NO\n*************************** 9. row ***************************\n   Engine: PERFORMANCE_SCHEMA\n  Support: YES\n  Comment: Performance Schema\nTransactions: NO\n     XA: NO\n Savepoints: NO\n*************************** 10. row ***************************\n   Engine: Aria\n  Support: YES\n  Comment: Crash-safe tables with MyISAM heritage\nTransactions: NO\n     XA: NO\n Savepoints: NO\n10 rows in set (0.00 sec)\n\n\n\nURL: mariadb.com/kb/en/show-engines/','','https://mariadb.com/kb/en/show-engines/'),(369,'SHOW ENGINE',26,'Syntax\n------\n\nSHOW ENGINE engine_name {STATUS | MUTEX}\n\nDescription\n-----------\n\nSHOW ENGINE displays operational information about a storage engine. The\nfollowing statements currently are supported:\n\nSHOW ENGINE INNODB STATUS\nSHOW ENGINE INNODB MUTEX\nSHOW ENGINE PERFORMANCE_SCHEMA STATUS\nSHOW ENGINE ROCKSDB STATUS\n\nIf the Sphinx Storage Engine is installed, the following is also supported:\n\nSHOW ENGINE SPHINX STATUS\n\nSee SHOW ENGINE SPHINX STATUS.\n\nOlder (and now removed) synonyms were SHOW INNODB STATUS for SHOW ENGINE\nINNODB STATUS and SHOW MUTEX STATUS for SHOW ENGINE INNODB MUTEX.\n\nSHOW ENGINE INNODB STATUS\n-------------------------\n\nSHOW ENGINE INNODB STATUS displays extensive information from the standard\nInnoDB Monitor about the state of the InnoDB storage engine. See SHOW ENGINE\nINNODB STATUS for more.\n\nSHOW ENGINE INNODB MUTEX\n------------------------\n\nSHOW ENGINE INNODB MUTEX displays InnoDB mutex statistics.\n\nThe statement displays the following output fields:\n\n* Type: Always InnoDB.\n* Name: The source file where the mutex is implemented, and the line number\n in the file where the mutex is created. The line number is dependent on the\nMariaDB version.\n* Status: This field displays the following values if UNIV_DEBUG was defined\nat compilation time (for example, in include/univ.h in the InnoDB part of the\nsource tree). Only the os_waits value is displayed if UNIV_DEBUG was not\ndefined. Without UNIV_DEBUG, the information on which the output is based is\ninsufficient to distinguish regular mutexes and mutexes that protect\n rw-locks (which allow multiple readers or a single writer). Consequently, the\n output may appear to contain multiple rows for the same mutex.\ncount indicates how many times the mutex was requested.\nspin_waits indicates how many times the spinlock had to run.\nspin_rounds indicates the number of spinlock rounds. (spin_rounds divided by\n spin_waits provides the average round count.)\nos_waits indicates the number of operating system waits. This occurs when\n the spinlock did not work (the mutex was not locked during the spinlock and\n it was necessary to yield to the operating system and wait).\nos_yields indicates the number of times a the thread trying to lock a mutex\n gave up its timeslice and yielded to the operating system (on the\n presumption that allowing other threads to run will free the mutex so that\n it can be locked).\nos_wait_times indicates the amount of time (in ms) spent in operating system\n waits, if the timed_mutexes system variable is 1 (ON). If timed_mutexes is 0\n (OFF), timing is disabled, so os_wait_times is 0. timed_mutexes is off by\n default.\n\nInformation from this statement can be used to diagnose system problems. For\nexample, large values of spin_waits and spin_rounds may indicate scalability\nproblems.\n\nThe information_schema.INNODB_MUTEXES table provides similar information.\n\nSHOW ENGINE PERFORMANCE_SCHEMA STATUS\n-------------------------------------\n\nThis statement shows how much memory is used for performance_schema tables and\ninternal buffers.\n\nThe output contains the following fields:\n\n* Type: Always performance_schema.\n* Name: The name of a table, the name of an internal buffer, or the\nperformance_schema word, followed by a dot and an attribute. Internal buffers\nnames are enclosed by parenthesis. performance_schema means that the attribute\nrefers to the whole database (it is a total). \n* Status: The value for the attribute.\n\nThe following attributes are shown, in this order, for all tables:\n\n* row_size: The memory used for an individual record. This value will never\nchange.\n* row_count: The number of rows in the table or buffer. For some tables, this\nvalue depends on a server system variable.\n* memory: For tables and performance_schema, this is the result of row_size *\nrow_count.\n\nFor internal buffers, the attributes are:\n\n* count\n* size\n\nSHOW ENGINE ROCKSDB STATUS\n--------------------------\n\nSee also MyRocks Performance Troubleshooting\n\n\n\nURL: mariadb.com/kb/en/show-engine/','','https://mariadb.com/kb/en/show-engine/'),(372,'SHOW ERRORS',26,'Syntax\n------\n\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW ERRORS [LIMIT row_count OFFSET offset]\nSHOW COUNT(*) ERRORS\n\nDescription\n-----------\n\nThis statement is similar to SHOW WARNINGS, except that instead of displaying\nerrors, warnings, and notes, it displays only errors.\n\nThe LIMIT clause has the same syntax as for the SELECT statement.\n\nThe SHOW COUNT(*) ERRORS statement displays the number of errors. You can also\nretrieve this number from the error_count variable.\n\nSHOW COUNT(*) ERRORS;\nSELECT @@error_count;\n\nThe value of error_count might be greater than the number of messages\ndisplayed by SHOW WARNINGS if the max_error_count system variable is set so\nlow that not all messages are stored.\n\nFor a list of MariaDB error codes, see MariaDB Error Codes.\n\nExamples\n--------\n\nSELECT f();\nERROR 1305 (42000): FUNCTION f does not exist\n\nSHOW COUNT(*) ERRORS;\n+-----------------------+\n| @@session.error_count |\n+-----------------------+\n|                     1 |\n+-----------------------+\n\nSHOW ERRORS;\n+-------+------+---------------------------+\n| Level | Code | Message                   |\n+-------+------+---------------------------+\n| Error | 1305 | FUNCTION f does not exist |\n+-------+------+---------------------------+\n\n\n\nURL: mariadb.com/kb/en/show-errors/','','https://mariadb.com/kb/en/show-errors/'),(370,'SHOW ENGINE INNODB STATUS',26,'SHOW ENGINE INNODB STATUS is a specific form of the SHOW ENGINE\nstatement that displays the InnoDB Monitor output, which is extensive InnoDB\ninformation which can be useful in diagnosing problems.\n\nThe following sections are displayed\n\n* Status: Shows the timestamp, monitor name and the number of seconds, or the\nelapsed time between the current time and the time the InnoDB Monitor output\nwas last displayed. The per-second averages are based upon this time.\n* BACKGROUND THREAD: srv_master_thread lines show work performed by the main\nbackground thread.\n* SEMAPHORES: Threads waiting for a semaphore and stats on how the number of\ntimes threads have needed a spin or a wait on a mutex or rw-lock semaphore. If\nthis number of threads is large, there may be I/O or contention issues.\nReducing the size of the innodb_thread_concurrency system variable may help if\ncontention is related to thread scheduling. Spin rounds per wait shows the\nnumber of spinlock rounds per OS wait for a mutex. \n* LATEST FOREIGN KEY ERROR: Only shown if there has been a foreign key\nconstraint error, it displays the failed statement and information about the\nconstraint and the related tables.\n* LATEST DETECTED DEADLOCK: Only shown if there has been a deadlock, it\ndisplays the transactions involved in the deadlock and the statements being\nexecuted, held and required locked and the transaction rolled back to.\n* TRANSACTIONS: The output of this section can help identify lock contention,\nas well as reasons for the deadlocks.\n* FILE I/O: InnoDB thread information as well as pending I/O operations and\nI/O performance statistics.\n* INSERT BUFFER AND ADAPTIVE HASH INDEX: InnoDB insert buffer (old name for\nthe change buffer) and adaptive hash index status information, including the\nnumber of each type of operation performed, and adaptive hash index\nperformance.\n* LOG: InnoDB log information, including current log sequence number, how far\nthe log has been flushed to disk, the position at which InnoDB last took a\ncheckpoint, pending writes and write performance statistics.\n* BUFFER POOL AND MEMORY: Information on buffer pool pages read and written,\nwhich allows you to see the number of data file I/O operations performed by\nyour queries. See InnoDB Buffer Pool for more. Similar information is also\navailable from the INFORMATION_SCHEMA.INNODB_BUFFER_POOL_STATS table.\n* ROW OPERATIONS:Information about the main thread, including the number and\nperformance rate for each type of row operation.\n\nIf the innodb_status_output_locks system variable is set to 1, extended lock\ninformation will be displayed.\n\nExample output:\n\n=====================================\n2019-09-06 12:44:13 0x7f93cc236700 INNODB MONITOR OUTPUT\n=====================================\nPer second averages calculated from the last 4 seconds\n-----------------\nBACKGROUND THREAD\n-----------------\nsrv_master_thread loops: 2 srv_active, 0 srv_shutdown, 83698 srv_idle\nsrv_master_thread log flush and writes: 83682\n----------\nSEMAPHORES\n----------\nOS WAIT ARRAY INFO: reservation count 15\nOS WAIT ARRAY INFO: signal count 8\nRW-shared spins 0, rounds 20, OS waits 7\nRW-excl spins 0, rounds 0, OS waits 0\nRW-sx spins 0, rounds 0, OS waits 0\nSpin rounds per wait: 20.00 RW-shared, 0.00 RW-excl, 0.00 RW-sx\n------------\nTRANSACTIONS\n------------\nTrx id counter 236\nPurge done for trx\'s n:o < 236 undo n:o < 0 state: running\nHistory list length 22\nLIST OF TRANSACTIONS FOR EACH SESSION:\n---TRANSACTION 421747401994584, not started\n0 lock struct(s), heap size 1136, 0 row lock(s)\n---TRANSACTION 421747401990328, not started\n0 lock struct(s), heap size 1136, 0 row lock(s)\n--------\nFILE I/O\n--------\nI/O thread 0 state: waiting for completed aio requests (insert buffer thread)\nI/O thread 1 state: waiting for completed aio requests (log thread)\nI/O thread 2 state: waiting for completed aio requests (read thread)\nI/O thread 3 state: waiting for completed aio requests (read thread)\nI/O thread 4 state: waiting for completed aio requests (read thread)\nI/O thread 5 state: waiting for completed aio requests (read thread)\nI/O thread 6 state: waiting for completed aio requests (write thread)\nI/O thread 7 state: waiting for completed aio requests (write thread)\nI/O thread 8 state: waiting for completed aio requests (write thread)\nI/O thread 9 state: waiting for completed aio requests (write thread)\nPending normal aio reads: [0, 0, 0, 0] , aio writes: [0, 0, 0, 0] ,\n ibuf aio reads:, log i/o\'s:, sync i/o\'s:\nPending flushes (fsync) log: 0; buffer pool: 0\n286 OS file reads, 171 OS file writes, 22 OS fsyncs\n0.00 reads/s, 0 avg bytes/read, 0.00 writes/s, 0.00 fsyncs/s\n-------------------------------------\nINSERT BUFFER AND ADAPTIVE HASH INDEX\n-------------------------------------\nIbuf: size 1, free list len 0, seg size 2, 0 merges\nmerged operations:\n insert 0, delete mark 0, delete 0\ndiscarded operations:\n insert 0, delete mark 0, delete 0\nHash table size 34679, node heap has 0 buffer(s)\nHash table size 34679, node heap has 0 buffer(s)\nHash table size 34679, node heap has 0 buffer(s)\nHash table size 34679, node heap has 0 buffer(s)\nHash table size 34679, node heap has 0 buffer(s)\nHash table size 34679, node heap has 0 buffer(s)\nHash table size 34679, node heap has 0 buffer(s)\nHash table size 34679, node heap has 0 buffer(s)\n0.00 hash searches/s, 0.00 non-hash searches/s\n---\nLOG\n---\nLog sequence number 445926\nLog flushed up to   445926\nPages flushed up to 445926\nLast checkpoint at  445917\n0 pending log flushes, 0 pending chkp writes\n18 log i/o\'s done, 0.00 log i/o\'s/second\n----------------------\nBUFFER POOL AND MEMORY\n----------------------\nTotal large memory allocated 167772160\nDictionary memory allocated 50768\nBuffer pool size   8012\nFree buffers       7611\nDatabase pages     401\nOld database pages 0\nModified db pages  0\nPercent of dirty pages(LRU & free pages): 0.000\nMax dirty pages percent: 75.000\nPending reads 0\nPending writes: LRU 0, flush list 0, single page 0\nPages made young 0, not young 0\n0.00 youngs/s, 0.00 non-youngs/s\nPages read 264, created 137, written 156\n0.00 reads/s, 0.00 creates/s, 0.00 writes/s\nNo buffer pool page gets since the last printout\nPages read ahead 0.00/s, evicted without access 0.00/s, Random read ahead\n0.00/s\nLRU len: 401, unzip_LRU len: 0\nI/O sum[0]:cur[0], unzip sum[0]:cur[0]\n--------------\nROW OPERATIONS\n--------------\n0 queries inside InnoDB, 0 queries in queue\n0 read views open inside InnoDB\nProcess ID=4267, Main thread ID=140272021272320, state: sleeping\nNumber of rows inserted 1, updated 0, deleted 0, read 1\n0.00 inserts/s, 0.00 updates/s, 0.00 deletes/s, 0.00 reads/s\nNumber of system rows inserted 0, updated 0, deleted 0, read 0\n0.00 inserts/s, 0.00 updates/s, 0.00 deletes/s, 0.00 reads/s\n----------------------------\nEND OF INNODB MONITOR OUTPUT\n============================\n\n\n\nURL: mariadb.com/kb/en/show-engine-innodb-status/','','https://mariadb.com/kb/en/show-engine-innodb-status/'),(373,'SHOW EVENTS',26,'Syntax\n------\n\nSHOW EVENTS [{FROM | IN} schema_name]\n  [LIKE \'pattern\' | WHERE expr]\n\nDescription\n-----------\n\nShows information about Event Manager events (created with CREATE EVENT).\nRequires the EVENT privilege. Without any arguments, SHOW EVENTS lists all of\nthe events in the current schema:\n\nSELECT CURRENT_USER(), SCHEMA();\n+----------------+----------+\n| CURRENT_USER() | SCHEMA() |\n+----------------+----------+\n| jon@ghidora    | myschema |\n+----------------+----------+\n\nSHOW EVENTSG\n*************************** 1. row ***************************\n         Db: myschema\n        Name: e_daily\n      Definer: jon@ghidora\n     Time zone: SYSTEM\n        Type: RECURRING\n     Execute at: NULL\n   Interval value: 10\n   Interval field: SECOND\n       Starts: 2006-02-09 10:41:23\n        Ends: NULL\n       Status: ENABLED\n     Originator: 0\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n Database Collation: latin1_swedish_ci\n\nTo see the event action, use SHOW CREATE EVENT instead, or look at the\ninformation_schema.EVENTS table.\n\nTo see events for a specific schema, use the FROM clause. For example, to see\nevents for the test schema, use the following statement:\n\nSHOW EVENTS FROM test;\n\nThe LIKE clause, if present, indicates which event names to match. The WHERE\nclause can be given to select rows using more general conditions, as discussed\nin Extended Show.\n\n\n\nURL: mariadb.com/kb/en/show-events/','','https://mariadb.com/kb/en/show-events/'),(374,'SHOW EXPLAIN',26,'Syntax\n------\n\nSHOW EXPLAIN FOR <thread_id>;\n\nDescription\n-----------\n\nThe SHOW EXPLAIN command allows one to get an EXPLAIN (that is, a description\nof a query plan) of a query running in a certain thread.\n\nSHOW EXPLAIN FOR <thread_id>;\n\nwill produce an EXPLAIN output for the query that thread number thread_id is\nrunning. The thread id can be obtained with SHOW PROCESSLIST.\n\nSHOW EXPLAIN FOR 1;\n+------+-------------+-------+-------+---------------+------+---------+------+-\n-------+-------------+\n| id   | select_type | table | type  | possible_keys | key  | key_len | ref  |\nrows    | Extra       |\n+------+-------------+-------+-------+---------------+------+---------+------+-\n-------+-------------+\n|    1 | SIMPLE      | tbl   | index | NULL          | a    | 5       | NULL |\n1000107 | Using index |\n+------+-------------+-------+-------+---------------+------+---------+------+-\n-------+-------------+\n1 row in set, 1 warning (0.00 sec)\n\nThe output is always accompanied with a warning which shows the query the\ntarget thread is running (this shows what the EXPLAIN is for):\n\nSHOW WARNINGS;\n+-------+------+------------------------+\n| Level | Code | Message                |\n+-------+------+------------------------+\n| Note  | 1003 | select sum(a) from tbl |\n+-------+------+------------------------+\n1 row in set (0.00 sec)\n\nPossible Errors\n---------------\n\nThe output can be only produced if the target thread is currently running a\nquery, which has a ready query plan. If this is not the case, the output will\nbe:\n\nSHOW EXPLAIN FOR 2;\nERROR 1932 (HY000): Target is not running an EXPLAINable command\n\nYou will get this error when:\n\n* the target thread is not running a command for which one can run EXPLAIN\n* the target thread is running a command for which one can run EXPLAIN, but\nthere is no query plan yet (for example, tables are open and locks are\n acquired before the query plan is produced)\n\nDifferences Between SHOW EXPLAIN and EXPLAIN Outputs\n----------------------------------------------------\n\nBackground\n----------\n\nIn MySQL, EXPLAIN execution takes a slightly different route from the way the\nreal query (typically the SELECT) is optimized. This is unfortunate, and has\ncaused a number of bugs in EXPLAIN. (For example, see MDEV-326, MDEV-410, and\nlp:1013343. lp:992942 is not directly about EXPLAIN, but it also would not\nhave existed if MySQL didn\'t try to delete parts of a query plan in the middle\nof the query)\n\nSHOW EXPLAIN examines a running SELECT, and hence its output may be slightly\ndifferent from what EXPLAIN SELECT would produce. We did our best to make sure\nthat either the difference is negligible, or SHOW EXPLAIN\'s output is closer\nto reality than EXPLAIN\'s output.\n\nList of Recorded Differences\n----------------------------\n\n* SHOW EXPLAIN may have Extra=\'no matching row in const table\', where  EXPLAIN\nwould produce Extra=\'Impossible WHERE ...\'\n* For queries with subqueries, SHOW EXPLAIN may print select_type==PRIMARY\nwhere regular EXPLAIN used to print select_type==SIMPLE, or vice versa.\n\nRequired Permissions\n--------------------\n\nRunning SHOW EXPLAIN requires the same permissions as running SHOW PROCESSLIST\nwould.\n\n\n\nURL: mariadb.com/kb/en/show-explain/','','https://mariadb.com/kb/en/show-explain/'),(376,'SHOW FUNCTION STATUS',26,'Syntax\n------\n\nSHOW FUNCTION STATUS\n  [LIKE \'pattern\' | WHERE expr]\n\nDescription\n-----------\n\nThis statement is similar to SHOW PROCEDURE STATUS but for stored functions.\n\nThe LIKE clause, if present on its own, indicates which function names to\nmatch.\n\nThe WHERE and LIKE clauses can be given to select rows using more general\nconditions, as discussed in Extended SHOW.\n\nThe information_schema.ROUTINES table contains more detailed information.\n\nExamples\n--------\n\nShowing all stored functions:\n\nSHOW FUNCTION STATUSG\n*************************** 1. row ***************************\n         Db: test\n        Name: VatCents\n        Type: FUNCTION\n      Definer: root@localhost\n      Modified: 2013-06-01 12:40:31\n      Created: 2013-06-01 12:40:31\n   Security_type: DEFINER\n      Comment:\ncharacter_set_client: utf8\ncollation_connection: utf8_general_ci\n Database Collation: latin1_swedish_ci\n\nStored functions whose name starts with \'V\':\n\nSHOW FUNCTION STATUS LIKE \'V%\' G\n*************************** 1. row ***************************\n         Db: test\n        Name: VatCents\n        Type: FUNCTION\n      Definer: root@localhost\n      Modified: 2013-06-01 12:40:31\n      Created: 2013-06-01 12:40:31\n   Security_type: DEFINER\n      Comment:\ncharacter_set_client: utf8\ncollation_connection: utf8_general_ci\n Database Collation: latin1_swedish_ci\n\nStored functions with a security type of \'DEFINER\':\n\nSHOW FUNCTION STATUS WHERE Security_type LIKE \'DEFINER\' G\n*************************** 1. row ***************************\n         Db: test\n        Name: VatCents\n        Type: FUNCTION\n      Definer: root@localhost\n      Modified: 2013-06-01 12:40:31\n      Created: 2013-06-01 12:40:31\n   Security_type: DEFINER\n      Comment:\ncharacter_set_client: utf8\ncollation_connection: utf8_general_ci\n Database Collation: latin1_swedish_ci\n\n\n\nURL: mariadb.com/kb/en/show-function-status/','','https://mariadb.com/kb/en/show-function-status/'),(377,'SHOW GRANTS',26,'Syntax\n------\n\nSHOW GRANTS [FOR user|role]\n\nDescription\n-----------\n\nThe SHOW GRANTS statement lists privileges granted to a particular user or\nrole.\n\nUsers\n-----\n\nThe statement lists the GRANT statement or statements that must be issued to\nduplicate the privileges that are granted to a MariaDB user account. The\naccount is named using the same format as for the GRANT statement; for\nexample, \'jeffrey\'@\'localhost\'. If you specify only the user name part of the\naccount name, a host name part of \'%\' is used. For additional information\nabout specifying account names, see GRANT.\n\nSHOW GRANTS FOR \'root\'@\'localhost\';\n+---------------------------------------------------------------------+\n| Grants for root@localhost                                           |\n+---------------------------------------------------------------------+\n| GRANT ALL PRIVILEGES ON *.* TO \'root\'@\'localhost\' WITH GRANT OPTION |\n+---------------------------------------------------------------------+\n\nTo list the privileges granted to the account that you are using to connect to\nthe server, you can use any of the following statements:\n\nSHOW GRANTS;\nSHOW GRANTS FOR CURRENT_USER;\nSHOW GRANTS FOR CURRENT_USER();\n\nIf SHOW GRANTS FOR CURRENT_USER (or any of the equivalent syntaxes) is used in\nDEFINER context (such as within a stored procedure that is defined with  SQL\nSECURITY DEFINER), the grants displayed are those of the definer and not the\ninvoker.\n\nNote that the DELETE HISTORY privilege, introduced in MariaDB 10.3.4, was\ndisplayed as DELETE VERSIONING ROWS when running SHOW GRANTS until MariaDB\n10.3.15 (MDEV-17655).\n\nRoles\n-----\n\nSHOW GRANTS can also be used to view the privileges granted to a role.\n\nExample\n-------\n\nSHOW GRANTS FOR journalist;\n+------------------------------------------+\n| Grants for journalist                    |\n+------------------------------------------+\n| GRANT USAGE ON *.* TO \'journalist\'       |\n| GRANT DELETE ON `test`.* TO \'journalist\' |\n+------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/show-grants/','','https://mariadb.com/kb/en/show-grants/'),(379,'SHOW LOCALES',26,'SHOW LOCALES was introduced as part of the Information Schema plugin\nextension.\n\nSHOW LOCALES is used to return locales information as part of the Locales\nplugin. While the information_schema.LOCALES table has 8 columns, the SHOW\nLOCALES statement will only display 4 of them:\n\nExample\n-------\n\nSHOW LOCALES;\n+-----+-------+-------------------------------------+------------------------+\n| Id  | Name  | Description                         | Error_Message_Language |\n+-----+-------+-------------------------------------+------------------------+\n|   0 | en_US | English - United States             | english                |\n|   1 | en_GB | English - United Kingdom            | english                |\n|   2 | ja_JP | Japanese - Japan                    | japanese               |\n|   3 | sv_SE | Swedish - Sweden                    | swedish                |\n...\n\n\n\nURL: mariadb.com/kb/en/show-locales/','','https://mariadb.com/kb/en/show-locales/'),(380,'SHOW MASTER STATUS',26,'Syntax\n------\n\nSHOW MASTER STATUS\nSHOW BINLOG STATUS -- From MariaDB 10.5.2\n\nDescription\n-----------\n\nProvides status information about the binary log files of the primary.\n\nThis statement requires the SUPER privilege, the REPLICATION_CLIENT privilege,\nor, from MariaDB 10.5.2, the BINLOG MONITOR privilege.\n\nTo see information about the current GTIDs in the binary log, use the\ngtid_binlog_pos variable.\n\nSHOW MASTER STATUS was renamed to SHOW BINLOG STATUS in MariaDB 10.5.2, but\nthe old name remains an alias for compatibility purposes.\n\nExample\n-------\n\nSHOW MASTER STATUS;\n+--------------------+----------+--------------+------------------+\n| File               | Position | Binlog_Do_DB | Binlog_Ignore_DB |\n+--------------------+----------+--------------+------------------+\n| mariadb-bin.000016 |      475 |              |                  |\n+--------------------+----------+--------------+------------------+\nSELECT @@global.gtid_binlog_pos;\n+--------------------------+\n| @@global.gtid_binlog_pos |\n+--------------------------+\n| 0-1-2                    |\n+--------------------------+\n\n\n\nURL: mariadb.com/kb/en/show-master-status/','','https://mariadb.com/kb/en/show-master-status/'),(381,'SHOW OPEN TABLES',26,'Syntax\n------\n\nSHOW OPEN TABLES [FROM db_name]\n  [LIKE \'pattern\' | WHERE expr]\n\nDescription\n-----------\n\nSHOW OPEN TABLES lists the non-TEMPORARY tables that are currently open in the\ntable cache. See http://dev.mysql.com/doc/refman/5.1/en/table-cache.html.\n\nThe FROM and LIKE clauses may be used.\n\nThe FROM clause, if present, restricts the tables shown to those present in\nthe db_name database.\n\nThe LIKE clause, if present on its own, indicates which table names to match.\nThe WHERE and LIKE clauses can be given to select rows using more general\nconditions, as discussed in Extended SHOW.\n\nThe following information is returned:\n\n+---------------------------+-------------------------------------------------+\n| Column                    | Description                                     |\n+---------------------------+-------------------------------------------------+\n| Database                  | Database name.                                  |\n+---------------------------+-------------------------------------------------+\n| Name                      | Table name.                                     |\n+---------------------------+-------------------------------------------------+\n| In_use                    | Number of  table instances being used.          |\n+---------------------------+-------------------------------------------------+\n| Name_locked               | 1 if the table is name-locked, e.g. if it is    |\n|                           | being dropped or renamed, otherwise 0.          |\n+---------------------------+-------------------------------------------------+\n\nBefore MariaDB 5.5, each use of, for example, LOCK TABLE ... WRITE would\nincrement In_use for that table. With the implementation of the metadata\nlocking improvements in MariaDB 5.5, LOCK TABLE... WRITE acquires a strong MDL\nlock, and concurrent connections will wait on this MDL lock, so any subsequent\nLOCK TABLE... WRITE will not increment In_use.\n\nExample\n-------\n\nSHOW OPEN TABLES;\n+----------+---------------------------+--------+-------------+\n| Database | Table                     | In_use | Name_locked |\n+----------+---------------------------+--------+-------------+\n...\n| test     | xjson                     |      0 |           0 |\n| test     | jauthor                   |      0 |           0 |\n| test     | locks                     |      1 |           0 |\n...\n+----------+---------------------------+--------+-------------+\n\n\n\nURL: mariadb.com/kb/en/show-open-tables/','','https://mariadb.com/kb/en/show-open-tables/'),(378,'SHOW INDEX',26,'Syntax\n------\n\nSHOW {INDEX | INDEXES | KEYS} \n FROM tbl_name [FROM db_name]\n [WHERE expr]\n\nDescription\n-----------\n\nSHOW INDEX returns table index information. The format resembles that of the\nSQLStatistics call in ODBC.\n\nYou can use db_name.tbl_name as an alternative to the tbl_name FROM db_name\nsyntax. These two statements are equivalent:\n\nSHOW INDEX FROM mytable FROM mydb;\nSHOW INDEX FROM mydb.mytable;\n\nSHOW KEYS and SHOW INDEXES are synonyms for SHOW INDEX.\n\nYou can also list a table\'s indexes with the mariadb-show/mysqlshow command:\n\nmysqlshow -k db_name tbl_name\n\nThe information_schema.STATISTICS table stores similar information.\n\nThe following fields are returned by SHOW INDEX.\n\n+------------------------+----------------------------------------------------+\n| Field                  | Description                                        |\n+------------------------+----------------------------------------------------+\n| Table                  | Table name                                         |\n+------------------------+----------------------------------------------------+\n| Non_unique             | 1 if the index permits duplicate values, 0 if      |\n|                        | values must be unique.                             |\n+------------------------+----------------------------------------------------+\n| Key_name               | Index name. The primary key is always named        |\n|                        | PRIMARY.                                           |\n+------------------------+----------------------------------------------------+\n| Seq_in_index           | The column\'s sequence in the index, beginning      |\n|                        | with 1.                                            |\n+------------------------+----------------------------------------------------+\n| Column_name            | Column name.                                       |\n+------------------------+----------------------------------------------------+\n| Collation              | Either A, if the column is sorted in ascending     |\n|                        | order in the index, or NULL if it\'s not sorted.    |\n+------------------------+----------------------------------------------------+\n| Cardinality            | Estimated number of unique values in the index.    |\n|                        | The cardinality statistics are calculated at       |\n|                        | various times, and can help the optimizer make     |\n|                        | improved decisions.                                |\n+------------------------+----------------------------------------------------+\n| Sub_part               | NULL if the entire column is included in the       |\n|                        | index, or the number of included characters if     |\n|                        | not.                                               |\n+------------------------+----------------------------------------------------+\n| Packed                 | NULL if the index is not packed, otherwise how     |\n|                        | the index is packed.                               |\n+------------------------+----------------------------------------------------+\n| Null                   | NULL if NULL values are permitted in the column,   |\n|                        | an empty string if NULLs are not permitted.        |\n+------------------------+----------------------------------------------------+\n| Index_type             | The index type, which can be BTREE, FULLTEXT,      |\n|                        | HASH or RTREE. See Storage Engine Index Types.     |\n+------------------------+----------------------------------------------------+\n| Comment                | Other information, such as whether the index is    |\n|                        | disabled.                                          |\n+------------------------+----------------------------------------------------+\n| Index_comment          | Contents of the COMMENT attribute when the index   |\n|                        | was created.                                       |\n+------------------------+----------------------------------------------------+\n| Ignored                | Whether or not an index will be ignored by the     |\n|                        | optimizer. See Ignored Indexes. From MariaDB       |\n|                        | 10.6.0.                                            |\n+------------------------+----------------------------------------------------+\n\nThe WHERE and LIKE clauses can be given to select rows using more general\nconditions, as discussed in Extended SHOW.\n\nExamples\n--------\n\nCREATE TABLE IF NOT EXISTS `employees_example` (\n `id` int(11) NOT NULL AUTO_INCREMENT,\n `first_name` varchar(30) NOT NULL,\n `last_name` varchar(40) NOT NULL,\n `position` varchar(25) NOT NULL,\n `home_address` varchar(50) NOT NULL,\n `home_phone` varchar(12) NOT NULL,\n `employee_code` varchar(25) NOT NULL,\n PRIMARY KEY (`id`),\n UNIQUE KEY `employee_code` (`employee_code`),\n KEY `first_name` (`first_name`,`last_name`)\n) ENGINE=Aria;\n\nINSERT INTO `employees_example` (`first_name`, `last_name`, `position`,\n`home_address`, `home_phone`, `employee_code`)\n VALUES\n (\'Mustapha\', \'Mond\', \'Chief Executive Officer\', \'692 Promiscuous Plaza\',\n\'326-555-3492\', \'MM1\'),\n (\'Henry\', \'Foster\', \'Store Manager\', \'314 Savage Circle\', \'326-555-3847\',\n\'HF1\'),\n (\'Bernard\', \'Marx\', \'Cashier\', \'1240 Ambient Avenue\', \'326-555-8456\', \'BM1\'),\n (\'Lenina\', \'Crowne\', \'Cashier\', \'281 Bumblepuppy Boulevard\', \'328-555-2349\',\n\'LC1\'),\n (\'Fanny\', \'Crowne\', \'Restocker\', \'1023 Bokanovsky Lane\', \'326-555-6329\',\n\'FC1\'),\n (\'Helmholtz\', \'Watson\', \'Janitor\', \'944 Soma Court\', \'329-555-2478\', \'HW1\');\n\nSHOW INDEXES FROM employees_exampleG\n*************************** 1. row ***************************\n    Table: employees_example\n Non_unique: 0\n  Key_name: PRIMARY\n Seq_in_index: 1\n Column_name: id\n  Collation: A\n Cardinality: 6\n  Sub_part: NULL\n   Packed: NULL\n    Null:\n Index_type: BTREE\n   Comment:\nIndex_comment: \n   Ignored: NO\n*************************** 2. row ***************************\n    Table: employees_example\n Non_unique: 0\n  Key_name: employee_code\n Seq_in_index: 1\n Column_name: employee_code\n  Collation: A\n Cardinality: 6\n  Sub_part: NULL\n   Packed: NULL\n    Null:\n Index_type: BTREE\n   Comment:\nIndex_comment: \n   Ignored: NO\n*************************** 3. row ***************************\n    Table: employees_example\n Non_unique: 1\n  Key_name: first_name\n Seq_in_index: 1\n Column_name: first_name\n  Collation: A\n Cardinality: NULL\n  Sub_part: NULL\n   Packed: NULL\n    Null:\n Index_type: BTREE\n   Comment:\nIndex_comment: \n   Ignored: NO\n*************************** 4. row ***************************\n    Table: employees_example\n Non_unique: 1\n  Key_name: first_name\n Seq_in_index: 2\n Column_name: last_name\n  Collation: A\n Cardinality: NULL\n  Sub_part: NULL\n   Packed: NULL\n    Null:\n Index_type: BTREE\n   Comment:\nIndex_comment: \n   Ignored: NO\n\n\n\nURL: mariadb.com/kb/en/show-index/','','https://mariadb.com/kb/en/show-index/'),(382,'SHOW PACKAGE BODY STATUS',26,'MariaDB starting with 10.3.5\n----------------------------\nOracle-style packages were introduced in MariaDB 10.3.5.\n\nSyntax\n------\n\nSHOW PACKAGE BODY STATUS\n  [LIKE \'pattern\' | WHERE expr]\n\nDescription\n-----------\n\nThe SHOW PACKAGE BODY STATUS statement returns characteristics of stored\npackage bodies (implementations), such as the database, name, type, creator,\ncreation and modification dates, and character set information. A similar\nstatement, SHOW PACKAGE STATUS, displays information about stored package\nspecifications.\n\nThe LIKE clause, if present, indicates which package names to match. The WHERE\nand LIKE clauses can be given to select rows using more general conditions, as\ndiscussed in Extended SHOW.\n\nThe ROUTINES table in the INFORMATION_SCHEMA database contains more detailed\ninformation.\n\nExamples\n--------\n\nSHOW PACKAGE BODY STATUS LIKE \'pkg1\'G\n*************************** 1. row ***************************\n         Db: test\n        Name: pkg1\n        Type: PACKAGE BODY\n      Definer: root@localhost\n      Modified: 2018-02-27 14:44:14\n      Created: 2018-02-27 14:44:14\n   Security_type: DEFINER\n      Comment: This is my first package body\ncharacter_set_client: utf8\ncollation_connection: utf8_general_ci\n Database Collation: latin1_swedish_ci\n\n\n\nURL: mariadb.com/kb/en/show-package-body-status/','','https://mariadb.com/kb/en/show-package-body-status/'),(383,'SHOW PACKAGE STATUS',26,'MariaDB starting with 10.3.5\n----------------------------\nOracle-style packages were introduced in MariaDB 10.3.5.\n\nSyntax\n------\n\nSHOW PACKAGE STATUS\n  [LIKE \'pattern\' | WHERE expr]\n\nDescription\n-----------\n\nThe SHOW PACKAGE STATUS statement returns characteristics of stored package\nspecifications, such as the database, name, type, creator, creation and\nmodification dates, and character set information. A similar statement, SHOW\nPACKAGE BODY STATUS, displays information about stored package bodies (i.e.\nimplementations).\n\nThe LIKE clause, if present, indicates which package names to match. The WHERE\nand LIKE clauses can be given to select rows using more general conditions, as\ndiscussed in Extended SHOW.\n\nThe ROUTINES table in the INFORMATION_SCHEMA database contains more detailed\ninformation.\n\nExamples\n--------\n\nSHOW PACKAGE STATUS LIKE \'pkg1\'G\n*************************** 1. row ***************************\n         Db: test\n        Name: pkg1\n        Type: PACKAGE\n      Definer: root@localhost\n      Modified: 2018-02-27 14:38:15\n      Created: 2018-02-27 14:38:15\n   Security_type: DEFINER\n      Comment: This is my first package\ncharacter_set_client: utf8\ncollation_connection: utf8_general_ci\n Database Collation: latin1_swedish_ci\n\n\n\nURL: mariadb.com/kb/en/show-package-status/','','https://mariadb.com/kb/en/show-package-status/'),(384,'SHOW PLUGINS',26,'Syntax\n------\n\nSHOW PLUGINS;\n\nDescription\n-----------\n\nSHOW PLUGINS displays information about installed plugins. The Library column\nindicates the plugin library - if it is NULL, the plugin is built-in and\ncannot be uninstalled.\n\nThe PLUGINS table in the information_schema database contains more detailed\ninformation.\n\nFor specific information about storage engines (a particular type of plugin),\nsee the information_schema.ENGINES table and the SHOW ENGINES statement.\n\nExamples\n--------\n\nSHOW PLUGINS;\n+----------------------------+----------+--------------------+-------------+---\n-----+\n| Name                       | Status   | Type               | Library     |\nLicense |\n+----------------------------+----------+--------------------+-------------+---\n-----+\n| binlog                     | ACTIVE   | STORAGE ENGINE     | NULL        |\nGPL     |\n| mysql_native_password      | ACTIVE   | AUTHENTICATION     | NULL        |\nGPL     |\n| mysql_old_password         | ACTIVE   | AUTHENTICATION     | NULL        |\nGPL     |\n| MRG_MyISAM                 | ACTIVE   | STORAGE ENGINE     | NULL        |\nGPL     |\n| MyISAM                     | ACTIVE   | STORAGE ENGINE     | NULL        |\nGPL     |\n| CSV                        | ACTIVE   | STORAGE ENGINE     | NULL        |\nGPL     |\n| MEMORY                     | ACTIVE   | STORAGE ENGINE     | NULL        |\nGPL     |\n| FEDERATED                  | ACTIVE   | STORAGE ENGINE     | NULL        |\nGPL     |\n| PERFORMANCE_SCHEMA         | ACTIVE   | STORAGE ENGINE     | NULL        |\nGPL     |\n| Aria                       | ACTIVE   | STORAGE ENGINE     | NULL        |\nGPL     |\n| InnoDB                     | ACTIVE   | STORAGE ENGINE     | NULL        |\nGPL     |\n| INNODB_TRX                 | ACTIVE   | INFORMATION SCHEMA | NULL        |\nGPL     |\n...\n| INNODB_SYS_FOREIGN         | ACTIVE   | INFORMATION SCHEMA | NULL        |\nGPL     |\n| INNODB_SYS_FOREIGN_COLS    | ACTIVE   | INFORMATION SCHEMA | NULL        |\nGPL     |\n| SPHINX                     | ACTIVE   | STORAGE ENGINE     | NULL        |\nGPL     |\n| ARCHIVE                    | ACTIVE   | STORAGE ENGINE     | NULL        |\nGPL     |\n| BLACKHOLE                  | ACTIVE   | STORAGE ENGINE     | NULL        |\nGPL     |\n| FEEDBACK                   | DISABLED | INFORMATION SCHEMA | NULL        |\nGPL     |\n| partition                  | ACTIVE   | STORAGE ENGINE     | NULL        |\nGPL     |\n| pam                        | ACTIVE   | AUTHENTICATION     | auth_pam.so |\nGPL     |\n+----------------------------+----------+--------------------+-------------+---\n-----+\n\n\n\nURL: mariadb.com/kb/en/show-plugins/','','https://mariadb.com/kb/en/show-plugins/'),(385,'SHOW PLUGINS SONAME',26,'Syntax\n------\n\nSHOW PLUGINS SONAME { library | LIKE \'pattern\' | WHERE expr };\n\nDescription\n-----------\n\nSHOW PLUGINS SONAME displays information about compiled-in and all server\nplugins in the plugin_dir directory, including plugins that haven\'t been\ninstalled.\n\nExamples\n--------\n\nSHOW PLUGINS SONAME \'ha_example.so\';\n+----------+---------------+----------------+---------------+---------+\n| Name     | Status        | Type           | Library       | License |\n+----------+---------------+----------------+---------------+---------+\n| EXAMPLE  | NOT INSTALLED | STORAGE ENGINE | ha_example.so | GPL     |\n| UNUSABLE | NOT INSTALLED | DAEMON         | ha_example.so | GPL     |\n+----------+---------------+----------------+---------------+---------+\n\nThere is also a corresponding information_schema table, called ALL_PLUGINS,\nwhich contains more complete information.\n\n\n\nURL: mariadb.com/kb/en/show-plugins-soname/','','https://mariadb.com/kb/en/show-plugins-soname/'),(387,'SHOW PROCEDURE CODE',26,'Syntax\n------\n\nSHOW PROCEDURE CODE proc_name\n\nDescription\n-----------\n\nThis statement is a MariaDB extension that is available only for servers that\nhave been built with debugging support. It displays a representation of the\ninternal implementation of the named stored procedure. A similar statement,\nSHOW FUNCTION CODE, displays information about stored functions.\n\nBoth statements require that you be the owner of the routine or have SELECT\naccess to the mysql.proc table.\n\nIf the named routine is available, each statement produces a result set. Each\nrow in the result set corresponds to one \"instruction\" in the routine. The\nfirst column is Pos, which is an ordinal number beginning with 0. The second\ncolumn is Instruction, which contains an SQL statement (usually changed from\nthe original source), or a directive which has meaning only to the\nstored-routine handler.\n\nExamples\n--------\n\nDELIMITER //\n\nCREATE PROCEDURE p1 ()\n BEGIN\n  DECLARE fanta INT DEFAULT 55;\n  DROP TABLE t2;\n  LOOP\n   INSERT INTO t3 VALUES (fanta);\n   END LOOP;\n END//\nQuery OK, 0 rows affected (0.00 sec)\n\nSHOW PROCEDURE CODE p1//\n+-----+----------------------------------------+\n| Pos | Instruction                            |\n+-----+----------------------------------------+\n|   0 | set fanta@0 55                         |\n|   1 | stmt 9 \"DROP TABLE t2\"                 |\n|   2 | stmt 5 \"INSERT INTO t3 VALUES (fanta)\" |\n|   3 | jump 2                                 |\n+-----+----------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/show-procedure-code/','','https://mariadb.com/kb/en/show-procedure-code/'),(388,'SHOW PROCEDURE STATUS',26,'Syntax\n------\n\nSHOW PROCEDURE STATUS\n  [LIKE \'pattern\' | WHERE expr]\n\nDescription\n-----------\n\nThis statement is a MariaDB extension. It returns characteristics of a stored\nprocedure, such as the database, name, type, creator, creation and\nmodification dates, and character set information. A similar statement,  SHOW\nFUNCTION STATUS, displays information about stored functions.\n\nThe LIKE clause, if present, indicates which procedure or function names to\nmatch. The WHERE and LIKE clauses can be given to select rows using more\ngeneral conditions, as discussed in Extended SHOW.\n\nThe ROUTINES table in the INFORMATION_SCHEMA database contains more detailed\ninformation.\n\nExamples\n--------\n\nSHOW PROCEDURE STATUS LIKE \'p1\'G\n*************************** 1. row ***************************\n         Db: test\n        Name: p1\n        Type: PROCEDURE\n      Definer: root@localhost\n      Modified: 2010-08-23 13:23:03\n      Created: 2010-08-23 13:23:03\n   Security_type: DEFINER\n      Comment:\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n Database Collation: latin1_swedish_ci\n\n\n\nURL: mariadb.com/kb/en/show-procedure-status/','','https://mariadb.com/kb/en/show-procedure-status/'),(393,'SHOW RELAYLOG EVENTS',26,'The terms master and slave have historically been used in replication,\nbut the terms terms primary and replica are now preferred. The old terms are\nused still used in parts of the documentation, and in MariaDB commands,\nalthough MariaDB 10.5 has begun the process of renaming. The documentation\nprocess is ongoing. See MDEV-18777 to follow progress on this effort.\n\nSyntax\n------\n\nSHOW RELAYLOG [\'connection_name\'] EVENTS\n  [IN \'log_name\'] [FROM pos] [LIMIT [offset,] row_count]\n  [ FOR CHANNEL \'channel_name\']\n\nDescription\n-----------\n\nOn replicas, this command shows the events in the relay log. If \'log_name\' is\nnot specified, the first relay log is shown.\n\nSyntax for the LIMIT clause is the same as for SELECT ... LIMIT.\n\nUsing the LIMIT clause is highly recommended because the SHOW RELAYLOG EVENTS\ncommand returns the complete contents of the relay log, which can be quite\nlarge.\n\nThis command does not return events related to setting user and system\nvariables. If you need those, use mariadb-binlog/mysqlbinlog.\n\nOn the primary, this command does nothing.\n\nRequires the REPLICA MONITOR privilege (>= MariaDB 10.5.9), the REPLICATION\nSLAVE ADMIN privilege (>= MariaDB 10.5.2) or the REPLICATION SLAVE privilege\n(<= MariaDB 10.5.1).\n\nconnection_name\n---------------\n\nIf there is only one nameless primary, or the default primary (as specified by\nthe default_master_connection system variable) is intended, connection_name\ncan be omitted. If provided, the SHOW RELAYLOG statement will apply to the\nspecified primary. connection_name is case-insensitive.\n\nMariaDB starting with 10.7.0\n----------------------------\nThe FOR CHANNEL keyword was added for MySQL compatibility. This is identical\nas using the channel_name directly after SHOW RELAYLOG.\n\n\n\nURL: mariadb.com/kb/en/show-relaylog-events/','','https://mariadb.com/kb/en/show-relaylog-events/'),(386,'SHOW PRIVILEGES',26,'Syntax\n------\n\nSHOW PRIVILEGES\n\nDescription\n-----------\n\nSHOW PRIVILEGES shows the list of system privileges that the MariaDB server\nsupports. The exact list of privileges depends on the version of your server.\n\nNote that before MariaDB 10.3.23, MariaDB 10.4.13 and MariaDB 10.5.2 , the\nDelete history privilege displays as Delete versioning rows (MDEV-20382).\n\nExample\n-------\n\nFrom MariaDB 10.5.9\n\nSHOW PRIVILEGES;\n+--------------------------+---------------------------------------+-----------\n--------------------------------------------------------+\n| Privilege                | Context                               | Comment  \n                            |\n+--------------------------+---------------------------------------+-----------\n--------------------------------------------------------+\n| Alter                    | Tables                                | To alter\nthe table                                                 |\n| Alter routine            | Functions,Procedures                  | To alter\nor drop stored functions/procedures                       |\n| Create                   | Databases,Tables,Indexes              | To create\nnew databases and tables                                 |\n| Create routine           | Databases                             | To use\nCREATE FUNCTION/PROCEDURE                                   |\n| Create temporary tables  | Databases                             | To use\nCREATE TEMPORARY TABLE                                      |\n| Create view              | Tables                                | To create\nnew views                                                |\n| Create user              | Server Admin                          | To create\nnew users                                                |\n| Delete                   | Tables                                | To delete\nexisting rows                                            |\n| Delete history           | Tables                                | To delete\nversioning table historical rows                         |\n| Drop                     | Databases,Tables                      | To drop\ndatabases, tables, and views                               |\n| Event                    | Server Admin                          | To\ncreate, alter, drop and execute events                          |\n| Execute                  | Functions,Procedures                  | To\nexecute stored routines                                         |\n| File                     | File access on server                 | To read\nand write files on the server                              |\n| Grant option             | Databases,Tables,Functions,Procedures | To give\nto other users those privileges you possess                |\n| Index                    | Tables                                | To create\nor drop indexes                                          |\n| Insert                   | Tables                                | To insert\ndata into tables                                         |\n| Lock tables              | Databases                             | To use\nLOCK TABLES (together with SELECT privilege)                |\n| Process                  | Server Admin                          | To view\nthe plain text of currently executing queries              |\n| Proxy                    | Server Admin                          | To make\nproxy user possible                                        |\n| References               | Databases,Tables                      | To have\nreferences on tables                                       |\n| Reload                   | Server Admin                          | To reload\nor refresh tables, logs and privileges                   |\n| Binlog admin             | Server                                | To purge\nbinary logs                                               |\n| Binlog monitor           | Server                                | To use\nSHOW BINLOG STATUS and SHOW BINARY LOG                      |\n| Binlog replay            | Server                                | To use\nBINLOG (generated by mariadb-binlog)                        |\n| Replication master admin | Server                                | To\nmonitor connected slaves                                        |\n| Replication slave admin  | Server                                | To\nstart/stop slave and apply binlog events                        |\n| Slave monitor            | Server                                | To use\nSHOW SLAVE STATUS and SHOW RELAYLOG EVENTS                  |\n| Replication slave        | Server Admin                          | To read\nbinary log events from the master                          |\n| Select                   | Tables                                | To\nretrieve rows from table                                        |\n| Show databases           | Server Admin                          | To see\nall databases with SHOW DATABASES                           |\n| Show view                | Tables                                | To see\nviews with SHOW CREATE VIEW                                 |\n| Shutdown                 | Server Admin                          | To shut\ndown the server                                            |\n| Super                    | Server Admin                          | To use\nKILL thread, SET GLOBAL, CHANGE MASTER, etc.                |\n| Trigger                  | Tables                                | To use\ntriggers                                                    |\n| Create tablespace        | Server Admin                          | To\ncreate/alter/drop tablespaces                                   |\n| Update                   | Tables                                | To update\nexisting rows                                            |\n| Set user                 | Server                                | To create\nviews and stored routines with a different definer       |\n| Federated admin          | Server                                | To\nexecute the CREATE SERVER, ALTER SERVER, DROP SERVER statements |\n| Connection admin         | Server                                | To bypass\nconnection limits and kill other users\' connections      |\n| Read_only admin          | Server                                | To\nperform write operations even if @@read_only=ON                 |\n| Usage                    | Server Admin                          | No\nprivileges - allow connect only                                 |\n+--------------------------+---------------------------------------+-----------\n--------------------------------------------------------+\n41 rows in set (0.000 sec)\n\n\n\nURL: mariadb.com/kb/en/show-privileges/','','https://mariadb.com/kb/en/show-privileges/'),(389,'SHOW PROCESSLIST',26,'Syntax\n------\n\nSHOW [FULL] PROCESSLIST\n\nDescription\n-----------\n\nSHOW PROCESSLIST shows you which threads are running. You can also get this\ninformation from the information_schema.PROCESSLIST table or the mysqladmin\nprocesslist command. If you have the PROCESS privilege, you can see all\nthreads. Otherwise, you can see only your own threads (that is, threads\nassociated with the MariaDB account that you are using). If you do not use the\nFULL keyword, only the first 100 characters of each statement are shown in the\nInfo field.\n\nThe columns shown in SHOW PROCESSLIST are:\n\n+---------------------+-------------------------------------------------------+\n| Name                | Description                                           |\n+---------------------+-------------------------------------------------------+\n| ID                  | The client\'s process ID.                              |\n+---------------------+-------------------------------------------------------+\n| USER                | The username associated with the process.             |\n+---------------------+-------------------------------------------------------+\n| HOST                | The host the client is connected to.                  |\n+---------------------+-------------------------------------------------------+\n| DB                  | The default database of the process (NULL if no       |\n|                     | default).                                             |\n+---------------------+-------------------------------------------------------+\n| COMMAND             | The command type. See Thread Command Values.          |\n+---------------------+-------------------------------------------------------+\n| TIME                | The amount of time, in seconds, the process has been  |\n|                     | in its current state. For a replica SQL thread        |\n|                     | before MariaDB 10.1, this is the time in seconds      |\n|                     | between the last replicated event\'s timestamp and     |\n|                     | the replica machine\'s real time.                      |\n+---------------------+-------------------------------------------------------+\n| STATE               | See Thread States.                                    |\n+---------------------+-------------------------------------------------------+\n| INFO                | The statement being executed.                         |\n+---------------------+-------------------------------------------------------+\n| PROGRESS            | The total progress of the process (0-100%) (see       |\n|                     | Progress Reporting).                                  |\n+---------------------+-------------------------------------------------------+\n\nSee TIME_MS column in information_schema.PROCESSLIST for differences in the\nTIME column between MariaDB and MySQL.\n\nThe information_schema.PROCESSLIST table contains the following additional\ncolumns:\n\n+---------------------+-------------------------------------------------------+\n| Name                | Description                                           |\n+---------------------+-------------------------------------------------------+\n| TIME_MS             | The amount of time, in milliseconds, the process has  |\n|                     | been in its current state.                            |\n+---------------------+-------------------------------------------------------+\n| STAGE               | The stage the process is currently in.                |\n+---------------------+-------------------------------------------------------+\n| MAX_STAGE           | The maximum number of stages.                         |\n+---------------------+-------------------------------------------------------+\n| PROGRESS            | The progress of the process within the current stage  |\n|                     | (0-100%).                                             |\n+---------------------+-------------------------------------------------------+\n| MEMORY_USED         | The amount of memory used by the process.             |\n+---------------------+-------------------------------------------------------+\n| EXAMINED_ROWS       | The number of rows the process has examined.          |\n+---------------------+-------------------------------------------------------+\n| QUERY_ID            | Query ID.                                             |\n+---------------------+-------------------------------------------------------+\n\nNote that the PROGRESS field from the information schema, and the PROGRESS\nfield from SHOW PROCESSLIST display different results. SHOW PROCESSLIST shows\nthe total progress, while the information schema shows the progress for the\ncurrent stage only.\n\nThreads can be killed using their thread_id or their query_id, with the KILL\nstatement.\n\nSince queries on this table are locking, if the performance_schema is enabled,\nyou may want to query the THREADS table instead.\n\nExamples\n--------\n\nSHOW PROCESSLIST;\n+----+-----------------+-----------+------+---------+------+-------------------\n----+------------------+----------+\n| Id | User            | Host      | db   | Command | Time | State            \n  | Info             | Progress |\n+----+-----------------+-----------+------+---------+------+-------------------\n----+------------------+----------+\n|  2 | event_scheduler | localhost | NULL | Daemon  | 2693 | Waiting on empty\nqueue | NULL             |    0.000 |\n|  4 | root            | localhost | NULL | Query   |    0 | Table lock       \n  | SHOW PROCESSLIST |    0.000 |\n+----+-----------------+-----------+------+---------+------+-------------------\n----+------------------+----------+\n\n\n\nURL: mariadb.com/kb/en/show-processlist/','','https://mariadb.com/kb/en/show-processlist/'),(390,'SHOW PROFILE',26,'Syntax\n------\n\nSHOW PROFILE [type [, type] ... ]\n  [FOR QUERY n]\n  [LIMIT row_count [OFFSET offset]]\n\ntype:\n  ALL\n | BLOCK IO\n | CONTEXT SWITCHES\n | CPU\n | IPC\n | MEMORY\n | PAGE FAULTS\n | SOURCE\n | SWAPS\n\nDescription\n-----------\n\nThe SHOW PROFILE and SHOW PROFILES statements display profiling information\nthat indicates resource usage for statements executed during the course of the\ncurrent session.\n\nProfiling is controlled by the profiling session variable, which has a default\nvalue of 0 (OFF). Profiling is enabled by setting profiling to 1 or ON:\n\nSET profiling = 1;\n\nSHOW PROFILES displays a list of the most recent statements sent to the\nmaster. The size of the list is controlled by the profiling_history_size\nsession variable, which has a default value of 15. The maximum value is 100.\nSetting the value to 0 has the practical effect of disabling profiling.\n\nAll statements are profiled except SHOW PROFILES and SHOW PROFILE, so you will\nfind neither of those statements in the profile list. Malformed statements are\nprofiled. For example,  SHOW PROFILING is an illegal statement, and a syntax\nerror occurs if you try to execute it, but it will show up in the profiling\nlist.\n\nSHOW PROFILE displays detailed information about a single statement. Without\nthe FOR QUERY n clause, the output pertains to the most recently executed\nstatement. If  FOR QUERY n is included, SHOW PROFILE displays information for\nstatement n. The values of n correspond to the Query_ID values displayed by\nSHOW PROFILES.\n\nThe LIMIT row_count clause may be given to limit the output to row_count rows.\nIf LIMIT is given,  OFFSET offset may be added to begin the output offset rows\ninto the full set of rows.\n\nBy default, SHOW PROFILE displays Status and Duration columns. The Status\nvalues are like the State values displayed by SHOW PROCESSLIST, although there\nmight be some minor differences in interpretation for the two statements for\nsome status values (see\nhttp://dev.mysql.com/doc/refman/5.6/en/thread-information.html).\n\nOptional type values may be specified to display specific additional types of\ninformation:\n\n* ALL displays all information\n* BLOCK IO displays counts for block input and output operations\n* CONTEXT SWITCHES displays counts for voluntary and involuntary context\nswitches\n* CPU displays user and system CPU usage times\n* IPC displays counts for messages sent and received\n* MEMORY is not currently implemented\n* PAGE FAULTS displays counts for major and minor page faults\n* SOURCE displays the names of functions from the source code, together with\nthe name and line number of the file in which the function occurs\n* SWAPS displays swap counts\n\nProfiling is enabled per session. When a session ends, its profiling\ninformation is lost.\n\nThe information_schema.PROFILING table contains similar information.\n\nExamples\n--------\n\nSELECT @@profiling;\n+-------------+\n| @@profiling |\n+-------------+\n|           0 |\n+-------------+\n\nSET profiling = 1;\n\nUSE test;\n\nDROP TABLE IF EXISTS t1;\n\nCREATE TABLE T1 (id INT);\n\nSHOW PROFILES;\n+----------+------------+--------------------------+\n| Query_ID | Duration   | Query                    |\n+----------+------------+--------------------------+\n|        1 | 0.00009200 | SELECT DATABASE()        |\n|        2 | 0.00023800 | show databases           |\n|        3 | 0.00018900 | show tables              |\n|        4 | 0.00014700 | DROP TABLE IF EXISTS t1  |\n|        5 | 0.24476900 | CREATE TABLE T1 (id INT) |\n+----------+------------+--------------------------+\n\nSHOW PROFILE;\n+----------------------+----------+\n| Status               | Duration |\n+----------------------+----------+\n| starting             | 0.000042 |\n| checking permissions | 0.000044 |\n| creating table       | 0.244645 |\n| After create         | 0.000013 |\n| query end            | 0.000003 |\n| freeing items        | 0.000016 |\n| logging slow query   | 0.000003 |\n| cleaning up          | 0.000003 |\n+----------------------+----------+\n\nSHOW PROFILE FOR QUERY 4;\n+--------------------+----------+\n| Status             | Duration |\n+--------------------+----------+\n| starting           | 0.000126 |\n| query end          | 0.000004 |\n| freeing items      | 0.000012 |\n| logging slow query | 0.000003 |\n| cleaning up        | 0.000002 |\n+--------------------+----------+\n\nSHOW PROFILE CPU FOR QUERY 5;\n+----------------------+----------+----------+------------+\n| Status               | Duration | CPU_user | CPU_system |\n+----------------------+----------+----------+------------+\n| starting             | 0.000042 | 0.000000 |   0.000000 |\n| checking permissions | 0.000044 | 0.000000 |   0.000000 |\n| creating table       | 0.244645 | 0.000000 |   0.000000 |\n| After create         | 0.000013 | 0.000000 |   0.000000 |\n| query end            | 0.000003 | 0.000000 |   0.000000 |\n| freeing items        | 0.000016 | 0.000000 |   0.000000 |\n| logging slow query   | 0.000003 | 0.000000 |   0.000000 |\n| cleaning up          | 0.000003 | 0.000000 |   0.000000 |\n+----------------------+----------+----------+------------+\n\n\n\nURL: mariadb.com/kb/en/show-profile/','','https://mariadb.com/kb/en/show-profile/'),(394,'SHOW SLAVE HOSTS',26,'Syntax\n------\n\nSHOW SLAVE HOSTS\nSHOW REPLICA HOSTS -- from MariaDB 10.5.1\n\nDescription\n-----------\n\nThis command is run on the primary and displays a list of replicas that are\ncurrently registered with it. Only replicas started with the\n--report-host=host_name option are visible in this list.\n\nThe list is displayed on any server (not just the primary server). The output\nlooks like this:\n\nSHOW SLAVE HOSTS;\n+------------+-----------+------+-----------+\n| Server_id  | Host      | Port | Master_id |\n+------------+-----------+------+-----------+\n|  192168010 | iconnect2 | 3306 | 192168011 |\n| 1921680101 | athena    | 3306 | 192168011 |\n+------------+-----------+------+-----------+\n\n* Server_id: The unique server ID of the replica server, as configured in the\nserver\'s option file, or on the command line with --server-id=value.\n* Host: The host name of the replica server, as configured in the server\'s\noption file, or on the command line with --report-host=host_name. Note that\nthis can differ from the machine name as configured in the operating system.\n* Port: The port the replica server is listening on.\n* Master_id: The unique server ID of the primary server that the replica\nserver is replicating from.\n\nSome MariaDB and MySQL versions report another variable, rpl_recovery_rank.\nThis variable was never used, and was eventually removed in MariaDB 10.1.2 .\n\nRequires the REPLICATION MASTER ADMIN privilege (>= MariaDB 10.5.2) or the\nREPLICATION SLAVE privilege (<= MariaDB 10.5.1).\n\nSHOW REPLICA HOSTS\n------------------\n\nMariaDB starting with 10.5.1\n----------------------------\nSHOW REPLICA HOSTS is an alias for SHOW SLAVE HOSTS from MariaDB 10.5.1.\n\n\n\nURL: mariadb.com/kb/en/show-slave-hosts/','','https://mariadb.com/kb/en/show-slave-hosts/'),(398,'SHOW TABLES',26,'Syntax\n------\n\nSHOW [FULL] TABLES [FROM db_name]\n  [LIKE \'pattern\' | WHERE expr]\n\nDescription\n-----------\n\nSHOW TABLES lists the non-TEMPORARY tables, sequences and views in a given\ndatabase.\n\nThe LIKE clause, if present on its own, indicates which table names to match.\nThe WHERE and LIKE clauses can be given to select rows using more general\nconditions, as discussed in Extended SHOW. For example, when searching for\ntables in the test database, the column name for use in the WHERE and LIKE\nclauses will be Tables_in_test\n\nThe FULL modifier is supported such that SHOW FULL TABLES displays a second\noutput column. Values for the second column, Table_type, are BASE TABLE for a\ntable, VIEW for a view and SEQUENCE for a sequence.\n\nYou can also get this information using:\n\nmysqlshow db_name\n\nSee mysqlshow for more details.\n\nIf you have no privileges for a base table or view, it does not show up in the\noutput from SHOW TABLES or mysqlshow db_name.\n\nThe information_schema.TABLES table, as well as the SHOW TABLE STATUS\nstatement, provide extended information about tables.\n\nExamples\n--------\n\nSHOW TABLES;\n+----------------------+\n| Tables_in_test       |\n+----------------------+\n| animal_count         |\n| animals              |\n| are_the_mooses_loose |\n| aria_test2           |\n| t1                   |\n| view1                |\n+----------------------+\n\nShowing the tables beginning with a only.\n\nSHOW TABLES WHERE Tables_in_test LIKE \'a%\';\n+----------------------+\n| Tables_in_test       |\n+----------------------+\n| animal_count         |\n| animals              |\n| are_the_mooses_loose |\n| aria_test2           |\n+----------------------+\n\nShowing tables and table types:\n\nSHOW FULL TABLES;\n+----------------+------------+\n| Tables_in_test | Table_type |\n+----------------+------------+\n| s1             | SEQUENCE   |\n| student        | BASE TABLE |\n| v1             | VIEW       |\n+----------------+------------+\n\n\n\nURL: mariadb.com/kb/en/show-tables/','','https://mariadb.com/kb/en/show-tables/'),(399,'SHOW TABLE_STATISTICS',26,'Syntax\n------\n\nSHOW TABLE_STATISTICS\n\nDescription\n-----------\n\nThe SHOW TABLE_STATISTICS statementis part of the User Statistics feature. It\nwas removed as a separate statement in MariaDB 10.1.1, but effectively\nreplaced by the generic SHOW information_schema_table statement. The\ninformation_schema.TABLE_STATISTICS table shows statistics on table usage\n\nThe userstat system variable must be set to 1 to activate this feature. See\nthe User Statistics and information_schema.TABLE_STATISTICS articles for more\ninformation.\n\nExample\n-------\n\nSHOW TABLE_STATISTICSG\n*************************** 1. row ***************************\n     Table_schema: mysql\n      Table_name: proxies_priv\n       Rows_read: 2\n     Rows_changed: 0\nRows_changed_x_#indexes: 0\n*************************** 2. row ***************************\n     Table_schema: test\n      Table_name: employees_example\n       Rows_read: 7\n     Rows_changed: 0\nRows_changed_x_#indexes: 0\n*************************** 3. row ***************************\n     Table_schema: mysql\n      Table_name: user\n       Rows_read: 16\n     Rows_changed: 0\nRows_changed_x_#indexes: 0\n*************************** 4. row ***************************\n     Table_schema: mysql\n      Table_name: db\n       Rows_read: 2\n     Rows_changed: 0\nRows_changed_x_#indexes: 0\n\n\n\nURL: mariadb.com/kb/en/show-table-statistics/','','https://mariadb.com/kb/en/show-table-statistics/'),(397,'SHOW TABLE STATUS',26,'Syntax\n------\n\nSHOW TABLE STATUS [{FROM | IN} db_name]\n  [LIKE \'pattern\' | WHERE expr]\n\nDescription\n-----------\n\nSHOW TABLE STATUS works like  SHOW TABLES, but provides more extensive\ninformation about each non-TEMPORARY table.\n\nThe LIKE clause, if present on its own, indicates which table names to match.\nThe WHERE and LIKE clauses can be given to select rows using more general\nconditions, as discussed in Extended SHOW.\n\nThe following information is returned:\n\n+---------------------------+-------------------------------------------------+\n| Column                    | Description                                     |\n+---------------------------+-------------------------------------------------+\n| Name                      | Table name.                                     |\n+---------------------------+-------------------------------------------------+\n| Engine                    | Table storage engine.                           |\n+---------------------------+-------------------------------------------------+\n| Version                   | Version number from the table\'s .frm file.      |\n+---------------------------+-------------------------------------------------+\n| Row_format                | Row format (see InnoDB, Aria and MyISAM row     |\n|                           | formats).                                       |\n+---------------------------+-------------------------------------------------+\n| Rows                      | Number of rows in the table. Some engines,      |\n|                           | such as XtraDB and InnoDB may store an          |\n|                           | estimate.                                       |\n+---------------------------+-------------------------------------------------+\n| Avg_row_length            | Average row length in the table.                |\n+---------------------------+-------------------------------------------------+\n| Data_length               | For InnoDB/XtraDB, the index size, in pages,    |\n|                           | multiplied by the page size. For Aria and       |\n|                           | MyISAM, length of the data file, in bytes. For  |\n|                           | MEMORY, the approximate allocated memory.       |\n+---------------------------+-------------------------------------------------+\n| Max_data_length           | Maximum length of the data file, ie the total   |\n|                           | number of bytes that could be stored in the     |\n|                           | table. Not used in XtraDB and InnoDB.           |\n+---------------------------+-------------------------------------------------+\n| Index_length              | Length of the index file.                       |\n+---------------------------+-------------------------------------------------+\n| Data_free                 | Bytes allocated but unused. For InnoDB tables   |\n|                           | in a shared tablespace, the free space of the   |\n|                           | shared tablespace with small safety margin. An  |\n|                           | estimate in the case of partitioned tables -    |\n|                           | see the PARTITIONS table.                       |\n+---------------------------+-------------------------------------------------+\n| Auto_increment            | Next AUTO_INCREMENT value.                      |\n+---------------------------+-------------------------------------------------+\n| Create_time               | Time the table was created.                     |\n+---------------------------+-------------------------------------------------+\n| Update_time               | Time the table was last updated. On Windows,    |\n|                           | the timestamp is not updated on update, so      |\n|                           | MyISAM values will be inaccurate. In InnoDB,    |\n|                           | if shared tablespaces are used, will be NULL,   |\n|                           | while buffering can also delay the update, so   |\n|                           | the value will differ from the actual time of   |\n|                           | the last UPDATE, INSERT or DELETE.              |\n+---------------------------+-------------------------------------------------+\n| Check_time                | Time the table was last checked. Not kept by    |\n|                           | all storage engines, in which case will be      |\n|                           | NULL.                                           |\n+---------------------------+-------------------------------------------------+\n| Collation                 | Character set and collation.                    |\n+---------------------------+-------------------------------------------------+\n| Checksum                  | Live checksum value, if any.                    |\n+---------------------------+-------------------------------------------------+\n| Create_options            | Extra CREATE TABLE options.                     |\n+---------------------------+-------------------------------------------------+\n| Comment                   | Table comment provided when MariaDB created     |\n|                           | the table.                                      |\n+---------------------------+-------------------------------------------------+\n| Max_index_length          | Maximum index length (supported by MyISAM and   |\n|                           | Aria tables). Added in MariaDB 10.3.5.          |\n+---------------------------+-------------------------------------------------+\n| Temporary                 | Placeholder to signal that a table is a         |\n|                           | temporary table. Currently always \"N\", except   |\n|                           | \"Y\" for generated information_schema tables     |\n|                           | and NULL for views. Added in MariaDB 10.3.5.    |\n+---------------------------+-------------------------------------------------+\n\nSimilar information can be found in the information_schema.TABLES table as\nwell as by using mysqlshow:\n\nmysqlshow --status db_name\n\nViews\n-----\n\nFor views, all columns in SHOW TABLE STATUS are NULL except \'Name\' and\n\'Comment\'\n\nExample\n-------\n\nshow table statusG\n*************************** 1. row ***************************\n     Name: bus_routes\n    Engine: InnoDB\n    Version: 10\n  Row_format: Dynamic\n     Rows: 5\n Avg_row_length: 3276\n  Data_length: 16384\nMax_data_length: 0\n Index_length: 0\n   Data_free: 0\n Auto_increment: NULL\n  Create_time: 2017-05-24 11:17:46\n  Update_time: NULL\n  Check_time: NULL\n   Collation: latin1_swedish_ci\n   Checksum: NULL\n Create_options: \n    Comment:\n\n\n\nURL: mariadb.com/kb/en/show-table-status/','','https://mariadb.com/kb/en/show-table-status/'),(400,'SHOW TRIGGERS',26,'Syntax\n------\n\nSHOW TRIGGERS [FROM db_name]\n  [LIKE \'pattern\' | WHERE expr]\n\nDescription\n-----------\n\nSHOW TRIGGERS lists the triggers currently defined for tables in a database\n(the default database unless a FROM clause is given). This statement requires\nthe TRIGGER privilege (prior to MySQL 5.1.22, it required the SUPER privilege).\n\nThe LIKE clause, if present on its own, indicates which table names to match\nand causes the statement to display triggers for those tables. The WHERE and\nLIKE clauses can be given to select rows using more general conditions, as\ndiscussed in Extended SHOW.\n\nSimilar information is stored in the information_schema.TRIGGERS table.\n\nMariaDB starting with 10.2.3\n----------------------------\nIf there are multiple triggers for the same action, then the triggers are\nshown in action order.\n\nExamples\n--------\n\nFor the trigger defined at Trigger Overview:\n\nSHOW triggers Like \'animals\' G\n*************************** 1. row ***************************\n      Trigger: the_mooses_are_loose\n       Event: INSERT\n       Table: animals\n     Statement: BEGIN\n IF NEW.name = \'Moose\' THEN\n UPDATE animal_count SET animal_count.animals = animal_count.animals+100;\n ELSE \n UPDATE animal_count SET animal_count.animals = animal_count.animals+1;\n END IF;\nEND\n       Timing: AFTER\n      Created: 2016-09-29 13:53:34.35\n      sql_mode:\n      Definer: root@localhost\ncharacter_set_client: utf8\ncollation_connection: utf8_general_ci\n Database Collation: latin1_swedish_ci\n\nListing all triggers associated with a certain table:\n\nSHOW TRIGGERS FROM test WHERE `Table` = \'user\' G\n*************************** 1. row ***************************\n      Trigger: user_ai\n       Event: INSERT\n       Table: user\n     Statement: BEGIN END\n       Timing: AFTER\n      Created:  2016-09-29 13:53:34.35\n      sql_mode:\n      Definer: root@%\ncharacter_set_client: utf8\ncollation_connection: utf8_general_ci\n Database Collation: latin1_swedish_ci\n\nSHOW triggers WHERE Event Like \'Insert\' G\n*************************** 1. row ***************************\n      Trigger: the_mooses_are_loose\n       Event: INSERT\n       Table: animals\n     Statement: BEGIN\n IF NEW.name = \'Moose\' THEN\n UPDATE animal_count SET animal_count.animals = animal_count.animals+100;\n ELSE \n UPDATE animal_count SET animal_count.animals = animal_count.animals+1;\n END IF;\nEND\n       Timing: AFTER\n      Created: 2016-09-29 13:53:34.35\n      sql_mode:\n      Definer: root@localhost\ncharacter_set_client: utf8\ncollation_connection: utf8_general_ci\n Database Collation: latin1_swedish_ci\n\n* character_set_client is the session value of the character_set_client system\nvariable when the trigger was created. \n* collation_connection is the session value of the collation_connection system\nvariable when the trigger was\n created. \n* Database Collation is the collation of the database \n with which the trigger is associated.\n\nThese columns were added in MariaDB/MySQL 5.1.21.\n\nOld triggers created before MySQL 5.7 and MariaDB 10.2.3 has NULL in the\nCreated column.\n\n\n\nURL: mariadb.com/kb/en/show-triggers/','','https://mariadb.com/kb/en/show-triggers/'),(401,'SHOW USER_STATISTICS',26,'Syntax\n------\n\nSHOW USER_STATISTICS\n\nDescription\n-----------\n\nThe SHOW USER_STATISTICS statement is part of the User Statistics feature. It\nwas removed as a separate statement in MariaDB 10.1.1, but effectively\nreplaced by the generic SHOW information_schema_table statement. The\ninformation_schema.USER_STATISTICS table holds statistics about user activity.\nYou can use this table to find out such things as which user is causing the\nmost load and which users are being abusive. You can also use this table to\nmeasure how close to capacity the server may be.\n\nThe userstat system variable must be set to 1 to activate this feature. See\nthe User Statistics and information_schema.USER_STATISTICS table for more\ninformation.\n\nExample\n-------\n\nSHOW USER_STATISTICSG\n*************************** 1. row ***************************\n         User: root\n  Total_connections: 1\nConcurrent_connections: 0\n    Connected_time: 3297\n      Busy_time: 0.14113400000000006\n       Cpu_time: 0.017637000000000003\n    Bytes_received: 969\n      Bytes_sent: 22355\n Binlog_bytes_written: 0\n      Rows_read: 10\n      Rows_sent: 67\n     Rows_deleted: 0\n    Rows_inserted: 0\n     Rows_updated: 0\n   Select_commands: 7\n   Update_commands: 0\n    Other_commands: 0\n Commit_transactions: 1\n Rollback_transactions: 0\n  Denied_connections: 0\n   Lost_connections: 0\n    Access_denied: 0\n    Empty_queries: 7\n\n\n\nURL: mariadb.com/kb/en/show-user-statistics/','','https://mariadb.com/kb/en/show-user-statistics/'),(404,'SHOW WSREP_MEMBERSHIP',26,'SHOW WSREP_MEMBERSHIP is part of the WSREP_INFO plugin.\n\nSyntax\n------\n\nSHOW WSREP_MEMBERSHIP\n\nDescription\n-----------\n\nThe SHOW WSREP_MEMBERSHIP statement returns Galera node cluster membership\ninformation. It returns the same information as found in the\ninformation_schema.WSREP_MEMBERSHIP table. Only users with the SUPER privilege\ncan access this information.\n\nExamples\n--------\n\nSHOW WSREP_MEMBERSHIP;\n+-------+--------------------------------------+----------+-----------------+\n| Index | Uuid                                 | Name     | Address         |\n+-------+--------------------------------------+----------+-----------------+\n|     0 | 19058073-8940-11e4-8570-16af7bf8fced | my_node1 | 10.0.2.15:16001 |\n|     1 | 19f2b0e0-8942-11e4-9cb8-b39e8ee0b5dd | my_node3 | 10.0.2.15:16003 |\n|     2 | d85e62db-8941-11e4-b1ef-4bc9980e476d | my_node2 | 10.0.2.15:16002 |\n+-------+--------------------------------------+----------+-----------------+\n\n\n\nURL: mariadb.com/kb/en/show-wsrep_membership/','','https://mariadb.com/kb/en/show-wsrep_membership/'),(402,'SHOW VARIABLES',26,'Syntax\n------\n\nSHOW [GLOBAL | SESSION] VARIABLES\n  [LIKE \'pattern\' | WHERE expr]\n\nDescription\n-----------\n\nSHOW VARIABLES shows the values of MariaDB system variables. This information\nalso can be obtained using the mysqladmin variables command. The LIKE clause,\nif present, indicates which variable names to match. The WHERE clause can be\ngiven to select rows using more general conditions.\n\nWith the GLOBAL modifier, SHOW VARIABLES displays the values that are used for\nnew connections to MariaDB. With SESSION, it displays the values that are in\neffect for the current connection. If no modifier is present, the default is\nSESSION. LOCAL is a synonym for SESSION. With a LIKE clause, the statement\ndisplays only rows for those variables with names that match the pattern. To\nobtain the row for a specific variable, use a LIKE clause as shown:\n\nSHOW VARIABLES LIKE \'maria_group_commit\';\nSHOW SESSION VARIABLES LIKE \'maria_group_commit\';\n\nTo get a list of variables whose name match a pattern, use the \"%\" wildcard\ncharacter in a LIKE clause:\n\nSHOW VARIABLES LIKE \'%maria%\';\nSHOW GLOBAL VARIABLES LIKE \'%maria%\';\n\nWildcard characters can be used in any position within the pattern to be\nmatched. Strictly speaking, because \"_\" is a wildcard that matches any single\ncharacter, you should escape it as \"\\_\" to match it literally. In practice,\nthis is rarely necessary.\n\nThe WHERE and LIKE clauses can be given to select rows using more general\nconditions, as discussed in Extended SHOW.\n\nSee SET for information on setting server system variables.\n\nSee Server System Variables for a list of all the variables that can be set.\n\nYou can also see the server variables by querying the Information Schema\nGLOBAL_VARIABLES and SESSION_VARIABLES tables.\n\nExamples\n--------\n\nSHOW VARIABLES LIKE \'aria%\';\n+------------------------------------------+---------------------+\n| Variable_name                            | Value               |\n+------------------------------------------+---------------------+\n| aria_block_size                          | 8192                |\n| aria_checkpoint_interval                 | 30                  |\n| aria_checkpoint_log_activity             | 1048576             |\n| aria_force_start_after_recovery_failures | 0                   |\n| aria_group_commit                        | none                |\n| aria_group_commit_interval               | 0                   |\n| aria_log_file_size                       | 1073741824          |\n| aria_log_purge_type                      | immediate           |\n| aria_max_sort_file_size                  | 9223372036853727232 |\n| aria_page_checksum                       | ON                  |\n| aria_pagecache_age_threshold             | 300                 |\n| aria_pagecache_buffer_size               | 134217728           |\n| aria_pagecache_division_limit            | 100                 |\n| aria_recover                             | NORMAL              |\n| aria_repair_threads                      | 1                   |\n| aria_sort_buffer_size                    | 134217728           |\n| aria_stats_method                        | nulls_unequal       |\n| aria_sync_log_dir                        | NEWFILE             |\n| aria_used_for_temp_tables                | ON                  |\n+------------------------------------------+---------------------+\n\nSELECT VARIABLE_NAME, SESSION_VALUE, GLOBAL_VALUE FROM\n INFORMATION_SCHEMA.SYSTEM_VARIABLES WHERE\n VARIABLE_NAME LIKE \'max_error_count\' OR\n VARIABLE_NAME LIKE \'innodb_sync_spin_loops\';\n+---------------------------+---------------+--------------+\n| VARIABLE_NAME             | SESSION_VALUE | GLOBAL_VALUE |\n+---------------------------+---------------+--------------+\n| MAX_ERROR_COUNT           | 64            | 64           |\n| INNODB_SYNC_SPIN_LOOPS    | NULL          | 30           |\n+---------------------------+---------------+--------------+\n\nSET GLOBAL max_error_count=128;\n\nSELECT VARIABLE_NAME, SESSION_VALUE, GLOBAL_VALUE FROM\n INFORMATION_SCHEMA.SYSTEM_VARIABLES WHERE\n VARIABLE_NAME LIKE \'max_error_count\' OR\n VARIABLE_NAME LIKE \'innodb_sync_spin_loops\';\n+---------------------------+---------------+--------------+\n| VARIABLE_NAME             | SESSION_VALUE | GLOBAL_VALUE |\n+---------------------------+---------------+--------------+\n| MAX_ERROR_COUNT           | 64            | 128          |\n| INNODB_SYNC_SPIN_LOOPS    | NULL          | 30           |\n+---------------------------+---------------+--------------+\n\nSET GLOBAL max_error_count=128;\n\nSHOW VARIABLES LIKE \'max_error_count\';\n+-----------------+-------+\n| Variable_name   | Value |\n+-----------------+-------+\n| max_error_count | 64    |\n+-----------------+-------+\n\nSHOW GLOBAL VARIABLES LIKE \'max_error_count\';\n+-----------------+-------+\n| Variable_name   | Value |\n+-----------------+-------+\n| max_error_count | 128   |\n+-----------------+-------+\n\nBecause the following variable only has a global scope, the global value is\nreturned even when specifying SESSION (in this case by default):\n\nSHOW VARIABLES LIKE \'innodb_sync_spin_loops\';\n+------------------------+-------+\n| Variable_name          | Value |\n+------------------------+-------+\n| innodb_sync_spin_loops | 30    |\n+------------------------+-------+\n\n\n\nURL: mariadb.com/kb/en/show-variables/','','https://mariadb.com/kb/en/show-variables/'),(403,'SHOW WARNINGS',26,'Syntax\n------\n\nSHOW WARNINGS [LIMIT [offset,] row_count]\nSHOW ERRORS [LIMIT row_count OFFSET offset]\nSHOW COUNT(*) WARNINGS\n\nDescription\n-----------\n\nSHOW WARNINGS shows the error, warning, and note messages that resulted from\nthe last statement that generated messages in the current session. It shows\nnothing if the last statement used a table and generated no messages. (That\nis, a statement that uses a table but generates no messages clears the message\nlist.) Statements that do not use tables and do not generate messages have no\neffect on the message list.\n\nA note is different to a warning in that it only appears if the sql_notes\nvariable is set to 1 (the default), and is not converted to an error if strict\nmode is enabled.\n\nA related statement, SHOW ERRORS, shows only the errors.\n\nThe SHOW COUNT(*) WARNINGS statement displays the total number of errors,\nwarnings, and notes. You can also retrieve this number from the warning_count\nvariable:\n\nSHOW COUNT(*) WARNINGS;\nSELECT @@warning_count;\n\nThe value of warning_count might be greater than the number of messages\ndisplayed by SHOW WARNINGS if the max_error_count system variable is set so\nlow that not all messages are stored.\n\nThe LIMIT clause has the same syntax as for the SELECT statement.\n\nSHOW WARNINGS can be used after EXPLAIN EXTENDED to see how a query is\ninternally rewritten by MariaDB.\n\nIf the sql_notes server variable is set to 1, Notes are included in the output\nof SHOW WARNINGS; if it is set to 0, this statement will not show (or count)\nNotes.\n\nThe results of SHOW WARNINGS and SHOW COUNT(*) WARNINGS are directly sent to\nthe client. If you need to access those information in a stored program, you\ncan use the GET DIAGNOSTICS statement instead.\n\nFor a list of MariaDB error codes, see MariaDB Error Codes.\n\nThe mysql client also has a number of options related to warnings. The W\ncommand will show warnings after every statement, while w will disable this.\nStarting the client with the --show-warnings option will show warnings after\nevery statement.\n\nMariaDB 10.3.1 implements a stored routine error stack trace. SHOW WARNINGS\ncan also be used to show more information. See the example below.\n\nExamples\n--------\n\nSELECT 1/0;\n+------+\n| 1/0  |\n+------+\n| NULL |\n+------+\n\nSHOW COUNT(*) WARNINGS;\n+-------------------------+\n| @@session.warning_count |\n+-------------------------+\n|                       1 |\n+-------------------------+\n\nSHOW WARNINGS;\n+---------+------+---------------+\n| Level   | Code | Message       |\n+---------+------+---------------+\n| Warning | 1365 | Division by 0 |\n+---------+------+---------------+\n\nStack Trace\n-----------\n\nFrom MariaDB 10.3.1, displaying a stack trace:\n\nDELIMITER $$\nCREATE OR REPLACE PROCEDURE p1()\n BEGIN\n  DECLARE c CURSOR FOR SELECT * FROM not_existing;\n  OPEN c;\n  CLOSE c;\n END;\n$$\nCREATE OR REPLACE PROCEDURE p2()\n BEGIN\n  CALL p1;\n END;\n$$\nDELIMITER ;\nCALL p2;\nERROR 1146 (42S02): Table \'test.not_existing\' doesn\'t exist\n\nSHOW WARNINGS;\n+-------+------+-----------------------------------------+\n| Level | Code | Message                                 |\n+-------+------+-----------------------------------------+\n| Error | 1146 | Table \'test.not_existing\' doesn\'t exist |\n| Note  | 4091 | At line 6 in test.p1                    |\n| Note  | 4091 | At line 4 in test.p2                    |\n+-------+------+-----------------------------------------+\n\nSHOW WARNINGS displays a stack trace, showing where the error actually\nhappened:\n\n* Line 4 in test.p1 is the OPEN command which actually raised the error\n* Line 3 in test.p2 is the CALL statement, calling p1 from p2.\n\n\n\nURL: mariadb.com/kb/en/show-warnings/','','https://mariadb.com/kb/en/show-warnings/'),(406,'CALL',27,'Syntax\n------\n\nCALL sp_name([parameter[,...]])\nCALL sp_name[()]\n\nDescription\n-----------\n\nThe CALL statement invokes a stored procedure that was defined previously with\nCREATE PROCEDURE.\n\nStored procedure names can be specified as database_name.procedure_name.\nProcedure names and database names can be quoted with backticks (). This is\nnecessary if they are reserved words, or contain special characters. See\nidentifier qualifiers for details.\n\nCALL p() and CALL p are equivalent.\n\nIf parentheses are used, any number of spaces, tab characters and newline\ncharacters are allowed between the procedure\'s name and the open parenthesis.\n\nCALL can pass back values to its caller using parameters that are declared as\nOUT or INOUT parameters. If no value is assigned to an OUT parameter, NULL is\nassigned (and its former value is lost). To pass such values from another\nstored program you can use user-defined variables, local variables or\nroutine\'s parameters; in other contexts, you can only use user-defined\nvariables.\n\nCALL can also be executed as a prepared statement. Placeholders can be used\nfor IN parameters in all versions of MariaDB; for OUT and INOUT parameters,\nplaceholders can be used since MariaDB 5.5.\n\nWhen the procedure returns, a client program can also obtain the number of\nrows affected for the final statement executed within the routine: At the SQL\nlevel, call the ROW_COUNT() function; from the C API, call the\nmysql_affected_rows() function.\n\nIf the CLIENT_MULTI_RESULTS API flag is set, CALL can return any number of\nresultsets and the called stored procedure can execute prepared statements. If\nit is not set, at most one resultset can be returned and prepared statements\ncannot be used within procedures.\n\n\n\nURL: mariadb.com/kb/en/call/','','https://mariadb.com/kb/en/call/'),(407,'Concurrent Inserts',27,'The MyISAM storage engine supports concurrent inserts. This feature\nallows SELECT statements to be executed during INSERT operations, reducing\ncontention.\n\nWhether concurrent inserts can be used or not depends on the value of the\nconcurrent_insert server system variable:\n\n* NEVER (0) disables concurrent inserts.\n* AUTO (1) allows concurrent inserts only when the target table has no free\nblocks (no data in the middle of the table has been deleted after the last\nOPTIMIZE TABLE). This is the default.\n* ALWAYS (2) always enables concurrent inserts, in which case new rows are\nadded at the end of a table if the table is being used by another thread.\n\nIf the binary log is used, CREATE TABLE ... SELECT and INSERT ... SELECT\nstatements cannot use concurrent inserts. These statements acquire a read lock\non the table, so concurrent inserts will need to wait. This way the log can be\nsafely used to restore data.\n\nConcurrent inserts are not used by replicas with the row based replication\n(see binary log formats).\n\nIf an INSERT statement contain the HIGH_PRIORITY clause, concurrent inserts\ncannot be used. INSERT ... DELAYED is usually unneeded if concurrent inserts\nare enabled.\n\nLOAD DATA INFILE uses concurrent inserts if the CONCURRENT keyword is\nspecified and concurrent_insert is not NEVER. This makes the statement slower\n(even if no other sessions access the table) but reduces contention.\n\nLOCK TABLES allows non-conflicting concurrent inserts if a READ LOCAL lock is\nused. Concurrent inserts are not allowed if the LOCAL keyword is omitted.\n\nNotes\n-----\n\nThe decision to enable concurrent insert for a table is done when the table is\nopened. If you change the value of concurrent_insert it will only affect new\nopened tables. If you want it to work for also for tables in use or cached,\nyou should do FLUSH TABLES after setting the variable.\n\n\n\nURL: mariadb.com/kb/en/concurrent-inserts/','','https://mariadb.com/kb/en/concurrent-inserts/'),(411,'EXCEPT',27,'MariaDB starting with 10.3.0\n----------------------------\nEXCEPT was introduced in MariaDB 10.3.0.\n\nThe result of EXCEPT is all records of the left SELECT result set except\nrecords which are in right SELECT result set, i.e. it is subtraction of two\nresult sets. From MariaDB 10.6.1, MINUS is a synonym.\n\nSyntax\n\nSELECT ...\n(INTERSECT [ALL | DISTINCT] | EXCEPT [ALL | DISTINCT] | UNION [ALL |\nDISTINCT]) SELECT ...\n[(INTERSECT [ALL | DISTINCT] | EXCEPT [ALL | DISTINCT] | UNION [ALL |\nDISTINCT]) SELECT ...]\n[ORDER BY [column [, column ...]]]\n[LIMIT {[offset,] row_count | row_count OFFSET offset}]\n\nPlease note:\n\n* Brackets for explicit operation precedence are not supported; use a subquery\nin the FROM clause as a workaround).\n\nDescription\n-----------\n\nMariaDB has supported EXCEPT and INTERSECT in addition to UNION since MariaDB\n10.3.\n\nAll behavior for naming columns, ORDER BY and LIMIT is the same as for UNION.\n\nEXCEPT implicitly supposes a DISTINCT operation.\n\nThe result of EXCEPT is all records of the left SELECT result except records\nwhich are in right SELECT result set, i.e. it is subtraction of two result\nsets.\n\nEXCEPT and UNION have the same operation precedence and INTERSECT has a higher\nprecedence, unless running in Oracle mode, in which case all three have the\nsame precedence.\n\nMariaDB starting with 10.4.0\n----------------------------\n\nParentheses\n-----------\n\nFrom MariaDB 10.4.0, parentheses can be used to specify precedence. Before\nthis, a syntax error would be returned.\n\nMariaDB starting with 10.5.0\n----------------------------\n\nALL/DISTINCT\n------------\n\nEXCEPT ALL and EXCEPT DISTINCT were introduced in MariaDB 10.5.0. The ALL\noperator leaves duplicates intact, while the DISTINCT operator removes\nduplicates. DISTINCT is the default behavior if neither operator is supplied,\nand the only behavior prior to MariaDB 10.5.\n\nExamples\n--------\n\nShow customers which are not employees:\n\n(SELECT e_name AS name, email FROM customers)\nEXCEPT\n(SELECT c_name AS name, email FROM employees);\n\nDifference between UNION, EXCEPT and INTERSECT. INTERSECT ALL and EXCEPT ALL\nare available from MariaDB 10.5.0.\n\nCREATE TABLE seqs (i INT);\nINSERT INTO seqs VALUES (1),(2),(2),(3),(3),(4),(5),(6);\n\nSELECT i FROM seqs WHERE i <= 3 UNION SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    1 |\n|    2 |\n|    3 |\n|    4 |\n|    5 |\n|    6 |\n+------+\n\nSELECT i FROM seqs WHERE i <= 3 UNION ALL SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    1 |\n|    2 |\n|    2 |\n|    3 |\n|    3 |\n|    3 |\n|    3 |\n|    4 |\n|    5 |\n|    6 |\n+------+\n\nSELECT i FROM seqs WHERE i <= 3 EXCEPT SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    1 |\n|    2 |\n+------+\n\nSELECT i FROM seqs WHERE i <= 3 EXCEPT ALL SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    1 |\n|    2 |\n|    2 |\n+------+\n\nSELECT i FROM seqs WHERE i <= 3 INTERSECT SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    3 |\n+------+\n\nSELECT i FROM seqs WHERE i <= 3 INTERSECT ALL SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    3 |\n|    3 |\n+------+\n\nParentheses for specifying precedence, from MariaDB 10.4.0\n\nCREATE OR REPLACE TABLE t1 (a INT);\nCREATE OR REPLACE TABLE t2 (b INT);\nCREATE OR REPLACE TABLE t3 (c INT);\n\nINSERT INTO t1 VALUES (1),(2),(3),(4);\nINSERT INTO t2 VALUES (5),(6);\nINSERT INTO t3 VALUES (1),(6);\n\n((SELECT a FROM t1) UNION (SELECT b FROM t2)) EXCEPT (SELECT c FROM t3);\n+------+\n| a    |\n+------+\n|    2 |\n|    3 |\n|    4 |\n|    5 |\n+------+\n\n(SELECT a FROM t1) UNION ((SELECT b FROM t2) EXCEPT (SELECT c FROM t3));\n+------+\n| a    |\n+------+\n|    1 |\n|    2 |\n|    3 |\n|    4 |\n|    5 |\n+------+\n\n\n\nURL: mariadb.com/kb/en/except/','','https://mariadb.com/kb/en/except/'),(408,'DELETE',27,'Syntax\n------\n\nSingle-table syntax:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE] \n FROM tbl_name [PARTITION (partition_list)]\n [FOR PORTION OF period FROM expr1 TO expr2]\n [WHERE where_condition]\n [ORDER BY ...]\n [LIMIT row_count]\n [RETURNING select_expr\n  [, select_expr ...]]\n\nMultiple-table syntax:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE]\n  tbl_name[.*] [, tbl_name[.*]] ...\n  FROM table_references\n  [WHERE where_condition]\n\nOr:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE]\n  FROM tbl_name[.*] [, tbl_name[.*]] ...\n  USING table_references\n  [WHERE where_condition]\n\nTrimming history:\n\nDELETE HISTORY\n FROM tbl_name [PARTITION (partition_list)]\n [BEFORE SYSTEM_TIME [TIMESTAMP|TRANSACTION] expression]\n\nDescription\n-----------\n\n+---------------------------+-------------------------------------------------+\n| Option                    | Description                                     |\n+---------------------------+-------------------------------------------------+\n| LOW_PRIORITY              | Wait until all SELECT\'s are done before         |\n|                           | starting the statement. Used with storage       |\n|                           | engines that uses table locking (MyISAM, Aria   |\n|                           | etc). See HIGH_PRIORITY and LOW_PRIORITY        |\n|                           | clauses for details.                            |\n+---------------------------+-------------------------------------------------+\n| QUICK                     | Signal the storage engine that it should        |\n|                           | expect that a lot of rows are deleted. The      |\n|                           | storage engine engine can do things to speed    |\n|                           | up the DELETE like ignoring merging of data     |\n|                           | blocks until all rows are deleted from the      |\n|                           | block (instead of when a block is half full).   |\n|                           | This speeds up things at the expanse of lost    |\n|                           | space in data blocks. At least MyISAM and Aria  |\n|                           | support this feature.                           |\n+---------------------------+-------------------------------------------------+\n| IGNORE                    | Don\'t stop the query even if a not-critical     |\n|                           | error occurs (like data overflow). See How      |\n|                           | IGNORE works for a full description.            |\n+---------------------------+-------------------------------------------------+\n\nFor the single-table syntax, the DELETE statement deletes rows from tbl_name\nand returns a count of the number of deleted rows. This count can be obtained\nby calling the ROW_COUNT() function. The WHERE clause, if given, specifies the\nconditions that identify which rows to delete. With no WHERE clause, all rows\nare deleted. If the ORDER BY clause is specified, the rows are deleted in the\norder that is specified. The LIMIT clause places a limit on the number of rows\nthat can be deleted.\n\nFor the multiple-table syntax, DELETE deletes from each tbl_name the rows that\nsatisfy the conditions. In this case, ORDER BY and LIMIT> cannot be used. A\nDELETE can also reference tables which are located in different databases; see\nIdentifier Qualifiers for the syntax.\n\nwhere_condition is an expression that evaluates to true for each row to be\ndeleted. It is specified as described in SELECT.\n\nCurrently, you cannot delete from a table and select from the same table in a\nsubquery.\n\nYou need the DELETE privilege on a table to delete rows from it. You need only\nthe SELECT privilege for any columns that are only read, such as those named\nin the WHERE clause. See GRANT.\n\nAs stated, a DELETE statement with no WHERE clause deletes all rows. A faster\nway to do this, when you do not need to know the number of deleted rows, is to\nuse TRUNCATE TABLE. However, within a transaction or if you have a lock on the\ntable, TRUNCATE TABLE cannot be used whereas DELETE can. See TRUNCATE TABLE,\nand LOCK.\n\nPARTITION\n---------\n\nSee Partition Pruning and Selection for details.\n\nFOR PORTION OF\n--------------\n\nMariaDB starting with 10.4.3\n----------------------------\nSee Application Time Periods - Deletion by Portion.\n\nRETURNING\n---------\n\nIt is possible to return a resultset of the deleted rows for a single table to\nthe client by using the syntax DELETE ... RETURNING select_expr [,\nselect_expr2 ...]]\n\nAny of SQL expression that can be calculated from a single row fields is\nallowed. Subqueries are allowed. The AS keyword is allowed, so it is possible\nto use aliases.\n\nThe use of aggregate functions is not allowed. RETURNING cannot be used in\nmulti-table DELETEs.\n\nMariaDB starting with 10.3.1\n----------------------------\n\nSame Source and Target Table\n----------------------------\n\nUntil MariaDB 10.3.1, deleting from a table with the same source and target\nwas not possible. From MariaDB 10.3.1, this is now possible. For example:\n\nDELETE FROM t1 WHERE c1 IN (SELECT b.c1 FROM t1 b WHERE b.c2=0);\n\nMariaDB starting with 10.3.4\n----------------------------\n\nDELETE HISTORY\n--------------\n\nOne can use DELETE HISTORY to delete historical information from\nSystem-versioned tables.\n\nExamples\n--------\n\nHow to use the ORDER BY and LIMIT clauses:\n\nDELETE FROM page_hit ORDER BY timestamp LIMIT 1000000;\n\nHow to use the RETURNING clause:\n\nDELETE FROM t RETURNING f1;\n+------+\n| f1   |\n+------+\n|    5 |\n|   50 |\n|  500 |\n+------+\n\nThe following statement joins two tables: one is only used to satisfy a WHERE\ncondition, but no row is deleted from it; rows from the other table are\ndeleted, instead.\n\nDELETE post FROM blog INNER JOIN post WHERE blog.id = post.blog_id;\n\nDeleting from the Same Source and Target\n----------------------------------------\n\nCREATE TABLE t1 (c1 INT, c2 INT);\nDELETE FROM t1 WHERE c1 IN (SELECT b.c1 FROM t1 b WHERE b.c2=0);\n\nUntil MariaDB 10.3.1, this returned:\n\nERROR 1093 (HY000): Table \'t1\' is specified twice, both as a target for\n\'DELETE\' \n and as a separate source for\n\nFrom MariaDB 10.3.1:\n\nQuery OK, 0 rows affected (0.00 sec)\n\n\n\nURL: mariadb.com/kb/en/delete/','','https://mariadb.com/kb/en/delete/'),(412,'FOR UPDATE',27,'InnoDB supports row-level locking. Selected rows can be locked using\nLOCK IN SHARE MODE or FOR UPDATE. In both cases, a lock is acquired on the\nrows read by the query, and it will be released when the current transaction\nis committed.\n\nThe FOR UPDATE clause of SELECT applies only when autocommit is set to 0 or\nthe SELECT is enclosed in a transaction. A lock is acquired on the rows, and\nother transactions are prevented from writing the rows, acquire locks, and\nfrom reading them (unless their isolation level is READ UNCOMMITTED).\n\nIf autocommit is set to 1, the LOCK IN SHARE MODE and FOR UPDATE clauses have\nno effect.\n\nIf the isolation level is set to SERIALIZABLE, all plain SELECT statements are\nconverted to SELECT ... LOCK IN SHARE MODE.\n\nExample\n-------\n\nSELECT * FROM trans WHERE period=2001 FOR UPDATE;\n\n\n\nURL: mariadb.com/kb/en/for-update/','','https://mariadb.com/kb/en/for-update/'),(413,'GROUP BY',27,'Use the GROUP BY clause in a SELECT statement to group rows together\nthat have the same value in one or more column, or the same computed value\nusing expressions with any functions and operators except grouping functions.\nWhen you use a GROUP BY clause, you will get a single result row for each\ngroup of rows that have the same value for the expression given in GROUP BY.\n\nWhen grouping rows, grouping values are compared as if by the = operator. For\nstring values, the = operator ignores trailing whitespace and may normalize\ncharacters and ignore case, depending on the collation in use.\n\nYou can use any of the grouping functions in your select expression. Their\nvalues will be calculated based on all the rows that have been grouped\ntogether for each result row. If you select a non-grouped column or a value\ncomputed from a non-grouped column, it is undefined which row the returned\nvalue is taken from. This is not permitted if the ONLY_FULL_GROUP_BY SQL_MODE\nis used.\n\nYou can use multiple expressions in the GROUP BY clause, separated by commas.\nRows are grouped together if they match on each of the expressions.\n\nYou can also use a single integer as the grouping expression. If you use an\ninteger n, the results will be grouped by the nth column in the select\nexpression.\n\nThe WHERE clause is applied before the GROUP BY clause. It filters\nnon-aggregated rows before the rows are grouped together. To filter grouped\nrows based on aggregate values, use the HAVING clause. The HAVING clause takes\nany expression and evaluates it as a boolean, just like the WHERE clause. You\ncan use grouping functions in the HAVING clause. As with the select\nexpression, if you reference non-grouped columns in the HAVING clause, the\nbehavior is undefined.\n\nBy default, if a GROUP BY clause is present, the rows in the output will be\nsorted by the expressions used in the GROUP BY. You can also specify ASC or\nDESC (ascending, descending) after those expressions, like in ORDER BY. The\ndefault is ASC.\n\nIf you want the rows to be sorted by another field, you can add an explicit\nORDER BY. If you don\'t want the result to be ordered, you can add ORDER BY\nNULL.\n\nWITH ROLLUP\n-----------\n\nThe WITH ROLLUP modifer adds extra rows to the resultset that represent\nsuper-aggregate summaries. For a full description with examples, see SELECT\nWITH ROLLUP.\n\nGROUP BY Examples\n-----------------\n\nConsider the following table that records how many times each user has played\nand won a game:\n\nCREATE TABLE plays (name VARCHAR(16), plays INT, wins INT);\nINSERT INTO plays VALUES \n (\"John\", 20, 5),\n (\"Robert\", 22, 8),\n (\"Wanda\", 32, 8),\n (\"Susan\", 17, 3);\n\nGet a list of win counts along with a count:\n\nSELECT wins, COUNT(*) FROM plays GROUP BY wins;\n+------+----------+\n| wins | COUNT(*) |\n+------+----------+\n|    3 |        1 |\n|    5 |        1 |\n|    8 |        2 |\n+------+----------+\n3 rows in set (0.00 sec)\n\nThe GROUP BY expression can be a computed value, and can refer back to an\nidentifer specified with AS. Get a list of win averages along with a count:\n\nSELECT (wins / plays) AS winavg, COUNT(*) FROM plays GROUP BY winavg;\n+--------+----------+\n| winavg | COUNT(*) |\n+--------+----------+\n| 0.1765 |        1 |\n| 0.2500 |        2 |\n| 0.3636 |        1 |\n+--------+----------+\n3 rows in set (0.00 sec)\n\nYou can use any grouping function in the select expression. For each win\naverage as above, get a list of the average play count taken to get that\naverage:\n\nSELECT (wins / plays) AS winavg, AVG(plays) FROM plays \n GROUP BY winavg;\n+--------+------------+\n| winavg | AVG(plays) |\n+--------+------------+\n| 0.1765 |    17.0000 |\n| 0.2500 |    26.0000 |\n| 0.3636 |    22.0000 |\n+--------+------------+\n3 rows in set (0.00 sec)\n\nYou can filter on aggregate information using the HAVING clause. The HAVING\nclause is applied after GROUP BY and allows you to filter on aggregate data\nthat is not available to the WHERE clause. Restrict the above example to\nresults that involve an average number of plays over 20:\n\nSELECT (wins / plays) AS winavg, AVG(plays) FROM plays \n GROUP BY winavg HAVING AVG(plays) > 20;\n+--------+------------+\n| winavg | AVG(plays) |\n+--------+------------+\n| 0.2500 |    26.0000 |\n| 0.3636 |    22.0000 |\n+--------+------------+\n2 rows in set (0.00 sec)\n\n\n\nURL: mariadb.com/kb/en/group-by/','','https://mariadb.com/kb/en/group-by/'),(414,'HANDLER Commands',27,'Syntax\n------\n\nHANDLER tbl_name OPEN [ [AS] alias]\nHANDLER tbl_name READ index_name { = | >= | <= | < } (value1,value2,...)\n  [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name READ index_name { FIRST | NEXT | PREV | LAST }\n  [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name READ { FIRST | NEXT }\n  [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name CLOSE\n\nDescription\n-----------\n\nThe HANDLER statement provides direct access to table storage engine\ninterfaces for key lookups and key or table scans. It is available for at\nleast Aria, Memory, MyISAM and InnoDB tables (and should work with most\n\'normal\' storage engines, but not with system tables, MERGE or views).\n\nHANDLER ... OPEN opens a table, allowing it to be accessible to subsequent\nHANDLER ... READ statements. The table can either be opened using an alias\n(which must then be used by HANDLER ... READ, or a table name.\n\nThe table object is only closed when HANDLER ... CLOSE is called by the\nsession, and is not shared by other sessions.\n\nPrepared statements work with HANDLER READ, which gives a much higher\nperformance (50% speedup) as there is no parsing and all data is transformed\nin binary (without conversions to text, as with the normal protocol).\n\nThe HANDLER command does not work with partitioned tables.\n\nKey Lookup\n----------\n\nA key lookup is started with:\n\nHANDLER tbl_name READ index_name { = | >= | <= | < }  (value,value) [LIMIT...]\n\nThe values stands for the value of each of the key columns. For most key types\n(except for HASH keys in MEMORY storage engine) you can use a prefix subset of\nit\'s columns.\n\nIf you are using LIMIT, then in case of >= or > then there is an implicit NEXT\nimplied, while if you are using <= or < then there is an implicit PREV implied.\n\nAfter the initial read, you can use\n\nHANDLER tbl_name READ index_name NEXT [ LIMIT ... ]\nor\nHANDLER tbl_name READ index_name PREV [ LIMIT ... ]\n\nto scan the rows in key order.\n\nNote that the row order is not defined for keys with duplicated values and\nwill vary from engine to engine.\n\nKey Scans\n---------\n\nYou can scan a table in key order by doing:\n\nHANDLER tbl_name READ index_name FIRST [ LIMIT ... ]\nHANDLER tbl_name READ index_name NEXT  [ LIMIT ... ]\n\nor, if the handler supports backwards key scans (most do):\n\nHANDLER tbl_name READ index_name LAST [ LIMIT ... ]\nHANDLER tbl_name READ index_name PREV [ LIMIT ... ]\n\nTable Scans\n-----------\n\nYou can scan a table in row order by doing:\n\nHANDLER tbl_name READ FIRST [ LIMIT ... ]\nHANDLER tbl_name READ NEXT  [ LIMIT ... ]\n\nLimitations\n-----------\n\nAs this is a direct interface to the storage engine, some limitations may\napply for what you can do and what happens if the table changes. Here follows\nsome of the common limitations:\n\nFinding \'Old Rows\'\n------------------\n\nHANDLER READ is not transaction safe, consistent or atomic. It\'s ok for the\nstorage engine to returns rows that existed when you started the scan but that\nwere later deleted. This can happen as the storage engine may cache rows as\npart of the scan from a previous read.\n\nYou may also find rows committed since the scan originally started.\n\nInvisible Columns\n-----------------\n\nHANDLER ... READ also reads the data of invisible-columns.\n\nSystem-Versioned Tables\n-----------------------\n\nHANDLER ... READ reads everything from system-versioned tables, and so\nincludes row_start and row_end fields, as well as all rows that have since\nbeen deleted or changed, including when history partitions are used.\n\nOther Limitations\n-----------------\n\n* If you do an ALTER TABLE, all your HANDLERs for that table are automatically\nclosed.\n* If you do an ALTER TABLE for a table that is used by some other connection\nwith HANDLER, the ALTER TABLE will wait for the HANDLER to be closed.\n* For HASH keys, you must use all key parts when searching for a row.\n* For HASH keys, you can\'t do a key scan of all values. You can only find all\nrows with the same key value.\n* While each HANDLER READ command is atomic, if you do a scan in many steps,\nthen some engines may give you error 1020 if the table changed between the\ncommands. Please refer to the specific engine handler page if this happens.\n\nError Codes\n-----------\n\n* Error 1031 (ER_ILLEGAL_HA) Table storage engine for \'t1\' doesn\'t have this\noption\nIf you get this for HANDLER OPEN it means the storage engine doesn\'t support\nHANDLER calls.\nIf you get this for HANDLER READ it means you are trying to use an incomplete\nHASH key.\n\n* Error 1020 (ER_CHECKREAD) Record has changed since last read in table \'...\'\nThis means that the table changed between two reads and the handler can\'t\nhandle this case for the given scan.\n\n\n\nURL: mariadb.com/kb/en/handler-commands/','','https://mariadb.com/kb/en/handler-commands/'),(415,'HIGH_PRIORITY and LOW_PRIORITY',27,'The InnoDB storage engine uses row-level locking to ensure data\nintegrity. However some storage engines (such as MEMORY, MyISAM, Aria and\nMERGE) lock the whole table to prevent conflicts. These storage engines use\ntwo separate queues to remember pending statements; one is for SELECTs and the\nother one is for write statements (INSERT, DELETE, UPDATE). By default, the\nlatter has a higher priority.\n\nTo give write operations a lower priority, the low_priority_updates server\nsystem variable can be set to ON. The option is available on both the global\nand session levels, and it can be set at startup or via the SET statement.\n\nWhen too many table locks have been set by write statements, some pending\nSELECTs are executed. The maximum number of write locks that can be acquired\nbefore this happens is determined by the max_write_lock_count server system\nvariable, which is dynamic.\n\nIf write statements have a higher priority (default), the priority of\nindividual write statements (INSERT, REPLACE, UPDATE, DELETE) can be changed\nvia the LOW_PRIORITY attribute, and the priority of a SELECT statement can be\nraised via the HIGH_PRIORITY attribute. Also, LOCK TABLES supports a\nLOW_PRIORITY attribute for WRITE locks.\n\nIf read statements have a higher priority, the priority of an INSERT can be\nchanged via the HIGH_PRIORITY attribute. However, the priority of other write\nstatements cannot be raised individually.\n\nThe use of LOW_PRIORITY or HIGH_PRIORITY for an INSERT prevents Concurrent\nInserts from being used.\n\n\n\nURL: mariadb.com/kb/en/high_priority-and-low_priority/','','https://mariadb.com/kb/en/high_priority-and-low_priority/'),(416,'IGNORE',27,'The IGNORE option tells the server to ignore some common errors.\n\nIGNORE can be used with the following statements:\n\n* DELETE\n* INSERT (see also INSERT IGNORE)\n* LOAD DATA INFILE\n* UPDATE\n* ALTER TABLE\n* CREATE TABLE ... SELECT\n* INSERT ... SELECT\n\nThe logic used:\n\n* Variables out of ranges are replaced with the maximum/minimum value.\n\n* SQL_MODEs STRICT_TRANS_TABLES, STRICT_ALL_TABLES, NO_ZERO_IN_DATE,\nNO_ZERO_DATE are ignored.\n\n* Inserting NULL in a NOT NULL field will insert 0 ( in a numerical\n field), 0000-00-00 ( in a date field) or an empty string ( in a character\n field).\n\n* Rows that cause a duplicate key error or break a foreign key constraint are\n not inserted, updated, or deleted.\n\nThe following errors are ignored:\n\n+----------------------+---------------------------------+--------------------+\n| Error number         | Symbolic error name             | Description        |\n+----------------------+---------------------------------+--------------------+\n| 1022                 | ER_DUP_KEY                      | Can\'t write;       |\n|                      |                                 | duplicate key in   |\n|                      |                                 | table \'%s\'         |\n+----------------------+---------------------------------+--------------------+\n| 1048                 | ER_BAD_NULL_ERROR               | Column \'%s\'        |\n|                      |                                 | cannot be null     |\n+----------------------+---------------------------------+--------------------+\n| 1062                 | ER_DUP_ENTRY                    | Duplicate entry    |\n|                      |                                 | \'%s\' for key %d    |\n+----------------------+---------------------------------+--------------------+\n| 1242                 | ER_SUBQUERY_NO_1_ROW            | Subquery returns   |\n|                      |                                 | more than 1 row    |\n+----------------------+---------------------------------+--------------------+\n| 1264                 | ER_WARN_DATA_OUT_OF_RANGE       | Out of range       |\n|                      |                                 | value for column   |\n|                      |                                 | \'%s\' at row %ld    |\n+----------------------+---------------------------------+--------------------+\n| 1265                 | WARN_DATA_TRUNCATED             | Data truncated     |\n|                      |                                 | for column \'%s\'    |\n|                      |                                 | at row %ld         |\n+----------------------+---------------------------------+--------------------+\n| 1292                 | ER_TRUNCATED_WRONG_VALUE        | Truncated          |\n|                      |                                 | incorrect %s       |\n|                      |                                 | value: \'%s\'        |\n+----------------------+---------------------------------+--------------------+\n| 1366                 | ER_TRUNCATED_WRONG_VALUE_FOR_FI | Incorrect integer  |\n|                      | LD                              | value              |\n+----------------------+---------------------------------+--------------------+\n| 1369                 | ER_VIEW_CHECK_FAILED            | CHECK OPTION       |\n|                      |                                 | failed \'%s.%s\'     |\n+----------------------+---------------------------------+--------------------+\n| 1451                 | ER_ROW_IS_REFERENCED_2          | Cannot delete or   |\n|                      |                                 | update a parent    |\n|                      |                                 | row                |\n+----------------------+---------------------------------+--------------------+\n| 1452                 | ER_NO_REFERENCED_ROW_2          | Cannot add or      |\n|                      |                                 | update a child     |\n|                      |                                 | row: a foreign     |\n|                      |                                 | key constraint     |\n|                      |                                 | fails (%s)         |\n+----------------------+---------------------------------+--------------------+\n| 1526                 | ER_NO_PARTITION_FOR_GIVEN_VALUE | Table has no       |\n|                      |                                 | partition for      |\n|                      |                                 | value %s           |\n+----------------------+---------------------------------+--------------------+\n| 1586                 | ER_DUP_ENTRY_WITH_KEY_NAME      | Duplicate entry    |\n|                      |                                 | \'%s\' for key \'%s\'  |\n+----------------------+---------------------------------+--------------------+\n| 1591                 | ER_NO_PARTITION_FOR_GIVEN_VALUE | Table has no       |\n|                      | SILENT                          | partition for      |\n|                      |                                 | some existing      |\n|                      |                                 | values             |\n+----------------------+---------------------------------+--------------------+\n| 1748                 | ER_ROW_DOES_NOT_MATCH_GIVEN_PAR | Found a row not    |\n|                      | ITION_SET                       | matching the       |\n|                      |                                 | given partition    |\n|                      |                                 | set                |\n+----------------------+---------------------------------+--------------------+\n\nIgnored errors normally generate a warning.\n\nA property of the IGNORE clause consists in causing transactional engines and\nnon-transactional engines (like XtraDB and Aria) to behave the same way. For\nexample, normally a multi-row insert which tries to violate a UNIQUE contraint\nis completely rolled back on XtraDB/InnoDB, but might be partially executed on\nAria. With the IGNORE clause, the statement will be partially executed in both\nengines.\n\nDuplicate key errors also generate warnings. The OLD_MODE server variable can\nbe used to prevent this.\n\n\n\nURL: mariadb.com/kb/en/ignore/','','https://mariadb.com/kb/en/ignore/'),(417,'INSERT',27,'Syntax\n------\n\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n [INTO] tbl_name [PARTITION (partition_list)] [(col,...)]\n {VALUES | VALUE} ({expr | DEFAULT},...),(...),...\n [ ON DUPLICATE KEY UPDATE\n col=expr\n  [, col=expr] ... ] [RETURNING select_expr\n   [, select_expr ...]]\n\nOr:\n\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n  [INTO] tbl_name [PARTITION (partition_list)]\n  SET col={expr | DEFAULT}, ...\n  [ ON DUPLICATE KEY UPDATE\n   col=expr\n    [, col=expr] ... ] [RETURNING select_expr\n   [, select_expr ...]]\n\nOr:\n\nINSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]\n  [INTO] tbl_name [PARTITION (partition_list)] [(col,...)]\n  SELECT ...\n  [ ON DUPLICATE KEY UPDATE\n   col=expr\n    [, col=expr] ... ] [RETURNING select_expr\n   [, select_expr ...]]\n\nThe INSERT statement is used to insert new rows into an existing table. The\nINSERT ... VALUES and INSERT ... SET forms of the statement insert rows based\non explicitly specified values. The INSERT ... SELECT form inserts rows\nselected from another table or tables. INSERT ... SELECT is discussed further\nin the INSERT ... SELECT article.\n\nThe table name can be specified in the form db_name.tbl_name or, if a default\ndatabase is selected, in the form tbl_name (see Identifier Qualifiers). This\nallows to use INSERT ... SELECT to copy rows between different databases.\n\nThe PARTITION clause can be used in both the INSERT and the SELECT part. See\nPartition Pruning and Selection for details.\n\nMariaDB starting with 10.5\n--------------------------\nThe RETURNING clause was introduced in MariaDB 10.5.\n\nThe columns list is optional. It specifies which values are explicitly\ninserted, and in which order. If this clause is not specified, all values must\nbe explicitly specified, in the same order they are listed in the table\ndefinition.\n\nThe list of value follow the VALUES or VALUE keyword (which are\ninterchangeable, regardless how much values you want to insert), and is\nwrapped by parenthesis. The values must be listed in the same order as the\ncolumns list. It is possible to specify more than one list to insert more than\none rows with a single statement. If many rows are inserted, this is a speed\noptimization.\n\nFor one-row statements, the SET clause may be more simple, because you don\'t\nneed to remember the columns order. All values are specified in the form col =\nexpr.\n\nValues can also be specified in the form of a SQL expression or subquery.\nHowever, the subquery cannot access the same table that is named in the INTO\nclause.\n\nIf you use the LOW_PRIORITY keyword, execution of the INSERT is delayed until\nno other clients are reading from the table. If you use the HIGH_PRIORITY\nkeyword, the statement has the same priority as SELECTs. This affects only\nstorage engines that use only table-level locking (MyISAM, MEMORY, MERGE).\nHowever, if one of these keywords is specified, concurrent inserts cannot be\nused. See HIGH_PRIORITY and LOW_PRIORITY clauses for details.\n\nINSERT DELAYED\n--------------\n\nFor more details on the DELAYED option, see INSERT DELAYED.\n\nHIGH PRIORITY and LOW PRIORITY\n------------------------------\n\nSee HIGH_PRIORITY and LOW_PRIORITY.\n\nDefaults and Duplicate Values\n-----------------------------\n\nSee INSERT - Default & Duplicate Values for details..\n\nINSERT IGNORE\n-------------\n\nSee INSERT IGNORE.\n\nINSERT ON DUPLICATE KEY UPDATE\n------------------------------\n\nSee INSERT ON DUPLICATE KEY UPDATE.\n\nExamples\n--------\n\nSpecifying the column names:\n\nINSERT INTO person (first_name, last_name) VALUES (\'John\', \'Doe\');\n\nInserting more than 1 row at a time:\n\nINSERT INTO tbl_name VALUES (1, \"row 1\"), (2, \"row 2\");\n\nUsing the SET clause:\n\nINSERT INTO person SET first_name = \'John\', last_name = \'Doe\';\n\nSELECTing from another table:\n\nINSERT INTO contractor SELECT * FROM person WHERE status = \'c\';\n\nSee INSERT ON DUPLICATE KEY UPDATE and INSERT IGNORE for further examples.\n\nINSERT ... RETURNING\n--------------------\n\nINSERT ... RETURNING returns a resultset of the inserted rows.\n\nThis returns the listed columns for all the rows that are inserted, or\nalternatively, the specified SELECT expression. Any SQL expressions which can\nbe calculated can be used in the select expression for the RETURNING clause,\nincluding virtual columns and aliases, expressions which use various operators\nsuch as bitwise, logical and arithmetic operators, string functions, date-time\nfunctions, numeric functions, control flow functions, secondary functions and\nstored functions. Along with this, statements which have subqueries and\nprepared statements can also be used.\n\nExamples\n--------\n\nSimple INSERT statement\n\nINSERT INTO t2 VALUES (1,\'Dog\'),(2,\'Lion\'),(3,\'Tiger\'),(4,\'Leopard\') \nRETURNING id2,id2+id2,id2&id2,id2||id2;\n+-----+---------+---------+----------+\n| id2 | id2+id2 | id2&id2 | id2||id2 |\n+-----+---------+---------+----------+\n|   1 |       2 |       1 |        1 |\n|   2 |       4 |       2 |        1 |\n|   3 |       6 |       3 |        1 |\n|   4 |       8 |       4 |        1 |\n+-----+---------+---------+----------+\n\nUsing stored functions in RETURNING\n\nDELIMITER |\nCREATE FUNCTION f(arg INT) RETURNS INT\n  BEGIN\n   RETURN (SELECT arg+arg);\n  END|\n\nDELIMITER ;\n\nPREPARE stmt FROM \"INSERT INTO t1 SET id1=1, animal1=\'Bear\' RETURNING f(id1),\nUPPER(animal1)\";\n\nEXECUTE stmt;\n+---------+----------------+\n| f(id1)  | UPPER(animal1) |\n+---------+----------------+\n|       2 | BEAR           |\n+---------+----------------+\n\nSubqueries in the RETURNING clause that return more than one row or column\ncannot be used.\n\nAggregate functions cannot be used in the RETURNING clause. Since aggregate\nfunctions work on a set of values, and if the purpose is to get the row count,\nROW_COUNT() with SELECT can be used or it can be used in\nINSERT...SELECT...RETURNING if the table in the RETURNING clause is not the\nsame as the INSERT table.\n\n\n\nURL: mariadb.com/kb/en/insert/','','https://mariadb.com/kb/en/insert/'),(418,'INSERT - Default &amp; Duplicate Values',27,'Default Values\n--------------\n\nIf the SQL_MODE contains STRICT_TRANS_TABLES and you are inserting into a\ntransactional table (like InnoDB), or if the SQL_MODE contains\nSTRICT_ALL_TABLES, all NOT NULL columns which does not have a DEFAULT value\n(and is not AUTO_INCREMENT) must be explicitly referenced in INSERT\nstatements. If not, an error like this is produced:\n\nERROR 1364 (HY000): Field \'col\' doesn\'t have a default value\n\nIn all other cases, if a NOT NULL column without a DEFAULT value is not\nreferenced, an empty value will be inserted (for example, 0 for INTEGER\ncolumns and \'\' for CHAR columns). See NULL Values in MariaDB:Inserting for\nexamples.\n\nIf a NOT NULL column having a DEFAULT value is not referenced, NULL will be\ninserted.\n\nIf a NULL column having a DEFAULT value is not referenced, its default value\nwill be inserted. It is also possible to explicitly assign the default value\nusing the DEFAULT keyword or the DEFAULT() function.\n\nIf the DEFAULT keyword is used but the column does not have a DEFAULT value,\nan error like this is produced:\n\nERROR 1364 (HY000): Field \'col\' doesn\'t have a default value\n\nDuplicate Values\n----------------\n\nBy default, if you try to insert a duplicate row and there is a UNIQUE index,\nINSERT stops and an error like this is produced:\n\nERROR 1062 (23000): Duplicate entry \'dup_value\' for key \'col\'\n\nTo handle duplicates you can use the IGNORE clause, INSERT ON DUPLICATE KEY\nUPDATE or the REPLACE statement. Note that the IGNORE and DELAYED options are\nignored when you use ON DUPLICATE KEY UPDATE.\n\n\n\nURL: mariadb.com/kb/en/insert-default-duplicate-values/','','https://mariadb.com/kb/en/insert-default-duplicate-values/'),(419,'INSERT DELAYED',27,'Syntax\n------\n\nINSERT DELAYED ...\n\nDescription\n-----------\n\nThe DELAYED option for the INSERT statement is a MariaDB/MySQL extension to\nstandard SQL that is very useful if you have clients that cannot or need not\nwait for the INSERT to complete. This is a common situation when you use\nMariaDB for logging and you also periodically run SELECT and UPDATE statements\nthat take a long time to complete.\n\nWhen a client uses INSERT DELAYED, it gets an okay from the server at once,\nand the row is queued to be inserted when the table is not in use by any other\nthread.\n\nAnother major benefit of using INSERT DELAYED is that inserts from many\nclients are bundled together and written in one block. This is much faster\nthan performing many separate inserts.\n\nNote that INSERT DELAYED is slower than a normal INSERT if the table is not\notherwise in use. There is also the additional overhead for the server to\nhandle a separate thread for each table for which there are delayed rows. This\nmeans that you should use INSERT DELAYED only when you are really sure that\nyou need it.\n\nThe queued rows are held only in memory until they are inserted into the\ntable. This means that if you terminate mysqld forcibly (for example, with\nkill -9) or if mysqld dies unexpectedly, any queued rows that have not been\nwritten to disk are lost.\n\nThe number of concurrent INSERT DELAYED threads is limited by the\nmax_delayed_threads server system variables. If it is set to 0, INSERT DELAYED\nis disabled. The session value can be equal to the global value, or 0 to\ndisable this statement for the current session. If this limit has been\nreached, the DELAYED clause will be silently ignore for subsequent statements\n(no error will be produced).\n\nLimitations\n-----------\n\nThere are some limitations on the use of DELAYED:\n\n* INSERT DELAYED works only with MyISAM, MEMORY, ARCHIVE,\n and BLACKHOLE tables. If you execute INSERT DELAYED with another storage\nengine, you will get an error like this: ERROR 1616 (HY000): DELAYED option\nnot supported for table \'tab_name\'\n* For MyISAM tables, if there are no free blocks in the middle of the data\n file, concurrent SELECT and INSERT statements are supported. Under these\n circumstances, you very seldom need to use INSERT DELAYED\n with MyISAM.\n* INSERT DELAYED should be used only for\n INSERT statements that specify value lists. The server\n ignores DELAYED for INSERT ... SELECT\n or INSERT ... ON DUPLICATE KEY UPDATE statements.\n* Because the INSERT DELAYED statement returns immediately,\n before the rows are inserted, you cannot use\n LAST_INSERT_ID() to get the\n AUTO_INCREMENT value that the statement might generate.\n* DELAYED rows are not visible to SELECT\n statements until they actually have been inserted.\n* After INSERT DELAYED, ROW_COUNT() returns the number of the rows you tried\nto insert, not the number of the successful writes.\n* DELAYED is ignored on slave replication servers, so that \n INSERT DELAYED is treated as a normal\n INSERT on slaves. This is because\n DELAYED could cause the slave to have different data than\n the master. INSERT DELAYED statements are not safe for replication.\n* Pending INSERT DELAYED statements are lost if a table is\n write locked and ALTER TABLE is used to modify the table structure.\n* INSERT DELAYED is not supported for views. If you try, you will get an error\nlike this: ERROR 1347 (HY000): \'view_name\' is not BASE TABLE\n* INSERT DELAYED is not supported for partitioned tables.\n* INSERT DELAYED is not supported within stored programs.\n* INSERT DELAYED does not work with triggers.\n* INSERT DELAYED does not work if there is a check constraint in place.\n* INSERT DELAYED does not work if skip-new mode is active.\n\n\n\nURL: mariadb.com/kb/en/insert-delayed/','','https://mariadb.com/kb/en/insert-delayed/'),(420,'INSERT IGNORE',27,'Ignoring Errors\n---------------\n\nNormally INSERT stops and rolls back when it encounters an error.\n\nBy using the IGNORE keyword all errors are converted to warnings, which will\nnot stop inserts of additional rows.\n\nThe IGNORE and DELAYED options are ignored when you use ON DUPLICATE KEY\nUPDATE.\n\nPrior to MySQL and MariaDB 5.5.28, no warnings were issued for duplicate key\nerrors when using IGNORE. You can get the old behavior if you set OLD_MODE to\nNO_DUP_KEY_WARNINGS_WITH_IGNORE.\n\nExamples\n--------\n\nCREATE TABLE t1 (x INT UNIQUE);\n\nINSERT INTO t1 VALUES(1),(2);\n\nINSERT INTO t1 VALUES(2),(3);\nERROR 1062 (23000): Duplicate entry \'2\' for key \'x\'\nSELECT * FROM t1;\n+------+\n| x    |\n+------+\n|    1 |\n|    2 |\n+------+\n2 rows in set (0.00 sec)\n\nINSERT IGNORE INTO t1 VALUES(2),(3);\nQuery OK, 1 row affected, 1 warning (0.04 sec)\n\nSHOW WARNINGS;\n+---------+------+---------------------------------+\n| Level   | Code | Message                         |\n+---------+------+---------------------------------+\n| Warning | 1062 | Duplicate entry \'2\' for key \'x\' |\n+---------+------+---------------------------------+\n\nSELECT * FROM t1;\n+------+\n| x    |\n+------+\n|    1 |\n|    2 |\n|    3 |\n+------+\n\nSee INSERT ON DUPLICATE KEY UPDATE for further examples using that syntax.\n\n\n\nURL: mariadb.com/kb/en/insert-ignore/','','https://mariadb.com/kb/en/insert-ignore/'),(421,'INSERT ON DUPLICATE KEY UPDATE',27,'Syntax\n------\n\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n [INTO] tbl_name [PARTITION (partition_list)] [(col,...)]\n {VALUES | VALUE} ({expr | DEFAULT},...),(...),...\n [ ON DUPLICATE KEY UPDATE\n  col=expr\n   [, col=expr] ... ]\n\nOr:\n\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n  [INTO] tbl_name [PARTITION (partition_list)]\n  SET col={expr | DEFAULT}, ...\n  [ ON DUPLICATE KEY UPDATE\n   col=expr\n    [, col=expr] ... ]\n\nOr:\n\nINSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]\n  [INTO] tbl_name [PARTITION (partition_list)] [(col,...)]\n  SELECT ...\n  [ ON DUPLICATE KEY UPDATE\n   col=expr\n    [, col=expr] ... ]\n\nDescription\n-----------\n\nINSERT ... ON DUPLICATE KEY UPDATE is a MariaDB/MySQL extension to the INSERT\nstatement that, if it finds a duplicate unique or primary key, will instead\nperform an UPDATE.\n\nThe row/s affected value is reported as 1 if a row is inserted, and 2 if a row\nis updated, unless the API\'s CLIENT_FOUND_ROWS flag is set.\n\nIf more than one unique index is matched, only the first is updated. It is not\nrecommended to use this statement on tables with more than one unique index.\n\nIf the table has an AUTO_INCREMENT primary key and the statement inserts or\nupdates a row, the LAST_INSERT_ID() function returns its AUTO_INCREMENT value.\n\nThe VALUES() function can only be used in a ON DUPLICATE KEY UPDATE clause and\nhas no meaning in any other context. It returns the column values from the\nINSERT portion of the statement. This function is particularly useful for\nmulti-rows inserts.\n\nThe IGNORE and DELAYED options are ignored when you use ON DUPLICATE KEY\nUPDATE.\n\nSee Partition Pruning and Selection for details on the PARTITION clause.\n\nThis statement activates INSERT and UPDATE triggers. See Trigger Overview for\ndetails.\n\nSee also a similar statement, REPLACE.\n\nExamples\n--------\n\nCREATE TABLE ins_duplicate (id INT PRIMARY KEY, animal VARCHAR(30));\nINSERT INTO ins_duplicate VALUES (1,\'Aardvark\'), (2,\'Cheetah\'), (3,\'Zebra\');\n\nIf there is no existing key, the statement runs as a regular INSERT:\n\nINSERT INTO ins_duplicate VALUES (4,\'Gorilla\') \n ON DUPLICATE KEY UPDATE animal=\'Gorilla\';\nQuery OK, 1 row affected (0.07 sec)\n\nSELECT * FROM ins_duplicate;\n+----+----------+\n| id | animal   |\n+----+----------+\n|  1 | Aardvark |\n|  2 | Cheetah  |\n|  3 | Zebra    |\n|  4 | Gorilla  |\n+----+----------+\n\nA regular INSERT with a primary key value of 1 will fail, due to the existing\nkey:\n\nINSERT INTO ins_duplicate VALUES (1,\'Antelope\');\nERROR 1062 (23000): Duplicate entry \'1\' for key \'PRIMARY\'\n\nHowever, we can use an INSERT ON DUPLICATE KEY UPDATE instead:\n\nINSERT INTO ins_duplicate VALUES (1,\'Antelope\') \n ON DUPLICATE KEY UPDATE animal=\'Antelope\';\nQuery OK, 2 rows affected (0.09 sec)\n\nNote that there are two rows reported as affected, but this refers only to the\nUPDATE.\n\nSELECT * FROM ins_duplicate;\n+----+----------+\n| id | animal   |\n+----+----------+\n|  1 | Antelope |\n|  2 | Cheetah  |\n|  3 | Zebra    |\n|  4 | Gorilla  |\n+----+----------+\n\nAdding a second unique column:\n\nALTER TABLE ins_duplicate ADD id2 INT;\nUPDATE ins_duplicate SET id2=id+10;\nALTER TABLE ins_duplicate ADD UNIQUE KEY(id2);\n\nWhere two rows match the unique keys match, only the first is updated. This\ncan be unsafe and is not recommended unless you are certain what you are doing.\n\nINSERT INTO ins_duplicate VALUES (2,\'Lion\',13) \n ON DUPLICATE KEY UPDATE animal=\'Lion\';\nQuery OK, 2 rows affected (0.004 sec)\n\nSELECT * FROM ins_duplicate;\n+----+----------+------+\n| id | animal   | id2  |\n+----+----------+------+\n|  1 | Antelope |   11 |\n|  2 | Lion     |   12 |\n|  3 | Zebra    |   13 |\n|  4 | Gorilla  |   14 |\n+----+----------+------+\n\nAlthough the third row with an id of 3 has an id2 of 13, which also matched,\nit was not updated.\n\nChanging id to an auto_increment field. If a new row is added, the\nauto_increment is moved forward. If the row is updated, it remains the same.\n\nALTER TABLE `ins_duplicate` CHANGE `id` `id` INT( 11 ) NOT NULL AUTO_INCREMENT;\nALTER TABLE ins_duplicate DROP id2;\nSELECT Auto_increment FROM INFORMATION_SCHEMA.TABLES \n WHERE TABLE_NAME=\'ins_duplicate\';\n+----------------+\n| Auto_increment |\n+----------------+\n|              5 |\n+----------------+\n\nINSERT INTO ins_duplicate VALUES (2,\'Leopard\') \n ON DUPLICATE KEY UPDATE animal=\'Leopard\';\nQuery OK, 2 rows affected (0.00 sec)\n\nSELECT Auto_increment FROM INFORMATION_SCHEMA.TABLES \n WHERE TABLE_NAME=\'ins_duplicate\';\n+----------------+\n| Auto_increment |\n+----------------+\n|              5 |\n+----------------+\n\nINSERT INTO ins_duplicate VALUES (5,\'Wild Dog\') \n ON DUPLICATE KEY UPDATE animal=\'Wild Dog\';\nQuery OK, 1 row affected (0.09 sec)\n\nSELECT * FROM ins_duplicate;\n+----+----------+\n| id | animal   |\n+----+----------+\n|  1 | Antelope |\n|  2 | Leopard  |\n|  3 | Zebra    |\n|  4 | Gorilla  |\n|  5 | Wild Dog |\n+----+----------+\n\nSELECT Auto_increment FROM INFORMATION_SCHEMA.TABLES \n WHERE TABLE_NAME=\'ins_duplicate\';\n+----------------+\n| Auto_increment |\n+----------------+\n|              6 |\n+----------------+\n\nRefering to column values from the INSERT portion of the statement:\n\nINSERT INTO table (a,b,c) VALUES (1,2,3),(4,5,6)\n  ON DUPLICATE KEY UPDATE c=VALUES(a)+VALUES(b);\n\nSee the VALUES() function for more.\n\n\n\nURL: mariadb.com/kb/en/insert-on-duplicate-key-update/','','https://mariadb.com/kb/en/insert-on-duplicate-key-update/'),(422,'INSERT SELECT',27,'Syntax\n------\n\nINSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]\n  [INTO] tbl_name [(col_name,...)]\n  SELECT ...\n  [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nDescription\n-----------\n\nWith INSERT ... SELECT, you can quickly insert many rows into a table from one\nor more other tables. For example:\n\nINSERT INTO tbl_temp2 (fld_id)\n SELECT tbl_temp1.fld_order_id\n FROM tbl_temp1 WHERE tbl_temp1.fld_order_id > 100;\n\ntbl_name can also be specified in the form db_name.tbl_name (see Identifier\nQualifiers). This allows to copy rows between different databases.\n\nIf the new table has a primary key or UNIQUE indexes, you can use IGNORE to\nhandle duplicate key errors during the query. The newer values will not be\ninserted if an identical value already exists.\n\nREPLACE can be used instead of INSERT to prevent duplicates on UNIQUE indexes\nby deleting old values. In that case, ON DUPLICATE KEY UPDATE cannot be used.\n\nINSERT ... SELECT works for tables which already exist. To create a table for\na given resultset, you can use CREATE TABLE ... SELECT.\n\n\n\nURL: mariadb.com/kb/en/insert-select/','','https://mariadb.com/kb/en/insert-select/'),(423,'INTERSECT',27,'MariaDB starting with 10.3.0\n----------------------------\nINTERSECT was introduced in MariaDB 10.3.0.\n\nThe result of an intersect is the intersection of right and left SELECT\nresults, i.e. only records that are present in both result sets will be\nincluded in the result of the operation.\n\nSyntax\n------\n\nSELECT ...\n(INTERSECT [ALL | DISTINCT] | EXCEPT [ALL | DISTINCT] | UNION [ALL |\nDISTINCT]) SELECT ...\n[(INTERSECT [ALL | DISTINCT] | EXCEPT [ALL | DISTINCT] | UNION [ALL |\nDISTINCT]) SELECT ...]\n[ORDER BY [column [, column ...]]]\n[LIMIT {[offset,] row_count | row_count OFFSET offset}]\n\nDescription\n-----------\n\nMariaDB has supported INTERSECT (as well as EXCEPT) in addition to UNION since\nMariaDB 10.3.\n\nAll behavior for naming columns, ORDER BY and LIMIT is the same as for UNION.\n\nINTERSECT implicitly supposes a DISTINCT operation.\n\nThe result of an intersect is the intersection of right and left SELECT\nresults, i.e. only records that are present in both result sets will be\nincluded in the result of the operation.\n\nINTERSECT has higher precedence than UNION and EXCEPT (unless running running\nin Oracle mode, in which case all three have the same precedence). If possible\nit will be executed linearly but if not it will be translated to a subquery in\nthe FROM clause:\n\n(select a,b from t1)\nunion\n(select c,d from t2)\nintersect\n(select e,f from t3)\nunion\n(select 4,4);\n\nwill be translated to:\n\n(select a,b from t1)\nunion\nselect c,d from\n ((select c,d from t2)\n intersect\n (select e,f from t3)) dummy_subselect\nunion\n(select 4,4)\n\nMariaDB starting with 10.4.0\n----------------------------\n\nParentheses\n-----------\n\nFrom MariaDB 10.4.0, parentheses can be used to specify precedence. Before\nthis, a syntax error would be returned.\n\nMariaDB starting with 10.5.0\n----------------------------\n\nALL/DISTINCT\n------------\n\nINTERSECT ALL and INTERSECT DISTINCT were introduced in MariaDB 10.5.0. The\nALL operator leaves duplicates intact, while the DISTINCT operator removes\nduplicates. DISTINCT is the default behavior if neither operator is supplied,\nand the only behavior prior to MariaDB 10.5.\n\nExamples\n--------\n\nShow customers which are employees:\n\n(SELECT e_name AS name, email FROM employees)\nINTERSECT\n(SELECT c_name AS name, email FROM customers);\n\nDifference between UNION, EXCEPT and INTERSECT. INTERSECT ALL and EXCEPT ALL\nare available from MariaDB 10.5.0.\n\nCREATE TABLE seqs (i INT);\nINSERT INTO seqs VALUES (1),(2),(2),(3),(3),(4),(5),(6);\n\nSELECT i FROM seqs WHERE i <= 3 UNION SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    1 |\n|    2 |\n|    3 |\n|    4 |\n|    5 |\n|    6 |\n+------+\n\nSELECT i FROM seqs WHERE i <= 3 UNION ALL SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    1 |\n|    2 |\n|    2 |\n|    3 |\n|    3 |\n|    3 |\n|    3 |\n|    4 |\n|    5 |\n|    6 |\n+------+\n\nSELECT i FROM seqs WHERE i <= 3 EXCEPT SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    1 |\n|    2 |\n+------+\n\nSELECT i FROM seqs WHERE i <= 3 EXCEPT ALL SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    1 |\n|    2 |\n|    2 |\n+------+\n\nSELECT i FROM seqs WHERE i <= 3 INTERSECT SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    3 |\n+------+\n\nSELECT i FROM seqs WHERE i <= 3 INTERSECT ALL SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    3 |\n|    3 |\n+------+\n\nParentheses for specifying precedence, from MariaDB 10.4.0\n\nCREATE OR REPLACE TABLE t1 (a INT);\nCREATE OR REPLACE TABLE t2 (b INT);\nCREATE OR REPLACE TABLE t3 (c INT);\n\nINSERT INTO t1 VALUES (1),(2),(3),(4);\nINSERT INTO t2 VALUES (5),(6);\nINSERT INTO t3 VALUES (1),(6);\n\n((SELECT a FROM t1) UNION (SELECT b FROM t2)) INTERSECT (SELECT c FROM t3);\n+------+\n| a    |\n+------+\n|    1 |\n|    6 |\n+------+\n\n(SELECT a FROM t1) UNION ((SELECT b FROM t2) INTERSECT (SELECT c FROM t3));\n+------+\n| a    |\n+------+\n|    1 |\n|    2 |\n|    3 |\n|    4 |\n|    6 |\n+------+\n\n\n\nURL: mariadb.com/kb/en/intersect/','','https://mariadb.com/kb/en/intersect/'),(424,'JOIN Syntax',27,'Description\n-----------\n\nMariaDB supports the following JOIN syntaxes for the table_references part of\nSELECT statements and multiple-table DELETE and UPDATE statements:\n\ntable_references:\n  table_reference [, table_reference] ...\n\ntable_reference:\n  table_factor\n | join_table\n\ntable_factor:\n  tbl_name [PARTITION (partition_list)]\n    [query_system_time_period_specification] [[AS] alias] [index_hint_list]\n | table_subquery [query_system_time_period_specification] [AS] alias\n | ( table_references )\n | { ON table_reference LEFT OUTER JOIN table_reference\n    ON conditional_expr }\n\njoin_table:\n  table_reference [INNER | CROSS] JOIN table_factor [join_condition]\n | table_reference STRAIGHT_JOIN table_factor\n | table_reference STRAIGHT_JOIN table_factor ON conditional_expr\n | table_reference {LEFT|RIGHT} [OUTER] JOIN table_reference join_condition\n | table_reference NATURAL [{LEFT|RIGHT} [OUTER]] JOIN table_factor\n\njoin_condition:\n  ON conditional_expr\n | USING (column_list)\n\nquery_system_time_period_specification:\n  FOR SYSTEM_TIME AS OF point_in_time\n | FOR SYSTEM_TIME BETWEEN point_in_time AND point_in_time\n | FOR SYSTEM_TIME FROM point_in_time TO point_in_time\n | FOR SYSTEM_TIME ALL\n\npoint_in_time:\n  [TIMESTAMP] expression\n | TRANSACTION expression\n\nindex_hint_list:\n  index_hint [, index_hint] ...\n\nindex_hint:\n  USE {INDEX|KEY}\n   [{FOR {JOIN|ORDER BY|GROUP BY}] ([index_list])\n | IGNORE {INDEX|KEY}\n   [{FOR {JOIN|ORDER BY|GROUP BY}] (index_list)\n | FORCE {INDEX|KEY}\n   [{FOR {JOIN|ORDER BY|GROUP BY}] (index_list)\n\nindex_list:\n  index_name [, index_name] ...\n\nA table reference is also known as a join expression.\n\nEach table can also be specified as db_name.tabl_name. This allows to write\nqueries which involve multiple databases. See Identifier Qualifiers for syntax\ndetails.\n\nThe syntax of table_factor is extended in comparison with the SQL Standard.\nThe latter accepts only table_reference, not a list of them inside a pair of\nparentheses.\n\nThis is a conservative extension if we consider each comma in a list of\ntable_reference items as equivalent to an inner join. For example:\n\nSELECT * FROM t1 LEFT JOIN (t2, t3, t4)\n        ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)\n\nis equivalent to:\n\nSELECT * FROM t1 LEFT JOIN (t2 CROSS JOIN t3 CROSS JOIN t4)\n        ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)\n\nIn MariaDB, CROSS JOIN is a syntactic equivalent to INNER JOIN (they can\nreplace each other). In standard SQL, they are not equivalent. INNER JOIN is\nused with an ON clause, CROSS JOIN is used otherwise.\n\nIn general, parentheses can be ignored in join expressions containing only\ninner join operations. MariaDB also supports nested joins (see\nhttp://dev.mysql.com/doc/refman/5.1/en/nested-join-optimization.html).\n\nSee System-versioned tables for more information about FOR SYSTEM_TIME syntax.\n\nIndex hints can be specified to affect how the MariaDB optimizer makes use of\nindexes. For more information, see How to force query plans.\n\nExamples\n--------\n\nSELECT left_tbl.*\n FROM left_tbl LEFT JOIN right_tbl ON left_tbl.id = right_tbl.id\n WHERE right_tbl.id IS NULL;\n\n\n\nURL: mariadb.com/kb/en/join-syntax/','','https://mariadb.com/kb/en/join-syntax/'),(427,'LOAD XML',27,'Syntax\n------\n\nLOAD XML [LOW_PRIORITY | CONCURRENT] [LOCAL] INFILE \'file_name\'\n  [REPLACE | IGNORE]\n  INTO TABLE [db_name.]tbl_name\n  [CHARACTER SET charset_name]\n  [ROWS IDENTIFIED BY \'<tagname>\']\n  [IGNORE number {LINES | ROWS}]\n  [(column_or_user_var,...)]\n  [SET col_name = expr,...]\n\nDescription\n-----------\n\nThe LOAD XML statement reads data from an XML file into a table. The file_name\nmust be given as a literal string. The tagname in the optional ROWS IDENTIFIED\nBY clause must also be given as a literal string, and must be surrounded by\nangle brackets (< and >).\n\nLOAD XML acts as the complement of running the mysql client in XML output mode\n(that is, starting the client with the --xml option). To write data from a\ntable to an XML file, use a command such as the following one from the system\nshell:\n\nshell> mysql --xml -e \'SELECT * FROM mytable\' > file.xml\n\nTo read the file back into a table, use LOAD XML INFILE. By default, the <row>\nelement is considered to be the equivalent of a database table row; this can\nbe changed using the ROWS IDENTIFIED BY clause.\n\nThis statement supports three different XML formats:\n\n* Column names as attributes and column values as attribute values:\n\n<row column1=\"value1\" column2=\"value2\" .../>\n\n* Column names as tags and column values as the content of these tags:\n\n<row>\n <column1>value1</column1>\n <column2>value2</column2>\n</row>\n\n* Column names are the name attributes of <field> tags, and values are\n the contents of these tags:\n\n<row>\n <field name=\'column1\'>value1</field>\n <field name=\'column2\'>value2</field>\n</row>\n\nThis is the format used by other tools, such as mysqldump.\n\nAll 3 formats can be used in the same XML file; the import routine\nautomatically detects the format for each row and interprets it correctly.\nTags are matched based on the tag or attribute name and the column name.\n\nThe following clauses work essentially the same way for LOAD XML as they do\nfor LOAD DATA:\n\n* LOW_PRIORITY or CONCURRENT\n* LOCAL\n* REPLACE or IGNORE\n* CHARACTER SET\n* (column_or_user_var,...)\n* SET\n\nSee LOAD DATA for more information about these clauses.\n\nThe IGNORE number LINES or IGNORE number ROWS clause causes the first number\nrows in the XML file to be skipped. It is analogous to the LOAD DATA\nstatement\'s IGNORE ... LINES clause.\n\nIf the LOW_PRIORITY keyword is used, insertions are delayed until no other\nclients are reading from the table. The CONCURRENT keyword allowes the use of\nconcurrent inserts. These clauses cannot be specified together.\n\nThis statement activates INSERT triggers.\n\n\n\nURL: mariadb.com/kb/en/load-xml/','','https://mariadb.com/kb/en/load-xml/'),(425,'LIMIT',27,'Description\n-----------\n\nUse the LIMIT clause to restrict the number of returned rows. When you use a\nsingle integer n with LIMIT, the first n rows will be returned. Use the ORDER\nBY clause to control which rows come first. You can also select a number of\nrows after an offset using either of the following:\n\nLIMIT offset, row_count\nLIMIT row_count OFFSET offset\n\nWhen you provide an offset m with a limit n, the first m rows will be ignored,\nand the following n rows will be returned.\n\nExecuting an UPDATE with the LIMIT clause is not safe for replication. LIMIT 0\nis an exception to this rule (see MDEV-6170).\n\nThere is a LIMIT ROWS EXAMINED optimization which provides the means to\nterminate the execution of SELECT statements which examine too many rows, and\nthus use too many resources. See LIMIT ROWS EXAMINED.\n\nMulti-Table Updates\n-------------------\n\nMariaDB starting with 10.3.2\n----------------------------\nUntil MariaDB 10.3.1, it was not possible to use LIMIT (or ORDER BY) in a\nmulti-table UPDATE statement. This restriction was lifted in MariaDB 10.3.2.\n\nGROUP_CONCAT\n------------\n\nMariaDB starting with 10.3.2\n----------------------------\nStarting from MariaDB 10.3.3, it is possible to use LIMIT with GROUP_CONCAT().\n\nExamples\n--------\n\nCREATE TABLE members (name VARCHAR(20));\nINSERT INTO members VALUES(\'Jagdish\'),(\'Kenny\'),(\'Rokurou\'),(\'Immaculada\');\n\nSELECT * FROM members;\n+------------+\n| name       |\n+------------+\n| Jagdish    |\n| Kenny      |\n| Rokurou    |\n| Immaculada |\n+------------+\n\nSelect the first two names (no ordering specified):\n\nSELECT * FROM members LIMIT 2;\n+---------+\n| name    |\n+---------+\n| Jagdish |\n| Kenny   |\n+---------+\n\nAll the names in alphabetical order:\n\nSELECT * FROM members ORDER BY name;\n+------------+\n| name       |\n+------------+\n| Immaculada |\n| Jagdish    |\n| Kenny      |\n| Rokurou    |\n+------------+\n\nThe first two names, ordered alphabetically:\n\nSELECT * FROM members ORDER BY name LIMIT 2;\n+------------+\n| name       |\n+------------+\n| Immaculada |\n| Jagdish    |\n+------------+\n\nThe third name, ordered alphabetically (the first name would be offset zero,\nso the third is offset two):\n\nSELECT * FROM members ORDER BY name LIMIT 2,1;\n+-------+\n| name  |\n+-------+\n| Kenny |\n+-------+\n\nFrom MariaDB 10.3.2, LIMIT can be used in a multi-table update:\n\nCREATE TABLE warehouse (product_id INT, qty INT);\nINSERT INTO warehouse VALUES (1,100),(2,100),(3,100),(4,100);\n\nCREATE TABLE store (product_id INT, qty INT);\nINSERT INTO store VALUES (1,5),(2,5),(3,5),(4,5);\n\nUPDATE warehouse,store SET warehouse.qty = warehouse.qty-2, store.qty =\nstore.qty+2 \n WHERE (warehouse.product_id = store.product_id AND store.product_id  >= 1)\n  ORDER BY store.product_id DESC LIMIT 2;\n\nSELECT * FROM warehouse;\n+------------+------+\n| product_id | qty  |\n+------------+------+\n|          1 |  100 |\n|          2 |  100 |\n|          3 |   98 |\n|          4 |   98 |\n+------------+------+\n\nSELECT * FROM store;\n+------------+------+\n| product_id | qty  |\n+------------+------+\n|          1 |    5 |\n|          2 |    5 |\n|          3 |    7 |\n|          4 |    7 |\n+------------+------+\n\nFrom MariaDB 10.3.3, LIMIT can be used with GROUP_CONCAT, so, for example,\ngiven the following table:\n\nCREATE TABLE d (dd DATE, cc INT);\n\nINSERT INTO d VALUES (\'2017-01-01\',1);\nINSERT INTO d VALUES (\'2017-01-02\',2);\nINSERT INTO d VALUES (\'2017-01-04\',3);\n\nthe following query:\n\nSELECT SUBSTRING_INDEX(GROUP_CONCAT(CONCAT_WS(\":\",dd,cc) ORDER BY cc\nDESC),\",\",1) FROM d;\n+----------------------------------------------------------------------------+\n| SUBSTRING_INDEX(GROUP_CONCAT(CONCAT_WS(\":\",dd,cc) ORDER BY cc DESC),\",\",1) |\n+----------------------------------------------------------------------------+\n| 2017-01-04:3                                                               |\n+----------------------------------------------------------------------------+\n\ncan be more simply rewritten as:\n\nSELECT GROUP_CONCAT(CONCAT_WS(\":\",dd,cc) ORDER BY cc DESC LIMIT 1) FROM d;\n+-------------------------------------------------------------+\n| GROUP_CONCAT(CONCAT_WS(\":\",dd,cc) ORDER BY cc DESC LIMIT 1) |\n+-------------------------------------------------------------+\n| 2017-01-04:3                                                |\n+-------------------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/limit/','','https://mariadb.com/kb/en/limit/'),(429,'Non-Recursive Common Table Expressions Overview',27,'Common Table Expressions (CTEs) are a standard SQL feature, and are\nessentially temporary named result sets. There are two kinds of CTEs:\nNon-Recursive, which this article covers; and Recursive.\n\nMariaDB starting with 10.2.1\n----------------------------\nCommon table expressions were introduced in MariaDB 10.2.1.\n\nNon-Recursive CTEs\n------------------\n\nThe WITH keyword signifies a CTE. It is given a name, followed by a body (the\nmain query) as follows:\n\nCTEs are similar to derived tables. For example\n\nWITH engineers AS \n ( SELECT * FROM employees\n  WHERE dept = \'Engineering\' )\n\nSELECT * FROM engineers\nWHERE ...\n\nSELECT * FROM\n ( SELECT * FROM employees\n  WHERE dept = \'Engineering\' ) AS engineers\nWHERE\n...\n\nA non-recursive CTE is basically a query-local VIEW. There are several\nadvantages and caveats to them. The syntax is more readable than nested FROM\n(SELECT ...). A CTE can refer to another and it can be referenced from\nmultiple places.\n\nA CTE referencing Another CTE\n-----------------------------\n\nUsing this format makes for a more readable SQL than a nested FROM(SELECT ...)\nclause. Below is an example of this:\n\nWITH engineers AS (\nSELECT * FROM employees\nWHERE dept IN(\'Development\',\'Support\') ),\neu_engineers AS ( SELECT * FROM engineers WHERE country IN(\'NL\',...) )\nSELECT\n...\nFROM eu_engineers;\n\nMultiple Uses of a CTE\n----------------------\n\nThis can be an \'anti-self join\', for example:\n\nWITH engineers AS (\nSELECT * FROM employees\nWHERE dept IN(\'Development\',\'Support\') )\n\nSELECT * FROM engineers E1\nWHERE NOT EXISTS\n (SELECT 1 FROM engineers E2\n  WHERE E2.country=E1.country\n  AND E2.name <> E1.name );\n\nOr, for year-over-year comparisons, for example:\n\nWITH sales_product_year AS (\nSELECT product, YEAR(ship_date) AS year,\nSUM(price) AS total_amt\nFROM item_sales\nGROUP BY product, year )\n\nSELECT *\nFROM sales_product_year CUR,\nsales_product_year PREV,\nWHERE CUR.product=PREV.product \nAND  CUR.year=PREV.year + 1 \nAND CUR.total_amt > PREV.total_amt\n\nAnother use is to compare individuals against their group. Below is an example\nof how this might be executed:\n\nWITH sales_product_year AS (\nSELECT product,\nYEAR(ship_date) AS year,\nSUM(price) AS total_amt\nFROM item_sales\nGROUP BY product, year\n)\n\nSELECT * \nFROM sales_product_year S1\nWHERE\ntotal_amt > \n  (SELECT 0.1 * SUM(total_amt)\n  FROM sales_product_year S2\n  WHERE S2.year = S1.year)\n\n\n\nURL: mariadb.com/kb/en/non-recursive-common-table-expressions-overview/','','https://mariadb.com/kb/en/non-recursive-common-table-expressions-overview/'),(430,'ORDER BY',27,'Description\n-----------\n\nUse the ORDER BY clause to order a resultset, such as that are returned from a\nSELECT statement. You can specify just a column or use any expression with\nfunctions. If you are using the GROUP BY clause, you can use grouping\nfunctions in ORDER BY. Ordering is done after grouping.\n\nYou can use multiple ordering expressions, separated by commas. Rows will be\nsorted by the first expression, then by the second expression if they have the\nsame value for the first, and so on.\n\nYou can use the keywords ASC and DESC after each ordering expression to force\nthat ordering to be ascending or descending, respectively. Ordering is\nascending by default.\n\nYou can also use a single integer as the ordering expression. If you use an\ninteger n, the results will be ordered by the nth column in the select\nexpression.\n\nWhen string values are compared, they are compared as if by the STRCMP\nfunction. STRCMP ignores trailing whitespace and may normalize characters and\nignore case, depending on the collation in use.\n\nDuplicated entries in the ORDER BY clause are removed.\n\nORDER BY can also be used to order the activities of a DELETE or UPDATE\nstatement (usually with the LIMIT clause).\n\nMariaDB starting with 10.3.2\n----------------------------\nUntil MariaDB 10.3.1, it was not possible to use ORDER BY (or LIMIT) in a\nmulti-table UPDATE statement. This restriction was lifted in MariaDB 10.3.2.\n\nMariaDB starting with 10.5\n--------------------------\nFrom MariaDB 10.5, MariaDB allows packed sort keys and values of non-sorted\nfields in the sort buffer. This can make filesort temporary files much smaller\nwhen VARCHAR, CHAR or BLOBs are used, notably speeding up some ORDER BY sorts.\n\nExamples\n--------\n\nCREATE TABLE seq (i INT, x VARCHAR(1));\nINSERT INTO seq VALUES (1,\'a\'), (2,\'b\'), (3,\'b\'), (4,\'f\'), (5,\'e\');\n\nSELECT * FROM seq ORDER BY i;\n+------+------+\n| i    | x    |\n+------+------+\n|    1 | a    |\n|    2 | b    |\n|    3 | b    |\n|    4 | f    |\n|    5 | e    |\n+------+------+\n\nSELECT * FROM seq ORDER BY i DESC;\n+------+------+\n| i    | x    |\n+------+------+\n|    5 | e    |\n|    4 | f    |\n|    3 | b    |\n|    2 | b    |\n|    1 | a    |\n+------+------+\n\nSELECT * FROM seq ORDER BY x,i;\n+------+------+\n| i    | x    |\n+------+------+\n|    1 | a    |\n|    2 | b    |\n|    3 | b    |\n|    5 | e    |\n|    4 | f    |\n+------+------+\n\nORDER BY in an UPDATE statement, in conjunction with LIMIT:\n\nUPDATE seq SET x=\'z\' WHERE x=\'b\' ORDER BY i DESC LIMIT 1;\n\nSELECT * FROM seq;\n+------+------+\n| i    | x    |\n+------+------+\n|    1 | a    |\n|    2 | b    |\n|    3 | z    |\n|    4 | f    |\n|    5 | e    |\n+------+------+\n\nFrom MariaDB 10.3.2, ORDER BY can be used in a multi-table update:\n\nCREATE TABLE warehouse (product_id INT, qty INT);\nINSERT INTO warehouse VALUES (1,100),(2,100),(3,100),(4,100);\n\nCREATE TABLE store (product_id INT, qty INT);\nINSERT INTO store VALUES (1,5),(2,5),(3,5),(4,5);\n\nUPDATE warehouse,store SET warehouse.qty = warehouse.qty-2, store.qty =\nstore.qty+2 \n WHERE (warehouse.product_id = store.product_id AND store.product_id  >= 1)\n  ORDER BY store.product_id DESC LIMIT 2;\n\nSELECT * FROM warehouse;\n+------------+------+\n| product_id | qty  |\n+------------+------+\n|          1 |  100 |\n|          2 |  100 |\n|          3 |   98 |\n|          4 |   98 |\n+------------+------+\n\nSELECT * FROM store;\n+------------+------+\n| product_id | qty  |\n+------------+------+\n|          1 |    5 |\n|          2 |    5 |\n|          3 |    7 |\n|          4 |    7 |\n+------------+------+\n\n\n\nURL: mariadb.com/kb/en/order-by/','','https://mariadb.com/kb/en/order-by/'),(435,'SELECT INTO DUMPFILE',27,'Syntax\n------\n\nSELECT ... INTO DUMPFILE \'file_path\'\n\nDescription\n-----------\n\nSELECT ... INTO DUMPFILE is a SELECT clause which writes the resultset into a\nsingle unformatted row, without any separators, in a file. The results will\nnot be returned to the client.\n\nfile_path can be an absolute path, or a relative path starting from the data\ndirectory. It can only be specified as a string literal, not as a variable.\nHowever, the statement can be dynamically composed and executed as a prepared\nstatement to work around this limitation.\n\nThis statement is binary-safe and so is particularly useful for writing BLOB\nvalues to file. It can be used, for example, to copy an image or an audio\ndocument from the database to a file. SELECT ... INTO FILE can be used to save\na text file.\n\nThe file must not exist. It cannot be overwritten. A user needs the FILE\nprivilege to run this statement. Also, MariaDB needs permission to write files\nin the specified location. If the secure_file_priv system variable is set to a\nnon-empty directory name, the file can only be written to that directory.\n\nSince MariaDB 5.1, the character_set_filesystem system variable has controlled\ninterpretation of file names that are given as literal strings.\n\nExample\n-------\n\nSELECT _utf8\'Hello world!\' INTO DUMPFILE \'/tmp/world\';\n\nSELECT LOAD_FILE(\'/tmp/world\') AS world;\n+--------------+\n| world        |\n+--------------+\n| Hello world! |\n+--------------+\n\n\n\nURL: mariadb.com/kb/en/select-into-dumpfile/','','https://mariadb.com/kb/en/select-into-dumpfile/'),(432,'Recursive Common Table Expressions Overview',27,'MariaDB starting with 10.2.2\n----------------------------\nRecursive Common Table Expressions have been supported since MariaDB 10.2.2.\n\nCommon Table Expressions (CTEs) are a standard SQL feature, and are\nessentially temporary named result sets. CTEs first appeared in the SQL\nstandard in 1999, and the first implementations began appearing in 2007.\n\nThere are two kinds of CTEs:\n\n* Non-recursive\n* Recursive, which this article covers.\n\nSQL is generally poor at recursive structures.\n\nCTEs permit a query to reference itself. A recursive CTE will repeatedly\nexecute subsets of the data until it obtains the complete result set. This\nmakes it particularly useful for handing hierarchical or tree-structured data.\nmax_recursive_iterations avoids infinite loops.\n\nSyntax example\n--------------\n\nWITH RECURSIVE signifies a recursive CTE. It is given a name, followed by a\nbody (the main query) as follows:\n\nComputation\n-----------\n\nGiven the following structure:\n\nFirst execute the anchor part of the query:\n\nNext, execute the recursive part of the query:\n\nSummary so far\n--------------\n\nwith recursive R as (\n select anchor_data\n union [all]\n select recursive_part\n from R, ...\n)\nselect ...\n\n* Compute anchor_data\n* Compute recursive_part to get the new data\n* if (new data is non-empty) goto 2;\n\nCAST to avoid truncating data\n-----------------------------\n\nAs currently implemented by MariaDB and by the SQL Standard, data may be\ntruncated if not correctly cast. It is necessary to CAST the column to the\ncorrect width if the CTE\'s recursive part produces wider values for a column\nthan the CTE\'s nonrecursive part. Some other DBMS give an error in this\nsituation, and MariaDB\'s behavior may change in future - see MDEV-12325. See\nthe examples below.\n\nExamples\n--------\n\nTransitive closure - determining bus destinations\n-------------------------------------------------\n\nSample data:\n\nCREATE TABLE bus_routes (origin varchar(50), dst varchar(50));\nINSERT INTO bus_routes VALUES \n (\'New York\', \'Boston\'),\n (\'Boston\', \'New York\'),\n (\'New York\', \'Washington\'),\n (\'Washington\', \'Boston\'),\n (\'Washington\', \'Raleigh\');\n\nNow, we want to return the bus destinations with New York as the origin:\n\nWITH RECURSIVE bus_dst as ( \n  SELECT origin as dst FROM bus_routes WHERE origin=\'New York\'\n UNION\n  SELECT bus_routes.dst FROM bus_routes JOIN bus_dst ON bus_dst.dst=\nbus_routes.origin \n) \nSELECT * FROM bus_dst;\n+------------+\n| dst        |\n+------------+\n| New York   |\n| Boston     |\n| Washington |\n| Raleigh    |\n+------------+\n\nThe above example is computed as follows:\n\nFirst, the anchor data is calculated:\n\n* Starting from New York\n* Boston and Washington are added\n\nNext, the recursive part:\n\n* Starting from Boston and then Washington\n* Raleigh is added\n* UNION excludes nodes that are already present.\n\nComputing paths - determining bus routes\n----------------------------------------\n\nThis time, we are trying to get bus routes such as “New York -> Washington ->\nRaleigh”.\n\nUsing the same sample data as the previous example:\n\nWITH RECURSIVE paths (cur_path, cur_dest) AS (\n  SELECT origin, origin FROM bus_routes WHERE origin=\'New York\'\n UNION\n  SELECT CONCAT(paths.cur_path, \',\', bus_routes.dst), bus_routes.dst\n  FROM paths\n  JOIN bus_routes\n   ON paths.cur_dest = bus_routes.origin AND\n    NOT FIND_IN_SET(bus_routes.dst, paths.cur_path)\n) \nSELECT * FROM paths;\n+-----------------------------+------------+\n| cur_path                    | cur_dest   |\n+-----------------------------+------------+\n| New York                    | New York   |\n| New York,Boston             | Boston     |\n| New York,Washington         | Washington |\n| New York,Washington,Boston  | Boston     |\n| New York,Washington,Raleigh | Raleigh    |\n+-----------------------------+------------+\n\nCAST to avoid data truncation\n-----------------------------\n\nIn the following example, data is truncated because the results are not\nspecifically cast to a wide enough type:\n\nWITH RECURSIVE tbl AS (\n SELECT NULL AS col\n UNION\n SELECT \"THIS NEVER SHOWS UP\" AS col FROM tbl\n)\nSELECT col FROM tbl\n+------+\n| col  |\n+------+\n| NULL |\n|      |\n+------+\n\nExplicitly use CAST to overcome this:\n\nWITH RECURSIVE tbl AS (\n SELECT CAST(NULL AS CHAR(50)) AS col\n UNION SELECT \"THIS NEVER SHOWS UP\" AS col FROM tbl\n)  \nSELECT * FROM tbl;\n+---------------------+\n| col                 |\n+---------------------+\n| NULL                |\n| THIS NEVER SHOWS UP |\n+---------------------+\n\n\n\nURL: mariadb.com/kb/en/recursive-common-table-expressions-overview/','','https://mariadb.com/kb/en/recursive-common-table-expressions-overview/'),(436,'SELECT INTO OUTFILE',27,'Syntax\n------\n\nSELECT ... INTO OUTFILE \'file_name\'\n    [CHARACTER SET charset_name]\n    [export_options]\n\nexport_options:\n  [{FIELDS | COLUMNS}\n    [TERMINATED BY \'string\']\n    [[OPTIONALLY] ENCLOSED BY \'char\']\n    [ESCAPED BY \'char\']\n  ]\n  [LINES\n    [STARTING BY \'string\']\n    [TERMINATED BY \'string\']\n  ]\n\nDescription\n-----------\n\nSELECT INTO OUTFILE writes the resulting rows to a file, and allows the use of\ncolumn and row terminators to specify a particular output format. The default\nis to terminate fields with tabs (	) and lines with newlines (\n).\n\nThe file must not exist. It cannot be overwritten. A user needs the FILE\nprivilege to run this statement. Also, MariaDB needs permission to write files\nin the specified location. If the secure_file_priv system variable is set to a\nnon-empty directory name, the file can only be written to that directory.\n\nThe LOAD DATA INFILE statement complements SELECT INTO OUTFILE.\n\nCharacter-sets\n--------------\n\nThe CHARACTER SET clause specifies the character set in which the results are\nto be written. Without the clause, no conversion takes place (the binary\ncharacter set). In this case, if there are multiple character sets, the output\nwill contain these too, and may not easily be able to be reloaded.\n\nIn cases where you have two servers using different character-sets, using\nSELECT INTO OUTFILE to transfer data from one to the other can have unexpected\nresults. To ensure that MariaDB correctly interprets the escape sequences, use\nthe CHARACTER SET clause on both the SELECT INTO OUTFILE statement and the\nsubsequent LOAD DATA INFILE statement.\n\nExample\n-------\n\nThe following example produces a file in the CSV format:\n\nSELECT customer_id, firstname, surname INTO OUTFILE \'/exportdata/customers.txt\'\n FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'\"\'\n LINES TERMINATED BY \'\n\'\n FROM customers;\n\n\n\nURL: mariadb.com/kb/en/select-into-outfile/','','https://mariadb.com/kb/en/select-into-outfile/'),(433,'REPLACE',27,'Syntax\n------\n\nREPLACE [LOW_PRIORITY | DELAYED]\n [INTO] tbl_name [PARTITION (partition_list)] [(col,...)]\n {VALUES | VALUE} ({expr | DEFAULT},...),(...),...\n[RETURNING select_expr \n   [, select_expr ...]]\n\nOr:\n\nREPLACE [LOW_PRIORITY | DELAYED]\n  [INTO] tbl_name [PARTITION (partition_list)]\n  SET col={expr | DEFAULT}, ...\n[RETURNING select_expr \n   [, select_expr ...]]\n\nOr:\n\nREPLACE [LOW_PRIORITY | DELAYED]\n  [INTO] tbl_name [PARTITION (partition_list)] [(col,...)]\n  SELECT ...\n[RETURNING select_expr \n   [, select_expr ...]]\n\nDescription\n-----------\n\nREPLACE works exactly like INSERT, except that if an old row in the table has\nthe same value as a new row for a PRIMARY KEY or a UNIQUE index, the old row\nis deleted before the new row is inserted. If the table has more than one\nUNIQUE keys, it is possible that the new row conflicts with more than one row.\nIn this case, all conflicting rows will be deleted.\n\nThe table name can be specified in the form db_name.tbl_name or, if a default\ndatabase is selected, in the form tbl_name (see Identifier Qualifiers). This\nallows to use REPLACE ... SELECT to copy rows between different databases.\n\nMariaDB starting with 10.5.0\n----------------------------\nThe RETURNING clause was introduced in MariaDB 10.5.0\n\nBasically it works like this:\n\nBEGIN;\nSELECT 1 FROM t1 WHERE key=# FOR UPDATE;\nIF found-row\n DELETE FROM t1 WHERE key=# ;\nENDIF\nINSERT INTO t1 VALUES (...);\nEND;\n\nThe above can be replaced with:\n\nREPLACE INTO t1 VALUES (...)\n\nREPLACE is a MariaDB/MySQL extension to the SQL standard. It either inserts,\nor deletes and inserts. For other MariaDB/MySQL extensions to standard SQL ---\nthat also handle duplicate values --- see IGNORE and INSERT ON DUPLICATE KEY\nUPDATE.\n\nNote that unless the table has a PRIMARY KEY or UNIQUE index, using a REPLACE\nstatement makes no sense. It becomes equivalent to INSERT, because there is no\nindex to be used to determine whether a new row duplicates another.\n\nValues for all columns are taken from the values sSee Partition Pruning and\nSelection for details.pecified in the REPLACE statement. Any missing columns\nare set to their default values, just as happens for INSERT. You cannot refer\nto values from the current row and use them in the new row. If you use an\nassignment such as \'SET col = col + 1\', the reference to the column name on\nthe right hand side is treated as DEFAULT(col), so the assignment is\nequivalent to \'SET col = DEFAULT(col) + 1\'.\n\nTo use REPLACE, you must have both the INSERT and DELETE privileges for the\ntable.\n\nThere are some gotchas you should be aware of, before using REPLACE:\n\n* If there is an AUTO_INCREMENT field, a new value will be generated.\n* If there are foreign keys, ON DELETE action will be activated by REPLACE.\n* Triggers on DELETE and INSERT will be activated by REPLACE.\n\nTo avoid some of these behaviors, you can use INSERT ... ON DUPLICATE KEY\nUPDATE.\n\nThis statement activates INSERT and DELETE triggers. See Trigger Overview for\ndetails.\n\nPARTITION\n---------\n\nSee Partition Pruning and Selection for details.\n\nREPLACE RETURNING\n-----------------\n\nREPLACE ... RETURNING returns a resultset of the replaced rows.\n\nThis returns the listed columns for all the rows that are replaced, or\nalternatively, the specified SELECT expression. Any SQL expressions which can\nbe calculated can be used in the select expression for the RETURNING clause,\nincluding virtual columns and aliases, expressions which use various operators\nsuch as bitwise, logical and arithmetic operators, string functions, date-time\nfunctions, numeric functions, control flow functions, secondary functions and\nstored functions. Along with this, statements which have subqueries and\nprepared statements can also be used.\n\nExamples\n--------\n\nSimple REPLACE statement\n\nREPLACE INTO t2 VALUES (1,\'Leopard\'),(2,\'Dog\') RETURNING id2, id2+id2 \nas Total ,id2|id2, id2&&id2;\n+-----+-------+---------+----------+\n| id2 | Total | id2|id2 | id2&&id2 |\n+-----+-------+---------+----------+\n|   1 |     2 |       1 |        1 |\n|   2 |     4 |       2 |        1 |\n+-----+-------+---------+----------+\n\nUsing stored functions in RETURNING\n\nDELIMITER |\nCREATE FUNCTION f(arg INT) RETURNS INT\n  BEGIN\n   RETURN (SELECT arg+arg);\n  END|\n\nDELIMITER ;\nPREPARE stmt FROM \"REPLACE INTO t2 SET id2=3, animal2=\'Fox\' RETURNING f2(id2),\nUPPER(animal2)\";\n\nEXECUTE stmt;\n+---------+----------------+\n| f2(id2) | UPPER(animal2) |\n+---------+----------------+\n|       6 | FOX            |\n+---------+----------------+\n\nSubqueries in the statement\n\nREPLACE INTO t1 SELECT * FROM t2 RETURNING (SELECT id2 FROM t2 WHERE \nid2 IN (SELECT id2 FROM t2 WHERE id2=1)) AS new_id;\n+--------+\n| new_id |\n+--------+\n|      1 |\n|      1 |\n|      1 |\n|      1 |\n+--------+\n\nSubqueries in the RETURNING clause that return more than one row or column\ncannot be used..\n\nAggregate functions cannot be used in the RETURNING clause. Since aggregate\nfunctions work on a set of values and if the purpose is to get the row count,\nROW_COUNT() with SELECT can be used, or it can be used in REPLACE...SEL==\nDescription\n\nREPLACE ... RETURNING returns a resultset of the replaced rows.\n\nThis returns the listed columns for all the rows that are replaced, or\nalternatively, the specified SELECT expression. Any SQL expressions which can\nbe calculated can be used in the select expression for the RETURNING clause,\nincluding virtual columns and aliases, expressions which use various operators\nsuch as bitwise, logical and arithmetic operators, string functions, date-time\nfunctions, numeric functions, control flow functions, secondary functions and\nstored functions. Along with this, statements which have subqueries and\nprepared statements can also be used.\n\nExamples\n--------\n\nSimple REPLACE statement\n\nREPLACE INTO t2 VALUES (1,\'Leopard\'),(2,\'Dog\') RETURNING id2, id2+id2 \nas Total ,id2|id2, id2&&id2;\n+-----+-------+---------+----------+\n| id2 | Total | id2|id2 | id2&&id2 |\n+-----+-------+---------+----------+\n|   1 |     2 |       1 |        1 |\n|   2 |     4 |       2 |        1 |\n+-----+-------+---------+----------+\n\nUsing stored functions in RETURNING\n\nDELIMITER |\nCREATE FUNCTION f(arg INT) RETURNS INT\n  BEGIN\n   RETURN (SELECT arg+arg);\n  END|\n\nDELIMITER ;\nPREPARE stmt FROM \"REPLACE INTO t2 SET id2=3, animal2=\'Fox\' RETURNING f2(id2),\nUPPER(animal2)\";\n\nEXECUTE stmt;\n+---------+----------------+\n| f2(id2) | UPPER(animal2) |\n+---------+----------------+\n|       6 | FOX            |\n+---------+----------------+\n\nSubqueries in the statement\n\nREPLACE INTO t1 SELECT * FROM t2 RETURNING (SELECT id2 FROM t2 WHERE \nid2 IN (SELECT id2 FROM t2 WHERE id2=1)) AS new_id;\n+--------+\n| new_id |\n+--------+\n|      1 |\n|      1 |\n|      1 |\n|      1 |\n+--------+\n\nSubqueries in the RETURNING clause that return more than one row or column\ncannot be used..\n\nAggregate functions cannot be used in the RETURNING clause. Since aggregate\nfunctions work on a set of values and if the purpose is to get the row count,\nROW_COUNT() with SELECT can be used, or it can be used in\nREPLACE...SELECT...RETURNING if the table in the RETURNING clause is not the\nsame as the REPLACE table. ECT...RETURNING if the table in the RETURNING\nclause is not the same as the REPLACE table.\n\n\n\nURL: mariadb.com/kb/en/replace/','','https://mariadb.com/kb/en/replace/'),(434,'SELECT',27,'Syntax\n------\n\nSELECT\n  [ALL | DISTINCT | DISTINCTROW]\n  [HIGH_PRIORITY]\n  [STRAIGHT_JOIN]\n  [SQL_SMALL_RESULT] [SQL_BIG_RESULT] [SQL_BUFFER_RESULT]\n  [SQL_CACHE | SQL_NO_CACHE] [SQL_CALC_FOUND_ROWS]\n  select_expr [, select_expr ...]\n  [ FROM table_references\n   [WHERE where_condition]\n   [GROUP BY {col_name | expr | position} [ASC | DESC], ... [WITH ROLLUP]]\n   [HAVING where_condition]\n   [ORDER BY {col_name | expr | position} [ASC | DESC], ...]\n   [LIMIT {[offset,] row_count | row_count OFFSET offset  [ROWS EXAMINED\nrows_limit] } |\n    [OFFSET start { ROW | ROWS }]\n    [FETCH { FIRST | NEXT } [ count ] { ROW | ROWS } { ONLY | WITH TIES }]\n]\n   procedure|[PROCEDURE procedure_name(argument_list)]\n   [INTO OUTFILE \'file_name\' [CHARACTER SET charset_name] [export_options] |\n    INTO DUMPFILE \'file_name\' | INTO var_name [, var_name] ]\n   [FOR UPDATE lock_option | LOCK IN SHARE MODE lock_option]\nexport_options:\n  [{FIELDS | COLUMNS}\n    [TERMINATED BY \'string\']\n    [[OPTIONALLY] ENCLOSED BY \'char\']\n    [ESCAPED BY \'char\']\n  ]\n  [LINES\n    [STARTING BY \'string\']\n    [TERMINATED BY \'string\']\n  ]\nlock_option:\n  [WAIT n | NOWAIT | SKIP LOCKED]\n\nDescription\n-----------\n\nSELECT is used to retrieve rows selected from one or more tables, and can\ninclude UNION statements and subqueries.\n\n* Each select_expr expression indicates a column or data that you want to\nretrieve. You\nmust have at least one select expression. See Select Expressions below.\n\n* The FROM clause indicates the table or tables from which to retrieve rows.\nUse either a single table name or a JOIN expression. See JOIN\nfor details. If no table is involved, FROM DUAL can be specified.\n\n* Each table can also be specified as db_name.tabl_name. Each column can also\nbe specified as tbl_name.col_name or even db_name.tbl_name.col_name. This\nallows one to write queries which involve multiple databases. See Identifier\nQualifiers for syntax details.\n\n* The WHERE clause, if given, indicates the condition or\n conditions that rows must satisfy to be selected.\n where_condition is an expression that evaluates to true for\n each row to be selected. The statement selects all rows if there is no WHERE\n clause.\nIn the WHERE clause, you can use any of the functions and\n operators that MariaDB supports, except for aggregate (summary) functions.\nSee Functions and Operators and Functions and Modifiers for use with GROUP BY\n(aggregate).\n\n* Use the ORDER BY clause to order the results.\n\n* Use the LIMIT clause allows you to restrict the results to only\na certain number of rows, optionally with an offset.\n\n* Use the GROUP BY and HAVING clauses to group\nrows together when they have columns or computed values in common.\n\nSELECT can also be used to retrieve rows computed without reference to any\ntable.\n\nSelect Expressions\n------------------\n\nA SELECT statement must contain one or more select expressions, separated by\ncommas. Each select expression can be one of the following:\n\n* The name of a column.\n* Any expression using functions and operators.\n* * to select all columns from all tables in the FROM clause.\n* tbl_name.* to select all columns from just the table tbl_name.\n\nWhen specifying a column, you can either use just the column name or qualify\nthe column name with the name of the table using tbl_name.col_name. The\nqualified form is useful if you are joining multiple tables in the FROM\nclause. If you do not qualify the column names when selecting from multiple\ntables, MariaDB will try to find the column in each table. It is an error if\nthat column name exists in multiple tables.\n\nYou can quote column names using backticks. If you are qualifying column names\nwith table names, quote each part separately as `tbl_name`.`col_name`.\n\nIf you use any grouping functions in any of the select expressions, all rows\nin your results will be implicitly grouped, as if you had used GROUP BY NULL.\n\nDISTINCT\n--------\n\nA query may produce some identical rows. By default, all rows are retrieved,\neven when their values are the same. To explicitly specify that you want to\nretrieve identical rows, use the ALL option. If you want duplicates to be\nremoved from the resultset, use the DISTINCT option. DISTINCTROW is a synonym\nfor DISTINCT. See also COUNT DISTINCT and SELECT UNIQUE in Oracle mode.\n\nINTO\n----\n\nThe INTO clause is used to specify that the query results should be written to\na file or variable.\n\n* SELECT INTO OUTFILE - formatting and writing the result to an external file.\n* SELECT INTO DUMPFILE - binary-safe writing of the unformatted results to an\nexternal file.\n* SELECT INTO Variable - selecting and setting variables.\n\nThe reverse of SELECT INTO OUTFILE is LOAD DATA.\n\nLIMIT\n-----\n\nRestricts the number of returned rows. See LIMIT and LIMIT ROWS EXAMINED for\ndetails.\n\nLOCK IN SHARE MODE/FOR UPDATE\n-----------------------------\n\nSee LOCK IN SHARE MODE and FOR UPDATE for details on the respective locking\nclauses.\n\nOFFSET ... FETCH\n----------------\n\nMariaDB starting with 10.6\n--------------------------\nSee SELECT ... OFFSET ... FETCH.\n\nORDER BY\n--------\n\nOrder a resultset. See ORDER BY for details.\n\nPARTITION\n---------\n\nSpecifies to the optimizer which partitions are relevant for the query. Other\npartitions will not be read. See Partition Pruning and Selection for details.\n\nPROCEDURE\n---------\n\nPasses the whole result set to a C Procedure. See PROCEDURE and PROCEDURE\nANALYSE (the only built-in procedure not requiring the server to be\nrecompiled).\n\nSKIP LOCKED\n-----------\n\nMariaDB starting with 10.6\n--------------------------\nThe SKIP LOCKED clause was introduced in MariaDB 10.6.0.\n\nThis causes those rows that couldn\'t be locked (LOCK IN SHARE MODE or FOR\nUPDATE) to be excluded from the result set. An explicit NOWAIT is implied\nhere. This is only implemented on InnoDB tables and ignored otherwise.\n\nSQL_CALC_FOUND_ROWS\n-------------------\n\nWhen SQL_CALC_FOUND_ROWS is used, then MariaDB will calculate how many rows\nwould have been in the result, if there would be no LIMIT clause. The result\ncan be found by calling the function FOUND_ROWS() in your next sql statement.\n\nmax_statement_time clause\n-------------------------\n\nBy using max_statement_time in conjunction with SET STATEMENT, it is possible\nto limit the execution time of individual queries. For example:\n\nSET STATEMENT max_statement_time=100 FOR \n SELECT field1 FROM table_name ORDER BY field1;\n\nWAIT/NOWAIT\n-----------\n\nSet the lock wait timeout. See WAIT and NOWAIT.\n\nExamples\n--------\n\nSELECT f1,f2 FROM t1 WHERE (f3<=10) AND (f4=\'y\');\n\nSee Getting Data from MariaDB (Beginner tutorial), or the various\nsub-articles, for more examples.\n\n\n\nURL: mariadb.com/kb/en/select/','','https://mariadb.com/kb/en/select/'),(437,'SELECT WITH ROLLUP',27,'Syntax\n------\n\nSee SELECT for the full syntax.\n\nDescription\n-----------\n\nThe WITH ROLLUP modifier adds extra rows to the resultset that represent\nsuper-aggregate summaries. The super-aggregated column is represented by a\nNULL value. Multiple aggregates over different columns will be added if there\nare multiple GROUP BY columns.\n\nThe LIMIT clause can be used at the same time, and is applied after the WITH\nROLLUP rows have been added.\n\nWITH ROLLUP cannot be used with ORDER BY. Some sorting is still possible by\nusing ASC or DESC clauses with the GROUP BY column, although the\nsuper-aggregate rows will always be added last.\n\nExamples\n--------\n\nThese examples use the following sample table\n\nCREATE TABLE booksales ( \n country VARCHAR(35), genre ENUM(\'fiction\',\'non-fiction\'), year YEAR, sales\nINT);\n\nINSERT INTO booksales VALUES\n (\'Senegal\',\'fiction\',2014,12234), (\'Senegal\',\'fiction\',2015,15647),\n (\'Senegal\',\'non-fiction\',2014,64980), (\'Senegal\',\'non-fiction\',2015,78901),\n (\'Paraguay\',\'fiction\',2014,87970), (\'Paraguay\',\'fiction\',2015,76940),\n (\'Paraguay\',\'non-fiction\',2014,8760), (\'Paraguay\',\'non-fiction\',2015,9030);\n\nThe addition of the WITH ROLLUP modifier in this example adds an extra row\nthat aggregates both years:\n\nSELECT year, SUM(sales) FROM booksales GROUP BY year;\n+------+------------+\n| year | SUM(sales) |\n+------+------------+\n| 2014 |     173944 |\n| 2015 |     180518 |\n+------+------------+\n2 rows in set (0.08 sec)\n\nSELECT year, SUM(sales) FROM booksales GROUP BY year WITH ROLLUP;\n+------+------------+\n| year | SUM(sales) |\n+------+------------+\n| 2014 |     173944 |\n| 2015 |     180518 |\n| NULL |     354462 |\n+------+------------+\n\nIn the following example, each time the genre, the year or the country change,\nanother super-aggregate row is added:\n\nSELECT country, year, genre, SUM(sales) \n FROM booksales GROUP BY country, year, genre;\n+----------+------+-------------+------------+\n| country  | year | genre       | SUM(sales) |\n+----------+------+-------------+------------+\n| Paraguay | 2014 | fiction     |      87970 |\n| Paraguay | 2014 | non-fiction |       8760 |\n| Paraguay | 2015 | fiction     |      76940 |\n| Paraguay | 2015 | non-fiction |       9030 |\n| Senegal  | 2014 | fiction     |      12234 |\n| Senegal  | 2014 | non-fiction |      64980 |\n| Senegal  | 2015 | fiction     |      15647 |\n| Senegal  | 2015 | non-fiction |      78901 |\n+----------+------+-------------+------------+\n\nSELECT country, year, genre, SUM(sales) \n FROM booksales GROUP BY country, year, genre WITH ROLLUP;\n+----------+------+-------------+------------+\n| country  | year | genre       | SUM(sales) |\n+----------+------+-------------+------------+\n| Paraguay | 2014 | fiction     |      87970 |\n| Paraguay | 2014 | non-fiction |       8760 |\n| Paraguay | 2014 | NULL        |      96730 |\n| Paraguay | 2015 | fiction     |      76940 |\n| Paraguay | 2015 | non-fiction |       9030 |\n| Paraguay | 2015 | NULL        |      85970 |\n| Paraguay | NULL | NULL        |     182700 |\n| Senegal  | 2014 | fiction     |      12234 |\n| Senegal  | 2014 | non-fiction |      64980 |\n| Senegal  | 2014 | NULL        |      77214 |\n| Senegal  | 2015 | fiction     |      15647 |\n| Senegal  | 2015 | non-fiction |      78901 |\n| Senegal  | 2015 | NULL        |      94548 |\n| Senegal  | NULL | NULL        |     171762 |\n| NULL     | NULL | NULL        |     354462 |\n+----------+------+-------------+------------+\n\nThe LIMIT clause, applied after WITH ROLLUP:\n\nSELECT country, year, genre, SUM(sales) \n FROM booksales GROUP BY country, year, genre WITH ROLLUP LIMIT 4;\n+----------+------+-------------+------------+\n| country  | year | genre       | SUM(sales) |\n+----------+------+-------------+------------+\n| Paraguay | 2014 | fiction     |      87970 |\n| Paraguay | 2014 | non-fiction |       8760 |\n| Paraguay | 2014 | NULL        |      96730 |\n| Paraguay | 2015 | fiction     |      76940 |\n+----------+------+-------------+------------+\n\nSorting by year descending:\n\nSELECT country, year, genre, SUM(sales) \n FROM booksales GROUP BY country, year DESC, genre WITH ROLLUP;\n+----------+------+-------------+------------+\n| country  | year | genre       | SUM(sales) |\n+----------+------+-------------+------------+\n| Paraguay | 2015 | fiction     |      76940 |\n| Paraguay | 2015 | non-fiction |       9030 |\n| Paraguay | 2015 | NULL        |      85970 |\n| Paraguay | 2014 | fiction     |      87970 |\n| Paraguay | 2014 | non-fiction |       8760 |\n| Paraguay | 2014 | NULL        |      96730 |\n| Paraguay | NULL | NULL        |     182700 |\n| Senegal  | 2015 | fiction     |      15647 |\n| Senegal  | 2015 | non-fiction |      78901 |\n| Senegal  | 2015 | NULL        |      94548 |\n| Senegal  | 2014 | fiction     |      12234 |\n| Senegal  | 2014 | non-fiction |      64980 |\n| Senegal  | 2014 | NULL        |      77214 |\n| Senegal  | NULL | NULL        |     171762 |\n| NULL     | NULL | NULL        |     354462 |\n+----------+------+-------------+------------+\n\n\n\nURL: mariadb.com/kb/en/select-with-rollup/','','https://mariadb.com/kb/en/select-with-rollup/'),(438,'UNION',27,'UNION is used to combine the results from multiple SELECT statements\ninto a single result set.\n\nSyntax\n------\n\nSELECT ...\nUNION [ALL | DISTINCT] SELECT ...\n[UNION [ALL | DISTINCT] SELECT ...]\n[ORDER BY [column [, column ...]]]\n[LIMIT {[offset,] row_count | row_count OFFSET offset}]\n\nDescription\n-----------\n\nUNION is used to combine the results from multiple SELECT statements into a\nsingle result set.\n\nThe column names from the first SELECT statement are used as the column names\nfor the results returned. Selected columns listed in corresponding positions\nof each SELECT statement should have the same data type. (For example, the\nfirst column selected by the first statement should have the same type as the\nfirst column selected by the other statements.)\n\nIf they don\'t, the type and length of the columns in the result take into\naccount the values returned by all of the SELECTs, so there is no need for\nexplicit casting. Note that currently this is not the case for recursive CTEs\n- see MDEV-12325.\n\nTable names can be specified as db_name.tbl_name. This permits writing UNIONs\nwhich involve multiple databases. See Identifier Qualifiers for syntax details.\n\nUNION queries cannot be used with aggregate functions.\n\nEXCEPT and UNION have the same operation precedence and INTERSECT has a higher\nprecedence, unless running in Oracle mode, in which case all three have the\nsame precedence.\n\nALL/DISTINCT\n------------\n\nThe ALL keyword causes duplicate rows to be preserved. The DISTINCT keyword\n(the default if the keyword is omitted) causes duplicate rows to be removed by\nthe results.\n\nUNION ALL and UNION DISTINCT can both be present in a query. In this case,\nUNION DISTINCT will override any UNION ALLs to its left.\n\nMariaDB starting with 10.1.1\n----------------------------\nUntil MariaDB 10.1.1, all UNION ALL statements required the server to create a\ntemporary table. Since MariaDB 10.1.1, the server can in most cases execute\nUNION ALL without creating a temporary table, improving performance (see\nMDEV-334).\n\nORDER BY and LIMIT\n------------------\n\nIndividual SELECTs can contain their own ORDER BY and LIMIT clauses. In this\ncase, the individual queries need to be wrapped between parentheses. However,\nthis does not affect the order of the UNION, so they only are useful to limit\nthe record read by one SELECT.\n\nThe UNION can have global ORDER BY and LIMIT clauses, which affect the whole\nresultset. If the columns retrieved by individual SELECT statements have an\nalias (AS), the ORDER BY must use that alias, not the real column names.\n\nHIGH_PRIORITY\n-------------\n\nSpecifying a query as HIGH_PRIORITY will not work inside a UNION. If applied\nto the first SELECT, it will be ignored. Applying to a later SELECT results in\na syntax error:\n\nERROR 1234 (42000): Incorrect usage/placement of \'HIGH_PRIORITY\'\n\nSELECT ... INTO ...\n-------------------\n\nIndividual SELECTs cannot be written INTO DUMPFILE or INTO OUTFILE. If the\nlast SELECT statement specifies INTO DUMPFILE or INTO OUTFILE, the entire\nresult of the UNION will be written. Placing the clause after any other SELECT\nwill result in a syntax error.\n\nIf the result is a single row, SELECT ... INTO @var_name can also be used.\n\nMariaDB starting with 10.4.0\n----------------------------\n\nParentheses\n-----------\n\nFrom MariaDB 10.4.0, parentheses can be used to specify precedence. Before\nthis, a syntax error would be returned.\n\nExamples\n--------\n\nUNION between tables having different column names:\n\n(SELECT e_name AS name, email FROM employees)\nUNION\n(SELECT c_name AS name, email FROM customers);\n\nSpecifying the UNION\'s global order and limiting total rows:\n\n(SELECT name, email FROM employees)\nUNION\n(SELECT name, email FROM customers)\nORDER BY name LIMIT 10;\n\nAdding a constant row:\n\n(SELECT \'John Doe\' AS name, \'john.doe@example.net\' AS email)\nUNION\n(SELECT name, email FROM customers);\n\nDiffering types:\n\nSELECT CAST(\'x\' AS CHAR(1)) UNION SELECT REPEAT(\'y\',4);\n+----------------------+\n| CAST(\'x\' AS CHAR(1)) |\n+----------------------+\n| x                    |\n| yyyy                 |\n+----------------------+\n\nReturning the results in order of each individual SELECT by use of a sort\ncolumn:\n\n(SELECT 1 AS sort_column, e_name AS name, email FROM employees)\nUNION\n(SELECT 2, c_name AS name, email FROM customers) ORDER BY sort_column;\n\nDifference between UNION, EXCEPT and INTERSECT. INTERSECT ALL and EXCEPT ALL\nare available from MariaDB 10.5.0.\n\nCREATE TABLE seqs (i INT);\nINSERT INTO seqs VALUES (1),(2),(2),(3),(3),(4),(5),(6);\n\nSELECT i FROM seqs WHERE i <= 3 UNION SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    1 |\n|    2 |\n|    3 |\n|    4 |\n|    5 |\n|    6 |\n+------+\n\nSELECT i FROM seqs WHERE i <= 3 UNION ALL SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    1 |\n|    2 |\n|    2 |\n|    3 |\n|    3 |\n|    3 |\n|    3 |\n|    4 |\n|    5 |\n|    6 |\n+------+\n\nSELECT i FROM seqs WHERE i <= 3 EXCEPT SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    1 |\n|    2 |\n+------+\n\nSELECT i FROM seqs WHERE i <= 3 EXCEPT ALL SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    1 |\n|    2 |\n|    2 |\n+------+\n\nSELECT i FROM seqs WHERE i <= 3 INTERSECT SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    3 |\n+------+\n\nSELECT i FROM seqs WHERE i <= 3 INTERSECT ALL SELECT i FROM seqs WHERE i>=3;\n+------+\n| i    |\n+------+\n|    3 |\n|    3 |\n+------+\n\nParentheses for specifying precedence, from MariaDB 10.4.0\n\nCREATE OR REPLACE TABLE t1 (a INT);\nCREATE OR REPLACE TABLE t2 (b INT);\nCREATE OR REPLACE TABLE t3 (c INT);\n\nINSERT INTO t1 VALUES (1),(2),(3),(4);\nINSERT INTO t2 VALUES (5),(6);\nINSERT INTO t3 VALUES (1),(6);\n\n((SELECT a FROM t1) UNION (SELECT b FROM t2)) INTERSECT (SELECT c FROM t3);\n+------+\n| a    |\n+------+\n|    1 |\n|    6 |\n+------+\n\n(SELECT a FROM t1) UNION ((SELECT b FROM t2) INTERSECT (SELECT c FROM t3));\n+------+\n| a    |\n+------+\n|    1 |\n|    2 |\n|    3 |\n|    4 |\n|    6 |\n+------+\n\n\n\nURL: mariadb.com/kb/en/union/','','https://mariadb.com/kb/en/union/'),(439,'UPDATE',27,'Syntax\n------\n\nSingle-table syntax:\n\nUPDATE [LOW_PRIORITY] [IGNORE] table_reference \n [PARTITION (partition_list)]\n [FOR PORTION OF period FROM expr1 TO expr2]\n SET col1={expr1|DEFAULT} [,col2={expr2|DEFAULT}] ...\n [WHERE where_condition]\n [ORDER BY ...]\n [LIMIT row_count]\n\nMultiple-table syntax:\n\nUPDATE [LOW_PRIORITY] [IGNORE] table_references\n  SET col1={expr1|DEFAULT} [, col2={expr2|DEFAULT}] ...\n  [WHERE where_condition]\n\nDescription\n-----------\n\nFor the single-table syntax, the UPDATE statement updates columns of existing\nrows in the named table with new values. The SET clause indicates which\ncolumns to modify and the values they should be given. Each value can be given\nas an expression, or the keyword DEFAULT to set a column explicitly to its\ndefault value. The WHERE clause, if given, specifies the conditions that\nidentify which rows to update. With no WHERE clause, all rows are updated. If\nthe ORDER BY clause is specified, the rows are updated in the order that is\nspecified. The LIMIT clause places a limit on the number of rows that can be\nupdated.\n\nUntil MariaDB 10.3.2, for the multiple-table syntax, UPDATE updates rows in\neach table named in table_references that satisfy the conditions. In this\ncase, ORDER BY and LIMIT cannot be used. This restriction was lifted in\nMariaDB 10.3.2 and both clauses can be used with multiple-table updates. An\nUPDATE can also reference tables which are located in different databases; see\nIdentifier Qualifiers for the syntax.\n\nwhere_condition is an expression that evaluates to true for each row to be\nupdated.\n\ntable_references and where_condition are as specified as described in SELECT.\n\nFor single-table updates, assignments are evaluated in left-to-right order,\nwhile for multi-table updates, there is no guarantee of a particular order. If\nthe SIMULTANEOUS_ASSIGNMENT sql_mode (available from MariaDB 10.3.5) is set,\nUPDATE statements evaluate all assignments simultaneously.\n\nYou need the UPDATE privilege only for columns referenced in an UPDATE that\nare actually updated. You need only the SELECT privilege for any columns that\nare read but not modified. See GRANT.\n\nThe UPDATE statement supports the following modifiers:\n\n* If you use the LOW_PRIORITY keyword, execution of\n the UPDATE is delayed until no other clients are reading from\n the table. This affects only storage engines that use only table-level\n locking (MyISAM, MEMORY, MERGE). See HIGH_PRIORITY and LOW_PRIORITY clauses\nfor details.\n* If you use the IGNORE keyword, the update statement does \n not abort even if errors occur during the update. Rows for which\n duplicate-key conflicts occur are not updated. Rows for which columns are\n updated to values that would cause data conversion errors are updated to the\n closest valid values instead.\n\nPARTITION\n---------\n\nSee Partition Pruning and Selection for details.\n\nFOR PORTION OF\n--------------\n\nMariaDB starting with 10.4.3\n----------------------------\nSee Application Time Periods - Updating by Portion.\n\nUPDATE Statements With the Same Source and Target\n-------------------------------------------------\n\nMariaDB starting with 10.3.2\n----------------------------\nFrom MariaDB 10.3.2, UPDATE statements may have the same source and target.\n\nFor example, given the following table:\n\nDROP TABLE t1;\nCREATE TABLE t1 (c1 INT, c2 INT);\nINSERT INTO t1 VALUES (10,10), (20,20);\n\nUntil MariaDB 10.3.1, the following UPDATE statement would not work:\n\nUPDATE t1 SET c1=c1+1 WHERE c2=(SELECT MAX(c2) FROM t1);\nERROR 1093 (HY000): Table \'t1\' is specified twice, \n both as a target for \'UPDATE\' and as a separate source for data\n\nFrom MariaDB 10.3.2, the statement executes successfully:\n\nUPDATE t1 SET c1=c1+1 WHERE c2=(SELECT MAX(c2) FROM t1);\n\nSELECT * FROM t1;\n+------+------+\n| c1   | c2   |\n+------+------+\n|   10 |   10 |\n|   21 |   20 |\n+------+------+\n\nExample\n-------\n\nSingle-table syntax:\n\nUPDATE table_name SET column1 = value1, column2 = value2 WHERE id=100;\n\nMultiple-table syntax:\n\nUPDATE tab1, tab2 SET tab1.column1 = value1, tab1.column2 = value2 WHERE\ntab1.id = tab2.id;\n\n\n\nURL: mariadb.com/kb/en/update/','','https://mariadb.com/kb/en/update/'),(441,'DESCRIBE',28,'Syntax\n------\n\n{DESCRIBE | DESC} tbl_name [col_name | wild]\n\nDescription\n-----------\n\nDESCRIBE provides information about the columns in a table. It is a shortcut\nfor SHOW COLUMNS FROM. These statements also display information for views.\n\ncol_name can be a column name, or a string containing the SQL \"%\" and \"_\"\nwildcard characters to obtain output only for the columns with names matching\nthe string. There is no need to enclose the string within quotes unless it\ncontains spaces or other special characters.\n\nDESCRIBE city;\n+------------+----------+------+-----+---------+----------------+\n| Field      | Type     | Null | Key | Default | Extra          |\n+------------+----------+------+-----+---------+----------------+\n| Id         | int(11)  | NO   | PRI | NULL    | auto_increment |\n| Name       | char(35) | YES  |     | NULL    |                |\n| Country    | char(3)  | NO   | UNI |         |                |\n| District   | char(20) | YES  | MUL |         |                |\n| Population | int(11)  | YES  |     | NULL    |                |\n+------------+----------+------+-----+---------+----------------+\n\nThe description for SHOW COLUMNS provides more information about the output\ncolumns.\n\n\n\nURL: mariadb.com/kb/en/describe/','','https://mariadb.com/kb/en/describe/'),(440,'WITH',27,'MariaDB starting with 10.2.1\n----------------------------\nCommon Table Expressions were introduced in MariaDB 10.2.1.\n\nSyntax\n------\n\nWITH [RECURSIVE] table_reference [(columns_list)] AS  (\n SELECT ...\n)\n[CYCLE cycle_column_list RESTRICT]\nSELECT ...\n\nDescription\n-----------\n\nThe WITH keyword signifies a Common Table Expression (CTE). It allows you to\nrefer to a subquery expression many times in a query, as if having a temporary\ntable that only exists for the duration of a query.\n\nThere are two kinds of CTEs:\n\n* Non-Recursive\n* Recursive (signified by the RECURSIVE keyword, supported since MariaDB\n10.2.2)\n\nYou can use table_reference as any normal table in the external SELECT part.\nYou can also use WITH in subqueries, as well as with EXPLAIN and SELECT.\n\nPoorly-formed recursive CTEs can in theory cause infinite loops. The\nmax_recursive_iterations system variable limits the number of recursions.\n\nCYCLE ... RESTRICT\n------------------\n\nMariaDB starting with 10.5.2\n----------------------------\nThe CYCLE clause enables CTE cycle detection, avoiding excessive or infinite\nloops, MariaDB supports a relaxed, non-standard grammar.\n\nThe SQL Standard permits a CYCLE clause, as follows:\n\nWITH RECURSIVE ... (\n ...\n)\nCYCLE <cycle column list>\nSET <cycle mark column> TO <cycle mark value> DEFAULT <non-cycle mark value>\nUSING <path column>\n\nwhere all clauses are mandatory.\n\nMariaDB does not support this, but from 10.5.2 permits a non-standard relaxed\ngrammar, as follows:\n\nWITH RECURSIVE ... (\n ...\n)\nCYCLE <cycle column list> RESTRICT\n\nWith the use of CYCLE ... RESTRICT it makes no difference whether the CTE uses\nUNION ALL or UNION DISTINCT anymore. UNION ALL means \"all rows, but without\ncycles\", which is exactly what the CYCLE clause enables. And UNION DISTINCT\nmeans all rows should be different, which, again, is what will happen — as\nuniqueness is enforced over a subset of columns, complete rows will\nautomatically all be different.\n\nExamples\n--------\n\nBelow is an example with the WITH at the top level:\n\nWITH t AS (SELECT a FROM t1 WHERE b >= \'c\') \n SELECT * FROM t2, t WHERE t2.c = t.a;\n\nThe example below uses WITH in a subquery:\n\nSELECT t1.a, t1.b FROM t1, t2\n WHERE t1.a > t2.c\n  AND t2.c IN(WITH t AS (SELECT * FROM t1 WHERE t1.a < 5)\n        SELECT t2.c FROM t2, t WHERE t2.c = t.a);\n\nBelow is an example of a Recursive CTE:\n\nWITH RECURSIVE ancestors AS \n ( SELECT * FROM folks\n WHERE name=\"Alex\"\n UNION\n SELECT f.*\n FROM folks AS f, ancestors AS a\n WHERE f.id = a.father OR f.id = a.mother )\nSELECT * FROM ancestors;\n\nTake the following structure, and data,\n\nCREATE TABLE t1 (from_ int, to_ int);\nINSERT INTO t1 VALUES (1,2), (1,100), (2,3), (3,4), (4,1);\nSELECT * FROM t1;\n+-------+------+\n| from_ | to_  |\n+-------+------+\n|     1 |    2 |\n|     1 |  100 |\n|     2 |    3 |\n|     3 |    4 |\n|     4 |    1 |\n+-------+------+\n\nGiven the above, the following query would theoretically result in an infinite\nloop due to the last record in t1 (note that max_recursive_iterations is set\nto 10 for the purposes of this example, to avoid the excessive number of\ncycles):\n\nSET max_recursive_iterations=10;\n\nWITH RECURSIVE cte (depth, from_, to_) AS ( \n SELECT 0,1,1 UNION DISTINCT SELECT depth+1, t1.from_, t1.to_\n  FROM t1, cte  WHERE t1.from_ = cte.to_\n) \nSELECT * FROM cte;\n+-------+-------+------+\n| depth | from_ | to_  |\n+-------+-------+------+\n|     0 |     1 |    1 |\n|     1 |     1 |    2 |\n|     1 |     1 |  100 |\n|     2 |     2 |    3 |\n|     3 |     3 |    4 |\n|     4 |     4 |    1 |\n|     5 |     1 |    2 |\n|     5 |     1 |  100 |\n|     6 |     2 |    3 |\n|     7 |     3 |    4 |\n|     8 |     4 |    1 |\n|     9 |     1 |    2 |\n|     9 |     1 |  100 |\n|    10 |     2 |    3 |\n+-------+-------+------+\n\nHowever, the CYCLE ... RESTRICT clause (from MariaDB 10.5.2) can overcome this:\n\nWITH RECURSIVE cte (depth, from_, to_) AS ( \n SELECT 0,1,1 UNION SELECT depth+1, t1.from_, t1.to_\n  FROM t1, cte WHERE t1.from_ = cte.to_\n) \nCYCLE from_, to_ RESTRICT \nSELECT * FROM cte;\n+-------+-------+------+\n| depth | from_ | to_  |\n+-------+-------+------+\n|     0 |     1 |    1 |\n|     1 |     1 |    2 |\n|     1 |     1 |  100 |\n|     2 |     2 |    3 |\n|     3 |     3 |    4 |\n|     4 |     4 |    1 |\n+-------+-------+------+\n\n\n\nURL: mariadb.com/kb/en/with/','','https://mariadb.com/kb/en/with/'),(444,'ANALYZE FORMAT=JSON',28,'ANALYZE FORMAT=JSON is a mix of the EXPLAIN FORMAT=JSON and ANALYZE\nstatement features. The ANALYZE FORMAT=JSON $statement will execute\n$statement, and then print the output of EXPLAIN FORMAT=JSON, amended with\ndata from the query execution.\n\nBasic Execution Data\n--------------------\n\nYou can get the following also from tabular ANALYZE statement form:\n\n* r_rows  is provided for any node that reads rows. It shows how many rows\nwere read, on average \n* r_filtered is provided whenever there is a condition that is checked.  It\nshows the percentage of rows left after checking the condition.\n\nAdvanced Execution Data\n-----------------------\n\nThe most important data not available in the regular tabula ANALYZE statement\nare:\n\n* r_loops field.  This shows how many times the node was executed. Most query\nplan elements have this field.\n* r_total_time_ms field. It shows how much time in total was spent executing\nthis node. If the node has subnodes, their execution time is included.\n* r_buffer_size field. Query plan nodes that make use of buffers report the\nsize of buffer that was was used.\n\nData About Individual Query Plan Nodes\n--------------------------------------\n\n* filesort node reports whether sorting was done with LIMIT n parameter, and\nhow many rows were in the sort result. \n* block-nl-join node has r_loops field, which allows to tell whether Using\njoin buffer was efficient \n* range-checked-for-each-record reports counters that show the result of the\ncheck. \n* expression-cache is used for subqueries, and it reports how many times the\ncache was used, and what cache hit ratio was.\n* union_result node has r_rows so one can see how many rows were produced\nafter UNION operation\n* and so forth\n\nUse Cases\n---------\n\nSee Examples of ANALYZE FORMAT=JSON.\n\n\n\nURL: mariadb.com/kb/en/analyze-format-json/','','https://mariadb.com/kb/en/analyze-format-json/'),(445,'ANALYZE FORMAT=JSON Examples',28,'Example #1\n----------\n\nCustomers who have ordered more than 1M goods.\n\nANALYZE FORMAT=JSON\nSELECT COUNT(*)\nFROM customer\nWHERE\n (SELECT SUM(o_totalprice) FROM orders WHERE o_custkey=c_custkey) > 1000*1000;\n\nThe query takes 40 seconds over cold cache\n\nEXPLAIN: {\n \"query_block\": {\n  \"select_id\": 1,\n  \"r_loops\": 1,\n  \"r_total_time_ms\": 39872,\n  \"table\": {\n   \"table_name\": \"customer\",\n   \"access_type\": \"index\",\n   \"key\": \"i_c_nationkey\",\n   \"key_length\": \"5\",\n   \"used_key_parts\": [\"c_nationkey\"],\n   \"r_loops\": 1,\n   \"rows\": 150303,\n   \"r_rows\": 150000,\n   \"r_total_time_ms\": 270.3,\n   \"filtered\": 100,\n   \"r_filtered\": 60.691,\n   \"attached_condition\": \"((subquery#2) > <cache>((1000 * 1000)))\",\n   \"using_index\": true\n  },\n  \"subqueries\": [\n   {\n    \"query_block\": {\n     \"select_id\": 2,\n     \"r_loops\": 150000,\n     \"r_total_time_ms\": 39531,\n     \"table\": {\n      \"table_name\": \"orders\",\n      \"access_type\": \"ref\",\n      \"possible_keys\": [\"i_o_custkey\"],\n      \"key\": \"i_o_custkey\",\n      \"key_length\": \"5\",\n      \"used_key_parts\": [\"o_custkey\"],\n      \"ref\": [\"dbt3sf1.customer.c_custkey\"],\n      \"r_loops\": 150000,\n      \"rows\": 7,\n      \"r_rows\": 10,\n      \"r_total_time_ms\": 39208,\n      \"filtered\": 100,\n      \"r_filtered\": 100\n     }\n    }\n   }\n  ]\n }\n}\nANALYZE shows that 39.2 seconds were spent in the subquery, which was executed\n150K times (for every row of outer table).\n\n\n\nURL: mariadb.com/kb/en/analyze-formatjson-examples/','','https://mariadb.com/kb/en/analyze-formatjson-examples/'),(452,'ST_CONTAINS',30,'Syntax\n------\n\nST_CONTAINS(g1,g2)\n\nDescription\n-----------\n\nReturns 1 or 0 to indicate whether a geometry g1 completely contains geometry\ng2.\n\nST_CONTAINS() uses object shapes, while CONTAINS(), based on the original\nMySQL implementation, uses object bounding rectangles.\n\nST_CONTAINS tests the opposite relationship to ST_WITHIN().\n\nExamples\n--------\n\nSET @g1 = ST_GEOMFROMTEXT(\'POLYGON((175 150, 20 40, 50 60, 125 100, 175\n150))\');\n\nSET @g2 = ST_GEOMFROMTEXT(\'POINT(174 149)\');\n\nSELECT ST_CONTAINS(@g1,@g2);\n+----------------------+\n| ST_CONTAINS(@g1,@g2) |\n+----------------------+\n|                    1 |\n+----------------------+\n\nSET @g2 = ST_GEOMFROMTEXT(\'POINT(175 151)\');\n\nSELECT ST_CONTAINS(@g1,@g2);\n+----------------------+\n| ST_CONTAINS(@g1,@g2) |\n+----------------------+\n|                    0 |\n+----------------------+\n\n\n\nURL: mariadb.com/kb/en/st-contains/','','https://mariadb.com/kb/en/st-contains/'),(453,'ST_CROSSES',30,'Syntax\n------\n\nST_CROSSES(g1,g2)\n\nDescription\n-----------\n\nReturns 1 if geometry g1 spatially crosses geometry g2. Returns NULL if g1 is\na Polygon or a MultiPolygon, or if g2 is a Point or a MultiPoint. Otherwise,\nreturns 0.\n\nThe term spatially crosses denotes a spatial relation between two given\ngeometries that has the following properties:\n\n* The two geometries intersect\n* Their intersection results in a geometry that has a dimension that is one\n less than the maximum dimension of the two given geometries\n* Their intersection is not equal to either of the two given geometries\n\nST_CROSSES() uses object shapes, while CROSSES(), based on the original MySQL\nimplementation, uses object bounding rectangles.\n\nExamples\n--------\n\nSET @g1 = ST_GEOMFROMTEXT(\'LINESTRING(174 149, 176 151)\');\n\nSET @g2 = ST_GEOMFROMTEXT(\'POLYGON((175 150, 20 40, 50 60, 125 100, 175\n150))\');\n\nSELECT ST_CROSSES(@g1,@g2);\n+---------------------+\n| ST_CROSSES(@g1,@g2) |\n+---------------------+\n|                   1 |\n+---------------------+\n\nSET @g1 = ST_GEOMFROMTEXT(\'LINESTRING(176 149, 176 151)\');\n\nSELECT ST_CROSSES(@g1,@g2);\n+---------------------+\n| ST_CROSSES(@g1,@g2) |\n+---------------------+\n|                   0 |\n+---------------------+\n\n\n\nURL: mariadb.com/kb/en/st-crosses/','','https://mariadb.com/kb/en/st-crosses/'),(455,'ST_DISJOINT',30,'Syntax\n------\n\nST_DISJOINT(g1,g2)\n\nDescription\n-----------\n\nReturns 1 or 0 to indicate whether geometry g1 is spatially disjoint from\n(does not intersect with) geometry g2.\n\nST_DISJOINT() uses object shapes, while DISJOINT(), based on the original\nMySQL implementation, uses object bounding rectangles.\n\nST_DISJOINT() tests the opposite relationship to ST_INTERSECTS().\n\nExamples\n--------\n\nSET @g1 = ST_GEOMFROMTEXT(\'POINT(0 0)\');\n\nSET @g2 = ST_GEOMFROMTEXT(\'LINESTRING(2 0, 0 2)\');\n\nSELECT ST_DISJOINT(@g1,@g2);\n+----------------------+\n| ST_DISJOINT(@g1,@g2) |\n+----------------------+\n|                    1 |\n+----------------------+\n\nSET @g2 = ST_GEOMFROMTEXT(\'LINESTRING(0 0, 0 2)\');\n\nSELECT ST_DISJOINT(@g1,@g2);\n+----------------------+\n| ST_DISJOINT(@g1,@g2) |\n+----------------------+\n|                    0 |\n+----------------------+\n\n\n\nURL: mariadb.com/kb/en/st_disjoint/','','https://mariadb.com/kb/en/st_disjoint/'),(457,'ST_EQUALS',30,'Syntax\n------\n\nST_EQUALS(g1,g2)\n\nDescription\n-----------\n\nReturns 1 or 0 to indicate whether geometry g1 is spatially equal to geometry\ng2.\n\nST_EQUALS() uses object shapes, while EQUALS(), based on the original MySQL\nimplementation, uses object bounding rectangles.\n\nExamples\n--------\n\nSET @g1 = ST_GEOMFROMTEXT(\'LINESTRING(174 149, 176 151)\');\n\nSET @g2 = ST_GEOMFROMTEXT(\'LINESTRING(176 151, 174 149)\');\n\nSELECT ST_EQUALS(@g1,@g2);\n+--------------------+\n| ST_EQUALS(@g1,@g2) |\n+--------------------+\n|                  1 |\n+--------------------+\n\nSET @g1 = ST_GEOMFROMTEXT(\'POINT(0 2)\');\n\nSET @g1 = ST_GEOMFROMTEXT(\'POINT(2 0)\');\n\nSELECT ST_EQUALS(@g1,@g2);\n+--------------------+\n| ST_EQUALS(@g1,@g2) |\n+--------------------+\n|                  0 |\n+--------------------+\n\n\n\nURL: mariadb.com/kb/en/st-equals/','','https://mariadb.com/kb/en/st-equals/'),(458,'ST_INTERSECTS',30,'Syntax\n------\n\nST_INTERSECTS(g1,g2)\n\nDescription\n-----------\n\nReturns 1 or 0 to indicate whether geometry g1 spatially intersects geometry\ng2.\n\nST_INTERSECTS() uses object shapes, while INTERSECTS(), based on the original\nMySQL implementation, uses object bounding rectangles.\n\nST_INTERSECTS() tests the opposite relationship to ST_DISJOINT().\n\nExamples\n--------\n\nSET @g1 = ST_GEOMFROMTEXT(\'POINT(0 0)\');\n\nSET @g2 = ST_GEOMFROMTEXT(\'LINESTRING(0 0, 0 2)\');\n\nSELECT ST_INTERSECTS(@g1,@g2);\n+------------------------+\n| ST_INTERSECTS(@g1,@g2) |\n+------------------------+\n|                      1 |\n+------------------------+\n\nSET @g2 = ST_GEOMFROMTEXT(\'LINESTRING(2 0, 0 2)\');\n\nSELECT ST_INTERSECTS(@g1,@g2);\n+------------------------+\n| ST_INTERSECTS(@g1,@g2) |\n+------------------------+\n|                      0 |\n+------------------------+\n\n\n\nURL: mariadb.com/kb/en/st-intersects/','','https://mariadb.com/kb/en/st-intersects/'),(461,'ST_TOUCHES',30,'Syntax\n------\n\nST_TOUCHES(g1,g2)\n\nDescription\n-----------\n\nReturns 1 or 0 to indicate whether geometry g1 spatially touches geometry g2.\nTwo geometries spatially touch if the interiors of the geometries do not\nintersect, but the boundary of one of the geometries intersects either the\nboundary or the interior of the other.\n\nST_TOUCHES() uses object shapes, while TOUCHES(), based on the original MySQL\nimplementation, uses object bounding rectangles.\n\nExamples\n--------\n\nSET @g1 = ST_GEOMFROMTEXT(\'POINT(2 0)\');\n\nSET @g2 = ST_GEOMFROMTEXT(\'LINESTRING(2 0, 0 2)\');\n\nSELECT ST_TOUCHES(@g1,@g2);\n+---------------------+\n| ST_TOUCHES(@g1,@g2) |\n+---------------------+\n|                   1 |\n+---------------------+\n\nSET @g1 = ST_GEOMFROMTEXT(\'POINT(2 1)\');\n\nSELECT ST_TOUCHES(@g1,@g2);\n+---------------------+\n| ST_TOUCHES(@g1,@g2) |\n+---------------------+\n|                   0 |\n+---------------------+\n\n\n\nURL: mariadb.com/kb/en/st-touches/','','https://mariadb.com/kb/en/st-touches/'),(462,'ST_WITHIN',30,'Syntax\n------\n\nST_WITHIN(g1,g2)\n\nDescription\n-----------\n\nReturns 1 or 0 to indicate whether geometry g1 is spatially within geometry g2.\n\nThis tests the opposite relationship as ST_CONTAINS().\n\nST_WITHIN() uses object shapes, while WITHIN(), based on the original MySQL\nimplementation, uses object bounding rectangles.\n\nExamples\n--------\n\nSET @g1 = ST_GEOMFROMTEXT(\'POINT(174 149)\');\n\nSET @g2 = ST_GEOMFROMTEXT(\'POLYGON((175 150, 20 40, 50 60, 125 100, 175\n150))\');\n\nSELECT ST_WITHIN(@g1,@g2);\n+--------------------+\n| ST_WITHIN(@g1,@g2) |\n+--------------------+\n|                  1 |\n+--------------------+\n\nSET @g1 = ST_GEOMFROMTEXT(\'POINT(176 151)\');\n\nSELECT ST_WITHIN(@g1,@g2);\n+--------------------+\n| ST_WITHIN(@g1,@g2) |\n+--------------------+\n|                  0 |\n+--------------------+\n\n\n\nURL: mariadb.com/kb/en/st-within/','','https://mariadb.com/kb/en/st-within/'),(464,'WITHIN',30,'Syntax\n------\n\nWithin(g1,g2)\n\nDescription\n-----------\n\nReturns 1 or 0 to indicate whether g1 is spatially within g2. This tests the\nopposite relationship as Contains().\n\nWITHIN() is based on the original MySQL implementation, and uses object\nbounding rectangles, while ST_WITHIN() uses object shapes.\n\nExamples\n--------\n\nSET @g1 = GEOMFROMTEXT(\'POINT(174 149)\');\nSET @g2 = GEOMFROMTEXT(\'POINT(176 151)\');\nSET @g3 = GEOMFROMTEXT(\'POLYGON((175 150, 20 40, 50 60, 125 100, 175 150))\');\n\nSELECT within(@g1,@g3);\n+-----------------+\n| within(@g1,@g3) |\n+-----------------+\n|               1 |\n+-----------------+\n\nSELECT within(@g2,@g3);\n+-----------------+\n| within(@g2,@g3) |\n+-----------------+\n|               0 |\n+-----------------+\n\n\n\nURL: mariadb.com/kb/en/within/','','https://mariadb.com/kb/en/within/'),(465,'ADDDATE',31,'Syntax\n------\n\nADDDATE(date,INTERVAL expr unit), ADDDATE(expr,days)\n\nDescription\n-----------\n\nWhen invoked with the INTERVAL form of the second argument, ADDDATE() is a\nsynonym for DATE_ADD(). The related function SUBDATE() is a synonym for\nDATE_SUB(). For information on the INTERVAL unit argument, see the discussion\nfor DATE_ADD().\n\nWhen invoked with the days form of the second argument, MariaDB treats it as\nan integer number of days to be added to expr.\n\nExamples\n--------\n\nSELECT DATE_ADD(\'2008-01-02\', INTERVAL 31 DAY);\n+-----------------------------------------+\n| DATE_ADD(\'2008-01-02\', INTERVAL 31 DAY) |\n+-----------------------------------------+\n| 2008-02-02                              |\n+-----------------------------------------+\n\nSELECT ADDDATE(\'2008-01-02\', INTERVAL 31 DAY);\n+----------------------------------------+\n| ADDDATE(\'2008-01-02\', INTERVAL 31 DAY) |\n+----------------------------------------+\n| 2008-02-02                             |\n+----------------------------------------+\n\nSELECT ADDDATE(\'2008-01-02\', 31);\n+---------------------------+\n| ADDDATE(\'2008-01-02\', 31) |\n+---------------------------+\n| 2008-02-02                |\n+---------------------------+\n\nCREATE TABLE t1 (d DATETIME);\nINSERT INTO t1 VALUES\n  (\"2007-01-30 21:31:07\"),\n  (\"1983-10-15 06:42:51\"),\n  (\"2011-04-21 12:34:56\"),\n  (\"2011-10-30 06:31:41\"),\n  (\"2011-01-30 14:03:25\"),\n  (\"2004-10-07 11:19:34\");\n\nSELECT d, ADDDATE(d, 10) from t1;\n+---------------------+---------------------+\n| d                   | ADDDATE(d, 10)      |\n+---------------------+---------------------+\n| 2007-01-30 21:31:07 | 2007-02-09 21:31:07 |\n| 1983-10-15 06:42:51 | 1983-10-25 06:42:51 |\n| 2011-04-21 12:34:56 | 2011-05-01 12:34:56 |\n| 2011-10-30 06:31:41 | 2011-11-09 06:31:41 |\n| 2011-01-30 14:03:25 | 2011-02-09 14:03:25 |\n| 2004-10-07 11:19:34 | 2004-10-17 11:19:34 |\n+---------------------+---------------------+\n\nSELECT d, ADDDATE(d, INTERVAL 10 HOUR) from t1;\n+---------------------+------------------------------+\n| d                   | ADDDATE(d, INTERVAL 10 HOUR) |\n+---------------------+------------------------------+\n| 2007-01-30 21:31:07 | 2007-01-31 07:31:07          |\n| 1983-10-15 06:42:51 | 1983-10-15 16:42:51          |\n| 2011-04-21 12:34:56 | 2011-04-21 22:34:56          |\n| 2011-10-30 06:31:41 | 2011-10-30 16:31:41          |\n| 2011-01-30 14:03:25 | 2011-01-31 00:03:25          |\n| 2004-10-07 11:19:34 | 2004-10-07 21:19:34          |\n+---------------------+------------------------------+\n\n\n\nURL: mariadb.com/kb/en/adddate/','','https://mariadb.com/kb/en/adddate/'),(466,'ADDTIME',31,'Syntax\n------\n\nADDTIME(expr1,expr2)\n\nDescription\n-----------\n\nADDTIME() adds expr2 to expr1 and returns the result. expr1 is a time or\ndatetime expression, and expr2 is a time expression.\n\nExamples\n--------\n\nSELECT ADDTIME(\'2007-12-31 23:59:59.999999\', \'1 1:1:1.000002\');\n+---------------------------------------------------------+\n| ADDTIME(\'2007-12-31 23:59:59.999999\', \'1 1:1:1.000002\') |\n+---------------------------------------------------------+\n| 2008-01-02 01:01:01.000001                              |\n+---------------------------------------------------------+\n\nSELECT ADDTIME(\'01:00:00.999999\', \'02:00:00.999998\');\n+-----------------------------------------------+\n| ADDTIME(\'01:00:00.999999\', \'02:00:00.999998\') |\n+-----------------------------------------------+\n| 03:00:01.999997                               |\n+-----------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/addtime/','','https://mariadb.com/kb/en/addtime/'),(467,'CONVERT_TZ',31,'Syntax\n------\n\nCONVERT_TZ(dt,from_tz,to_tz)\n\nDescription\n-----------\n\nCONVERT_TZ() converts a datetime value dt from the time zone given by from_tz\nto the time zone given by to_tz and returns the resulting value.\n\nIn order to use named time zones, such as GMT, MET or Africa/Johannesburg, the\ntime_zone tables must be loaded (see mysql_tzinfo_to_sql).\n\nNo conversion will take place if the value falls outside of the supported\nTIMESTAMP range (\'1970-01-01 00:00:01\' to \'2038-01-19 05:14:07\' UTC) when\nconverted from from_tz to UTC.\n\nThis function returns NULL if the arguments are invalid (or named time zones\nhave not been loaded).\n\nSee time zones for more information.\n\nExamples\n--------\n\nSELECT CONVERT_TZ(\'2016-01-01 12:00:00\',\'+00:00\',\'+10:00\');\n+-----------------------------------------------------+\n| CONVERT_TZ(\'2016-01-01 12:00:00\',\'+00:00\',\'+10:00\') |\n+-----------------------------------------------------+\n| 2016-01-01 22:00:00                                 |\n+-----------------------------------------------------+\n\nUsing named time zones (with the time zone tables loaded):\n\nSELECT CONVERT_TZ(\'2016-01-01 12:00:00\',\'GMT\',\'Africa/Johannesburg\');\n+---------------------------------------------------------------+\n| CONVERT_TZ(\'2016-01-01 12:00:00\',\'GMT\',\'Africa/Johannesburg\') |\n+---------------------------------------------------------------+\n| 2016-01-01 14:00:00                                           |\n+---------------------------------------------------------------+\n\nThe value is out of the TIMESTAMP range, so no conversion takes place:\n\nSELECT CONVERT_TZ(\'1969-12-31 22:00:00\',\'+00:00\',\'+10:00\');\n+-----------------------------------------------------+\n| CONVERT_TZ(\'1969-12-31 22:00:00\',\'+00:00\',\'+10:00\') |\n+-----------------------------------------------------+\n| 1969-12-31 22:00:00                                 |\n+-----------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/convert_tz/','','https://mariadb.com/kb/en/convert_tz/'),(468,'CURDATE',31,'Syntax\n------\n\nCURDATE()\nCURRENT_DATE\nCURRENT_DATE()\n\nDescription\n-----------\n\nCURDATE returns the current date as a value in \'YYYY-MM-DD\' or YYYYMMDD\nformat, depending on whether the function is used in a string or numeric\ncontext.\n\nCURRENT_DATE and CURRENT_DATE() are synonyms.\n\nExamples\n--------\n\nSELECT CURDATE();\n+------------+\n| CURDATE()  |\n+------------+\n| 2019-03-05 |\n+------------+\n\nIn a numeric context (note this is not performing date calculations):\n\nSELECT CURDATE() +0;\n+--------------+\n| CURDATE() +0 |\n+--------------+\n|     20190305 |\n+--------------+\n\nData calculation:\n\nSELECT CURDATE() - INTERVAL 5 DAY;\n+----------------------------+\n| CURDATE() - INTERVAL 5 DAY |\n+----------------------------+\n| 2019-02-28                 |\n+----------------------------+\n\n\n\nURL: mariadb.com/kb/en/curdate/','','https://mariadb.com/kb/en/curdate/'),(474,'DATEDIFF',31,'Syntax\n------\n\nDATEDIFF(expr1,expr2)\n\nDescription\n-----------\n\nDATEDIFF() returns (expr1 – expr2) expressed as a value in days from one date\nto the other. expr1 and expr2 are date or date-and-time expressions. Only the\ndate parts of the values are used in the calculation.\n\nExamples\n--------\n\nSELECT DATEDIFF(\'2007-12-31 23:59:59\',\'2007-12-30\');\n+----------------------------------------------+\n| DATEDIFF(\'2007-12-31 23:59:59\',\'2007-12-30\') |\n+----------------------------------------------+\n|                                            1 |\n+----------------------------------------------+\n\nSELECT DATEDIFF(\'2010-11-30 23:59:59\',\'2010-12-31\');\n+----------------------------------------------+\n| DATEDIFF(\'2010-11-30 23:59:59\',\'2010-12-31\') |\n+----------------------------------------------+\n|                                          -31 |\n+----------------------------------------------+\n\nCREATE TABLE t1 (d DATETIME);\nINSERT INTO t1 VALUES\n  (\"2007-01-30 21:31:07\"),\n  (\"1983-10-15 06:42:51\"),\n  (\"2011-04-21 12:34:56\"),\n  (\"2011-10-30 06:31:41\"),\n  (\"2011-01-30 14:03:25\"),\n  (\"2004-10-07 11:19:34\");\n\nSELECT NOW();\n+---------------------+\n| NOW()               |\n+---------------------+\n| 2011-05-23 10:56:05 |\n+---------------------+\n\nSELECT d, DATEDIFF(NOW(),d) FROM t1;\n+---------------------+-------------------+\n| d                   | DATEDIFF(NOW(),d) |\n+---------------------+-------------------+\n| 2007-01-30 21:31:07 |              1574 |\n| 1983-10-15 06:42:51 |             10082 |\n| 2011-04-21 12:34:56 |                32 |\n| 2011-10-30 06:31:41 |              -160 |\n| 2011-01-30 14:03:25 |               113 |\n| 2004-10-07 11:19:34 |              2419 |\n+---------------------+-------------------+\n\n\n\nURL: mariadb.com/kb/en/datediff/','','https://mariadb.com/kb/en/datediff/'),(475,'DATE_ADD',31,'Syntax\n------\n\nDATE_ADD(date,INTERVAL expr unit)\n\nDescription\n-----------\n\nPerforms date arithmetic. The date argument specifies the starting date or\ndatetime value. expr is an expression specifying the interval value to be\nadded or subtracted from the starting date. expr is a string; it may start\nwith a \"-\" for negative intervals. unit is a keyword indicating the units in\nwhich the expression should be interpreted. See Date and Time Units for a\ncomplete list of permitted units.\n\nExamples\n--------\n\nSELECT \'2008-12-31 23:59:59\' + INTERVAL 1 SECOND;\n+-------------------------------------------+\n| \'2008-12-31 23:59:59\' + INTERVAL 1 SECOND |\n+-------------------------------------------+\n| 2009-01-01 00:00:00                       |\n+-------------------------------------------+\n\nSELECT INTERVAL 1 DAY + \'2008-12-31\';\n+-------------------------------+\n| INTERVAL 1 DAY + \'2008-12-31\' |\n+-------------------------------+\n| 2009-01-01                    |\n+-------------------------------+\n\nSELECT \'2005-01-01\' - INTERVAL 1 SECOND;\n+----------------------------------+\n| \'2005-01-01\' - INTERVAL 1 SECOND |\n+----------------------------------+\n| 2004-12-31 23:59:59              |\n+----------------------------------+\n\nSELECT DATE_ADD(\'2000-12-31 23:59:59\', INTERVAL 1 SECOND);\n+----------------------------------------------------+\n| DATE_ADD(\'2000-12-31 23:59:59\', INTERVAL 1 SECOND) |\n+----------------------------------------------------+\n| 2001-01-01 00:00:00                                |\n+----------------------------------------------------+\n\nSELECT DATE_ADD(\'2010-12-31 23:59:59\', INTERVAL 1 DAY);\n+-------------------------------------------------+\n| DATE_ADD(\'2010-12-31 23:59:59\', INTERVAL 1 DAY) |\n+-------------------------------------------------+\n| 2011-01-01 23:59:59                             |\n+-------------------------------------------------+\n\nSELECT DATE_ADD(\'2100-12-31 23:59:59\', INTERVAL \'1:1\' MINUTE_SECOND);\n+---------------------------------------------------------------+\n| DATE_ADD(\'2100-12-31 23:59:59\', INTERVAL \'1:1\' MINUTE_SECOND) |\n+---------------------------------------------------------------+\n| 2101-01-01 00:01:00                                           |\n+---------------------------------------------------------------+\n\nSELECT DATE_ADD(\'1900-01-01 00:00:00\', INTERVAL \'-1 10\' DAY_HOUR);\n+------------------------------------------------------------+\n| DATE_ADD(\'1900-01-01 00:00:00\', INTERVAL \'-1 10\' DAY_HOUR) |\n+------------------------------------------------------------+\n| 1899-12-30 14:00:00                                        |\n+------------------------------------------------------------+\n\nSELECT DATE_ADD(\'1992-12-31 23:59:59.000002\', INTERVAL \'1.999999\'\nSECOND_MICROSECOND);\n+------------------------------------------------------------------------------\n-+\n| DATE_ADD(\'1992-12-31 23:59:59.000002\', INTERVAL \'1.999999\'\nSECOND_MICROSECOND) |\n+------------------------------------------------------------------------------\n-+\n| 1993-01-01 00:00:01.000001                                                  \n |\n+------------------------------------------------------------------------------\n-+\n\n\n\nURL: mariadb.com/kb/en/date_add/','','https://mariadb.com/kb/en/date_add/'),(477,'DATE_SUB',31,'Syntax\n------\n\nDATE_SUB(date,INTERVAL expr unit)\n\nDescription\n-----------\n\nPerforms date arithmetic. The date argument specifies the starting date or\ndatetime value. expr is an expression specifying the interval value to be\nadded or subtracted from the starting date. expr is a string; it may start\nwith a \"-\" for negative intervals. unit is a keyword indicating the units in\nwhich the expression should be interpreted. See Date and Time Units for a\ncomplete list of permitted units.\n\nSee also DATE_ADD().\n\nExamples\n--------\n\nSELECT DATE_SUB(\'1998-01-02\', INTERVAL 31 DAY);\n+-----------------------------------------+\n| DATE_SUB(\'1998-01-02\', INTERVAL 31 DAY) |\n+-----------------------------------------+\n| 1997-12-02                              |\n+-----------------------------------------+\n\nSELECT DATE_SUB(\'2005-01-01 00:00:00\', INTERVAL \'1 1:1:1\' DAY_SECOND);\n+----------------------------------------------------------------+\n| DATE_SUB(\'2005-01-01 00:00:00\', INTERVAL \'1 1:1:1\' DAY_SECOND) |\n+----------------------------------------------------------------+\n| 2004-12-30 22:58:59                                            |\n+----------------------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/date_sub/','','https://mariadb.com/kb/en/date_sub/'),(479,'DAYNAME',31,'Syntax\n------\n\nDAYNAME(date)\n\nDescription\n-----------\n\nReturns the name of the weekday for date. The language used for the name is\ncontrolled by the value of the lc_time_names system variable. See server\nlocale for more on the supported locales.\n\nExamples\n--------\n\nSELECT DAYNAME(\'2007-02-03\');\n+-----------------------+\n| DAYNAME(\'2007-02-03\') |\n+-----------------------+\n| Saturday              |\n+-----------------------+\n\nCREATE TABLE t1 (d DATETIME);\nINSERT INTO t1 VALUES\n  (\"2007-01-30 21:31:07\"),\n  (\"1983-10-15 06:42:51\"),\n  (\"2011-04-21 12:34:56\"),\n  (\"2011-10-30 06:31:41\"),\n  (\"2011-01-30 14:03:25\"),\n  (\"2004-10-07 11:19:34\");\n\nSELECT d, DAYNAME(d) FROM t1;\n+---------------------+------------+\n| d                   | DAYNAME(d) |\n+---------------------+------------+\n| 2007-01-30 21:31:07 | Tuesday    |\n| 1983-10-15 06:42:51 | Saturday   |\n| 2011-04-21 12:34:56 | Thursday   |\n| 2011-10-30 06:31:41 | Sunday     |\n| 2011-01-30 14:03:25 | Sunday     |\n| 2004-10-07 11:19:34 | Thursday   |\n+---------------------+------------+\n\nChanging the locale:\n\nSET lc_time_names = \'fr_CA\';\n\nSELECT DAYNAME(\'2013-04-01\');\n+-----------------------+\n| DAYNAME(\'2013-04-01\') |\n+-----------------------+\n| lundi                 |\n+-----------------------+\n\n\n\nURL: mariadb.com/kb/en/dayname/','','https://mariadb.com/kb/en/dayname/'),(480,'DAYOFMONTH',31,'Syntax\n------\n\nDAYOFMONTH(date)\n\nDescription\n-----------\n\nReturns the day of the month for date, in the range 1 to 31, or 0 for dates\nsuch as \'0000-00-00\' or \'2008-00-00\' which have a zero day part.\n\nDAY() is a synonym.\n\nExamples\n--------\n\nSELECT DAYOFMONTH(\'2007-02-03\');\n+--------------------------+\n| DAYOFMONTH(\'2007-02-03\') |\n+--------------------------+\n|                        3 |\n+--------------------------+\n\nCREATE TABLE t1 (d DATETIME);\nINSERT INTO t1 VALUES\n  (\"2007-01-30 21:31:07\"),\n  (\"1983-10-15 06:42:51\"),\n  (\"2011-04-21 12:34:56\"),\n  (\"2011-10-30 06:31:41\"),\n  (\"2011-01-30 14:03:25\"),\n  (\"2004-10-07 11:19:34\");\n\nSELECT d FROM t1 where DAYOFMONTH(d) = 30;\n+---------------------+\n| d                   |\n+---------------------+\n| 2007-01-30 21:31:07 |\n| 2011-10-30 06:31:41 |\n| 2011-01-30 14:03:25 |\n+---------------------+\n\n\n\nURL: mariadb.com/kb/en/dayofmonth/','','https://mariadb.com/kb/en/dayofmonth/'),(481,'DAYOFWEEK',31,'Syntax\n------\n\nDAYOFWEEK(date)\n\nDescription\n-----------\n\nReturns the day of the week index for the date (1 = Sunday, 2 = Monday, ..., 7\n= Saturday). These index values correspond to the ODBC standard.\n\nThis contrasts with WEEKDAY() which follows a different index numbering (0 =\nMonday, 1 = Tuesday, ... 6 = Sunday).\n\nExamples\n--------\n\nSELECT DAYOFWEEK(\'2007-02-03\');\n+-------------------------+\n| DAYOFWEEK(\'2007-02-03\') |\n+-------------------------+\n|                       7 |\n+-------------------------+\n\nCREATE TABLE t1 (d DATETIME);\nINSERT INTO t1 VALUES\n  (\"2007-01-30 21:31:07\"),\n  (\"1983-10-15 06:42:51\"),\n  (\"2011-04-21 12:34:56\"),\n  (\"2011-10-30 06:31:41\"),\n  (\"2011-01-30 14:03:25\"),\n  (\"2004-10-07 11:19:34\");\n\nSELECT d, DAYNAME(d), DAYOFWEEK(d), WEEKDAY(d) from t1;\n+---------------------+------------+--------------+------------+\n| d                   | DAYNAME(d) | DAYOFWEEK(d) | WEEKDAY(d) |\n+---------------------+------------+--------------+------------+\n| 2007-01-30 21:31:07 | Tuesday    |            3 |          1 |\n| 1983-10-15 06:42:51 | Saturday   |            7 |          5 |\n| 2011-04-21 12:34:56 | Thursday   |            5 |          3 |\n| 2011-10-30 06:31:41 | Sunday     |            1 |          6 |\n| 2011-01-30 14:03:25 | Sunday     |            1 |          6 |\n| 2004-10-07 11:19:34 | Thursday   |            5 |          3 |\n+---------------------+------------+--------------+------------+\n\n\n\nURL: mariadb.com/kb/en/dayofweek/','','https://mariadb.com/kb/en/dayofweek/'),(483,'EXTRACT',31,'Syntax\n------\n\nEXTRACT(unit FROM date)\n\nDescription\n-----------\n\nThe EXTRACT() function extracts the required unit from the date. See Date and\nTime Units for a complete list of permitted units.\n\nIn MariaDB 10.0.7 and MariaDB 5.5.35, EXTRACT (HOUR FROM ...) was changed to\nreturn a value from 0 to 23, adhering to the SQL standard. Until MariaDB\n10.0.6 and MariaDB 5.5.34, and in all versions of MySQL at least as of MySQL\n5.7, it could return a value > 23. HOUR() is not a standard function, so\ncontinues to adhere to the old behaviour inherited from MySQL.\n\nExamples\n--------\n\nSELECT EXTRACT(YEAR FROM \'2009-07-02\');\n+---------------------------------+\n| EXTRACT(YEAR FROM \'2009-07-02\') |\n+---------------------------------+\n|                            2009 |\n+---------------------------------+\n\nSELECT EXTRACT(YEAR_MONTH FROM \'2009-07-02 01:02:03\');\n+------------------------------------------------+\n| EXTRACT(YEAR_MONTH FROM \'2009-07-02 01:02:03\') |\n+------------------------------------------------+\n|                                         200907 |\n+------------------------------------------------+\n\nSELECT EXTRACT(DAY_MINUTE FROM \'2009-07-02 01:02:03\');\n+------------------------------------------------+\n| EXTRACT(DAY_MINUTE FROM \'2009-07-02 01:02:03\') |\n+------------------------------------------------+\n|                                          20102 |\n+------------------------------------------------+\n\nSELECT EXTRACT(MICROSECOND FROM \'2003-01-02 10:30:00.000123\');\n+--------------------------------------------------------+\n| EXTRACT(MICROSECOND FROM \'2003-01-02 10:30:00.000123\') |\n+--------------------------------------------------------+\n|                                                    123 |\n+--------------------------------------------------------+\n\nFrom MariaDB 10.0.7 and MariaDB 5.5.35, EXTRACT (HOUR FROM...) returns a value\nfrom 0 to 23, as per the SQL standard. HOUR is not a standard function, so\ncontinues to adhere to the old behaviour inherited from MySQL.\n\nSELECT EXTRACT(HOUR FROM \'26:30:00\'), HOUR(\'26:30:00\');\n+-------------------------------+------------------+\n| EXTRACT(HOUR FROM \'26:30:00\') | HOUR(\'26:30:00\') |\n+-------------------------------+------------------+\n|                             2 |               26 |\n+-------------------------------+------------------+\n\n\n\nURL: mariadb.com/kb/en/extract/','','https://mariadb.com/kb/en/extract/'),(487,'HOUR',31,'Syntax\n------\n\nHOUR(time)\n\nDescription\n-----------\n\nReturns the hour for time. The range of the return value is 0 to 23 for\ntime-of-day values. However, the range of TIME values actually is much larger,\nso HOUR can return values greater than 23.\n\nThe return value is always positive, even if a negative TIME value is provided.\n\nExamples\n--------\n\nSELECT HOUR(\'10:05:03\');\n+------------------+\n| HOUR(\'10:05:03\') |\n+------------------+\n|               10 |\n+------------------+\n\nSELECT HOUR(\'272:59:59\');\n+-------------------+\n| HOUR(\'272:59:59\') |\n+-------------------+\n|               272 |\n+-------------------+\n\nDifference between EXTRACT (HOUR FROM ...) (>= MariaDB 10.0.7 and MariaDB\n5.5.35) and HOUR:\n\nSELECT EXTRACT(HOUR FROM \'26:30:00\'), HOUR(\'26:30:00\');\n+-------------------------------+------------------+\n| EXTRACT(HOUR FROM \'26:30:00\') | HOUR(\'26:30:00\') |\n+-------------------------------+------------------+\n|                             2 |               26 |\n+-------------------------------+------------------+\n\n\n\nURL: mariadb.com/kb/en/hour/','','https://mariadb.com/kb/en/hour/'),(486,'GET_FORMAT',31,'Syntax\n------\n\nGET_FORMAT({DATE|DATETIME|TIME}, {\'EUR\'|\'USA\'|\'JIS\'|\'ISO\'|\'INTERNAL\'})\n\nDescription\n-----------\n\nReturns a format string. This function is useful in combination with the\nDATE_FORMAT() and the STR_TO_DATE() functions.\n\nPossible result formats are:\n\n+--------------------------------------+--------------------------------------+\n| Function Call                        | Result Format                        |\n+--------------------------------------+--------------------------------------+\n| GET_FORMAT(DATE,\'EUR\')               | \'%d.%m.%Y\'                           |\n+--------------------------------------+--------------------------------------+\n| GET_FORMAT(DATE,\'USA\')               | \'%m.%d.%Y\'                           |\n+--------------------------------------+--------------------------------------+\n| GET_FORMAT(DATE,\'JIS\')               | \'%Y-%m-%d\'                           |\n+--------------------------------------+--------------------------------------+\n| GET_FORMAT(DATE,\'ISO\')               | \'%Y-%m-%d\'                           |\n+--------------------------------------+--------------------------------------+\n| GET_FORMAT(DATE,\'INTERNAL\')          | \'%Y%m%d\'                             |\n+--------------------------------------+--------------------------------------+\n| GET_FORMAT(DATETIME,\'EUR\')           | \'%Y-%m-%d %H.%i.%s\'                  |\n+--------------------------------------+--------------------------------------+\n| GET_FORMAT(DATETIME,\'USA\')           | \'%Y-%m-%d %H.%i.%s\'                  |\n+--------------------------------------+--------------------------------------+\n| GET_FORMAT(DATETIME,\'JIS\')           | \'%Y-%m-%d %H:%i:%s\'                  |\n+--------------------------------------+--------------------------------------+\n| GET_FORMAT(DATETIME,\'ISO\')           | \'%Y-%m-%d %H:%i:%s\'                  |\n+--------------------------------------+--------------------------------------+\n| GET_FORMAT(DATETIME,\'INTERNAL\')      | \'%Y%m%d%H%i%s\'                       |\n+--------------------------------------+--------------------------------------+\n| GET_FORMAT(TIME,\'EUR\')               | \'%H.%i.%s\'                           |\n+--------------------------------------+--------------------------------------+\n| GET_FORMAT(TIME,\'USA\')               | \'%h:%i:%s %p\'                        |\n+--------------------------------------+--------------------------------------+\n| GET_FORMAT(TIME,\'JIS\')               | \'%H:%i:%s\'                           |\n+--------------------------------------+--------------------------------------+\n| GET_FORMAT(TIME,\'ISO\')               | \'%H:%i:%s\'                           |\n+--------------------------------------+--------------------------------------+\n| GET_FORMAT(TIME,\'INTERNAL\')          | \'%H%i%s\'                             |\n+--------------------------------------+--------------------------------------+\n\nExamples\n--------\n\nObtaining the string matching to the standard European date format:\n\nSELECT GET_FORMAT(DATE, \'EUR\');\n+-------------------------+\n| GET_FORMAT(DATE, \'EUR\') |\n+-------------------------+\n| %d.%m.%Y                |\n+-------------------------+\n\nUsing the same string to format a date:\n\nSELECT DATE_FORMAT(\'2003-10-03\',GET_FORMAT(DATE,\'EUR\'));\n+--------------------------------------------------+\n| DATE_FORMAT(\'2003-10-03\',GET_FORMAT(DATE,\'EUR\')) |\n+--------------------------------------------------+\n| 03.10.2003                                       |\n+--------------------------------------------------+\n\nSELECT STR_TO_DATE(\'10.31.2003\',GET_FORMAT(DATE,\'USA\'));\n+--------------------------------------------------+\n| STR_TO_DATE(\'10.31.2003\',GET_FORMAT(DATE,\'USA\')) |\n+--------------------------------------------------+\n| 2003-10-31                                       |\n+--------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/get_format/','','https://mariadb.com/kb/en/get_format/'),(488,'LAST_DAY',31,'Syntax\n------\n\nLAST_DAY(date)\n\nDescription\n-----------\n\nTakes a date or datetime value and returns the corresponding value for the\nlast day of the month. Returns NULL if the argument is invalid.\n\nExamples\n--------\n\nSELECT LAST_DAY(\'2003-02-05\');\n+------------------------+\n| LAST_DAY(\'2003-02-05\') |\n+------------------------+\n| 2003-02-28             |\n+------------------------+\n\nSELECT LAST_DAY(\'2004-02-05\');\n+------------------------+\n| LAST_DAY(\'2004-02-05\') |\n+------------------------+\n| 2004-02-29             |\n+------------------------+\n\nSELECT LAST_DAY(\'2004-01-01 01:01:01\');\n+---------------------------------+\n| LAST_DAY(\'2004-01-01 01:01:01\') |\n+---------------------------------+\n| 2004-01-31                      |\n+---------------------------------+\n\nSELECT LAST_DAY(\'2003-03-32\');\n+------------------------+\n| LAST_DAY(\'2003-03-32\') |\n+------------------------+\n| NULL                   |\n+------------------------+\n1 row in set, 1 warning (0.00 sec)\n\nWarning (Code 1292): Incorrect datetime value: \'2003-03-32\'\n\n\n\nURL: mariadb.com/kb/en/last_day/','','https://mariadb.com/kb/en/last_day/'),(491,'MAKEDATE',31,'Syntax\n------\n\nMAKEDATE(year,dayofyear)\n\nDescription\n-----------\n\nReturns a date, given year and day-of-year values. dayofyear must be greater\nthan 0 or the result is NULL.\n\nExamples\n--------\n\nSELECT MAKEDATE(2011,31), MAKEDATE(2011,32);\n+-------------------+-------------------+\n| MAKEDATE(2011,31) | MAKEDATE(2011,32) |\n+-------------------+-------------------+\n| 2011-01-31        | 2011-02-01        |\n+-------------------+-------------------+\n\nSELECT MAKEDATE(2011,365), MAKEDATE(2014,365);\n+--------------------+--------------------+\n| MAKEDATE(2011,365) | MAKEDATE(2014,365) |\n+--------------------+--------------------+\n| 2011-12-31         | 2014-12-31         |\n+--------------------+--------------------+\n\nSELECT MAKEDATE(2011,0);\n+------------------+\n| MAKEDATE(2011,0) |\n+------------------+\n| NULL             |\n+------------------+\n\n\n\nURL: mariadb.com/kb/en/makedate/','','https://mariadb.com/kb/en/makedate/'),(492,'MAKETIME',31,'Syntax\n------\n\nMAKETIME(hour,minute,second)\n\nDescription\n-----------\n\nReturns a time value calculated from the hour, minute, and second arguments.\n\nIf minute or second are out of the range 0 to 60, NULL is returned. The hour\ncan be in the range -838 to 838, outside of which the value is truncated with\na warning.\n\nExamples\n--------\n\nSELECT MAKETIME(13,57,33);\n+--------------------+\n| MAKETIME(13,57,33) |\n+--------------------+\n| 13:57:33           |\n+--------------------+\n\nSELECT MAKETIME(-13,57,33);\n+---------------------+\n| MAKETIME(-13,57,33) |\n+---------------------+\n| -13:57:33           |\n+---------------------+\n\nSELECT MAKETIME(13,67,33);\n+--------------------+\n| MAKETIME(13,67,33) |\n+--------------------+\n| NULL               |\n+--------------------+\n\nSELECT MAKETIME(-1000,57,33);\n+-----------------------+\n| MAKETIME(-1000,57,33) |\n+-----------------------+\n| -838:59:59            |\n+-----------------------+\n1 row in set, 1 warning (0.00 sec)\n\nSHOW WARNINGS;\n+---------+------+-----------------------------------------------+\n| Level   | Code | Message                                       |\n+---------+------+-----------------------------------------------+\n| Warning | 1292 | Truncated incorrect time value: \'-1000:57:33\' |\n+---------+------+-----------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/maketime/','','https://mariadb.com/kb/en/maketime/'),(493,'MICROSECOND',31,'Syntax\n------\n\nMICROSECOND(expr)\n\nDescription\n-----------\n\nReturns the microseconds from the time or datetime expression expr as a number\nin the range from 0 to 999999.\n\nIf expr is a time with no microseconds, zero is returned, while if expr is a\ndate with no time, zero with a warning is returned.\n\nExamples\n--------\n\nSELECT MICROSECOND(\'12:00:00.123456\');\n+--------------------------------+\n| MICROSECOND(\'12:00:00.123456\') |\n+--------------------------------+\n|                         123456 |\n+--------------------------------+\n\nSELECT MICROSECOND(\'2009-12-31 23:59:59.000010\');\n+-------------------------------------------+\n| MICROSECOND(\'2009-12-31 23:59:59.000010\') |\n+-------------------------------------------+\n|                                        10 |\n+-------------------------------------------+\n\nSELECT MICROSECOND(\'2013-08-07 12:13:14\');\n+------------------------------------+\n| MICROSECOND(\'2013-08-07 12:13:14\') |\n+------------------------------------+\n|                                  0 |\n+------------------------------------+\n\nSELECT MICROSECOND(\'2013-08-07\');\n+---------------------------+\n| MICROSECOND(\'2013-08-07\') |\n+---------------------------+\n|                         0 |\n+---------------------------+\n1 row in set, 1 warning (0.00 sec)\n\nSHOW WARNINGS;\n+---------+------+----------------------------------------------+\n| Level   | Code | Message                                      |\n+---------+------+----------------------------------------------+\n| Warning | 1292 | Truncated incorrect time value: \'2013-08-07\' |\n+---------+------+----------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/microsecond/','','https://mariadb.com/kb/en/microsecond/'),(497,'NOW',31,'Syntax\n------\n\nNOW([precision])\nCURRENT_TIMESTAMP\nCURRENT_TIMESTAMP([precision])\nLOCALTIME, LOCALTIME([precision])\nLOCALTIMESTAMP\nLOCALTIMESTAMP([precision])\n\nDescription\n-----------\n\nReturns the current date and time as a value in \'YYYY-MM-DD HH:MM:SS\' or\nYYYYMMDDHHMMSS.uuuuuu format, depending on whether the function is used in a\nstring or numeric context. The value is expressed in the current time zone.\n\nThe optional precision determines the microsecond precision. See Microseconds\nin MariaDB.\n\nNOW() (or its synonyms) can be used as the default value for TIMESTAMP columns\nas well as, since MariaDB 10.0.1, DATETIME columns. Before MariaDB 10.0.1, it\nwas only possible for a single TIMESTAMP column per table to contain the\nCURRENT_TIMESTAMP as its default.\n\nWhen displayed in the INFORMATION_SCHEMA.COLUMNS table, a default CURRENT\nTIMESTAMP is displayed as CURRENT_TIMESTAMP up until MariaDB 10.2.2, and as\ncurrent_timestamp() from MariaDB 10.2.3, due to to MariaDB 10.2 accepting\nexpressions in the DEFAULT clause.\n\nExamples\n--------\n\nSELECT NOW();\n+---------------------+\n| NOW()               |\n+---------------------+\n| 2010-03-27 13:13:25 |\n+---------------------+\n\nSELECT NOW() + 0;\n+-----------------------+\n| NOW() + 0             |\n+-----------------------+\n| 20100327131329.000000 |\n+-----------------------+\n\nWith precision:\n\nSELECT CURRENT_TIMESTAMP(2);\n+------------------------+\n| CURRENT_TIMESTAMP(2)   |\n+------------------------+\n| 2018-07-10 09:47:26.24 |\n+------------------------+\n\nUsed as a default TIMESTAMP:\n\nCREATE TABLE t (createdTS TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP);\n\nFrom MariaDB 10.2.2:\n\nSELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA=\'test\'\n AND COLUMN_NAME LIKE \'%ts%\'G\n*************************** 1. row ***************************\n     TABLE_CATALOG: def\n      TABLE_SCHEMA: test\n       TABLE_NAME: t\n      COLUMN_NAME: ts\n    ORDINAL_POSITION: 1\n     COLUMN_DEFAULT: current_timestamp()\n...\n\n<= MariaDB 10.2.1\n\nSELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA=\'test\'\n AND COLUMN_NAME LIKE \'%ts%\'G\n*************************** 1. row ***************************\n     TABLE_CATALOG: def\n      TABLE_SCHEMA: test\n       TABLE_NAME: t\n      COLUMN_NAME: createdTS\n    ORDINAL_POSITION: 1\n     COLUMN_DEFAULT: CURRENT_TIMESTAMP\n...\n\n\n\nURL: mariadb.com/kb/en/now/','','https://mariadb.com/kb/en/now/'),(498,'PERIOD_ADD',31,'Syntax\n------\n\nPERIOD_ADD(P,N)\n\nDescription\n-----------\n\nAdds N months to period P. P is in the format YYMM or YYYYMM, and is not a\ndate value. If P contains a two-digit year, values from 00 to 69 are converted\nto from 2000 to 2069, while values from 70 are converted to 1970 upwards.\n\nReturns a value in the format YYYYMM.\n\nExamples\n--------\n\nSELECT PERIOD_ADD(200801,2);\n+----------------------+\n| PERIOD_ADD(200801,2) |\n+----------------------+\n|               200803 |\n+----------------------+\n\nSELECT PERIOD_ADD(6910,2);\n+--------------------+\n| PERIOD_ADD(6910,2) |\n+--------------------+\n|             206912 |\n+--------------------+\n\nSELECT PERIOD_ADD(7010,2);\n+--------------------+\n| PERIOD_ADD(7010,2) |\n+--------------------+\n|             197012 |\n+--------------------+\n\n\n\nURL: mariadb.com/kb/en/period_add/','','https://mariadb.com/kb/en/period_add/'),(499,'PERIOD_DIFF',31,'Syntax\n------\n\nPERIOD_DIFF(P1,P2)\n\nDescription\n-----------\n\nReturns the number of months between periods P1 and P2. P1 and P2 can be in\nthe format YYMM or YYYYMM, and are not date values.\n\nIf P1 or P2 contains a two-digit year, values from 00 to 69 are converted to\nfrom 2000 to 2069, while values from 70 are converted to 1970 upwards.\n\nExamples\n--------\n\nSELECT PERIOD_DIFF(200802,200703);\n+----------------------------+\n| PERIOD_DIFF(200802,200703) |\n+----------------------------+\n|                         11 |\n+----------------------------+\n\nSELECT PERIOD_DIFF(6902,6803);\n+------------------------+\n| PERIOD_DIFF(6902,6803) |\n+------------------------+\n|                     11 |\n+------------------------+\n\nSELECT PERIOD_DIFF(7002,6803);\n+------------------------+\n| PERIOD_DIFF(7002,6803) |\n+------------------------+\n|                  -1177 |\n+------------------------+\n\n\n\nURL: mariadb.com/kb/en/period_diff/','','https://mariadb.com/kb/en/period_diff/'),(502,'SEC_TO_TIME',31,'Syntax\n------\n\nSEC_TO_TIME(seconds)\n\nDescription\n-----------\n\nReturns the seconds argument, converted to hours, minutes, and seconds, as a\nTIME value. The range of the result is constrained to that of the TIME data\ntype. A warning occurs if the argument corresponds to a value outside that\nrange.\n\nThe time will be returned in the format hh:mm:ss, or hhmmss if used in a\nnumeric calculation.\n\nExamples\n--------\n\nSELECT SEC_TO_TIME(12414);\n+--------------------+\n| SEC_TO_TIME(12414) |\n+--------------------+\n| 03:26:54           |\n+--------------------+\n\nSELECT SEC_TO_TIME(12414)+0;\n+----------------------+\n| SEC_TO_TIME(12414)+0 |\n+----------------------+\n|                32654 |\n+----------------------+\n\nSELECT SEC_TO_TIME(9999999);\n+----------------------+\n| SEC_TO_TIME(9999999) |\n+----------------------+\n| 838:59:59            |\n+----------------------+\n1 row in set, 1 warning (0.00 sec)\n\nSHOW WARNINGS;\n+---------+------+-------------------------------------------+\n| Level   | Code | Message                                   |\n+---------+------+-------------------------------------------+\n| Warning | 1292 | Truncated incorrect time value: \'9999999\' |\n+---------+------+-------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/sec_to_time/','','https://mariadb.com/kb/en/sec_to_time/'),(504,'SUBDATE',31,'Syntax\n------\n\nSUBDATE(date,INTERVAL expr unit), SUBDATE(expr,days)\n\nDescription\n-----------\n\nWhen invoked with the INTERVAL form of the second argument, SUBDATE() is a\nsynonym for DATE_SUB(). See Date and Time Units for a complete list of\npermitted units.\n\nThe second form allows the use of an integer value for days. In such cases, it\nis interpreted as the number of days to be subtracted from the date or\ndatetime expression expr.\n\nExamples\n--------\n\nSELECT DATE_SUB(\'2008-01-02\', INTERVAL 31 DAY);\n+-----------------------------------------+\n| DATE_SUB(\'2008-01-02\', INTERVAL 31 DAY) |\n+-----------------------------------------+\n| 2007-12-02                              |\n+-----------------------------------------+\n\nSELECT SUBDATE(\'2008-01-02\', INTERVAL 31 DAY);\n+----------------------------------------+\n| SUBDATE(\'2008-01-02\', INTERVAL 31 DAY) |\n+----------------------------------------+\n| 2007-12-02                             |\n+----------------------------------------+\n\nSELECT SUBDATE(\'2008-01-02 12:00:00\', 31);\n+------------------------------------+\n| SUBDATE(\'2008-01-02 12:00:00\', 31) |\n+------------------------------------+\n| 2007-12-02 12:00:00                |\n+------------------------------------+\n\nCREATE TABLE t1 (d DATETIME);\nINSERT INTO t1 VALUES\n  (\"2007-01-30 21:31:07\"),\n  (\"1983-10-15 06:42:51\"),\n  (\"2011-04-21 12:34:56\"),\n  (\"2011-10-30 06:31:41\"),\n  (\"2011-01-30 14:03:25\"),\n  (\"2004-10-07 11:19:34\");\n\nSELECT d, SUBDATE(d, 10) from t1;\n+---------------------+---------------------+\n| d                   | SUBDATE(d, 10)      |\n+---------------------+---------------------+\n| 2007-01-30 21:31:07 | 2007-01-20 21:31:07 |\n| 1983-10-15 06:42:51 | 1983-10-05 06:42:51 |\n| 2011-04-21 12:34:56 | 2011-04-11 12:34:56 |\n| 2011-10-30 06:31:41 | 2011-10-20 06:31:41 |\n| 2011-01-30 14:03:25 | 2011-01-20 14:03:25 |\n| 2004-10-07 11:19:34 | 2004-09-27 11:19:34 |\n+---------------------+---------------------+\n\nSELECT d, SUBDATE(d, INTERVAL 10 MINUTE) from t1;\n+---------------------+--------------------------------+\n| d                   | SUBDATE(d, INTERVAL 10 MINUTE) |\n+---------------------+--------------------------------+\n| 2007-01-30 21:31:07 | 2007-01-30 21:21:07            |\n| 1983-10-15 06:42:51 | 1983-10-15 06:32:51            |\n| 2011-04-21 12:34:56 | 2011-04-21 12:24:56            |\n| 2011-10-30 06:31:41 | 2011-10-30 06:21:41            |\n| 2011-01-30 14:03:25 | 2011-01-30 13:53:25            |\n| 2004-10-07 11:19:34 | 2004-10-07 11:09:34            |\n+---------------------+--------------------------------+\n\n\n\nURL: mariadb.com/kb/en/subdate/','','https://mariadb.com/kb/en/subdate/'),(505,'SUBTIME',31,'Syntax\n------\n\nSUBTIME(expr1,expr2)\n\nDescription\n-----------\n\nSUBTIME() returns expr1 - expr2 expressed as a value in the same format as\nexpr1. expr1 is a time or datetime expression, and expr2 is a time expression.\n\nExamples\n--------\n\nSELECT SUBTIME(\'2007-12-31 23:59:59.999999\',\'1 1:1:1.000002\');\n+--------------------------------------------------------+\n| SUBTIME(\'2007-12-31 23:59:59.999999\',\'1 1:1:1.000002\') |\n+--------------------------------------------------------+\n| 2007-12-30 22:58:58.999997                             |\n+--------------------------------------------------------+\n\nSELECT SUBTIME(\'01:00:00.999999\', \'02:00:00.999998\');\n+-----------------------------------------------+\n| SUBTIME(\'01:00:00.999999\', \'02:00:00.999998\') |\n+-----------------------------------------------+\n| -00:59:59.999999                              |\n+-----------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/subtime/','','https://mariadb.com/kb/en/subtime/'),(506,'SYSDATE',31,'Syntax\n------\n\nSYSDATE([precision])\n\nDescription\n-----------\n\nReturns the current date and time as a value in \'YYYY-MM-DD HH:MM:SS\' or\nYYYYMMDDHHMMSS.uuuuuu format, depending on whether the function is used in a\nstring or numeric context.\n\nThe optional precision determines the microsecond precision. See Microseconds\nin MariaDB.\n\nSYSDATE() returns the time at which it executes. This differs from the\nbehavior for NOW(), which returns a constant time that indicates the time at\nwhich the statement began to execute. (Within a stored routine or trigger,\nNOW() returns the time at which the routine or triggering statement began to\nexecute.)\n\nIn addition, changing the timestamp system variable with a SET timestamp\nstatement affects the value returned by NOW() but not by SYSDATE(). This means\nthat timestamp settings in the binary log have no effect on invocations of\nSYSDATE().\n\nBecause SYSDATE() can return different values even within the same statement,\nand is not affected by SET TIMESTAMP, it is non-deterministic and therefore\nunsafe for replication if statement-based binary logging is used. If that is a\nproblem, you can use row-based logging, or start the server with the mysqld\noption --sysdate-is-now to cause SYSDATE() to be an alias for NOW(). The\nnon-deterministic nature of SYSDATE() also means that indexes cannot be used\nfor evaluating expressions that refer to it, and that statements using the\nSYSDATE() function are unsafe for statement-based replication.\n\nExamples\n--------\n\nDifference between NOW() and SYSDATE():\n\nSELECT NOW(), SLEEP(2), NOW();\n+---------------------+----------+---------------------+\n| NOW()               | SLEEP(2) | NOW()               |\n+---------------------+----------+---------------------+\n| 2010-03-27 13:23:40 |        0 | 2010-03-27 13:23:40 |\n+---------------------+----------+---------------------+\n\nSELECT SYSDATE(), SLEEP(2), SYSDATE();\n+---------------------+----------+---------------------+\n| SYSDATE()           | SLEEP(2) | SYSDATE()           |\n+---------------------+----------+---------------------+\n| 2010-03-27 13:23:52 |        0 | 2010-03-27 13:23:54 |\n+---------------------+----------+---------------------+\n\nWith precision:\n\nSELECT SYSDATE(4);\n+--------------------------+\n| SYSDATE(4)               |\n+--------------------------+\n| 2018-07-10 10:17:13.1689 |\n+--------------------------+\n\n\n\nURL: mariadb.com/kb/en/sysdate/','','https://mariadb.com/kb/en/sysdate/'),(508,'TIMEDIFF',31,'Syntax\n------\n\nTIMEDIFF(expr1,expr2)\n\nDescription\n-----------\n\nTIMEDIFF() returns expr1 - expr2 expressed as a time value. expr1 and expr2\nare time or date-and-time expressions, but both must be of the same type.\n\nExamples\n--------\n\nSELECT TIMEDIFF(\'2000:01:01 00:00:00\', \'2000:01:01 00:00:00.000001\');\n+---------------------------------------------------------------+\n| TIMEDIFF(\'2000:01:01 00:00:00\', \'2000:01:01 00:00:00.000001\') |\n+---------------------------------------------------------------+\n| -00:00:00.000001                                              |\n+---------------------------------------------------------------+\n\nSELECT TIMEDIFF(\'2008-12-31 23:59:59.000001\', \'2008-12-30 01:01:01.000002\');\n+----------------------------------------------------------------------+\n| TIMEDIFF(\'2008-12-31 23:59:59.000001\', \'2008-12-30 01:01:01.000002\') |\n+----------------------------------------------------------------------+\n| 46:58:57.999999                                                      |\n+----------------------------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/timediff/','','https://mariadb.com/kb/en/timediff/'),(509,'TIMESTAMP FUNCTION',31,'Syntax\n------\n\nTIMESTAMP(expr), TIMESTAMP(expr1,expr2)\n\nDescription\n-----------\n\nWith a single argument, this function returns the date or datetime expression\nexpr as a datetime value. With two arguments, it adds the time expression\nexpr2 to the date or datetime expression expr1 and returns the result as a\ndatetime value.\n\nExamples\n--------\n\nSELECT TIMESTAMP(\'2003-12-31\');\n+-------------------------+\n| TIMESTAMP(\'2003-12-31\') |\n+-------------------------+\n| 2003-12-31 00:00:00     |\n+-------------------------+\n\nSELECT TIMESTAMP(\'2003-12-31 12:00:00\',\'6:30:00\');\n+--------------------------------------------+\n| TIMESTAMP(\'2003-12-31 12:00:00\',\'6:30:00\') |\n+--------------------------------------------+\n| 2003-12-31 18:30:00                        |\n+--------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/timestamp-function/','','https://mariadb.com/kb/en/timestamp-function/'),(510,'TIMESTAMPADD',31,'Syntax\n------\n\nTIMESTAMPADD(unit,interval,datetime_expr)\n\nDescription\n-----------\n\nAdds the integer expression interval to the date or datetime expression\ndatetime_expr. The unit for interval is given by the unit argument, which\nshould be one of the following values: MICROSECOND, SECOND, MINUTE, HOUR, DAY,\nWEEK, MONTH, QUARTER, or YEAR.\n\nThe unit value may be specified using one of keywords as shown, or with a\nprefix of SQL_TSI_. For example, DAY and SQL_TSI_DAY both are legal.\n\nBefore MariaDB 5.5, FRAC_SECOND was permitted as a synonym for MICROSECOND.\n\nExamples\n--------\n\nSELECT TIMESTAMPADD(MINUTE,1,\'2003-01-02\');\n+-------------------------------------+\n| TIMESTAMPADD(MINUTE,1,\'2003-01-02\') |\n+-------------------------------------+\n| 2003-01-02 00:01:00                 |\n+-------------------------------------+\n\nSELECT TIMESTAMPADD(WEEK,1,\'2003-01-02\');\n+-----------------------------------+\n| TIMESTAMPADD(WEEK,1,\'2003-01-02\') |\n+-----------------------------------+\n| 2003-01-09                        |\n+-----------------------------------+\n\n\n\nURL: mariadb.com/kb/en/timestampadd/','','https://mariadb.com/kb/en/timestampadd/'),(511,'TIMESTAMPDIFF',31,'Syntax\n------\n\nTIMESTAMPDIFF(unit,datetime_expr1,datetime_expr2)\n\nDescription\n-----------\n\nReturns datetime_expr2 - datetime_expr1, where datetime_expr1 and\ndatetime_expr2 are date or datetime expressions. One expression may be a date\nand the other a datetime; a date value is treated as a datetime having the\ntime part \'00:00:00\' where necessary. The unit for the result (an integer) is\ngiven by the unit argument. The legal values for unit are the same as those\nlisted in the description of the TIMESTAMPADD() function, i.e MICROSECOND,\nSECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, or YEAR.\n\nTIMESTAMPDIFF can also be used to calculate age.\n\nExamples\n--------\n\nSELECT TIMESTAMPDIFF(MONTH,\'2003-02-01\',\'2003-05-01\');\n+------------------------------------------------+\n| TIMESTAMPDIFF(MONTH,\'2003-02-01\',\'2003-05-01\') |\n+------------------------------------------------+\n|                                              3 |\n+------------------------------------------------+\n\nSELECT TIMESTAMPDIFF(YEAR,\'2002-05-01\',\'2001-01-01\');\n+-----------------------------------------------+\n| TIMESTAMPDIFF(YEAR,\'2002-05-01\',\'2001-01-01\') |\n+-----------------------------------------------+\n|                                            -1 |\n+-----------------------------------------------+\n\nSELECT TIMESTAMPDIFF(MINUTE,\'2003-02-01\',\'2003-05-01 12:05:55\');\n+----------------------------------------------------------+\n| TIMESTAMPDIFF(MINUTE,\'2003-02-01\',\'2003-05-01 12:05:55\') |\n+----------------------------------------------------------+\n|                                                   128885 |\n+----------------------------------------------------------+\n\nCalculating age:\n\nSELECT CURDATE();\n+------------+\n| CURDATE()  |\n+------------+\n| 2019-05-27 |\n+------------+\n\nSELECT TIMESTAMPDIFF(YEAR, \'1971-06-06\', CURDATE()) AS age;\n+------+\n| age  |\n+------+\n|   47 |\n+------+\n\nSELECT TIMESTAMPDIFF(YEAR, \'1971-05-06\', CURDATE()) AS age;\n+------+\n| age  |\n+------+\n|   48 |\n+------+\n\nAge as of 2014-08-02:\n\nSELECT name, date_of_birth, TIMESTAMPDIFF(YEAR,date_of_birth,\'2014-08-02\') AS\nage \n FROM student_details;\n+---------+---------------+------+\n| name    | date_of_birth | age  |\n+---------+---------------+------+\n| Chun    | 1993-12-31    |   20 |\n| Esben   | 1946-01-01    |   68 |\n| Kaolin  | 1996-07-16    |   18 |\n| Tatiana | 1988-04-13    |   26 |\n+---------+---------------+------+\n\n\n\nURL: mariadb.com/kb/en/timestampdiff/','','https://mariadb.com/kb/en/timestampdiff/'),(513,'TIME_TO_SEC',31,'Syntax\n------\n\nTIME_TO_SEC(time)\n\nDescription\n-----------\n\nReturns the time argument, converted to seconds.\n\nThe value returned by TIME_TO_SEC is of type DOUBLE. Before MariaDB 5.3 (and\nMySQL 5.6), the type was INT. The returned value preserves microseconds of the\nargument. See also Microseconds in MariaDB.\n\nExamples\n--------\n\nSELECT TIME_TO_SEC(\'22:23:00\');\n+-------------------------+\n| TIME_TO_SEC(\'22:23:00\') |\n+-------------------------+\n|                   80580 |\n+-------------------------+\n\nSELECT TIME_TO_SEC(\'00:39:38\');\n+-------------------------+\n| TIME_TO_SEC(\'00:39:38\') |\n+-------------------------+\n|                    2378 |\n+-------------------------+\n\nSELECT TIME_TO_SEC(\'09:12:55.2355\');\n+------------------------------+\n| TIME_TO_SEC(\'09:12:55.2355\') |\n+------------------------------+\n|                   33175.2355 |\n+------------------------------+\n1 row in set (0.000 sec)\n\n\n\nURL: mariadb.com/kb/en/time_to_sec/','','https://mariadb.com/kb/en/time_to_sec/'),(514,'TO_DAYS',31,'Syntax\n------\n\nTO_DAYS(date)\n\nDescription\n-----------\n\nGiven a date date, returns the number of days since the start of the current\ncalendar (0000-00-00).\n\nThe function is not designed for use with dates before the advent of the\nGregorian calendar in October 1582. Results will not be reliable since it\ndoesn\'t account for the lost days when the calendar changed from the Julian\ncalendar.\n\nThis is the converse of the FROM_DAYS() function.\n\nExamples\n--------\n\nSELECT TO_DAYS(\'2007-10-07\');\n+-----------------------+\n| TO_DAYS(\'2007-10-07\') |\n+-----------------------+\n|                733321 |\n+-----------------------+\n\nSELECT TO_DAYS(\'0000-01-01\');\n+-----------------------+\n| TO_DAYS(\'0000-01-01\') |\n+-----------------------+\n|                     1 |\n+-----------------------+\n\nSELECT TO_DAYS(950501);\n+-----------------+\n| TO_DAYS(950501) |\n+-----------------+\n|          728779 |\n+-----------------+\n\n\n\nURL: mariadb.com/kb/en/to_days/','','https://mariadb.com/kb/en/to_days/'),(515,'TO_SECONDS',31,'Syntax\n------\n\nTO_SECONDS(expr)\n\nDescription\n-----------\n\nReturns the number of seconds from year 0 till expr, or NULL if expr is not a\nvalid date or datetime.\n\nExamples\n--------\n\nSELECT TO_SECONDS(\'2013-06-13\');\n+--------------------------+\n| TO_SECONDS(\'2013-06-13\') |\n+--------------------------+\n|              63538300800 |\n+--------------------------+\n\nSELECT TO_SECONDS(\'2013-06-13 21:45:13\');\n+-----------------------------------+\n| TO_SECONDS(\'2013-06-13 21:45:13\') |\n+-----------------------------------+\n|                       63538379113 |\n+-----------------------------------+\n\nSELECT TO_SECONDS(NOW());\n+-------------------+\n| TO_SECONDS(NOW()) |\n+-------------------+\n|       63543530875 |\n+-------------------+\n\nSELECT TO_SECONDS(20130513);\n+----------------------+\n| TO_SECONDS(20130513) |\n+----------------------+\n|          63535622400 |\n+----------------------+\n1 row in set (0.00 sec)\n\nSELECT TO_SECONDS(130513);\n+--------------------+\n| TO_SECONDS(130513) |\n+--------------------+\n|        63535622400 |\n+--------------------+\n\n\n\nURL: mariadb.com/kb/en/to_seconds/','','https://mariadb.com/kb/en/to_seconds/'),(516,'UNIX_TIMESTAMP',31,'Syntax\n------\n\nUNIX_TIMESTAMP()\nUNIX_TIMESTAMP(date)\n\nDescription\n-----------\n\nIf called with no argument, returns a Unix timestamp (seconds since\n\'1970-01-01 00:00:00\' UTC) as an unsigned integer. If UNIX_TIMESTAMP() is\ncalled with a date argument, it returns the value of the argument as seconds\nsince \'1970-01-01 00:00:00\' UTC. date may be a DATE string, a DATETIME string,\na TIMESTAMP, or a number in the format YYMMDD or YYYYMMDD. The server\ninterprets date as a value in the current time zone and converts it to an\ninternal value in UTC. Clients can set their time zone as described in time\nzones.\n\nThe inverse function of UNIX_TIMESTAMP() is FROM_UNIXTIME()\n\nUNIX_TIMESTAMP() supports microseconds.\n\nTimestamps in MariaDB have a maximum value of 2147483647, equivalent to\n2038-01-19 05:14:07. This is due to the underlying 32-bit limitation. Using\nthe function on a date beyond this will result in NULL being returned. Use\nDATETIME as a storage type if you require dates beyond this.\n\nError Handling\n--------------\n\nReturns NULL for wrong arguments to UNIX_TIMESTAMP(). In MySQL and MariaDB\nbefore 5.3 wrong arguments to UNIX_TIMESTAMP() returned 0.\n\nCompatibility\n-------------\n\nAs you can see in the examples above, UNIX_TIMESTAMP(constant-date-string)\nreturns a timestamp with 6 decimals while MariaDB 5.2 and before returns it\nwithout decimals. This can cause a problem if you are using UNIX_TIMESTAMP()\nas a partitioning function. You can fix this by using\nFLOOR(UNIX_TIMESTAMP(..)) or changing the date string to a date number, like\n20080101000000.\n\nExamples\n--------\n\nSELECT UNIX_TIMESTAMP();\n+------------------+\n| UNIX_TIMESTAMP() |\n+------------------+\n|       1269711082 |\n+------------------+\n\nSELECT UNIX_TIMESTAMP(\'2007-11-30 10:30:19\');\n+---------------------------------------+\n| UNIX_TIMESTAMP(\'2007-11-30 10:30:19\') |\n+---------------------------------------+\n|                     1196436619.000000 |\n+---------------------------------------+\n\nSELECT UNIX_TIMESTAMP(\"2007-11-30 10:30:19.123456\");\n+----------------------------------------------+\n| unix_timestamp(\"2007-11-30 10:30:19.123456\") |\n+----------------------------------------------+\n|                            1196411419.123456 |\n+----------------------------------------------+\n\nSELECT FROM_UNIXTIME(UNIX_TIMESTAMP(\'2007-11-30 10:30:19\'));\n+------------------------------------------------------+\n| FROM_UNIXTIME(UNIX_TIMESTAMP(\'2007-11-30 10:30:19\')) |\n+------------------------------------------------------+\n| 2007-11-30 10:30:19.000000                           |\n+------------------------------------------------------+\n\nSELECT FROM_UNIXTIME(FLOOR(UNIX_TIMESTAMP(\'2007-11-30 10:30:19\')));\n+-------------------------------------------------------------+\n| FROM_UNIXTIME(FLOOR(UNIX_TIMESTAMP(\'2007-11-30 10:30:19\'))) |\n+-------------------------------------------------------------+\n| 2007-11-30 10:30:19                                         |\n+-------------------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/unix_timestamp/','','https://mariadb.com/kb/en/unix_timestamp/'),(519,'UTC_TIMESTAMP',31,'Syntax\n------\n\nUTC_TIMESTAMP\nUTC_TIMESTAMP([precision])\n\nDescription\n-----------\n\nReturns the current UTC date and time as a value in \'YYYY-MM-DD HH:MM:SS\' or\nYYYYMMDDHHMMSS.uuuuuu format, depending on whether the function is used in a\nstring or numeric context.\n\nThe optional precision determines the microsecond precision. See Microseconds\nin MariaDB.\n\nExamples\n--------\n\nSELECT UTC_TIMESTAMP(), UTC_TIMESTAMP() + 0;\n+---------------------+-----------------------+\n| UTC_TIMESTAMP()     | UTC_TIMESTAMP() + 0   |\n+---------------------+-----------------------+\n| 2010-03-27 17:33:16 | 20100327173316.000000 |\n+---------------------+-----------------------+\n\nWith precision:\n\nSELECT UTC_TIMESTAMP(4);\n+--------------------------+\n| UTC_TIMESTAMP(4)         |\n+--------------------------+\n| 2018-07-10 07:51:09.1019 |\n+--------------------------+\n\n\n\nURL: mariadb.com/kb/en/utc_timestamp/','','https://mariadb.com/kb/en/utc_timestamp/'),(520,'WEEK',31,'Syntax\n------\n\nWEEK(date[,mode])\n\nDescription\n-----------\n\nThis function returns the week number for date. The two-argument form of\nWEEK() allows you to specify whether the week starts on Sunday or Monday and\nwhether the return value should be in the range from 0 to 53 or from 1 to 53.\nIf the mode argument is omitted, the value of the default_week_format system\nvariable is used.\n\nModes\n-----\n\n+-------+---------------------+--------+-------------------------------------+\n| Mode  | 1st day of week     | Range  | Week 1 is the 1st week with         |\n+-------+---------------------+--------+-------------------------------------+\n| 0     | Sunday              | 0-53   | a Sunday in this year               |\n+-------+---------------------+--------+-------------------------------------+\n| 1     | Monday              | 0-53   | more than 3 days this year          |\n+-------+---------------------+--------+-------------------------------------+\n| 2     | Sunday              | 1-53   | a Sunday in this year               |\n+-------+---------------------+--------+-------------------------------------+\n| 3     | Monday              | 1-53   | more than 3 days this year          |\n+-------+---------------------+--------+-------------------------------------+\n| 4     | Sunday              | 0-53   | more than 3 days this year          |\n+-------+---------------------+--------+-------------------------------------+\n| 5     | Monday              | 0-53   | a Monday in this year               |\n+-------+---------------------+--------+-------------------------------------+\n| 6     | Sunday              | 1-53   | more than 3 days this year          |\n+-------+---------------------+--------+-------------------------------------+\n| 7     | Monday              | 1-53   | a Monday in this year               |\n+-------+---------------------+--------+-------------------------------------+\n\nWith the mode value of 3, which means “more than 3 days this year”, weeks are\nnumbered according to ISO 8601:1988.\n\nExamples\n--------\n\nSELECT WEEK(\'2008-02-20\');\n+--------------------+\n| WEEK(\'2008-02-20\') |\n+--------------------+\n|                  7 |\n+--------------------+\n\nSELECT WEEK(\'2008-02-20\',0);\n+----------------------+\n| WEEK(\'2008-02-20\',0) |\n+----------------------+\n|                    7 |\n+----------------------+\n\nSELECT WEEK(\'2008-02-20\',1);\n+----------------------+\n| WEEK(\'2008-02-20\',1) |\n+----------------------+\n|                    8 |\n+----------------------+\n\nSELECT WEEK(\'2008-12-31\',0);\n+----------------------+\n| WEEK(\'2008-12-31\',0) |\n+----------------------+\n|                   52 |\n+----------------------+\n\nSELECT WEEK(\'2008-12-31\',1);\n+----------------------+\n| WEEK(\'2008-12-31\',1) |\n+----------------------+\n|                   53 |\n+----------------------+\n\nSELECT WEEK(\'2019-12-30\',3);\n+----------------------+\n| WEEK(\'2019-12-30\',3) |\n+----------------------+\n|                    1 |\n+----------------------+\n\nCREATE TABLE t1 (d DATETIME);\nINSERT INTO t1 VALUES\n  (\"2007-01-30 21:31:07\"),\n  (\"1983-10-15 06:42:51\"),\n  (\"2011-04-21 12:34:56\"),\n  (\"2011-10-30 06:31:41\"),\n  (\"2011-01-30 14:03:25\"),\n  (\"2004-10-07 11:19:34\");\n\nSELECT d, WEEK(d,0), WEEK(d,1) from t1;\n+---------------------+-----------+-----------+\n| d                   | WEEK(d,0) | WEEK(d,1) |\n+---------------------+-----------+-----------+\n| 2007-01-30 21:31:07 |         4 |         5 |\n| 1983-10-15 06:42:51 |        41 |        41 |\n| 2011-04-21 12:34:56 |        16 |        16 |\n| 2011-10-30 06:31:41 |        44 |        43 |\n| 2011-01-30 14:03:25 |         5 |         4 |\n| 2004-10-07 11:19:34 |        40 |        41 |\n+---------------------+-----------+-----------+\n\n\n\nURL: mariadb.com/kb/en/week/','','https://mariadb.com/kb/en/week/'),(521,'WEEKDAY',31,'Syntax\n------\n\nWEEKDAY(date)\n\nDescription\n-----------\n\nReturns the weekday index for date (0 = Monday, 1 = Tuesday, ... 6 = Sunday).\n\nThis contrasts with DAYOFWEEK() which follows the ODBC standard (1 = Sunday, 2\n= Monday, ..., 7 = Saturday).\n\nExamples\n--------\n\nSELECT WEEKDAY(\'2008-02-03 22:23:00\');\n+--------------------------------+\n| WEEKDAY(\'2008-02-03 22:23:00\') |\n+--------------------------------+\n|                              6 |\n+--------------------------------+\n\nSELECT WEEKDAY(\'2007-11-06\');\n+-----------------------+\n| WEEKDAY(\'2007-11-06\') |\n+-----------------------+\n|                     1 |\n+-----------------------+\n\nCREATE TABLE t1 (d DATETIME);\nINSERT INTO t1 VALUES\n  (\"2007-01-30 21:31:07\"),\n  (\"1983-10-15 06:42:51\"),\n  (\"2011-04-21 12:34:56\"),\n  (\"2011-10-30 06:31:41\"),\n  (\"2011-01-30 14:03:25\"),\n  (\"2004-10-07 11:19:34\");\n\nSELECT d FROM t1 where WEEKDAY(d) = 6;\n+---------------------+\n| d                   |\n+---------------------+\n| 2011-10-30 06:31:41 |\n| 2011-01-30 14:03:25 |\n+---------------------+\n\n\n\nURL: mariadb.com/kb/en/weekday/','','https://mariadb.com/kb/en/weekday/'),(522,'WEEKOFYEAR',31,'Syntax\n------\n\nWEEKOFYEAR(date)\n\nDescription\n-----------\n\nReturns the calendar week of the date as a number in the range from 1 to 53.\nWEEKOFYEAR() is a compatibility function that is equivalent to WEEK(date,3).\n\nExamples\n--------\n\nSELECT WEEKOFYEAR(\'2008-02-20\');\n+--------------------------+\n| WEEKOFYEAR(\'2008-02-20\') |\n+--------------------------+\n|                        8 |\n+--------------------------+\n\nCREATE TABLE t1 (d DATETIME);\nINSERT INTO t1 VALUES\n  (\"2007-01-30 21:31:07\"),\n  (\"1983-10-15 06:42:51\"),\n  (\"2011-04-21 12:34:56\"),\n  (\"2011-10-30 06:31:41\"),\n  (\"2011-01-30 14:03:25\"),\n  (\"2004-10-07 11:19:34\");\n\nselect * from t1;\n+---------------------+\n| d                   |\n+---------------------+\n| 2007-01-30 21:31:07 |\n| 1983-10-15 06:42:51 |\n| 2011-04-21 12:34:56 |\n| 2011-10-30 06:31:41 |\n| 2011-01-30 14:03:25 |\n| 2004-10-07 11:19:34 |\n+---------------------+\n\nSELECT d, WEEKOFYEAR(d), WEEK(d,3) from t1;\n+---------------------+---------------+-----------+\n| d                   | WEEKOFYEAR(d) | WEEK(d,3) |\n+---------------------+---------------+-----------+\n| 2007-01-30 21:31:07 |             5 |         5 |\n| 1983-10-15 06:42:51 |            41 |        41 |\n| 2011-04-21 12:34:56 |            16 |        16 |\n| 2011-10-30 06:31:41 |            43 |        43 |\n| 2011-01-30 14:03:25 |             4 |         4 |\n| 2004-10-07 11:19:34 |            41 |        41 |\n+---------------------+---------------+-----------+\n\n\n\nURL: mariadb.com/kb/en/weekofyear/','','https://mariadb.com/kb/en/weekofyear/'),(523,'YEAR',31,'Syntax\n------\n\nYEAR(date)\n\nDescription\n-----------\n\nReturns the year for the given date, in the range 1000 to 9999, or 0 for the\n\"zero\" date.\n\nExamples\n--------\n\nCREATE TABLE t1 (d DATETIME);\nINSERT INTO t1 VALUES\n  (\"2007-01-30 21:31:07\"),\n  (\"1983-10-15 06:42:51\"),\n  (\"2011-04-21 12:34:56\"),\n  (\"2011-10-30 06:31:41\"),\n  (\"2011-01-30 14:03:25\"),\n  (\"2004-10-07 11:19:34\");\n\nSELECT * FROM t1;\n+---------------------+\n| d                   |\n+---------------------+\n| 2007-01-30 21:31:07 |\n| 1983-10-15 06:42:51 |\n| 2011-04-21 12:34:56 |\n| 2011-10-30 06:31:41 |\n| 2011-01-30 14:03:25 |\n| 2004-10-07 11:19:34 |\n+---------------------+\n\nSELECT * FROM t1 WHERE YEAR(d) = 2011;\n+---------------------+\n| d                   |\n+---------------------+\n| 2011-04-21 12:34:56 |\n| 2011-10-30 06:31:41 |\n| 2011-01-30 14:03:25 |\n+---------------------+\n\nSELECT YEAR(\'1987-01-01\');\n+--------------------+\n| YEAR(\'1987-01-01\') |\n+--------------------+\n|               1987 |\n+--------------------+\n\n\n\nURL: mariadb.com/kb/en/year/','','https://mariadb.com/kb/en/year/'),(524,'YEARWEEK',31,'Syntax\n------\n\nYEARWEEK(date), YEARWEEK(date,mode)\n\nDescription\n-----------\n\nReturns year and week for a date. The mode argument works exactly like the\nmode argument to WEEK(). The year in the result may be different from the year\nin the date argument for the first and the last week of the year.\n\nExamples\n--------\n\nSELECT YEARWEEK(\'1987-01-01\');\n+------------------------+\n| YEARWEEK(\'1987-01-01\') |\n+------------------------+\n|                 198652 |\n+------------------------+\n\nCREATE TABLE t1 (d DATETIME);\nINSERT INTO t1 VALUES\n  (\"2007-01-30 21:31:07\"),\n  (\"1983-10-15 06:42:51\"),\n  (\"2011-04-21 12:34:56\"),\n  (\"2011-10-30 06:31:41\"),\n  (\"2011-01-30 14:03:25\"),\n  (\"2004-10-07 11:19:34\");\n\nSELECT * FROM t1;\n+---------------------+\n| d                   |\n+---------------------+\n| 2007-01-30 21:31:07 |\n| 1983-10-15 06:42:51 |\n| 2011-04-21 12:34:56 |\n| 2011-10-30 06:31:41 |\n| 2011-01-30 14:03:25 |\n| 2004-10-07 11:19:34 |\n+---------------------+\n6 rows in set (0.02 sec)\n\nSELECT YEARWEEK(d) FROM t1 WHERE YEAR(d) = 2011;\n+-------------+\n| YEARWEEK(d) |\n+-------------+\n|      201116 |\n|      201144 |\n|      201105 |\n+-------------+\n3 rows in set (0.03 sec)\n\n\n\nURL: mariadb.com/kb/en/yearweek/','','https://mariadb.com/kb/en/yearweek/'),(525,'Well-Known Binary (WKB) Format',32,'WKB stands for Well-Known Binary, a format for representing\ngeographical and geometrical data.\n\nWKB uses 1-byte unsigned integers, 4-byte unsigned integers, and 8-byte\ndouble-precision numbers.\n\n* The first byte indicates the byte order. 00 for big endian, or 01 for little\nendian.\n* The next 4 bytes indicate the geometry type. Values from 1 to 7 indicate\nwhether the type is Point, LineString, Polygon, MultiPoint, MultiLineString,\nMultiPolygon, or GeometryCollection respectively. \n* The 8-byte floats represent the co-ordinates.\n\nTake the following example, a sequence of 21 bytes each represented by two hex\ndigits:\n\n000000000140000000000000004010000000000000\n\n* It\'s big endian\n000000000140000000000000004010000000000000\n\n* It\'s a POINT\n000000000140000000000000004010000000000000\n\n* The X co-ordinate is 2.0\n000000000140000000000000004010000000000000\n\n* The Y-co-ordinate is 4.0\n000000000140000000000000004010000000000000\n\n\n\nURL: mariadb.com/kb/en/well-known-binary-wkb-format/','','https://mariadb.com/kb/en/well-known-binary-wkb-format/'),(545,'ST_GeomCollFromWKB',32,'Syntax\n------\n\nST_GeomCollFromWKB(wkb[,srid])\nST_GeometryCollectionFromWKB(wkb[,srid])\nGeomCollFromWKB(wkb[,srid])\nGeometryCollectionFromWKB(wkb[,srid])\n\nDescription\n-----------\n\nConstructs a GEOMETRYCOLLECTION value using its WKB representation and SRID.\n\nST_GeomCollFromWKB(), ST_GeometryCollectionFromWKB(), GeomCollFromWKB() and\nGeometryCollectionFromWKB() are synonyms.\n\nExamples\n--------\n\nSET @g = ST_AsBinary(ST_GeomFromText(\'GEOMETRYCOLLECTION(\n POLYGON((5 5,10 5,10 10,5 5)),POINT(10 10))\'));\n\nSELECT ST_AsText(ST_GeomCollFromWKB(@g));\n+----------------------------------------------------------------+\n| ST_AsText(ST_GeomCollFromWKB(@g))                              |\n+----------------------------------------------------------------+\n| GEOMETRYCOLLECTION(POLYGON((5 5,10 5,10 10,5 5)),POINT(10 10)) |\n+----------------------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/st_geomcollfromwkb/','','https://mariadb.com/kb/en/st_geomcollfromwkb/'),(565,'ST_BOUNDARY',36,'MariaDB starting with 10.1.2\n----------------------------\nThe ST_BOUNDARY function was introduced in MariaDB 10.1.2\n\nSyntax\n------\n\nST_BOUNDARY(g)\nBOUNDARY(g)\n\nDescription\n-----------\n\nReturns a geometry that is the closure of the combinatorial boundary of the\ngeometry value g.\n\nBOUNDARY() is a synonym.\n\nExamples\n--------\n\nSELECT ST_AsText(ST_Boundary(ST_GeomFromText(\'LINESTRING(3 3,0 0, -3 3)\')));\n+----------------------------------------------------------------------+\n| ST_AsText(ST_Boundary(ST_GeomFromText(\'LINESTRING(3 3,0 0, -3 3)\'))) |\n+----------------------------------------------------------------------+\n| MULTIPOINT(3 3,-3 3)                                                 |\n+----------------------------------------------------------------------+\n\nSELECT ST_AsText(ST_Boundary(ST_GeomFromText(\'POLYGON((3 3,0 0, -3 3, 3\n3))\')));\n+--------------------------------------------------------------------------+\n| ST_AsText(ST_Boundary(ST_GeomFromText(\'POLYGON((3 3,0 0, -3 3, 3 3))\'))) |\n+--------------------------------------------------------------------------+\n| LINESTRING(3 3,0 0,-3 3,3 3)                                             |\n+--------------------------------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/st_boundary/','','https://mariadb.com/kb/en/st_boundary/'),(566,'ST_DIMENSION',36,'Syntax\n------\n\nST_Dimension(g)\nDimension(g)\n\nDescription\n-----------\n\nReturns the inherent dimension of the geometry value g. The result can be\n\n+------------------------------------+----------------------------------------+\n| Dimension                          | Definition                             |\n+------------------------------------+----------------------------------------+\n| -1                                 | empty geometry                         |\n+------------------------------------+----------------------------------------+\n| 0                                  | geometry with no length or area        |\n+------------------------------------+----------------------------------------+\n| 1                                  | geometry with no area but nonzero      |\n|                                    | length                                 |\n+------------------------------------+----------------------------------------+\n| 2                                  | geometry with nonzero area             |\n+------------------------------------+----------------------------------------+\n\nST_Dimension() and Dimension() are synonyms.\n\nExamples\n--------\n\nSELECT Dimension(GeomFromText(\'LineString(1 1,2 2)\'));\n+------------------------------------------------+\n| Dimension(GeomFromText(\'LineString(1 1,2 2)\')) |\n+------------------------------------------------+\n|                                              1 |\n+------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/st_dimension/','','https://mariadb.com/kb/en/st_dimension/'),(567,'ST_ENVELOPE',36,'Syntax\n------\n\nST_ENVELOPE(g)\nENVELOPE(g)\n\nDescription\n-----------\n\nReturns the Minimum Bounding Rectangle (MBR) for the geometry value g. The\nresult is returned as a Polygon value.\n\nThe polygon is defined by the corner points of the bounding box:\n\nPOLYGON((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))\n\nST_ENVELOPE() and ENVELOPE() are synonyms.\n\nExamples\n--------\n\nSELECT AsText(ST_ENVELOPE(GeomFromText(\'LineString(1 1,4 4)\')));\n+----------------------------------------------------------+\n| AsText(ST_ENVELOPE(GeomFromText(\'LineString(1 1,4 4)\'))) |\n+----------------------------------------------------------+\n| POLYGON((1 1,4 1,4 4,1 4,1 1))                           |\n+----------------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/st_envelope/','','https://mariadb.com/kb/en/st_envelope/'),(570,'ST_ISCLOSED',36,'Syntax\n------\n\nST_IsClosed(g)\nIsClosed(g)\n\nDescription\n-----------\n\nReturns 1 if a given LINESTRING\'s start and end points are the same, or 0 if\nthey are not the same. Before MariaDB 10.1.5, returns NULL if not given a\nLINESTRING. After MariaDB 10.1.5, returns -1.\n\nST_IsClosed() and IsClosed() are synonyms.\n\nExamples\n--------\n\nSET @ls = \'LineString(0 0, 0 4, 4 4, 0 0)\';\nSELECT ST_ISCLOSED(GEOMFROMTEXT(@ls));\n+--------------------------------+\n| ST_ISCLOSED(GEOMFROMTEXT(@ls)) |\n+--------------------------------+\n|                              1 |\n+--------------------------------+\n\nSET @ls = \'LineString(0 0, 0 4, 4 4, 0 1)\';\nSELECT ST_ISCLOSED(GEOMFROMTEXT(@ls));\n+--------------------------------+\n| ST_ISCLOSED(GEOMFROMTEXT(@ls)) |\n+--------------------------------+\n|                              0 |\n+--------------------------------+\n\n\n\nURL: mariadb.com/kb/en/st_isclosed/','','https://mariadb.com/kb/en/st_isclosed/'),(579,'BINARY Operator',37,'This page describes the BINARY operator. For details about the data\ntype, see Binary Data Type.\n\nSyntax\n------\n\nBINARY\n\nDescription\n-----------\n\nThe BINARY operator casts the string following it to a binary string. This is\nan easy way to force a column comparison to be done byte by byte rather than\ncharacter by character. This causes the comparison to be case sensitive even\nif the column isn\'t defined as BINARY or BLOB.\n\nBINARY also causes trailing spaces to be significant.\n\nExamples\n--------\n\nSELECT \'a\' = \'A\';\n+-----------+\n| \'a\' = \'A\' |\n+-----------+\n|         1 |\n+-----------+\n\nSELECT BINARY \'a\' = \'A\';\n+------------------+\n| BINARY \'a\' = \'A\' |\n+------------------+\n|                0 |\n+------------------+\n\nSELECT \'a\' = \'a \';\n+------------+\n| \'a\' = \'a \' |\n+------------+\n|          1 |\n+------------+\n\nSELECT BINARY \'a\' = \'a \';\n+-------------------+\n| BINARY \'a\' = \'a \' |\n+-------------------+\n|                 0 |\n+-------------------+\n\n\n\nURL: mariadb.com/kb/en/binary-operator/','','https://mariadb.com/kb/en/binary-operator/'),(582,'CHAR Function',37,'Syntax\n------\n\nCHAR(N,... [USING charset_name])\n\nDescription\n-----------\n\nCHAR() interprets each argument as an INT and returns a string consisting of\nthe characters given by the code values of those integers. NULL values are\nskipped. By default, CHAR() returns a binary string. To produce a string in a\ngiven character set, use the optional USING clause:\n\nSELECT CHARSET(CHAR(0x65)), CHARSET(CHAR(0x65 USING utf8));\n+---------------------+--------------------------------+\n| CHARSET(CHAR(0x65)) | CHARSET(CHAR(0x65 USING utf8)) |\n+---------------------+--------------------------------+\n| binary              | utf8                           |\n+---------------------+--------------------------------+\n\nIf USING is given and the result string is illegal for the given character\nset, a warning is issued. Also, if strict SQL mode is enabled, the result from\nCHAR() becomes NULL.\n\nExamples\n--------\n\nSELECT CHAR(77,97,114,\'105\',97,\'68\',66);\n+----------------------------------+\n| CHAR(77,97,114,\'105\',97,\'68\',66) |\n+----------------------------------+\n| MariaDB                          |\n+----------------------------------+\n\nSELECT CHAR(77,77.3,\'77.3\');\n+----------------------+\n| CHAR(77,77.3,\'77.3\') |\n+----------------------+\n| MMM                  |\n+----------------------+\n1 row in set, 1 warning (0.00 sec)\n\nWarning (Code 1292): Truncated incorrect INTEGER value: \'77.3\'\n\n\n\nURL: mariadb.com/kb/en/char-function/','','https://mariadb.com/kb/en/char-function/'),(581,'CAST',37,'Syntax\n------\n\nCAST(expr AS type)\n\nDescription\n-----------\n\nThe CAST() function takes a value of one type and produces a value of another\ntype, similar to the CONVERT() function.\n\nThe type can be one of the following values:\n\n* BINARY\n* CHAR\n* DATE\n* DATETIME \n* DECIMAL[(M[,D])]\n* DOUBLE\n* FLOAT (from MariaDB 10.4.5)\n* INTEGER \nShort for SIGNED INTEGER\n\n* SIGNED [INTEGER]\n* UNSIGNED [INTEGER]\n* TIME\n* VARCHAR (in Oracle mode, from MariaDB 10.3)\n\nThe main difference between CAST and CONVERT() is that CONVERT(expr,type) is\nODBC syntax while CAST(expr as type) and CONVERT(... USING ...) are SQL92\nsyntax.\n\nIn MariaDB 10.4 and later, you can use the CAST() function with the INTERVAL\nkeyword.\n\nUntil MariaDB 5.5.31, X\'HHHH\', the standard SQL syntax for binary string\nliterals, erroneously worked in the same way as 0xHHHH. In 5.5.31 it was\nintentionally changed to behave as a string in all contexts (and never as a\nnumber).\n\nThis introduced an incompatibility with previous versions of MariaDB, and all\nversions of MySQL (see the example below).\n\nExamples\n--------\n\nSimple casts:\n\nSELECT CAST(\"abc\" AS BINARY);\nSELECT CAST(\"1\" AS UNSIGNED INTEGER);\nSELECT CAST(123 AS CHAR CHARACTER SET utf8)\n\nNote that when one casts to CHAR without specifying the character set, the\ncollation_connection character set collation will be used. When used with CHAR\nCHARACTER SET, the default collation for that character set will be used.\n\nSELECT COLLATION(CAST(123 AS CHAR));\n+------------------------------+\n| COLLATION(CAST(123 AS CHAR)) |\n+------------------------------+\n| latin1_swedish_ci            |\n+------------------------------+\n\nSELECT COLLATION(CAST(123 AS CHAR CHARACTER SET utf8));\n+-------------------------------------------------+\n| COLLATION(CAST(123 AS CHAR CHARACTER SET utf8)) |\n+-------------------------------------------------+\n| utf8_general_ci                                 |\n+-------------------------------------------------+\n\nIf you also want to change the collation, you have to use the COLLATE operator:\n\nSELECT COLLATION(CAST(123 AS CHAR CHARACTER SET utf8) \n COLLATE utf8_unicode_ci);\n+-------------------------------------------------------------------------+\n| COLLATION(CAST(123 AS CHAR CHARACTER SET utf8) COLLATE utf8_unicode_ci) |\n+-------------------------------------------------------------------------+\n| utf8_unicode_ci                                                         |\n+-------------------------------------------------------------------------+\n\nUsing CAST() to order an ENUM field as a CHAR rather than the internal\nnumerical value:\n\nCREATE TABLE enum_list (enum_field enum(\'c\',\'a\',\'b\'));\n\nINSERT INTO enum_list (enum_field) \nVALUES(\'c\'),(\'a\'),(\'c\'),(\'b\');\n\nSELECT * FROM enum_list \nORDER BY enum_field;\n+------------+\n| enum_field |\n+------------+\n| c          |\n| c          |\n| a          |\n| b          |\n+------------+\n\nSELECT * FROM enum_list \nORDER BY CAST(enum_field AS CHAR);\n+------------+\n| enum_field |\n+------------+\n| a          |\n| b          |\n| c          |\n| c          |\n+------------+\n\nFrom MariaDB 5.5.31, the following will trigger warnings, since x\'aa\' and\n\'X\'aa\' no longer behave as a number. Previously, and in all versions of MySQL,\nno warnings are triggered since they did erroneously behave as a number:\n\nSELECT CAST(0xAA AS UNSIGNED), CAST(x\'aa\' AS UNSIGNED), CAST(X\'aa\' AS\nUNSIGNED);\n+------------------------+-------------------------+-------------------------+\n| CAST(0xAA AS UNSIGNED) | CAST(x\'aa\' AS UNSIGNED) | CAST(X\'aa\' AS UNSIGNED) |\n+------------------------+-------------------------+-------------------------+\n|                    170 |                       0 |                       0 |\n+------------------------+-------------------------+-------------------------+\n1 row in set, 2 warnings (0.00 sec)\n\nWarning (Code 1292): Truncated incorrect INTEGER value: \'xAA\'\nWarning (Code 1292): Truncated incorrect INTEGER value: \'xAA\'\n\nCasting to intervals:\n\nSELECT CAST(2019-01-04 INTERVAL AS DAY_SECOND(2)) AS \"Cast\";\n\n+-------------+\n| Cast        |\n+-------------+\n| 00:20:17.00 |\n+-------------+\n\n\n\nURL: mariadb.com/kb/en/cast/','','https://mariadb.com/kb/en/cast/'),(584,'CHAR_LENGTH',37,'Syntax\n------\n\nCHAR_LENGTH(str)\nCHARACTER_LENGTH(str)\n\nDescription\n-----------\n\nReturns the length of the given string argument, measured in characters. A\nmulti-byte character counts as a single character. This means that for a\nstring containing five two-byte characters, LENGTH() (or OCTET_LENGTH() in\nOracle mode) returns 10, whereas CHAR_LENGTH() returns 5. If the argument is\nNULL, it returns NULL.\n\nIf the argument is not a string value, it is converted into a string.\n\nIt is synonymous with the CHARACTER_LENGTH() function.\n\nExamples\n--------\n\nSELECT CHAR_LENGTH(\'MariaDB\');\n+------------------------+\n| CHAR_LENGTH(\'MariaDB\') |\n+------------------------+\n|                      7 |\n+------------------------+\n\nWhen Oracle mode from MariaDB 10.3 is not set:\n\nSELECT CHAR_LENGTH(\'π\'), LENGTH(\'π\'), LENGTHB(\'π\'), OCTET_LENGTH(\'π\');\n+-------------------+--------------+---------------+--------------------+\n| CHAR_LENGTH(\'π\')  | LENGTH(\'π\')  | LENGTHB(\'π\')  | OCTET_LENGTH(\'π\')  |\n+-------------------+--------------+---------------+--------------------+\n|                 1 |            2 |             2 |                  2 |\n+-------------------+--------------+---------------+--------------------+\n\nIn Oracle mode from MariaDB 10.3:\n\nSELECT CHAR_LENGTH(\'π\'), LENGTH(\'π\'), LENGTHB(\'π\'), OCTET_LENGTH(\'π\');\n+-------------------+--------------+---------------+--------------------+\n| CHAR_LENGTH(\'π\')  | LENGTH(\'π\')  | LENGTHB(\'π\')  | OCTET_LENGTH(\'π\')  |\n+-------------------+--------------+---------------+--------------------+\n|                 1 |            1 |             2 |                  2 |\n+-------------------+--------------+---------------+--------------------+\n\n\n\nURL: mariadb.com/kb/en/char_length/','','https://mariadb.com/kb/en/char_length/'),(585,'CHR',37,'MariaDB starting with 10.3.1\n----------------------------\nThe CHR() function was introduced in MariaDB 10.3.1 to provide Oracle\ncompatibility\n\nSyntax\n------\n\nCHR(N)\n\nDescription\n-----------\n\nCHR() interprets each argument N as an integer and returns a VARCHAR(1) string\nconsisting of the character given by the code values of the integer. The\ncharacter set and collation of the string are set according to the values of\nthe character_set_database and collation_database system variables.\n\nCHR() is similar to the CHAR() function, but only accepts a single argument.\n\nCHR() is available in all sql_modes.\n\nExamples\n--------\n\nSELECT CHR(67);\n+---------+\n| CHR(67) |\n+---------+\n| C       |\n+---------+\n\nSELECT CHR(\'67\');\n+-----------+\n| CHR(\'67\') |\n+-----------+\n| C         |\n+-----------+\n\nSELECT CHR(\'C\');\n+----------+\n| CHR(\'C\') |\n+----------+\n|          |\n+----------+\n1 row in set, 1 warning (0.000 sec)\n\nSHOW WARNINGS;\n+---------+------+----------------------------------------+\n| Level   | Code | Message                                |\n+---------+------+----------------------------------------+\n| Warning | 1292 | Truncated incorrect INTEGER value: \'C\' |\n+---------+------+----------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/chr/','','https://mariadb.com/kb/en/chr/'),(586,'CONCAT',37,'Syntax\n------\n\nCONCAT(str1,str2,...)\n\nDescription\n-----------\n\nReturns the string that results from concatenating the arguments. May have one\nor more arguments. If all arguments are non-binary strings, the result is a\nnon-binary string. If the arguments include any binary strings, the result is\na binary string. A numeric argument is converted to its equivalent binary\nstring form; if you want to avoid that, you can use an explicit type cast, as\nin this example:\n\nSELECT CONCAT(CAST(int_col AS CHAR), char_col);\n\nCONCAT() returns NULL if any argument is NULL.\n\nA NULL parameter hides all information contained in other parameters from the\nresult. Sometimes this is not desirable; to avoid this, you can:\n\n* Use the CONCAT_WS() function with an empty separator, because that function\nis NULL-safe.\n* Use IFNULL() to turn NULLs into empty strings.\n\nOracle Mode\n-----------\n\nMariaDB starting with 10.3\n--------------------------\nIn Oracle mode from MariaDB 10.3, CONCAT ignores NULL.\n\nExamples\n--------\n\nSELECT CONCAT(\'Ma\', \'ria\', \'DB\');\n+---------------------------+\n| CONCAT(\'Ma\', \'ria\', \'DB\') |\n+---------------------------+\n| MariaDB                   |\n+---------------------------+\n\nSELECT CONCAT(\'Ma\', \'ria\', NULL, \'DB\');\n+---------------------------------+\n| CONCAT(\'Ma\', \'ria\', NULL, \'DB\') |\n+---------------------------------+\n| NULL                            |\n+---------------------------------+\n\nSELECT CONCAT(42.0);\n+--------------+\n| CONCAT(42.0) |\n+--------------+\n| 42.0         |\n+--------------+\n\nUsing IFNULL() to handle NULLs:\n\nSELECT CONCAT(\'The value of @v is: \', IFNULL(@v, \'\'));\n+------------------------------------------------+\n| CONCAT(\'The value of @v is: \', IFNULL(@v, \'\')) |\n+------------------------------------------------+\n| The value of @v is:                            |\n+------------------------------------------------+\n\nIn Oracle mode, from MariaDB 10.3:\n\nSELECT CONCAT(\'Ma\', \'ria\', NULL, \'DB\');\n+---------------------------------+\n| CONCAT(\'Ma\', \'ria\', NULL, \'DB\') |\n+---------------------------------+\n| MariaDB                         |\n+---------------------------------+\n\n\n\nURL: mariadb.com/kb/en/concat/','','https://mariadb.com/kb/en/concat/'),(587,'CONCAT_WS',37,'Syntax\n------\n\nCONCAT_WS(separator,str1,str2,...)\n\nDescription\n-----------\n\nCONCAT_WS() stands for Concatenate With Separator and is a special form of\nCONCAT(). The first argument is the separator for the rest of the arguments.\nThe separator is added between the strings to be concatenated. The separator\ncan be a string, as can the rest of the arguments.\n\nIf the separator is NULL, the result is NULL; all other NULL values are\nskipped. This makes CONCAT_WS() suitable when you want to concatenate some\nvalues and avoid losing all information if one of them is NULL.\n\nExamples\n--------\n\nSELECT CONCAT_WS(\',\',\'First name\',\'Second name\',\'Last Name\');\n+-------------------------------------------------------+\n| CONCAT_WS(\',\',\'First name\',\'Second name\',\'Last Name\') |\n+-------------------------------------------------------+\n| First name,Second name,Last Name                      |\n+-------------------------------------------------------+\n\nSELECT CONCAT_WS(\'-\',\'Floor\',NULL,\'Room\');\n+------------------------------------+\n| CONCAT_WS(\'-\',\'Floor\',NULL,\'Room\') |\n+------------------------------------+\n| Floor-Room                         |\n+------------------------------------+\n\nIn some cases, remember to include a space in the separator string:\n\nSET @a = \'gnu\', @b = \'penguin\', @c = \'sea lion\';\nQuery OK, 0 rows affected (0.00 sec)\n\nSELECT CONCAT_WS(\', \', @a, @b, @c);\n+-----------------------------+\n| CONCAT_WS(\', \', @a, @b, @c) |\n+-----------------------------+\n| gnu, penguin, sea lion      |\n+-----------------------------+\n\nUsing CONCAT_WS() to handle NULLs:\n\nSET @a = \'a\', @b = NULL, @c = \'c\';\n\nSELECT CONCAT_WS(\'\', @a, @b, @c);\n+---------------------------+\n| CONCAT_WS(\'\', @a, @b, @c) |\n+---------------------------+\n| ac                        |\n+---------------------------+\n\n\n\nURL: mariadb.com/kb/en/concat_ws/','','https://mariadb.com/kb/en/concat_ws/'),(588,'CONVERT',37,'Syntax\n------\n\nCONVERT(expr,type), CONVERT(expr USING transcoding_name)\n\nDescription\n-----------\n\nThe	CONVERT() and CAST() functions take a value of one type and produce a\nvalue of another type.\n\nThe type can be one of the following values:\n\n* BINARY\n* CHAR\n* DATE\n* DATETIME \n* DECIMAL[(M[,D])]\n* DOUBLE\n* FLOAT (from MariaDB 10.4.5)\n* INTEGER \nShort for SIGNED INTEGER\n\n* SIGNED [INTEGER]\n* UNSIGNED [INTEGER]\n* TIME\n* VARCHAR (in Oracle mode, from MariaDB 10.3)\n\nNote that in MariaDB, INT and INTEGER are the same thing.\n\nBINARY produces a string with the BINARY data type. If the optional length is\ngiven, BINARY(N) causes the cast to use no more than N bytes of the argument.\nValues shorter than the given number in bytes are padded with 0x00 bytes to\nmake them equal the length value.\n\nCHAR(N) causes the cast to use no more than the number of characters given in\nthe argument.\n\nThe main difference between the CAST() and CONVERT() is that\nCONVERT(expr,type) is ODBC syntax while CAST(expr as type) and CONVERT(...\nUSING ...) are SQL92 syntax.\n\nCONVERT() with USING is used to convert data between different character sets.\nIn MariaDB, transcoding names are the same as the corresponding character set\nnames. For example, this statement converts the string \'abc\' in the default\ncharacter set to the corresponding string in the utf8 character set:\n\nSELECT CONVERT(\'abc\' USING utf8);\n\nExamples\n--------\n\nSELECT enum_col FROM tbl_name \nORDER BY CAST(enum_col AS CHAR);\n\nConverting a BINARY to string to permit the LOWER function to work:\n\nSET @x = \'AardVark\';\n\nSET @x = BINARY \'AardVark\';\n\nSELECT LOWER(@x), LOWER(CONVERT (@x USING latin1));\n+-----------+----------------------------------+\n| LOWER(@x) | LOWER(CONVERT (@x USING latin1)) |\n+-----------+----------------------------------+\n| AardVark  | aardvark                         |\n+-----------+----------------------------------+\n\n\n\nURL: mariadb.com/kb/en/convert/','','https://mariadb.com/kb/en/convert/'),(589,'ELT',37,'Syntax\n------\n\nELT(N, str1[, str2, str3,...])\n\nDescription\n-----------\n\nTakes a numeric argument and a series of string arguments. Returns the string\nthat corresponds to the given numeric position. For instance, it returns str1\nif N is 1, str2 if N is 2, and so on. If the numeric argument is a FLOAT,\nMariaDB rounds it to the nearest INTEGER. If the numeric argument is less than\n1, greater than the total number of arguments, or not a number, ELT() returns\nNULL. It must have at least two arguments.\n\nIt is complementary to the FIELD() function.\n\nExamples\n--------\n\nSELECT ELT(1, \'ej\', \'Heja\', \'hej\', \'foo\');\n+------------------------------------+\n| ELT(1, \'ej\', \'Heja\', \'hej\', \'foo\') |\n+------------------------------------+\n| ej                                 |\n+------------------------------------+\n\nSELECT ELT(4, \'ej\', \'Heja\', \'hej\', \'foo\');\n+------------------------------------+\n| ELT(4, \'ej\', \'Heja\', \'hej\', \'foo\') |\n+------------------------------------+\n| foo                                |\n+------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/elt/','','https://mariadb.com/kb/en/elt/'),(590,'EXPORT_SET',37,'Syntax\n------\n\nEXPORT_SET(bits, on, off[, separator[, number_of_bits]])\n\nDescription\n-----------\n\nTakes a minimum of three arguments. Returns a string where each bit in the\ngiven bits argument is returned, with the string values given for on and off.\n\nBits are examined from right to left, (from low-order to high-order bits).\nStrings are added to the result from left to right, separated by a separator\nstring (defaults as \',\'). You can optionally limit the number of bits the\nEXPORT_SET() function examines using the number_of_bits option.\n\nIf any of the arguments are set as NULL, the function returns NULL.\n\nExamples\n--------\n\nSELECT EXPORT_SET(5,\'Y\',\'N\',\',\',4);\n+-----------------------------+\n| EXPORT_SET(5,\'Y\',\'N\',\',\',4) |\n+-----------------------------+\n| Y,N,Y,N                     |\n+-----------------------------+\n\nSELECT EXPORT_SET(6,\'1\',\'0\',\',\',10);\n+------------------------------+\n| EXPORT_SET(6,\'1\',\'0\',\',\',10) |\n+------------------------------+\n| 0,1,1,0,0,0,0,0,0,0          |\n+------------------------------+\n\n\n\nURL: mariadb.com/kb/en/export_set/','','https://mariadb.com/kb/en/export_set/'),(592,'FIELD',37,'Syntax\n------\n\nFIELD(pattern, str1[,str2,...])\n\nDescription\n-----------\n\nReturns the index position of the string or number matching the given pattern.\nReturns 0 in the event that none of the arguments match the pattern. Raises an\nError 1582 if not given at least two arguments.\n\nWhen all arguments given to the FIELD() function are strings, they are treated\nas case-insensitive. When all the arguments are numbers, they are treated as\nnumbers. Otherwise, they are treated as doubles.\n\nIf the given pattern occurs more than once, the	FIELD() function only returns\nthe index of the first instance. If the given pattern is NULL, the function\nreturns 0, as a NULL pattern always fails to match.\n\nThis function is complementary to the ELT() function.\n\nExamples\n--------\n\nSELECT FIELD(\'ej\', \'Hej\', \'ej\', \'Heja\', \'hej\', \'foo\') \n AS \'Field Results\';\n+---------------+\n| Field Results | \n+---------------+\n|             2 |\n+---------------+\n\nSELECT FIELD(\'fo\', \'Hej\', \'ej\', \'Heja\', \'hej\', \'foo\')\n AS \'Field Results\';\n+---------------+\n| Field Results | \n+---------------+\n|             0 |\n+---------------+\n\nSELECT FIELD(1, 2, 3, 4, 5, 1) AS \'Field Results\';\n+---------------+\n| Field Results |\n+---------------+\n|             5 |\n+---------------+\n\nSELECT FIELD(NULL, 2, 3) AS \'Field Results\';\n+---------------+\n| Field Results |\n+---------------+\n|             0 |\n+---------------+\n\nSELECT FIELD(\'fail\') AS \'Field Results\';\nError 1582 (42000): Incorrect parameter count in call\nto native function \'field\'\n\n\n\nURL: mariadb.com/kb/en/field/','','https://mariadb.com/kb/en/field/'),(591,'EXTRACTVALUE',37,'Syntax\n------\n\nEXTRACTVALUE(xml_frag, xpath_expr)\n\nDescription\n-----------\n\nThe EXTRACTVALUE() function takes two string arguments: a fragment of XML\nmarkup and an XPath expression, (also known as a locator). It returns the text\n(That is, CDDATA), of the first text node which is a child of the element or\nelements matching the XPath expression.\n\nIn cases where a valid XPath expression does not match any text nodes in a\nvalid XML fragment, (including the implicit /text() expression), the\nEXTRACTVALUE() function returns an empty string.\n\nInvalid Arguments\n-----------------\n\nWhen either the XML fragment or the XPath expression is NULL, the\nEXTRACTVALUE() function returns NULL. When the XML fragment is invalid, it\nraises a warning Code 1525:\n\nWarning (Code 1525): Incorrect XML value: \'parse error at line 1 pos 11:\nunexpected END-OF-INPUT\'\n\nWhen the XPath value is invalid, it generates an Error 1105:\n\nERROR 1105 (HY000): XPATH syntax error: \')\'\n\nExplicit text() Expressions\n---------------------------\n\nThis function is the equivalent of performing a match using the XPath\nexpression after appending /text(). In other words:\n\nSELECT\n EXTRACTVALUE(\'<cases><case>example</case></cases>\', \'/cases/case\')\n  AS \'Base Example\',\n EXTRACTVALUE(\'<cases><case>example</case></cases>\', \'/cases/case/text()\')\n  AS \'text() Example\';\n+--------------+----------------+\n| Base Example | text() Example |\n+--------------+----------------+\n| example      | example        |\n+--------------+----------------+\n\nCount Matches\n-------------\n\nWhen EXTRACTVALUE() returns multiple matches, it returns the content of the\nfirst child text node of each matching element, in the matched order, as a\nsingle, space-delimited string.\n\nBy design, the EXTRACTVALUE() function makes no distinction between a match on\nan empty element and no match at all. If you need to determine whether no\nmatching element was found in the XML fragment or if an element was found that\ncontained no child text nodes, use the XPath count() function.\n\nFor instance, when looking for a value that exists, but contains no child text\nnodes, you would get a count of the number of matching instances:\n\nSELECT\n EXTRACTVALUE(\'<cases><case/></cases>\', \'/cases/case\')\n  AS \'Empty Example\',\n EXTRACTVALUE(\'<cases><case/></cases>\', \'count(/cases/case)\')\n  AS \'count() Example\';\n+---------------+-----------------+\n| Empty Example | count() Example |\n+---------------+-----------------+\n|               |               1 |\n+---------------+-----------------+\n\nAlternatively, when looking for a value that doesn\'t exist, count() returns 0.\n\nSELECT\n EXTRACTVALUE(\'<cases><case/></cases>\', \'/cases/person\')\n  AS \'No Match Example\',\n EXTRACTVALUE(\'<cases><case/></cases>\', \'count(/cases/person)\')\n  AS \'count() Example\';\n+------------------+-----------------+\n| No Match Example | count() Example |\n+------------------+-----------------+\n|                  |                0|\n+------------------+-----------------+\n\nMatches\n-------\n\nImportant: The EXTRACTVALUE() function only returns CDDATA. It does not return\ntags that the element might contain or the text that these child elements\ncontain.\n\nSELECT\n\nEXTRACTVALUE(\'<cases><case>Person<email>x@example.com</email></case></cases>\',\n\'/cases\')\n AS Case;\n+--------+\n| Case   |\n+--------+\n| Person |\n+--------+\n\nNote, in the above example, while the XPath expression matches to the parent\n<case> instance, it does not return the contained <email> tag or its content.\n\nExamples\n--------\n\nSELECT\n  ExtractValue(\'<a>ccc<b>ddd</b></a>\', \'/a\')            AS val1,\n  ExtractValue(\'<a>ccc<b>ddd</b></a>\', \'/a/b\')          AS val2,\n  ExtractValue(\'<a>ccc<b>ddd</b></a>\', \'//b\')           AS val3,\n  ExtractValue(\'<a>ccc<b>ddd</b></a>\', \'/b\')            AS val4,\n  ExtractValue(\'<a>ccc<b>ddd</b><b>eee</b></a>\', \'//b\') AS val5;\n+------+------+------+------+---------+\n| val1 | val2 | val3 | val4 | val5    |\n+------+------+------+------+---------+\n| ccc  | ddd  | ddd  |      | ddd eee |\n+------+------+------+------+---------+\n\n\n\nURL: mariadb.com/kb/en/extractvalue/','','https://mariadb.com/kb/en/extractvalue/'),(593,'FIND_IN_SET',37,'Syntax\n------\n\nFIND_IN_SET(pattern, strlist)\n\nDescription\n-----------\n\nReturns the index position where the given pattern occurs in a string list.\nThe first argument is the pattern you want to search for. The second argument\nis a string containing comma-separated variables. If the second argument is of\nthe SET data-type, the function is optimized to use bit arithmetic.\n\nIf the pattern does not occur in the string list or if the string list is an\nempty string, the function returns 0. If either argument is NULL, the function\nreturns NULL. The function does not return the correct result if the pattern\ncontains a comma (\",\") character.\n\nExamples\n--------\n\nSELECT FIND_IN_SET(\'b\',\'a,b,c,d\') AS \"Found Results\";\n+---------------+\n| Found Results |\n+---------------+\n|             2 |\n+---------------+\n\n\n\nURL: mariadb.com/kb/en/find_in_set/','','https://mariadb.com/kb/en/find_in_set/'),(594,'FORMAT',37,'Syntax\n------\n\nFORMAT(num, decimal_position[, locale])\n\nDescription\n-----------\n\nFormats the given number for display as a string, adding separators to\nappropriate position and rounding the results to the given decimal position.\nFor instance, it would format 15233.345 to 15,233.35.\n\nIf the given decimal position is 0, it rounds to return no decimal point or\nfractional part. You can optionally specify a locale value to format numbers\nto the pattern appropriate for the given region.\n\nExamples\n--------\n\nSELECT FORMAT(1234567890.09876543210, 4) AS \'Format\';\n+--------------------+\n| Format             |\n+--------------------+\n| 1,234,567,890.0988 |\n+--------------------+\n\nSELECT FORMAT(1234567.89, 4) AS \'Format\';\n+----------------+\n| Format         |\n+----------------+\n| 1,234,567.8900 |\n+----------------+\n\nSELECT FORMAT(1234567.89, 0) AS \'Format\';\n+-----------+\n| Format    |\n+-----------+\n| 1,234,568 |\n+-----------+\n\nSELECT FORMAT(123456789,2,\'rm_CH\') AS \'Format\';\n+----------------+\n| Format         |\n+----------------+\n| 123\'456\'789,00 |\n+----------------+\n\n\n\nURL: mariadb.com/kb/en/format/','','https://mariadb.com/kb/en/format/'),(595,'FROM_BASE64',37,'Syntax\n------\n\nFROM_BASE64(str)\n\nDescription\n-----------\n\nDecodes the given base-64 encode string, returning the result as a binary\nstring. Returns NULL if the given string is NULL or if it\'s invalid.\n\nIt is the reverse of the TO_BASE64 function.\n\nThere are numerous methods to base-64 encode a string. MariaDB uses the\nfollowing:\n\n* It encodes alphabet value 64 as \'+\'.\n* It encodes alphabet value 63 as \'/\'.\n* It codes output in groups of four printable characters.  Each three byte of\ndata encoded uses four characters.  If the final group is incomplete, it pads\nthe difference with the \'=\' character.\n* It divides long output, adding a new line very 76 characters.\n* In decoding, it recognizes and ignores newlines, carriage returns, tabs and\nspace whitespace characters.\n\nSELECT TO_BASE64(\'Maria\') AS \'Input\';\n+-----------+\n| Input     |\n+-----------+\n| TWFyaWE=  |\n+-----------+\n\nSELECT FROM_BASE64(\'TWFyaWE=\') AS \'Output\';\n+--------+\n| Output |\n+--------+\n| Maria  |\n+--------+\n\n\n\nURL: mariadb.com/kb/en/from_base64/','','https://mariadb.com/kb/en/from_base64/'),(596,'HEX',37,'Syntax\n------\n\nHEX(N_or_S)\n\nDescription\n-----------\n\nIf N_or_S is a number, returns a string representation of the hexadecimal\nvalue of N, where N is a longlong (BIGINT) number. This is equivalent to\nCONV(N,10,16).\n\nIf N_or_S is a string, returns a hexadecimal string representation of N_or_S\nwhere each byte of each character in N_or_S is converted to two hexadecimal\ndigits. If N_or_S is NULL, returns NULL. The inverse of this operation is\nperformed by the UNHEX() function.\n\nMariaDB starting with 10.5.0\n----------------------------\nHEX() with an INET6 argument returns a hexadecimal representation of the\nunderlying 16-byte binary string.\n\nExamples\n--------\n\nSELECT HEX(255);\n+----------+\n| HEX(255) |\n+----------+\n| FF       |\n+----------+\n\nSELECT 0x4D617269614442;\n+------------------+\n| 0x4D617269614442 |\n+------------------+\n| MariaDB          |\n+------------------+\n\nSELECT HEX(\'MariaDB\');\n+----------------+\n| HEX(\'MariaDB\') |\n+----------------+\n| 4D617269614442 |\n+----------------+\n\nFrom MariaDB 10.5.0:\n\nSELECT HEX(CAST(\'2001:db8::ff00:42:8329\' AS INET6));\n+----------------------------------------------+\n| HEX(CAST(\'2001:db8::ff00:42:8329\' AS INET6)) |\n+----------------------------------------------+\n| 20010DB8000000000000FF0000428329             |\n+----------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/hex/','','https://mariadb.com/kb/en/hex/'),(597,'INSERT Function',37,'Syntax\n------\n\nINSERT(str,pos,len,newstr)\n\nDescription\n-----------\n\nReturns the string str, with the substring beginning at position pos and len\ncharacters long replaced by the string newstr. Returns the original string if\npos is not within the length of the string. Replaces the rest of the string\nfrom position pos if len is not within the length of the rest of the string.\nReturns NULL if any argument is NULL.\n\nExamples\n--------\n\nSELECT INSERT(\'Quadratic\', 3, 4, \'What\');\n+-----------------------------------+\n| INSERT(\'Quadratic\', 3, 4, \'What\') |\n+-----------------------------------+\n| QuWhattic                         |\n+-----------------------------------+\n\nSELECT INSERT(\'Quadratic\', -1, 4, \'What\');\n+------------------------------------+\n| INSERT(\'Quadratic\', -1, 4, \'What\') |\n+------------------------------------+\n| Quadratic                          |\n+------------------------------------+\n\nSELECT INSERT(\'Quadratic\', 3, 100, \'What\');\n+-------------------------------------+\n| INSERT(\'Quadratic\', 3, 100, \'What\') |\n+-------------------------------------+\n| QuWhat                              |\n+-------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/insert-function/','','https://mariadb.com/kb/en/insert-function/'),(601,'LENGTH',37,'Syntax\n------\n\nLENGTH(str)\n\nDescription\n-----------\n\nReturns the length of the string str.\n\nIn the default mode, when Oracle mode from MariaDB 10.3 is not set, the length\nis measured in bytes. In this case, a multi-byte character counts as multiple\nbytes. This means that for a string containing five two-byte characters,\nLENGTH() returns 10, whereas CHAR_LENGTH() returns 5.\n\nWhen running Oracle mode from MariaDB 10.3, the length is measured in\ncharacters, and LENGTH is a synonym for CHAR_LENGTH().\n\nIf str is not a string value, it is converted into a string. If str is NULL,\nthe function returns NULL.\n\nExamples\n--------\n\nSELECT LENGTH(\'MariaDB\');\n+-------------------+\n| LENGTH(\'MariaDB\') |\n+-------------------+\n|                 7 |\n+-------------------+\n\nWhen Oracle mode from MariaDB 10.3 is not set:\n\nSELECT CHAR_LENGTH(\'π\'), LENGTH(\'π\'), LENGTHB(\'π\'), OCTET_LENGTH(\'π\');\n+-------------------+--------------+---------------+--------------------+\n| CHAR_LENGTH(\'π\')  | LENGTH(\'π\')  | LENGTHB(\'π\')  | OCTET_LENGTH(\'π\')  |\n+-------------------+--------------+---------------+--------------------+\n|                 1 |            2 |             2 |                  2 |\n+-------------------+--------------+---------------+--------------------+\n\nIn Oracle mode from MariaDB 10.3:\n\nSELECT CHAR_LENGTH(\'π\'), LENGTH(\'π\'), LENGTHB(\'π\'), OCTET_LENGTH(\'π\');\n+-------------------+--------------+---------------+--------------------+\n| CHAR_LENGTH(\'π\')  | LENGTH(\'π\')  | LENGTHB(\'π\')  | OCTET_LENGTH(\'π\')  |\n+-------------------+--------------+---------------+--------------------+\n|                 1 |            1 |             2 |                  2 |\n+-------------------+--------------+---------------+--------------------+\n\n\n\nURL: mariadb.com/kb/en/length/','','https://mariadb.com/kb/en/length/'),(602,'LENGTHB',37,'MariaDB starting with 10.3.1\n----------------------------\nIntroduced in MariaDB 10.3.1 as part of the Oracle compatibility enhancements.\n\nSyntax\n------\n\nLENGTHB(str)\n\nDescription\n-----------\n\nLENGTHB() returns the length of the given string, in bytes. When Oracle mode\nis not set, this is a synonym for LENGTH.\n\nA multi-byte character counts as multiple bytes. This means that for a string\ncontaining five two-byte characters, LENGTHB() returns 10, whereas\nCHAR_LENGTH() returns 5.\n\nIf str is not a string value, it is converted into a string. If str is NULL,\nthe function returns NULL.\n\nExamples\n--------\n\nWhen Oracle mode from MariaDB 10.3 is not set:\n\nSELECT CHAR_LENGTH(\'π\'), LENGTH(\'π\'), LENGTHB(\'π\'), OCTET_LENGTH(\'π\');\n+-------------------+--------------+---------------+--------------------+\n| CHAR_LENGTH(\'π\')  | LENGTH(\'π\')  | LENGTHB(\'π\')  | OCTET_LENGTH(\'π\')  |\n+-------------------+--------------+---------------+--------------------+\n|                 1 |            2 |             2 |                  2 |\n+-------------------+--------------+---------------+--------------------+\n\nIn Oracle mode from MariaDB 10.3:\n\nSELECT CHAR_LENGTH(\'π\'), LENGTH(\'π\'), LENGTHB(\'π\'), OCTET_LENGTH(\'π\');\n+-------------------+--------------+---------------+--------------------+\n| CHAR_LENGTH(\'π\')  | LENGTH(\'π\')  | LENGTHB(\'π\')  | OCTET_LENGTH(\'π\')  |\n+-------------------+--------------+---------------+--------------------+\n|                 1 |            1 |             2 |                  2 |\n+-------------------+--------------+---------------+--------------------+\n\n\n\nURL: mariadb.com/kb/en/lengthb/','','https://mariadb.com/kb/en/lengthb/'),(604,'LOAD_FILE',37,'Syntax\n------\n\nLOAD_FILE(file_name)\n\nDescription\n-----------\n\nReads the file and returns the file contents as a string. To use this\nfunction, the file must be located on the server host, you must specify the\nfull path name to the file, and you must have the FILE privilege. The file\nmust be readable by all and it must be less than the size, in bytes, of the\nmax_allowed_packet system variable. If the secure_file_priv system variable is\nset to a non-empty directory name, the file to be loaded must be located in\nthat directory.\n\nIf the file does not exist or cannot be read because one of the preceding\nconditions is not satisfied, the function returns NULL.\n\nSince MariaDB 5.1, the character_set_filesystem system variable has controlled\ninterpretation of file names that are given as literal strings.\n\nStatements using the LOAD_FILE() function are not safe for statement based\nreplication. This is because the slave will execute the LOAD_FILE() command\nitself. If the file doesn\'t exist on the slave, the function will return NULL.\n\nExamples\n--------\n\nUPDATE t SET blob_col=LOAD_FILE(\'/tmp/picture\') WHERE id=1;\n\n\n\nURL: mariadb.com/kb/en/load_file/','','https://mariadb.com/kb/en/load_file/'),(605,'LOCATE',37,'Syntax\n------\n\nLOCATE(substr,str), LOCATE(substr,str,pos)\n\nDescription\n-----------\n\nThe first syntax returns the position of the first occurrence of substring\nsubstr in string str. The second syntax returns the position of the first\noccurrence of substring substr in string str, starting at position pos.\nReturns 0 if substr is not in str.\n\nLOCATE() performs a case-insensitive search.\n\nIf any argument is NULL, returns NULL.\n\nINSTR() is the same as the two-argument form of LOCATE(), except that the\norder of the arguments is reversed.\n\nExamples\n--------\n\nSELECT LOCATE(\'bar\', \'foobarbar\');\n+----------------------------+\n| LOCATE(\'bar\', \'foobarbar\') |\n+----------------------------+\n|                          4 |\n+----------------------------+\n\nSELECT LOCATE(\'My\', \'Maria\');\n+-----------------------+\n| LOCATE(\'My\', \'Maria\') |\n+-----------------------+\n|                     0 |\n+-----------------------+\n\nSELECT LOCATE(\'bar\', \'foobarbar\', 5);\n+-------------------------------+\n| LOCATE(\'bar\', \'foobarbar\', 5) |\n+-------------------------------+\n|                             7 |\n+-------------------------------+\n\n\n\nURL: mariadb.com/kb/en/locate/','','https://mariadb.com/kb/en/locate/'),(603,'LIKE',37,'Syntax\n------\n\nexpr LIKE pat [ESCAPE \'escape_char\']\nexpr NOT LIKE pat [ESCAPE \'escape_char\']\n\nDescription\n-----------\n\nTests whether expr matches the pattern pat. Returns either 1 (TRUE) or 0\n(FALSE). Both expr and pat may be any valid expression and are evaluated to\nstrings. Patterns may use the following wildcard characters:\n\n* % matches any number of characters, including zero.\n* _ matches any single character.\n\nUse NOT LIKE to test if a string does not match a pattern. This is equivalent\nto using the NOT operator on the entire LIKE expression.\n\nIf either the expression or the pattern is NULL, the result is NULL.\n\nLIKE performs case-insensitive substring matches if the collation for the\nexpression and pattern is case-insensitive. For case-sensitive matches,\ndeclare either argument to use a binary collation using COLLATE, or coerce\neither of them to a BINARY string using CAST. Use SHOW COLLATION to get a list\nof available collations. Collations ending in _bin are case-sensitive.\n\nNumeric arguments are coerced to binary strings.\n\nThe _ wildcard matches a single character, not byte. It will only match a\nmulti-byte character if it is valid in the expression\'s character set. For\nexample, _ will match _utf8\"€\", but it will not match _latin1\"€\" because the\nEuro sign is not a valid latin1 character. If necessary, use CONVERT to use\nthe expression in a different character set.\n\nIf you need to match the characters _ or %, you must escape them. By default,\nyou can prefix the wildcard characters the backslash character  to escape\nthem. The backslash is used both to encode special characters like newlines\nwhen a string is parsed as well as to escape wildcards in a pattern after\nparsing. Thus, to match an actual backslash, you sometimes need to\ndouble-escape it as \"\\\\\\\\\".\n\nTo avoid difficulties with the backslash character, you can change the\nwildcard escape character using ESCAPE in a LIKE expression. The argument to\nESCAPE must be a single-character string.\n\nExamples\n--------\n\nSelect the days that begin with \"T\":\n\nCREATE TABLE t1 (d VARCHAR(16));\nINSERT INTO t1 VALUES \n (\"Monday\"), (\"Tuesday\"), (\"Wednesday\"),\n (\"Thursday\"), (\"Friday\"), (\"Saturday\"), (\"Sunday\");\nSELECT * FROM t1 WHERE d LIKE \"T%\";\n\nSELECT * FROM t1 WHERE d LIKE \"T%\";\n+----------+\n| d        |\n+----------+\n| Tuesday  |\n| Thursday |\n+----------+\n\nSelect the days that contain the substring \"es\":\n\nSELECT * FROM t1 WHERE d LIKE \"%es%\";\n\nSELECT * FROM t1 WHERE d LIKE \"%es%\";\n+-----------+\n| d         |\n+-----------+\n| Tuesday   |\n| Wednesday |\n+-----------+\n\nSelect the six-character day names:\n\nSELECT * FROM t1 WHERE d like \"___day\";\n\nSELECT * FROM t1 WHERE d like \"___day\";\n+---------+\n| d       |\n+---------+\n| Monday  |\n| Friday  |\n| Sunday  |\n+---------+\n\nWith the default collations, LIKE is case-insensitive:\n\nSELECT * FROM t1 where d like \"t%\";\n\nSELECT * FROM t1 where d like \"t%\";\n+----------+\n| d        |\n+----------+\n| Tuesday  |\n| Thursday |\n+----------+\n\nUse COLLATE to specify a binary collation, forcing case-sensitive matches:\n\nSELECT * FROM t1 WHERE d like \"t%\" COLLATE latin1_bin;\n\nSELECT * FROM t1 WHERE d like \"t%\" COLLATE latin1_bin;\nEmpty set (0.00 sec)\n\nYou can include functions and operators in the expression to match. Select\ndates based on their day name:\n\nCREATE TABLE t2 (d DATETIME);\nINSERT INTO t2 VALUES\n  (\"2007-01-30 21:31:07\"),\n  (\"1983-10-15 06:42:51\"),\n  (\"2011-04-21 12:34:56\"),\n  (\"2011-10-30 06:31:41\"),\n  (\"2011-01-30 14:03:25\"),\n  (\"2004-10-07 11:19:34\");\nSELECT * FROM t2 WHERE DAYNAME(d) LIKE \"T%\";\n\nSELECT * FROM t2 WHERE DAYNAME(d) LIKE \"T%\";\n+------------------+\n| d                |\n+------------------+\n| 2007-01-30 21:31 |\n| 2011-04-21 12:34 |\n| 2004-10-07 11:19 |\n+------------------+\n3 rows in set, 7 warnings (0.00 sec)\n\nOptimizing LIKE\n---------------\n\n* MariaDB can use indexes for LIKE on string columns in the case where the\nLIKE doesn\'t start with % or _.\n* Starting from MariaDB 10.0, one can set  the\noptimizer_use_condition_selectivity variable to 5. If this is done, then the\noptimizer will read optimizer_selectivity_sampling_limit rows to calculate the\nselectivity of the LIKE expression before starting to calculate the query\nplan. This can help speed up some LIKE queries by providing the optimizer with\nmore information about your data.\n\n\n\nURL: mariadb.com/kb/en/like/','','https://mariadb.com/kb/en/like/'),(606,'LOWER',37,'Syntax\n------\n\nLOWER(str)\n\nDescription\n-----------\n\nReturns the string str with all characters changed to lowercase according to\nthe current character set mapping. The default is latin1 (cp1252 West\nEuropean).\n\nExamples\n--------\n\nSELECT LOWER(\'QUADRATICALLY\');\n+------------------------+\n| LOWER(\'QUADRATICALLY\') |\n+------------------------+\n| quadratically          |\n+------------------------+\n\nLOWER() (and UPPER()) are ineffective when applied to binary strings (BINARY,\nVARBINARY, BLOB). To perform lettercase conversion, CONVERT the string to a\nnon-binary string:\n\nSET @str = BINARY \'North Carolina\';\n\nSELECT LOWER(@str), LOWER(CONVERT(@str USING latin1));\n+----------------+-----------------------------------+\n| LOWER(@str)    | LOWER(CONVERT(@str USING latin1)) |\n+----------------+-----------------------------------+\n| North Carolina | north carolina                    |\n+----------------+-----------------------------------+\n\n\n\nURL: mariadb.com/kb/en/lower/','','https://mariadb.com/kb/en/lower/'),(607,'LPAD',37,'Syntax\n------\n\nLPAD(str, len [,padstr])\n\nDescription\n-----------\n\nReturns the string str, left-padded with the string padstr to a length of len\ncharacters. If str is longer than len, the return value is shortened to len\ncharacters. If padstr is omitted, the LPAD function pads spaces.\n\nPrior to MariaDB 10.3.1, the padstr parameter was mandatory.\n\nReturns NULL if given a NULL argument. If the result is empty (zero length),\nreturns either an empty string or, from MariaDB 10.3.6 with SQL_MODE=Oracle,\nNULL.\n\nThe Oracle mode version of the function can be accessed outside of Oracle mode\nby using LPAD_ORACLE as the function name.\n\nExamples\n--------\n\nSELECT LPAD(\'hello\',10,\'.\');\n+----------------------+\n| LPAD(\'hello\',10,\'.\') |\n+----------------------+\n| .....hello           |\n+----------------------+\n\nSELECT LPAD(\'hello\',2,\'.\');\n+---------------------+\n| LPAD(\'hello\',2,\'.\') |\n+---------------------+\n| he                  |\n+---------------------+\n\nFrom MariaDB 10.3.1, with the pad string defaulting to space.\n\nSELECT LPAD(\'hello\',10);\n+------------------+\n| LPAD(\'hello\',10) |\n+------------------+\n|      hello       |\n+------------------+\n\nOracle mode version from MariaDB 10.3.6:\n\nSELECT LPAD(\'\',0),LPAD_ORACLE(\'\',0);\n+------------+-------------------+\n| LPAD(\'\',0) | LPAD_ORACLE(\'\',0) |\n+------------+-------------------+\n|            | NULL              |\n+------------+-------------------+\n\n\n\nURL: mariadb.com/kb/en/lpad/','','https://mariadb.com/kb/en/lpad/'),(608,'LTRIM',37,'Syntax\n------\n\nLTRIM(str)\n\nDescription\n-----------\n\nReturns the string str with leading space characters removed.\n\nReturns NULL if given a NULL argument. If the result is empty, returns either\nan empty string, or, from MariaDB 10.3.6 with SQL_MODE=Oracle, NULL.\n\nThe Oracle mode version of the function can be accessed outside of Oracle mode\nby using LTRIM_ORACLE as the function name.\n\nExamples\n--------\n\nSELECT QUOTE(LTRIM(\'   MariaDB   \'));\n+-------------------------------+\n| QUOTE(LTRIM(\'   MariaDB   \')) |\n+-------------------------------+\n| \'MariaDB   \'                  |\n+-------------------------------+\n\nOracle mode version from MariaDB 10.3.6:\n\nSELECT LTRIM(\'\'),LTRIM_ORACLE(\'\');\n+-----------+------------------+\n| LTRIM(\'\') | LTRIM_ORACLE(\'\') |\n+-----------+------------------+\n|           | NULL             |\n+-----------+------------------+\n\n\n\nURL: mariadb.com/kb/en/ltrim/','','https://mariadb.com/kb/en/ltrim/'),(609,'MAKE_SET',37,'Syntax\n------\n\nMAKE_SET(bits,str1,str2,...)\n\nDescription\n-----------\n\nReturns a set value (a string containing substrings separated by \",\"\ncharacters) consisting of the strings that have the corresponding bit in bits\nset. str1 corresponds to bit 0, str2 to bit 1, and so on. NULL values in str1,\nstr2, ... are not appended to the result.\n\nExamples\n--------\n\nSELECT MAKE_SET(1,\'a\',\'b\',\'c\');\n+-------------------------+\n| MAKE_SET(1,\'a\',\'b\',\'c\') |\n+-------------------------+\n| a                       |\n+-------------------------+\n\nSELECT MAKE_SET(1 | 4,\'hello\',\'nice\',\'world\');\n+----------------------------------------+\n| MAKE_SET(1 | 4,\'hello\',\'nice\',\'world\') |\n+----------------------------------------+\n| hello,world                            |\n+----------------------------------------+\n\nSELECT MAKE_SET(1 | 4,\'hello\',\'nice\',NULL,\'world\');\n+---------------------------------------------+\n| MAKE_SET(1 | 4,\'hello\',\'nice\',NULL,\'world\') |\n+---------------------------------------------+\n| hello                                       |\n+---------------------------------------------+\n\nSELECT QUOTE(MAKE_SET(0,\'a\',\'b\',\'c\'));\n+--------------------------------+\n| QUOTE(MAKE_SET(0,\'a\',\'b\',\'c\')) |\n+--------------------------------+\n| \'\'                             |\n+--------------------------------+\n\n\n\nURL: mariadb.com/kb/en/make_set/','','https://mariadb.com/kb/en/make_set/'),(610,'MATCH AGAINST',37,'Syntax\n------\n\nMATCH (col1,col2,...) AGAINST (expr [search_modifier])\n\nDescription\n-----------\n\nA special construct used to perform a fulltext search on a fulltext index.\n\nSee Fulltext Index Overview for a full description, and Full-text Indexes for\nmore articles on the topic.\n\nExamples\n--------\n\nCREATE TABLE ft_myisam(copy TEXT,FULLTEXT(copy)) ENGINE=MyISAM;\n\nINSERT INTO ft_myisam(copy) VALUES (\'Once upon a time\'), (\'There was a wicked\nwitch\'), \n (\'Who ate everybody up\');\n\nSELECT * FROM ft_myisam WHERE MATCH(copy) AGAINST(\'wicked\');\n+--------------------------+\n| copy                     |\n+--------------------------+\n| There was a wicked witch |\n+--------------------------+\n\nSELECT id, body, MATCH (title,body) AGAINST\n  (\'Security implications of running MySQL as root\'\n  IN NATURAL LANGUAGE MODE) AS score\n  FROM articles WHERE MATCH (title,body) AGAINST\n  (\'Security implications of running MySQL as root\'\n  IN NATURAL LANGUAGE MODE);\n+----+-------------------------------------+-----------------+\n| id | body                                | score           |\n+----+-------------------------------------+-----------------+\n|  4 | 1. Never run mysqld as root. 2. ... | 1.5219271183014 |\n|  6 | When configured properly, MySQL ... | 1.3114095926285 |\n+----+-------------------------------------+-----------------+\n\n\n\nURL: mariadb.com/kb/en/match-against/','','https://mariadb.com/kb/en/match-against/'),(614,'OCTET_LENGTH',37,'Syntax\n------\n\nOCTET_LENGTH(str)\n\nDescription\n-----------\n\nOCTET_LENGTH() returns the length of the given string, in octets (bytes). This\nis a synonym for LENGTHB(), and, when Oracle mode from MariaDB 10.3 is not\nset, a synonym for LENGTH().\n\nA multi-byte character counts as multiple bytes. This means that for a string\ncontaining five two-byte characters, OCTET_LENGTH() returns 10, whereas\nCHAR_LENGTH() returns 5.\n\nIf str is not a string value, it is converted into a string. If str is NULL,\nthe function returns NULL.\n\nExamples\n--------\n\nWhen Oracle mode from MariaDB 10.3 is not set:\n\nSELECT CHAR_LENGTH(\'π\'), LENGTH(\'π\'), LENGTHB(\'π\'), OCTET_LENGTH(\'π\');\n+-------------------+--------------+---------------+--------------------+\n| CHAR_LENGTH(\'π\')  | LENGTH(\'π\')  | LENGTHB(\'π\')  | OCTET_LENGTH(\'π\')  |\n+-------------------+--------------+---------------+--------------------+\n|                 1 |            2 |             2 |                  2 |\n+-------------------+--------------+---------------+--------------------+\n\nIn Oracle mode from MariaDB 10.3:\n\nSELECT CHAR_LENGTH(\'π\'), LENGTH(\'π\'), LENGTHB(\'π\'), OCTET_LENGTH(\'π\');\n+-------------------+--------------+---------------+--------------------+\n| CHAR_LENGTH(\'π\')  | LENGTH(\'π\')  | LENGTHB(\'π\')  | OCTET_LENGTH(\'π\')  |\n+-------------------+--------------+---------------+--------------------+\n|                 1 |            1 |             2 |                  2 |\n+-------------------+--------------+---------------+--------------------+\n\n\n\nURL: mariadb.com/kb/en/octet_length/','','https://mariadb.com/kb/en/octet_length/'),(618,'REGEXP_INSTR',37,'Syntax\n------\n\nREGEXP_INSTR(subject, pattern)\n\nReturns the position of the first occurrence of the regular expression pattern\nin the string subject, or 0 if pattern was not found.\n\nThe positions start with 1 and are measured in characters (i.e. not in bytes),\nwhich is important for multi-byte character sets. You can cast a multi-byte\ncharacter set to BINARY to get offsets in bytes.\n\nThe function follows the case sensitivity rules of the effective collation.\nMatching is performed case insensitively for case insensitive collations, and\ncase sensitively for case sensitive collations and for binary data.\n\nThe collation case sensitivity can be overwritten using the (?i) and (?-i)\nPCRE flags.\n\nMariaDB uses the PCRE regular expression library for enhanced regular\nexpression performance, and REGEXP_INSTR was introduced as part of this\nenhancement.\n\nExamples\n--------\n\nSELECT REGEXP_INSTR(\'abc\',\'b\');\n-> 2\n\nSELECT REGEXP_INSTR(\'abc\',\'x\');\n-> 0\n\nSELECT REGEXP_INSTR(\'BJÖRN\',\'N\');\n-> 5\n\nCasting a multi-byte character set as BINARY to get offsets in bytes:\n\nSELECT REGEXP_INSTR(BINARY \'BJÖRN\',\'N\') AS cast_utf8_to_binary;\n-> 6\n\nCase sensitivity:\n\nSELECT REGEXP_INSTR(\'ABC\',\'b\');\n-> 2\n\nSELECT REGEXP_INSTR(\'ABC\' COLLATE utf8_bin,\'b\');\n-> 0\n\nSELECT REGEXP_INSTR(BINARY\'ABC\',\'b\');\n-> 0\n\nSELECT REGEXP_INSTR(\'ABC\',\'(?-i)b\');\n-> 0\n\nSELECT REGEXP_INSTR(\'ABC\' COLLATE utf8_bin,\'(?i)b\');\n-> 2\n\n\n\nURL: mariadb.com/kb/en/regexp_instr/','','https://mariadb.com/kb/en/regexp_instr/'),(619,'REGEXP_REPLACE',37,'Syntax\n------\n\nREGEXP_REPLACE(subject, pattern, replace)\n\nDescription\n-----------\n\nREGEXP_REPLACE returns the string subject with all occurrences of the regular\nexpression pattern replaced by the string replace. If no occurrences are\nfound, then subject is returned as is.\n\nThe replace string can have backreferences to the subexpressions in the form\nN, where N is a number from 1 to 9.\n\nThe function follows the case sensitivity rules of the effective collation.\nMatching is performed case insensitively for case insensitive collations, and\ncase sensitively for case sensitive collations and for binary data.\n\nThe collation case sensitivity can be overwritten using the (?i) and (?-i)\nPCRE flags.\n\nMariaDB uses the PCRE regular expression library for enhanced regular\nexpression performance, and REGEXP_REPLACE was introduced as part of this\nenhancement.\n\nThe default_regex_flags variable addresses the remaining compatibilities\nbetween PCRE and the old regex library.\n\nExamples\n--------\n\nSELECT REGEXP_REPLACE(\'ab12cd\',\'[0-9]\',\'\') AS remove_digits;\n-> abcd\n\nSELECT\nREGEXP_REPLACE(\'<html><head><title>title</title><body>body</body></htm>\',\n\'<.+?>\',\' \')\nAS strip_html;\n-> title  body\n\nBackreferences to the subexpressions in the form N, where N is a number from\n1 to 9:\n\nSELECT REGEXP_REPLACE(\'James Bond\',\'^(.*) (.*)$\',\'\\\\2, \\\\1\') AS reorder_name;\n-> Bond, James\n\nCase insensitive and case sensitive matches:\n\nSELECT REGEXP_REPLACE(\'ABC\',\'b\',\'-\') AS case_insensitive;\n-> A-C\n\nSELECT REGEXP_REPLACE(\'ABC\' COLLATE utf8_bin,\'b\',\'-\') AS case_sensitive;\n-> ABC\n\nSELECT REGEXP_REPLACE(BINARY \'ABC\',\'b\',\'-\') AS binary_data;\n-> ABC\n\nOverwriting the collation case sensitivity using the (?i) and (?-i) PCRE flags.\n\nSELECT REGEXP_REPLACE(\'ABC\',\'(?-i)b\',\'-\') AS force_case_sensitive;\n-> ABC\n\nSELECT REGEXP_REPLACE(BINARY \'ABC\',\'(?i)b\',\'-\') AS force_case_insensitive;\n-> A-C\n\n\n\nURL: mariadb.com/kb/en/regexp_replace/','','https://mariadb.com/kb/en/regexp_replace/'),(620,'REGEXP_SUBSTR',37,'Syntax\n------\n\nREGEXP_SUBSTR(subject,pattern)\n\nDescription\n-----------\n\nReturns the part of the string subject that matches the regular expression\npattern, or an empty string if pattern was not found.\n\nThe function follows the case sensitivity rules of the effective collation.\nMatching is performed case insensitively for case insensitive collations, and\ncase sensitively for case sensitive collations and for binary data.\n\nThe collation case sensitivity can be overwritten using the (?i) and (?-i)\nPCRE flags.\n\nMariaDB uses the PCRE regular expression library for enhanced regular\nexpression performance, and REGEXP_SUBSTR was introduced as part of this\nenhancement.\n\nThe default_regex_flags variable addresses the remaining compatibilities\nbetween PCRE and the old regex library.\n\nExamples\n--------\n\nSELECT REGEXP_SUBSTR(\'ab12cd\',\'[0-9]+\');\n-> 12\n\nSELECT REGEXP_SUBSTR(\n \'See https://mariadb.org/en/foundation/ for details\',\n \'https?://[^/]*\');\n-> https://mariadb.org\n\nSELECT REGEXP_SUBSTR(\'ABC\',\'b\');\n-> B\n\nSELECT REGEXP_SUBSTR(\'ABC\' COLLATE utf8_bin,\'b\');\n->\n\nSELECT REGEXP_SUBSTR(BINARY\'ABC\',\'b\');\n->\n\nSELECT REGEXP_SUBSTR(\'ABC\',\'(?i)b\');\n-> B\n\nSELECT REGEXP_SUBSTR(\'ABC\' COLLATE utf8_bin,\'(?+i)b\');\n-> B\n\n\n\nURL: mariadb.com/kb/en/regexp_substr/','','https://mariadb.com/kb/en/regexp_substr/'),(625,'RPAD',37,'Syntax\n------\n\nRPAD(str, len [, padstr])\n\nDescription\n-----------\n\nReturns the string str, right-padded with the string padstr to a length of len\ncharacters. If str is longer than len, the return value is shortened to len\ncharacters. If padstr is omitted, the RPAD function pads spaces.\n\nPrior to MariaDB 10.3.1, the padstr parameter was mandatory.\n\nReturns NULL if given a NULL argument. If the result is empty (a length of\nzero), returns either an empty string, or, from MariaDB 10.3.6 with\nSQL_MODE=Oracle, NULL.\n\nThe Oracle mode version of the function can be accessed outside of Oracle mode\nby using RPAD_ORACLE as the function name.\n\nExamples\n--------\n\nSELECT RPAD(\'hello\',10,\'.\');\n+----------------------+\n| RPAD(\'hello\',10,\'.\') |\n+----------------------+\n| hello.....           |\n+----------------------+\n\nSELECT RPAD(\'hello\',2,\'.\');\n+---------------------+\n| RPAD(\'hello\',2,\'.\') |\n+---------------------+\n| he                  |\n+---------------------+\n\nFrom MariaDB 10.3.1, with the pad string defaulting to space.\n\nSELECT RPAD(\'hello\',30);\n+--------------------------------+\n| RPAD(\'hello\',30)               |\n+--------------------------------+\n| hello                          |\n+--------------------------------+\n\nOracle mode version from MariaDB 10.3.6:\n\nSELECT RPAD(\'\',0),RPAD_ORACLE(\'\',0);\n+------------+-------------------+\n| RPAD(\'\',0) | RPAD_ORACLE(\'\',0) |\n+------------+-------------------+\n|            | NULL              |\n+------------+-------------------+\n\n\n\nURL: mariadb.com/kb/en/rpad/','','https://mariadb.com/kb/en/rpad/'),(626,'RTRIM',37,'Syntax\n------\n\nRTRIM(str)\n\nDescription\n-----------\n\nReturns the string str with trailing space characters removed.\n\nReturns NULL if given a NULL argument. If the result is empty, returns either\nan empty string, or, from MariaDB 10.3.6 with SQL_MODE=Oracle, NULL.\n\nThe Oracle mode version of the function can be accessed outside of Oracle mode\nby using RTRIM_ORACLE as the function name.\n\nExamples\n--------\n\nSELECT QUOTE(RTRIM(\'MariaDB    \'));\n+-----------------------------+\n| QUOTE(RTRIM(\'MariaDB    \')) |\n+-----------------------------+\n| \'MariaDB\'                   |\n+-----------------------------+\n\nOracle mode version from MariaDB 10.3.6:\n\nSELECT RTRIM(\'\'),RTRIM_ORACLE(\'\');\n+-----------+------------------+\n| RTRIM(\'\') | RTRIM_ORACLE(\'\') |\n+-----------+------------------+\n|           | NULL             |\n+-----------+------------------+\n\n\n\nURL: mariadb.com/kb/en/rtrim/','','https://mariadb.com/kb/en/rtrim/'),(627,'SOUNDEX',37,'Syntax\n------\n\nSOUNDEX(str)\n\nDescription\n-----------\n\nReturns a soundex string from str. Two strings that sound almost the same\nshould have identical soundex strings. A standard soundex string is four\ncharacters long, but the SOUNDEX() function returns an arbitrarily long\nstring. You can use SUBSTRING() on the result to get a standard soundex\nstring. All non-alphabetic characters in str are ignored. All international\nalphabetic characters outside the A-Z range are treated as vowels.\n\nImportant: When using SOUNDEX(), you should be aware of the following details:\n\n* This function, as currently implemented, is intended to work well with\n strings that are in the English language only. Strings in other languages may\n not produce reasonable results.\n\n* This function implements the original Soundex algorithm, not the more\npopular enhanced version (also described by D. Knuth). The difference is that\noriginal version discards vowels first and duplicates second, whereas the\nenhanced version discards duplicates first and vowels second.\n\nExamples\n--------\n\nSOUNDEX(\'Hello\');\n+------------------+\n| SOUNDEX(\'Hello\') |\n+------------------+\n| H400             |\n+------------------+\n\nSELECT SOUNDEX(\'MariaDB\');\n+--------------------+\n| SOUNDEX(\'MariaDB\') |\n+--------------------+\n| M631               |\n+--------------------+\n\nSELECT SOUNDEX(\'Knowledgebase\');\n+--------------------------+\n| SOUNDEX(\'Knowledgebase\') |\n+--------------------------+\n| K543212                  |\n+--------------------------+\n\nSELECT givenname, surname FROM users WHERE SOUNDEX(givenname) =\nSOUNDEX(\"robert\");\n+-----------+---------+\n| givenname | surname |\n+-----------+---------+\n| Roberto   | Castro  |\n+-----------+---------+\n\n\n\nURL: mariadb.com/kb/en/soundex/','','https://mariadb.com/kb/en/soundex/'),(630,'STRCMP',37,'Syntax\n------\n\nSTRCMP(expr1,expr2)\n\nDescription\n-----------\n\nSTRCMP() returns 0 if the strings are the same, -1 if the first argument is\nsmaller than the second according to the current sort order, and 1 if the\nstrings are otherwise not the same. Returns NULL is either argument is NULL.\n\nExamples\n--------\n\nSELECT STRCMP(\'text\', \'text2\');\n+-------------------------+\n| STRCMP(\'text\', \'text2\') |\n+-------------------------+\n|                      -1 |\n+-------------------------+\n\nSELECT STRCMP(\'text2\', \'text\');\n+-------------------------+\n| STRCMP(\'text2\', \'text\') |\n+-------------------------+\n|                       1 |\n+-------------------------+\n\nSELECT STRCMP(\'text\', \'text\');\n+------------------------+\n| STRCMP(\'text\', \'text\') |\n+------------------------+\n|                      0 |\n+------------------------+\n\n\n\nURL: mariadb.com/kb/en/strcmp/','','https://mariadb.com/kb/en/strcmp/'),(632,'SUBSTRING',37,'Syntax\n------\n\nSUBSTRING(str,pos), \nSUBSTRING(str FROM pos), \nSUBSTRING(str,pos,len),\nSUBSTRING(str FROM pos FOR len)\n\nSUBSTR(str,pos), \nSUBSTR(str FROM pos), \nSUBSTR(str,pos,len),\nSUBSTR(str FROM pos FOR len)\n\nDescription\n-----------\n\nThe forms without a len argument return a substring from string str starting\nat position pos.\n\nThe forms with a len argument return a substring len characters long from\nstring str, starting at position pos.\n\nThe forms that use FROM are standard SQL syntax.\n\nIt is also possible to use a negative value for pos. In this case, the\nbeginning of the substring is pos characters from the end of the string,\nrather than the beginning. A negative value may be used for pos in any of the\nforms of this function.\n\nBy default, the position of the first character in the string from which the\nsubstring is to be extracted is reckoned as 1. For Oracle-compatibility, from\nMariaDB 10.3.3, when sql_mode is set to \'oracle\', position zero is treated as\nposition 1 (although the first character is still reckoned as 1).\n\nIf any argument is NULL, returns NULL.\n\nExamples\n--------\n\nSELECT SUBSTRING(\'Knowledgebase\',5);\n+------------------------------+\n| SUBSTRING(\'Knowledgebase\',5) |\n+------------------------------+\n| ledgebase                    |\n+------------------------------+\n\nSELECT SUBSTRING(\'MariaDB\' FROM 6);\n+-----------------------------+\n| SUBSTRING(\'MariaDB\' FROM 6) |\n+-----------------------------+\n| DB                          |\n+-----------------------------+\n\nSELECT SUBSTRING(\'Knowledgebase\',3,7);\n+--------------------------------+\n| SUBSTRING(\'Knowledgebase\',3,7) |\n+--------------------------------+\n| owledge                        |\n+--------------------------------+\n\nSELECT SUBSTRING(\'Knowledgebase\', -4);\n+--------------------------------+\n| SUBSTRING(\'Knowledgebase\', -4) |\n+--------------------------------+\n| base                           |\n+--------------------------------+\n\nSELECT SUBSTRING(\'Knowledgebase\', -8, 4);\n+-----------------------------------+\n| SUBSTRING(\'Knowledgebase\', -8, 4) |\n+-----------------------------------+\n| edge                              |\n+-----------------------------------+\n\nSELECT SUBSTRING(\'Knowledgebase\' FROM -8 FOR 4);\n+------------------------------------------+\n| SUBSTRING(\'Knowledgebase\' FROM -8 FOR 4) |\n+------------------------------------------+\n| edge                                     |\n+------------------------------------------+\n\nOracle mode from MariaDB 10.3.3:\n\nSELECT SUBSTR(\'abc\',0,3);\n+-------------------+\n| SUBSTR(\'abc\',0,3) |\n+-------------------+\n|                   |\n+-------------------+\n\nSELECT SUBSTR(\'abc\',1,2);\n+-------------------+\n| SUBSTR(\'abc\',1,2) |\n+-------------------+\n| ab                |\n+-------------------+\n\nSET sql_mode=\'oracle\';\n\nSELECT SUBSTR(\'abc\',0,3);\n+-------------------+\n| SUBSTR(\'abc\',0,3) |\n+-------------------+\n| abc               |\n+-------------------+\n\nSELECT SUBSTR(\'abc\',1,2);\n+-------------------+\n| SUBSTR(\'abc\',1,2) |\n+-------------------+\n| ab                |\n+-------------------+\n\n\n\nURL: mariadb.com/kb/en/substring/','','https://mariadb.com/kb/en/substring/'),(633,'SUBSTRING_INDEX',37,'Syntax\n------\n\nSUBSTRING_INDEX(str,delim,count)\n\nDescription\n-----------\n\nReturns the substring from string str before count occurrences of the\ndelimiter delim. If count is positive, everything to the left of the final\ndelimiter (counting from the left) is returned. If count is negative,\neverything to the right of the final delimiter (counting from the right) is\nreturned. SUBSTRING_INDEX() performs a case-sensitive match when searching for\ndelim.\n\nIf any argument is NULL, returns NULL.\n\nFor example\n\nSUBSTRING_INDEX(\'www.mariadb.org\', \'.\', 2)\n\nmeans \"Return all of the characters up to the 2nd occurrence of .\"\n\nExamples\n--------\n\nSELECT SUBSTRING_INDEX(\'www.mariadb.org\', \'.\', 2);\n+--------------------------------------------+\n| SUBSTRING_INDEX(\'www.mariadb.org\', \'.\', 2) |\n+--------------------------------------------+\n| www.mariadb                                |\n+--------------------------------------------+\n\nSELECT SUBSTRING_INDEX(\'www.mariadb.org\', \'.\', -2);\n+---------------------------------------------+\n| SUBSTRING_INDEX(\'www.mariadb.org\', \'.\', -2) |\n+---------------------------------------------+\n| mariadb.org                                 |\n+---------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/substring_index/','','https://mariadb.com/kb/en/substring_index/'),(634,'TO_BASE64',37,'Syntax\n------\n\nTO_BASE64(str)\n\nDescription\n-----------\n\nConverts the string argument str to its base-64 encoded form, returning the\nresult as a character string in the connection character set and collation.\n\nThe argument str will be converted to string first if it is not a string. A\nNULL argument will return a NULL result.\n\nThe reverse function, FROM_BASE64(), decodes an encoded base-64 string.\n\nThere are a numerous different methods to base-64 encode a string. The\nfollowing are used by MariaDB and MySQL:\n\n* Alphabet value 64 is encoded as \'+\'.\n* Alphabet value 63 is encoded as \'/\'.\n* Encoding output is made up of groups of four printable characters, with each\nthree bytes of data encoded using four characters. If the final group is not\ncomplete, it is padded with \'=\' characters to make up a length of four.\n* To divide long output, a newline is added after every 76 characters.\n* Decoding will recognize and ignore newlines, carriage returns, tabs, and\nspaces.\n\nExamples\n--------\n\nSELECT TO_BASE64(\'Maria\');\n+--------------------+\n| TO_BASE64(\'Maria\') |\n+--------------------+\n| TWFyaWE=           |\n+--------------------+\n\n\n\nURL: mariadb.com/kb/en/to_base64/','','https://mariadb.com/kb/en/to_base64/'),(635,'TRIM',37,'Syntax\n------\n\nTRIM([{BOTH | LEADING | TRAILING} [remstr] FROM] str), TRIM([remstr FROM] str)\n\nFrom MariaDB 10.3.6\n\nTRIM_ORACLE([{BOTH | LEADING | TRAILING} [remstr] FROM] str), TRIM([remstr\nFROM] str)\n\nDescription\n-----------\n\nReturns the string str with all remstr prefixes or suffixes removed. If none\nof the specifiers BOTH, LEADING, or TRAILING is given, BOTH is assumed. remstr\nis optional and, if not specified, spaces are removed.\n\nReturns NULL if given a NULL argument. If the result is empty, returns either\nan empty string, or, from MariaDB 10.3.6 with SQL_MODE=Oracle, NULL.\nSQL_MODE=Oracle is not set by default.\n\nThe Oracle mode version of the function can be accessed in any mode by using\nTRIM_ORACLE as the function name.\n\nExamples\n--------\n\nSELECT TRIM(\'  bar   \')G\n*************************** 1. row ***************************\nTRIM(\'  bar   \'): bar\n\nSELECT TRIM(LEADING \'x\' FROM \'xxxbarxxx\')G\n*************************** 1. row ***************************\nTRIM(LEADING \'x\' FROM \'xxxbarxxx\'): barxxx\n\nSELECT TRIM(BOTH \'x\' FROM \'xxxbarxxx\')G\n*************************** 1. row ***************************\nTRIM(BOTH \'x\' FROM \'xxxbarxxx\'): bar\n\nSELECT TRIM(TRAILING \'xyz\' FROM \'barxxyz\')G\n*************************** 1. row ***************************\nTRIM(TRAILING \'xyz\' FROM \'barxxyz\'): barx\n\nFrom MariaDB 10.3.6, with SQL_MODE=Oracle not set:\n\nSELECT TRIM(\'\'),TRIM_ORACLE(\'\');\n+----------+-----------------+\n| TRIM(\'\') | TRIM_ORACLE(\'\') |\n+----------+-----------------+\n|          | NULL            |\n+----------+-----------------+\n\nFrom MariaDB 10.3.6, with SQL_MODE=Oracle set:\n\nSELECT TRIM(\'\'),TRIM_ORACLE(\'\');\n+----------+-----------------+\n| TRIM(\'\') | TRIM_ORACLE(\'\') |\n+----------+-----------------+\n| NULL     | NULL            |\n+----------+-----------------+\n\n\n\nURL: mariadb.com/kb/en/trim/','','https://mariadb.com/kb/en/trim/'),(637,'UNHEX',37,'Syntax\n------\n\nUNHEX(str)\n\nDescription\n-----------\n\nPerforms the inverse operation of HEX(str). That is, it interprets each pair\nof hexadecimal digits in the argument as a number and converts it to the\ncharacter represented by the number. The resulting characters are returned as\na binary string.\n\nIf str is NULL, UNHEX() returns NULL.\n\nExamples\n--------\n\nSELECT HEX(\'MariaDB\');\n+----------------+\n| HEX(\'MariaDB\') |\n+----------------+\n| 4D617269614442 |\n+----------------+\n\nSELECT UNHEX(\'4D617269614442\');\n+-------------------------+\n| UNHEX(\'4D617269614442\') |\n+-------------------------+\n| MariaDB                 |\n+-------------------------+\n\nSELECT 0x4D617269614442;\n+------------------+\n| 0x4D617269614442 |\n+------------------+\n| MariaDB          |\n+------------------+\n\nSELECT UNHEX(HEX(\'string\'));\n+----------------------+\n| UNHEX(HEX(\'string\')) |\n+----------------------+\n| string               |\n+----------------------+\n\nSELECT HEX(UNHEX(\'1267\'));\n+--------------------+\n| HEX(UNHEX(\'1267\')) |\n+--------------------+\n| 1267               |\n+--------------------+\n\n\n\nURL: mariadb.com/kb/en/unhex/','','https://mariadb.com/kb/en/unhex/'),(638,'UPDATEXML',37,'Syntax\n------\n\nUpdateXML(xml_target, xpath_expr, new_xml)\n\nDescription\n-----------\n\nThis function replaces a single portion of a given fragment of XML markup\nxml_target with a new XML fragment new_xml, and then returns the changed XML.\nThe portion of xml_target that is replaced matches an XPath expression\nxpath_expr supplied by the user. If no expression matching xpath_expr is\nfound, or if multiple matches are found, the function returns the original\nxml_target XML fragment. All three arguments should be strings.\n\nExamples\n--------\n\nSELECT\n  UpdateXML(\'<a><b>ccc</b><d></d></a>\', \'/a\', \'<e>fff</e>\') AS val1,\n  UpdateXML(\'<a><b>ccc</b><d></d></a>\', \'/b\', \'<e>fff</e>\') AS val2,\n  UpdateXML(\'<a><b>ccc</b><d></d></a>\', \'//b\', \'<e>fff</e>\') AS val3,\n  UpdateXML(\'<a><b>ccc</b><d></d></a>\', \'/a/d\', \'<e>fff</e>\') AS val4,\n  UpdateXML(\'<a><d></d><b>ccc</b><d></d></a>\', \'/a/d\', \'<e>fff</e>\') AS val5\n  G\n*************************** 1. row ***************************\nval1: <e>fff</e>\nval2: <a><b>ccc</b><d></d></a>\nval3: <a><e>fff</e><d></d></a>\nval4: <a><b>ccc</b><e>fff</e></a>\nval5: <a><d></d><b>ccc</b><d></d></a>\n1 row in set (0.00 sec)\n\n\n\nURL: mariadb.com/kb/en/updatexml/','','https://mariadb.com/kb/en/updatexml/'),(640,'WEIGHT_STRING',37,'Syntax\n------\n\nWEIGHT_STRING(str [AS {CHAR|BINARY}(N)] [LEVEL levels] [flags])\n levels: N [ASC|DESC|REVERSE] [, N [ASC|DESC|REVERSE]] ...\n\nDescription\n-----------\n\nReturns a binary string representing the string\'s sorting and comparison\nvalue. A string with a lower result means that for sorting purposes the string\nappears before a string with a higher result.\n\nWEIGHT_STRING() is particularly useful when adding new collations, for testing\npurposes.\n\nIf str is a non-binary string (CHAR, VARCHAR or TEXT), WEIGHT_STRING returns\nthe string\'s collation weight. If str is a binary string (BINARY, VARBINARY or\nBLOB), the return value is simply the input value, since the weight for each\nbyte in a binary string is the byte value.\n\nWEIGHT_STRING() returns NULL if given a NULL input.\n\nThe optional AS clause permits casting the input string to a binary or\nnon-binary string, as well as to a particular length.\n\nAS BINARY(N) measures the length in bytes rather than characters, and right\npads with 0x00 bytes to the desired length.\n\nAS CHAR(N) measures the length in characters, and right pads with spaces to\nthe desired length.\n\nN has a minimum value of 1, and if it is less than the length of the input\nstring, the string is truncated without warning.\n\nThe optional LEVEL clause specifies that the return value should contain\nweights for specific collation levels. The levels specifier can either be a\nsingle integer, a comma-separated list of integers, or a range of integers\nseparated by a dash (whitespace is ignored). Integers can range from 1 to a\nmaximum of 6, dependent on the collation, and need to be listed in ascending\norder.\n\nIf the LEVEL clause is no provided, a default of 1 to the maximum for the\ncollation is assumed.\n\nIf the LEVEL is specified without using a range, an optional modifier is\npermitted.\n\nASC, the default, returns the weights without any modification.\n\nDESC returns bitwise-inverted weights.\n\nREVERSE returns the weights in reverse order.\n\nExamples\n--------\n\nThe examples below use the HEX() function to represent non-printable results\nin hexadecimal format.\n\nSELECT HEX(WEIGHT_STRING(\'x\'));\n+-------------------------+\n| HEX(WEIGHT_STRING(\'x\')) |\n+-------------------------+\n| 0058                    |\n+-------------------------+\n\nSELECT HEX(WEIGHT_STRING(\'x\' AS BINARY(4)));\n+--------------------------------------+\n| HEX(WEIGHT_STRING(\'x\' AS BINARY(4))) |\n+--------------------------------------+\n| 78000000                             |\n+--------------------------------------+\n\nSELECT HEX(WEIGHT_STRING(\'x\' AS CHAR(4)));\n+------------------------------------+\n| HEX(WEIGHT_STRING(\'x\' AS CHAR(4))) |\n+------------------------------------+\n| 0058002000200020                   |\n+------------------------------------+\n\nSELECT HEX(WEIGHT_STRING(0xaa22ee LEVEL 1));\n+--------------------------------------+\n| HEX(WEIGHT_STRING(0xaa22ee LEVEL 1)) |\n+--------------------------------------+\n| AA22EE                               |\n+--------------------------------------+\n\nSELECT HEX(WEIGHT_STRING(0xaa22ee LEVEL 1 DESC));\n+-------------------------------------------+\n| HEX(WEIGHT_STRING(0xaa22ee LEVEL 1 DESC)) |\n+-------------------------------------------+\n| 55DD11                                    |\n+-------------------------------------------+\n\nSELECT HEX(WEIGHT_STRING(0xaa22ee LEVEL 1 REVERSE));\n+----------------------------------------------+\n| HEX(WEIGHT_STRING(0xaa22ee LEVEL 1 REVERSE)) |\n+----------------------------------------------+\n| EE22AA                                       |\n+----------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/weight_string/','','https://mariadb.com/kb/en/weight_string/'),(642,'ALTER EVENT',39,'Modifies one or more characteristics of an existing event.\n\nSyntax\n------\n\nALTER\n  [DEFINER = { user | CURRENT_USER }]\n  EVENT event_name\n  [ON SCHEDULE schedule]\n  [ON COMPLETION [NOT] PRESERVE]\n  [RENAME TO new_event_name]\n  [ENABLE | DISABLE | DISABLE ON SLAVE]\n  [COMMENT \'comment\']\n  [DO sql_statement]\n\nDescription\n-----------\n\nThe ALTER EVENT statement is used to change one or more of the characteristics\nof an existing event without the need to drop and recreate it. The syntax for\neach of the DEFINER, ON SCHEDULE, ON COMPLETION, COMMENT, ENABLE / DISABLE,\nand DO clauses is exactly the same as when used with CREATE EVENT.\n\nThis statement requires the EVENT privilege. When a user executes a successful\nALTER EVENT statement, that user becomes the definer for the affected event.\n\n(In MySQL 5.1.11 and earlier, an event could be altered only by its definer,\nor by a user having the SUPER privilege.)\n\nALTER EVENT works only with an existing event:\n\nALTER EVENT no_such_event ON SCHEDULE EVERY \'2:3\' DAY_HOUR;\nERROR 1539 (HY000): Unknown event \'no_such_event\'\n\nExamples\n--------\n\nALTER EVENT myevent \n ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 2 HOUR\n DO\n  UPDATE myschema.mytable SET mycol = mycol + 1;\n\n\n\nURL: mariadb.com/kb/en/alter-event/','','https://mariadb.com/kb/en/alter-event/'),(641,'ALTER DATABASE',39,'Modifies a database, changing its overall characteristics.\n\nSyntax\n------\n\nALTER {DATABASE | SCHEMA} [db_name]\n  alter_specification ...\nALTER {DATABASE | SCHEMA} db_name\n  UPGRADE DATA DIRECTORY NAME\n\nalter_specification:\n  [DEFAULT] CHARACTER SET [=] charset_name\n | [DEFAULT] COLLATE [=] collation_name\n | COMMENT [=] \'comment\'\n\nDescription\n-----------\n\nALTER DATABASE enables you to change the overall characteristics of a\ndatabase. These characteristics are stored in the db.opt file in the database\ndirectory. To use ALTER DATABASE, you need the ALTER privilege on the\ndatabase. ALTER SCHEMA is a synonym for ALTER DATABASE.\n\nThe CHARACTER SET clause changes the default database character set. The\nCOLLATE clause changes the default database collation. See Character Sets and\nCollations for more.\n\nYou can see what character sets and collations are available using,\nrespectively, the SHOW CHARACTER SET and SHOW COLLATION statements.\n\nChanging the default character set/collation of a database does not change the\ncharacter set/collation of any stored procedures or stored functions that were\npreviously created, and relied on the defaults. These need to be dropped and\nrecreated in order to apply the character set/collation changes.\n\nThe database name can be omitted from the first syntax, in which case the\nstatement applies to the default database.\n\nThe syntax that includes the UPGRADE DATA DIRECTORY NAME clause was added in\nMySQL 5.1.23. It updates the name of the directory associated with the\ndatabase to use the encoding implemented in MySQL 5.1 for mapping database\nnames to database directory names (see Identifier to File Name Mapping). This\nclause is for use under these conditions:\n\n* It is intended when upgrading MySQL to 5.1 or later from older versions.\n* It is intended to update a database directory name to the current encoding\nformat if the name contains special characters that need encoding.\n* The statement is used by mysqlcheck (as invoked by mysql_upgrade).\n\nFor example,if a database in MySQL 5.0 has a name of a-b-c, the name contains\ninstance of the `-\' character. In 5.0, the database directory is also named\na-b-c, which is not necessarily safe for all file systems. In MySQL 5.1 and\nup, the same database name is encoded as a@002db@002dc to produce a file\nsystem-neutral directory name.\n\nWhen a MySQL installation is upgraded to MySQL 5.1 or later from an older\nversion,the server displays a name such as a-b-c (which is in the old format)\nas #mysql50#a-b-c, and you must refer to the name using the #mysql50# prefix.\nUse UPGRADE DATA DIRECTORY NAME in this case to explicitly tell the server to\nre-encode the database directory name to the current encoding format:\n\nALTER DATABASE `#mysql50#a-b-c` UPGRADE DATA DIRECTORY NAME;\n\nAfter executing this statement, you can refer to the database as a-b-c without\nthe special #mysql50# prefix.\n\nCOMMENT\n-------\n\nMariaDB starting with 10.5.0\n----------------------------\nFrom MariaDB 10.5.0, it is possible to add a comment of a maximum of 1024\nbytes. If the comment length exceeds this length, a error/warning code 4144 is\nthrown. The database comment is also added to the db.opt file, as well as to\nthe information_schema.schemata table.\n\nExamples\n--------\n\nALTER DATABASE test CHARACTER SET=\'utf8\'  COLLATE=\'utf8_bin\';\n\nFrom MariaDB 10.5.0:\n\nALTER DATABASE p COMMENT=\'Presentations\';\n\n\n\nURL: mariadb.com/kb/en/alter-database/','','https://mariadb.com/kb/en/alter-database/'),(643,'ALTER FUNCTION',39,'Syntax\n------\n\nALTER FUNCTION func_name [characteristic ...]\n\ncharacteristic:\n  { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n | SQL SECURITY { DEFINER | INVOKER }\n | COMMENT \'string\'\n\nDescription\n-----------\n\nThis statement can be used to change the characteristics of a stored function.\nMore than one change may be specified in an ALTER FUNCTION statement. However,\nyou cannot change the parameters or body of a stored function using this\nstatement; to make such changes, you must drop and re-create the function\nusing DROP FUNCTION and CREATE FUNCTION.\n\nYou must have the ALTER ROUTINE privilege for the function. (That privilege is\ngranted automatically to the function creator.) If binary logging is enabled,\nthe ALTER FUNCTION statement might also require the SUPER privilege, as\ndescribed in Binary Logging of Stored Routines.\n\nExample\n-------\n\nALTER FUNCTION hello SQL SECURITY INVOKER;\n\n\n\nURL: mariadb.com/kb/en/alter-function/','','https://mariadb.com/kb/en/alter-function/'),(645,'ALTER PROCEDURE',39,'Syntax\n------\n\nALTER PROCEDURE proc_name [characteristic ...]\n\ncharacteristic:\n  { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n | SQL SECURITY { DEFINER | INVOKER }\n | COMMENT \'string\'\n\nDescription\n-----------\n\nThis statement can be used to change the characteristics of a stored\nprocedure. More than one change may be specified in an ALTER PROCEDURE\nstatement. However, you cannot change the parameters or body of a stored\nprocedure using this statement. To make such changes, you must drop and\nre-create the procedure using either CREATE OR REPLACE PROCEDURE (since\nMariaDB 10.1.3) or DROP PROCEDURE and CREATE PROCEDURE (MariaDB 10.1.2 and\nbefore).\n\nYou must have the ALTER ROUTINE privilege for the procedure. By default, that\nprivilege is granted automatically to the procedure creator. See Stored\nRoutine Privileges.\n\nExample\n-------\n\nALTER PROCEDURE simpleproc SQL SECURITY INVOKER;\n\n\n\nURL: mariadb.com/kb/en/alter-procedure/','','https://mariadb.com/kb/en/alter-procedure/'),(649,'ALTER VIEW',39,'Syntax\n------\n\nALTER\n  [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]\n  [DEFINER = { user | CURRENT_USER }]\n  [SQL SECURITY { DEFINER | INVOKER }]\n  VIEW view_name [(column_list)]\n  AS select_statement\n  [WITH [CASCADED | LOCAL] CHECK OPTION]\n\nDescription\n-----------\n\nThis statement changes the definition of a view, which must exist. The syntax\nis similar to that for CREATE VIEW and the effect is the same as for CREATE OR\nREPLACE VIEW if the view exists. This statement requires the CREATE VIEW and\nDROP privileges for the view, and some privilege for each column referred to\nin the SELECT statement. ALTER VIEW is allowed only to the definer or users\nwith the SUPER privilege.\n\nExample\n-------\n\nALTER VIEW v AS SELECT a, a*3 AS a2 FROM t;\n\n\n\nURL: mariadb.com/kb/en/alter-view/','','https://mariadb.com/kb/en/alter-view/'),(651,'CREATE DATABASE',39,'Syntax\n------\n\nCREATE [OR REPLACE] {DATABASE | SCHEMA} [IF NOT EXISTS] db_name\n  [create_specification] ...\n\ncreate_specification:\n  [DEFAULT] CHARACTER SET [=] charset_name\n | [DEFAULT] COLLATE [=] collation_name\n | COMMENT [=] \'comment\'\n\nDescription\n-----------\n\nCREATE DATABASE creates a database with the given name. To use this statement,\nyou need the CREATE privilege for the database. CREATE SCHEMA is a synonym for\nCREATE DATABASE.\n\nFor valid identifiers to use as database names, see Identifier Names.\n\nOR REPLACE\n----------\n\nMariaDB starting with 10.1.3\n----------------------------\nThe OR REPLACE clause was added in MariaDB 10.1.3\n\nIf the optional OR REPLACE clause is used, it acts as a shortcut for:\n\nDROP DATABASE IF EXISTS db_name;\nCREATE DATABASE db_name ...;\n\nIF NOT EXISTS\n-------------\n\nWhen the IF NOT EXISTS clause is used, MariaDB will return a warning instead\nof an error if the specified database already exists.\n\nCOMMENT\n-------\n\nMariaDB starting with 10.5.0\n----------------------------\nFrom MariaDB 10.5.0, it is possible to add a comment of a maximum of 1024\nbytes. If the comment length exceeds this length, a error/warning code 4144 is\nthrown. The database comment is also added to the db.opt file, as well as to\nthe information_schema.schemata table.\n\nExamples\n--------\n\nCREATE DATABASE db1;\nQuery OK, 1 row affected (0.18 sec)\n\nCREATE DATABASE db1;\nERROR 1007 (HY000): Can\'t create database \'db1\'; database exists\n\nCREATE OR REPLACE DATABASE db1;\nQuery OK, 2 rows affected (0.00 sec)\n\nCREATE DATABASE IF NOT EXISTS db1;\nQuery OK, 1 row affected, 1 warning (0.01 sec)\n\nSHOW WARNINGS;\n+-------+------+----------------------------------------------+\n| Level | Code | Message                                      |\n+-------+------+----------------------------------------------+\n| Note  | 1007 | Can\'t create database \'db1\'; database exists |\n+-------+------+----------------------------------------------+\n\nSetting the character sets and collation. See Setting Character Sets and\nCollations for more details.\n\nCREATE DATABASE czech_slovak_names \n CHARACTER SET = \'keybcs2\'\n COLLATE = \'keybcs2_bin\';\n\nComments, from MariaDB 10.5.0:\n\nCREATE DATABASE presentations COMMENT \'Presentations for conferences\';\n\n\n\nURL: mariadb.com/kb/en/create-database/','','https://mariadb.com/kb/en/create-database/'),(655,'CREATE PACKAGE',39,'MariaDB starting with 10.3.5\n----------------------------\nOracle-style packages were introduced in MariaDB 10.3.5.\n\nSyntax\n------\n\nCREATE\n  [ OR REPLACE]\n  [DEFINER = { user | CURRENT_USER | role | CURRENT_ROLE }]\n  PACKAGE [ IF NOT EXISTS ]\n  [ db_name . ] package_name\n  [ package_characteristic ... ]\n{ AS | IS }\n  [ package_specification_element ... ]\nEND [ package_name ]\n\npackage_characteristic:\n  COMMENT \'string\'\n | SQL SECURITY { DEFINER | INVOKER }\n\npackage_specification_element:\n  FUNCTION_SYM package_specification_function ;\n | PROCEDURE_SYM package_specification_procedure ;\n\npackage_specification_function:\n  func_name [ ( func_param [, func_param]... ) ]\n  RETURNS func_return_type\n  [ package_routine_characteristic... ]\n\npackage_specification_procedure:\n  proc_name [ ( proc_param [, proc_param]... ) ]\n  [ package_routine_characteristic... ]\n\nfunc_return_type:\n  type\n\nfunc_param:\n  param_name [ IN | OUT | INOUT | IN OUT ] type\n\nproc_param:\n  param_name [ IN | OUT | INOUT | IN OUT ] type\n\ntype:\n  Any valid MariaDB explicit or anchored data type\n\npackage_routine_characteristic:\n   COMMENT  \'string\'\n  | LANGUAGE SQL\n  | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n\nDescription\n-----------\n\nThe CREATE PACKAGE statement can be used when Oracle SQL_MODE is set.\n\nThe CREATE PACKAGE creates the specification for a stored package (a\ncollection of logically related stored objects). A stored package\nspecification declares public routines (procedures and functions) of the\npackage, but does not implement these routines.\n\nA package whose specification was created by the CREATE PACKAGE statement,\nshould later be implemented using the CREATE PACKAGE BODY statement.\n\nFunction parameter quantifiers IN | OUT | INOUT | IN OUT\n--------------------------------------------------------\n\nMariaDB starting with 10.8.0\n----------------------------\nThe function parameter quantifiers for IN, OUT, INOUT, and IN OUT where added\nin a 10.8.0 preview release. Prior to 10.8.0 quantifiers were supported only\nin procedures.\n\nOUT, INOUT and its equivalent IN OUT, are only valid if called from SET and\nnot SELECT. These quantifiers are especially useful for creating functions and\nprocedures with more than one return value. This allows functions and\nprocedures to be more complex and nested.\n\nExamples\n--------\n\nSET sql_mode=ORACLE;\nDELIMITER $$\nCREATE OR REPLACE PACKAGE employee_tools AS\n FUNCTION getSalary(eid INT) RETURN DECIMAL(10,2);\n PROCEDURE raiseSalary(eid INT, amount DECIMAL(10,2));\n PROCEDURE raiseSalaryStd(eid INT);\n PROCEDURE hire(ename TEXT, esalary DECIMAL(10,2));\nEND;\n$$\nDELIMITER ;\n\n\n\nURL: mariadb.com/kb/en/create-package/','','https://mariadb.com/kb/en/create-package/'),(650,'CONSTRAINT',39,'MariaDB supports the implementation of constraints at the table-level\nusing either CREATE TABLE or ALTER TABLE statements. A table constraint\nrestricts the data you can add to the table. If you attempt to insert invalid\ndata on a column, MariaDB throws an error.\n\nSyntax\n------\n\n[CONSTRAINT [symbol]] constraint_expression\n\nconstraint_expression:\n | PRIMARY KEY [index_type] (index_col_name, ...) [index_option] ...\n | FOREIGN KEY [index_name] (index_col_name, ...)\n   REFERENCES tbl_name (index_col_name, ...)\n   [ON DELETE reference_option]\n   [ON UPDATE reference_option]\n | UNIQUE [INDEX|KEY] [index_name]\n   [index_type] (index_col_name, ...) [index_option] ...\n | CHECK (check_constraints)\n\nindex_type:\n USING {BTREE | HASH | RTREE}\n\nindex_col_name:\n col_name [(length)] [ASC | DESC]\n\nindex_option:\n | KEY_BLOCK_SIZE [=] value\n | index_type\n | WITH PARSER parser_name\n | COMMENT \'string\'\n | CLUSTERING={YES|NO}\n\nreference_option:\n RESTRICT | CASCADE | SET NULL | NO ACTION | SET DEFAULT\n\nDescription\n-----------\n\nConstraints provide restrictions on the data you can add to a table. This\nallows you to enforce data integrity from MariaDB, rather than through\napplication logic. When a statement violates a constraint, MariaDB throws an\nerror.\n\nThere are four types of table constraints:\n\n+------------------------------------+----------------------------------------+\n| Constraint                         | Description                            |\n+------------------------------------+----------------------------------------+\n| PRIMARY KEY                        | Sets the column for referencing rows.  |\n|                                    |  Values must be unique and not null.   |\n+------------------------------------+----------------------------------------+\n| FOREIGN KEY                        | Sets the column to reference the       |\n|                                    | primary key on another table.          |\n+------------------------------------+----------------------------------------+\n| UNIQUE                             | Requires values in column or columns   |\n|                                    | only occur once in the table.          |\n+------------------------------------+----------------------------------------+\n| CHECK                              | Checks whether the data meets the      |\n|                                    | given condition.                       |\n+------------------------------------+----------------------------------------+\n\nThe Information Schema TABLE_CONSTRAINTS Table contains information about\ntables that have constraints.\n\nFOREIGN KEY Constraints\n-----------------------\n\nInnoDB supports foreign key constraints. The syntax for a foreign key\nconstraint definition in InnoDB looks like this:\n\n[CONSTRAINT [symbol]] FOREIGN KEY\n  [index_name] (index_col_name, ...)\n  REFERENCES tbl_name (index_col_name,...)\n  [ON DELETE reference_option]\n  [ON UPDATE reference_option]\n\nreference_option:\n  RESTRICT | CASCADE | SET NULL | NO ACTION\n\nThe Information Schema REFERENTIAL_CONSTRAINTS table has more information\nabout foreign keys.\n\nCHECK Constraints\n-----------------\n\nMariaDB starting with 10.2.1\n----------------------------\nFrom MariaDB 10.2.1, constraints are enforced. Before MariaDB 10.2.1\nconstraint expressions were accepted in the syntax but ignored.\n\nIn MariaDB 10.2.1 you can define constraints in 2 different ways:\n\n* CHECK(expression) given as part of a column definition.\n* CONSTRAINT [constraint_name] CHECK (expression)\n\nBefore a row is inserted or updated, all constraints are evaluated in the\norder they are defined. If any constraint expression returns false, then the\nrow will not be inserted or updated. One can use most deterministic functions\nin a constraint, including UDFs.\n\nCREATE TABLE t1 (a INT CHECK (a>2), b INT CHECK (b>2), CONSTRAINT a_greater\nCHECK (a>b));\n\nIf you use the second format and you don\'t give a name to the constraint, then\nthe constraint will get an automatically generated name. This is done so that\nyou can later delete the constraint with ALTER TABLE DROP constraint_name.\n\nOne can disable all constraint expression checks by setting the\ncheck_constraint_checks variable to OFF. This is useful for example when\nloading a table that violates some constraints that you want to later find and\nfix in SQL.\n\nReplication\n-----------\n\nIn row-based replication, only the master checks constraints, and failed\nstatements will not be replicated. In statement-based replication, the slaves\nwill also check constraints. Constraints should therefore be identical, as\nwell as deterministic, in a replication environment.\n\nAuto_increment\n--------------\n\nMariaDB starting with 10.2.6\n----------------------------\n* From MariaDB 10.2.6, auto_increment columns are no longer permitted in check\nconstraints. Previously they were permitted, but would not work correctly. See\nMDEV-11117.\n\nExamples\n--------\n\nCREATE TABLE product (category INT NOT NULL, id INT NOT NULL,\n           price DECIMAL,\n           PRIMARY KEY(category, id)) ENGINE=INNODB;\nCREATE TABLE customer (id INT NOT NULL,\n           PRIMARY KEY (id)) ENGINE=INNODB;\nCREATE TABLE product_order (no INT NOT NULL AUTO_INCREMENT,\n              product_category INT NOT NULL,\n              product_id INT NOT NULL,\n              customer_id INT NOT NULL,\n              PRIMARY KEY(no),\n              INDEX (product_category, product_id),\n              FOREIGN KEY (product_category, product_id)\n               REFERENCES product(category, id)\n               ON UPDATE CASCADE ON DELETE RESTRICT,\n              INDEX (customer_id),\n              FOREIGN KEY (customer_id)\n               REFERENCES customer(id)) ENGINE=INNODB;\n\nMariaDB starting with 10.2.1\n----------------------------\nThe following examples will work from MariaDB 10.2.1 onwards.\n\nNumeric constraints and comparisons:\n\nCREATE TABLE t1 (a INT CHECK (a>2), b INT CHECK (b>2), CONSTRAINT a_greater\nCHECK (a>b));\n\nINSERT INTO t1(a) VALUES (1);\nERROR 4022 (23000): CONSTRAINT `a` failed for `test`.`t1`\n\nINSERT INTO t1(a,b) VALUES (3,4);\nERROR 4022 (23000): CONSTRAINT `a_greater` failed for `test`.`t1`\n\nINSERT INTO t1(a,b) VALUES (4,3);\nQuery OK, 1 row affected (0.04 sec)\n\nDropping a constraint:\n\nALTER TABLE t1 DROP CONSTRAINT a_greater;\n\nAdding a constraint:\n\nALTER TABLE t1 ADD CONSTRAINT a_greater CHECK (a>b);\n\nDate comparisons and character length:\n\nCREATE TABLE t2 (name VARCHAR(30) CHECK (CHAR_LENGTH(name)>2), start_date\nDATE, \n end_date DATE CHECK (start_date IS NULL OR end_date IS NULL OR\nstart_date<end_date));\n\nINSERT INTO t2(name, start_date, end_date) VALUES(\'Ione\', \'2003-12-15\',\n\'2014-11-09\');\nQuery OK, 1 row affected (0.04 sec)\n\nINSERT INTO t2(name, start_date, end_date) VALUES(\'Io\', \'2003-12-15\',\n\'2014-11-09\');\nERROR 4022 (23000): CONSTRAINT `name` failed for `test`.`t2`\n\nINSERT INTO t2(name, start_date, end_date) VALUES(\'Ione\', NULL, \'2014-11-09\');\nQuery OK, 1 row affected (0.04 sec)\n\nINSERT INTO t2(name, start_date, end_date) VALUES(\'Ione\', \'2015-12-15\',\n\'2014-11-09\');\nERROR 4022 (23000): CONSTRAINT `end_date` failed for `test`.`t2`\n\nA misplaced parenthesis:\n\nCREATE TABLE t3 (name VARCHAR(30) CHECK (CHAR_LENGTH(name>2)), start_date\nDATE, \n end_date DATE CHECK (start_date IS NULL OR end_date IS NULL OR\nstart_date<end_date));\nQuery OK, 0 rows affected (0.32 sec)\n\nINSERT INTO t3(name, start_date, end_date) VALUES(\'Io\', \'2003-12-15\',\n\'2014-11-09\');\nQuery OK, 1 row affected, 1 warning (0.04 sec)\n\nSHOW WARNINGS;\n+---------+------+----------------------------------------+\n| Level   | Code | Message                                |\n+---------+------+----------------------------------------+\n| Warning | 1292 | Truncated incorrect DOUBLE value: \'Io\' |\n+---------+------+----------------------------------------+\n\nCompare the definition of table t2 to table t3. CHAR_LENGTH(name)>2 is very\ndifferent to CHAR_LENGTH(name>2) as the latter mistakenly performs a numeric\ncomparison on the name field, leading to unexpected results.\n\n\n\nURL: mariadb.com/kb/en/constraint/','','https://mariadb.com/kb/en/constraint/'),(652,'CREATE EVENT',39,'Syntax\n------\n\nCREATE [OR REPLACE]\n  [DEFINER = { user | CURRENT_USER | role | CURRENT_ROLE }]\n  EVENT\n  [IF NOT EXISTS]\n  event_name\n  ON SCHEDULE schedule\n  [ON COMPLETION [NOT] PRESERVE]\n  [ENABLE | DISABLE | DISABLE ON SLAVE]\n  [COMMENT \'comment\']\n  DO sql_statement;\n\nschedule:\n  AT timestamp [+ INTERVAL interval] ...\n | EVERY interval\n  [STARTS timestamp [+ INTERVAL interval] ...]\n  [ENDS timestamp [+ INTERVAL interval] ...]\n\ninterval:\n  quantity {YEAR | QUARTER | MONTH | DAY | HOUR | MINUTE |\n       WEEK | SECOND | YEAR_MONTH | DAY_HOUR | DAY_MINUTE |\n       DAY_SECOND | HOUR_MINUTE | HOUR_SECOND | MINUTE_SECOND}\n\nDescription\n-----------\n\nThis statement creates and schedules a new event. It requires the EVENT\nprivilege for the schema in which the event is to be created.\n\nThe minimum requirements for a valid CREATE EVENT statement are as follows:\n\n* The keywords CREATE EVENT plus an event name, which uniquely identifies\n the event in the current schema. (Prior to MySQL 5.1.12, the event name\n needed to be unique only among events created by the same user on a given\n database.)\n* An ON SCHEDULE clause, which determines when and how often the event\n executes.\n* A DO clause, which contains the SQL statement to be executed by an\n event.\n\nHere is an example of a minimal CREATE EVENT statement:\n\nCREATE EVENT myevent\n  ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR\n  DO\n   UPDATE myschema.mytable SET mycol = mycol + 1;\n\nThe previous statement creates an event named myevent. This event executes\nonce — one hour following its creation — by running an SQL statement that\nincrements the value of the myschema.mytable table\'s mycol column by 1.\n\nThe event_name must be a valid MariaDB identifier with a maximum length of 64\ncharacters. It may be delimited using back ticks, and may be qualified with\nthe name of a database schema. An event is associated with both a MariaDB user\n(the definer) and a schema, and its name must be unique among names of events\nwithin that schema. In general, the rules governing event names are the same\nas those for names of stored routines. See Identifier Names.\n\nIf no schema is indicated as part of event_name, the default (current) schema\nis assumed.\n\nFor valid identifiers to use as event names, see Identifier Names.\n\nOR REPLACE\n----------\n\nThe OR REPLACE clause was included in MariaDB 10.1.4. If used and the event\nalready exists, instead of an error being returned, the existing event will be\ndropped and replaced by the newly defined event.\n\nIF NOT EXISTS\n-------------\n\nIf the IF NOT EXISTS clause is used, MariaDB will return a warning instead of\nan error if the event already exists. Cannot be used together with OR REPLACE.\n\nON SCHEDULE\n-----------\n\nThe ON SCHEDULE clause can be used to specify when the event must be triggered.\n\nAT\n--\n\nIf you want to execute the event only once (one time event), you can use the\nAT keyword, followed by a timestamp. If you use CURRENT_TIMESTAMP, the event\nacts as soon as it is created. As a convenience, you can add one or more\nintervals to that timestamp. You can also specify a timestamp in the past, so\nthat the event is stored but not triggered, until you modify it via ALTER\nEVENT.\n\nThe following example shows how to create an event that will be triggered\ntomorrow at a certain time:\n\nCREATE EVENT example\nON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 DAY + INTERVAL 3 HOUR\nDO something;\n\nYou can also specify that an event must be triggered at a regular interval\n(recurring event). In such cases, use the EVERY clause followed by the\ninterval.\n\nIf an event is recurring, you can specify when the first execution must happen\nvia the STARTS clause and a maximum time for the last execution via the ENDS\nclause. STARTS and ENDS clauses are followed by a timestamp and, optionally,\none or more intervals. The ENDS clause can specify a timestamp in the past, so\nthat the event is stored but not executed until you modify it via ALTER EVENT.\n\nIn the following example, next month a recurring event will be triggered\nhourly for a week:\n\nCREATE EVENT example\nON SCHEDULE EVERY 1 HOUR\nSTARTS CURRENT_TIMESTAMP + INTERVAL 1 MONTH\nENDS CURRENT_TIMESTAMP + INTERVAL 1 MONTH + INTERVAL 1 WEEK\nDO some_task;\n\nIntervals consist of a quantity and a time unit. The time units are the same\nused for other staments and time functions, except that you can\'t use\nmicroseconds for events. For simple time units, like HOUR or MINUTE, the\nquantity is an integer number, for example \'10 MINUTE\'. For composite time\nunits, like HOUR_MINUTE or HOUR_SECOND, the quantity must be a string with all\ninvolved simple values and their separators, for example \'2:30\' or \'2:30:30\'.\n\nON COMPLETION [NOT] PRESERVE\n----------------------------\n\nThe ON COMPLETION clause can be used to specify if the event must be deleted\nafter its last execution (that is, after its AT or ENDS timestamp is past). By\ndefault, events are dropped when they are expired. To explicitly state that\nthis is the desired behaviour, you can use ON COMPLETION NOT PRESERVE.\nInstead, if you want the event to be preserved, you can use ON COMPLETION\nPRESERVE.\n\nIn you specify ON COMPLETION NOT PRESERVE, and you specify a timestamp in the\npast for AT or ENDS clause, the event will be immediatly dropped. In such\ncases, you will get a Note 1558: \"Event execution time is in the past and ON\nCOMPLETION NOT PRESERVE is set. The event was dropped immediately after\ncreation\".\n\nENABLE/DISABLE/DISABLE ON SLAVE\n-------------------------------\n\nEvents are ENABLEd by default. If you want to stop MariaDB from executing an\nevent, you may specify DISABLE. When it is ready to be activated, you may\nenable it using ALTER EVENT. Another option is DISABLE ON SLAVE, which\nindicates that an event was created on a master and has been replicated to the\nslave, which is prevented from executing the event. If DISABLE ON SLAVE is\nspecifically set, the event will not be executed.\n\nCOMMENT\n-------\n\nThe COMMENT clause may be used to set a comment for the event. Maximum length\nfor comments is 64 characters. The comment is a string, so it must be quoted.\nTo see events comments, you can query the INFORMATION_SCHEMA.EVENTS table (the\ncolumn is named EVENT_COMMENT).\n\nExamples\n--------\n\nMinimal CREATE EVENT statement:\n\nCREATE EVENT myevent\n  ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR\n  DO\n   UPDATE myschema.mytable SET mycol = mycol + 1;\n\nAn event that will be triggered tomorrow at a certain time:\n\nCREATE EVENT example\nON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 DAY + INTERVAL 3 HOUR\nDO something;\n\nNext month a recurring event will be triggered hourly for a week:\n\nCREATE EVENT example\nON SCHEDULE EVERY 1 HOUR\nSTARTS CURRENT_TIMESTAMP + INTERVAL 1 MONTH\nENDS CURRENT_TIMESTAMP + INTERVAL 1 MONTH + INTERVAL 1 WEEK\nDO some_task;\n\nOR REPLACE and IF NOT EXISTS:\n\nCREATE EVENT myevent\n  ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR\n  DO\n   UPDATE myschema.mytable SET mycol = mycol + 1;\nERROR 1537 (HY000): Event \'myevent\' already exists\n\nCREATE OR REPLACE EVENT myevent\n  ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR\n  DO\n   UPDATE myschema.mytable SET mycol = mycol + 1;;\nQuery OK, 0 rows affected (0.00 sec)\n\nCREATE EVENT IF NOT EXISTS myevent\n  ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR\n  DO\n   UPDATE myschema.mytable SET mycol = mycol + 1;\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nSHOW WARNINGS;\n+-------+------+--------------------------------+\n| Level | Code | Message                        |\n+-------+------+--------------------------------+\n| Note  | 1537 | Event \'myevent\' already exists |\n+-------+------+--------------------------------+\n\n\n\nURL: mariadb.com/kb/en/create-event/','','https://mariadb.com/kb/en/create-event/'),(654,'CREATE INDEX',39,'Syntax\n------\n\nCREATE [OR REPLACE] [UNIQUE|FULLTEXT|SPATIAL] INDEX \n [IF NOT EXISTS] index_name\n  [index_type]\n  ON tbl_name (index_col_name,...)\n  [WAIT n | NOWAIT]\n  [index_option]\n  [algorithm_option | lock_option] ...\n\nindex_col_name:\n  col_name [(length)] [ASC | DESC]\n\nindex_type:\n  USING {BTREE | HASH | RTREE}\n\nindex_option:\n  [ KEY_BLOCK_SIZE [=] value\n | index_type\n | WITH PARSER parser_name\n | COMMENT \'string\'\n | CLUSTERING={YES| NO} ]\n [ IGNORED | NOT IGNORED ]\n\nalgorithm_option:\n  ALGORITHM [=] {DEFAULT|INPLACE|COPY|NOCOPY|INSTANT}\n\nlock_option:\n  LOCK [=] {DEFAULT|NONE|SHARED|EXCLUSIVE}\n\nDescription\n-----------\n\nCREATE INDEX is mapped to an ALTER TABLE statement to create indexes. See\nALTER TABLE. CREATE INDEX cannot be used to create a PRIMARY KEY; use ALTER\nTABLE instead.\n\nIf another connection is using the table, a metadata lock is active, and this\nstatement will wait until the lock is released. This is also true for\nnon-transactional tables.\n\nAnother shortcut, DROP INDEX, allows the removal of an index.\n\nFor valid identifiers to use as index names, see Identifier Names.\n\nNote that KEY_BLOCK_SIZE is currently ignored in CREATE INDEX, although it is\nincluded in the output of SHOW CREATE TABLE.\n\nPrivileges\n----------\n\nExecuting the CREATE INDEX statement requires the INDEX privilege for the\ntable or the database.\n\nOnline DDL\n----------\n\nOnline DDL is supported with the ALGORITHM and LOCK clauses.\n\nSee InnoDB Online DDL Overview for more information on online DDL with InnoDB.\n\nCREATE OR REPLACE INDEX\n-----------------------\n\nMariaDB starting with 10.1.4\n----------------------------\nThe OR REPLACE clause was added in MariaDB 10.1.4.\n\nIf the OR REPLACE clause is used and if the index already exists, then instead\nof returning an error, the server will drop the existing index and replace it\nwith the newly defined index.\n\nCREATE INDEX IF NOT EXISTS\n--------------------------\n\nIf the IF NOT EXISTS clause is used, then the index will only be created if an\nindex with the same name does not already exist. If the index already exists,\nthen a warning will be triggered by default.\n\nIndex Definitions\n-----------------\n\nSee CREATE TABLE: Index Definitions for information about index definitions.\n\nWAIT/NOWAIT\n-----------\n\nMariaDB starting with 10.3.0\n----------------------------\nSet the lock wait timeout. See WAIT and NOWAIT.\n\nALGORITHM\n---------\n\nSee ALTER TABLE: ALGORITHM for more information.\n\nLOCK\n----\n\nSee ALTER TABLE: LOCK for more information.\n\nProgress Reporting\n------------------\n\nMariaDB provides progress reporting for CREATE INDEX statement for clients\nthat support the new progress reporting protocol. For example, if you were\nusing the mysql client, then the progress report might look like this::\n\nCREATE INDEX ON tab (num);;\nStage: 1 of 2 \'copy to tmp table\'    46% of stage\n\nThe progress report is also shown in the output of the SHOW PROCESSLIST\nstatement and in the contents of the information_schema.PROCESSLIST table.\n\nSee Progress Reporting for more information.\n\nWITHOUT OVERLAPS\n----------------\n\nMariaDB starting with 10.5.3\n----------------------------\nThe WITHOUT OVERLAPS clause allows one to constrain a primary or unique index\nsuch that application-time periods cannot overlap.\n\nExamples\n--------\n\nCreating a unique index:\n\nCREATE UNIQUE INDEX HomePhone ON Employees(Home_Phone);\n\nOR REPLACE and IF NOT EXISTS:\n\nCREATE INDEX xi ON xx5 (x);\nQuery OK, 0 rows affected (0.03 sec)\n\nCREATE INDEX xi ON xx5 (x);\nERROR 1061 (42000): Duplicate key name \'xi\'\n\nCREATE OR REPLACE INDEX xi ON xx5 (x);\nQuery OK, 0 rows affected (0.03 sec)\n\nCREATE INDEX IF NOT EXISTS xi ON xx5 (x);\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nSHOW WARNINGS;\n+-------+------+-------------------------+\n| Level | Code | Message                 |\n+-------+------+-------------------------+\n| Note  | 1061 | Duplicate key name \'xi\' |\n+-------+------+-------------------------+\n\nFrom MariaDB 10.5.3, creating a unique index for an application-time period\ntable with a WITHOUT OVERLAPS constraint:\n\nCREATE UNIQUE INDEX u ON rooms (room_number, p WITHOUT OVERLAPS);\n\n\n\nURL: mariadb.com/kb/en/create-index/','','https://mariadb.com/kb/en/create-index/'),(664,'DROP DATABASE',39,'Syntax\n------\n\nDROP {DATABASE | SCHEMA} [IF EXISTS] db_name\n\nDescription\n-----------\n\nDROP DATABASE drops all tables in the database and deletes the database. Be\nvery careful with this statement! To use DROP DATABASE, you need the DROP\nprivilege on the database. DROP SCHEMA is a synonym for DROP DATABASE.\n\nImportant: When a database is dropped, user privileges on the database are not\nautomatically dropped. See GRANT.\n\nIF EXISTS\n---------\n\nUse IF EXISTS to prevent an error from occurring for databases that do not\nexist. A NOTE is generated for each non-existent database when using IF\nEXISTS. See SHOW WARNINGS.\n\nAtomic DDL\n----------\n\nMariaDB starting with 10.6.1\n----------------------------\nMariaDB 10.6.1 supports Atomic DDL.\n\nDROP DATABASE is implemented as\n\nloop over all tables\n DROP TABLE table\n\nEach individual DROP TABLE is atomic while DROP DATABASE as a whole is\ncrash-safe.\n\nExamples\n--------\n\nDROP DATABASE bufg;\nQuery OK, 0 rows affected (0.39 sec)\n\nDROP DATABASE bufg;\nERROR 1008 (HY000): Can\'t drop database \'bufg\'; database doesn\'t exist\n\nW\nShow warnings enabled.\n\nDROP DATABASE IF EXISTS bufg;\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\nNote (Code 1008): Can\'t drop database \'bufg\'; database doesn\'t exist\n\n\n\nURL: mariadb.com/kb/en/drop-database/','','https://mariadb.com/kb/en/drop-database/'),(656,'CREATE PACKAGE BODY',39,'MariaDB starting with 10.3.5\n----------------------------\nOracle-style packages were introduced in MariaDB 10.3.5.\n\nSyntax\n------\n\nCREATE [ OR REPLACE ]\n  [DEFINER = { user | CURRENT_USER | role | CURRENT_ROLE }]\n  PACKAGE BODY\n  [ IF NOT EXISTS ]\n  [ db_name . ] package_name\n  [ package_characteristic... ]\n{ AS | IS }\n  package_implementation_declare_section\n  package_implementation_executable_section\nEND [ package_name]\n\npackage_implementation_declare_section:\n  package_implementation_item_declaration\n   [ package_implementation_item_declaration... ]\n   [ package_implementation_routine_definition... ]\n | package_implementation_routine_definition\n   [ package_implementation_routine_definition...]\n\npackage_implementation_item_declaration:\n  variable_declaration ;\n\nvariable_declaration:\n  variable_name[,...] type [:= expr ]\n\npackage_implementation_routine_definition:\n  FUNCTION package_specification_function\n   [ package_implementation_function_body ] ;\n | PROCEDURE package_specification_procedure\n   [ package_implementation_procedure_body ] ;\n\npackage_implementation_function_body:\n  { AS | IS } package_routine_body [func_name]\n\npackage_implementation_procedure_body:\n  { AS | IS } package_routine_body [proc_name]\n\npackage_routine_body:\n  [ package_routine_declarations ]\n  BEGIN\n   statements [ EXCEPTION exception_handlers ]\n  END\n\npackage_routine_declarations:\n  package_routine_declaration \';\' [package_routine_declaration \';\']...\n\npackage_routine_declaration:\n     variable_declaration\n    | condition_name CONDITION FOR condition_value\n    | user_exception_name EXCEPTION\n    | CURSOR_SYM cursor_name\n     [ ( cursor_formal_parameters ) ]\n     IS select_statement\n    ;\n\npackage_implementation_executable_section:\n     END\n    | BEGIN\n      statement ; [statement ; ]...\n     [EXCEPTION exception_handlers]\n     END\n\nexception_handlers:\n     exception_handler [exception_handler...]\n\nexception_handler:\n     WHEN_SYM condition_value [, condition_value]...\n      THEN_SYM statement ; [statement ;]...\n\ncondition_value:\n     condition_name\n    | user_exception_name\n    | SQLWARNING\n    | SQLEXCEPTION\n    | NOT FOUND\n    | OTHERS_SYM\n    | SQLSTATE [VALUE] sqlstate_value\n    | mariadb_error_code\n\nDescription\n-----------\n\nThe CREATE PACKAGE BODY statement can be used when Oracle SQL_MODE is set.\n\nThe CREATE PACKAGE BODY statement creates the package body for a stored\npackage. The package specification must be previously created using the CREATE\nPACKAGE statement.\n\nA package body provides implementations of the package public routines and can\noptionally have:\n\n* package-wide private variables\n* package private routines\n* forward declarations for private routines\n* an executable initialization section\n\nExamples\n--------\n\nSET sql_mode=ORACLE;\nDELIMITER $$\nCREATE OR REPLACE PACKAGE employee_tools AS\n FUNCTION getSalary(eid INT) RETURN DECIMAL(10,2);\n PROCEDURE raiseSalary(eid INT, amount DECIMAL(10,2));\n PROCEDURE raiseSalaryStd(eid INT);\n PROCEDURE hire(ename TEXT, esalary DECIMAL(10,2));\nEND;\n$$\nCREATE PACKAGE BODY employee_tools AS\n -- package body variables\n stdRaiseAmount DECIMAL(10,2):=500;\n\n-- private routines\n PROCEDURE log (eid INT, ecmnt TEXT) AS\n BEGIN\n  INSERT INTO employee_log (id, cmnt) VALUES (eid, ecmnt);\n END;\n\n-- public routines\n PROCEDURE hire(ename TEXT, esalary DECIMAL(10,2)) AS\n  eid INT;\n BEGIN\n  INSERT INTO employee (name, salary) VALUES (ename, esalary);\n  eid:= last_insert_id();\n  log(eid, \'hire \' || ename);\n END;\n\nFUNCTION getSalary(eid INT) RETURN DECIMAL(10,2) AS\n  nSalary DECIMAL(10,2);\n BEGIN\n  SELECT salary INTO nSalary FROM employee WHERE id=eid;\n  log(eid, \'getSalary id=\' || eid || \' salary=\' || nSalary);\n  RETURN nSalary;\n END;\n\nPROCEDURE raiseSalary(eid INT, amount DECIMAL(10,2)) AS\n BEGIN\n  UPDATE employee SET salary=salary+amount WHERE id=eid;\n  log(eid, \'raiseSalary id=\' || eid || \' amount=\' || amount);\n END;\n\nPROCEDURE raiseSalaryStd(eid INT) AS\n BEGIN\n  raiseSalary(eid, stdRaiseAmount);\n  log(eid, \'raiseSalaryStd id=\' || eid);\n END;\n\nBEGIN\n -- This code is executed when the current session\n -- accesses any of the package routines for the first time\n log(0, \'Session \' || connection_id() || \' \' || current_user || \' started\');\nEND;\n$$\n\nDELIMITER ;\n\n\n\nURL: mariadb.com/kb/en/create-package-body/','','https://mariadb.com/kb/en/create-package-body/'),(665,'DROP EVENT',39,'Syntax\n------\n\nDROP EVENT [IF EXISTS] event_name\n\nDescription\n-----------\n\nThis statement drops the event named event_name. The event immediately ceases\nbeing active, and is deleted completely from the server.\n\nIf the event does not exist, the error ERROR 1517 (HY000): Unknown event\n\'event_name\' results. You can override this and cause the statement to\ngenerate a NOTE for non-existent events instead by using IF EXISTS. See SHOW\nWARNINGS.\n\nThis statement requires the EVENT privilege. In MySQL 5.1.11 and earlier, an\nevent could be dropped only by its definer, or by a user having the SUPER\nprivilege.\n\nExamples\n--------\n\nDROP EVENT myevent3;\n\nUsing the IF EXISTS clause:\n\nDROP EVENT IF EXISTS myevent3;\nQuery OK, 0 rows affected, 1 warning (0.01 sec)\n\nSHOW WARNINGS;\n+-------+------+-------------------------------+\n| Level | Code | Message                       |\n+-------+------+-------------------------------+\n| Note  | 1305 | Event myevent3 does not exist |\n+-------+------+-------------------------------+\n\n\n\nURL: mariadb.com/kb/en/drop-event/','','https://mariadb.com/kb/en/drop-event/'),(658,'CREATE SEQUENCE',39,'MariaDB starting with 10.3\n--------------------------\nCREATE SEQUENCE was introduced in MariaDB 10.3.\n\nSyntax\n------\n\nCREATE [OR REPLACE] [TEMPORARY] SEQUENCE [IF NOT EXISTS] sequence_name\n[ INCREMENT [ BY | = ] increment ]\n[ MINVALUE [=] minvalue | NO MINVALUE | NOMINVALUE ]\n[ MAXVALUE [=] maxvalue | NO MAXVALUE | NOMAXVALUE ]\n[ START [ WITH | = ] start ] \n[ CACHE [=] cache | NOCACHE ] [ CYCLE | NOCYCLE] \n[table_options]\nThe options for CREATE SEQUENCE can be given in any order, optionally followed\nby table_options.\n\ntable_options can be any of the normal table options in CREATE TABLE but the\nmost usable ones are ENGINE=... and COMMENT=.\n\nNOMAXVALUE and NOMINVALUE are there to allow one to create SEQUENCEs using the\nOracle syntax.\n\nDescription\n-----------\n\nCREATE SEQUENCE will create a sequence that generates new values when called\nwith NEXT VALUE FOR sequence_name. It\'s an alternative to AUTO INCREMENT when\none wants to have more control of how the numbers are generated. As the\nSEQUENCE caches values (up to CACHE) it can in some cases be much faster than\nAUTO INCREMENT. Another benefit is that one can access the last value\ngenerated by all used sequences, which solves one of the limitations with\nLAST_INSERT_ID().\n\nCREATE SEQUENCE requires the CREATE privilege.\n\nDROP SEQUENCE can be used to drop a sequence, and ALTER SEQUENCE to change it.\n\nArguments to Create\n-------------------\n\nThe following options may be used:\n\n+---------------+-------------------------------+-----------------------------+\n| Option        | Default value                 | Description                 |\n+---------------+-------------------------------+-----------------------------+\n| INCREMENT     | 1                             | Increment to use for        |\n|               |                               | values. May be negative.    |\n|               |                               | Setting an increment of 0   |\n|               |                               | causes the sequence to use  |\n|               |                               | the value of the            |\n|               |                               | auto_increment_increment    |\n|               |                               | system variable at the      |\n|               |                               | time of creation, which is  |\n|               |                               | always a positive number.   |\n|               |                               | (see MDEV-16035).           |\n+---------------+-------------------------------+-----------------------------+\n| MINVALUE      | 1 if INCREMENT > 0 and        | Minimum value for the       |\n|               | -9223372036854775807 if       | sequence                    |\n|               | INCREMENT < 0                 |                             |\n+---------------+-------------------------------+-----------------------------+\n| MAXVALUE      | 9223372036854775806 if        | Max value for sequence      |\n|               | INCREMENT > 0 and -1 if       |                             |\n|               | INCREMENT < 0                 |                             |\n+---------------+-------------------------------+-----------------------------+\n| START         | MINVALUE if INCREMENT > 0     | First value that the        |\n|               | and MAX_VALUE if INCREMENT< 0 | sequence will generate      |\n+---------------+-------------------------------+-----------------------------+\n| CACHE         | 1000                          | Number of values that       |\n|               |                               | should be cached. 0 if no   |\n|               |                               | CACHE.  The underlying      |\n|               |                               | table will be updated       |\n|               |                               | first time a new sequence   |\n|               |                               | number is generated and     |\n|               |                               | each time the cache runs    |\n|               |                               | out.                        |\n+---------------+-------------------------------+-----------------------------+\n\nIf CYCLE is used then the sequence should start again from MINVALUE after it\nhas run out of values. Default value is NOCYCLE.\n\nConstraints on Create Arguments\n-------------------------------\n\nTo be able to create a legal sequence, the following must hold:\n\n* MAXVALUE >= start\n* MAXVALUE > MINVALUE\n* START >= MINVALUE\n* MAXVALUE <= 9223372036854775806  (LONGLONG_MAX-1)\n* MINVALUE >= -9223372036854775807 (LONGLONG_MIN+1)\n\nNote that sequences can\'t generate the maximum/minimum 64 bit number because\nof the constraint of MINVALUE and MAXVALUE.\n\nAtomic DDL\n----------\n\nMariaDB starting with 10.6.1\n----------------------------\nMariaDB 10.6.1 supports Atomic DDL and CREATE SEQUENCE is atomic.\n\nExamples\n--------\n\nCREATE SEQUENCE s START WITH 100 INCREMENT BY 10;\n\nCREATE SEQUENCE s2 START WITH -100 INCREMENT BY -10;\n\nThe following statement fails, as the increment conflicts with the defaults\n\nCREATE SEQUENCE s3 START WITH -100 INCREMENT BY 10;\nERROR 4082 (HY000): Sequence \'test.s3\' values are conflicting\n\nThe sequence can be created by specifying workable minimum and maximum values:\n\nCREATE SEQUENCE s3 START WITH -100 INCREMENT BY 10 MINVALUE=-100 MAXVALUE=1000;\n\n\n\nURL: mariadb.com/kb/en/create-sequence/','','https://mariadb.com/kb/en/create-sequence/'),(659,'CREATE SERVER',39,'Syntax\n------\n\nCREATE [OR REPLACE] SERVER [IF NOT EXISTS] server_name\n  FOREIGN DATA WRAPPER wrapper_name\n  OPTIONS (option [, option] ...)\n\noption:\n { HOST character-literal\n | DATABASE character-literal\n | USER character-literal\n | PASSWORD character-literal\n | SOCKET character-literal\n | OWNER character-literal\n | PORT numeric-literal }\n\nDescription\n-----------\n\nThis statement creates the definition of a server for use with the Spider,\nConnect, FEDERATED or FederatedX storage engine. The CREATE SERVER statement\ncreates a new row within the servers table within the mysql database. This\nstatement requires the SUPER privilege or, from MariaDB 10.5.2, the FEDERATED\nADMIN privilege.\n\nThe server_name should be a unique reference to the server. Server definitions\nare global within the scope of the server, it is not possible to qualify the\nserver definition to a specific database. server_name has a maximum length of\n64 characters (names longer than 64 characters are silently truncated), and is\ncase insensitive. You may specify the name as a quoted string.\n\nThe wrapper_name may be quoted with single quotes. Supported values are:\n\n* mysql\n* mariadb (in MariaDB 10.3 and later)\n\nFor each option you must specify either a character literal or numeric\nliteral. Character literals are UTF-8, support a maximum length of 64\ncharacters and default to a blank (empty) string. String literals are silently\ntruncated to 64 characters. Numeric literals must be a number between 0 and\n9999, default value is 0.\n\nNote: The OWNER option is currently not applied, and has no effect on the\nownership or operation of the server connection that is created.\n\nThe CREATE SERVER statement creates an entry in the mysql.servers table that\ncan later be used with the CREATE TABLE statement when creating a Spider,\nConnect, FederatedX or FEDERATED table. The options that you specify will be\nused to populate the columns in the mysql.servers table. The table columns are\nServer_name, Host, Db, Username, Password, Port and Socket.\n\nDROP SERVER removes a previously created server definition.\n\nCREATE SERVER is not written to the binary log, irrespective of the binary log\nformat being used. From MariaDB 10.1.13, Galera replicates the CREATE SERVER,\nALTER SERVER and DROP SERVER statements.\n\nFor valid identifiers to use as server names, see Identifier Names.\n\nOR REPLACE\n----------\n\nIf the optional OR REPLACE clause is used, it acts as a shortcut for:\n\nDROP SERVER IF EXISTS name;\nCREATE SERVER server_name ...;\n\nIF NOT EXISTS\n-------------\n\nIf the IF NOT EXISTS clause is used, MariaDB will return a warning instead of\nan error if the server already exists. Cannot be used together with OR REPLACE.\n\nExamples\n--------\n\nCREATE SERVER s\nFOREIGN DATA WRAPPER mysql\nOPTIONS (USER \'Remote\', HOST \'192.168.1.106\', DATABASE \'test\');\n\nOR REPLACE and IF NOT EXISTS:\n\nCREATE SERVER s \nFOREIGN DATA WRAPPER mysql \nOPTIONS (USER \'Remote\', HOST \'192.168.1.106\', DATABASE \'test\');\nERROR 1476 (HY000): The foreign server, s, you are trying to create already\nexists\n\nCREATE OR REPLACE SERVER s \nFOREIGN DATA WRAPPER mysql \nOPTIONS (USER \'Remote\', HOST \'192.168.1.106\', DATABASE \'test\');\nQuery OK, 0 rows affected (0.00 sec)\n\nCREATE SERVER IF NOT EXISTS s \nFOREIGN DATA WRAPPER mysql \nOPTIONS (USER \'Remote\', HOST \'192.168.1.106\', DATABASE \'test\');\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nSHOW WARNINGS;\n+-------+------+---------------------------------------------------------------\n+\n| Level | Code | Message                                                      \n |\n+-------+------+---------------------------------------------------------------\n+\n| Note  | 1476 | The foreign server, s, you are trying to create already\nexists |\n+-------+------+---------------------------------------------------------------\n+\n\n\n\nURL: mariadb.com/kb/en/create-server/','','https://mariadb.com/kb/en/create-server/'),(666,'DROP FUNCTION',39,'Syntax\n------\n\nDROP FUNCTION [IF EXISTS] f_name\n\nDescription\n-----------\n\nThe DROP FUNCTION statement is used to drop a stored function or a\nuser-defined function (UDF). That is, the specified routine is removed from\nthe server, along with all privileges specific to the function. You must have\nthe ALTER ROUTINE privilege for the routine in order to drop it. If the\nautomatic_sp_privileges server system variable is set, both the ALTER ROUTINE\nand EXECUTE privileges are granted automatically to the routine creator - see\nStored Routine Privileges.\n\nIF EXISTS\n---------\n\nThe IF EXISTS clause is a MySQL/MariaDB extension. It prevents an error from\noccurring if the function does not exist. A NOTE is produced that can be\nviewed with SHOW WARNINGS.\n\nFor dropping a user-defined functions (UDF), see DROP FUNCTION UDF.\n\nExamples\n--------\n\nDROP FUNCTION hello;\nQuery OK, 0 rows affected (0.042 sec)\n\nDROP FUNCTION hello;\nERROR 1305 (42000): FUNCTION test.hello does not exist\n\nDROP FUNCTION IF EXISTS hello;\nQuery OK, 0 rows affected, 1 warning (0.000 sec)\n\nSHOW WARNINGS;\n+-------+------+------------------------------------+\n| Level | Code | Message                            |\n+-------+------+------------------------------------+\n| Note  | 1305 | FUNCTION test.hello does not exist |\n+-------+------+------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/drop-function/','','https://mariadb.com/kb/en/drop-function/'),(662,'CREATE TRIGGER',39,'Syntax\n------\n\nCREATE [OR REPLACE]\n  [DEFINER = { user | CURRENT_USER | role | CURRENT_ROLE }]\n  TRIGGER [IF NOT EXISTS] trigger_name trigger_time trigger_event\n  ON tbl_name FOR EACH ROW\n [{ FOLLOWS | PRECEDES } other_trigger_name ]\n trigger_stmt;\n\nDescription\n-----------\n\nThis statement creates a new trigger. A trigger is a named database object\nthat is associated with a table, and that activates when a particular event\noccurs for the table. The trigger becomes associated with the table named\ntbl_name, which must refer to a permanent table. You cannot associate a\ntrigger with a TEMPORARY table or a view.\n\nCREATE TRIGGER requires the TRIGGER privilege for the table associated with\nthe trigger.\n\nMariaDB starting with 10.2.3\n----------------------------\nYou can have multiple triggers for the same trigger_time and trigger_event.\n\nFor valid identifiers to use as trigger names, see Identifier Names.\n\nOR REPLACE\n----------\n\nMariaDB starting with 10.1.4\n----------------------------\nIf used and the trigger already exists, instead of an error being returned,\nthe existing trigger will be dropped and replaced by the newly defined trigger.\n\nDEFINER\n-------\n\nThe DEFINER clause determines the security context to be used when checking\naccess privileges at trigger activation time. Usage requires the SUPER\nprivilege, or, from MariaDB 10.5.2, the SET USER privilege.\n\nIF NOT EXISTS\n-------------\n\nMariaDB starting with 10.1.4\n----------------------------\nIf the IF NOT EXISTS clause is used, the trigger will only be created if a\ntrigger of the same name does not exist. If the trigger already exists, by\ndefault a warning will be returned.\n\ntrigger_time\n------------\n\ntrigger_time is the trigger action time. It can be BEFORE or AFTER to indicate\nthat the trigger activates before or after each row to be modified.\n\ntrigger_event\n-------------\n\ntrigger_event indicates the kind of statement that activates the trigger. The\ntrigger_event can be one of the following:\n\n* INSERT: The trigger is activated whenever a new row is inserted into the\ntable; for example, through INSERT, LOAD DATA, and REPLACE statements.\n* UPDATE: The trigger is activated whenever a row is modified; for example,\nthrough UPDATE statements.\n* DELETE: The trigger is activated whenever a row is deleted from the table;\nfor example, through DELETE and REPLACE statements. However, DROP TABLE and\nTRUNCATE statements on the table do not activate this trigger, because they do\nnot use DELETE. Dropping a partition does not activate DELETE triggers, either.\n\nFOLLOWS/PRECEDES other_trigger_name\n-----------------------------------\n\nMariaDB starting with 10.2.3\n----------------------------\nThe FOLLOWS other_trigger_name and PRECEDES other_trigger_name options were\nadded in MariaDB 10.2.3 as part of supporting multiple triggers per action\ntime. This is the same syntax used by MySQL 5.7, although MySQL 5.7 does not\nhave multi-trigger support.\n\nFOLLOWS adds the new trigger after another trigger while PRECEDES adds the new\ntrigger before another trigger. If neither option is used, the new trigger is\nadded last for the given action and time.\n\nFOLLOWS and PRECEDES are not stored in the trigger definition. However the\ntrigger order is guaranteed to not change over time. mariadb-dump/mysqldump\nand other backup methods will not change trigger order. You can verify the\ntrigger order from the ACTION_ORDER column in INFORMATION_SCHEMA.TRIGGERS\ntable.\n\nSELECT trigger_name, action_order FROM information_schema.triggers \n WHERE event_object_table=\'t1\';\n\nAtomic DDL\n----------\n\nMariaDB starting with 10.6.1\n----------------------------\nMariaDB 10.6.1 supports Atomic DDL and CREATE TRIGGER is atomic.\n\nExamples\n--------\n\nCREATE DEFINER=`root`@`localhost` TRIGGER increment_animal\n AFTER INSERT ON animals FOR EACH ROW\n UPDATE animal_count SET animal_count.animals = animal_count.animals+1;\n\nOR REPLACE and IF NOT EXISTS\n\nCREATE DEFINER=`root`@`localhost` TRIGGER increment_animal\n AFTER INSERT ON animals FOR EACH ROW\n  UPDATE animal_count SET animal_count.animals = animal_count.animals+1;\nERROR 1359 (HY000): Trigger already exists\n\nCREATE OR REPLACE DEFINER=`root`@`localhost` TRIGGER increment_animal\n AFTER INSERT ON animals  FOR EACH ROW\n  UPDATE animal_count SET animal_count.animals = animal_count.animals+1;\nQuery OK, 0 rows affected (0.12 sec)\n\nCREATE DEFINER=`root`@`localhost` TRIGGER IF NOT EXISTS increment_animal\n AFTER INSERT ON animals FOR EACH ROW\n  UPDATE animal_count SET animal_count.animals = animal_count.animals+1;\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nSHOW WARNINGS;\n+-------+------+------------------------+\n| Level | Code | Message                |\n+-------+------+------------------------+\n| Note  | 1359 | Trigger already exists |\n+-------+------+------------------------+\n1 row in set (0.00 sec)\n\n\n\nURL: mariadb.com/kb/en/create-trigger/','','https://mariadb.com/kb/en/create-trigger/'),(667,'DROP INDEX',39,'Syntax\n------\n\nDROP INDEX [IF EXISTS] index_name ON tbl_name \n  [WAIT n |NOWAIT]\n\nDescription\n-----------\n\nDROP INDEX drops the index named index_name from the table tbl_name. This\nstatement is mapped to an ALTER TABLE statement to drop the index.\n\nIf another connection is using the table, a metadata lock is active, and this\nstatement will wait until the lock is released. This is also true for\nnon-transactional tables.\n\nSee ALTER TABLE.\n\nAnother shortcut, CREATE INDEX, allows the creation of an index.\n\nTo remove the primary key, `PRIMARY` must be specified as index_name. Note\nthat the quotes are necessary, because PRIMARY is a keyword.\n\nPrivileges\n----------\n\nExecuting the DROP INDEX statement requires the INDEX privilege for the table\nor the database.\n\nOnline DDL\n----------\n\nOnline DDL is used by default with InnoDB, when the drop index operation\nsupports it.\n\nSee InnoDB Online DDL Overview for more information on online DDL with InnoDB.\n\nDROP INDEX IF EXISTS ...\n------------------------\n\nIf the IF EXISTS clause is used, then MariaDB will return a warning instead of\nan error if the index does not exist.\n\nWAIT/NOWAIT\n-----------\n\nMariaDB starting with 10.3.0\n----------------------------\nSet the lock wait timeout. See WAIT and NOWAIT.\n\nProgress Reporting\n------------------\n\nMariaDB provides progress reporting for DROP INDEX statement for clients that\nsupport the new progress reporting protocol. For example, if you were using\nthe mysql client, then the progress report might look like this::\n\n\n\nURL: mariadb.com/kb/en/drop-index/','','https://mariadb.com/kb/en/drop-index/'),(670,'DROP PROCEDURE',39,'Syntax\n------\n\nDROP PROCEDURE [IF EXISTS] sp_name\n\nDescription\n-----------\n\nThis statement is used to drop a stored procedure. That is, the specified\nroutine is removed from the server along with all privileges specific to the\nprocedure. You must have the ALTER ROUTINE privilege for the routine. If the\nautomatic_sp_privileges server system variable is set, that privilege and\nEXECUTE are granted automatically to the routine creator - see Stored Routine\nPrivileges.\n\nThe IF EXISTS clause is a MySQL/MariaDB extension. It prevents an error from\noccurring if the procedure or function does not exist. A NOTE is produced that\ncan be viewed with SHOW WARNINGS.\n\nWhile this statement takes effect immediately, threads which are executing a\nprocedure can continue execution.\n\nExamples\n--------\n\nDROP PROCEDURE simpleproc;\n\nIF EXISTS:\n\nDROP PROCEDURE simpleproc;\nERROR 1305 (42000): PROCEDURE test.simpleproc does not exist\n\nDROP PROCEDURE IF EXISTS simpleproc;\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nSHOW WARNINGS;\n+-------+------+------------------------------------------+\n| Level | Code | Message                                  |\n+-------+------+------------------------------------------+\n| Note  | 1305 | PROCEDURE test.simpleproc does not exist |\n+-------+------+------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/drop-procedure/','','https://mariadb.com/kb/en/drop-procedure/'),(671,'DROP SEQUENCE',39,'MariaDB starting with 10.3\n--------------------------\nDROP SEQUENCE was introduced in MariaDB 10.3.\n\nSyntax\n------\n\nDROP [TEMPORARY] SEQUENCE [IF EXISTS] [/*COMMENT TO SAVE*/]\n  sequence_name [, sequence_name] ...\n\nDescription\n-----------\n\nDROP SEQUENCE removes one or more sequences created with CREATE SEQUENCE. You\nmust have the DROP privilege for each sequence. MariaDB returns an error\nindicating by name which non-existing tables it was unable to drop, but it\nalso drops all of the tables in the list that do exist.\n\nImportant: When a table is dropped, user privileges on the table are not\nautomatically dropped. See GRANT.\n\nIf another connection is using the sequence, a metadata lock is active, and\nthis statement will wait until the lock is released. This is also true for\nnon-transactional tables.\n\nFor each referenced sequence, DROP SEQUENCE drops a temporary sequence with\nthat name, if it exists. If it does not exist, and the TEMPORARY keyword is\nnot used, it drops a non-temporary sequence with the same name, if it exists.\nThe TEMPORARY keyword ensures that a non-temporary sequence will not\naccidentally be dropped.\n\nUse IF EXISTS to prevent an error from occurring for sequences that do not\nexist. A NOTE is generated for each non-existent sequence when using IF\nEXISTS. See SHOW WARNINGS.\n\nDROP SEQUENCE requires the DROP privilege.\n\nNotes\n-----\n\nDROP SEQUENCE only removes sequences, not tables. However, DROP TABLE can\nremove both sequences and tables.\n\n\n\nURL: mariadb.com/kb/en/drop-sequence/','','https://mariadb.com/kb/en/drop-sequence/'),(672,'DROP SERVER',39,'Syntax\n------\n\nDROP SERVER [ IF EXISTS ] server_name\n\nDescription\n-----------\n\nDrops the server definition for the server named server_name. The\ncorresponding row within the mysql.servers table will be deleted. This\nstatement requires the SUPER privilege or, from MariaDB 10.5.2, the FEDERATED\nADMIN privilege.\n\nDropping a server for a table does not affect any FederatedX, FEDERATED,\nConnect or Spider tables that used this connection information when they were\ncreated.\n\nDROP SERVER is not written to the binary log, irrespective of the binary log\nformat being used. From MariaDB 10.1.13, Galera replicates the CREATE SERVER,\nALTER SERVER and DROP SERVER statements.\n\nIF EXISTS\n---------\n\nIf the IF EXISTS clause is used, MariaDB will not return an error if the\nserver does not exist. Unlike all other statements, DROP SERVER IF EXISTS does\nnot issue a note if the server does not exist. See MDEV-9400.\n\nExamples\n--------\n\nDROP SERVER s;\n\nIF EXISTS:\n\nDROP SERVER s;\nERROR 1477 (HY000): The foreign server name you are trying to reference \n does not exist. Data source error:  s\n\nDROP SERVER IF EXISTS s;\nQuery OK, 0 rows affected (0.00 sec)\n\n\n\nURL: mariadb.com/kb/en/drop-server/','','https://mariadb.com/kb/en/drop-server/'),(673,'DROP TABLE',39,'Syntax\n------\n\nDROP [TEMPORARY] TABLE [IF EXISTS] [/*COMMENT TO SAVE*/]\n  tbl_name [, tbl_name] ...\n  [WAIT n|NOWAIT]\n  [RESTRICT | CASCADE]\n\nDescription\n-----------\n\nDROP TABLE removes one or more tables. You must have the DROP privilege for\neach table. All table data and the table definition are removed, as well as\ntriggers associated to the table, so be careful with this statement! If any of\nthe tables named in the argument list do not exist, MariaDB returns an error\nindicating by name which non-existing tables it was unable to drop, but it\nalso drops all of the tables in the list that do exist.\n\nImportant: When a table is dropped, user privileges on the table are not\nautomatically dropped. See GRANT.\n\nIf another thread is using the table in an explicit transaction or an\nautocommit transaction, then the thread acquires a metadata lock (MDL) on the\ntable. The DROP TABLE statement will wait in the \"Waiting for table metadata\nlock\" thread state until the MDL is released. MDLs are released in the\nfollowing cases:\n\n* If an MDL is acquired in an explicit transaction, then the MDL will be\nreleased when the transaction ends.\n* If an MDL is acquired in an autocommit transaction, then the MDL will be\nreleased when the statement ends.\n* Transactional and non-transactional tables are handled the same.\n\nNote that for a partitioned table, DROP TABLE permanently removes the table\ndefinition, all of its partitions, and all of the data which was stored in\nthose partitions. It also removes the partitioning definition (.par) file\nassociated with the dropped table.\n\nFor each referenced table, DROP TABLE drops a temporary table with that name,\nif it exists. If it does not exist, and the TEMPORARY keyword is not used, it\ndrops a non-temporary table with the same name, if it exists. The TEMPORARY\nkeyword ensures that a non-temporary table will not accidentally be dropped.\n\nUse IF EXISTS to prevent an error from occurring for tables that do not exist.\nA NOTE is generated for each non-existent table when using IF EXISTS. See SHOW\nWARNINGS.\n\nIf a foreign key references this table, the table cannot be dropped. In this\ncase, it is necessary to drop the foreign key first.\n\nRESTRICT and CASCADE are allowed to make porting from other database systems\neasier. In MariaDB, they do nothing.\n\nThe comment before the table names (/*COMMENT TO SAVE*/) is stored in the\nbinary log. That feature can be used by replication tools to send their\ninternal messages.\n\nIt is possible to specify table names as db_name.tab_name. This is useful to\ndelete tables from multiple databases with one statement. See Identifier\nQualifiers for details.\n\nThe DROP privilege is required to use DROP TABLE on non-temporary tables. For\ntemporary tables, no privilege is required, because such tables are only\nvisible for the current session.\n\nNote: DROP TABLE automatically commits the current active transaction, unless\nyou use the TEMPORARY keyword.\n\nMariaDB starting with 10.5.4\n----------------------------\nFrom MariaDB 10.5.4, DROP TABLE reliably deletes table remnants inside a\nstorage engine even if the .frm file is missing. Before then, a missing .frm\nfile would result in the statement failing.\n\nMariaDB starting with 10.3.1\n----------------------------\n\nWAIT/NOWAIT\n-----------\n\nSet the lock wait timeout. See WAIT and NOWAIT.\n\nDROP TABLE in replication\n-------------------------\n\nDROP TABLE has the following characteristics in replication:\n\n* DROP TABLE IF EXISTS are always logged.\n* DROP TABLE without IF EXISTS for tables that don\'t exist are not written to\nthe binary log.\n* Dropping of TEMPORARY tables are prefixed in the log with TEMPORARY. These\ndrops are only logged when running statement or mixed mode replication.\n* One DROP TABLE statement can be logged with up to 3 different DROP\nstatements:\nDROP TEMPORARY TABLE list_of_non_transactional_temporary_tables\nDROP TEMPORARY TABLE list_of_transactional_temporary_tables\nDROP TABLE list_of_normal_tables\n\nDROP TABLE on the primary is treated on the replica as DROP TABLE IF EXISTS.\nYou can change that by setting slave-ddl-exec-mode to STRICT.\n\nDropping an Internal #sql-... Table\n-----------------------------------\n\nFrom MariaDB 10.6, DROP TABLE is atomic and the following does not apply.\nUntil MariaDB 10.5, if the mariadbd/mysqld process is killed during an ALTER\nTABLE you may find a table named #sql-... in your data directory. In MariaDB\n10.3, InnoDB tables with this prefix will be deleted automatically during\nstartup. From MariaDB 10.4, these temporary tables will always be deleted\nautomatically.\n\nIf you want to delete one of these tables explicitly you can do so by using\nthe following syntax:\n\nDROP TABLE `#mysql50##sql-...`;\n\nWhen running an ALTER TABLE…ALGORITHM=INPLACE that rebuilds the table, InnoDB\nwill create an internal #sql-ib table. Until MariaDB 10.3.2, for these tables,\nthe .frm file will be called something else. In order to drop such a table\nafter a server crash, you must rename the #sql*.frm file to match the\n#sql-ib*.ibd file.\n\nFrom MariaDB 10.3.3, the same name as the .frm file is used for the\nintermediate copy of the table. The #sql-ib names are used by TRUNCATE and\ndelayed DROP.\n\nFrom MariaDB 10.2.19 and MariaDB 10.3.10, the #sql-ib tables will be deleted\nautomatically.\n\nDropping All Tables in a Database\n---------------------------------\n\nThe best way to drop all tables in a database is by executing DROP DATABASE,\nwhich will drop the database itself, and all tables in it.\n\nHowever, if you want to drop all tables in the database, but you also want to\nkeep the database itself and any other non-table objects in it, then you would\nneed to execute DROP TABLE to drop each individual table. You can construct\nthese DROP TABLE commands by querying the TABLES table in the\ninformation_schema database. For example:\n\nSELECT CONCAT(\'DROP TABLE IF EXISTS `\', TABLE_SCHEMA, \'`.`\', TABLE_NAME, \'`;\')\nFROM information_schema.TABLES\nWHERE TABLE_SCHEMA = \'mydb\';\n\nAtomic DROP TABLE\n-----------------\n\nMariaDB starting with 10.6.1\n----------------------------\nFrom MariaDB 10.6, DROP TABLE for a single table is atomic (MDEV-25180) for\nmost engines, including InnoDB, MyRocks, MyISAM and Aria.\n\nThis means that if there is a crash (server down or power outage) during DROP\nTABLE, all tables that have been processed so far will be completely dropped,\nincluding related trigger files and status entries, and the binary log will\ninclude a DROP TABLE statement for the dropped tables. Tables for which the\ndrop had not started will be left intact.\n\nIn older MariaDB versions, there was a small chance that, during a server\ncrash happening in the middle of DROP TABLE, some storage engines that were\nusing multiple storage files, like MyISAM, could have only a part of its\ninternal files dropped.\n\nIn MariaDB 10.5, DROP TABLE was extended to be able to delete a table that was\nonly partly dropped (MDEV-11412) as explained above. Atomic DROP TABLE is the\nfinal piece to make DROP TABLE fully reliable.\n\nDropping multiple tables is crash-safe.\n\nSee Atomic DDL for more information.\n\nExamples\n--------\n\nDROP TABLE Employees, Customers;\n\nNotes\n-----\n\nBeware that DROP TABLE can drop both tables and sequences. This is mainly done\nto allow old tools like mysqldump to work with sequences.\n\n\n\nURL: mariadb.com/kb/en/drop-table/','','https://mariadb.com/kb/en/drop-table/'),(675,'DROP TRIGGER',39,'Syntax\n------\n\nDROP TRIGGER [IF EXISTS] [schema_name.]trigger_name\n\nDescription\n-----------\n\nThis statement drops a trigger. The schema (database) name is optional. If the\nschema is omitted, the trigger is dropped from the default schema. Its use\nrequires the TRIGGER privilege for the table associated with the trigger.\n\nUse IF EXISTS to prevent an error from occurring for a trigger that does not\nexist. A NOTE is generated for a non-existent trigger when using IF EXISTS.\nSee SHOW WARNINGS.\n\nNote: Triggers for a table are also dropped if you drop the table.\n\nAtomic DDL\n----------\n\nMariaDB starting with 10.6.1\n----------------------------\nMariaDB 10.6.1 supports Atomic DDL and DROP TRIGGER is atomic.\n\nExamples\n--------\n\nDROP TRIGGER test.example_trigger;\n\nUsing the IF EXISTS clause:\n\nDROP TRIGGER IF EXISTS test.example_trigger;\nQuery OK, 0 rows affected, 1 warning (0.01 sec)\n\nSHOW WARNINGS;\n+-------+------+------------------------+\n| Level | Code | Message                |\n+-------+------+------------------------+\n| Note  | 1360 | Trigger does not exist |\n+-------+------+------------------------+\n\n\n\nURL: mariadb.com/kb/en/drop-trigger/','','https://mariadb.com/kb/en/drop-trigger/'),(676,'DROP VIEW',39,'Syntax\n------\n\nDROP VIEW [IF EXISTS]\n  view_name [, view_name] ...\n  [RESTRICT | CASCADE]\n\nDescription\n-----------\n\nDROP VIEW removes one or more views. You must have the DROP privilege for each\nview. If any of the views named in the argument list do not exist, MariaDB\nreturns an error indicating by name which non-existing views it was unable to\ndrop, but it also drops all of the views in the list that do exist.\n\nThe IF EXISTS clause prevents an error from occurring for views that don\'t\nexist. When this clause is given, a NOTE is generated for each non-existent\nview. See SHOW WARNINGS.\n\nRESTRICT and CASCADE, if given, are parsed and ignored.\n\nIt is possible to specify view names as db_name.view_name. This is useful to\ndelete views from multiple databases with one statement. See Identifier\nQualifiers for details.\n\nThe DROP privilege is required to use DROP TABLE on non-temporary tables. For\ntemporary tables, no privilege is required, because such tables are only\nvisible for the current session.\n\nIf a view references another view, it will be possible to drop the referenced\nview. However, the other view will reference a view which does not exist any\nmore. Thus, querying it will produce an error similar to the following:\n\nERROR 1356 (HY000): View \'db_name.view_name\' references invalid table(s) or \ncolumn(s) or function(s) or definer/invoker of view lack rights to use them\n\nThis problem is reported in the output of CHECK TABLE.\n\nNote that it is not necessary to use DROP VIEW to replace an existing view,\nbecause CREATE VIEW has an OR REPLACE clause.\n\nAtomic DDL\n----------\n\nMariaDB starting with 10.6.1\n----------------------------\nMariaDB 10.6.1 supports Atomic DDL and DROP VIEW for a singular view is\natomic. Dropping multiple views is crash-safe.\n\nExamples\n--------\n\nDROP VIEW v,v2;\n\nGiven views v and v2, but no view v3\n\nDROP VIEW v,v2,v3;\nERROR 1051 (42S02): Unknown table \'v3\'\n\nDROP VIEW IF EXISTS v,v2,v3;\nQuery OK, 0 rows affected, 1 warning (0.01 sec)\n\nSHOW WARNINGS;\n+-------+------+-------------------------+\n| Level | Code | Message                 |\n+-------+------+-------------------------+\n| Note  | 1051 | Unknown table \'test.v3\' |\n+-------+------+-------------------------+\n\n\n\nURL: mariadb.com/kb/en/drop-view/','','https://mariadb.com/kb/en/drop-view/'),(678,'RENAME TABLE',39,'Syntax\n------\n\nRENAME TABLE[S] [IF EXISTS] tbl_name \n [WAIT n | NOWAIT]\n TO new_tbl_name\n  [, tbl_name2 TO new_tbl_name2] ...\n\nDescription\n-----------\n\nThis statement renames one or more tables or views, but not the privileges\nassociated with them.\n\nIF EXISTS\n---------\n\nMariaDB starting with 10.5.2\n----------------------------\nIf this directive is used, one will not get an error if the table to be\nrenamed doesn\'t exist.\n\nThe rename operation is done atomically, which means that no other session can\naccess any of the tables while the rename is running. For example, if you have\nan existing table old_table, you can create another table new_table that has\nthe same structure but is empty, and then replace the existing table with the\nempty one as follows (assuming that backup_table does not already exist):\n\nCREATE TABLE new_table (...);\nRENAME TABLE old_table TO backup_table, new_table TO old_table;\n\ntbl_name can optionally be specified as db_name.tbl_name. See Identifier\nQualifiers. This allows to use RENAME to move a table from a database to\nanother (as long as they are on the same filesystem):\n\nRENAME TABLE db1.t TO db2.t;\n\nNote that moving a table to another database is not possible if it has some\ntriggers. Trying to do so produces the following error:\n\nERROR 1435 (HY000): Trigger in wrong schema\n\nAlso, views cannot be moved to another database:\n\nERROR 1450 (HY000): Changing schema from \'old_db\' to \'new_db\' is not allowed.\n\nMultiple tables can be renamed in a single statement. The presence or absence\nof the optional S (RENAME TABLE or RENAME TABLES) has no impact, whether a\nsingle or multiple tables are being renamed.\n\nIf a RENAME TABLE renames more than one table and one renaming fails, all\nrenames executed by the same statement are rolled back.\n\nRenames are always executed in the specified order. Knowing this, it is also\npossible to swap two tables\' names:\n\nRENAME TABLE t1 TO tmp_table,\n  t2 TO t1,\n  tmp_table TO t2;\n\nWAIT/NOWAIT\n-----------\n\nMariaDB starting with 10.3.0\n----------------------------\nSet the lock wait timeout. See WAIT and NOWAIT.\n\nPrivileges\n----------\n\nExecuting the RENAME TABLE statement requires the DROP, CREATE and INSERT\nprivileges for the table or the database.\n\nAtomic RENAME TABLE\n-------------------\n\nMariaDB starting with 10.6.1\n----------------------------\nFrom MariaDB 10.6, RENAME TABLE is atomic for most engines, including InnoDB,\nMyRocks, MyISAM and Aria (MDEV-23842). This means that if there is a crash\n(server down or power outage) during RENAME TABLE, all tables will revert to\ntheir original names and any changes to trigger files will be reverted.\n\nIn older MariaDB version there was a small chance that, during a server crash\nhappening in the middle of RENAME TABLE, some tables could have been renamed\n(in the worst case partly) while others would not be renamed.\n\nSee Atomic DDL for more information.\n\n\n\nURL: mariadb.com/kb/en/rename-table/','','https://mariadb.com/kb/en/rename-table/'),(677,'MERGE',39,'Description\n-----------\n\nThe MERGE storage engine, also known as the MRG_MyISAM engine, is a collection\nof identical MyISAM tables that can be used as one. \"Identical\" means that all\ntables have identical column and index information. You cannot merge MyISAM\ntables in which the columns are listed in a different order, do not have\nexactly the same columns, or have the indexes in different order. However, any\nor all of the MyISAM tables can be compressed with myisampack. Columns names\nand indexes names can be different, as long as data types and NULL/NOT NULL\nclauses are the same. Differences in table options such as AVG_ROW_LENGTH,\nMAX_ROWS, or PACK_KEYS do not matter.\n\nEach index in a MERGE table must match an index in underlying MyISAM tables,\nbut the opposite is not true. Also, a MERGE table cannot have a PRIMARY KEY or\nUNIQUE indexes, because it cannot enforce uniqueness over all underlying\ntables.\n\nThe following options are meaningful for MERGE tables:\n\n* UNION. This option specifies the list of the underlying MyISAM tables. The\nlist is enclosed between parentheses and separated with commas.\n* INSERT_METHOD. This options specifies whether, and how, INSERTs are allowed\nfor the table. Allowed values are: NO (INSERTs are not allowed), FIRST (new\nrows will be written into the first table specified in the UNION list), LAST\n(new rows will be written into the last table specified in the UNION list).\nThe default value is NO.\n\nIf you define a MERGE table with a definition which is different from the\nunderlying MyISAM tables, or one of the underlying tables is not MyISAM, the\nCREATE TABLE statement will not return any error. But any statement which\ninvolves the table will produce an error like the following:\n\nERROR 1168 (HY000): Unable to open underlying table which is differently\ndefined \n or of non-MyISAM type or doesn\'t exist\n\nA CHECK TABLE will show more information about the problem.\n\nThe error is also produced if the table is properly define, but an underlying\ntable\'s definition changes at some point in time.\n\nIf you try to insert a new row into a MERGE table with INSERT_METHOD=NO, you\nwill get an error like the following:\n\nERROR 1036 (HY000): Table \'tbl_name\' is read only\n\nIt is possible to build a MERGE table on MyISAM tables which have one or more\nvirtual columns. MERGE itself does not support virtual columns, thus such\ncolumns will be seen as regular columns. The data types and sizes will still\nneed to be identical, and they cannot be NOT NULL.\n\nExamples\n--------\n\nCREATE TABLE t1 (\n  a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n  message CHAR(20)) ENGINE=MyISAM;\n\nCREATE TABLE t2 (\n  a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n  message CHAR(20)) ENGINE=MyISAM;\n\nINSERT INTO t1 (message) VALUES (\'Testing\'),(\'table\'),(\'t1\');\n\nINSERT INTO t2 (message) VALUES (\'Testing\'),(\'table\'),(\'t2\');\n\nCREATE TABLE total (\n  a INT NOT NULL AUTO_INCREMENT,\n  message CHAR(20), INDEX(a))\n  ENGINE=MERGE UNION=(t1,t2) INSERT_METHOD=LAST;\n\nSELECT * FROM total;\n+---+---------+\n| a | message |\n+---+---------+\n| 1 | Testing |\n| 2 | table   |\n| 3 | t1      |\n| 1 | Testing |\n| 2 | table   |\n| 3 | t2      |\n+---+---------+\n\nIn the following example, we\'ll create three MyISAM tables, and then a MERGE\ntable on them. However, one of them uses a different data type for the column\nb, so a SELECT will produce an error:\n\nCREATE TABLE t1 (\n a INT,\n b INT\n) ENGINE = MyISAM;\n\nCREATE TABLE t2 (\n a INT,\n b INT\n) ENGINE = MyISAM;\n\nCREATE TABLE t3 (\n a INT,\n b TINYINT\n) ENGINE = MyISAM;\n\nCREATE TABLE t_mrg (\n a INT,\n b INT\n) ENGINE = MERGE,UNION=(t1,t2,t3);\n\nSELECT * FROM t_mrg;\nERROR 1168 (HY000): Unable to open underlying table which is differently\ndefined\n or of non-MyISAM type or doesn\'t exist\n\nTo find out what\'s wrong, we\'ll use a CHECK TABLE:\n\nCHECK TABLE t_mrgG\n*************************** 1. row ***************************\n Table: test.t_mrg\n   Op: check\nMsg_type: Error\nMsg_text: Table \'test.t3\' is differently defined or of non-MyISAM type or\ndoesn\'t exist\n*************************** 2. row ***************************\n Table: test.t_mrg\n   Op: check\nMsg_type: Error\nMsg_text: Unable to open underlying table which is differently defined or of\nnon-MyISAM type or doesn\'t exist\n*************************** 3. row ***************************\n Table: test.t_mrg\n   Op: check\nMsg_type: error\nMsg_text: Corrupt\n\nNow, we know that the problem is in t3\'s definition.\n\n\n\nURL: mariadb.com/kb/en/merge/','','https://mariadb.com/kb/en/merge/'),(681,'NEXT VALUE for sequence_name',40,'MariaDB starting with 10.3\n--------------------------\nSEQUENCEs were introduced in MariaDB 10.3\n\nSyntax\n------\n\nNEXT VALUE FOR sequence\n\nor\n\nNEXTVAL(sequence_name)\n\nor in Oracle mode (SQL_MODE=ORACLE)\n\nsequence_name.nextval\n\nNEXT VALUE FOR is ANSI SQL syntax while NEXTVAL() is PostgreSQL syntax.\n\nDescription\n-----------\n\nGenerate next value for a SEQUENCE.\n\n* You can greatly speed up NEXT VALUE by creating the sequence with the CACHE\noption. If not, every NEXT VALUE usage will cause changes in the stored\nSEQUENCE table.\n* When using NEXT VALUE the value will be reserved at once and will not be\nreused, except if the SEQUENCE was created with CYCLE. This means that when\nyou are using SEQUENCEs you have to expect gaps in the generated sequence\nnumbers.\n* If one updates the SEQUENCE with SETVAL() or ALTER SEQUENCE ... RESTART,\nNEXT VALUE FOR will notice this and start from the next requested value.\n* FLUSH TABLES will close the sequence and the next sequence number generated\nwill be according to what\'s stored in the SEQUENCE object. In effect, this\nwill discard the cached values.\n* A server restart (or closing the current connection) also causes a drop of\nall cached values. The cached sequence numbers are reserved only for the\ncurrent connection.\n* NEXT VALUE requires the INSERT privilege.\n\nMariaDB starting with 10.3.3\n----------------------------\n* You can also use NEXT VALUE FOR sequence for column DEFAULT.\n\n\n\nURL: mariadb.com/kb/en/next-value-for-sequence_name/','','https://mariadb.com/kb/en/next-value-for-sequence_name/'),(679,'TRUNCATE TABLE',39,'Syntax\n------\n\nTRUNCATE [TABLE] tbl_name\n [WAIT n | NOWAIT]\n\nDescription\n-----------\n\nTRUNCATE TABLE empties a table completely. It requires the DROP privilege. See\nGRANT.\n\ntbl_name can also be specified in the form db_name.tbl_name (see Identifier\nQualifiers).\n\nLogically, TRUNCATE TABLE is equivalent to a DELETE statement that deletes all\nrows, but there are practical differences under some circumstances.\n\nTRUNCATE TABLE will fail for an InnoDB table if any FOREIGN KEY constraints\nfrom other tables reference the table, returning the error:\n\nERROR 1701 (42000): Cannot truncate a table referenced in a foreign key\nconstraint\n\nForeign Key constraints between columns in the same table are permitted.\n\nFor an InnoDB table, if there are no FOREIGN KEY constraints, InnoDB performs\nfast truncation by dropping the original table and creating an empty one with\nthe same definition, which is much faster than deleting rows one by one. The\nAUTO_INCREMENT counter is reset by TRUNCATE TABLE, regardless of whether there\nis a FOREIGN KEY constraint.\n\nThe count of rows affected by TRUNCATE TABLE is accurate only when it is\nmapped to a DELETE statement.\n\nFor other storage engines, TRUNCATE TABLE differs from DELETE in the following\nways:\n\n* Truncate operations drop and re-create the table, which is much\n faster than deleting rows one by one, particularly for large tables.\n* Truncate operations cause an implicit commit.\n* Truncation operations cannot be performed if the session holds an\n active table lock.\n* Truncation operations do not return a meaningful value for the number\n of deleted rows. The usual result is \"0 rows affected,\" which should\n be interpreted as \"no information.\"\n* As long as the table format file tbl_name.frm is valid, the\n table can be re-created as an empty table\n with TRUNCATE TABLE, even if the data or index files have become\n corrupted.\n* The table handler does not remember the last\n used AUTO_INCREMENT value, but starts counting\n from the beginning. This is true even for MyISAM and InnoDB, which normally\n do not reuse sequence values.\n* When used with partitioned tables, TRUNCATE TABLE preserves\n the partitioning; that is, the data and index files are dropped and\n re-created, while the partition definitions (.par) file is\n unaffected.\n* Since truncation of a table does not make any use of DELETE,\n the TRUNCATE statement does not invoke ON DELETE triggers.\n* TRUNCATE TABLE will only reset the values in the Performance Schema summary\ntables to zero or null, and will not remove the rows.\n\nFor the purposes of binary logging and replication, TRUNCATE TABLE is treated\nas DROP TABLE followed by CREATE TABLE (DDL rather than DML).\n\nTRUNCATE TABLE does not work on views. Currently, TRUNCATE TABLE drops all\nhistorical records from a system-versioned table.\n\nMariaDB starting with 10.3.0\n----------------------------\n\nWAIT/NOWAIT\n-----------\n\nSet the lock wait timeout. See WAIT and NOWAIT.\n\nOracle-mode\n-----------\n\nOracle-mode from MariaDB 10.3 permits the optional keywords REUSE STORAGE or\nDROP STORAGE to be used.\n\nTRUNCATE [TABLE] tbl_name [{DROP | REUSE} STORAGE] [WAIT n | NOWAIT]\n\nThese have no effect on the operation.\n\nPerformance\n-----------\n\nTRUNCATE TABLE is faster than DELETE, because it drops and re-creates a table.\n\nWith InnoDB, TRUNCATE TABLE is slower if innodb_file_per_table=ON is set (the\ndefault). This is because TRUNCATE TABLE unlinks the underlying tablespace\nfile, which can be an expensive operation. See MDEV-8069 for more details.\n\nThe performance issues with innodb_file_per_table=ON can be exacerbated in\ncases where the InnoDB buffer pool is very large and\ninnodb_adaptive_hash_index=ON is set. In that case, using DROP TABLE followed\nby CREATE TABLE instead of TRUNCATE TABLE may perform better. Setting\ninnodb_adaptive_hash_index=OFF (it defaults to ON before MariaDB 10.5) can\nalso help. In MariaDB 10.2 only, from MariaDB 10.2.19, this performance can\nalso be improved by setting innodb_safe_truncate=OFF. See MDEV-9459 for more\ndetails.\n\nSetting innodb_adaptive_hash_index=OFF can also improve TRUNCATE TABLE\nperformance in general. See MDEV-16796 for more details.\n\n\n\nURL: mariadb.com/kb/en/truncate-table/','','https://mariadb.com/kb/en/truncate-table/'),(683,'PREVIOUS VALUE FOR sequence_name',40,'MariaDB starting with 10.3\n--------------------------\nSEQUENCEs were introduced in MariaDB 10.3.\n\nSyntax\n------\n\nPREVIOUS VALUE FOR sequence_name\n\nor\n\nLASTVAL(sequence_name)\n\nor in Oracle mode (SQL_MODE=ORACLE)\n\nsequence_name.currval\n\nPREVIOUS VALUE FOR is IBM DB2 syntax while LASTVAL() is PostgreSQL syntax.\n\nDescription\n-----------\n\nGet last value in the current connection generated from a sequence.\n\n* If the sequence has not yet been used by the connection, PREVIOUS VALUE FOR\nreturns NULL (the same thing applies with a new connection which doesn\'t see a\nlast value for an existing sequence).\n* If a SEQUENCE has been dropped and re-created then it\'s treated as a new\nSEQUENCE and PREVIOUS VALUE FOR will return NULL.\n* FLUSH TABLES has no effect on PREVIOUS VALUE FOR.\n* Previous values for all used sequences are stored per connection until\nconnection ends.\n* PREVIOUS VALUE FOR requires the SELECT privilege.\n\nExample\n-------\n\nCREATE SEQUENCE s START WITH 100 INCREMENT BY 10;\n\nSELECT PREVIOUS VALUE FOR s;\n+----------------------+\n| PREVIOUS VALUE FOR s |\n+----------------------+\n|                 NULL |\n+----------------------+\n\n# The function works for sequences only, if the table is used an error is\ngenerated\nSELECT PREVIOUS VALUE FOR t;\nERROR 4089 (42S02): \'test.t\' is not a SEQUENCE\n\n# Call the NEXT VALUE FOR s:\nSELECT NEXT VALUE FOR s;\n+------------------+\n| NEXT VALUE FOR s |\n+------------------+\n|              100 |\n+------------------+\n\nSELECT PREVIOUS VALUE FOR s;\n+----------------------+\n| PREVIOUS VALUE FOR s |\n+----------------------+\n|                  100 |\n+----------------------+\n\nNow try to start the new connection and check that the last value is still\nNULL, before updating the value in the new connection after the output of the\nnew connection gets current value (110 in the example below). Note that first\nconnection cannot see this change and the result of last value still remains\nthe same (100 in the example above).\n\n$ .mysql -uroot test -e\"SELECT PREVIOUS VALUE FOR s; SELECT NEXT VALUE FOR s;\nSELECT PREVIOUS VALUE FOR s;\"\n+----------------------+\n| PREVIOUS VALUE FOR s |\n+----------------------+\n|                 NULL |\n+----------------------+\n+------------------+\n| NEXT VALUE FOR s |\n+------------------+\n|              110 |\n+------------------+\n+----------------------+\n| PREVIOUS VALUE FOR s |\n+----------------------+\n|                  110 |\n+----------------------+\n\n\n\nURL: mariadb.com/kb/en/previous-value-for-sequence_name/','','https://mariadb.com/kb/en/previous-value-for-sequence_name/'),(685,'SETVAL()',40,'MariaDB starting with 10.3.1\n----------------------------\nSEQUENCEs were introduced in MariaDB 10.3.\n\nSyntax\n------\n\nSETVAL(sequence_name, next_value, [is_used, [round]])\n\nDescription\n-----------\n\nSet the next value to be returned for a SEQUENCE.\n\nThis function is compatible with PostgreSQL syntax, extended with the round\nargument.\n\nIf the is_used argument is not given or is 1 or true, then the next used value\nwill one after the given value. If is_used is 0 or false then the next\ngenerated value will be the given value.\n\nIf round is used then it will set the round value (or the internal cycle\ncount, starting at zero) for the sequence. If round is not used, it\'s assumed\nto be 0.\n\nnext_value must be an integer literal.\n\nFor SEQUENCE tables defined with CYCLE (see CREATE SEQUENCE) one should use\nboth next_value and round to define the next value. In this case the current\nsequence value is defined to be round, next_value.\n\nThe result returned by SETVAL() is next_value or NULL if the given next_value\nand round is smaller than the current value.\n\nSETVAL() will not set the SEQUENCE value to a something that is less than its\ncurrent value. This is needed to ensure that SETVAL() is replication safe. If\nyou want to set the SEQUENCE to a smaller number use ALTER SEQUENCE.\n\nIf CYCLE is used, first round and then next_value are compared to see if the\nvalue is bigger than the current value.\n\nInternally, in the MariaDB server, SETVAL() is used to inform slaves that a\nSEQUENCE has changed value. The slave may get SETVAL() statements out of\norder, but this is ok as only the biggest one will have an effect.\n\nSETVAL requires the INSERT privilege.\n\nExamples\n--------\n\nSELECT setval(foo, 42);           -- Next nextval will return 43\nSELECT setval(foo, 42, true);     -- Same as above\nSELECT setval(foo, 42, false);    -- Next nextval will return 42\n\nSETVAL setting higher and lower values on a sequence with an increment of 10:\n\nSELECT NEXTVAL(s);\n+------------+\n| NEXTVAL(s) |\n+------------+\n|         50 |\n+------------+\n\nSELECT SETVAL(s, 100);\n+----------------+\n| SETVAL(s, 100) |\n+----------------+\n|            100 |\n+----------------+\n\nSELECT NEXTVAL(s);\n+------------+\n| NEXTVAL(s) |\n+------------+\n|        110 |\n+------------+\n\nSELECT SETVAL(s, 50);\n+---------------+\n| SETVAL(s, 50) |\n+---------------+\n|          NULL |\n+---------------+\n\nSELECT NEXTVAL(s);\n+------------+\n| NEXTVAL(s) |\n+------------+\n|        120 |\n+------------+\n\nExample demonstrating round:\n\nCREATE OR REPLACE SEQUENCE s1\n START WITH 1\n MINVALUE 1\n MAXVALUE 99\n INCREMENT BY 1\n CACHE 20\n CYCLE;\n\nSELECT SETVAL(s1, 99, 1, 0);\n+----------------------+\n| SETVAL(s1, 99, 1, 0) |\n+----------------------+\n|                   99 |\n+----------------------+\n\nSELECT NEXTVAL(s1);\n+-------------+\n| NEXTVAL(s1) |\n+-------------+\n|           1 |\n+-------------+\n\nThe following statement returns NULL, as the given next_value and round is\nsmaller than the current value.\n\nSELECT SETVAL(s1, 99, 1, 0);\n+----------------------+\n| SETVAL(s1, 99, 1, 0) |\n+----------------------+\n|                 NULL |\n+----------------------+\n\nSELECT NEXTVAL(s1);\n+-------------+\n| NEXTVAL(s1) |\n+-------------+\n|           2 |\n+-------------+\n\nIncreasing the round from zero to 1 will allow next_value to be returned.\n\nSELECT SETVAL(s1, 99, 1, 1);\n+----------------------+\n| SETVAL(s1, 99, 1, 1) |\n+----------------------+\n|                   99 |\n+----------------------+\n\nSELECT NEXTVAL(s1);\n+-------------+\n| NEXTVAL(s1) |\n+-------------+\n|           1 |\n+-------------+\n\n\n\nURL: mariadb.com/kb/en/setval/','','https://mariadb.com/kb/en/setval/'),(687,'JSON_ARRAY_APPEND',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_ARRAY_APPEND(json_doc, path, value[, path, value] ...)\n\nDescription\n-----------\n\nAppends values to the end of the specified arrays within a JSON document,\nreturning the result, or NULL if any of the arguments are NULL.\n\nEvaluation is performed from left to right, with the resulting document from\nthe previous pair becoming the new value against which the next pair is\nevaluated.\n\nIf the json_doc is not a valid JSON document, or if any of the paths are not\nvalid, or contain a * or ** wildcard, an error is returned.\n\nExamples\n--------\n\nSET @json = \'[1, 2, [3, 4]]\';\n\nSELECT JSON_ARRAY_APPEND(@json, \'$[0]\', 5)\n+-------------------------------------+\n| JSON_ARRAY_APPEND(@json, \'$[0]\', 5) |\n+-------------------------------------+\n| [[1, 5], 2, [3, 4]]                 |\n+-------------------------------------+\n\nSELECT JSON_ARRAY_APPEND(@json, \'$[1]\', 6);\n+-------------------------------------+\n| JSON_ARRAY_APPEND(@json, \'$[1]\', 6) |\n+-------------------------------------+\n| [1, [2, 6], [3, 4]]                 |\n+-------------------------------------+\n\nSELECT JSON_ARRAY_APPEND(@json, \'$[1]\', 6, \'$[2]\', 7);\n+------------------------------------------------+\n| JSON_ARRAY_APPEND(@json, \'$[1]\', 6, \'$[2]\', 7) |\n+------------------------------------------------+\n| [1, [2, 6], [3, 4, 7]]                         |\n+------------------------------------------------+\n\nSELECT JSON_ARRAY_APPEND(@json, \'$\', 5);\n+----------------------------------+\n| JSON_ARRAY_APPEND(@json, \'$\', 5) |\n+----------------------------------+\n| [1, 2, [3, 4], 5]                |\n+----------------------------------+\n\nSET @json = \'{\"A\": 1, \"B\": [2], \"C\": [3, 4]}\';\n\nSELECT JSON_ARRAY_APPEND(@json, \'$.B\', 5);\n+------------------------------------+\n| JSON_ARRAY_APPEND(@json, \'$.B\', 5) |\n+------------------------------------+\n| {\"A\": 1, \"B\": [2, 5], \"C\": [3, 4]} |\n+------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_array_append/','','https://mariadb.com/kb/en/json_array_append/'),(688,'JSON_ARRAY_INSERT',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_ARRAY_INSERT(json_doc, path, value[, path, value] ...)\n\nDescription\n-----------\n\nInserts a value into a JSON document, returning the modified document, or NULL\nif any of the arguments are NULL.\n\nEvaluation is performed from left to right, with the resulting document from\nthe previous pair becoming the new value against which the next pair is\nevaluated.\n\nIf the json_doc is not a valid JSON document, or if any of the paths are not\nvalid, or contain a * or ** wildcard, an error is returned.\n\nExamples\n--------\n\nSET @json = \'[1, 2, [3, 4]]\';\n\nSELECT JSON_ARRAY_INSERT(@json, \'$[0]\', 5);\n+-------------------------------------+\n| JSON_ARRAY_INSERT(@json, \'$[0]\', 5) |\n+-------------------------------------+\n| [5, 1, 2, [3, 4]]                   |\n+-------------------------------------+\n\nSELECT JSON_ARRAY_INSERT(@json, \'$[1]\', 6);\n+-------------------------------------+\n| JSON_ARRAY_INSERT(@json, \'$[1]\', 6) |\n+-------------------------------------+\n| [1, 6, 2, [3, 4]]                   |\n+-------------------------------------+\n\nSELECT JSON_ARRAY_INSERT(@json, \'$[1]\', 6, \'$[2]\', 7);\n+------------------------------------------------+\n| JSON_ARRAY_INSERT(@json, \'$[1]\', 6, \'$[2]\', 7) |\n+------------------------------------------------+\n| [1, 6, 7, 2, [3, 4]]                           |\n+------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_array_insert/','','https://mariadb.com/kb/en/json_array_insert/'),(690,'JSON_CONTAINS',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_CONTAINS(json_doc, val[, path])\n\nDescription\n-----------\n\nReturns whether or not the specified value is found in the given JSON document\nor, optionally, at the specified path within the document. Returns 1 if it\ndoes, 0 if not and NULL if any of the arguments are null. An error occurs if\nthe document or path is not valid, or contains the * or ** wildcards.\n\nExamples\n--------\n\nSET @json = \'{\"A\": 0, \"B\": {\"C\": 1}, \"D\": 2}\';\n\nSELECT JSON_CONTAINS(@json, \'2\', \'$.A\');\n+----------------------------------+\n| JSON_CONTAINS(@json, \'2\', \'$.A\') |\n+----------------------------------+\n|                                0 |\n+----------------------------------+\n\nSELECT JSON_CONTAINS(@json, \'2\', \'$.D\');\n+----------------------------------+\n| JSON_CONTAINS(@json, \'2\', \'$.D\') |\n+----------------------------------+\n|                                1 |\n+----------------------------------+\n\nSELECT JSON_CONTAINS(@json, \'{\"C\": 1}\', \'$.A\');\n+-----------------------------------------+\n| JSON_CONTAINS(@json, \'{\"C\": 1}\', \'$.A\') |\n+-----------------------------------------+\n|                                       0 |\n+-----------------------------------------+\n\nSELECT JSON_CONTAINS(@json, \'{\"C\": 1}\', \'$.B\');\n+-----------------------------------------+\n| JSON_CONTAINS(@json, \'{\"C\": 1}\', \'$.B\') |\n+-----------------------------------------+\n|                                       1 |\n+-----------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_contains/','','https://mariadb.com/kb/en/json_contains/'),(691,'JSON_CONTAINS_PATH',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_CONTAINS_PATH(json_doc, return_arg, path[, path] ...)\n\nDescription\n-----------\n\nIndicates whether the given JSON document contains data at the specified path\nor paths. Returns 1 if it does, 0 if not and NULL if any of the arguments are\nnull.\n\nThe return_arg can be one or all:\n\n* one - Returns 1 if at least one path exists within the JSON document. \n* all - Returns 1 only if all paths exist within the JSON document.\n\nExamples\n--------\n\nSET @json = \'{\"A\": 1, \"B\": [2], \"C\": [3, 4]}\';\n\nSELECT JSON_CONTAINS_PATH(@json, \'one\', \'$.A\', \'$.D\');\n+------------------------------------------------+\n| JSON_CONTAINS_PATH(@json, \'one\', \'$.A\', \'$.D\') |\n+------------------------------------------------+\n|                                              1 |\n+------------------------------------------------+\n1 row in set (0.00 sec)\n\nSELECT JSON_CONTAINS_PATH(@json, \'all\', \'$.A\', \'$.D\');\n+------------------------------------------------+\n| JSON_CONTAINS_PATH(@json, \'all\', \'$.A\', \'$.D\') |\n+------------------------------------------------+\n|                                              0 |\n+------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_contains_path/','','https://mariadb.com/kb/en/json_contains_path/'),(692,'JSON_DEPTH',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_DEPTH(json_doc)\n\nDescription\n-----------\n\nReturns the maximum depth of the given JSON document, or NULL if the argument\nis null. An error will occur if the argument is an invalid JSON document.\n\n* Scalar values or empty arrays or objects have a depth of 1.\n* Arrays or objects that are not empty but contain only elements or member\nvalues of depth 1 will have a depth of 2.\n* In other cases, the depth will be greater than 2.\n\nExamples\n--------\n\nSELECT JSON_DEPTH(\'[]\'), JSON_DEPTH(\'true\'), JSON_DEPTH(\'{}\');\n+------------------+--------------------+------------------+\n| JSON_DEPTH(\'[]\') | JSON_DEPTH(\'true\') | JSON_DEPTH(\'{}\') |\n+------------------+--------------------+------------------+\n|                1 |                  1 |                1 |\n+------------------+--------------------+------------------+\n\nSELECT JSON_DEPTH(\'[1, 2, 3]\'), JSON_DEPTH(\'[[], {}, []]\');\n+-------------------------+----------------------------+\n| JSON_DEPTH(\'[1, 2, 3]\') | JSON_DEPTH(\'[[], {}, []]\') |\n+-------------------------+----------------------------+\n|                       2 |                          2 |\n+-------------------------+----------------------------+\n\nSELECT JSON_DEPTH(\'[1, 2, [3, 4, 5, 6], 7]\');\n+---------------------------------------+\n| JSON_DEPTH(\'[1, 2, [3, 4, 5, 6], 7]\') |\n+---------------------------------------+\n|                                     3 |\n+---------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_depth/','','https://mariadb.com/kb/en/json_depth/'),(693,'JSON_DETAILED',41,'MariaDB starting with 10.2.4\n----------------------------\nThis function was added in MariaDB 10.2.4.\n\nSyntax\n------\n\nJSON_DETAILED(json_doc[, tab_size])\n\nDescription\n-----------\n\nRepresents JSON in the most understandable way emphasizing nested structures.\n\nExample\n-------\n\nSET @j = \'{ \"A\":1,\"B\":[2,3]}\';\n\nSELECT @j;\n+--------------------+\n| @j                 |\n+--------------------+\n| { \"A\":1,\"B\":[2,3]} |\n+--------------------+\n\nSELECT JSON_DETAILED(@j);\n+------------------------------------------------------------+\n| JSON_DETAILED(@j)                                          |\n+------------------------------------------------------------+\n| {\n  \"A\": 1,\n  \"B\":\n  [\n    2,\n    3\n  ]\n} |\n+------------------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_detailed/','','https://mariadb.com/kb/en/json_detailed/'),(694,'JSON_EXISTS',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nDescription\n-----------\n\nDetermines whether a specified JSON value exists in the given data. Returns 1\nif found, 0 if not, or NULL if any of the inputs were NULL.\n\nExamples\n--------\n\nSELECT JSON_EXISTS(\'{\"key1\":\"xxxx\", \"key2\":[1, 2, 3]}\', \"$.key2\");\n+------------------------------------------------------------+\n| JSON_EXISTS(\'{\"key1\":\"xxxx\", \"key2\":[1, 2, 3]}\', \"$.key2\") |\n+------------------------------------------------------------+\n|                                                          1 |\n+------------------------------------------------------------+\n\nSELECT JSON_EXISTS(\'{\"key1\":\"xxxx\", \"key2\":[1, 2, 3]}\', \"$.key3\");\n+------------------------------------------------------------+\n| JSON_EXISTS(\'{\"key1\":\"xxxx\", \"key2\":[1, 2, 3]}\', \"$.key3\") |\n+------------------------------------------------------------+\n|                                                          0 |\n+------------------------------------------------------------+\n\nSELECT JSON_EXISTS(\'{\"key1\":\"xxxx\", \"key2\":[1, 2, 3]}\', \"$.key2[1]\");\n+---------------------------------------------------------------+\n| JSON_EXISTS(\'{\"key1\":\"xxxx\", \"key2\":[1, 2, 3]}\', \"$.key2[1]\") |\n+---------------------------------------------------------------+\n|                                                             1 |\n+---------------------------------------------------------------+\n\nSELECT JSON_EXISTS(\'{\"key1\":\"xxxx\", \"key2\":[1, 2, 3]}\', \"$.key2[10]\");\n+----------------------------------------------------------------+\n| JSON_EXISTS(\'{\"key1\":\"xxxx\", \"key2\":[1, 2, 3]}\', \"$.key2[10]\") |\n+----------------------------------------------------------------+\n|                                                              0 |\n+----------------------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_exists/','','https://mariadb.com/kb/en/json_exists/'),(695,'JSON_EXTRACT',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_EXTRACT(json_doc, path[, path] ...)\n\nDescription\n-----------\n\nExtracts data from a JSON document. The extracted data is selected from the\nparts matching the path arguments. Returns all matched values; either as a\nsingle matched value, or, if the arguments could return multiple values, a\nresult autowrapped as an array in the matching order.\n\nReturns NULL if no paths match or if any of the arguments are NULL.\n\nAn error will occur if any path argument is not a valid path, or if the\njson_doc argument is not a valid JSON document.\n\nThe path expression be a JSONPath expression as supported by MariaDB\n\nExamples\n--------\n\nSET @json = \'[1, 2, [3, 4]]\';\n\nSELECT JSON_EXTRACT(@json, \'$[1]\');\n+-----------------------------+\n| JSON_EXTRACT(@json, \'$[1]\') |\n+-----------------------------+\n| 2                           |\n+-----------------------------+\n\nSELECT JSON_EXTRACT(@json, \'$[2]\');\n+-----------------------------+\n| JSON_EXTRACT(@json, \'$[2]\') |\n+-----------------------------+\n| [3, 4]                      |\n+-----------------------------+\n\nSELECT JSON_EXTRACT(@json, \'$[2][1]\');\n+--------------------------------+\n| JSON_EXTRACT(@json, \'$[2][1]\') |\n+--------------------------------+\n| 4                              |\n+--------------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_extract/','','https://mariadb.com/kb/en/json_extract/'),(696,'JSON_INSERT',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_INSERT(json_doc, path, val[, path, val] ...)\n\nDescription\n-----------\n\nInserts data into a JSON document, returning the resulting document or NULL if\nany argument is null.\n\nAn error will occur if the JSON document is not invalid, or if any of the\npaths are invalid or contain a * or ** wildcard.\n\nJSON_INSERT can only insert data while JSON_REPLACE can only update. JSON_SET\ncan update or insert data.\n\nExamples\n--------\n\nSET @json = \'{ \"A\": 0, \"B\": [1, 2]}\';\n\nSELECT JSON_INSERT(@json, \'$.C\', \'[3, 4]\');\n+--------------------------------------+\n| JSON_INSERT(@json, \'$.C\', \'[3, 4]\')  |\n+--------------------------------------+\n| { \"A\": 0, \"B\": [1, 2], \"C\":\"[3, 4]\"} |\n+--------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_insert/','','https://mariadb.com/kb/en/json_insert/'),(697,'JSON_KEYS',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_KEYS(json_doc[, path])\n\nDescription\n-----------\n\nReturns the keys as a JSON array from the top-level value of a JSON object or,\nif the optional path argument is provided, the top-level keys from the path.\n\nExcludes keys from nested sub-objects in the top level value. The resulting\narray will be empty if the selected object is empty.\n\nReturns NULL if any of the arguments are null, a given path does not locate an\nobject, or if the json_doc argument is not an object.\n\nAn error will occur if JSON document is invalid, the path is invalid or if the\npath contains a * or ** wildcard.\n\nExamples\n--------\n\nSELECT JSON_KEYS(\'{\"A\": 1, \"B\": {\"C\": 2}}\');\n+--------------------------------------+\n| JSON_KEYS(\'{\"A\": 1, \"B\": {\"C\": 2}}\') |\n+--------------------------------------+\n| [\"A\", \"B\"]                           |\n+--------------------------------------+\n\nSELECT JSON_KEYS(\'{\"A\": 1, \"B\": 2, \"C\": {\"D\": 3}}\', \'$.C\');\n+-----------------------------------------------------+\n| JSON_KEYS(\'{\"A\": 1, \"B\": 2, \"C\": {\"D\": 3}}\', \'$.C\') |\n+-----------------------------------------------------+\n| [\"D\"]                                               |\n+-----------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_keys/','','https://mariadb.com/kb/en/json_keys/'),(698,'JSON_LENGTH',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_LENGTH(json_doc[, path])\n\nDescription\n-----------\n\nReturns the length of a JSON document, or, if the optional path argument is\ngiven, the length of the value within the document specified by the path.\n\nReturns NULL if any of the arguments argument are null or the path argument\ndoes not identify a value in the document.\n\nAn error will occur if the JSON document is invalid, the path is invalid or if\nthe path contains a * or ** wildcard.\n\nLength will be determined as follow:\n\n* A scalar\'s length is always 1.\n* If an array, the number of elements in the array.\n* If an object, the number of members in the object.\n\nThe length of nested arrays or objects are not counted.\n\nExamples\n--------\n\n\n\nURL: mariadb.com/kb/en/json_length/','','https://mariadb.com/kb/en/json_length/'),(700,'JSON_MERGE',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_MERGE(json_doc, json_doc[, json_doc] ...)\n\nDescription\n-----------\n\nMerges the given JSON documents.\n\nReturns the merged result,or NULL if any argument is NULL.\n\nAn error occurs if any of the arguments are not valid JSON documents.\n\nJSON_MERGE has been deprecated since MariaDB 10.2.25, MariaDB 10.3.16 and\nMariaDB 10.4.5. JSON_MERGE_PATCH is an RFC 7396-compliant replacement, and\nJSON_MERGE_PRESERVE is a synonym.\n\nExample\n-------\n\nSET @json1 = \'[1, 2]\';\nSET @json2 = \'[3, 4]\';\n\nSELECT JSON_MERGE(@json1,@json2);\n+---------------------------+\n| JSON_MERGE(@json1,@json2) |\n+---------------------------+\n| [1, 2, 3, 4]              |\n+---------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_merge/','','https://mariadb.com/kb/en/json_merge/'),(702,'JSON_QUERY',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_QUERY(json_doc, path)\n\nDescription\n-----------\n\nGiven a JSON document, returns an object or array specified by the path.\nReturns NULL if not given a valid JSON document, or if there is no match.\n\nExamples\n--------\n\nselect json_query(\'{\"key1\":{\"a\":1, \"b\":[1,2]}}\', \'$.key1\');\n+-----------------------------------------------------+\n| json_query(\'{\"key1\":{\"a\":1, \"b\":[1,2]}}\', \'$.key1\') |\n+-----------------------------------------------------+\n| {\"a\":1, \"b\":[1,2]}                                  |\n+-----------------------------------------------------+\n\nselect json_query(\'{\"key1\":123, \"key1\": [1,2,3]}\', \'$.key1\');\n+-------------------------------------------------------+\n| json_query(\'{\"key1\":123, \"key1\": [1,2,3]}\', \'$.key1\') |\n+-------------------------------------------------------+\n| [1,2,3]                                               |\n+-------------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_query/','','https://mariadb.com/kb/en/json_query/'),(703,'JSON_QUOTE',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_QUOTE(json_value)\n\nDescription\n-----------\n\nQuotes a string as a JSON value, usually for producing valid JSON string\nliterals for inclusion in JSON documents. Wraps the string with double quote\ncharacters and escapes interior quotes and other special characters, returning\na utf8mb4 string.\n\nReturns NULL if the argument is NULL.\n\nExamples\n--------\n\nSELECT JSON_QUOTE(\'A\'), JSON_QUOTE(\"B\"), JSON_QUOTE(\'\"C\"\');\n+-----------------+-----------------+-------------------+\n| JSON_QUOTE(\'A\') | JSON_QUOTE(\"B\") | JSON_QUOTE(\'\"C\"\') |\n+-----------------+-----------------+-------------------+\n| \"A\"             | \"B\"             | \"\"C\"\"           |\n+-----------------+-----------------+-------------------+\n\n\n\nURL: mariadb.com/kb/en/json_quote/','','https://mariadb.com/kb/en/json_quote/'),(704,'JSON_REMOVE',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_REMOVE(json_doc, path[, path] ...)\n\nDescription\n-----------\n\nRemoves data from a JSON document returning the result, or NULL if any of the\narguments are null. If the element does not exist in the document, no changes\nare made.\n\nAn error will occur if JSON document is invalid, the path is invalid or if the\npath contains a * or ** wildcard.\n\nPath arguments are evaluated from left to right, with the result from the\nearlier evaluation being used as the value for the next.\n\nExamples\n--------\n\nSELECT JSON_REMOVE(\'{\"A\": 1, \"B\": 2, \"C\": {\"D\": 3}}\', \'$.C\');\n+-------------------------------------------------------+\n| JSON_REMOVE(\'{\"A\": 1, \"B\": 2, \"C\": {\"D\": 3}}\', \'$.C\') |\n+-------------------------------------------------------+\n| {\"A\": 1, \"B\": 2}                                      |\n+-------------------------------------------------------+\n\nSELECT JSON_REMOVE(\'[\"A\", \"B\", [\"C\", \"D\"], \"E\"]\', \'$[1]\');\n+----------------------------------------------------+\n| JSON_REMOVE(\'[\"A\", \"B\", [\"C\", \"D\"], \"E\"]\', \'$[1]\') |\n+----------------------------------------------------+\n| [\"A\", [\"C\", \"D\"], \"E\"]                             |\n+----------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_remove/','','https://mariadb.com/kb/en/json_remove/'),(705,'JSON_REPLACE',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_REPLACE(json_doc, path, val[, path, val] ...)\n\nDescription\n-----------\n\nReplaces existing values in a JSON document, returning the result, or NULL if\nany of the arguments are NULL.\n\nAn error will occur if the JSON document is invalid, the path is invalid or if\nthe path contains a * or ** wildcard.\n\nPaths and values are evaluated from left to right, with the result from the\nearlier evaluation being used as the value for the next.\n\nJSON_REPLACE can only update data, while JSON_INSERT can only insert. JSON_SET\ncan update or insert data.\n\nExamples\n--------\n\nSELECT JSON_REPLACE(\'{ \"A\": 1, \"B\": [2, 3]}\', \'$.B[1]\', 4);\n+-----------------------------------------------------+\n| JSON_REPLACE(\'{ \"A\": 1, \"B\": [2, 3]}\', \'$.B[1]\', 4) |\n+-----------------------------------------------------+\n| { \"A\": 1, \"B\": [2, 4]}                              |\n+-----------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_replace/','','https://mariadb.com/kb/en/json_replace/'),(706,'JSON_SEARCH',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_SEARCH(json_doc, return_arg, search_str[, escape_char[, path] ...])\n\nDescription\n-----------\n\nReturns the path to the given string within a JSON document, or NULL if any of\njson_doc, search_str or a path argument is NULL; if the search string is not\nfound, or if no path exists within the document.\n\nA warning will occur if the JSON document is not valid, any of the path\narguments are not valid, if return_arg is neither one nor all, or if the\nescape character is not a constant. NULL will be returned.\n\nreturn_arg can be one of two values:\n\n* \'one: Terminates after finding the first match, so will return one path\nstring. If there is more than one match, it is undefined which is considered\nfirst.\n* all: Returns all matching path strings, without duplicates. Multiple strings\nare autowrapped as an array. The order is undefined.\n\nExamples\n--------\n\nSET @json = \'[\"A\", [{\"B\": \"1\"}], {\"C\":\"AB\"}, {\"D\":\"BC\"}]\';\n\nSELECT JSON_SEARCH(@json, \'one\', \'AB\');\n+---------------------------------+\n| JSON_SEARCH(@json, \'one\', \'AB\') |\n+---------------------------------+\n| \"$[2].C\"                        |\n+---------------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_search/','','https://mariadb.com/kb/en/json_search/'),(709,'JSON_UNQUOTE',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_UNQUOTE(val)\n\nDescription\n-----------\n\nUnquotes a JSON value, returning a string, or NULL if the argument is null.\n\nAn error will occur if the given value begins and ends with double quotes and\nis an invalid JSON string literal.\n\nIf the given value is not a JSON string, value is passed through unmodified.\n\nCertain character sequences have special meanings within a string. Usually, a\nbackslash is ignored, but the escape sequences in the table below are\nrecognised by MariaDB, unless the SQL Mode is set to NO_BACKSLASH_ESCAPES SQL.\n\n+-----------------------------------------------+-----------------------------+\n| Escape sequence                               | Character                   |\n+-----------------------------------------------+-----------------------------+\n| \"                                            | Double quote (\")            |\n+-----------------------------------------------+-----------------------------+\n|                                             | Backslash                   |\n+-----------------------------------------------+-----------------------------+\n| f                                            | Formfeed                    |\n+-----------------------------------------------+-----------------------------+\n| \n                                            | Newline (linefeed)          |\n+-----------------------------------------------+-----------------------------+\n| \r                                            | Carriage return             |\n+-----------------------------------------------+-----------------------------+\n| 	                                            | Tab                         |\n+-----------------------------------------------+-----------------------------+\n| \\\\                                            | Backslash ()               |\n+-----------------------------------------------+-----------------------------+\n| uXXXX                                        | UTF-8 bytes for Unicode     |\n|                                               | value XXXX                  |\n+-----------------------------------------------+-----------------------------+\n\nExamples\n--------\n\nSELECT JSON_UNQUOTE(\'\"Monty\"\');\n+-------------------------+\n| JSON_UNQUOTE(\'\"Monty\"\') |\n+-------------------------+\n| Monty                   |\n+-------------------------+\n\nWith the default SQL Mode:\n\nSELECT JSON_UNQUOTE(\'Sing	ing\');\n+-----------------------------+\n| JSON_UNQUOTE(\'Sing	ing\') |\n+-----------------------------+\n| Sng	ing                   |\n+-----------------------------+\n\nSetting NO_BACKSLASH_ESCAPES:\n\nSET @@sql_mode = \'NO_BACKSLASH_ESCAPES\';\n\nSELECT JSON_UNQUOTE(\'Sing	ing\');\n+-----------------------------+\n| JSON_UNQUOTE(\'Sing	ing\') |\n+-----------------------------+\n| Sing	ing                 |\n+-----------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_unquote/','','https://mariadb.com/kb/en/json_unquote/'),(708,'JSON_TYPE',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_TYPE(json_val)\n\nDescription\n-----------\n\nReturns the type of a JSON value (as a string), or NULL if the argument is\nnull.\n\nAn error will occur if the argument is an invalid JSON value.\n\nThe following is a complete list of the possible return types:\n\n+-----------------------------------+-----------------+-----------------------+\n| Return type                       | Value           | Example               |\n+-----------------------------------+-----------------+-----------------------+\n| ARRAY                             | JSON array      | [1, 2, {\"key\":        |\n|                                   |                 | \"value\"}]             |\n+-----------------------------------+-----------------+-----------------------+\n| OBJECT                            | JSON object     | {\"key\":\"value\"}       |\n+-----------------------------------+-----------------+-----------------------+\n| BOOLEAN                           | JSON            | true, false           |\n|                                   | true/false      |                       |\n|                                   | literals        |                       |\n+-----------------------------------+-----------------+-----------------------+\n| DOUBLE                            | A number with   | 1.2                   |\n|                                   | at least one    |                       |\n|                                   | floating point  |                       |\n|                                   | decimal.        |                       |\n+-----------------------------------+-----------------+-----------------------+\n| INTEGER                           | A number        | 1                     |\n|                                   | without a       |                       |\n|                                   | floating point  |                       |\n|                                   | decimal.        |                       |\n+-----------------------------------+-----------------+-----------------------+\n| NULL                              | JSON null       | null                  |\n|                                   | literal (this   |                       |\n|                                   | is returned as  |                       |\n|                                   | a string, not   |                       |\n|                                   | to be confused  |                       |\n|                                   | with the SQL    |                       |\n|                                   | NULL value!)    |                       |\n+-----------------------------------+-----------------+-----------------------+\n| STRING                            | JSON String     | \"a sample string\"     |\n+-----------------------------------+-----------------+-----------------------+\n\nExamples\n--------\n\nSELECT JSON_TYPE(\'{\"A\": 1, \"B\": 2, \"C\": 3}\');\n+---------------------------------------+\n| JSON_TYPE(\'{\"A\": 1, \"B\": 2, \"C\": 3}\') |\n+---------------------------------------+\n| OBJECT                                |\n+---------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_type/','','https://mariadb.com/kb/en/json_type/'),(710,'JSON_VALID',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_VALID(value)\n\nDescription\n-----------\n\nIndicates whether the given value is a valid JSON document or not. Returns 1\nif valid, 0 if not, and NULL if the argument is NULL.\n\nFrom MariaDB 10.4.3, the JSON_VALID function is automatically used as a CHECK\nconstraint for the JSON data type alias in order to ensure that a valid json\ndocument is inserted.\n\nExamples\n--------\n\nSELECT JSON_VALID(\'{\"id\": 1, \"name\": \"Monty\"}\');\n+------------------------------------------+\n| JSON_VALID(\'{\"id\": 1, \"name\": \"Monty\"}\') |\n+------------------------------------------+\n|                                        1 |\n+------------------------------------------+\n\nSELECT JSON_VALID(\'{\"id\": 1, \"name\": \"Monty\", \"oddfield\"}\');\n+------------------------------------------------------+\n| JSON_VALID(\'{\"id\": 1, \"name\": \"Monty\", \"oddfield\"}\') |\n+------------------------------------------------------+\n|                                                    0 |\n+------------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/json_valid/','','https://mariadb.com/kb/en/json_valid/'),(711,'JSON_VALUE',41,'MariaDB starting with 10.2.3\n----------------------------\nJSON functions were added in MariaDB 10.2.3.\n\nSyntax\n------\n\nJSON_VALUE(json_doc, path)\n\nDescription\n-----------\n\nGiven a JSON document, returns the scalar specified by the path. Returns NULL\nif not given a valid JSON document, or if there is no match.\n\nExamples\n--------\n\nselect json_value(\'{\"key1\":123}\', \'$.key1\');\n+--------------------------------------+\n| json_value(\'{\"key1\":123}\', \'$.key1\') |\n+--------------------------------------+\n| 123                                  |\n+--------------------------------------+\n\nselect json_value(\'{\"key1\": [1,2,3], \"key1\":123}\', \'$.key1\');\n+-------------------------------------------------------+\n| json_value(\'{\"key1\": [1,2,3], \"key1\":123}\', \'$.key1\') |\n+-------------------------------------------------------+\n| 123                                                   |\n+-------------------------------------------------------+\n\nIn the SET statement below, two escape characters are needed, as a single\nescape character would be applied by the SQL parser in the SET statement, and\nthe escaped character would not form part of the saved value.\n\nSET @json = \'{\"key1\":\"60\\\\\" Table\", \"key2\":\"1\"}\';\n\nSELECT JSON_VALUE(@json,\'$.key1\') AS Name , json_value(@json,\'$.key2\') as ID;\n+-----------+------+\n| Name      | ID   |\n+-----------+------+\n| 60\" Table | 1    |\n+-----------+------+\n\n\n\nURL: mariadb.com/kb/en/json_value/','','https://mariadb.com/kb/en/json_value/'),(712,'CUME_DIST',42,'MariaDB starting with 10.2\n--------------------------\nThe CUME_DIST() function was first introduced with window functions in MariaDB\n10.2.0.\n\nSyntax\n------\n\nCUME_DIST() OVER ( \n [ PARTITION BY partition_expression ]\n [ ORDER BY order_list ]\n)\n\nDescription\n-----------\n\nCUME_DIST() is a window function that returns the cumulative distribution of a\ngiven row. The following formula is used to calculate the value:\n\n(number of rows <= current row) / (total rows)\n\nExamples\n--------\n\ncreate table t1 (\n pk int primary key,\n a int,\n b int\n);\n\ninsert into t1 values\n( 1 , 0, 10),\n( 2 , 0, 10),\n( 3 , 1, 10),\n( 4 , 1, 10),\n( 8 , 2, 10),\n( 5 , 2, 20),\n( 6 , 2, 20),\n( 7 , 2, 20),\n( 9 , 4, 20),\n(10 , 4, 20);\n\nselect pk, a, b,\n  rank() over (order by a) as rank,\n  percent_rank() over (order by a) as pct_rank,\n  cume_dist() over (order by a) as cume_dist\nfrom t1;\n+----+------+------+------+--------------+--------------+\n| pk | a    | b    | rank | pct_rank     | cume_dist    |\n+----+------+------+------+--------------+--------------+\n|  1 |    0 |   10 |    1 | 0.0000000000 | 0.2000000000 |\n|  2 |    0 |   10 |    1 | 0.0000000000 | 0.2000000000 |\n|  3 |    1 |   10 |    3 | 0.2222222222 | 0.4000000000 |\n|  4 |    1 |   10 |    3 | 0.2222222222 | 0.4000000000 |\n|  5 |    2 |   20 |    5 | 0.4444444444 | 0.8000000000 |\n|  6 |    2 |   20 |    5 | 0.4444444444 | 0.8000000000 |\n|  7 |    2 |   20 |    5 | 0.4444444444 | 0.8000000000 |\n|  8 |    2 |   10 |    5 | 0.4444444444 | 0.8000000000 |\n|  9 |    4 |   20 |    9 | 0.8888888889 | 1.0000000000 |\n| 10 |    4 |   20 |    9 | 0.8888888889 | 1.0000000000 |\n+----+------+------+------+--------------+--------------+\n\nselect pk, a, b,\n   percent_rank() over (order by pk) as pct_rank,\n   cume_dist() over (order by pk) as cume_dist\nfrom t1 order by pk;\n+----+------+------+--------------+--------------+\n| pk | a    | b    | pct_rank     | cume_dist    |\n+----+------+------+--------------+--------------+\n|  1 |    0 |   10 | 0.0000000000 | 0.1000000000 |\n|  2 |    0 |   10 | 0.1111111111 | 0.2000000000 |\n|  3 |    1 |   10 | 0.2222222222 | 0.3000000000 |\n|  4 |    1 |   10 | 0.3333333333 | 0.4000000000 |\n|  5 |    2 |   20 | 0.4444444444 | 0.5000000000 |\n|  6 |    2 |   20 | 0.5555555556 | 0.6000000000 |\n|  7 |    2 |   20 | 0.6666666667 | 0.7000000000 |\n|  8 |    2 |   10 | 0.7777777778 | 0.8000000000 |\n|  9 |    4 |   20 | 0.8888888889 | 0.9000000000 |\n| 10 |    4 |   20 | 1.0000000000 | 1.0000000000 |\n+----+------+------+--------------+--------------+\n\nselect pk, a, b,\n    percent_rank() over (partition by a order by a) as pct_rank,\n    cume_dist() over (partition by a order by a) as cume_dist\nfrom t1;\n+----+------+------+--------------+--------------+\n| pk | a    | b    | pct_rank     | cume_dist    |\n+----+------+------+--------------+--------------+\n|  1 |    0 |   10 | 0.0000000000 | 1.0000000000 |\n|  2 |    0 |   10 | 0.0000000000 | 1.0000000000 |\n|  3 |    1 |   10 | 0.0000000000 | 1.0000000000 |\n|  4 |    1 |   10 | 0.0000000000 | 1.0000000000 |\n|  5 |    2 |   20 | 0.0000000000 | 1.0000000000 |\n|  6 |    2 |   20 | 0.0000000000 | 1.0000000000 |\n|  7 |    2 |   20 | 0.0000000000 | 1.0000000000 |\n|  8 |    2 |   10 | 0.0000000000 | 1.0000000000 |\n|  9 |    4 |   20 | 0.0000000000 | 1.0000000000 |\n| 10 |    4 |   20 | 0.0000000000 | 1.0000000000 |\n+----+------+------+--------------+--------------+\n\n\n\nURL: mariadb.com/kb/en/cume_dist/','','https://mariadb.com/kb/en/cume_dist/'),(713,'DENSE_RANK',42,'MariaDB starting with 10.2\n--------------------------\nThe DENSE_RANK() function was first introduced with window functions in\nMariaDB 10.2.0.\n\nSyntax\n------\n\nDENSE_RANK() OVER (\n [ PARTITION BY partition_expression ]\n [ ORDER BY order_list ]\n)\n\nDescription\n-----------\n\nDENSE_RANK() is a window function that displays the number of a given row,\nstarting at one and following the ORDER BY sequence of the window function,\nwith identical values receiving the same result. Unlike the RANK() function,\nthere are no skipped values if the preceding results are identical. It is also\nsimilar to the ROW_NUMBER() function except that in that function, identical\nvalues will receive a different row number for each result.\n\nExamples\n--------\n\nThe distinction between DENSE_RANK(), RANK() and ROW_NUMBER():\n\nCREATE TABLE student(course VARCHAR(10), mark int, name varchar(10));\n\nINSERT INTO student VALUES \n (\'Maths\', 60, \'Thulile\'),\n (\'Maths\', 60, \'Pritha\'),\n (\'Maths\', 70, \'Voitto\'),\n (\'Maths\', 55, \'Chun\'),\n (\'Biology\', 60, \'Bilal\'),\n (\'Biology\', 70, \'Roger\');\n\nSELECT \n RANK() OVER (PARTITION BY course ORDER BY mark DESC) AS rank,\n DENSE_RANK() OVER (PARTITION BY course ORDER BY mark DESC) AS dense_rank,\n ROW_NUMBER() OVER (PARTITION BY course ORDER BY mark DESC) AS row_num,\n course, mark, name\nFROM student ORDER BY course, mark DESC;\n+------+------------+---------+---------+------+---------+\n| rank | dense_rank | row_num | course  | mark | name    |\n+------+------------+---------+---------+------+---------+\n|    1 |          1 |       1 | Biology |   70 | Roger   |\n|    2 |          2 |       2 | Biology |   60 | Bilal   |\n|    1 |          1 |       1 | Maths   |   70 | Voitto  |\n|    2 |          2 |       2 | Maths   |   60 | Thulile |\n|    2 |          2 |       3 | Maths   |   60 | Pritha  |\n|    4 |          3 |       4 | Maths   |   55 | Chun    |\n+------+------------+---------+---------+------+---------+\n\n\n\nURL: mariadb.com/kb/en/dense_rank/','','https://mariadb.com/kb/en/dense_rank/'),(714,'FIRST_VALUE',42,'MariaDB starting with 10.2.2\n----------------------------\nThe FIRST_VALUE() function was first introduced with other window functions in\nMariaDB 10.2.\n\nSyntax\n------\n\nFIRST_VALUE(expr) OVER (\n [ PARTITION BY partition_expression ]\n [ ORDER BY order_list ]\n)\n\nDescription\n-----------\n\nFIRST_VALUE returns the first result from an ordered set, or NULL if no such\nresult exists.\n\nExamples\n--------\n\nCREATE TABLE t1 (\n pk int primary key,\n a int,\n b int,\n c char(10),\n d decimal(10, 3),\n e real\n);\n\nINSERT INTO t1 VALUES\n( 1, 0, 1,    \'one\',    0.1,  0.001),\n( 2, 0, 2,    \'two\',    0.2,  0.002),\n( 3, 0, 3,    \'three\',  0.3,  0.003),\n( 4, 1, 2,    \'three\',  0.4,  0.004),\n( 5, 1, 1,    \'two\',    0.5,  0.005),\n( 6, 1, 1,    \'one\',    0.6,  0.006),\n( 7, 2, NULL, \'n_one\',  0.5,  0.007),\n( 8, 2, 1,    \'n_two\',  NULL, 0.008),\n( 9, 2, 2,    NULL,     0.7,  0.009),\n(10, 2, 0,    \'n_four\', 0.8,  0.010),\n(11, 2, 10,   NULL,     0.9,  NULL);\n\nSELECT pk, FIRST_VALUE(pk) OVER (ORDER BY pk) AS first_asc,\n     LAST_VALUE(pk) OVER (ORDER BY pk) AS last_asc,\n     FIRST_VALUE(pk) OVER (ORDER BY pk DESC) AS first_desc,\n     LAST_VALUE(pk) OVER (ORDER BY pk DESC) AS last_desc\nFROM t1\nORDER BY pk DESC;\n\n+----+-----------+----------+------------+-----------+\n| pk | first_asc | last_asc | first_desc | last_desc |\n+----+-----------+----------+------------+-----------+\n| 11 |         1 |       11 |         11 |        11 |\n| 10 |         1 |       10 |         11 |        10 |\n|  9 |         1 |        9 |         11 |         9 |\n|  8 |         1 |        8 |         11 |         8 |\n|  7 |         1 |        7 |         11 |         7 |\n|  6 |         1 |        6 |         11 |         6 |\n|  5 |         1 |        5 |         11 |         5 |\n|  4 |         1 |        4 |         11 |         4 |\n|  3 |         1 |        3 |         11 |         3 |\n|  2 |         1 |        2 |         11 |         2 |\n|  1 |         1 |        1 |         11 |         1 |\n+----+-----------+----------+------------+-----------+\n\nCREATE OR REPLACE TABLE t1 (i int);\nINSERT INTO t1 VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);\n\nSELECT i,\n FIRST_VALUE(i) OVER (ORDER BY i ROWS BETWEEN CURRENT ROW and 1 FOLLOWING) AS\nf_1f,\n LAST_VALUE(i) OVER (ORDER BY i ROWS BETWEEN CURRENT ROW and 1 FOLLOWING) AS\nl_1f,\n FIRST_VALUE(i) OVER (ORDER BY i ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS\nf_1p1f,\n LAST_VALUE(i) OVER (ORDER BY i ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS\nf_1p1f,\n FIRST_VALUE(i) OVER (ORDER BY i ROWS BETWEEN 2 PRECEDING AND 1 PRECEDING) AS\nf_2p1p,\n LAST_VALUE(i) OVER (ORDER BY i ROWS BETWEEN 2 PRECEDING AND 1 PRECEDING) AS\nf_2p1p,\n FIRST_VALUE(i) OVER (ORDER BY i ROWS BETWEEN 1 FOLLOWING AND 2 FOLLOWING) AS\nf_1f2f,\n LAST_VALUE(i) OVER (ORDER BY i ROWS BETWEEN 1 FOLLOWING AND 2 FOLLOWING) AS\nf_1f2f\nFROM t1;\n\n+------+------+------+--------+--------+--------+--------+--------+--------+\n| i    | f_1f | l_1f | f_1p1f | f_1p1f | f_2p1p | f_2p1p | f_1f2f | f_1f2f |\n+------+------+------+--------+--------+--------+--------+--------+--------+\n|    1 |    1 |    2 |      1 |      2 |   NULL |   NULL |      2 |      3 |\n|    2 |    2 |    3 |      1 |      3 |      1 |      1 |      3 |      4 |\n|    3 |    3 |    4 |      2 |      4 |      1 |      2 |      4 |      5 |\n|    4 |    4 |    5 |      3 |      5 |      2 |      3 |      5 |      6 |\n|    5 |    5 |    6 |      4 |      6 |      3 |      4 |      6 |      7 |\n|    6 |    6 |    7 |      5 |      7 |      4 |      5 |      7 |      8 |\n|    7 |    7 |    8 |      6 |      8 |      5 |      6 |      8 |      9 |\n|    8 |    8 |    9 |      7 |      9 |      6 |      7 |      9 |     10 |\n|    9 |    9 |   10 |      8 |     10 |      7 |      8 |     10 |     10 |\n|   10 |   10 |   10 |      9 |     10 |      8 |      9 |   NULL |   NULL |\n+------+------+------+--------+--------+--------+--------+--------+--------+\n\n\n\nURL: mariadb.com/kb/en/first_value/','','https://mariadb.com/kb/en/first_value/'),(715,'LAG',42,'MariaDB starting with 10.2.2\n----------------------------\nThe LAG() function was first introduced with other window functions in MariaDB\n10.2.\n\nSyntax\n------\n\nLAG (expr[, offset]) OVER ( \n [ PARTITION BY partition_expression ]\n < ORDER BY order_list >\n)\n\nDescription\n-----------\n\nThe LAG function accesses data from a previous row according to the ORDER BY\nclause without the need for a self-join. The specific row is determined by the\noffset (default 1), which specifies the number of rows behind the current row\nto use. An offset of 0 is the current row.\n\nExamples\n--------\n\nCREATE TABLE t1 (pk int primary key, a int, b int, c char(10), d decimal(10,\n3), e real);\n\nINSERT INTO t1 VALUES\n ( 1, 0, 1,    \'one\',    0.1,  0.001),\n ( 2, 0, 2,    \'two\',    0.2,  0.002),\n ( 3, 0, 3,    \'three\',  0.3,  0.003),\n ( 4, 1, 2,    \'three\',  0.4,  0.004),\n ( 5, 1, 1,    \'two\',    0.5,  0.005),\n ( 6, 1, 1,    \'one\',    0.6,  0.006),\n ( 7, 2, NULL, \'n_one\',  0.5,  0.007),\n ( 8, 2, 1,    \'n_two\',  NULL, 0.008),\n ( 9, 2, 2,    NULL,     0.7,  0.009),\n (10, 2, 0,    \'n_four\', 0.8,  0.010),\n (11, 2, 10,   NULL,     0.9,  NULL);\n\nSELECT pk, LAG(pk) OVER (ORDER BY pk) AS l,\n LAG(pk,1) OVER (ORDER BY pk) AS l1,\n LAG(pk,2) OVER (ORDER BY pk) AS l2,\n LAG(pk,0) OVER (ORDER BY pk) AS l0,\n LAG(pk,-1) OVER (ORDER BY pk) AS lm1,\n LAG(pk,-2) OVER (ORDER BY pk) AS lm2\nFROM t1;\n+----+------+------+------+------+------+------+\n| pk | l    | l1   | l2   | l0   | lm1  | lm2  |\n+----+------+------+------+------+------+------+\n|  1 | NULL | NULL | NULL |    1 |    2 |    3 |\n|  2 |    1 |    1 | NULL |    2 |    3 |    4 |\n|  3 |    2 |    2 |    1 |    3 |    4 |    5 |\n|  4 |    3 |    3 |    2 |    4 |    5 |    6 |\n|  5 |    4 |    4 |    3 |    5 |    6 |    7 |\n|  6 |    5 |    5 |    4 |    6 |    7 |    8 |\n|  7 |    6 |    6 |    5 |    7 |    8 |    9 |\n|  8 |    7 |    7 |    6 |    8 |    9 |   10 |\n|  9 |    8 |    8 |    7 |    9 |   10 |   11 |\n| 10 |    9 |    9 |    8 |   10 |   11 | NULL |\n| 11 |   10 |   10 |    9 |   11 | NULL | NULL |\n+----+------+------+------+------+------+------+\n\n\n\nURL: mariadb.com/kb/en/lag/','','https://mariadb.com/kb/en/lag/'),(717,'MEDIAN',42,'MariaDB starting with 10.3.3\n----------------------------\nThe MEDIAN() window function was first introduced with in MariaDB 10.3.3.\n\nSyntax\n------\n\nMEDIAN(median expression) OVER (\n [ PARTITION BY partition_expression ]\n)\n\nDescription\n-----------\n\nMEDIAN() is a window function that returns the median value of a range of\nvalues.\n\nIt is a specific case of PERCENTILE_CONT, with an argument of 0.5 and the\nORDER BY column the one in MEDIAN\'s argument.\n\nMEDIAN(<median-arg>) OVER ( [ PARTITION BY partition_expression] )\n\nIs equivalent to:\n\nPERCENTILE_CONT(0.5) WITHIN \n GROUP (ORDER BY <median-arg>) OVER ( [ PARTITION BY partition_expression ])\n\nExamples\n--------\n\nCREATE TABLE book_rating (name CHAR(30), star_rating TINYINT);\n\nINSERT INTO book_rating VALUES (\'Lord of the Ladybirds\', 5);\nINSERT INTO book_rating VALUES (\'Lord of the Ladybirds\', 3);\nINSERT INTO book_rating VALUES (\'Lady of the Flies\', 1);\nINSERT INTO book_rating VALUES (\'Lady of the Flies\', 2);\nINSERT INTO book_rating VALUES (\'Lady of the Flies\', 5);\n\nSELECT name, median(star_rating) OVER (PARTITION BY name) FROM book_rating;\n+-----------------------+----------------------------------------------+\n| name                  | median(star_rating) OVER (PARTITION BY name) |\n+-----------------------+----------------------------------------------+\n| Lord of the Ladybirds |                                 4.0000000000 |\n| Lord of the Ladybirds |                                 4.0000000000 |\n| Lady of the Flies     |                                 2.0000000000 |\n| Lady of the Flies     |                                 2.0000000000 |\n| Lady of the Flies     |                                 2.0000000000 |\n+-----------------------+----------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/median/','','https://mariadb.com/kb/en/median/'),(719,'NTILE',42,'MariaDB starting with 10.2\n--------------------------\nThe NTILE() function was first introduced with window functions in MariaDB\n10.2.0.\n\nSyntax\n------\n\nNTILE (expr) OVER ( \n [ PARTITION BY partition_expression ]\n [ ORDER BY order_list ]\n)\n\nDescription\n-----------\n\nNTILE() is a window function that returns an integer indicating which group a\ngiven row falls into. The number of groups is specified in the argument\n(expr), starting at one. Ordered rows in the partition are divided into the\nspecified number of groups with as equal a size as possible.\n\nExamples\n--------\n\ncreate table t1 (\n  pk int primary key,\n  a int,\n  b int\n );\n\ninsert into t1 values\n  (11 , 0, 10),\n  (12 , 0, 10),\n  (13 , 1, 10),\n  (14 , 1, 10),\n  (18 , 2, 10),\n  (15 , 2, 20),\n  (16 , 2, 20),\n  (17 , 2, 20),\n  (19 , 4, 20),\n  (20 , 4, 20);\n\nselect pk, a, b,\n  ntile(1) over (order by pk)\n from t1;\n+----+------+------+-----------------------------+\n| pk | a    | b    | ntile(1) over (order by pk) |\n+----+------+------+-----------------------------+\n| 11 |    0 |   10 |                           1 |\n| 12 |    0 |   10 |                           1 |\n| 13 |    1 |   10 |                           1 |\n| 14 |    1 |   10 |                           1 |\n| 15 |    2 |   20 |                           1 |\n| 16 |    2 |   20 |                           1 |\n| 17 |    2 |   20 |                           1 |\n| 18 |    2 |   10 |                           1 |\n| 19 |    4 |   20 |                           1 |\n| 20 |    4 |   20 |                           1 |\n+----+------+------+-----------------------------+\n\nselect pk, a, b,\n  ntile(4) over (order by pk)\n from t1;\n+----+------+------+-----------------------------+\n| pk | a    | b    | ntile(4) over (order by pk) |\n+----+------+------+-----------------------------+\n| 11 |    0 |   10 |                           1 |\n| 12 |    0 |   10 |                           1 |\n| 13 |    1 |   10 |                           1 |\n| 14 |    1 |   10 |                           2 |\n| 15 |    2 |   20 |                           2 |\n| 16 |    2 |   20 |                           2 |\n| 17 |    2 |   20 |                           3 |\n| 18 |    2 |   10 |                           3 |\n| 19 |    4 |   20 |                           4 |\n| 20 |    4 |   20 |                           4 |\n+----+------+------+-----------------------------+\n\n\n\nURL: mariadb.com/kb/en/ntile/','','https://mariadb.com/kb/en/ntile/'),(722,'PERCENTILE_DISC',42,'MariaDB starting with 10.3.3\n----------------------------\nThe PERCENTILE_DISC() window function was first introduced with in MariaDB\n10.3.3.\n\nSyntax\n------\n\nDescription\n-----------\n\nPERCENTILE_DISC() (standing for discrete percentile) is a window function\nwhich returns the first value in the set whose ordered position is the same or\nmore than the specified fraction.\n\nEssentially, the following process is followed to find the value to return:\n\n* Get the number of rows in the partition.\n* Walk through the partition, in order, until finding the the first row with\nCUME_DIST() >= function_argument.\n\nExamples\n--------\n\nCREATE TABLE book_rating (name CHAR(30), star_rating TINYINT);\n\nINSERT INTO book_rating VALUES (\'Lord of the Ladybirds\', 5);\nINSERT INTO book_rating VALUES (\'Lord of the Ladybirds\', 3);\nINSERT INTO book_rating VALUES (\'Lady of the Flies\', 1);\nINSERT INTO book_rating VALUES (\'Lady of the Flies\', 2);\nINSERT INTO book_rating VALUES (\'Lady of the Flies\', 5);\n\nSELECT name, PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY star_rating)\n OVER (PARTITION BY name) AS pc FROM book_rating;\n+-----------------------+------+\n| name                  | pc   |\n+-----------------------+------+\n| Lord of the Ladybirds |    3 |\n| Lord of the Ladybirds |    3 |\n| Lady of the Flies     |    2 |\n| Lady of the Flies     |    2 |\n| Lady of the Flies     |    2 |\n+-----------------------+------+\n5 rows in set (0.000 sec)\n\nSELECT name, PERCENTILE_DISC(0) WITHIN GROUP (ORDER BY star_rating) \n OVER (PARTITION BY name) AS pc FROM book_rating;\n+-----------------------+------+\n| name                  | pc   |\n+-----------------------+------+\n| Lord of the Ladybirds |    3 |\n| Lord of the Ladybirds |    3 |\n| Lady of the Flies     |    1 |\n| Lady of the Flies     |    1 |\n| Lady of the Flies     |    1 |\n+-----------------------+------+\n5 rows in set (0.000 sec)\n\nSELECT name, PERCENTILE_DISC(1) WITHIN GROUP (ORDER BY star_rating) \n OVER (PARTITION BY name) AS pc FROM book_rating;\n+-----------------------+------+\n| name                  | pc   |\n+-----------------------+------+\n| Lord of the Ladybirds |    5 |\n| Lord of the Ladybirds |    5 |\n| Lady of the Flies     |    5 |\n| Lady of the Flies     |    5 |\n| Lady of the Flies     |    5 |\n+-----------------------+------+\n5 rows in set (0.000 sec)\n\nSELECT name, PERCENTILE_DISC(0.6) WITHIN GROUP (ORDER BY star_rating) \n OVER (PARTITION BY name) AS pc FROM book_rating;\n+-----------------------+------+\n| name                  | pc   |\n+-----------------------+------+\n| Lord of the Ladybirds |    5 |\n| Lord of the Ladybirds |    5 |\n| Lady of the Flies     |    2 |\n| Lady of the Flies     |    2 |\n| Lady of the Flies     |    2 |\n+-----------------------+------\n\n\n\nURL: mariadb.com/kb/en/percentile_disc/','','https://mariadb.com/kb/en/percentile_disc/'),(720,'PERCENT_RANK',42,'MariaDB starting with 10.2\n--------------------------\nThe PERCENT_RANK() function was first introduced with window functions in\nMariaDB 10.2.0.\n\nSyntax\n------\n\nPERCENT_RANK() OVER (\n [ PARTITION BY partition_expression ]\n [ ORDER BY order_list ]\n)\n\nDescription\n-----------\n\nPERCENT_RANK() is a window function that returns the relative percent rank of\na given row. The following formula is used to calculate the percent rank:\n\n(rank - 1) / (number of rows in the window or partition - 1)\n\nExamples\n--------\n\ncreate table t1 (\n pk int primary key,\n a int,\n b int\n);\n\ninsert into t1 values\n( 1 , 0, 10),\n( 2 , 0, 10),\n( 3 , 1, 10),\n( 4 , 1, 10),\n( 8 , 2, 10),\n( 5 , 2, 20),\n( 6 , 2, 20),\n( 7 , 2, 20),\n( 9 , 4, 20),\n(10 , 4, 20);\n\nselect pk, a, b,\n  rank() over (order by a) as rank,\n  percent_rank() over (order by a) as pct_rank,\n  cume_dist() over (order by a) as cume_dist\nfrom t1;\n+----+------+------+------+--------------+--------------+\n| pk | a    | b    | rank | pct_rank     | cume_dist    |\n+----+------+------+------+--------------+--------------+\n|  1 |    0 |   10 |    1 | 0.0000000000 | 0.2000000000 |\n|  2 |    0 |   10 |    1 | 0.0000000000 | 0.2000000000 |\n|  3 |    1 |   10 |    3 | 0.2222222222 | 0.4000000000 |\n|  4 |    1 |   10 |    3 | 0.2222222222 | 0.4000000000 |\n|  5 |    2 |   20 |    5 | 0.4444444444 | 0.8000000000 |\n|  6 |    2 |   20 |    5 | 0.4444444444 | 0.8000000000 |\n|  7 |    2 |   20 |    5 | 0.4444444444 | 0.8000000000 |\n|  8 |    2 |   10 |    5 | 0.4444444444 | 0.8000000000 |\n|  9 |    4 |   20 |    9 | 0.8888888889 | 1.0000000000 |\n| 10 |    4 |   20 |    9 | 0.8888888889 | 1.0000000000 |\n+----+------+------+------+--------------+--------------+\n\nselect pk, a, b,\n   percent_rank() over (order by pk) as pct_rank,\n   cume_dist() over (order by pk) as cume_dist\nfrom t1 order by pk;\n+----+------+------+--------------+--------------+\n| pk | a    | b    | pct_rank     | cume_dist    |\n+----+------+------+--------------+--------------+\n|  1 |    0 |   10 | 0.0000000000 | 0.1000000000 |\n|  2 |    0 |   10 | 0.1111111111 | 0.2000000000 |\n|  3 |    1 |   10 | 0.2222222222 | 0.3000000000 |\n|  4 |    1 |   10 | 0.3333333333 | 0.4000000000 |\n|  5 |    2 |   20 | 0.4444444444 | 0.5000000000 |\n|  6 |    2 |   20 | 0.5555555556 | 0.6000000000 |\n|  7 |    2 |   20 | 0.6666666667 | 0.7000000000 |\n|  8 |    2 |   10 | 0.7777777778 | 0.8000000000 |\n|  9 |    4 |   20 | 0.8888888889 | 0.9000000000 |\n| 10 |    4 |   20 | 1.0000000000 | 1.0000000000 |\n+----+------+------+--------------+--------------+\n\nselect pk, a, b,\n    percent_rank() over (partition by a order by a) as pct_rank,\n    cume_dist() over (partition by a order by a) as cume_dist\nfrom t1;\n+----+------+------+--------------+--------------+\n| pk | a    | b    | pct_rank     | cume_dist    |\n+----+------+------+--------------+--------------+\n|  1 |    0 |   10 | 0.0000000000 | 1.0000000000 |\n|  2 |    0 |   10 | 0.0000000000 | 1.0000000000 |\n|  3 |    1 |   10 | 0.0000000000 | 1.0000000000 |\n|  4 |    1 |   10 | 0.0000000000 | 1.0000000000 |\n|  5 |    2 |   20 | 0.0000000000 | 1.0000000000 |\n|  6 |    2 |   20 | 0.0000000000 | 1.0000000000 |\n|  7 |    2 |   20 | 0.0000000000 | 1.0000000000 |\n|  8 |    2 |   10 | 0.0000000000 | 1.0000000000 |\n|  9 |    4 |   20 | 0.0000000000 | 1.0000000000 |\n| 10 |    4 |   20 | 0.0000000000 | 1.0000000000 |\n+----+------+------+--------------+--------------+\n\n\n\nURL: mariadb.com/kb/en/percent_rank/','','https://mariadb.com/kb/en/percent_rank/'),(723,'RANK',42,'MariaDB starting with 10.2\n--------------------------\nThe RANK() function was first introduced with window functions in MariaDB\n10.2.0.\n\nSyntax\n------\n\nRANK() OVER (\n [ PARTITION BY partition_expression ]\n [ ORDER BY order_list ]\n)\n\nDescription\n-----------\n\nRANK() is a window function that displays the number of a given row, starting\nat one and following the ORDER BY sequence of the window function, with\nidentical values receiving the same result. It is similar to the ROW_NUMBER()\nfunction except that in that function, identical values will receive a\ndifferent row number for each result.\n\nExamples\n--------\n\nThe distinction between DENSE_RANK(), RANK() and ROW_NUMBER():\n\nCREATE TABLE student(course VARCHAR(10), mark int, name varchar(10));\n\nINSERT INTO student VALUES \n (\'Maths\', 60, \'Thulile\'),\n (\'Maths\', 60, \'Pritha\'),\n (\'Maths\', 70, \'Voitto\'),\n (\'Maths\', 55, \'Chun\'),\n (\'Biology\', 60, \'Bilal\'),\n (\'Biology\', 70, \'Roger\');\n\nSELECT \n RANK() OVER (PARTITION BY course ORDER BY mark DESC) AS rank,\n DENSE_RANK() OVER (PARTITION BY course ORDER BY mark DESC) AS dense_rank,\n ROW_NUMBER() OVER (PARTITION BY course ORDER BY mark DESC) AS row_num,\n course, mark, name\nFROM student ORDER BY course, mark DESC;\n+------+------------+---------+---------+------+---------+\n| rank | dense_rank | row_num | course  | mark | name    |\n+------+------------+---------+---------+------+---------+\n|    1 |          1 |       1 | Biology |   70 | Roger   |\n|    2 |          2 |       2 | Biology |   60 | Bilal   |\n|    1 |          1 |       1 | Maths   |   70 | Voitto  |\n|    2 |          2 |       2 | Maths   |   60 | Thulile |\n|    2 |          2 |       3 | Maths   |   60 | Pritha  |\n|    4 |          3 |       4 | Maths   |   55 | Chun    |\n+------+------------+---------+---------+------+---------+\n\n\n\nURL: mariadb.com/kb/en/rank/','','https://mariadb.com/kb/en/rank/'),(721,'PERCENTILE_CONT',42,'MariaDB starting with 10.3.3\n----------------------------\nThe PERCENTILE_CONT() window function was first introduced with in MariaDB\n10.3.3.\n\nSyntax\n------\n\nDescription\n-----------\n\nPERCENTILE_CONT() (standing for continuous percentile) is a window function\nwhich returns a value which corresponds to the given fraction in the sort\norder. If required, it will interpolate between adjacent input items.\n\nEssentially, the following process is followed to find the value to return:\n\n* Get the number of rows in the partition, denoted by N\n* RN = p*(N-1), where p denotes the argument to the PERCENTILE_CONT function\n* calculate the FRN(floor row number) and CRN(column row number for the group(\nFRN= floor(RN) and CRN = ceil(RN))\n* look up rows FRN and CRN\n* If (CRN = FRN = RN) then the result is (value of expression from row at RN)\n* Otherwise the result is\n* (CRN - RN) * (value of expression for row at FRN) +\n* (RN - FRN) * (value of expression for row at CRN)\n\nThe MEDIAN function is a specific case of PERCENTILE_CONT, equivalent to\nPERCENTILE_CONT(0.5).\n\nExamples\n--------\n\nCREATE TABLE book_rating (name CHAR(30), star_rating TINYINT);\n\nINSERT INTO book_rating VALUES (\'Lord of the Ladybirds\', 5);\nINSERT INTO book_rating VALUES (\'Lord of the Ladybirds\', 3);\nINSERT INTO book_rating VALUES (\'Lady of the Flies\', 1);\nINSERT INTO book_rating VALUES (\'Lady of the Flies\', 2);\nINSERT INTO book_rating VALUES (\'Lady of the Flies\', 5);\n\nSELECT name, PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY star_rating) \n OVER (PARTITION BY name) AS pc\n FROM book_rating;\n+-----------------------+--------------+\n| name                  | pc           |\n+-----------------------+--------------+\n| Lord of the Ladybirds | 4.0000000000 |\n| Lord of the Ladybirds | 4.0000000000 |\n| Lady of the Flies     | 2.0000000000 |\n| Lady of the Flies     | 2.0000000000 |\n| Lady of the Flies     | 2.0000000000 |\n+-----------------------+--------------+\n\nSELECT name, PERCENTILE_CONT(1) WITHIN GROUP (ORDER BY star_rating) \n OVER (PARTITION BY name) AS pc\n FROM book_rating;\n+-----------------------+--------------+\n| name                  | pc           |\n+-----------------------+--------------+\n| Lord of the Ladybirds | 5.0000000000 |\n| Lord of the Ladybirds | 5.0000000000 |\n| Lady of the Flies     | 5.0000000000 |\n| Lady of the Flies     | 5.0000000000 |\n| Lady of the Flies     | 5.0000000000 |\n+-----------------------+--------------+\n\nSELECT name, PERCENTILE_CONT(0) WITHIN GROUP (ORDER BY star_rating) \n OVER (PARTITION BY name) AS pc\n FROM book_rating;\n+-----------------------+--------------+\n| name                  | pc           |\n+-----------------------+--------------+\n| Lord of the Ladybirds | 3.0000000000 |\n| Lord of the Ladybirds | 3.0000000000 |\n| Lady of the Flies     | 1.0000000000 |\n| Lady of the Flies     | 1.0000000000 |\n| Lady of the Flies     | 1.0000000000 |\n+-----------------------+--------------+\n\nSELECT name, PERCENTILE_CONT(0.6) WITHIN GROUP (ORDER BY star_rating) \n OVER (PARTITION BY name) AS pc\n FROM book_rating;\n+-----------------------+--------------+\n| name                  | pc           |\n+-----------------------+--------------+\n| Lord of the Ladybirds | 4.2000000000 |\n| Lord of the Ladybirds | 4.2000000000 |\n| Lady of the Flies     | 2.6000000000 |\n| Lady of the Flies     | 2.6000000000 |\n| Lady of the Flies     | 2.6000000000 |\n+-----------------------+--------------+\n\n\n\nURL: mariadb.com/kb/en/percentile_cont/','','https://mariadb.com/kb/en/percentile_cont/'),(724,'ROW_NUMBER',42,'MariaDB starting with 10.2\n--------------------------\nROW_NUMBER() was first introduced with window functions in MariaDB 10.2.0.\n\nSyntax\n------\n\nROW_NUMBER() OVER (\n [ PARTITION BY partition_expression ]\n [ ORDER BY order_list ]\n)\n\nDescription\n-----------\n\nROW_NUMBER() is a window function that displays the number of a given row,\nstarting at one and following the ORDER BY sequence of the window function,\nwith identical values receiving different row numbers. It is similar to the\nRANK() and DENSE_RANK() functions except that in that function, identical\nvalues will receive the same rank for each result.\n\nExamples\n--------\n\nThe distinction between DENSE_RANK(), RANK() and ROW_NUMBER():\n\nCREATE TABLE student(course VARCHAR(10), mark int, name varchar(10));\n\nINSERT INTO student VALUES \n (\'Maths\', 60, \'Thulile\'),\n (\'Maths\', 60, \'Pritha\'),\n (\'Maths\', 70, \'Voitto\'),\n (\'Maths\', 55, \'Chun\'),\n (\'Biology\', 60, \'Bilal\'),\n (\'Biology\', 70, \'Roger\');\n\nSELECT \n RANK() OVER (PARTITION BY course ORDER BY mark DESC) AS rank,\n DENSE_RANK() OVER (PARTITION BY course ORDER BY mark DESC) AS dense_rank,\n ROW_NUMBER() OVER (PARTITION BY course ORDER BY mark DESC) AS row_num,\n course, mark, name\nFROM student ORDER BY course, mark DESC;\n+------+------------+---------+---------+------+---------+\n| rank | dense_rank | row_num | course  | mark | name    |\n+------+------------+---------+---------+------+---------+\n|    1 |          1 |       1 | Biology |   70 | Roger   |\n|    2 |          2 |       2 | Biology |   60 | Bilal   |\n|    1 |          1 |       1 | Maths   |   70 | Voitto  |\n|    2 |          2 |       2 | Maths   |   60 | Thulile |\n|    2 |          2 |       3 | Maths   |   60 | Pritha  |\n|    4 |          3 |       4 | Maths   |   55 | Chun    |\n+------+------------+---------+---------+------+---------+\n\n\n\nURL: mariadb.com/kb/en/row_number/','','https://mariadb.com/kb/en/row_number/'),(725,'SPIDER_BG_DIRECT_SQL',43,'Syntax\n------\n\nSPIDER_BG_DIRECT_SQL(\'sql\', \'tmp_table_list\', \'parameters\')\n\nDescription\n-----------\n\nExecutes the given SQL statement in the background on the remote server, as\ndefined in the parameters listing. If the query returns a result-set, it\nsttores the results in the given temporary table. When the given SQL statement\nexecutes successfully, this function returns the number of called UDF\'s. It\nreturns 0 when the given SQL statement fails.\n\nThis function is a UDF installed with the Spider storage engine.\n\nExamples\n--------\n\nSELECT SPIDER_BG_DIRECT_SQL(\'SELECT * FROM example_table\',  \'\', \n \'srv \"node1\", port \"8607\"\') AS \"Direct Query\";\n+--------------+\n| Direct Query | \n+--------------+\n|            1 |\n+--------------+\n\nParameters\n----------\n\nerror_rw_mode\n-------------\n\n* Description: Returns empty results on network error.\n0 : Return error on getting network error.\n1: Return 0 records on getting network error.\n\n* Default Table Value: 0\n* DSN Parameter Name: erwm\n\n\n\nURL: mariadb.com/kb/en/spider_bg_direct_sql/','','https://mariadb.com/kb/en/spider_bg_direct_sql/'),(726,'SPIDER_COPY_TABLES',43,'Syntax\n------\n\nSPIDER_COPY_TABLES(spider_table_name, \n source_link_id, destination_link_id_list [,parameters])\n\nDescription\n-----------\n\nA UDF installed with the Spider Storage Engine, this function copies table\ndata from source_link_id to destination_link_id_list. The service does not\nneed to be stopped in order to copy.\n\nIf the Spider table is partitioned, the name must be of the format\ntable_name#P#partition_name. The partition name can be viewed in the\nmysql.spider_tables table, for example:\n\nSELECT table_name FROM mysql.spider_tables;\n+-------------+\n| table_name  |\n+-------------+\n| spt_a#P#pt1 |\n| spt_a#P#pt2 |\n| spt_a#P#pt3 |\n+-------------+\n\nReturns 1 if the data was copied successfully, or 0 if copying the data failed.\n\n\n\nURL: mariadb.com/kb/en/spider_copy_tables/','','https://mariadb.com/kb/en/spider_copy_tables/'),(727,'SPIDER_DIRECT_SQL',43,'Syntax\n------\n\nSPIDER_DIRECT_SQL(\'sql\', \'tmp_table_list\', \'parameters\')\n\nDescription\n-----------\n\nA UDF installed with the Spider Storage Engine, this function is used to\nexecute the SQL string sql on the remote server, as defined in parameters. If\nany resultsets are returned, they are stored in the tmp_table_list.\n\nThe function returns 1 if the SQL executes successfully, or 0 if it fails.\n\nExamples\n--------\n\nSELECT SPIDER_DIRECT_SQL(\'SELECT * FROM s\', \'\', \'srv \"node1\", port \"8607\"\');\n+----------------------------------------------------------------------+\n| SPIDER_DIRECT_SQL(\'SELECT * FROM s\', \'\', \'srv \"node1\", port \"8607\"\') |\n+----------------------------------------------------------------------+\n|                                                                    1 |\n+----------------------------------------------------------------------+\n\n\n\nURL: mariadb.com/kb/en/spider_direct_sql/','','https://mariadb.com/kb/en/spider_direct_sql/'),(729,'COLUMN_ADD',44,'Syntax\n------\n\nCOLUMN_ADD(dyncol_blob, column_nr, value [as type], [column_nr, value [as\ntype]]...);\nCOLUMN_ADD(dyncol_blob, column_name, value [as type], [column_name, value [as\ntype]]...);\n\nDescription\n-----------\n\nAdds or updates dynamic columns.\n\n* dyncol_blob must be either a valid dynamic columns blob (for example,\nCOLUMN_CREATE returns such blob), or an empty string.\n* column_name specifies the name of the column to be added. If dyncol_blob\nalready has a column with this name, it will be overwritten.\n* value specifies the new value for the column.  Passing a NULL value will\ncause the column to be deleted.\n* as type is optional. See #datatypes section for a discussion about types.\n\nThe return value is a dynamic column blob after the modifications.\n\nExamples\n--------\n\nUPDATE t1 SET dyncol_blob=COLUMN_ADD(dyncol_blob, \"column_name\", \"value\")\nWHERE id=1;\n\nNote: COLUMN_ADD() is a regular function (just like CONCAT()), hence, in order\nto update the value in the table you have to use the UPDATE ... SET\ndynamic_col=COLUMN_ADD(dynamic_col, ....) pattern.\n\n\n\nURL: mariadb.com/kb/en/column_add/','','https://mariadb.com/kb/en/column_add/'),(731,'COLUMN_CREATE',44,'Syntax\n------\n\nCOLUMN_CREATE(column_nr, value [as type], [column_nr, value [as type]]...);\nCOLUMN_CREATE(column_name, value [as type], [column_name, value [as type]]...);\n\nDescription\n-----------\n\nReturns a dynamic columns blob that stores the specified columns with values.\n\nThe return value is suitable for\n\n* storing in a table\n* further modification with other dynamic columns functions\n\nThe as type part allows one to specify the value type. In most cases, this is\nredundant because MariaDB will be able to deduce the type of the value.\nExplicit type specification may be needed when the type of the value is not\napparent. For example, a literal \'2012-12-01\' has a CHAR type by default, one\nwill need to specify \'2012-12-01\' AS DATE to have it stored as a date. See\nDynamic Columns:Datatypes for further details.\n\nExamples\n--------\n\nINSERT INTO tbl SET dyncol_blob=COLUMN_CREATE(\"column_name\", \"value\");\n\n\n\nURL: mariadb.com/kb/en/column_create/','','https://mariadb.com/kb/en/column_create/'),(734,'COLUMN_GET',44,'Syntax\n------\n\nCOLUMN_GET(dyncol_blob, column_nr as type);\nCOLUMN_GET(dyncol_blob, column_name as type);\n\nDescription\n-----------\n\nGets the value of a dynamic column by its name. If no column with the given\nname exists, NULL will be returned.\n\ncolumn_name as type requires that one specify the datatype of the dynamic\ncolumn they are reading.\n\nThis may seem counter-intuitive: why would one need to specify which datatype\nthey\'re retrieving? Can\'t the dynamic columns system figure the datatype from\nthe data being stored?\n\nThe answer is: SQL is a statically-typed language. The SQL interpreter needs\nto know the datatypes of all expressions before the query is run (for example,\nwhen one is using prepared statements and runs \"select COLUMN_GET(...)\", the\nprepared statement API requires the server to inform the client about the\ndatatype of the column being read before the query is executed and the server\ncan see what datatype the column actually has).\n\nLengths\n-------\n\nIf you\'re running queries like:\n\nSELECT COLUMN_GET(blob, \'colname\' as CHAR) ...\n\nwithout specifying a maximum length (i.e. using as CHAR, not as CHAR(n)),\nMariaDB will report the maximum length of the resultset column to be\n16,777,216. This may cause excessive memory usage in some client libraries,\nbecause they try to pre-allocate a buffer of maximum resultset width. To avoid\nthis problem, use CHAR(n) whenever you\'re using COLUMN_GET in the select list.\n\nSee Dynamic Columns:Datatypes for more information about datatypes.\n\n\n\nURL: mariadb.com/kb/en/column_get/','','https://mariadb.com/kb/en/column_get/'),(735,'COLUMN_JSON',44,'Syntax\n------\n\nCOLUMN_JSON(dyncol_blob)\n\nDescription\n-----------\n\nReturns a JSON representation of data in dyncol_blob. Can also be used to\ndisplay nested columns. See dynamic columns for more information.\n\nExample\n-------\n\nselect item_name, COLUMN_JSON(dynamic_cols) from assets;\n+-----------------+----------------------------------------+\n| item_name       | COLUMN_JSON(dynamic_cols)              |\n+-----------------+----------------------------------------+\n| MariaDB T-shirt | {\"size\":\"XL\",\"color\":\"blue\"}           |\n| Thinkpad Laptop | {\"color\":\"black\",\"warranty\":\"3 years\"} |\n+-----------------+----------------------------------------+\n\nLimitation: COLUMN_JSON will decode nested dynamic columns at a nesting level\nof not more than 10 levels deep. Dynamic columns that are nested deeper than\n10 levels will be shown as BINARY string, without encoding.\n\n\n\nURL: mariadb.com/kb/en/column_json/','','https://mariadb.com/kb/en/column_json/');
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
INSERT INTO `innodb_index_stats` VALUES ('as1','auction','PRIMARY','2022-11-18 10:40:04','n_diff_pfx01',28,1,'auctionID'),('as1','auction','PRIMARY','2022-11-18 10:40:04','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('as1','auction','PRIMARY','2022-11-18 10:40:04','size',2,NULL,'Number of pages in the index'),('as1','auction','categoryID_idx','2022-11-18 10:40:04','n_diff_pfx01',9,1,'categoryID'),('as1','auction','categoryID_idx','2022-11-18 10:40:04','n_diff_pfx02',28,1,'categoryID,auctionID'),('as1','auction','categoryID_idx','2022-11-18 10:40:04','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('as1','auction','categoryID_idx','2022-11-18 10:40:04','size',1,NULL,'Number of pages in the index'),('as1','bid_history','PRIMARY','2022-11-18 16:16:20','n_diff_pfx01',13,1,'change_id'),('as1','bid_history','PRIMARY','2022-11-18 16:16:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('as1','bid_history','PRIMARY','2022-11-18 16:16:20','size',1,NULL,'Number of pages in the index'),('as1','category','PRIMARY','2022-11-08 09:58:39','n_diff_pfx01',9,1,'categoryID'),('as1','category','PRIMARY','2022-11-08 09:58:39','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('as1','category','PRIMARY','2022-11-08 09:58:39','size',1,NULL,'Number of pages in the index'),('as1','review','PRIMARY','2022-11-16 11:14:34','n_diff_pfx01',11,1,'reviewID'),('as1','review','PRIMARY','2022-11-16 11:14:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('as1','review','PRIMARY','2022-11-16 11:14:34','size',1,NULL,'Number of pages in the index'),('as1','user','PRIMARY','2022-11-18 16:37:53','n_diff_pfx01',9,1,'userID'),('as1','user','PRIMARY','2022-11-18 16:37:53','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('as1','user','PRIMARY','2022-11-18 16:37:53','size',1,NULL,'Number of pages in the index'),('csy2028','person','PRIMARY','2022-11-02 10:26:02','n_diff_pfx01',7,1,'email'),('csy2028','person','PRIMARY','2022-11-02 10:26:02','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('csy2028','person','PRIMARY','2022-11-02 10:26:02','size',1,NULL,'Number of pages in the index'),('ijdb','category','PRIMARY','2022-12-15 14:40:30','n_diff_pfx01',2,1,'id'),('ijdb','category','PRIMARY','2022-12-15 14:40:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('ijdb','category','PRIMARY','2022-12-15 14:40:30','size',1,NULL,'Number of pages in the index'),('ijdb','joke','PRIMARY','2023-01-19 20:30:37','n_diff_pfx01',5,1,'id'),('ijdb','joke','PRIMARY','2023-01-19 20:30:37','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('ijdb','joke','PRIMARY','2023-01-19 20:30:37','size',1,NULL,'Number of pages in the index'),('job','applicants','PRIMARY','2023-02-04 19:19:20','n_diff_pfx01',8,1,'id'),('job','applicants','PRIMARY','2023-02-04 19:19:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('job','applicants','PRIMARY','2023-02-04 19:19:20','size',1,NULL,'Number of pages in the index'),('job','category','PRIMARY','2023-02-05 21:40:57','n_diff_pfx01',7,1,'id'),('job','category','PRIMARY','2023-02-05 21:40:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('job','category','PRIMARY','2023-02-05 21:40:57','size',1,NULL,'Number of pages in the index'),('job','enquiry','PRIMARY','2023-02-05 21:37:03','n_diff_pfx01',8,1,'id'),('job','enquiry','PRIMARY','2023-02-05 21:37:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('job','enquiry','PRIMARY','2023-02-05 21:37:03','size',1,NULL,'Number of pages in the index'),('job','job','PRIMARY','2023-02-05 21:42:19','n_diff_pfx01',7,1,'id'),('job','job','PRIMARY','2023-02-05 21:42:19','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('job','job','PRIMARY','2023-02-05 21:42:19','size',1,NULL,'Number of pages in the index'),('job','users','PRIMARY','2023-02-05 21:39:39','n_diff_pfx01',4,1,'id'),('job','users','PRIMARY','2023-02-05 21:39:39','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('job','users','PRIMARY','2023-02-05 21:39:39','size',1,NULL,'Number of pages in the index'),('job','users','username_UNIQUE','2023-02-05 21:39:39','n_diff_pfx01',4,1,'username'),('job','users','username_UNIQUE','2023-02-05 21:39:39','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('job','users','username_UNIQUE','2023-02-05 21:39:39','size',1,NULL,'Number of pages in the index'),('mysql','gtid_slave_pos','PRIMARY','2022-10-03 11:40:13','n_diff_pfx01',0,1,'domain_id'),('mysql','gtid_slave_pos','PRIMARY','2022-10-03 11:40:13','n_diff_pfx02',0,1,'domain_id,sub_id'),('mysql','gtid_slave_pos','PRIMARY','2022-10-03 11:40:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('mysql','gtid_slave_pos','PRIMARY','2022-10-03 11:40:13','size',1,NULL,'Number of pages in the index');
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
INSERT INTO `innodb_table_stats` VALUES ('as1','auction','2022-11-18 10:40:04',28,2,1),('as1','bid_history','2022-11-18 16:16:20',13,1,0),('as1','category','2022-11-08 09:58:39',9,1,0),('as1','review','2022-11-16 11:14:34',11,1,0),('as1','user','2022-11-18 16:37:53',9,1,0),('csy2028','person','2022-11-02 10:26:02',7,1,0),('ijdb','category','2022-12-15 14:40:30',2,1,0),('ijdb','joke','2023-01-19 20:30:37',5,1,0),('job','applicants','2023-02-04 19:19:20',8,1,0),('job','category','2023-02-05 21:40:57',7,1,0),('job','enquiry','2023-02-05 21:37:03',8,1,0),('job','job','2023-02-05 21:42:19',7,1,0),('job','users','2023-02-05 21:39:39',4,1,1),('mysql','gtid_slave_pos','2022-10-03 11:40:13',0,1,0);
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
-- Temporary table structure for view `user`
--

DROP TABLE IF EXISTS `user`;
/*!50001 DROP VIEW IF EXISTS `user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user` (
  `Host` tinyint NOT NULL,
  `User` tinyint NOT NULL,
  `Password` tinyint NOT NULL,
  `Select_priv` tinyint NOT NULL,
  `Insert_priv` tinyint NOT NULL,
  `Update_priv` tinyint NOT NULL,
  `Delete_priv` tinyint NOT NULL,
  `Create_priv` tinyint NOT NULL,
  `Drop_priv` tinyint NOT NULL,
  `Reload_priv` tinyint NOT NULL,
  `Shutdown_priv` tinyint NOT NULL,
  `Process_priv` tinyint NOT NULL,
  `File_priv` tinyint NOT NULL,
  `Grant_priv` tinyint NOT NULL,
  `References_priv` tinyint NOT NULL,
  `Index_priv` tinyint NOT NULL,
  `Alter_priv` tinyint NOT NULL,
  `Show_db_priv` tinyint NOT NULL,
  `Super_priv` tinyint NOT NULL,
  `Create_tmp_table_priv` tinyint NOT NULL,
  `Lock_tables_priv` tinyint NOT NULL,
  `Execute_priv` tinyint NOT NULL,
  `Repl_slave_priv` tinyint NOT NULL,
  `Repl_client_priv` tinyint NOT NULL,
  `Create_view_priv` tinyint NOT NULL,
  `Show_view_priv` tinyint NOT NULL,
  `Create_routine_priv` tinyint NOT NULL,
  `Alter_routine_priv` tinyint NOT NULL,
  `Create_user_priv` tinyint NOT NULL,
  `Event_priv` tinyint NOT NULL,
  `Trigger_priv` tinyint NOT NULL,
  `Create_tablespace_priv` tinyint NOT NULL,
  `Delete_history_priv` tinyint NOT NULL,
  `ssl_type` tinyint NOT NULL,
  `ssl_cipher` tinyint NOT NULL,
  `x509_issuer` tinyint NOT NULL,
  `x509_subject` tinyint NOT NULL,
  `max_questions` tinyint NOT NULL,
  `max_updates` tinyint NOT NULL,
  `max_connections` tinyint NOT NULL,
  `max_user_connections` tinyint NOT NULL,
  `plugin` tinyint NOT NULL,
  `authentication_string` tinyint NOT NULL,
  `password_expired` tinyint NOT NULL,
  `is_role` tinyint NOT NULL,
  `default_role` tinyint NOT NULL,
  `max_statement_time` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

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
-- Temporary table structure for view `host_summary`
--

DROP TABLE IF EXISTS `host_summary`;
/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `host_summary` (
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
-- Temporary table structure for view `host_summary_by_file_io`
--

DROP TABLE IF EXISTS `host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `host_summary_by_file_io` (
  `host` tinyint NOT NULL,
  `ios` tinyint NOT NULL,
  `io_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `host_summary_by_file_io_type` (
  `host` tinyint NOT NULL,
  `event_name` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `host_summary_by_stages`
--

DROP TABLE IF EXISTS `host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `host_summary_by_stages` (
  `host` tinyint NOT NULL,
  `event_name` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `host_summary_by_statement_latency` (
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
-- Temporary table structure for view `host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `host_summary_by_statement_type` (
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
-- Temporary table structure for view `innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `innodb_buffer_stats_by_schema` (
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
-- Temporary table structure for view `innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `innodb_buffer_stats_by_table` (
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
-- Temporary table structure for view `innodb_lock_waits`
--

DROP TABLE IF EXISTS `innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `innodb_lock_waits` (
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
-- Temporary table structure for view `io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `io_by_thread_by_latency` (
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
-- Temporary table structure for view `io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `io_global_by_file_by_bytes` (
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
-- Temporary table structure for view `io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `io_global_by_file_by_latency` (
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
-- Temporary table structure for view `io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `io_global_by_wait_by_bytes` (
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
-- Temporary table structure for view `io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `io_global_by_wait_by_latency` (
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
-- Temporary table structure for view `latest_file_io`
--

DROP TABLE IF EXISTS `latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `latest_file_io` (
  `thread` tinyint NOT NULL,
  `file` tinyint NOT NULL,
  `latency` tinyint NOT NULL,
  `operation` tinyint NOT NULL,
  `requested` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `memory_by_host_by_current_bytes` (
  `host` tinyint NOT NULL,
  `current_count_used` tinyint NOT NULL,
  `current_allocated` tinyint NOT NULL,
  `current_avg_alloc` tinyint NOT NULL,
  `current_max_alloc` tinyint NOT NULL,
  `total_allocated` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `memory_by_thread_by_current_bytes` (
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
-- Temporary table structure for view `memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `memory_by_user_by_current_bytes` (
  `user` tinyint NOT NULL,
  `current_count_used` tinyint NOT NULL,
  `current_allocated` tinyint NOT NULL,
  `current_avg_alloc` tinyint NOT NULL,
  `current_max_alloc` tinyint NOT NULL,
  `total_allocated` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `memory_global_by_current_bytes` (
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
-- Temporary table structure for view `memory_global_total`
--

DROP TABLE IF EXISTS `memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `memory_global_total` (
  `total_allocated` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!50001 DROP VIEW IF EXISTS `metrics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `metrics` (
  `Variable_name` tinyint NOT NULL,
  `Variable_value` tinyint NOT NULL,
  `Type` tinyint NOT NULL,
  `Enabled` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `processlist`
--

DROP TABLE IF EXISTS `processlist`;
/*!50001 DROP VIEW IF EXISTS `processlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `processlist` (
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
-- Temporary table structure for view `ps_check_lost_instrumentation`
--

DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ps_check_lost_instrumentation` (
  `variable_name` tinyint NOT NULL,
  `variable_value` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `schema_auto_increment_columns`
--

DROP TABLE IF EXISTS `schema_auto_increment_columns`;
/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `schema_auto_increment_columns` (
  `table_schema` tinyint NOT NULL,
  `table_name` tinyint NOT NULL,
  `column_name` tinyint NOT NULL,
  `data_type` tinyint NOT NULL,
  `column_type` tinyint NOT NULL,
  `is_signed` tinyint NOT NULL,
  `is_unsigned` tinyint NOT NULL,
  `max_value` tinyint NOT NULL,
  `auto_increment` tinyint NOT NULL,
  `auto_increment_ratio` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `schema_index_statistics`
--

DROP TABLE IF EXISTS `schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `schema_index_statistics` (
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
-- Temporary table structure for view `schema_object_overview`
--

DROP TABLE IF EXISTS `schema_object_overview`;
/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `schema_object_overview` (
  `db` tinyint NOT NULL,
  `object_type` tinyint NOT NULL,
  `count` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `schema_redundant_indexes`
--

DROP TABLE IF EXISTS `schema_redundant_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `schema_redundant_indexes` (
  `table_schema` tinyint NOT NULL,
  `table_name` tinyint NOT NULL,
  `redundant_index_name` tinyint NOT NULL,
  `redundant_index_columns` tinyint NOT NULL,
  `redundant_index_non_unique` tinyint NOT NULL,
  `dominant_index_name` tinyint NOT NULL,
  `dominant_index_columns` tinyint NOT NULL,
  `dominant_index_non_unique` tinyint NOT NULL,
  `subpart_exists` tinyint NOT NULL,
  `sql_drop_index` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `schema_table_lock_waits`
--

DROP TABLE IF EXISTS `schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `schema_table_lock_waits` (
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
-- Temporary table structure for view `schema_table_statistics`
--

DROP TABLE IF EXISTS `schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `schema_table_statistics` (
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
-- Temporary table structure for view `schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `schema_table_statistics_with_buffer` (
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
-- Temporary table structure for view `schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `schema_tables_with_full_table_scans` (
  `object_schema` tinyint NOT NULL,
  `object_name` tinyint NOT NULL,
  `rows_full_scanned` tinyint NOT NULL,
  `latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `schema_unused_indexes`
--

DROP TABLE IF EXISTS `schema_unused_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `schema_unused_indexes` (
  `object_schema` tinyint NOT NULL,
  `object_name` tinyint NOT NULL,
  `index_name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `session`
--

DROP TABLE IF EXISTS `session`;
/*!50001 DROP VIEW IF EXISTS `session`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `session` (
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
-- Temporary table structure for view `session_ssl_status`
--

DROP TABLE IF EXISTS `session_ssl_status`;
/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `session_ssl_status` (
  `thread_id` tinyint NOT NULL,
  `ssl_version` tinyint NOT NULL,
  `ssl_cipher` tinyint NOT NULL,
  `ssl_sessions_reused` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `statement_analysis`
--

DROP TABLE IF EXISTS `statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `statement_analysis` (
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
-- Temporary table structure for view `statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `statements_with_errors_or_warnings` (
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
-- Temporary table structure for view `statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `statements_with_full_table_scans` (
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
-- Temporary table structure for view `statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `statements_with_runtimes_in_95th_percentile` (
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
-- Temporary table structure for view `statements_with_sorting`
--

DROP TABLE IF EXISTS `statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `statements_with_sorting` (
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
-- Temporary table structure for view `statements_with_temp_tables`
--

DROP TABLE IF EXISTS `statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `statements_with_temp_tables` (
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
-- Temporary table structure for view `user_summary`
--

DROP TABLE IF EXISTS `user_summary`;
/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_summary` (
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
-- Temporary table structure for view `user_summary_by_file_io`
--

DROP TABLE IF EXISTS `user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_summary_by_file_io` (
  `user` tinyint NOT NULL,
  `ios` tinyint NOT NULL,
  `io_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_summary_by_file_io_type` (
  `user` tinyint NOT NULL,
  `event_name` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `latency` tinyint NOT NULL,
  `max_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `user_summary_by_stages`
--

DROP TABLE IF EXISTS `user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_summary_by_stages` (
  `user` tinyint NOT NULL,
  `event_name` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `total_latency` tinyint NOT NULL,
  `avg_latency` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_summary_by_statement_latency` (
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
-- Temporary table structure for view `user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_summary_by_statement_type` (
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
-- Temporary table structure for view `version`
--

DROP TABLE IF EXISTS `version`;
/*!50001 DROP VIEW IF EXISTS `version`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `version` (
  `sys_version` tinyint NOT NULL,
  `mysql_version` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

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
-- Final view structure for view `user`
--

/*!50001 DROP TABLE IF EXISTS `user`*/;
/*!50001 DROP VIEW IF EXISTS `user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user` AS select `global_priv`.`Host` AS `Host`,`global_priv`.`User` AS `User`,if(json_value(`global_priv`.`Priv`,'$.plugin') in ('mysql_native_password','mysql_old_password'),ifnull(json_value(`global_priv`.`Priv`,'$.authentication_string'),''),'') AS `Password`,if(json_value(`global_priv`.`Priv`,'$.access') & 1,'Y','N') AS `Select_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 2,'Y','N') AS `Insert_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 4,'Y','N') AS `Update_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 8,'Y','N') AS `Delete_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 16,'Y','N') AS `Create_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 32,'Y','N') AS `Drop_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 64,'Y','N') AS `Reload_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 128,'Y','N') AS `Shutdown_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 256,'Y','N') AS `Process_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 512,'Y','N') AS `File_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 1024,'Y','N') AS `Grant_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 2048,'Y','N') AS `References_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 4096,'Y','N') AS `Index_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 8192,'Y','N') AS `Alter_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 16384,'Y','N') AS `Show_db_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 32768,'Y','N') AS `Super_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 65536,'Y','N') AS `Create_tmp_table_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 131072,'Y','N') AS `Lock_tables_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 262144,'Y','N') AS `Execute_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 524288,'Y','N') AS `Repl_slave_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 1048576,'Y','N') AS `Repl_client_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 2097152,'Y','N') AS `Create_view_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 4194304,'Y','N') AS `Show_view_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 8388608,'Y','N') AS `Create_routine_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 16777216,'Y','N') AS `Alter_routine_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 33554432,'Y','N') AS `Create_user_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 67108864,'Y','N') AS `Event_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 134217728,'Y','N') AS `Trigger_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 268435456,'Y','N') AS `Create_tablespace_priv`,if(json_value(`global_priv`.`Priv`,'$.access') & 536870912,'Y','N') AS `Delete_history_priv`,elt(ifnull(json_value(`global_priv`.`Priv`,'$.ssl_type'),0) + 1,'','ANY','X509','SPECIFIED') AS `ssl_type`,ifnull(json_value(`global_priv`.`Priv`,'$.ssl_cipher'),'') AS `ssl_cipher`,ifnull(json_value(`global_priv`.`Priv`,'$.x509_issuer'),'') AS `x509_issuer`,ifnull(json_value(`global_priv`.`Priv`,'$.x509_subject'),'') AS `x509_subject`,cast(ifnull(json_value(`global_priv`.`Priv`,'$.max_questions'),0) as unsigned) AS `max_questions`,cast(ifnull(json_value(`global_priv`.`Priv`,'$.max_updates'),0) as unsigned) AS `max_updates`,cast(ifnull(json_value(`global_priv`.`Priv`,'$.max_connections'),0) as unsigned) AS `max_connections`,cast(ifnull(json_value(`global_priv`.`Priv`,'$.max_user_connections'),0) as signed) AS `max_user_connections`,ifnull(json_value(`global_priv`.`Priv`,'$.plugin'),'') AS `plugin`,ifnull(json_value(`global_priv`.`Priv`,'$.authentication_string'),'') AS `authentication_string`,if(ifnull(json_value(`global_priv`.`Priv`,'$.password_last_changed'),1) = 0,'Y','N') AS `password_expired`,elt(ifnull(json_value(`global_priv`.`Priv`,'$.is_role'),0) + 1,'N','Y') AS `is_role`,ifnull(json_value(`global_priv`.`Priv`,'$.default_role'),'') AS `default_role`,cast(ifnull(json_value(`global_priv`.`Priv`,'$.max_statement_time'),0.0) as decimal(12,6)) AS `max_statement_time` from `global_priv` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `sys`
--

USE `sys`;

--
-- Final view structure for view `host_summary`
--

/*!50001 DROP TABLE IF EXISTS `host_summary`*/;
/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary` AS select if(`performance_schema`.`accounts`.`HOST` is null,'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,`sys`.`format_time`(sum(`stmt`.`total_latency`)) AS `statement_latency`,`sys`.`format_time`(ifnull(sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,`sys`.`format_time`(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,`sys`.`format_bytes`(sum(`mem`.`current_allocated`)) AS `current_memory`,`sys`.`format_bytes`(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `sys`.`x$host_summary_by_statement_latency` `stmt` on(`performance_schema`.`accounts`.`HOST` = `stmt`.`host`)) join `sys`.`x$host_summary_by_file_io` `io` on(`performance_schema`.`accounts`.`HOST` = `io`.`host`)) join `sys`.`x$memory_by_host_by_current_bytes` `mem` on(`performance_schema`.`accounts`.`HOST` = `mem`.`host`)) group by if(`performance_schema`.`accounts`.`HOST` is null,'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io`
--

/*!50001 DROP TABLE IF EXISTS `host_summary_by_file_io`*/;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io` AS select if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where `performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' group by if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io_type`
--

/*!50001 DROP TABLE IF EXISTS `host_summary_by_file_io_type`*/;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io_type` AS select if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where `performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%' and `performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0 order by if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_stages`
--

/*!50001 DROP TABLE IF EXISTS `host_summary_by_stages`*/;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_stages` AS select if(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where `performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_latency`
--

/*!50001 DROP TABLE IF EXISTS `host_summary_by_statement_latency`*/;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_latency` AS select if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_type`
--

/*!50001 DROP TABLE IF EXISTS `host_summary_by_statement_type`*/;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_type` AS select if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-1) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED` AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_schema`
--

/*!50001 DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`*/;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_schema` AS select if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,`sys`.`format_bytes`(sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,`sys`.`format_bytes`(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if(`ibp`.`IS_HASHED` = 'YES',1,NULL)) AS `pages_hashed`,count(if(`ibp`.`IS_OLD` = 'YES',1,NULL)) AS `pages_old`,round(sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where `ibp`.`TABLE_NAME` is not null group by if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) order by sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_table`
--

/*!50001 DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`*/;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_table` AS select if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-1),'`','') AS `object_name`,`sys`.`format_bytes`(sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,`sys`.`format_bytes`(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if(`ibp`.`IS_HASHED` = 'YES',1,NULL)) AS `pages_hashed`,count(if(`ibp`.`IS_OLD` = 'YES',1,NULL)) AS `pages_old`,round(sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where `ibp`.`TABLE_NAME` is not null group by if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')),replace(substring_index(`ibp`.`TABLE_NAME`,'.',-1),'`','') order by sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_lock_waits`
--

/*!50001 DROP TABLE IF EXISTS `innodb_lock_waits`*/;
/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_lock_waits` AS select `r`.`trx_wait_started` AS `wait_started`,timediff(current_timestamp(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,current_timestamp()) AS `wait_age_secs`,`rl`.`lock_table` AS `locked_table`,`rl`.`lock_index` AS `locked_index`,`rl`.`lock_type` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(current_timestamp(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`sys`.`format_statement`(`r`.`trx_query`) AS `waiting_query`,`rl`.`lock_id` AS `waiting_lock_id`,`rl`.`lock_mode` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`sys`.`format_statement`(`b`.`trx_query`) AS `blocking_query`,`bl`.`lock_id` AS `blocking_lock_id`,`bl`.`lock_mode` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(current_timestamp(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`information_schema`.`innodb_lock_waits` `w` join `information_schema`.`innodb_trx` `b` on(`b`.`trx_id` = `w`.`blocking_trx_id`)) join `information_schema`.`innodb_trx` `r` on(`r`.`trx_id` = `w`.`requesting_trx_id`)) join `information_schema`.`innodb_locks` `bl` on(`bl`.`lock_id` = `w`.`blocking_lock_id`)) join `information_schema`.`innodb_locks` `rl` on(`rl`.`lock_id` = `w`.`requested_lock_id`)) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_by_thread_by_latency`
--

/*!50001 DROP TABLE IF EXISTS `io_by_thread_by_latency`*/;
/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_by_thread_by_latency` AS select if(`performance_schema`.`threads`.`PROCESSLIST_ID` is null,substring_index(`performance_schema`.`threads`.`NAME`,'/',-1),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`)) AS `avg_latency`,`sys`.`format_time`(max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`)) where `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' and `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0 group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,if(`performance_schema`.`threads`.`PROCESSLIST_ID` is null,substring_index(`performance_schema`.`threads`.`NAME`,'/',-1),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_bytes`
--

/*!50001 DROP TABLE IF EXISTS `io_global_by_file_by_bytes`*/;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_bytes` AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0),0)) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0),0.00)) AS `avg_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total`,ifnull(round(100 - `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`,0) * 100,2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_latency`
--

/*!50001 DROP TABLE IF EXISTS `io_global_by_file_by_latency`*/;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_latency` AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_bytes`
--

/*!50001 DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`*/;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_bytes` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-2) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0),0)) AS `avg_written`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where `performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' and `performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0 order by `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_latency`
--

/*!50001 DROP TABLE IF EXISTS `io_global_by_wait_by_latency`*/;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_latency` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-2) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ`) AS `read_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE`) AS `write_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC`) AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0),0)) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where `performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' and `performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0 order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `latest_file_io`
--

/*!50001 DROP TABLE IF EXISTS `latest_file_io`*/;
/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `latest_file_io` AS select if(`information_schema`.`processlist`.`ID` is null,concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-1),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`)) AS `thread`,`sys`.`format_path`(`performance_schema`.`events_waits_history_long`.`OBJECT_NAME`) AS `file`,`sys`.`format_time`(`performance_schema`.`events_waits_history_long`.`TIMER_WAIT`) AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`sys`.`format_bytes`(`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES`) AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on(`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`)) left join `information_schema`.`processlist` on(`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`)) where `performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null and `performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%' order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_host_by_current_bytes`
--

/*!50001 DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`*/;
/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_host_by_current_bytes` AS select if(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_thread_by_current_bytes`
--

/*!50001 DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`*/;
/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_thread_by_current_bytes` AS select `mt`.`THREAD_ID` AS `thread_id`,if(`t`.`NAME` = 'thread/sql/one_connection',concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on(`mt`.`THREAD_ID` = `t`.`THREAD_ID`)) group by `mt`.`THREAD_ID`,if(`t`.`NAME` = 'thread/sql/one_connection',concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_user_by_current_bytes`
--

/*!50001 DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`*/;
/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_user_by_current_bytes` AS select if(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_by_current_bytes`
--

/*!50001 DROP TABLE IF EXISTS `memory_global_by_current_bytes`*/;
/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_by_current_bytes` AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`sys`.`format_bytes`(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_alloc`,`sys`.`format_bytes`(ifnull(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0),0)) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`sys`.`format_bytes`(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED`) AS `high_alloc`,`sys`.`format_bytes`(ifnull(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0),0)) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0 order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_total`
--

/*!50001 DROP TABLE IF EXISTS `memory_global_total`*/;
/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_total` AS select `sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `metrics`
--

/*!50001 DROP TABLE IF EXISTS `metrics`*/;
/*!50001 DROP VIEW IF EXISTS `metrics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `metrics` AS (select lcase(`performance_schema`.`global_status`.`VARIABLE_NAME`) AS `Variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `Variable_value`,'Global Status' AS `Type`,'YES' AS `Enabled` from `performance_schema`.`global_status`) union all (select `information_schema`.`INNODB_METRICS`.`NAME` AS `Variable_name`,`information_schema`.`INNODB_METRICS`.`COUNT` AS `Variable_value`,concat('InnoDB Metrics - ',`information_schema`.`INNODB_METRICS`.`SUBSYSTEM`) AS `Type`,'YES' AS `Enabled` from `information_schema`.`INNODB_METRICS` where `information_schema`.`INNODB_METRICS`.`NAME` not in ('lock_row_lock_time','lock_row_lock_time_avg','lock_row_lock_time_max','lock_row_lock_waits','buffer_pool_reads','buffer_pool_read_requests','buffer_pool_write_requests','buffer_pool_wait_free','buffer_pool_read_ahead','buffer_pool_read_ahead_evicted','buffer_pool_pages_total','buffer_pool_pages_misc','buffer_pool_pages_data','buffer_pool_bytes_data','buffer_pool_pages_dirty','buffer_pool_bytes_dirty','buffer_pool_pages_free','buffer_pages_created','buffer_pages_written','buffer_pages_read','buffer_data_reads','buffer_data_written','file_num_open_files','os_log_bytes_written','os_log_fsyncs','os_log_pending_fsyncs','os_log_pending_writes','log_waits','log_write_requests','log_writes','innodb_dblwr_writes','innodb_dblwr_pages_written','innodb_page_size')) union all (select 'NOW()' AS `Variable_name`,current_timestamp(3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled`) union all (select 'UNIX_TIMESTAMP()' AS `Variable_name`,round(unix_timestamp(current_timestamp(3)),3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled`) order by `Type`,`Variable_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `processlist`
--

/*!50001 DROP TABLE IF EXISTS `processlist`*/;
/*!50001 DROP VIEW IF EXISTS `processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `processlist` AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if(`pps`.`NAME` = 'thread/sql/one_connection',concat(`pps`.`PROCESSLIST_USER`,'@',`pps`.`PROCESSLIST_HOST`),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`sys`.`format_statement`(`pps`.`PROCESSLIST_INFO`) AS `current_statement`,if(`esc`.`END_EVENT_ID` is null,`sys`.`format_time`(`esc`.`TIMER_WAIT`),NULL) AS `statement_latency`,if(`esc`.`END_EVENT_ID` is null,round(100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`),2),NULL) AS `progress`,`sys`.`format_time`(`esc`.`LOCK_TIME`) AS `lock_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(`esc`.`NO_GOOD_INDEX_USED` > 0 or `esc`.`NO_INDEX_USED` > 0,'YES','NO') AS `full_scan`,if(`esc`.`END_EVENT_ID` is not null,`sys`.`format_statement`(`esc`.`SQL_TEXT`),NULL) AS `last_statement`,if(`esc`.`END_EVENT_ID` is not null,`sys`.`format_time`(`esc`.`TIMER_WAIT`),NULL) AS `last_statement_latency`,`sys`.`format_bytes`(`mem`.`current_allocated`) AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(`ewc`.`END_EVENT_ID` is null and `ewc`.`EVENT_NAME` is not null,'Still Waiting',`sys`.`format_time`(`ewc`.`TIMER_WAIT`)) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`sys`.`format_time`(`etc`.`TIMER_WAIT`) AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on(`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`)) left join `performance_schema`.`events_stages_current` `estc` on(`pps`.`THREAD_ID` = `estc`.`THREAD_ID`)) left join `performance_schema`.`events_statements_current` `esc` on(`pps`.`THREAD_ID` = `esc`.`THREAD_ID`)) left join `performance_schema`.`events_transactions_current` `etc` on(`pps`.`THREAD_ID` = `etc`.`THREAD_ID`)) left join `sys`.`x$memory_by_thread_by_current_bytes` `mem` on(`pps`.`THREAD_ID` = `mem`.`thread_id`)) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID` and `conattr_pid`.`ATTR_NAME` = '_pid')) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID` and `conattr_progname`.`ATTR_NAME` = 'program_name')) order by `pps`.`PROCESSLIST_TIME` desc,if(`ewc`.`END_EVENT_ID` is null and `ewc`.`EVENT_NAME` is not null,'Still Waiting',`sys`.`format_time`(`ewc`.`TIMER_WAIT`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ps_check_lost_instrumentation`
--

/*!50001 DROP TABLE IF EXISTS `ps_check_lost_instrumentation`*/;
/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `ps_check_lost_instrumentation` AS select `performance_schema`.`global_status`.`VARIABLE_NAME` AS `variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `variable_value` from `performance_schema`.`global_status` where `performance_schema`.`global_status`.`VARIABLE_NAME` like 'perf%lost' and `performance_schema`.`global_status`.`VARIABLE_VALUE` > 0 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_auto_increment_columns`
--

/*!50001 DROP TABLE IF EXISTS `schema_auto_increment_columns`*/;
/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_auto_increment_columns` AS select `information_schema`.`COLUMNS`.`TABLE_SCHEMA` AS `table_schema`,`information_schema`.`COLUMNS`.`TABLE_NAME` AS `table_name`,`information_schema`.`COLUMNS`.`COLUMN_NAME` AS `column_name`,`information_schema`.`COLUMNS`.`DATA_TYPE` AS `data_type`,`information_schema`.`COLUMNS`.`COLUMN_TYPE` AS `column_type`,locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) = 0 AS `is_signed`,locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0 AS `is_unsigned`,case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end >> if(locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0,0,1) AS `max_value`,`information_schema`.`TABLES`.`AUTO_INCREMENT` AS `auto_increment`,`information_schema`.`TABLES`.`AUTO_INCREMENT` / (case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end >> if(locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0,0,1)) AS `auto_increment_ratio` from (`INFORMATION_SCHEMA`.`COLUMNS` join `INFORMATION_SCHEMA`.`TABLES` on(`information_schema`.`COLUMNS`.`TABLE_SCHEMA` = `information_schema`.`TABLES`.`TABLE_SCHEMA` and `information_schema`.`COLUMNS`.`TABLE_NAME` = `information_schema`.`TABLES`.`TABLE_NAME`)) where `information_schema`.`COLUMNS`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','performance_schema') and `information_schema`.`TABLES`.`TABLE_TYPE` = 'BASE TABLE' and `information_schema`.`COLUMNS`.`EXTRA` = 'auto_increment' order by `information_schema`.`TABLES`.`AUTO_INCREMENT` / (case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end >> if(locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0,0,1)) desc,case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end >> if(locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0,0,1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_index_statistics`
--

/*!50001 DROP TABLE IF EXISTS `schema_index_statistics`*/;
/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_index_statistics` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH`) AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE`) AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_object_overview`
--

/*!50001 DROP TABLE IF EXISTS `schema_object_overview`*/;
/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_object_overview` AS select `information_schema`.`routines`.`ROUTINE_SCHEMA` AS `db`,`information_schema`.`routines`.`ROUTINE_TYPE` AS `object_type`,count(0) AS `count` from `information_schema`.`routines` group by `information_schema`.`routines`.`ROUTINE_SCHEMA`,`information_schema`.`routines`.`ROUTINE_TYPE` union select `information_schema`.`tables`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` AS `TABLE_TYPE`,count(0) AS `COUNT(*)` from `information_schema`.`tables` group by `information_schema`.`tables`.`TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` union select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,concat('INDEX (',`information_schema`.`statistics`.`INDEX_TYPE`,')') AS `CONCAT('INDEX (', INDEX_TYPE, ')')`,count(0) AS `COUNT(*)` from `information_schema`.`statistics` group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`INDEX_TYPE` union select `information_schema`.`triggers`.`TRIGGER_SCHEMA` AS `TRIGGER_SCHEMA`,'TRIGGER' AS `TRIGGER`,count(0) AS `COUNT(*)` from `information_schema`.`triggers` group by `information_schema`.`triggers`.`TRIGGER_SCHEMA` union select `information_schema`.`events`.`EVENT_SCHEMA` AS `EVENT_SCHEMA`,'EVENT' AS `EVENT`,count(0) AS `COUNT(*)` from `information_schema`.`events` group by `information_schema`.`events`.`EVENT_SCHEMA` order by `db`,`object_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_redundant_indexes`
--

/*!50001 DROP TABLE IF EXISTS `schema_redundant_indexes`*/;
/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_redundant_indexes` AS select `redundant_keys`.`table_schema` AS `table_schema`,`redundant_keys`.`table_name` AS `table_name`,`redundant_keys`.`index_name` AS `redundant_index_name`,`redundant_keys`.`index_columns` AS `redundant_index_columns`,`redundant_keys`.`non_unique` AS `redundant_index_non_unique`,`dominant_keys`.`index_name` AS `dominant_index_name`,`dominant_keys`.`index_columns` AS `dominant_index_columns`,`dominant_keys`.`non_unique` AS `dominant_index_non_unique`,if(`redundant_keys`.`subpart_exists` <> 0 or `dominant_keys`.`subpart_exists` <> 0,1,0) AS `subpart_exists`,concat('ALTER TABLE `',`redundant_keys`.`table_schema`,'`.`',`redundant_keys`.`table_name`,'` DROP INDEX `',`redundant_keys`.`index_name`,'`') AS `sql_drop_index` from (`sys`.`x$schema_flattened_keys` `redundant_keys` join `sys`.`x$schema_flattened_keys` `dominant_keys` on(`redundant_keys`.`table_schema` = `dominant_keys`.`table_schema` and `redundant_keys`.`table_name` = `dominant_keys`.`table_name`)) where `redundant_keys`.`index_name` <> `dominant_keys`.`index_name` and (`redundant_keys`.`index_columns` = `dominant_keys`.`index_columns` and (`redundant_keys`.`non_unique` > `dominant_keys`.`non_unique` or `redundant_keys`.`non_unique` = `dominant_keys`.`non_unique` and if(`redundant_keys`.`index_name` = 'PRIMARY','',`redundant_keys`.`index_name`) > if(`dominant_keys`.`index_name` = 'PRIMARY','',`dominant_keys`.`index_name`)) or locate(concat(`redundant_keys`.`index_columns`,','),`dominant_keys`.`index_columns`) = 1 and `redundant_keys`.`non_unique` = 1 or locate(concat(`dominant_keys`.`index_columns`,','),`redundant_keys`.`index_columns`) = 1 and `dominant_keys`.`non_unique` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_lock_waits`
--

/*!50001 DROP TABLE IF EXISTS `schema_table_lock_waits`*/;
/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_lock_waits` AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`sys`.`format_statement`(`pt`.`PROCESSLIST_INFO`) AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE` and `g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA` and `g`.`OBJECT_NAME` = `p`.`OBJECT_NAME` and `g`.`LOCK_STATUS` = 'GRANTED' and `p`.`LOCK_STATUS` = 'PENDING')) join `performance_schema`.`threads` `gt` on(`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`)) join `performance_schema`.`threads` `pt` on(`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`)) left join `performance_schema`.`events_statements_current` `gs` on(`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`)) left join `performance_schema`.`events_statements_current` `ps` on(`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`)) where `g`.`OBJECT_TYPE` = 'TABLE' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics`
--

/*!50001 DROP TABLE IF EXISTS `schema_table_statistics`*/;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`sys`.`format_time`(`pst`.`SUM_TIMER_WAIT`) AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`sys`.`format_time`(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,`sys`.`format_time`(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,`sys`.`format_time`(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`sys`.`format_time`(`fsbi`.`sum_timer_misc`) AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema` and `pst`.`OBJECT_NAME` = `fsbi`.`table_name`)) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics_with_buffer`
--

/*!50001 DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`*/;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics_with_buffer` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`sys`.`format_time`(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,`sys`.`format_time`(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,`sys`.`format_time`(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`sys`.`format_time`(`fsbi`.`sum_timer_misc`) AS `io_misc_latency`,`sys`.`format_bytes`(`ibp`.`allocated`) AS `innodb_buffer_allocated`,`sys`.`format_bytes`(`ibp`.`data`) AS `innodb_buffer_data`,`sys`.`format_bytes`(`ibp`.`allocated` - `ibp`.`data`) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema` and `pst`.`OBJECT_NAME` = `fsbi`.`table_name`)) left join `sys`.`x$innodb_buffer_stats_by_table` `ibp` on(`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema` and `pst`.`OBJECT_NAME` = `ibp`.`object_name`)) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_tables_with_full_table_scans`
--

/*!50001 DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`*/;
/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_tables_with_full_table_scans` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT`) AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null and `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0 order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_unused_indexes`
--

/*!50001 DROP TABLE IF EXISTS `schema_unused_indexes`*/;
/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_unused_indexes` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name` from `performance_schema`.`table_io_waits_summary_by_index_usage` where `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null and `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_STAR` = 0 and `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` <> 'mysql' and `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` <> 'PRIMARY' order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session`
--

/*!50001 DROP TABLE IF EXISTS `session`*/;
/*!50001 DROP VIEW IF EXISTS `session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session` AS select `processlist`.`thd_id` AS `thd_id`,`processlist`.`conn_id` AS `conn_id`,`processlist`.`user` AS `user`,`processlist`.`db` AS `db`,`processlist`.`command` AS `command`,`processlist`.`state` AS `state`,`processlist`.`time` AS `time`,`processlist`.`current_statement` AS `current_statement`,`processlist`.`statement_latency` AS `statement_latency`,`processlist`.`progress` AS `progress`,`processlist`.`lock_latency` AS `lock_latency`,`processlist`.`rows_examined` AS `rows_examined`,`processlist`.`rows_sent` AS `rows_sent`,`processlist`.`rows_affected` AS `rows_affected`,`processlist`.`tmp_tables` AS `tmp_tables`,`processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`processlist`.`full_scan` AS `full_scan`,`processlist`.`last_statement` AS `last_statement`,`processlist`.`last_statement_latency` AS `last_statement_latency`,`processlist`.`current_memory` AS `current_memory`,`processlist`.`last_wait` AS `last_wait`,`processlist`.`last_wait_latency` AS `last_wait_latency`,`processlist`.`source` AS `source`,`processlist`.`trx_latency` AS `trx_latency`,`processlist`.`trx_state` AS `trx_state`,`processlist`.`trx_autocommit` AS `trx_autocommit`,`processlist`.`pid` AS `pid`,`processlist`.`program_name` AS `program_name` from `sys`.`processlist` where `processlist`.`conn_id` is not null and `processlist`.`command` <> 'Daemon' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session_ssl_status`
--

/*!50001 DROP TABLE IF EXISTS `session_ssl_status`*/;
/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session_ssl_status` AS select `sslver`.`THREAD_ID` AS `thread_id`,`sslver`.`VARIABLE_VALUE` AS `ssl_version`,`sslcip`.`VARIABLE_VALUE` AS `ssl_cipher`,`sslreuse`.`VARIABLE_VALUE` AS `ssl_sessions_reused` from ((`performance_schema`.`status_by_thread` `sslver` left join `performance_schema`.`status_by_thread` `sslcip` on(`sslcip`.`THREAD_ID` = `sslver`.`THREAD_ID` and `sslcip`.`VARIABLE_NAME` = 'Ssl_cipher')) left join `performance_schema`.`status_by_thread` `sslreuse` on(`sslreuse`.`THREAD_ID` = `sslver`.`THREAD_ID` and `sslreuse`.`VARIABLE_NAME` = 'Ssl_sessions_reused')) where `sslver`.`VARIABLE_NAME` = 'Ssl_version' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statement_analysis`
--

/*!50001 DROP TABLE IF EXISTS `statement_analysis`*/;
/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statement_analysis` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0 or `performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0,'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_errors_or_warnings`
--

/*!50001 DROP TABLE IF EXISTS `statements_with_errors_or_warnings`*/;
/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_errors_or_warnings` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100 AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100 AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0 or `performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0 order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_full_table_scans`
--

/*!50001 DROP TABLE IF EXISTS `statements_with_full_table_scans`*/;
/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_full_table_scans` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100,0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0) AS `rows_sent_avg`,round(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0 or `performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) and `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`  not like 'SHOW%' order by round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100,0) desc,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_runtimes_in_95th_percentile` AS select `sys`.`format_statement`(`stmts`.`DIGEST_TEXT`) AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0 or `stmts`.`SUM_NO_INDEX_USED` > 0,'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`sys`.`format_time`(`stmts`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`stmts`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`stmts`.`AVG_TIMER_WAIT`) AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull(`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull(`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `sys`.`x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on(round(`stmts`.`AVG_TIMER_WAIT` / 1000000,0) >= `top_percentile`.`avg_us`)) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_sorting`
--

/*!50001 DROP TABLE IF EXISTS `statements_with_sorting`*/;
/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_sorting` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where `performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0 order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_temp_tables`
--

/*!50001 DROP TABLE IF EXISTS `statements_with_temp_tables`*/;
/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_temp_tables` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_tmp_tables_per_query`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0),0) * 100,0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0 order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary`
--

/*!50001 DROP TABLE IF EXISTS `user_summary`*/;
/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary` AS select if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,`sys`.`format_time`(sum(`stmt`.`total_latency`)) AS `statement_latency`,`sys`.`format_time`(ifnull(sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,`sys`.`format_time`(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,`sys`.`format_bytes`(sum(`mem`.`current_allocated`)) AS `current_memory`,`sys`.`format_bytes`(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `sys`.`x$user_summary_by_statement_latency` `stmt` on(if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`)) left join `sys`.`x$user_summary_by_file_io` `io` on(if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`)) left join `sys`.`x$memory_by_user_by_current_bytes` `mem` on(if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`)) group by if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io`
--

/*!50001 DROP TABLE IF EXISTS `user_summary_by_file_io`*/;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io` AS select if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where `performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' group by if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io_type`
--

/*!50001 DROP TABLE IF EXISTS `user_summary_by_file_io_type`*/;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io_type` AS select if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where `performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%' and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0 order by if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_stages`
--

/*!50001 DROP TABLE IF EXISTS `user_summary_by_stages`*/;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_stages` AS select if(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where `performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_latency`
--

/*!50001 DROP TABLE IF EXISTS `user_summary_by_statement_latency`*/;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_latency` AS select if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_type`
--

/*!50001 DROP TABLE IF EXISTS `user_summary_by_statement_type`*/;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_type` AS select if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-1) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED` AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `version`
--

/*!50001 DROP TABLE IF EXISTS `version`*/;
/*!50001 DROP VIEW IF EXISTS `version`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `version` AS select '1.5.1' AS `sys_version`,version() AS `mysql_version` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

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

-- Dump completed on 2023-03-06  8:52:28