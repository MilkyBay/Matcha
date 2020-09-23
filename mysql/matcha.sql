-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: db
-- Время создания: Июл 15 2020 г., 14:55
-- Версия сервера: 8.0.20
-- Версия PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE USER 'matcha'@'%' IDENTIFIED WITH mysql_native_password BY 'pass_mcomet';
GRANT ALL ON *.* TO 'matcha'@'%';

--
-- База данных: `matcha`
--

CREATE DATABASE IF NOT EXISTS `matcha` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `matcha`;

-- --------------------------------------------------------

--
-- Структура таблицы `blocked`
--

CREATE TABLE `blocked` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `blocked_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `blocked`
--

INSERT INTO `blocked` (`id`, `user_id`, `blocked_id`) VALUES
(1, 85, 84);

-- --------------------------------------------------------

--
-- Структура таблицы `chats`
--

CREATE TABLE `chats` (
  `id` int NOT NULL,
  `user1_id` int NOT NULL,
  `user2_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `chats`
--

INSERT INTO `chats` (`id`, `user1_id`, `user2_id`) VALUES
(1, 38, 37),
(2, 43, 38),
(3, 43, 37),
(4, 81, 84),
(5, 37, 85);

-- --------------------------------------------------------

--
-- Структура таблицы `likes`
--

