#SKD101|WD05-project-chernetsowa|2|2019.01.26 01:56:20|5|1|4

DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 /*!40101 DEFAULT CHARSET=utf8 */;

INSERT INTO `about` VALUES
(1, 'Егор Казаков', 'Я веб разработчик.');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 /*!40101 DEFAULT CHARSET=utf8mb4 */ /*!40101 COLLATE=utf8mb4_unicode_ci */;

INSERT INTO `users` VALUES
(2, 'mail1@mail.com', '$2y$10$EMC/3.mMe1/iUM8P5LwkOuZ92j3sYogoeUB1deOzOqmQwIbhrQlEK', 'admin', 'Людмила', 'Чернецова', 'Тюмень', 'Россия', '37806396.jpg', '37806396.jpg', NULL, NULL),
(3, 'mail2@mail.com', '$2y$10$tRowDLX6lZ8ZjD/u9JCWJObVUJkfTE9zZwsbOB5i6H5f06y2CDYgi', 'user', 'Марина', 'Лещева', 'Тюмень', 'Россия', '72655029.jpg', '72655029.jpg', 'VoTx5ijWy6Deg2U', 0),
(4, 'mail3@mail.com', '$2y$10$M.0UlPo7krwW852RuDZn3ujTVkUaPPJ2.ANq3SkhAEr/yKQZminfC', 'user', 'Кекс', 'Кексик', 'Питер', 'Россия', '95783996.jpg', '95783996.jpg', 'HuFUPY2tEiVhBCN', 0),
(5, 'mail4@mail.com', '$2y$10$zIK1cDFwAQjk2fS2UJtW7OoF0kJpH5seAHo0wKE0Jjr4hNT0jZR0.', 'user', 'Алексей', 'Алексеев', 'Иваново', 'Россия', '52717590.jpg', '52717590.jpg', 'zYg0CcGT7FXwSnZ', 0);

