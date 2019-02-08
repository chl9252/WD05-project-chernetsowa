#SKD101|WD05-project-chernetsowa|10|2019.02.08 22:46:19|48|1|4|7|1|2|11|8|1|8|5

DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 /*!40101 DEFAULT CHARSET=utf8 */;

INSERT INTO `about` VALUES
(1, 'Людмила Чернецова', '<p>Я веб разработчик из Тюмени<br />\r\nЗанимаюсь разработкой современных сайтов.&nbsp;Мне нравится делать интересные и современные проекты.&nbsp;<br />\r\nЭтот сайт я сделала в рамках обучения в школе онлайн обучения WebCademy. Чуть позже освежу в нем свой контент. А пока посмотрите, как тут все классно и красиво!</p>\r\n\r\n<h2><strong>Что я умею</strong></h2>\r\n\r\n<p>Меня привлекает Frontend разработка, это не только моя работа, но и хобби. Также знакома и могу решать задачи на Backend. Знакома и использую современный workflow, работаю с репозиториями git и сборкой проекта на gulp.</p>\r\n', '2019-02-08 22:26:27', '95163269.JPG');

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `categories` VALUES
(1, 'category1'),
(2, 'category2'),
(5, 'category333'),
(7, 'category111');

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) unsigned DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `text` varchar(255) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_foreignkey_comments_post` (`post_id`),
  KEY `index_foreignkey_comments_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `comments` VALUES
(1, 19, 2, 'Была там в прошлом году и нисколько не пожалела. ', '2019-02-01 20:43:43'),
(2, 19, 2, 'Замечательный парк', '2019-02-01 22:11:40'),
(3, 19, 2, 'fghdfhdf', '2019-02-01 22:21:30'),
(4, 12, 2, 'fgjhfghf', '2019-02-01 23:07:20'),
(5, 12, 2, 'Первым о начале сборки iPhone в Индии с начала 2019 г. сообщало издание The Hindu, вопрос обсуждался 25 декабря на заседании кабинета министров страны. При этом в правительстве не указывали, какие именно модели', '2019-02-01 23:10:54'),
(6, 9, 4, 'насколько я понимаю, был в том, чтобы убедить представителей НАТО в порядке дисциплины. Французы, немцы, британцы, ', '2019-02-01 23:18:54'),
(7, 19, 4, 'Была там в прошлом году', '2019-02-01 23:20:04');

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(191) DEFAULT NULL,
  `phone` double DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `firstname` varchar(191) DEFAULT NULL,
  `lastname` varchar(191) DEFAULT NULL,
  `skype` varchar(191) DEFAULT NULL,
  `vkontakte` varchar(191) DEFAULT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `github` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 /*!40101 DEFAULT CHARSET=utf8 */;

INSERT INTO `contacts` VALUES
(1, 'chl9252@mail.ru', '79612111143', 'Россия Тюмень', 'Людмила', 'Чернецова', 'chl9252', 'https://vk.com/id201044984', 'https://www.facebook.com/profile.php?id=100004799803125', 'https://github.com/chl9252', 'https://www.twitter.com/chl9252');

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `title` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `description` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `jobs` VALUES
(5, 'Февраль 2018 - по настоящее времяjk0989', 'Облачный атлас5555555555555', 'Описание работы, должностные обязанности, достигнутые результаты', '2019-02-07 00:08:39'),
(7, 'Февраль 2018 - по настоящее времяjk0989', 'Облачный атлас5555555555555', 'аботы в команде Вконтакте. Работал в команде над обновление сервиса Музыка, работа над видео разделом. Создание видеоплеера. Создание кроссбраузерных компонентов.', '2019-02-07 00:10:21');

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `name` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `message` text /*!40101 COLLATE utf8mb4_unicode_ci */,
  `date_time` datetime DEFAULT NULL,
  `message_file_name_original` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `message_file` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `messages` VALUES
