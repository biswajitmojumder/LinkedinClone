CREATE TABLE `users` (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `username` varchar(255) NOT NULL,
                         `first_name` varchar(255) NOT NULL,
                         `last_name` varchar(255) NOT NULL,
                         `password` varchar(255) NOT NULL,
                         `email` varchar(255) NOT NULL,
                         `birth_date` date DEFAULT NULL,
                         `age` int(11) DEFAULT NULL,
                         `registration_date` datetime NOT NULL,
                         `last_login_date` timestamp NOT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `username` (`username`),
                         CONSTRAINT `user_age_above_18` CHECK (`age` >= 18)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
