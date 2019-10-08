-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: haruul_zangi
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_09_23_005358_create_products',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'WkkxDRRGLM','MhNGZdb7fqfjDDNWb9BTbp2yRxwPNjfGTZtIYURfUx82HnuWIS',NULL,NULL),(2,'5AOa8MrLW6','E9BJbEKMNZ7RHhcQhpjfVINR3n48TDKpUvzoGTPjSVIMqD4MKR',NULL,NULL),(3,'pOLclfv8sE','36OJDfXeZx1wro8uHbsakcC91SNdya0CWETmqxLnNgsJcJp8UY',NULL,NULL),(4,'G6THFvq6S2','0VYgcF6wreU9kPkTlKAXxFycPEiXat8oYteekbhys3NtcfMXr8',NULL,NULL),(5,'xiSltn3qAJ','9L81S21dUeFLLd1aGDxeEtUnNNWA86GhhtKYNFhOgTZR06zo63',NULL,NULL),(6,'0ybpZwK9pD','UFIUWCrqwR4i2Hc7R4dESk48ZuUlr5G1JK5SPHapUjrkG4PRGa',NULL,NULL),(7,'INpDLnHBJg','hkwdiyz8hld847bbDGIRFHfL0zWGjDyow8wJHyEoYE4zVUDxRK',NULL,NULL),(8,'fPn8EsO3s3','RM3YDF4yn5hxCRyTnofa8KUctgelt2In9va3qkyI5cg2swGYS6',NULL,NULL),(9,'g1OxCNiNRV','Vsbh9YvWltzbl9bMKdq0FBAtQAVmLdXDdMEPacOR3X7Pjh6QzZ',NULL,NULL),(10,'EbcEWfkzVw','TWmqgrXJTmwKKvkGaZcBdBl49MdHObP5w1jIzOYBl4EEHVia1B',NULL,NULL),(11,'0wthAH0q9B','ZikKWWEJoMfi7QBahYHCA7jYpfsHn8kqb24fIan2XDXHuXR7A9',NULL,NULL),(12,'yMH6pYdbZ0','9q6Htsl7UjjzV5Fo9NQYVeEnXVYLy4RkFod4EIBo3n5dmsgYCe',NULL,NULL),(13,'trOvnYCS8c','EN97Fu2Q8bEmtNWcjJqEiLqlEInF5CttCJlKOMgcaEhkJSWsOF',NULL,NULL),(14,'UA5JbfWmmM','ZPKbqIwix81OZhRUGHSdyxsz7bMIlumyh9T7CwCWc3kGEBsVyO',NULL,NULL),(15,'gagyZTPevl','SvUo3NS1bcsCAHI3mkIGVl10iUOQHuKjBFwTpu93IOpvKf6AFh',NULL,NULL),(16,'W6aYs0jblt','2WWahm9pSb2TX12gPhMFSckHcvZab1QPWjTNyxRYJ2V8wwLCmk',NULL,NULL),(17,'F3PIgOVVoX','xXMXE4vNBmtdvlz43bJAZDQeqtOn68BTi8wyTAYVBARNWpUtoa',NULL,NULL),(18,'UvBDaVWinY','po9omiGfbJE3ueE9nMDpu275PatSpvqAurXtzpBOq6aFdOWKh7',NULL,NULL),(19,'iSSVMelihm','aiHRmsQ1h9nHc22Bysp4x8Es1oqqu1VEEA1Adgds1wZ4KjS6bI',NULL,NULL),(20,'7y6tywdLg7','RknqnrrhTSUKT2DLtOAbwIuK7oxQkovbJVzxXPUJD27k8wqAQf',NULL,NULL),(21,'5V9b5AM0FK','OXUhBxdVuTuPTllHyyr41HCUgnIpbzToMW7HaA7nT9XbPHVvI7',NULL,NULL),(22,'8F3NVBBYKH','R6gNx0optZb9oZSTSeAGb8M2TUZzH7KFa0T74SxT8i5IoGb24B',NULL,NULL),(23,'VUw7h9QarS','25gBVPJw8aCYW3Gp3xophltrgTRih7xIqWcnDPaYm2BQNBb0n5',NULL,NULL),(24,'F7G7nnDLIC','9cyCFyGAhtOF5lI09e6NAlAHwSelLDuNJ2AGwMl3IZN1B829iB',NULL,NULL),(25,'3KG1Nll8DF','4kA0PD4Y0syi2AaDHuVI2SXnsKNcGdsm1OqKHgbh3dHItw6hDd',NULL,NULL),(26,'3x1XYgkv0q','HgQDukfUEG2YvuRIVjrAAI5oFHuA2LdqFyNDLaqPcT1MOzZiiW',NULL,NULL),(27,'x00TLEfWLU','3UOimyUKqbU62mZ1qVFKIJFUmdbWSFD6bLp5RA0t767XBvkSWi',NULL,NULL),(28,'fp6cF5uG5y','uul1T0Ylf4CFWUQZDeBNk0pg8Id1xtojlgi7PrlDe5R12An8dq',NULL,NULL),(29,'WSdC4mGFtN','OS6t93UCfWJ7DoSaXjnTxXDvKtZJ9vKNbkIFQmAmFGpI7ftnx2',NULL,NULL),(30,'W8taH0fBrN','NXqn9IniEo9UAJdKVBtiexC4zMLy74n71IuydFD2syTbgG9HvV',NULL,NULL),(31,'MshsakT6Av','zIEtU2SZjRUnWpUnE45xNdqspvvIxuKbEzL01YOofWOU3NMw56',NULL,NULL),(32,'PFbx3rQSHt','ZFGZrXZAB0KqBOG7GSX8P5w7Uu1pjGjxNclLuUriMSKte0R7Hh',NULL,NULL),(33,'uClyyFl75K','DyTiPwgnIDHKnRZrvalcdx48eBZcILkRZjb6exa9I5RciveQNv',NULL,NULL),(34,'PrzxavTWZ1','oAzYB3Iotzz99dPIukh91XV9daidJZLJlIvx4V1GF0xLu3pxNO',NULL,NULL),(35,'X9tJaBBW7M','rb5oeGKLmtKhqPuf6PmcahbtZRa2Yae95DtEq3CPfF4Nogwf9n',NULL,NULL),(36,'kjgnN3aFaX','jBvL8SxVhr9yKs6U4SYA16piouuPZr3V1BEFhDR5E3stiLO3C9',NULL,NULL),(37,'FR9pwvY4hk','trKkwfT0BzZluMhAGhHlCHN4iKjVteTFMjZjIWAEEwXZgfBDCD',NULL,NULL),(38,'MaxUr2euhC','nkAsIifPr7SH9CsHzAscDGwBP4Uz0syQ5FxIjHRIuyJxlyLAGb',NULL,NULL),(39,'USMq6Vmcex','qqCL5jDFlTqS593MC0AEVhk9LYzTpOZs8XRsidnd5kUFQSuHe1',NULL,NULL),(40,'LBT4U0ruu2','SNSLen6OKQK8aPcAyIpMiJiRL54lHt66NbnfcTPEaWc8zgEARj',NULL,NULL),(41,'JTmxTMRnLt','0agaGE7sUYL4vzcWvrt7aAOjIfRuCqcJ6zTws3cl7uLrp2VuHj',NULL,NULL),(42,'JxpPZbAbBC','OOsPAexqQXQ4m6GNYVfqRACS4TJRoqm0Yhu1oPE9pWjxsx6D75',NULL,NULL),(43,'D6jXRG8xq0','aQOGieZ3CY64ARVvIJJ6s1TMItvIjshbmCb554x27M0hSIvNnr',NULL,NULL),(44,'4cfeuJdbCi','LtSFVXyQUi1s3I3FYWSR4qjSAp7RzdJb4rIOmwB6KABWEqhOD4',NULL,NULL),(45,'iJevmNGggb','tNSUOCt799vTWk2ynXUXGNr3tVENUZGDVdTXSjQr8Nw2fMWQ4m',NULL,NULL),(46,'qNKzQDnVbG','wi9gXgKj3Sz12I49UUSa2qPp9xFpbSlfnTW5vlITRBB3FHxQgf',NULL,NULL),(47,'Hb6aN19dbb','femk2LdL70YbeYzU3exhEUJbVTsHJgmCb2yzHrwGNnNiLqj8ii',NULL,NULL),(48,'4kDYLdtjX1','9hOD9TW6jpL6147HBUNjkYmOnzRmAVej2WFtTNER2rc8AjwqKb',NULL,NULL),(49,'7Y2F2F3QtR','3yeVry7qZYnVuoz22wbI0mcIRoYoxmXJsSAAkS4lf3WH82NyX4',NULL,NULL),(50,'zmKarK2RRH','zciKJUYFLHcDdgs2pJEmvPMmgBGxUApE8BVBqTRs8JSG17XRJX',NULL,NULL),(51,'LdVKVakZy6','2ZTlKXg20rsUasNakdOLyRt7IAc1PHCIAVv8FyjssE6akVfsBX',NULL,NULL),(52,'DRJhzNLBtu','HjBTKpHP7yHxDasyqgg2IFcpcJlL2IuMxr8y0jV3l2gHKykA8O',NULL,NULL),(53,'MlOwde7E0F','vKndXDKuotcKuvFcI7reyDVwk506vAtHAa6p3gvZrAqyLzTll8',NULL,NULL),(54,'2QYnjFLAtx','j2pHeXgFosutpqYhmHewiIupyEiFxy9v8b2542ejhdBr26UZE8',NULL,NULL),(55,'JVrqX6OEzK','iJwhZ7mC0YqwPRy4JeXFjlnElGHGJQPdPh4tXsC6fagmkfxzCd',NULL,NULL),(56,'cNj7A8Mhy1','itl3XFcGzRzQHz0Yo0c0TxkSfzw2EPSl0vnshWG8niS1Snc1hR',NULL,NULL),(57,'nkffddONr8','arf3oPK9X3hHVFvTZazU2ukzwEZWEADpybPfiK3GkI8C5M3MYo',NULL,NULL),(58,'xeta2gGtHZ','K6aMAC4tD51FbwSNpvnU5vgxy9inK25AJscJO11DVmI7bqnLrj',NULL,NULL),(59,'r3PpWSSwSD','TK6JEcw7DqdQ1Kbf5OnNq2O0BvMUpJGtjzbAmqZjdZzRURJVPH',NULL,NULL),(60,'LIkHOAZmfh','gqa5p2SzFqFphHwA5dcIfgYI1YDGBa4Q8R5Ghs3UWxBkyz8VHf',NULL,NULL),(61,'rGTOnhEuZX','r0VSEFgdwsuugaS8VESUoqtOr0RfNiOXpvWkSySVvcYGDjOCZ8',NULL,NULL),(62,'wiv0o4GHQU','BZ1sjeVajiECEHnba01MycWdaHRKgor9XAUHTlcsRysJhxZd9H',NULL,NULL),(63,'eLabAjoQZI','UtG3xEyYtT94aWvecQBH64L7em873622COaz974gWVsYSfjGsK',NULL,NULL),(64,'ExqOLTQ70E','IxfckbxDEPCrUx1akWjmUCCxoByzmXvmEubvL8Mi5fd2xvn3Fz',NULL,NULL),(65,'0WnExfHIdt','7G7bNzX0YRpjwcg0ZqtOnSIRQ7q4quuPK9qx8soH2BOHZSuzI5',NULL,NULL),(66,'2E2ruaEM2t','IzmKzaG3w3rowI6XGo2WqeWiw7kuVtNZT9yprMOaPOqnpoHLn2',NULL,NULL),(67,'xHD8yQejnH','X2D6fplmysf9UHOi9GlL0sObxgt3Qu3QE3hFWDJNScfJQyD81O',NULL,NULL),(68,'oSouDe2xr3','pNjfWUWTtuuQMBn3VwNnF2JtLuYfMNylJW3j8khwyW3qc0hPKz',NULL,NULL),(69,'UPcDmuigD1','h1FqsMoqXVo7K6eJYzUob4K05sBoFRR1PrIpXRSIitneXzQ3dF',NULL,NULL),(70,'6sOgSttoIc','7yYJ36gqie9mfUevvqbgbie6ssPs27kagSElBDawMH4J6FF3Zl',NULL,NULL),(71,'jTUUih6HO8','GkYNtyBRJhXFWmEwpLqedubkXWYGgDsOYEGzFkhJZ1tz54Ni9S',NULL,NULL),(72,'vthWsAcIOw','heSDobVnPFK0z5N1yyoFgsd8XWlLTIeKcR731jTOFWAwSLv9UD',NULL,NULL),(73,'WtdMFoXiWM','yIaClNGwCgkVMCxBCdRhYNYpb8VvZhO78iu7EqK2LagqpTqkLn',NULL,NULL),(74,'Mk5xz1jfQF','ZOPdVZUp6X5yjDX6YxpHmEuir1L9bkHxJiQLYVSPqh4PtnLJxU',NULL,NULL),(75,'pziGFWec9j','19YMPtN73dxKAZiayr6B0Nn0cHD6MLiXOdlmkqH5JQBr3AKsJI',NULL,NULL),(76,'8x7klQ50MH','NeJwiB30KUZx9wG15Hea7Z1w2zTFP144wHAx4UOpvEu2TtRqLn',NULL,NULL),(77,'MW8mRncrGy','7WwBLhdmuH4SzKKvFLsG7mF95CGapMmycAqvOpnQrZBOv2v39h',NULL,NULL),(78,'zeaIWWwZIy','gdJmBlXzpi1NBOm5NDdJRLpLkVynqLc84SvwDinB2df0mhTTY5',NULL,NULL),(79,'i3b2Y6Xwgp','hmy8uYfKpI9I2Mq2oScTHCynGMBArbGxvY2HFl8SOxp2NNDVRf',NULL,NULL),(80,'4IR2dre9gf','yXfWzOnfNnqVMSp5IvgQYjUOJGTCOuzcEM9jgKzmdNIuhyshdy',NULL,NULL),(81,'u3TR2rwsVF','h4lDxn9FV1X5u4N7cs0GNeiEdDfppUlqnOBibkRVYRywIoiYAt',NULL,NULL),(82,'ZxHUadwHo4','buhyuEU9jCWQcSaiHNPChn8fmWjfnbGgIvDExrq1veZSfJduz3',NULL,NULL),(83,'TCVwn0MFJS','cFTUwouJujeWW36iLREWQFREg5e5P2HlU2C98xzpmRvl64oU7Q',NULL,NULL),(84,'ALomFytPHT','Yfv8Yb4eXgh3hoVvGoGbWrSvvjaKFXMPaqU7EEEX3cL8ZcC8tV',NULL,NULL),(85,'gwnAhc06MT','g1Y5Bzgre8RP4I98b5SI9fLnrq6mGfsyaSFBP8ZpcHsvXElPo2',NULL,NULL),(86,'DGHR3mkdlo','EFtsuD7WYD18DZnQVnb7Lt64HqOB8qANpNaNB4HGIiqavF58GY',NULL,NULL),(87,'NQuRjKhZnp','eJuO5R591bm3uDJbaRuxtKRjpSbhh6rXIuxjVFObETZEEODATm',NULL,NULL),(88,'DlarQtn10n','Va4ZAMlOmsA7nEX9Kosjdb6g3fA7yhwoUCpbeKjArjFmaq1l35',NULL,NULL),(89,'LdMx5q9TB7','Fv7D2afNJg7Kw9BENmwOAB7F7hcll4tyyRovFtgtj0z6Ze98sQ',NULL,NULL),(90,'jo912lVyIF','Uc1Z5VQ1dH5Bw9AiZZEye0OfUCuk2HMzJCTPaaCxNkRKbI1Bby',NULL,NULL),(91,'ezpP7ESpvc','bjddYTLf39ZHQZn441l2mMwmPhnKT5KUxgDk6KlDabWgk7QwS5',NULL,NULL),(92,'OfCBLPH2vz','BGeenEVwgvRwTEzHxkryVZ8KHsV7CCV4vZnYMV34S2SibXj21b',NULL,NULL),(93,'ECbawPmEGZ','3u5p5tqfwp3y3n3V5tyRpCgRNNJK9xFq7pbAD6P64hJgy6iJ4o',NULL,NULL),(94,'qsDNhpZjT4','3TdnF9E1gmkrcGPFzZ5n1Xp3j52ErQKrVECBoGriuSOvK62Xjk',NULL,NULL),(95,'wcApTalMlt','ktNTwJKFEUCyvQkl89cZjmmBo9SkhJZJLZ2HBtAg3CRi49khKj',NULL,NULL),(96,'GMNmDMh57A','Xpksy0nEL4f4ZoL2lg0UQcqbcPVVM7Yn3GC2mOYhmwEdsLLW9c',NULL,NULL),(97,'P316xWucYa','QL1uSol9Z0MPC28Vr7EJgIZnbE6Yfcdd6WC8hs3Nx8DAScLInE',NULL,NULL),(98,'XCCGg82OtE','JRsRNwyhKOpGKru7ui6X7VFcfGYmn2bBN9YRrfl28iiFAnYHpd',NULL,NULL),(99,'RrLhmq5Pv0','BxZp8bozdQlvCDvi3JwsiGS1SEE2E7UBLKXwo8lQcjKxNckE9s',NULL,NULL),(100,'MxsyOVb3Kb','5SbfGSlvxa49hDORkT8laKAMJ869q6UssvkzZhRCrLjJfOqnLY',NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-28 11:58:15