(5, 'mail3@mail.com', 'Марина', 'После решения Foxconn о расширении своей деятельности за пределы Китая, другой контрактный производитель гаджетов Apple теперь планирует сделать то же самое. Pegatron создаст производственные мощности в трех новых странах: Индии, Индонезии и Вьетнаме, сообщает Financial Times. В настоящее время на долю Pegatron приходится около 30% сборочных заказов Apple. До сих пор компания почти полностью полагалась на Китай, но теперь она намерена изменить ситуацию за ', '2019-02-05 19:04:12', 'BBSQ51D.jpg', '48921813.jpg'),
(6, 'mail2@mail.com', 'Людмила', 'счет экспансии в Индонезию, Вьетнам и Индию. Президент Pegatron Си-Джанг Ляо отметил, что пресс-служба компании скоро сообщит более подробную информацию о расширении. Он также добавил, что темпы роста производства будут зависеть от продолжающейся торговой войны между США и Китаем. Возможно, это решение Pegatron связано с тем, что Apple планирует начать производство последних моделей iPhone в Индии. Кроме того, продажи смартфонов и бытовой электроники в Китае в последнее время замедлились, что заставило многие компании сосредоточиться на других крупных рынках, например Индии. Руководство Pegatron в своем заявлении не касалось Apple, но трудно игнорировать связь между планами Pegatron и Foxconn и сообщения о том, что сборка флагманских моделей iPhone скоро начнется в Индии. Кроме того, китайский рынок смартфонов и бытовой электроники в последнее время замедлился, что заставило компании сосредоточиться на других крупных рынках, таких как Индия. В настоящее время Foxconn имеет заводы как в Индии, так и во Вьетнаме, но пока они не задействованы в производстве устройств Apple. Ранее стало известно, что Foxconn Technology Group также изучает возможность расширения присутствия в Индии, чтобы снизить зависимость от Китая и обойти пошлины, которые могут ввести США, а также помочь Apple в выполнении требований индийских регуляторов по поводу размещения производства в стране. По данным ресурса The Wall Street Journal, в следующем месяце после завершения празднования китайского Нового года в Индию приедут руководители Foxconn, включая главу компании Терри Гоу, для обсуждения дальнейших планов. Foxconn занимается сборкой устройств для различных ', '2019-02-05 19:04:52', NULL, NULL),
(7, 'mail2@mail.com', 'Марина', '', '2019-02-05 19:22:34', NULL, NULL),
(8, 'mail2@mail.com', 'Марина', '', '2019-02-05 23:41:31', '5_shagov_dlya_vosstan_svyazi_s_rodom.pdf', '86008911.pdf'),
(10, 'mail2@mail.com', 'Марина', 'вяпвп', '2019-02-06 00:02:17', 'тесто для пирожков.txt', '97165527.txt'),
(11, 'mail2@mail.com', 'Емельян Казаков', 'm,b,b,', '2019-02-06 23:52:56', NULL, NULL),
(12, 'mail2@mail.com', 'Емельян Казаков', 'лорлджлдж', '2019-02-08 19:39:05', NULL, NULL),
(13, 'mail2@mail.com', 'Емельян Казаков', 'ввввввввввввввв', '2019-02-08 19:40:56', NULL, NULL),
(14, 'mail2@mail.com', 'Емельян Казаков', 'рррррррррррр', '2019-02-08 19:44:53', NULL, NULL),
(15, 'mail2@mail.com', 'Марина', 'ллллллллллл', '2019-02-08 19:48:51', NULL, NULL),
(16, 'mail2@mail.com', 'Марина', 'ллллллллллллл', '2019-02-08 19:53:23', NULL, NULL);

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `text` text /*!40101 COLLATE utf8mb4_unicode_ci */,
  `author_id` int(11) unsigned DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `cat` int(11) unsigned DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_foreignkey_posts_author` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `posts` VALUES
(10, 'В США нашли пропавшего мальчика, который уверяет, что его спас медведь', 'Трехлетний мальчик Кейси Хэтэуэй из американского штата Северная Каролина выжил в лесу благодаря медведю. По крайней мере, он так сказал. Пропавшего ребенка искали по морозу несколько дней, сообщает Guardian.\r\nРебенок внезапно пропал, когда играл со сверстниками во дворе дома бабушки. Температура была сильно ниже нуля, а мальчик не был одет по погоде. Дети, с которыми играл Кейси, не смогли объяснить, куда делся ребенок. Родители обнаружили пропажу, когда вернулись с прогулки.\r\nПосле этого начались поиски, в которых участвовали полицейские, спасатели и сотни добровольцев. Близлежащий лес прочесывали с помощью собак и вертолетов в течение двух дней.\r\nВ какой-то момент поиски прекратили из-за ухудшившейся погоды.\r\nВ итоге мальчика практически случайно удалось обнаружить на небольшом острове посреди неглубокого лесного озера. Оказалось, ребенок запутался в кустарнике.\r\nКейси рассказал, что его спас большой медведь, который охранял его почти трое суток.\r\n\r\nЧерные медведи, обитающие в Северной Каролине, действительно редко нападают на людей и вообще предпочитают держаться от них подальше.\r\nТем не менее, слова ребенка еще предстоит проверить.', 2, '2019-01-28 21:30:20', '95058898.jpg', 2, NULL),
(11, 'Вручение премии Гильдии киноактеров США ', 'Латиноамериканский певец Рики Мартин и Леди Гага', 2, '2019-01-28 21:33:26', '21420288.jpg', 2, NULL),
(12, 'Поставщики Apple наращивают экспансию за пределами Китая', 'После решения Foxconn о расширении своей деятельности за пределы Китая, другой контрактный производитель гаджетов Apple теперь планирует сделать то же самое. Pegatron создаст производственные мощности в трех новых странах: Индии, Индонезии и Вьетнаме, сообщает Financial Times.\r\nВ настоящее время на долю Pegatron приходится около 30% сборочных заказов Apple. До сих пор компания почти полностью полагалась на Китай, но теперь она намерена изменить ситуацию за счет экспансии в Индонезию, Вьетнам и Индию.\r\nПрезидент Pegatron Си-Джанг Ляо отметил, что пресс-служба компании скоро сообщит более подробную информацию о расширении. Он также добавил, что темпы роста производства будут зависеть от продолжающейся торговой войны между США и Китаем.\r\nВозможно, это решение Pegatron связано с тем, что Apple планирует начать производство последних моделей iPhone в Индии. Кроме того, продажи смартфонов и бытовой электроники в Китае в последнее время замедлились, что заставило многие компании сосредоточиться на других крупных рынках, например Индии.\r\nРуководство Pegatron в своем заявлении не касалось Apple, но трудно игнорировать связь между планами Pegatron и Foxconn и сообщения о том, что сборка флагманских моделей iPhone скоро начнется в Индии. Кроме того, китайский рынок смартфонов и бытовой электроники в последнее время замедлился, что заставило компании сосредоточиться на других крупных рынках, таких как Индия. В настоящее время Foxconn имеет заводы как в Индии, так и во Вьетнаме, но пока они не задействованы в производстве устройств Apple. \r\nРанее стало известно, что Foxconn Technology Group также изучает возможность расширения присутствия в Индии, чтобы снизить зависимость от Китая и обойти пошлины, которые могут ввести США, а также помочь Apple в выполнении требований индийских регуляторов по поводу размещения производства в стране.\r\n\r\nПо данным ресурса The Wall Street Journal, в следующем месяце после завершения празднования китайского Нового года в Индию приедут руководители Foxconn, включая главу компании Терри Гоу, для обсуждения дальнейших планов.\r\nFoxconn занимается сборкой устройств для различных компаний, используя для некоторых операций заводы в Индии. Перенос производства в Индию ослабит зависимость Foxconn от Китая и потенциально также уменьшит влияние любой торговой войны между США и Китаем на сотрудничество с Apple. По аналогичным причинам Foxconn также, как сообщается, рассматривает возможность переноса части производства во Вьетнам.\r\nПо данным агентства, Foxconn инвестирует $356 млн в мощности для сборки телефонов Apple. Для этого будет расширен завод в городе Шриперамбудур (штат Тамилнад), на котором подрядчик уже производит телефоны для китайской компании Xiaomi. Подобное расширение может создать около 25 тыс. новых рабочих мест, отмечает агентство.\r\nПредполагается, что на заводе в Шриперамбудуре будут производиться самые дорогие и актуальные модели телефонов Apple. Первым о начале сборки iPhone в Индии с начала 2019 г. сообщало издание The Hindu, вопрос обсуждался 25 декабря на заседании кабинета министров страны. При этом в правительстве не указывали, какие именно модели смартфонов будут собираться на индийской территории.\r\nДо сих пор Apple производила в Индии только iPhone SE и 6S. Производство SE стартовало в мае 2017 г., тогда американская компания выпустила первую тестовую партию смартфонов, произведенных на заводе тайваньской корпорации Wistron Corp. в южном штате Карнатака.\r\nПродажи Apple в Индии тоже были сосредоточены на более дешевых моделях: по данным исследовательской фирмы Counterpoint, более половины объема продаж приходится на модели старше, чем iPhone 8. Теоретически Foxconn может выпускать в Индии модель iPhone X, представленную в прошлом году. \r\nОбъемы ее выпуска были сокращены после начала продаж в этом году новых моделей iPhone XS и XR. Впрочем, источник признает, что подробности сделки между Apple и Foxconn пока неизвестны и могут измениться. В частности, нет данных о том, переносится ли сборка с существующих заводов Foxconn в Китае и других странах. Также неясно, будет ли предприятие использовать какие-либо компоненты местного производства.', 2, '2019-01-28 21:37:43', '92732543.jpg', 5, NULL),
(13, 'Изменен состав совета директоров &quot;РусАла&quot;', 'Филипп Бернар Анри Мейлфейт и Жан-Пьер Тома, назначенный генеральным председателем 1 января 2019 г., покинули совет. \r\n\"РусАл\" обновил состав совета директоров. Как следует из материалов компании, совет покинул Жан-Пьер Тома, назначенный генеральным председателем 1 января 2019 г. Кроме того, из состава выбыл Филипп Бернар Анри Мейлфейт. \r\nДолжность председателя совета директоров теперь занимает Бернард Зонневельд. Он, а также Элси Льюнг, Дмитрий Васильев назначены независимыми неисполнительными директорами. Исполнительными директорами назначены Евгений Никитин, Евгений Вавилов и Сергей Попов, неисполнительными — Марко Мусетти, Вячеслав Соломин и Тимур Валиев.\r\nКак писали ранее \"Вести. Экономика\", США сняли санкции с компаний Олега Дерипаски \"РусАл\", En+ и \"ЕвроСибЭнерго\". Российский бизнесмен - крупнейший акционер компаний - снизил свою долю, потеряв контроль, при этом сам он остается под санкциями. ', 2, '2019-01-28 21:56:48', NULL, 5, NULL),
(14, 'проверка картинок1', '<p>дрлдолдо</p>\r\n', 2, '2019-01-29 14:22:37', '71023559.jpg', 5, '2019-02-01 01:14:52'),
(15, 'проверка картинок2', 'вквкеп кеук укеук', 2, '2019-01-29 14:23:12', '74594116.jpg', 5, NULL),
(20, 'proba date reg', 'dfydf drtrte tet wet weter 55555555555555555', 2, '2019-01-31 21:04:49', '40662841.jpg', 1, '2019-01-31 22:52:52'),
(21, 'new new new222', '<p>jkjj hkhkh klhkllk lkklhlk lkhklh lkhlkh&nbsp;</p>\r\n\r\n<p>kjgjkh klhklh lkhlk lkhklh hlkhkj</p>\r\n', 2, '2019-01-31 23:30:45', '61781311.jpg', 2, '2019-02-01 01:01:34');

DROP TABLE IF EXISTS `skills`;
CREATE TABLE `skills` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `html` int(11) unsigned DEFAULT NULL,
  `css` int(11) unsigned DEFAULT NULL,
  `js` int(11) unsigned DEFAULT NULL,
  `jquery` int(11) unsigned DEFAULT NULL,
  `php` int(11) unsigned DEFAULT NULL,
  `mysql` int(11) unsigned DEFAULT NULL,
  `git` int(11) unsigned DEFAULT NULL,
  `gulp` int(11) unsigned DEFAULT NULL,
  `npm` int(11) unsigned DEFAULT NULL,
  `webpack` int(11) unsigned DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `skills` VALUES
(1, 75, 75, 15, 50, 40, 30, 50, 30, 40, 10, '2019-02-07 02:04:25');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `password` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `role` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `name` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `lastname` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `city` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `country` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `avatar` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `avatarsmall` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `recovery_code` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `recovery_code_times` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `users` VALUES
(2, 'mail1@mail.com', '$2y$10$EMC/3.mMe1/iUM8P5LwkOuZ92j3sYogoeUB1deOzOqmQwIbhrQlEK', 'admin', 'Людмила', 'Чернецова', 'Тюмень', 'Россия', '46859130.JPG', '46859130.JPG', NULL, NULL),
(3, 'mail2@mail.com', '$2y$10$tRowDLX6lZ8ZjD/u9JCWJObVUJkfTE9zZwsbOB5i6H5f06y2CDYgi', 'user', 'Марина', 'Лещева', 'Тюмень', 'Россия', '72655029.jpg', '72655029.jpg', 'VoTx5ijWy6Deg2U', 0),
(4, 'mail3@mail.com', '$2y$10$M.0UlPo7krwW852RuDZn3ujTVkUaPPJ2.ANq3SkhAEr/yKQZminfC', 'user', 'Кекс', 'Кексик', '', '', '95783996.jpg', '95783996.jpg', 'HuFUPY2tEiVhBCN', 0),
(5, 'mail4@mail.com', '$2y$10$1xgNfYsUmrFWlPMsh.yRGOC/GePbtGIqiS99h5bv9F/ccaxUKuYiS', 'user', 'Алексей', 'Алексеев', 'Иваново', 'Россия', '52717590.jpg', '52717590.jpg', '1MrQNyF7be3RLWj', 0),
(6, 'mai12l@mail.com', '$2y$10$X1J8BEbmUbFRqqWPQGDrzOoIiiEGC/Ja6JcUq2Q6H5JTkEnk01CEy', 'user', 'Александр', 'Александров', 'Новосибирск', 'Россия', '55027465.jpg', '55027465.jpg', NULL, NULL),
(7, 'chl9252@mail.ru', '$2y$10$S5X76CZJTDLHdg2C5bSurO0AyNPNVIITvT/RqjI7mGJkgoZwD0uIq', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'mail@mail.com', '$2y$10$xT95H1o7EYlaC6WPD.esz.Ffj/a5y2CZknnskfgaz8Gh0e3TFnBiG', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'mail12@mail.com', '$2y$10$MXPukcUyT1cY09/VBnMJUO.Chu6n5Nl6LwbQAqNFlSsGbUDlmKOtO', 'user', 'Борис', 'Борисов', 'Ебург', 'Россия', '49723815.jpg', '49723815.jpg', NULL, NULL);

DROP TABLE IF EXISTS `works`;
CREATE TABLE `works` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `text` text /*!40101 COLLATE utf8mb4_unicode_ci */,
  `result` text /*!40101 COLLATE utf8mb4_unicode_ci */,
  `technologies` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `project` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `github` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  `author_id` int(11) unsigned DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `workimg` varchar(191) /*!40101 COLLATE utf8mb4_unicode_ci */ DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_foreignkey_works_author` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `works` VALUES
