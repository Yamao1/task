-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 26 2022 г., 14:29
-- Версия сервера: 8.0.24
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `task`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'Eos.', 'eos', 'xgulgowski@hotmail.com', '2022-12-26 09:20:24', '2022-10-10 23:24:43', '2022-12-26 09:20:24'),
(2, 'Tempora eos.', 'tempora-eos', 'barrett.greenfelder@dubuque.biz', '2022-12-26 09:20:24', '2022-09-05 19:32:54', '2022-12-26 09:20:24'),
(3, 'Aliquam tempore.', 'aliquam-tempore', 'mueller.carlee@lowe.com', '2022-12-26 09:20:24', '2022-02-22 03:42:13', '2022-12-26 09:20:24'),
(4, 'Et.', 'et', 'fwyman@gmail.com', '2022-12-26 09:20:24', '2022-01-11 14:52:32', '2022-12-26 09:20:24'),
(5, 'Nisi ut.', 'nisi-ut', 'goyette.madisyn@hotmail.com', '2022-12-26 09:20:24', '2022-04-10 02:53:25', '2022-12-26 09:20:24'),
(6, 'Enim est.', 'enim-est', 'leuschke.karelle@rippin.com', '2022-12-26 09:20:24', '2022-07-22 04:27:59', '2022-12-26 09:20:24'),
(7, 'Voluptas.', 'voluptas', 'kiley.ratke@anderson.com', '2022-12-26 09:20:24', '2022-03-16 11:04:22', '2022-12-26 09:20:24'),
(8, 'Non.', 'non', 'kulas.karl@yahoo.com', '2022-12-26 09:20:24', '2022-10-19 11:57:08', '2022-12-26 09:20:24'),
(9, 'Odit debitis.', 'odit-debitis', 'ylang@lowe.com', '2022-12-26 09:20:24', '2022-11-12 15:37:04', '2022-12-26 09:20:24'),
(10, 'Quae veniam.', 'quae-veniam', 'augustine.okon@gmail.com', '2022-12-26 09:20:24', '2022-05-05 01:44:37', '2022-12-26 09:20:24'),
(11, 'Cumque saepe.', 'cumque-saepe', 'carmine90@metz.net', '2022-12-26 09:20:24', '2022-05-17 09:53:17', '2022-12-26 09:20:24'),
(12, 'Officia.', 'officia', 'mikel.flatley@braun.com', '2022-12-26 09:20:24', '2022-06-20 20:58:12', '2022-12-26 09:20:24'),
(13, 'Itaque.', 'itaque', 'kilback.malcolm@bergnaum.com', '2022-12-26 09:20:24', '2022-03-21 09:25:15', '2022-12-26 09:20:25'),
(14, 'Voluptas distinctio.', 'voluptas-distinctio', 'lueilwitz.arthur@bauch.com', '2022-12-26 09:20:24', '2022-01-08 03:13:08', '2022-12-26 09:20:25'),
(15, 'Maxime.', 'maxime', 'murazik.jaida@yahoo.com', '2022-12-26 09:20:24', '2022-02-08 21:20:29', '2022-12-26 09:20:25'),
(16, 'Consectetur enim.', 'consectetur-enim', 'domingo.daniel@cruickshank.com', '2022-12-26 09:20:24', '2022-07-22 08:27:13', '2022-12-26 09:20:25'),
(17, 'Quis.', 'quis', 'birdie84@gorczany.biz', '2022-12-26 09:20:24', '2022-11-02 03:27:48', '2022-12-26 09:20:25'),
(18, 'Impedit.', 'impedit', 'bogisich.rubie@ebert.org', '2022-12-26 09:20:24', '2022-09-09 21:32:19', '2022-12-26 09:20:25'),
(19, 'Aperiam.', 'aperiam', 'wblock@hotmail.com', '2022-12-26 09:20:24', '2022-10-18 01:23:53', '2022-12-26 09:20:25'),
(20, 'Optio id.', 'optio-id', 'glenda.feest@gmail.com', '2022-12-26 09:20:24', '2022-07-07 09:18:28', '2022-12-26 09:20:25'),
(21, 'Id omnis.', 'id-omnis', 'rbeer@bogan.info', '2022-12-26 09:20:24', '2022-10-26 14:19:04', '2022-12-26 09:20:25'),
(22, 'Fuga.', 'fuga', 'walter.rosina@yahoo.com', '2022-12-26 09:20:24', '2022-03-25 10:18:13', '2022-12-26 09:20:25'),
(23, 'Repellendus.', 'repellendus', 'oceane50@bins.com', '2022-12-26 09:20:24', '2022-07-06 18:13:49', '2022-12-26 09:20:25'),
(24, 'In.', 'in', 'xhomenick@gmail.com', '2022-12-26 09:20:24', '2021-12-29 15:18:03', '2022-12-26 09:20:25'),
(25, 'Accusamus.', 'accusamus', 'lynch.darius@yahoo.com', '2022-12-26 09:20:24', '2022-11-30 08:32:19', '2022-12-26 09:20:25'),
(26, 'Veniam id.', 'veniam-id', 'terence35@hotmail.com', '2022-12-26 09:20:24', '2022-08-31 20:59:02', '2022-12-26 09:20:25'),
(27, 'Voluptates.', 'voluptates', 'dudley.rolfson@yahoo.com', '2022-12-26 09:20:24', '2022-10-08 19:38:58', '2022-12-26 09:20:25'),
(28, 'Aut.', 'aut', 'heaven50@kovacek.com', '2022-12-26 09:20:24', '2022-08-28 00:57:45', '2022-12-26 09:20:25'),
(29, 'Est.', 'est', 'lori.jacobs@hotmail.com', '2022-12-26 09:20:24', '2022-06-06 10:17:12', '2022-12-26 09:20:25'),
(30, 'Rerum enim.', 'rerum-enim', 'dcrooks@dietrich.com', '2022-12-26 09:20:24', '2022-10-28 22:55:15', '2022-12-26 09:20:25');