CREATE TABLE `likes` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `liked_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `liked_id`) VALUES
(3, 37, 38),
(4, 38, 37),
(5, 43, 38),
(6, 43, 37),
(7, 37, 43),
(13, 84, 81),
(14, 84, 46),
(15, 84, 48),
(16, 84, 43),
(17, 84, 37),
(18, 81, 84),
(19, 85, 37),
(21, 37, 85),
(22, 81, 85);

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `chat_id` int NOT NULL,
  `sender_id` int NOT NULL,
  `recipient_id` int NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `chat_id`, `sender_id`, `recipient_id`, `text`, `timestamp`) VALUES
(98, 4, 81, 84, 'привет', '2020-07-15 14:45:24'),
(99, 4, 81, 84, 'хай\n', '2020-07-15 14:48:28');

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE `notifications` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `link`, `date_created`) VALUES
(12, 37, 'You received a message from mcomet', '/chat/38', '2020-07-14 15:02:52'),
(13, 37, 'You received a message from mcomet', '/chat/38', '2020-07-14 15:02:56'),
(14, 37, 'You received a message from mcomet', '/chat/38', '2020-07-14 15:03:25'),
(15, 37, 'You received a message from mcomet', '/chat/38', '2020-07-14 15:03:29'),
(16, 37, 'You received a message from mcomet', '/chat/38', '2020-07-14 15:03:31'),
(17, 37, 'You received a message from mcomet', '/chat/38', '2020-07-14 15:03:34'),
(18, 37, 'You received a message from mcomet', '/chat/38', '2020-07-14 15:03:36'),
(19, 37, 'You received a message from mcomet', '/chat/38', '2020-07-14 15:03:37'),
(20, 37, 'You received a message from mcomet', '/chat/38', '2020-07-14 15:03:38'),
(21, 37, 'You received a message from mcomet', '/chat/38', '2020-07-14 15:03:40'),
(22, 37, 'You received a message from mcomet', '/chat/38', '2020-07-14 15:03:43'),
(23, 37, 'You received a message from mcomet', '/chat/38', '2020-07-14 15:03:46'),
(24, 37, 'You received a message from mcomet', '/chat/38', '2020-07-14 15:03:48'),
(25, 37, 'You received a message from mcomet', '/chat/38', '2020-07-14 15:03:51'),
(26, 37, 'You received a message from mcomet', '/chat/38', '2020-07-14 15:03:54'),
(27, 37, 'You received a message from mcomet', '/chat/38', '2020-07-14 15:03:56'),
(28, 38, 'You have been liked by lola', '/profile/43', '2020-07-14 17:04:21'),
(29, 37, 'You have been liked by lola', '/profile/43', '2020-07-14 17:04:23'),
(30, 43, 'You have been liked back by pitha', '/profile/37', '2020-07-14 17:05:33'),
(32, 43, 'You have been liked by login', '/profile/7', '2020-07-15 09:20:13'),
(33, 37, 'You have been liked by login', '/profile/7', '2020-07-15 09:20:14'),
(34, 38, 'You have been liked by login', '/profile/7', '2020-07-15 09:20:16'),
(35, 38, 'Your profile was visited by login', '/profile/7', '2020-07-15 09:20:27'),
(37, 43, 'Your profile was visited by login', '/profile/7', '2020-07-15 09:20:33'),
(39, 37, 'Your profile was visited by lola', '/profile/43', '2020-07-15 11:11:05'),
(40, 37, 'You received a message from lola', '/chat/43', '2020-07-15 11:11:18'),
(42, 46, 'You have been liked by dog', '/profile/84', '2020-07-15 13:14:12'),
(43, 48, 'You have been liked by dog', '/profile/84', '2020-07-15 13:14:13'),
(44, 43, 'You have been liked by dog', '/profile/84', '2020-07-15 13:14:15'),
(45, 37, 'You have been liked by dog', '/profile/84', '2020-07-15 13:14:16'),
(47, 84, 'Your profile was visited by gaga', '/profile/81', '2020-07-15 13:14:21'),
(48, 84, 'You have been liked back by gaga', '/profile/81', '2020-07-15 13:14:23'),
(49, 37, 'You have been liked by kira', '/profile/85', '2020-07-15 13:26:33'),
(50, 84, 'You have been liked by kira', '/profile/85', '2020-07-15 13:26:33'),
(51, 85, 'You have been liked back by pitha', '/profile/37', '2020-07-15 13:26:50'),
(52, 85, 'Your profile was visited by pitha', '/profile/37', '2020-07-15 13:26:58'),
(53, 85, 'You received a message from pitha', '/chat/37', '2020-07-15 13:27:03'),
(54, 37, 'You received a message from kira', '/chat/85', '2020-07-15 13:30:08'),
(55, 81, 'Your profile was visited by kira', '/profile/85', '2020-07-15 14:30:14'),
(56, 84, 'Your profile was visited by kira', '/profile/85', '2020-07-15 14:30:31'),
(57, 85, 'Your profile was visited by gaga', '/profile/81', '2020-07-15 14:31:20'),
(58, 85, 'You have been liked by gaga', '/profile/81', '2020-07-15 14:31:21'),
(59, 46, 'Your profile was visited by gaga', '/profile/81', '2020-07-15 14:33:04'),
(60, 84, 'You received a message from gaga', '/chat/81', '2020-07-15 14:45:24'),
(61, 84, 'You received a message from gaga', '/chat/81', '2020-07-15 14:48:28');

-- --------------------------------------------------------

--
-- Структура таблицы `reports`
--

CREATE TABLE `reports` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `reported_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `reported_id`) VALUES
(1, 85, 81);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(9, 'Business'),
(11, 'Deutschland'),
(14, 'dfxgdh'),
(1, 'dogs'),
(4, 'ew'),
(13, 'guitar'),
(10, 'History'),
(3, 'homo'),
(8, 'IT'),
(12, 'piano'),
(2, 'кей-поп'),
(5, 'Крокобизнес'),
(7, 'Политика'),
(6, 'Экономика');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `gender` enum('male','female') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferences` enum('bisexual','heterosexual','homosexual') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `photos` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '["", "", "", ""]',
  `age` int DEFAULT NULL,
  `online` tinyint(1) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `name`, `surname`, `email`, `password`, `token`, `confirmed`, `gender`, `preferences`, `biography`, `avatar`, `photos`, `age`, `online`, `last_login`, `city`) VALUES
(37, 'pitha', 'pitha', 'pop', 'pitha@ageokfc.com', 'pbkdf2:sha256:150000$XsUAkneu$7107bde2b28b61869b2538f3dcabe39fb51f79141a46953989c8a813597517a5', '221db43708d8b9139349', 1, 'male', 'bisexual', 'кексы', '/uploads/pitha/image.jpeg', '[\"\", \"\", \"\", \"\"]', 32, 0, '2020-07-15 13:29:57', 'Moscow, Republic of Khakassia, Russia'),
(38, 'mcomet', 'Дима', 'А', 'sheriff800@bk.ru', 'pbkdf2:sha256:150000$v4qtUxnB$967ef315ce9dd66f8eba4438ff5e21c93e6ec738df7cff40315cdb79f51d59e1', '13a508d6970ce81dd1f8', 1, 'female', 'heterosexual', '<script>alert(‘XSS’)</script>', '/uploads/mcomet/485be5b57ccddff67dbea06fe2ae5756.jpg', '[\"/uploads/mcomet/80d27db0d02bd073515078ae108c8a2c.jpg\", \"/uploads/mcomet/woman-1320810_640.jpg\", \"/uploads/mcomet/questionstoaskagirl2.jpg\", \"\"]', 18, 0, '2020-07-15 13:14:08', 'Мумбаи, Maharashtra, India'),
(43, 'lola', 'l', 'ola', 'lola@ageokfc.com', 'pbkdf2:sha256:150000$berQGS3y$947be0771ffebb346794995fa06513fe9bda5809e46038a66cabe6370b15ce02', 'c330d926ee89d606ce09', 1, 'male', 'bisexual', 'love cats', '/uploads/lola/default_avatar2.jpg', '[\"\", \"\", \"\", \"\"]', 12, 0, '2020-07-15 11:12:08', 'Kiev, Ukraine'),
(46, 'Михаил', 'Михаил Павлович', 'Терентьев', 'rivaf17392@djemail.net', 'pbkdf2:sha256:150000$F8KRNRG5$acd1b2ac7ceac72ec4ec252e86579d2e49e3498cf968c4d779e9c18d0e4bd9fc', 'b7e0eb2f4d29c04aa31d', 1, 'male', 'heterosexual', 'Инвестор в 3ем поколении.', '/uploads/michael/nu-che-tam-s-dengami-prank.jpg', '[\"/uploads/\\u041c\\u0438\\u0445\\u0430\\u0438\\u043b/v3uptv.jpg\", \"\", \"\", \"\"]', 33, 0, '2020-07-15 12:21:38', 'Красноярск, Russia'),
(48, 'Дмитрий Медведев', 'Дмитрий', 'Медведев', 'cadeseg302@romail9.com', 'pbkdf2:sha256:150000$qsxezRxl$d600fbcc12ed9d8d6514259802819cc01e8512ef63e899123d0134ae9f0ab922', 'e23e488bd68c6336041d', 1, 'male', 'bisexual', 'Бывший президент РФ.', '/uploads/dmitry/medved.jpg', '[\"/uploads/dmitry/medved2.jpg\", \"\", \"\", \"\"]', 50, 0, '2020-07-15 12:10:27', 'Moscow, Russia'),
(76, 'Tim Cook', 'Tim', 'Cook', 'savoseg534@mailsecv.com', 'pbkdf2:sha256:150000$OwfbiZk0$1b2f2c3d33dcd85eb5ca25b70f4af8c4a56117a8ad9e69cedfc1eb10fb044b46', '216f0295d66a8d6143db', 1, 'male', 'homosexual', 'CEO of Apple.inc', '/uploads/Tim Cook/png', '[\"/uploads/Tim Cook/200620_cook.png\", \"\", \"\", \"\"]', 56, 0, '2020-07-15 12:19:49', 'Palo Alto, CA, USA'),
(80, 'angela2020', 'Angela', 'Merkel', 'sefipos951@pastmao.com', 'pbkdf2:sha256:150000$QcnEKRwd$27fe27175c0b38fdd341a1eb10057edc324fbfaa92746961ac377b92944586b1', 'ae1d3c64322c39993303', 1, 'female', 'heterosexual', 'Reichskanzler', '/uploads/angela2020/angela-merkel.png', '[\"/uploads/angela2020/Angela_Merkel_Portrait.png\", \"\", \"\", \"\"]', 65, 0, '2020-07-15 12:28:24', 'Berlin, Germany'),
(81, 'gaga', 'Lady', 'Gaga', 'voxone5995@romail9.com', 'pbkdf2:sha256:150000$FbZaRFvZ$e410e028b08a19f8a94ae0937812cb14bff1d9984b7aa6a47c5b33bf4cb986d0', 'd2393b5ec003b2f19142', 1, 'female', 'bisexual', 'Cool girl', '/uploads/gaga/lady-gaga-13-lady-gaga-png-clipart.jpg', '[\"\", \"/uploads/gaga/gaga.png\", \"\", \"\"]', 50, 1, '2020-07-15 14:53:21', 'Manchester, UK'),
(82, 'zemphira', 'Zemphira', 'prosto', 'sicivok528@votavk.com', 'pbkdf2:sha256:150000$Cz9ChFxy$0685a23aa5a129c00a8c5592e15b540424a99e720ddfd26577f167a7a44e8019', '9044be37bddb1e4359e1', 1, 'male', 'homosexual', 'Певица из России', '/uploads/zemphira/zemfira.png', '[\"\", \"\", \"\", \"\"]', 49, 0, '2020-07-15 12:49:05', 'Helendzhyk, Zaporizhia Oblast, Ukraine'),
(84, 'dog', 'd', 'og', 'doggy@mailsecv.com', 'pbkdf2:sha256:150000$Fgw7xmEj$4431e525fd1af57ee5da9ec40022110077b447683258f59c83014f5e5e210fd3', '63f307c83046b391f6c0', 1, 'female', 'bisexual', 'dgsfhj', '/uploads/dog/downloadawfwer.jpeg', '[\"\", \"\", \"\", \"\"]', 55, 0, '2020-07-15 13:23:57', 'Morocco, IN, USA'),
(85, 'kira', 'k', 'ira', 'kira@mailsecv.com', 'pbkdf2:sha256:150000$h8BukppJ$1ff3a9a1090d6732325882b86abc2d2fb2f85e3ecfde77ee593cda29b2e5c163', '7501ab9225539bc640a9', 1, 'female', 'bisexual', 'asdfghj', '/uploads/kira/Kira_Carsen.jpg', '[\"\", \"\", \"\", \"\"]', 44, 0, '2020-07-15 14:37:13', 'Moscow, Russia');

-- --------------------------------------------------------

--
-- Структура таблицы `user_tag`
--

CREATE TABLE `user_tag` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `tag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user_tag`
--

INSERT INTO `user_tag` (`id`, `user_id`, `tag_id`) VALUES
(1, 37, 1),
(2, 38, 2),
(3, 43, 3),
(5, 46, 5),
(6, 46, 6),
(7, 48, 7),
(8, 76, 9),
(9, 76, 8),
(10, 80, 11),
(11, 80, 10),
(12, 81, 12),
(13, 82, 13),
(14, 85, 14);

-- --------------------------------------------------------

--
-- Структура таблицы `visits`
--

CREATE TABLE `visits` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `visited_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `visits`
--

