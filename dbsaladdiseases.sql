-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (x86_64)
--
-- Host: localhost    Database: dbsaladdiseases
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbdiseases`
--

DROP TABLE IF EXISTS `tbdiseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbdiseases` (
  `did` int NOT NULL AUTO_INCREMENT,
  `disease` varchar(100) DEFAULT NULL,
  `typedisease` varchar(100) DEFAULT NULL,
  `dmeaning` varchar(1000) DEFAULT NULL,
  `cause` varchar(1000) DEFAULT NULL,
  `treatment` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbdiseases`
--

LOCK TABLES `tbdiseases` WRITE;
/*!40000 ALTER TABLE `tbdiseases` DISABLE KEYS */;
INSERT INTO `tbdiseases` VALUES (1,'បាក់តេរី','Bacterial','ជំងឺបាក់តេរី កើតដោយសារ អាកាសធាតុក្ដៅហើយសើម ជាពិសេសនៅរដូវភ្លៀង។ វាអាចកើត ជំងឺម្ដងទៀតដោយសា សំណើមដី និង ជំរកដែលនៅជំវិញ។','ស្លឹកព័ណ៌លឿង មុននឹងស្ងួតទៅៗ មានចំនុចជ្រុង នៅលើកគែមស្លឹកយូរទៅឡើងត្នោតក្រម៉ៅ មេរោគ ចាប់ផ្ដើមរលួយ លើស្លឹករហូតដល់ដើម ដើមខៀវខ្ចីប្រែជាក្រម៉ៅ នៅលើស្លឹកសើមក៏ប្រែទៅជាស្ងួត','- ប្រើពូជដែល ធន់និងជំងឺ ហើយជឿរទុក្ខចិត្តខ្ពស់ - ពិនិត្យមើលសំណើម មុនធ្វើការស្រោចទឹក - ដកដើមមានជំងឺចេញ ប្រើកំបោរ ដាក់នៅលើរណ្ដៅដែលដកចេញ - សំអាតដៃ ជាមួយសាប៊ូ រឺ អាកុល ពេលកាន់ដើមមានជំងឺ - បង្កើនចន្លោះជួរ,ដើមនឹងលើករង  - ប្រើថ្នាំ Copper-oxychloride, copper-hydroxide​ ដើម្បីព្យាបាល'),(2,'ផ្សិត','Downy Mildew','ជំងឺដោយផ្សិតៈ​ Erysiphe cichara-cearum និង Sphearotheca fuligena ដោយឆ្លងរីករាលដាលពាសពេញពិភពលោក ភាពច្រើនដោយសារខ្យល់។ ភ្នាក់ងារបង្កនេះអាចរស់នៅក្នុងកាកសំណលរុក្ខជាតិ ជាពិសេសអំបូរដំណាំត្រសក់។ ហើយវាបណ្តាលមកដោយសារ ការមានកម្តៅខ្លាំង  និងការស្រោយស្របទឹកលើសលប់ អាចធ្វើឲស្ព័រដុះលុតលាស់ និងរាលដាល់ខ្លាំង។','អុចពណ៏លឿងលេចឡើងនៅលើស្លឹក និងមែកបន្ទាប់មកក្លាចជាពណ៍ម្សៅរបស់ conidia​ រាលដាល់ពាស់ពេញលើស្លឹកមានស្មាមអុចពណ៍ស -ដំបៅរាលដាលគ្រប់ពេញផ្ទៃស្លឹកខាងលើ -ជំងឺរាលដាលខ្លាំងបណ្តាលឲស្លឹកស្ងួត','-ការប្រើប្រាស់ពូជធន -ការសម្អាតគ្រាប់ពូជ និងការព្ជួរដីបានជ្រៅ -ការដាំដំណាំឆ្លាស់ដោយមិនដំណាំសាឡាដដដែលៗ -បាញ់ថ្នាំសម្លាប់ផ្សិត ទៅតាមការណែនាំរបស់មន្ត្រីជំនាញកសិកម្ម'),(3,'ផ្សិត','Powdery Mildew','វាមានការលេចឡើងជាផ្សិតដុំម្សៅពណ៌ប្រផេះដុះនៅលើកំពូល និងបាតនៃស្លឹកសាឡាដ។ ','ការឆ្លងបែបនេះអាចបណ្តាលឱ្យខូចទ្រង់ទ្រាយ និង bucking នៃស្លឹក។ នៅដំណាក់កាលដែលកំពុងលូតលាស់ ស្លឹកអាចចាប់ផ្តើមស្ងួត និងប្រែពណ៌ត្នោត។','បន្ទាប់ពីជំងឺលេចចេញមក យើងគួរប្រើតែលាយថ្នាំដើម្បីធ្វើកាការពារ យើងត្រូវលាយៈទឹកដោះគោឆៅ (250ml/lot), Karathane (2 ml, ទឹក 1L), Trichoderma (107 conidia/ml of suspension) និងការគ្រប់គ្រង (ទឹកចម្រោះ) ត្រូវបានអនុវត្តជាថ្នាំបាញ់លើស្លឹក។ការបាញ់សរុបចំនួនបួនគ្រាប់នៅចន្លោះពេលទៀងទាត់នៃមួយសប្តាហ៍។ ការបាញ់ថ្នាំត្រូវបានធ្វើនៅពេលល្ងាច (បន្ទាប់ពីម៉ោង 2 រសៀល) ដើម្បីទទួលបានប្រសិទ្ធភាព។'),(4,'ផ្សិត','Septoria Blight','Septoria Blight បណ្តាលមកពីបាក់តេរី Xanthomonas hortorum patovar ។ ហើយ បាក់តេរីអាចវាយប្រហារប្រភេទណាមួយនៃសាឡាត់ដាំដុះ។​ ','ជំងឺនេះ តែងតែកើតមានក្រោម លក្ខខណ្ឌក្តៅ និងសើម។ឲតែមានលក្ខខណ្ឌនេះគឺវាអំណោយផលសម្រាប់ការអភិវឌ្ឍជំងឺ  បន្ទាប់ពីការឆ្លងធ្ងន់ធ្ងរកើតឡើង សាឡាត់មិនអាចលូតលាស់បានល្អនោះទេ។​ ការបង្ករោគចាប់ផ្តើមជាចំណុចពណ៌ត្នោតតូចៗ ដែលនៅដំណាក់កាលក្រោយៗនៃការអភិវឌ្ឍន៍ជំងឺបានរួមផ្សំគ្នាដើម្បីបង្កើតជាចំណុចធំ។','យកស្លឹកដែលមានមេរោគចេញ យកស្លឹកដែលឆ្លងមេរោគចេញភ្លាមៗ ហើយត្រូវប្រាកដថាលាងដៃឲបានស្អាត មុននឹងធ្វើការជាមួយរុក្ខជាតិដែលគ្មានមេរោគ។ ពិចារណាក្នុងការជម្រើសថ្នាំសំលាប់មេរោគសរីរាង្គ ថ្នាំសម្លាប់ផ្សិតដែលមានទង់ដែង ឬប៉ូតាស្យូមប៊ីកាបូណាត នឹងជួយការពារការរីករាលដាលនៃជំងឺនេះ។ ចាប់ផ្តើមបាញ់ថ្នាំភ្លាមៗ នៅពេលដែលរោគសញ្ញាដំបូងលេចឡើង ហើយធ្វើតាមការណែនាំរបស់ស្លាកសម្រាប់ការគ្រប់គ្រងបន្ត។ ពិចារណាក្នុងការប្រើប្រាស់ថ្នាំសំលាប់មេរោគគីមី ខណៈពេលដែលជម្រើសគីមីមិនអំណោយផល ពួកគេអាចជាជម្រើសតែមួយគត់សម្រាប់ការគ្រប់គ្រងការឆ្លងមេរោគកម្រិតខ្ពស់។ សារធាតុពុលតិចបំផុត និងមានប្រសិទ្ធភាពបំផុតមួយគឺ chlorothalonil (លក់ក្រោមឈ្មោះ Fungonil និង Daconil)។'),(5,'ផ្សិត','Wilt and Leaf Blight','ជំងឺនេះគឺជាជំងឺថ្មីនៃសាឡាត់ដែលត្រូវបានពិពណ៌នាជាលើកដំបូងនៅក្នុង 1967 នៅក្នុងប្រទេសជប៉ុន។ នៅរដ្ឋអារីហ្សូណា ជំងឺនេះត្រូវបានរាយការណ៍ជាលើកដំបូងនៅក្នុងឆ្នាំ 2001 ហើយចាប់តាំងពីពេលនោះមកបានរីករាលដាលពាសពេញតំបន់ផលិតសាឡាត់នៃភាគនិរតីនៃសហរដ្ឋអាមេរិក។ ជំងឺនេះប៉ះពាល់ដល់ប្រភេទសាឡាដទាំងអស់ ប៉ុន្តែមានច្រើនចំពោះប្រភេទស្លឹក ។','រោគ​សញ្ញា​រួម​មាន​ការ​ក្រិន​យ៉ាង​ធ្ងន់ធ្ងរ​នៃ​រុក្ខជាតិ​សាឡាត់​ជាមួយ​នឹង​ឫស​ដែល​មាន​ជំងឺ​បង្ហាញ​ពី​ការ​លេច​ចេញ​ពណ៌ត្នោត​ខ្មៅ និង​ដុំសាច់​នៃ​សរសៃ​ឈាម​ដែល​លាតសន្ធឹង​ពី​គល់​ដើម​ចូល​ទៅ​ក្នុង​ដើម។ នៅពេលដែលជំងឺនេះកើតឡើងនៅក្នុងកូនសាឡាដគឺត្រូវដួឡរលំនិងស្លាប់យ៉ាងឆាប់រហ័ស។ នៅក្នុងរុក្ខជាតិដែលមានភាពចាស់ រោគសញ្ញានៃជំងឺអាចមិនបង្ហាញឱ្យឃើញភ្លាមៗនោះទេ ប៉ុន្តែនឹងអាចមើលឃើញភ្លាមៗបន្ទាប់ពីថ្ងៃក្តៅ នៅពេលដែលការផ្ទុកហូរចេញមានកម្រិតខ្ពស់។ នៅដំណាក់កាលនេះជំងឺអាចត្រូវបានគេច្រឡំថាជាការធ្លាក់ចុះនៃសាឡាត់ដែលបណ្តាលមកពី Sclerotinia sclerotiorum ។','ការ​គ្រប់​គ្រង​វជំងឺគឺ​ចាប់​ផ្ដើម​ដោយ​ការ​ការពារ​ការ​ឆ្លង​មេរោគ​ក្នុង​តំបន់។ ដោយសារ​មេរោគ​មិន​ងាយ​ឆ្លង​តាម​ខ្យល់នោះទេ។ ការ​រាលដាល​នៃ​ជំងឺ​គឺ​តាមរយៈ​ការ​សាយភាយ​ដី​កខ្វក់ ឬ​គ្រាប់ពូជ​ដែល​មាន​មេរោគ។ ដើម្បីបងា្ករការរីករាលដាល ដីទាំងអស់គួរតែត្រូវបានត្រួតពិនិត្យឬការភ្ជួរហាលដី។ លើសពីនេះ គ្រាប់ពូជគួរតែត្រូវបានធ្វើតេស្តរកមើលការចម្លងរោគ ប្រសិនបើផលិតនៅកន្លែងដែលមានមេរោគគឺត្រូវដឹងច្បាស់ថាតើកើតមេរោគឬអត់?'),(6,'មេរោគ','Viral','Viral ជាមេរោគ ដែលគេបរម្ភបំផុតសម្រាប់រុក្ខជាតិព្រោះវាមានបណ្ដុំជំងឺតូចៗពីរផ្សេងទៀតដែលនៅក្នុងពពួក Virusនេះហើយវាបណ្តាលឲ្យមានការឆ្លងលឿនណាស់ទៅលើរុក្ខជាតិសាឡាដ និងបណ្តាលឱ្យមានការថយចុះទិន្នផលខ្ពស់ក្នុងការដាំដុះសាឡាដ','មេរោគរុក្ខជាតិសំខាន់ៗពីរនេះគឺ មេរោគ៖ -Lettuce mosaic Virus គឺជាមេរោគ ត្រូវបានចម្លងដោយពពូក aphid និងតាមរយៈគ្រាប់ពូជ -Lettuce big-vein virus គឺធ្វើឱ្យសរសៃនៅក្នុងស្លឹករីកធំ និងថ្លា ហើយការខូចទ្រង់ទ្រាយបែបនេះត្រូវបានគេមើលឃើញយ៉ាងងាយស្រួលប្រសិនបើស្លឹកត្រូវបានពិនិត្យជាមួយនឹងប្រភពពន្លឺនៅពីក្រោយវា។','ដាំពូជដែលធន់នឹងជំងឺ។ ប្រើគ្រាប់ពូជដែលមានសុខភាពល្អគ្មានជំងឺ។ ប្រសិនបើមានជំងឺនេះគួតែព្យាបាលជាមួយ methyl bromide, chloropicrin ឬដំណោះស្រាយ dazomet ។');
/*!40000 ALTER TABLE `tbdiseases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbimage`
--

DROP TABLE IF EXISTS `tbimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbimage` (
  `imageid` int NOT NULL AUTO_INCREMENT,
  `imagename` varchar(100) DEFAULT NULL,
  `typeimg` varchar(100) DEFAULT NULL,
  `imgpath` varchar(500) DEFAULT NULL,
  `other` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`imageid`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbimage`
--

LOCK TABLES `tbimage` WRITE;
/*!40000 ALTER TABLE `tbimage` DISABLE KEYS */;
INSERT INTO `tbimage` VALUES (1,'បាក់តេរី','Disease','ba2.jpg','bacterial'),(2,'បាក់តេរី','Disease','ba4.jpg','bacterial'),(3,'បាក់តេរី','Disease','ba9.jpg','bacterial'),(4,'បាក់តេរី','Disease','ba14.jpg','bacterial'),(5,'បាក់តេរី','Disease','ba19.jpg','bacterial'),(6,'ផ្សិត','Disease','01.jpg','DownyMildew'),(7,'ផ្សិត','Disease','02.jpg','DownyMildew'),(8,'ផ្សិត','Disease','03.jpg','DownyMildew'),(9,'ផ្សិត','Disease','04.jpg','DownyMildew'),(10,'ផ្សិត','Disease','05.jpg','DownyMildew'),(11,'ផ្សិត','Disease','p02.jpg','PowderyMildew'),(12,'ផ្សិត','Disease','p04.jpg','PowderyMildew'),(13,'ផ្សិត','Disease','p05.jpg','PowderyMildew'),(14,'ផ្សិត','Disease','p06.jpg','PowderyMildew'),(15,'ផ្សិត','Disease','p10.jpg','PowderyMildew'),(16,'ផ្សិត','Disease','p02.jpg','SeptoriaBlight'),(17,'ផ្សិត','Disease','p04.jpg','SeptoriaBlight'),(18,'ផ្សិត','Disease','p05.jpg','SeptoriaBlight'),(19,'ផ្សិត','Disease','p06.jpg','SeptoriaBlight'),(20,'ផ្សិត','Disease','p10.jpg','SeptoriaBlight'),(21,'ផ្សិត','Disease','wl01.jpg','WiltAndLeafBlight'),(22,'ផ្សិត','Disease','wl02.jpg','WiltAndLeafBlight'),(23,'ផ្សិត','Disease','wl03.jpg','WiltAndLeafBlight'),(24,'ផ្សិត','Disease','wl04.jpg','WiltAndLeafBlight'),(25,'ផ្សិត','Disease','wl05.jpg','WiltAndLeafBlight'),(26,'មេរោគ','Disease','th4.jpg','viral'),(27,'មេរោគ','Disease','th5.jpg','viral'),(28,'មេរោគ','Disease','th6.jpg','viral'),(29,'មេរោគ','Disease','th9.jpg','viral'),(30,'មេរោគ','Disease','th13.jpg','viral'),(31,'សាឡាដទឹកកក','SaladType','iceberg1.jpg','iceberg'),(32,'សាឡាដទឹកកក','SaladType','iceberg2.jpg','iceberg'),(33,'សាឡាដទឹកកក','SaladType','iceberg3.jpg','iceberg'),(34,'សាឡាដទឹកកក','SaladType','iceberg4.jpg','iceberg'),(35,'សាឡាដទឹកកក','SaladType','iceberg5.jpg','iceberg'),(36,'សាឡាដទឹកកក','SaladType','iceberg6.jpg','iceberg'),(37,'សាឡាដទឹកកក','SaladType','iceberg7.jpg','iceberg'),(38,'សាឡាដទឹកកក','SaladType','iceberg8.jpg','iceberg'),(39,'សាឡាដទឹកកក','SaladType','iceberg9.jpg','iceberg'),(40,'សាឡាដទឹកកក','SaladType','iceberg10.jpg','iceberg'),(41,'សាឡាដរូមែន','SaladType','romaine1.jpg','romaine'),(42,'សាឡាដរូមែន','SaladType','romaine2.jpg','romaine'),(43,'សាឡាដរូមែន','SaladType','romaine3.jpg','romaine'),(44,'សាឡាដរូមែន','SaladType','romaine4.jpg','romaine'),(45,'សាឡាដរូមែន','SaladType','romaine5.jpg','romaine'),(46,'សាឡាដរូមែន','SaladType','romaine6.jpg','romaine'),(47,'សាឡាដរូមែន','SaladType','romaine7.jpg','romaine'),(48,'សាឡាដរូមែន','SaladType','romaine8.jpg','romaine'),(49,'សាឡាដរូមែន','SaladType','romaine9.jpg','romaine'),(50,'សាឡាដរូមែន','SaladType','romaine10.jpg','romaine'),(51,'សាឡាដស្លឹក','SaladType','leaf1.jpg','leaf'),(52,'សាឡាដស្លឹក','SaladType','leaf2.jpg','leaf'),(53,'សាឡាដស្លឹក','SaladType','leaf3.jpg','leaf'),(54,'សាឡាដស្លឹក','SaladType','leaf4.jpg','leaf'),(55,'សាឡាដស្លឹក','SaladType','leaf5.jpg','leaf'),(56,'សាឡាដស្លឹក','SaladType','leaf6.jpg','leaf'),(57,'សាឡាដស្លឹក','SaladType','leaf7.jpg','leaf'),(58,'សាឡាដស្លឹក','SaladType','leaf8.jpg','leaf'),(59,'សាឡាដស្លឹក','SaladType','leaf9.jpg','leaf'),(60,'សាឡាដស្លឹក','SaladType','leaf10.jpg','leaf'),(61,'សាឡាដអាហ្គូឡា','SaladType','argular1.jpg','argular'),(62,'សាឡាដអាហ្គូឡា','SaladType','argular2.jpg','argular'),(63,'សាឡាដអាហ្គូឡា','SaladType','argular3.jpg','argular'),(64,'សាឡាដអាហ្គូឡា','SaladType','argular4.jpg','argular'),(65,'សាឡាដអាហ្គូឡា','SaladType','argular5.jpg','argular'),(66,'សាឡាដអាហ្គូឡា','SaladType','argular6.jpg','argular'),(67,'សាឡាដអាហ្គូឡា','SaladType','argular7.jpg','argular'),(68,'សាឡាដអាហ្គូឡា','SaladType','argular8.jpg','argular'),(69,'សាឡាដអាហ្គូឡា','SaladType','argular9.jpg','argular'),(70,'សាឡាដអាហ្គូឡា','SaladType','argular10.jpg','argular'),(71,'សាឡាដអែនដាយ','SaladType','endive1.jpg','endive'),(72,'សាឡាដអែនដាយ','SaladType','endive2.jpg','endive'),(73,'សាឡាដអែនដាយ','SaladType','endive3.jpg','endive'),(74,'សាឡាដអែនដាយ','SaladType','endive4.jpg','endive'),(75,'សាឡាដអែនដាយ','SaladType','endive5.jpg','endive'),(76,'សាឡាដអែនដាយ','SaladType','endive6.jpg','endive'),(77,'សាឡាដអែនដាយ','SaladType','endive7.jpg','endive'),(78,'សាឡាដអែនដាយ','SaladType','endive8.jpg','endive'),(79,'សាឡាដអែនដាយ','SaladType','endive9.jpg','endive'),(80,'សាឡាដអែនដាយ','SaladType','endive10.jpg','endive');
/*!40000 ALTER TABLE `tbimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbsaladtype`
--

DROP TABLE IF EXISTS `tbsaladtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbsaladtype` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `saladname` varchar(100) DEFAULT NULL,
  `descrip` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbsaladtype`
--

LOCK TABLES `tbsaladtype` WRITE;
/*!40000 ALTER TABLE `tbsaladtype` DISABLE KEYS */;
INSERT INTO `tbsaladtype` VALUES (1,'សាឡាដរ៉ូមែន','សាឡដរ៉ូមែនវាមានលក្ខណៈដុះជាគុម្ភដែលមានស្លឹកវែងៗរាងក្តោបចូលគ្នា។ស្លឹកស្រទាប់ខាងក្រៅមានពណ៍បៃតងឯស្លឹកស្រទាបខាងក្នុងមានពណ៍បៃតងលាយស។ សាឡាដរ៉ូមែនមានលក្ខណៈស្រួយនិងមានជាតិផ្អែម ជាពិសេសវាមានទីផ្សារខ្លាំងជាគេ។\nសាឡាដ Romaine មានផ្ទុកប្រូតេអ៊ីន ២ដង វីតាមីនK ៣ដង ជាតិដែក ៤ដង វីតាមីនសេ  និង ៧ដងនៃវីតាមីនអា ច្រើនជាងដែលយើងញាំសាឡាដ Iceberg​ ។ដែលល្អសម្រាប់ការជួសជុលជាលិកាសាច់ដុំដែលខូច និងការពារការរលាក។ អ្នកអាចបង្កើនការទទួលទានជាតិប្រូតេអ៊ីនដោយញ៉ាំសាឡាដនេះជាមួយសណ្តែក សាច់ និងផលិតផលទឹកដោះគោ។\nជាប្រភេទសាឡាដ ដែលតម្រូវការអាកាសធាតុ < 25o ​ ធន់ទ្រាំនិងសត្វល្អិត\nចន្លុះគុម្ព ២៥គុណ និង ៣០សង់ទីម៉ែត\nផ្ទៃដី ១០០ម៉ែតការ៉ែប្រើពូជអស់តែ ៤០ ទៅ ៥០ ក្រាមតែប៉ុណ្ណោះ\nការប្រមូលផល ៣០​ទៅ៤០ថ្ងៃ'),(2,'សាឡាដស្លឹក','សាឡាដស្លឹកវាដុះជាគុម្ភ និងមានស្លឹកលាចេញពីគ្នា ហើយស្លឹកអាចក្រាស់ ស្តើង ឬរួញ និងមានពណ៌បៃតង ឬបៃតងលាយក្រហម ហើយមានរសជាតិស្រាល ឬហឹរតិចៗ។ ជារុក្ខជាតិដែលមានស្លឹក ហើយសម្បូរទៅដោយវីតាមីន និងសារធាតុរ៉ែសំខាន់ៗដូចជា វីតាមីន A វីតាមីន C ជាតិដែក និងកាល់ស្យូម។ សាឡាត់នេះមានភាពងាយស្រួលក្នុងការរៀបចំ ហើយអាចត្រូវបានបម្រើជាអាហារសម្រន់រហ័ស ឬជាផ្នែកមួយនៃអាហារចម្បង។'),(3,'សាឡាដទឹកកក ','សាឡាដទឹកកគឺមានរូបរាងស្រដៀងស្ពៃក្តោបវាមានលក្ខណៈ រឹង ស្រួយជាងសាឡាដរ៉ូម៉ែន និងមានជាតិទឹកច្រើន។ សាឡាត់ Iceberg គឺគេតែងតែយកវាជាអាហារសម្រនពេលព្រឹកដែលគេតែងតែលាយជាមួយបន្លៃដដទៃទៀតពិសេសសម្រាប់អ្នកសម្រកគីឡួ។ ពីព្រោះមានកាឡូរីត្រឹមតែ 10 កាឡូរីក្នុងមួយកែវនៃសាឡាត់ដែលកាត់ចោល ដែលធ្វើឱ្យវាក្លាយជាអាហារដែលមានកាឡូរីតិចបំផុតដែលអ្នកអាចញ៉ាំបាន។ អ្នកអាចប្រើសាឡាត់ iceberg ដើម្បីបន្ថែមសារធាតុទៅក្នុងអាហាររបស់អ្នកដោយមិនចាំបាច់បន្ថែមកាឡូរី។\nមួយពែងនៃសាឡាត់ទឹកកកកាត់ជាបំណែកមាន:\nកាឡូរី៖ ១០,ខ្លាញ់៖ ០ ក្រាម,កូលេស្តេរ៉ុល៖ ០ មីលីក្រាម,សូដ្យូម៖ ៧ មីលីក្រាម\nកាបូអ៊ីដ្រាត៖ ២ ក្រាម,ជាតិសរសៃ៖ ១ ក្រាម,ស្ករ៖ ១ ក្រាម,ប្រូតេអ៊ីន៖ ១ ក្រាម។ហើយសម្បូរទៅដោយវីតាមីន និងសារធាតុរ៉ែសំខាន់ៗដូចជា វីតាមីន A វីតាមីន C ជាតិដែក និងកាល់ស្យូម'),(4,'សាឡាដអាហ្គូឡា','សាឡាដអាហ្គូឡាឬសាឡាដរ៉ូកែត វាមានរសជាតិហិរតិចៗយើងឧស្សាហ៍ឃើញសាឡាដនេះនៅក្នុងម្ហូបអ៊ីតាលី លើភីហ្សា និងសំបូរនៅលើផ្សារទំនើបធំៗ។\nជាជម្រើសដែលមានសុខភាពល្អបំផុតរបស់អ្នកញាំពីព្រោះ ១០០ក្រាមនៃ arugula មាន:\nខ្លាញ់៖ ០,៧ ក្រាម, កាបូអ៊ីដ្រាត៖ ៣,៧ ក្រាម, សូដ្យូម: 27 មីលីក្រាម\nប្រូតេអ៊ីន៖ ២,៦ ក្រាម។ វីតាមីន និងសារធាតុរ៉ែផ្សេងទៀតរួមមានៈ\nកាល់ស្យូម,ជាតិដែក,វីតាមីនអា,វីតាមីន C,វីតាមីន K,ហ្វូឡាត,ប៉ូតាស្យូម,\nម៉ាញ៉េស្យូម'),(5,'សាឡាដអែនដាយ','សាឡាដអែនដាយ ឬសាឡាដ Frisée វាមានលក្ខណៈដុះជាគុម្ភមានស្លឹកវែងៗតូចៗ រាងក្រញាញ់ អាចមានរសជាតិល្វីងបន្តិច ហើយជាទូទៅយើងច្រើនតែប្រើប្រាស់សាឡាដ\nជាប្រភេទសាឡាដ ដែលតម្រូវការអាកាសធាតុ < 25o ​ ធន់ទ្រាំនិងសត្វល្អិត\nចន្លុះគុម្ព ២៥គុណ និង ៣០សង់ទីម៉ែត\nផ្ទៃដី ១០០ម៉ែតការ៉ែប្រើពូជអស់តែ ៤០ ទៅ ៥០ ក្រាមតែប៉ុណ្ណោះ\nការប្រមូលផល ៣០​ទៅ៤០ថ្ងៃ');
/*!40000 ALTER TABLE `tbsaladtype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-01 18:01:54