-- --------------------------------------------------------

--
-- Структура таблицы `article_tag`
--

CREATE TABLE `article_tag` (
  `article_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `article_tag`
--

INSERT INTO `article_tag` (`article_id`, `tag_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 2),
(2, 3),
(2, 5),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 4),
(4, 5),
(5, 1),
(5, 2),
(5, 4),
(6, 2),
(6, 3),
(6, 5),
(7, 2),
(7, 3),
(7, 4),
(8, 1),
(8, 3),
(8, 4),
(9, 1),
(9, 4),
(9, 5),
(10, 3),
(10, 4),
(10, 5),
(11, 1),
(11, 4),
(11, 5),
(12, 2),
(12, 3),
(12, 5),
(13, 2),
(13, 3),
(13, 4),
(14, 1),
(14, 2),
(14, 3),
(15, 1),
(15, 3),
(15, 4),
(16, 1),
(16, 2),
(16, 4),
(17, 1),
(17, 3),
(17, 5),
(18, 3),
(18, 4),
(18, 5),
(19, 1),
(19, 2),
(19, 5),
(20, 1),
(20, 3),
(20, 5),
(21, 2),
(21, 4),
(21, 5),
(22, 1),
(22, 3),
(22, 4),
(23, 3),
(23, 4),
(23, 5),
(24, 3),
(24, 4),
(24, 5),
(25, 2),
(25, 4),
(25, 5),
(26, 1),
(26, 4),
(26, 5),
(27, 1),
(27, 4),
(27, 5),
(28, 2),
(28, 3),
(28, 5),
(29, 1),
(29, 4),
(29, 5),
(30, 2),
(30, 4),
(30, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_29_102730_create_articles_table', 1),
(6, '2022_07_29_102756_create_tags_table', 1),
(7, '2022_07_29_102821_create_comments_table', 1),
(8, '2022_07_29_102848_create_states_table', 1),
(9, '2022_07_29_103028_create_article_tag_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `states`
--

CREATE TABLE `states` (
  `id` bigint UNSIGNED NOT NULL,
  `likes` int NOT NULL,
  `views` int NOT NULL,
  `article_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `states`
--

INSERT INTO `states` (`id`, `likes`, `views`, `article_id`) VALUES
(1, 3, 27, 1),
(2, 9, 51, 2),
(3, 7, 62, 3),
(4, 16, 61, 4),
(5, 19, 60, 5),
(6, 1, 38, 6),
(7, 5, 75, 7),
(8, 15, 81, 8),
(9, 8, 59, 9),
(10, 17, 75, 10),
(11, 4, 99, 11),
(12, 11, 77, 12),
(13, 6, 71, 13),
(14, 12, 68, 14),
(15, 10, 68, 15),
(16, 7, 61, 16),
(17, 5, 92, 17),
(18, 4, 29, 18),
(19, 15, 61, 19),
(20, 11, 29, 20),
(21, 4, 82, 21),
(22, 13, 73, 22),
(23, 15, 24, 23),
(24, 17, 36, 24),
(25, 3, 90, 25),
(26, 7, 35, 26),
(27, 3, 28, 27),
(28, 4, 21, 28),
(29, 10, 25, 29),
(30, 9, 41, 30);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `label`) VALUES
(1, 'vero'),
(2, 'dolorum'),
(3, 'dicta'),
(4, 'ea'),
(5, 'natus');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `article_tag`
--
ALTER TABLE `article_tag`
  ADD KEY `article_tag_article_id_foreign` (`article_id`),
  ADD KEY `article_tag_tag_id_foreign` (`tag_id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_article_id_foreign` (`article_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_article_id_foreign` (`article_id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
