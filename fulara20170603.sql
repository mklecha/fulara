-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fulara
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_pl` text NOT NULL,
  `name_fr` text NOT NULL,
  `author` text NOT NULL,
  `thumbnail` text NOT NULL,
  `zip` text NOT NULL,
  `ord` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift`
--

DROP TABLE IF EXISTS `gift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `descr` text NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `reserved` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift`
--

LOCK TABLES `gift` WRITE;
/*!40000 ALTER TABLE `gift` DISABLE KEYS */;
INSERT INTO `gift` VALUES (1,'Parasol','Ładny, duży, z pokrowcem, może być czerwony ;) Prosimy o tzw 1-sekcyjny, jak na obrazku.','parasol.jpg',NULL,0),(2,'Wyciskarka do czosnku','Nie jesteśmy pewni czy tak się nazywa ten wspaniały reprezentant dziedziny zwanej sztuką użytkową, ale zakładamy, że wszystko jest jasne! Prosimy o solidny, tak żeby się nie wyginał','wyciskacz-do-czosnku.JPG','http://www.ikea.com/pl/pl/catalog/products/00089163/',1),(3,'Przykrywki do patelni','Patelnie już mamy. Potrzeba nam dwóch przykrywek, 24 cm i 26 cm średnicy','pokrywka.JPG',NULL,0),(4,'Komplet sztućców','Kompletny zestaw, po 12 sztuk każdego elementu (widelec, noż, łyżka, łyżeczka). Prosimy o widelce z długimi zębami i głębokie łyżki','sztucce.jpg',NULL,0),(15,'Kieliszki do białego wina','Komplet 12 kieliszków','kiel_blanche.JPG',NULL,0),(16,'Kieliszki do wina czerwonego','Komplet 12 kieliszków','kiel_rouge.JPG',NULL,0),(17,'Szklanki','Komplet 12 szklanek. Niekoniecznie takie zwyczajne, może jakies ozdobne? Mogą też być większe niż standardowe.','szklanka.JPG','http://www.ikea.com/pl/pl/catalog/products/50278359/',0),(18,'Talerze','Kompletny zestaw, do użytku codziennego. Po 6 sztuk każdego elementu (talerz płytki, głęboki i talerzyk)','talerz.JPG',NULL,0),(19,'Plastikowa miska','Do robienia ciast i innych rzeczy','miska.JPG','http://www.ikea.com/pl/pl/catalog/products/90257519/',0),(20,'Blaszki do ciast','Też do robienia ciast i innych rzeczy :) Rozmiar mały, sztuk 2','blaszka_mala.jpg','https://www.superwnetrze.pl/emaliowana-keksowka-kaiser,t121970.html',0),(21,'Blaszki do ciast','Też do robienia ciast i innych rzeczy :) Rozmiar duży, sztuk 2','blaszka_duza.jpg','https://www.garneczki.pl/produkt/forma-do-pieczenia-ciasta-prostokatna-spinawar-prostokatna-36-x-28-cm,29417',0),(22,'Pojemniki hermetyczne','Zawsze się przydadzą','pojemniki.jpg',NULL,0),(23,'Imbryk','Do herbaty w dużej ilości. Na pewno znajdziecie coś ładnego','imbryk.jpg',NULL,0),(24,'Miarka','się przebrała! A tak na poważnie, chodzi o takie cudo, do mierzenia. Ciężko nam to opisać, więc załączamy link!','miarka.jpg','https://www.garneczki.pl/produkt/miarka-kuchenna-szklana-simax-miarka--1-l,31528?gclid=Cj0KEQjwqfvABRC6gJ3T_4mwspoBEiQAyoQPkb0LFFnoHI6SlTIvs_vljN0YSrybSsF4OhEysV_cE9waAnDe8P8HAQ',0),(25,'Koc','Duuuuuży i ciepły, do zawijania się jak kebab na cienkim cieście (sos dowolny, mięso mieszane)!','koc.jpg',NULL,0),(26,'Tablica korkowa','Na ścianę, nie za duża','tablica_korkowa.jpg',NULL,0),(29,'Kołdra z poduszkami','Kołdra 200x220 cm, 2x poduszki 50x60 cm',NULL,NULL,0),(30,'Poszewki na kołdrę i poduszki','Dwa komplety poszewek na pościel, rozmiary: kołdra 200x220 cm, poduszki 50x60 cm',NULL,NULL,0),(31,'Kołdra bez poduszek','Kołdra 200x220 cm',NULL,NULL,0),(32,'Poszewka na kołdrę i poduszki','Poszewki na pościel, rozmiary: kołdra 200x220 cm, poduszki 50x60 cm',NULL,NULL,0),(33,'Samochód','Fiat Bravo, 2008r. Srebrny','srebrnySzerszen.jpg',NULL,0),(34,'Narzuta na łóżko','Rozmiar: taka, żeby przykrywała łóżko małżeńskie, czyli dużo x dużo',NULL,NULL,0),(35,'Rzutnik','Do rzucania, względnie podłączenia do komputera i oglądania filmów :) Przed ewentalnym zakupem prosimy o konsultacje z naszym świadkiem, Arturem Kowalskim. ','rzutnik.jpg',NULL,0),(36,'Aparat fotograficzny + obiektwy','Przed ewentualnym zakupem prosimy o konsultacje z ojcem panny młodej. On się zna na aparatach!','aparat.jpg',NULL,0),(37,'Głośniki','Do podłączenia do komputera. Zestaw 2.1 lub 3.1. Przed ewentalnym zakupem prosimy o konsultacje z naszym świadkiem, Arturem Kowalskim. ','glosniki.jpg',NULL,0),(38,'Sokowirówka','Wygodna w użyciu i w myciu i soków piciu. Do robienia soków dla męża','wirujacysok.jpg',NULL,0),(39,'Komplet noży kuchennych','Różnych rozmiarów i do różnych celów','noze.jpg',NULL,0),(40,'Śpiwór','Porządny śpiwór dla Ani. Typ mumia (tylko bez bandaży), komfort ok. 7°C, prawy. Przed ewentalnym zakupem prosimy o konsultacje z naszym świadkiem, Arturem Kowalskim. ','worekspi.jpg',NULL,0),(41,'Drukarka','Drukarka to drukarka, nie? Im laserowsza tym lepiej. Przed ewentalnym zakupem prosimy o konsultacje z naszym świadkiem, Arturem Kowalskim. ','drukarka.jpg',NULL,0),(42,'Mapy gór','Jak wiecie lubimy chadzać po górach. Chętnie przyjmiemy mapy gór, najlepiej polskich lub francuskich. Nie przejmujcie się, jeśli miałyby się powtarzać, mapy się zużywają. Jeśli macie ochotę, możecie nam na tych mapach wyznaczyć jakieś szalki do przejścia :)','mapy.jpg',NULL,0),(43,'Wazony','Na kszole i inne zielsko <sup>(Ania mnie szturcha i mówi, żebym napisał \"kwiaty\")</sup>','wazon.jpg',NULL,0),(44,'Ręczniki','W liczbie i rozmiarach zasadniczo dowolnych','recznik.JPG',NULL,0),(45,'Bescherelle','Obowiązkowa literatura w każdym choć trochę francuskim domu. To raczej pozycja skierowana do francuskiej części rodziny','Bescherelle.jpeg',NULL,0),(46,'Encykliki','Chcemy dbać o nasz rozwój duchowy, miło nam będzie jeśli nam w tym pomożecie','encykliki.jpg',NULL,0),(47,'Serwis obiadowy','Taki na wypasie',NULL,NULL,0),(48,'Chlebak','Zaskoczcie nas :)','chlebak.jpg',NULL,0),(49,'Ręczniki turystyczne','Czyli tzw szybkoschnące. Jeden dla Michała, jeden dla Ani. Mniej więcej 60x120 cm','reczniki_szybkie.jpg',NULL,0),(50,'Garnki','Zestaw garnków, obowiązkowy prezent dla każdej pary młodej','gary.jpg',NULL,0),(51,'Planszówki','Gry planszowe i karciane każdej maści. Nie przejmujcie się ewentualnymi powtórkami - gier nigdy za wiele','gry.jpg',NULL,0),(52,'Parownica','Do różnorodnego mycia różnych powierzchni. Ania sobie wymyśliła <sup>Tym razem Michał mardzi</sup>','parownica.jpg','https://www.kaercher.com/pl/home-garden/parownice/sc-1-15162600.html',0);
/*!40000 ALTER TABLE `gift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitation`
--

DROP TABLE IF EXISTS `invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitation` (
  `key` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `message` text NOT NULL,
  `plural` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation`
--

LOCK TABLES `invitation` WRITE;
/*!40000 ALTER TABLE `invitation` DISABLE KEYS */;
INSERT INTO `invitation` VALUES ('jan','Jan Kowalski','Janku, Janku!',0),('klechowie','Ania i Michał','Drodzy Aniu i Michale!',1);
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` text NOT NULL,
  `thumbnail` text NOT NULL,
  `size` text NOT NULL,
  `album_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_fk_idx` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `login` varchar(45) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`login`),
  UNIQUE KEY `login_UNIQUE` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('michal','311fc486c10a0ca2d9d62debb2b81da04bf423b9e1285fbdd26054e8b4590dfe'),('zimnicki','201cebd6a8508a8717f36678c1e3b14b5f6bb3da8d39eba47b057502ec073e8b');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-03 12:00:14