(11, 'Поставщики Apple наращивают экспансию', '<p>После решения Foxconn о расширении своей деятельности за пределы Китая, другой контрактный производитель гаджетов Apple теперь планирует сделать то же самое. Pegatron создаст производственные мощности в трех новых странах: Индии, Индонезии и Вьетнаме, сообщает Financial Times. В настоящее время на долю Pegatron приходится около 30% сборочных заказов Apple. До сих пор компания почти полностью полагалась на Китай, но теперь она&nbsp;</p>\r\n', 'намерена изменить ситуацию за счет экспансии в Индонезию, Вьетнам и Индию. Президент Pegatron Си-Джанг Ляо отметил, что пресс-служба компании скоро сообщит более подробную информацию о расширении. Он также добавил, что темпы роста производства будут зависеть от продолжающейся торговой войны между США и Китаем. ', 'php html css jquery', 'https://vk.com/id201044984', 'https://github.com/chl9252', 2, '2019-02-07 23:32:12', '17454223.jpg'),
(12, 'Как следует из материалов компании, совет покинул Жан-Пьер Тома', '<p>Возможно, это решение Pegatron связано с тем, что Apple планирует начать производство последних моделей iPhone в Индии. Кроме того, продажи смартфонов и бытовой электроники в Китае в последнее время замедлились, что заставило многие компании сосредоточиться на других крупных рынках, например Индии. Руководство Pegatron в своем заявлении не касалось Apple, но трудно игнорировать связь между планами Pegatron и Foxconn и&nbsp;</p>\r\n', 'Pegatron в своем заявлении не касалось Apple, но трудно игнорировать связь между планами Pegatron и Foxconn и сообщения о том, что сборка флагманских моделей iPhone скоро начнется в Индии. Кроме того, китайский рынок ', 'html5 css3 js php', 'https://vk.com/id201044984', 'https://github.com/chl9252', 2, '2019-02-07 23:33:39', '48248901.jpg'),
(13, 'В настоящее время Foxconn имеет заводы как в Индии, так и во Вьетнаме', '<p>но пока они не задействованы в производстве устройств Apple. Ранее стало известно, что Foxconn Technology Group также изучает возможность расширения присутствия в Индии, чтобы снизить зависимость от Китая и обойти пошлины, которые могут ввести США, а также помочь Apple в выполнении требований индийских регуляторов по&nbsp;</p>\r\n', 'поводу размещения производства в стране. По данным ресурса The Wall Street Journal, в следующем месяце после завершения празднования китайского Нового года в Индию приедут руководители Foxconn, включая главу ', 'для обсуждения дальнейших планов', 'https://vk.com/id201044984', 'https://github.com/chl9252', 2, '2019-02-07 23:35:05', '54123840.jpg'),
(14, 'компаний, используя для некоторых операций заводы в Индии. Перенос', '<p>зависимость Foxconn от Китая и потенциально также уменьшит влияние любой торговой войны между США и Китаем на сотрудничество с Apple. По аналогичным причинам Foxconn также, как сообщается, рассматривает возможность переноса части производства во Вьетнам. По данным агентства, Foxconn инвестирует $356 млн в мощности для сборки телефонов Apple. Для этого будет расширен завод в городе Шриперамбудур (штат Тамилнад),&nbsp;</p>\r\n', '<p>на котором подрядчик уже производит телефоны для китайской компании Xiaomi. Подобное расширение может создать около 25 тыс. новых рабочих мест, отмечает агентство. Предполагается, что на заводе в Шриперамбудуре</p>\r\n', '<ul>\r\n	<li>html</li>\r\n	<li>css</li>\r\n	<li>php</li>\r\n</ul>\r\n', '', 'https://github.com/chl9252', 2, '2019-02-07 23:36:34', '63692932.jpg'),
(15, '111111111111111111', '<p>2222222222222222</p>\r\n', '', '', '', '', 2, '2019-02-08 00:40:08', NULL);

