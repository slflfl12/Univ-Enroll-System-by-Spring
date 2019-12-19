-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: enrollment
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` varchar(45) NOT NULL,
  `semester` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `division` varchar(45) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('CAE0007','1','2015','공학윤리','핵교A',2),('CAE0009','1','2015','대학수학Ⅰ','핵교A',2),('CAE0010','2','2015','대학수학Ⅱ','핵교A',2),('CBEF004','2','2015','미분방정식의 이해','핵교B',2),('CBEN003','1','2015','동아시아와 북한의 이해','핵교B',2),('COM0002','1','2015','컴퓨터프로그래밍Ⅰ','전기',3),('COM0004','1','2015','이산수학','전기',3),('COM0005','2','2015','컴퓨터프로그래밍Ⅱ','전기',3),('COM0068','1','2015','컴퓨터 기술 체험론','전선',3),('GEN0026','2','2015','정보화시대와 현대조직','일교',2),('GEN0027','2','2018','사회봉사','토대',3),('REQ0001','1','2015','사고와 표현I','교필',2),('REQ0014','2','2015','사고와 표현II','교필',2),('REQ0015','2','2015','대학과 지성','교필',2),('REQ0112','1','2015','영어커뮤니케이션 독해/작문A-II','교필',1),('REQ0124','1','2015','영어커뮤니케이션 청취/회화A-II','교필',1),('REQ0212','2','2015','	영어커뮤니케이션 독해/작문B-II','교필',1),('REQ0224','2','2015','영어커뮤니케이션 청취/회화B-II','교필',1),('U121012','2','2018','그린IT의 이해','인재',3),('U121014','2','2019','고객관계관리전략','자율',3),('U121025','2','2019','생활속의계약과협상','자율',3),('U122038','1','2019','인간심리의 여행','자율',3),('U122063','1','2019','술문화의 이해','자율',3),('V020001','1','2018','객체지향언어1','전선',3),('V020002','1','2018','자료구조','전지',3),('V020003','1','2018','컴퓨터구조','전선',3),('V020004','1','2018','프로그래밍랩','전선',3),('V020005','1','2018','프로그래밍언어론','전선',3),('V020007','2','2018','객체지향언어2','전선',3),('V020008','2','2018','데이터통신','전선',3),('V020010','2','2018','알고리즘','전선',3),('V020011','2','2018','오픈소스소프트웨어','전선',3),('V020012','1','2019','데이터베이스','전선',3),('V020013','1','2019','소프트웨어공학','전선',3),('V020014','1','2019','운영체제','전선',3),('V020017','2','2019','네트워크프로그래밍','전선',3),('V020018','2','2019','설계패턴','전선',3),('V021003','2','2018','모바일&스마트시스템','전선',3),('V021004','1','2019','안드로이드프로그래밍','전선',3),('V021006','2','2019','고급모바일프로그래밍','전선',3),('V024003','2','2019','웹프로그래밍','전선',3),('V024004','1','2019','웹서버프로그래밍','전선',3),('V024005','2','2019','웹프레임워크1','전선',3);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-18  0:12:50
