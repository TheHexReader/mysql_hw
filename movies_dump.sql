-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: it.vshp.online    Database: db_4dcad5
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Universal Pictures'),(2,'Paramount Pictures'),(3,'Sony Pictures'),(4,'20th Fox'),(5,'Warner Bros.'),(6,'Disney');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `directors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (1,'Фрэнк Дарабонт'),(2,'Фрэнсис Форд Коппола'),(3,'Кристофер Нолан'),(4,'Сидни Люмет'),(5,'Стивен Спилберг'),(6,'Питер Джексон'),(7,'Квентин Тарантино'),(8,'Серджо Леоне'),(9,'Дэвид Финчер'),(10,'Роберт Земекис'),(11,'Ирвин Кершнер'),(12,'Милош Форман'),(13,'Мартин Скорсезе'),(14,'Энди и Ларри Вачовски'),(15,'Акира Куросава'),(16,'Джордж Лукас'),(17,'Фернанду Мейреллиш'),(18,'Джонатан Демми'),(19,'Фрэнк Капра'),(20,'Роберто Бениньи'),(21,'Брайан Сингер'),(22,'Люк Бессон'),(23,'Хаяо Миядзаки'),(24,'Тони Кэй'),(25,'Альфред Хичкок'),(26,'Майкл Кёртиц'),(27,'Чарли Чаплин'),(28,'Оливье Накаш'),(29,'Роман Полански'),(30,'Джеймс Кэмерон'),(31,'Дэмьен Шазелл'),(32,'Ридли Скотт'),(33,'Роджер Аллерс'),(34,'Билли Уайлдер'),(35,'Стэнли Кубрик'),(36,'Джузеппе Торнаторе'),(37,'Флориан Хенкель фон Доннерсмарк'),(38,'Исао Такахата'),(39,'Эндрю Стэнтон'),(40,'Сэм Мендес'),(41,'Пак Чхан Ук'),(42,'Вольфганг Петерсен'),(43,'Орсон Уэллс'),(44,'Нитеш Тивари'),(45,'Ричард Маркуанд'),(46,'Мел Гибсон'),(47,'Фриц Ланг'),(48,'Даррен Аронофски'),(49,'Жан-Пьер Жене'),(50,'Аамир Хан'),(51,'Макото Синкай'),(52,'Дэвид Лин'),(53,'Мишель Гондри'),(54,'Роберт Маллиган'),(55,'Стэнли Донен'),(56,'Ли Анкрич'),(57,'Джордж Рой Хилл'),(58,'Джон Лассетер'),(59,'Раджкумар Хирани'),(60,'Витторио де Сика'),(61,'Гай Ричи'),(62,'Терри Гиллиам'),(63,'Гас Ван Сент'),(64,'Кёртис Хэнсон'),(65,'Томас Винтерберг'),(66,'Брайан де Пальма'),(67,'Асгар Фархади'),(68,'Чаган Ырмак'),(69,'Джозеф Лео Манкевич'),(70,'Пит Доктер'),(71,'Джон Хьюстон'),(72,'Клинт Иствуд'),(73,'Оливер Хиршбигель'),(74,'Джон Мактирнан'),(75,'Майкл Манн'),(76,'Маджид Маджиди'),(77,'Кэрол Рид'),(78,'Джон Стёрджес'),(79,'Гильермо дель Торо'),(80,'Дени Вильнёв'),(81,'Хуан Хосе Кампанелья'),(82,'Элиа Казан'),(83,'Стэнли Крамер'),(84,'Ленни Абрахамсон'),(85,'Ингмар Бергман'),(86,'Рон Ховард'),(87,'Дэвид Линч'),(88,'Джеймс Мактиг'),(89,'Клайд Брукман'),(90,'Гэвин О\'Коннор'),(91,'Дэнни Бойл'),(92,'Андрей Тарковский'),(93,'Фридрих Вильгельм Мурнау'),(94,'Виктор Флеминг'),(95,'Явуз Тургул'),(96,'Майкл Чимино'),(97,'Братья Коэн'),(98,'М. Найт Шьямалан'),(99,'Джон Карпентер'),(100,'Ясудзиро Одзу'),(101,'Стюарт Розенберг'),(102,'Пол Томас Андерсон'),(103,'Ракеш Омпракаш Мехра'),(104,'Элем Климов'),(105,'Карл Теодор Дрейер'),(106,'Джеймс Мэнголд'),(107,'Крис Сандерс'),(108,'Адам Эллиот'),(109,'Шон Пенн'),(110,'Нирадж Пандеу'),(111,'Терри Джонс'),(112,'Дамиан Сифрон'),(113,'Оливер Стоун'),(114,'Терри Джордж'),(115,'Анри-Жорж Клузо'),(116,'Джим Шеридан'),(117,'Роб Райнер'),(118,'Франсуа Трюффо'),(119,'Уэс Андерсон'),(120,'Уильям Уайлер'),(121,'Стив Маккуин'),(122,'Джордж Миллер'),(123,'Пон Чжун Хо'),(124,'Томас Маккарти'),(125,'Алехандро Гонсалес Иньярриту'),(126,'Питер Уир'),(127,'Питер Богданович'),(128,'Лассе Халльстрём'),(129,'Федерико Феллини'),(130,'Ричард Линклейтер'),(131,'Дэвид Йейтс'),(132,'Джон Форд'),(133,'Джон Эвилдсен'),(134,'Джеффри Джейкоб Абрамс'),(135,'Ричард Аттенборо'),(136,'Ричард Келли'),(137,'Вуди Аллен'),(138,'Рамеш Сиппи'),(139,'Пол Гринграсс'),(140,'Гарольд Рэмис'),(141,'Матьё Кассовиц'),(142,'Эндрю Лау'),(143,'Тейт Тейлор'),(144,'Вонг Карвай'),(145,'Вим Вендерс'),(146,'Джилло Понтекорво'),(147,'Гэри Трусдейл'),(148,'Анураг Кашьяп'),(149,'Гор Вербински'),(150,'Олдрич Роберт');
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'драма'),(2,'детектив'),(3,'боевик'),(4,'исторический фильм'),(5,'фэнтези'),(6,'вестерн'),(7,'комедия'),(8,'фантастика'),(9,'триллер'),(10,'приключение'),(11,'мультфильм'),(12,'мелодрама'),(13,'таинственный фильм'),(14,'биография'),(15,'детектив драма'),(16,'нуар'),(17,'аниме'),(18,'научная фантастика'),(19,'фильм-биография'),(20,'сказка');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `year` int NOT NULL,
  `budget` int NOT NULL,
  `directors_id` int NOT NULL,
  `genres_id` int NOT NULL,
  `companies_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_movies_directors_idx` (`directors_id`),
  KEY `fk_movies_genres1_idx` (`genres_id`),
  KEY `fk_movies_companies1_idx` (`companies_id`),
  CONSTRAINT `fk_movies_companies1` FOREIGN KEY (`companies_id`) REFERENCES `companies` (`id`),
  CONSTRAINT `fk_movies_directors` FOREIGN KEY (`directors_id`) REFERENCES `directors` (`id`),
  CONSTRAINT `fk_movies_genres1` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Побег из Шоушенка',1994,92,1,1,1),(2,'Крёстный отец',1972,54,2,2,2),(3,'Крёстный отец 2',1974,113,2,2,3),(4,'Тёмный рыцарь',2008,70,3,3,4),(5,'12 разгневанных мужчин',1957,123,4,2,5),(6,'Список Шиндлера',1993,33,5,4,6),(7,'Властелин колец: Возвращение короля',2003,158,6,5,6),(8,'Криминальное чтиво',1994,211,7,2,3),(9,'Хороший, плохой, злой',1966,236,8,6,2),(10,'Властелин колец: Братство Кольца',1999,104,6,5,2),(11,'Бойцовский клуб',2001,63,9,1,1),(12,'Форрест Гамп',1994,25,10,7,2),(13,'Звёздные войны. Эпизод V: Империя наносит ответный удар',1980,103,11,8,5),(14,'Начало',2010,99,3,9,2),(15,'Властелин колец: Две крепости',2002,36,6,5,2),(16,'Пролетая над гнездом кукушки',1975,231,12,1,5),(17,'Славные парни',1990,201,13,2,1),(18,'Матрица',1999,105,14,8,4),(19,'Семь самураев',1954,203,15,10,1),(20,'Звёздные войны. Эпизод IV: Новая надежда',1977,31,16,8,2),(21,'Город Бога',2002,51,17,2,2),(22,'Семь',1995,225,9,2,2),(23,'Молчание ягнят',1991,89,18,9,2),(24,'Эта прекрасная жизнь',1946,235,19,1,3),(25,'Жизнь прекрасна',1997,48,20,7,3),(26,'Подозрительные лица',1995,235,21,2,4),(27,'Леон',1994,204,22,2,4),(28,'Спасти рядового Райана',1998,71,5,1,2),(29,'Унесённые призраками',2001,209,23,11,2),(30,'Американская история Икс',1998,23,24,1,6),(31,'Однажды на Диком Западе',1968,66,8,6,3),(32,'Интерстеллар',2014,200,3,8,2),(33,'Психо',1960,54,25,9,1),(34,'Зелёная миля',1999,73,1,1,1),(35,'Касабланка',1942,115,26,1,5),(36,'Огни большого города',1931,234,27,12,4),(37,'1+1',2011,88,28,1,1),(38,'Новые времена',1936,50,27,7,1),(39,'Индиана Джонс: В поисках утраченного ковчега',1981,156,5,10,5),(40,'Пианист',2002,136,29,1,6),(41,'Отступники',2006,126,13,2,1),(42,'Окно во двор',1954,250,25,9,6),(43,'Терминатор 2: Судный день',1991,202,30,8,1),(44,'Назад в будущее',1985,6,10,8,5),(45,'Одержимость',2014,110,31,1,1),(46,'Гладиатор',2000,247,32,3,1),(47,'Престиж',2006,46,3,1,2),(48,'Король Лев',1994,90,33,11,1),(49,'Помни',2000,52,3,9,5),(50,'Апокалипсис сегодня',1979,231,2,1,4),(51,'Чужой',1979,189,32,8,6),(52,'Великий диктатор',1940,41,27,7,6),(53,'Бульвар Сансет',1950,152,34,1,6),(54,'Доктор Стрейнджлав',1964,225,35,7,3),(55,'Новый кинотеатр «Парадизо»',1988,21,36,7,2),(56,'Жизнь других',2006,127,37,1,4),(57,'Могила светлячков',1988,104,38,11,2),(58,'Тропы славы',1957,180,35,1,5),(59,'Джанго освобождённый',2012,240,7,6,3),(60,'Сияние',1980,77,35,1,1),(61,'ВАЛЛ-И',2008,212,39,11,3),(62,'Красота по-американски',1999,174,40,1,3),(63,'Тёмный рыцарь: Возрождение легенды',2012,117,3,3,5),(64,'Принцесса Мононоке',1997,155,23,11,1),(65,'Чужие',1986,123,30,8,5),(66,'Олдбой',2003,134,41,3,1),(67,'Свидетель обвинения',1957,247,34,2,5),(68,'Однажды в Америке',1984,37,8,2,5),(69,'Подводная лодка',1981,101,42,10,3),(70,'Гражданин Кейн',1941,141,43,1,6),(71,'Дангал',2016,43,44,3,1),(72,'Головокружение',1958,19,25,13,5),(73,'К северу через северо-запад',1959,184,25,3,1),(74,'Звёздные войны. Эпизод VI: Возвращение джедая',1983,120,45,3,6),(75,'Храброе сердце',1995,152,46,14,1),(76,'Бешеные псы',1992,84,7,2,6),(77,'М',1931,79,47,2,6),(78,'Реквием по мечте',2000,98,48,1,4),(79,'Амели',2001,173,49,7,6),(80,'Дюнкерк',2017,69,3,3,2),(81,'Звёздочки на земле',2007,88,50,1,5),(82,'Заводной апельсин',1971,239,35,2,1),(83,'Твоё имя',2016,182,51,11,3),(84,'Лоуренс Аравийский',1962,134,52,10,2),(85,'Двойная страховка',1944,203,34,2,4),(86,'Таксист',1976,45,13,2,1),(87,'Амадей',1984,78,12,14,3),(88,'Вечное сияние чистого разума',2004,74,53,1,5),(89,'Убить пересмешника',1962,180,54,2,6),(90,'Цельнометаллическая оболочка',1987,23,35,1,3),(91,'Космическая одиссея 2001 года',1968,170,35,10,6),(92,'Поющие под дождём',1952,147,55,7,6),(93,'История игрушек: Большой побег',2010,166,56,11,2),(94,'Афера',1973,15,57,7,1),(95,'История игрушек',1995,174,58,11,6),(96,'3 идиота',2009,241,59,10,3),(97,'Похитители велосипедов',1948,114,60,1,1),(98,'Бесславные ублюдки',2009,157,7,10,3),(99,'Малыш',1921,159,27,7,4),(100,'Большой куш',2000,89,61,7,1),(101,'Монти Пайтон и Священный Грааль',1975,239,62,10,6),(102,'На несколько долларов больше',1965,116,8,6,2),(103,'Умница Уилл Хантинг',1997,116,63,1,4),(104,'Секреты Лос-Анджелеса',1997,113,64,2,2),(105,'Охота',2012,169,65,1,4),(106,'Лицо со шрамом',1983,109,66,2,2),(107,'Квартира',1960,107,34,7,1),(108,'Расёмон',1950,22,15,15,6),(109,'Метрополис',1927,42,47,1,1),(110,'Развод Надера и Симин',2011,106,67,1,4),(111,'Индиана Джонс и последний крестовый поход',1989,156,5,3,5),(112,'Мой отец и мой сын',2005,226,68,1,2),(113,'Всё о Еве',1950,126,69,1,2),(114,'Телохранитель',1961,18,15,3,6),(115,'Бэтмен: Начало',2005,39,3,3,4),(116,'Вверх',2009,94,70,11,5),(117,'В джазе только девушки',1959,67,34,7,2),(118,'Сокровища Сьерра-Мадре',1948,241,71,10,4),(119,'Непрощённый',1992,179,72,1,1),(120,'Бункер',2004,200,73,14,6),(121,'Крепкий орешек',1988,182,74,3,6),(122,'Бешеный бык',1980,34,13,1,2),(123,'Схватка',1995,46,75,2,3),(124,'Дети небес',1997,7,76,1,6),(125,'Третий человек',1949,94,77,16,4),(126,'Большой побег',1963,50,78,10,2),(127,'Китайский квартал',1974,56,29,2,1),(128,'Жить',1952,240,15,1,2),(129,'Лабиринт фавна',2006,42,79,5,1),(130,'Мой сосед Тоторо',1988,175,23,11,5),(131,'Ран',1985,136,15,3,6),(132,'Золотая лихорадка',1925,79,27,7,2),(133,'Головоломка',2015,42,70,11,1),(134,'Пожары',2010,118,80,1,6),(135,'Тайна в его глазах',2009,101,81,1,5),(136,'В порту',1954,79,82,2,6),(137,'Нюрнбергский процесс',1961,25,83,1,6),(138,'Мост через реку Квай',1957,144,52,10,2),(139,'Ходячий замок',2004,200,23,17,3),(140,'Комната',2015,151,84,1,4),(141,'Бегущий по лезвию',1982,212,32,18,4),(142,'Седьмая печать',1957,195,85,1,1),(143,'Мистер Смит едет в Вашингтон',1939,213,19,1,1),(144,'Карты деньги два ствола',1998,18,61,2,6),(145,'Казино',1995,209,13,14,5),(146,'Игры разума',2001,107,86,1,3),(147,'Человек-слон',1980,211,87,14,5),(148,'Земляничная поляна',1957,70,85,1,4),(149,'V — значит вендетта',2006,204,88,3,6),(150,'Волк с Уолл-стрит',2013,65,13,14,1),(151,'Генерал',1927,52,89,7,5),(152,'Воин',2011,180,90,3,6),(153,'На игле',1996,109,91,2,4),(154,'В случае убийства набирайте «М»',1954,16,25,2,2),(155,'Андрей Рублёв',1966,65,92,14,3),(156,'Гран Торино',2008,72,72,1,5),(157,'Восход солнца',1927,236,93,7,3),(158,'Ла-Ла Ленд',2016,65,31,7,4),(159,'Унесённые ветром',1939,211,94,1,4),(160,'Бандит',1996,42,95,2,5),(161,'Охотник на оленей',1978,190,96,1,1),(162,'Фарго',1996,73,97,2,4),(163,'Шестое чувство',1999,42,98,1,3),(164,'Нечто',1982,250,99,18,5),(165,'Большой Лебовски',1998,58,97,7,3),(166,'Старикам тут не место',2007,190,97,2,5),(167,'В поисках Немо',2003,187,39,11,3),(168,'Токийская повесть',1953,152,100,1,1),(169,'По соображениям совести',2016,204,46,14,2),(170,'Хладнокровный Люк',1967,63,101,2,4),(171,'Нефть',2007,190,102,1,4),(172,'Ребекка',1940,25,25,13,3),(173,'Цвет шафрана',2006,88,103,1,4),(174,'Иди и смотри',1985,195,104,1,4),(175,'Страсти Жанны д\'Арк',1928,124,105,14,5),(176,'Убить Билла. Фильм 1',2003,104,7,3,4),(177,'Логан',2017,217,106,3,3),(178,'Как приручить дракона',2010,244,107,11,1),(179,'Мэри и Макс',2009,214,108,10,4),(180,'Исчезнувшая',2014,106,9,1,1),(181,'В диких условиях',2007,61,109,10,5),(182,'Остров проклятых',2010,13,13,1,6),(183,'Среда',2008,65,110,2,4),(184,'Это случилось однажды ночью',1934,195,19,7,3),(185,'Житие Брайана по Монти Пайтону',1979,170,111,7,2),(187,'Взвод',1986,41,113,3,3),(188,'Отель Руанда',2004,128,114,14,3),(189,'Плата за страх',1953,191,115,10,1),(190,'Телесеть',1975,62,4,1,2),(191,'Гонка',2013,93,86,19,6),(192,'Во имя отца',1993,246,116,14,4),(193,'Останься со мной',1986,14,117,10,2),(194,'Персона',1966,134,85,1,2),(195,'Четыреста ударов',1959,39,118,2,2),(196,'Отель «Гранд Будапешт»',2014,225,119,7,4),(197,'Бен-Гур',1959,24,120,3,6),(198,'12 лет рабства',2013,148,121,14,3),(199,'Безумный Макс: Дорога ярости',2015,152,122,3,6),(200,'Воспоминания об убийстве',2003,160,123,1,6),(201,'В центре внимания',2015,99,124,14,4),(202,'Малышка на миллион',2004,41,72,1,1),(203,'Парк юрского периода',1993,202,5,10,2),(204,'Бутч Кэссиди и Санденс Кид',1969,89,57,10,2),(205,'Сука любовь',2000,93,125,1,3),(206,'Сталкер',1979,102,92,1,2),(207,'Шоу Трумана',1998,100,126,7,2),(208,'Мальтийский сокол',1941,18,71,2,4),(209,'Бумажная луна',1973,31,127,7,6),(210,'Хатико: Самый верный друг',2009,178,128,1,5),(211,'Ночи Кабирии',1957,127,129,1,5),(212,'Навсикая из Долины ветров',1984,228,23,11,4),(213,'Принцесса-невеста',1987,206,117,10,4),(214,'Перед рассветом',1995,250,130,12,3),(215,'Братан Мунна: Продавец счастья',2003,132,59,7,6),(216,'Гарри Поттер и Дары Смерти. Часть 2',2011,225,131,5,1),(217,'Пленницы',2013,221,80,9,4),(218,'Гроздья гнева',1940,203,132,1,4),(219,'Рокки',1976,177,133,1,3),(220,'Поймай меня если сможешь',2002,51,5,1,5),(221,'Печать зла',1958,91,43,9,6),(222,'Дьяволицы',1954,52,115,2,3),(223,'Звёздные войны: Пробуждение силы',2015,41,134,8,5),(224,'Ганди',1982,112,135,4,1),(225,'Донни Дарко',2001,57,136,8,5),(226,'Корпорация монстров',2001,164,70,11,1),(227,'Энни Холл',1977,135,137,12,2),(228,'Месть и закон',1975,97,138,3,4),(229,'Терминатор',1984,48,30,8,2),(230,'Ультиматум Борна',2007,7,139,3,2),(231,'Барри Линдон',1975,38,35,1,6),(232,'Волшебник страны Оз',1939,74,94,20,3),(233,'День сурка',1993,217,140,7,5),(234,'Ненависть',1995,112,141,1,2),(235,'Восемь с половиной',1963,45,129,5,3),(236,'Челюсти',1975,211,5,9,5),(237,'12 обезьян',1995,68,62,18,3),(238,'Лучшие годы нашей жизни',1946,152,120,1,2),(239,'Двойная рокировка',2002,235,142,2,1),(240,'Прислуга',2011,98,143,1,6),(241,'Любовное настроение',2000,245,144,1,4),(242,'Париж-Техас',1984,62,145,1,6),(243,'Битва за Алжир',1966,165,146,4,6),(244,'Красавица и Чудовище',1991,93,147,11,4),(245,'Собачий полдень',1976,105,4,2,6),(246,'Банды Вассейпура',2012,88,148,3,6),(247,'Пираты Карибского моря: Проклятие «Чёрной жемчужины»',2003,169,149,10,5),(248,'Что случилось с Бэби Джейн?',1962,141,150,1,6),(249,'Пикей',2014,14,59,7,5),(250,'Служанка',2016,120,41,1,2);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-06 11:36:24