INSERT INTO `visits` (`id`, `user_id`, `visited_id`) VALUES
(1, 37, 38),
(2, 38, 37),
(6, 43, 37),
(7, 84, 81),
(8, 81, 84),
(9, 37, 85),
(10, 85, 81),
(11, 85, 84),
(12, 81, 85),
(13, 81, 46);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blocked`
--
ALTER TABLE `blocked`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_blocked_user_ref1` (`user_id`),
  ADD KEY `fk_blocked_user_ref2` (`blocked_id`);

--
-- Индексы таблицы `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chats_user_ref1` (`user1_id`),
  ADD KEY `fk_chats_user_ref2` (`user2_id`);

--
-- Индексы таблицы `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_likes_user_ref1` (`user_id`),
  ADD KEY `fk_likes_user_ref2` (`liked_id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_messages_user_ref1` (`sender_id`),
  ADD KEY `fk_messages_user_ref2` (`recipient_id`),
  ADD KEY `ft_messages_chat_ref` (`chat_id`);

--
-- Индексы таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_notifications_user_ref` (`user_id`);

--
-- Индексы таблицы `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reported_user_ref1` (`user_id`),
  ADD KEY `fk_reported_user_ref2` (`reported_id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `surname` (`surname`);

--
-- Индексы таблицы `user_tag`
--
ALTER TABLE `user_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_tag_user_ref` (`user_id`),
  ADD KEY `fk_user_tag_tag_ref` (`tag_id`);

--
-- Индексы таблицы `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_visits_user_ref1` (`user_id`),
  ADD KEY `fk_visits_user_ref2` (`visited_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blocked`
--
ALTER TABLE `blocked`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT для таблицы `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT для таблицы `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT для таблицы `user_tag`
--
ALTER TABLE `user_tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `blocked`
--
ALTER TABLE `blocked`
  ADD CONSTRAINT `fk_blocked_user_ref1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_blocked_user_ref2` FOREIGN KEY (`blocked_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `fk_chats_user_ref1` FOREIGN KEY (`user1_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_chats_user_ref2` FOREIGN KEY (`user2_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `fk_likes_user_ref1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_likes_user_ref2` FOREIGN KEY (`liked_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `fk_messages_user_ref1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_messages_user_ref2` FOREIGN KEY (`recipient_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ft_messages_chat_ref` FOREIGN KEY (`chat_id`) REFERENCES `chats` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notifications_user_ref` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `fk_reported_user_ref1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reported_user_ref2` FOREIGN KEY (`reported_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_tag`
--
ALTER TABLE `user_tag`
  ADD CONSTRAINT `fk_user_tag_tag_ref` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_user_tag_user_ref` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `fk_visits_user_ref1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_visits_user_ref2` FOREIGN KEY (`visited_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
