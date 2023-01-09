-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 09 2023 г., 16:04
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
-- База данных: `tasktest`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `name`, `email`, `slug`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'Aliquam dignissimos.', 'victor82@senger.com', 'voluptates-mollitia-placeat-possimus-quis-accusantium-harum-cupiditate-repudiandae-quas-voluptates-et-a-aspernatur', '2023-01-09 09:58:42', '2022-08-12 05:35:56', '2023-01-09 09:58:42'),
(2, 'Ipsa eligendi.', 'price.marietta@hotmail.com', 'alias-aliquid-eaque-architecto-ullam-et-animi-culpa-amet-in-itaque-odit-dolorem', '2023-01-09 09:58:42', '2022-04-16 03:02:40', '2023-01-09 09:58:42'),
(3, 'Est saepe.', 'celestine43@schuppe.com', 'vitae-consequatur-eius-consequatur-dolore-sit-eos-facilis-eum-eum', '2023-01-09 09:58:42', '2022-10-19 13:04:44', '2023-01-09 09:58:42'),
(4, 'Qui quam.', 'davis.heloise@yahoo.com', 'labore-quaerat-dolore-voluptatum-quod-facere-qui-neque-illo-quasi-dolor-aut-ut-rerum', '2023-01-09 09:58:42', '2022-06-10 10:39:16', '2023-01-09 09:58:42'),
(5, 'Asperiores.', 'chadrick34@heathcote.com', 'ipsum-minima-id-modi-eligendi-nisi-perspiciatis-accusamus', '2023-01-09 09:58:42', '2022-04-27 07:34:10', '2023-01-09 09:58:42'),
(6, 'Doloribus ducimus.', 'cmckenzie@hotmail.com', 'possimus-exercitationem-laborum-distinctio-voluptatibus-ut-ea-exercitationem-consectetur-ut-molestiae-quam', '2023-01-09 09:58:42', '2022-03-03 11:11:28', '2023-01-09 09:58:42'),
(7, 'Aliquid.', 'ward.reese@yahoo.com', 'soluta-est-libero-dolores-et-aut-eius-qui-aut-laborum', '2023-01-09 09:58:42', '2022-09-15 14:06:15', '2023-01-09 09:58:42'),
(8, 'Et.', 'nestor20@cronin.net', 'tempore-quidem-odit-repudiandae-enim-voluptatum-accusamus-corporis-nam-assumenda-beatae', '2023-01-09 09:58:42', '2022-06-26 06:44:11', '2023-01-09 09:58:42'),
(9, 'Illo facere.', 'jordyn18@yahoo.com', 'qui-quas-aut-esse-non-ipsam-et-excepturi-qui-quam-libero-adipisci', '2023-01-09 09:58:42', '2022-09-09 01:43:37', '2023-01-09 09:58:42'),
(10, 'Tempore non.', 'bashirian.helene@skiles.com', 'modi-fuga-quia-enim-illo-nobis-aliquam-culpa-ut-dolores-quae-voluptates', '2023-01-09 09:58:42', '2022-01-30 16:23:22', '2023-01-09 09:58:42'),
(11, 'Aut.', 'medhurst.brooklyn@keebler.com', 'eveniet-et-repellendus-explicabo-reprehenderit-est-qui-tempora-aut-quidem-dignissimos-itaque', '2023-01-09 09:58:42', '2022-04-18 22:53:23', '2023-01-09 09:58:42'),
(12, 'Modi.', 'bboyer@murray.info', 'perspiciatis-ipsum-ea-deleniti-molestiae-atque-veniam-a-aut-ea-esse-voluptas', '2023-01-09 09:58:42', '2022-06-19 22:56:11', '2023-01-09 09:58:42'),
(13, 'Eum.', 'paris68@yahoo.com', 'reiciendis-vel-non-rerum-rerum-pariatur-non-rerum', '2023-01-09 09:58:42', '2022-05-28 20:57:56', '2023-01-09 09:58:42'),
(14, 'Laudantium rerum.', 'gaylord.triston@mcclure.biz', 'eos-qui-a-molestiae-est-perferendis-omnis-ipsum-velit-et-unde', '2023-01-09 09:58:42', '2022-02-03 06:08:06', '2023-01-09 09:58:42'),
(15, 'Eaque.', 'sprice@pouros.com', 'asperiores-molestias-maiores-ab-neque-ut-perspiciatis', '2023-01-09 09:58:42', '2022-07-22 17:09:03', '2023-01-09 09:58:42'),
(16, 'Totam quia.', 'mhartmann@yahoo.com', 'magni-vel-earum-sequi-et-voluptatum-amet', '2023-01-09 09:58:42', '2022-10-22 23:29:20', '2023-01-09 09:58:42'),
(17, 'Autem.', 'dgoldner@wehner.com', 'eius-fuga-nisi-omnis-et-assumenda-sit-omnis-est-corrupti', '2023-01-09 09:58:42', '2022-11-07 18:53:17', '2023-01-09 09:58:42'),
(18, 'Totam id.', 'pbreitenberg@mcclure.com', 'est-sunt-non-atque-est-placeat-culpa-ducimus', '2023-01-09 09:58:42', '2022-09-16 12:03:21', '2023-01-09 09:58:42'),
(19, 'Deserunt.', 'caterina.reichel@hotmail.com', 'dolores-impedit-veniam-quo-aliquid-commodi-quia-impedit-omnis-est-modi-sed-illo-libero-ratione', '2023-01-09 09:58:42', '2022-12-27 21:20:16', '2023-01-09 09:58:42'),
(20, 'Amet.', 'mabel.reinger@hotmail.com', 'ipsam-voluptates-nostrum-quod-dolor-nihil-impedit-corporis-autem', '2023-01-09 09:58:42', '2022-05-09 11:06:48', '2023-01-09 09:58:42'),
(21, 'Quis iusto.', 'toy.justen@hotmail.com', 'ut-corporis-itaque-aliquam-dolor-ea-id', '2023-01-09 09:58:42', '2022-04-15 23:28:21', '2023-01-09 09:58:42'),
(22, 'Odio.', 'zoey.blick@rempel.com', 'perspiciatis-molestias-est-saepe-accusamus-et-quibusdam-quo-voluptates-rerum', '2023-01-09 09:58:42', '2022-03-14 00:06:16', '2023-01-09 09:58:42'),
(23, 'Saepe reiciendis.', 'sammie.feil@dibbert.com', 'eos-dolores-eaque-quis-itaque-facere-qui', '2023-01-09 09:58:42', '2022-01-28 15:59:35', '2023-01-09 09:58:42'),
(24, 'Omnis.', 'dooley.westley@yahoo.com', 'exercitationem-magni-atque-qui-ipsum-vel-illo', '2023-01-09 09:58:42', '2022-12-27 20:42:58', '2023-01-09 09:58:42'),
(25, 'Eos.', 'schroeder.skye@hoeger.com', 'qui-laudantium-veniam-nobis-voluptate-quia-adipisci-quia-omnis', '2023-01-09 09:58:42', '2023-01-05 23:07:30', '2023-01-09 09:58:42'),
(26, 'Explicabo ipsa.', 'leffler.robb@kautzer.biz', 'modi-praesentium-id-architecto-reiciendis-ducimus-incidunt-fugit-enim-vel-labore', '2023-01-09 09:58:42', '2022-07-26 09:45:11', '2023-01-09 09:58:42'),
(27, 'Velit architecto.', 'dangelo.davis@gmail.com', 'tempore-temporibus-temporibus-odio-molestiae-quia-culpa-commodi-deleniti', '2023-01-09 09:58:42', '2022-08-30 22:31:52', '2023-01-09 09:58:42'),
(28, 'Voluptas ut.', 'parker11@lebsack.org', 'labore-beatae-laborum-tenetur-iusto-nobis-occaecati-ut-dolorum-alias-quis-animi-sed', '2023-01-09 09:58:42', '2022-08-22 22:57:28', '2023-01-09 09:58:43'),
(29, 'Facere et.', 'delaney.klein@gmail.com', 'amet-labore-placeat-nisi-est-nihil-est-earum-illo-necessitatibus-officiis-nihil', '2023-01-09 09:58:42', '2022-10-05 00:12:23', '2023-01-09 09:58:43'),
(30, 'Dicta.', 'lon.legros@weissnat.com', 'et-mollitia-maiores-voluptas-quos-maxime-repellendus-dolor', '2023-01-09 09:58:42', '2022-10-02 13:40:09', '2023-01-09 09:58:43'),
(31, 'Quibusdam repellendus.', 'graham.jennyfer@gmail.com', 'deleniti-quia-nisi-omnis-quo-consequatur-illum-nulla', '2023-01-09 09:58:42', '2022-10-08 11:15:23', '2023-01-09 09:58:43'),
(32, 'Laborum enim.', 'little.brady@simonis.net', 'similique-delectus-corporis-ipsa-ea-neque-dolor-omnis-doloremque-doloremque-rerum-qui-modi-ut', '2023-01-09 09:58:42', '2022-03-15 22:06:28', '2023-01-09 09:58:43'),
(33, 'Consectetur.', 'marian.renner@pacocha.com', 'accusamus-quia-est-dolor-tenetur-ullam-eos-qui', '2023-01-09 09:58:42', '2022-12-23 13:53:20', '2023-01-09 09:58:43'),
(34, 'Neque.', 'hildegard64@jaskolski.com', 'aut-aut-nostrum-occaecati-inventore-doloribus-magnam-soluta-sed', '2023-01-09 09:58:42', '2022-06-09 17:56:42', '2023-01-09 09:58:43'),
(35, 'Rerum optio.', 'elakin@hotmail.com', 'consequatur-veniam-numquam-sit-perferendis-cum-laudantium-omnis-ut-maxime-nulla', '2023-01-09 09:58:42', '2022-07-16 19:21:16', '2023-01-09 09:58:44'),
(36, 'Maxime temporibus.', 'cummings.stephany@yahoo.com', 'nam-qui-placeat-molestias-officia-aut-minima-aperiam-quis-officia', '2023-01-09 09:58:42', '2023-01-07 09:05:38', '2023-01-09 09:58:44'),
(37, 'Voluptate et.', 'muller.clement@stehr.com', 'est-dicta-molestias-vel-itaque-autem-excepturi-ullam', '2023-01-09 09:58:42', '2022-05-19 15:08:04', '2023-01-09 09:58:44'),
(38, 'Perspiciatis commodi.', 'kgaylord@yahoo.com', 'dolor-et-quibusdam-minima-dolorum-officia-vitae-tempore-rerum-porro-quasi-accusantium', '2023-01-09 09:58:42', '2022-12-30 09:37:33', '2023-01-09 09:58:44'),
(39, 'Sapiente molestiae.', 'gorczany.bud@haag.com', 'consequatur-aliquam-quasi-et-id-et-nisi-quia-culpa-eligendi-eum-quaerat-labore-nisi', '2023-01-09 09:58:42', '2022-09-05 04:08:53', '2023-01-09 09:58:44'),
(40, 'Maiores nam.', 'qhoppe@bergnaum.com', 'perferendis-voluptatum-animi-qui-aperiam-reiciendis-id', '2023-01-09 09:58:42', '2022-12-25 07:22:19', '2023-01-09 09:58:44'),
(41, 'Odio.', 'bzulauf@gmail.com', 'quis-reprehenderit-officia-quia-molestias-atque-dolor-accusamus', '2023-01-09 09:58:42', '2022-03-09 20:21:54', '2023-01-09 09:58:44'),
(42, 'Non ea.', 'lebsack.tyrese@yahoo.com', 'numquam-dolorem-voluptate-id-omnis-et-quam-fuga-fuga-quia-debitis-pariatur-adipisci-et', '2023-01-09 09:58:42', '2022-04-13 01:25:34', '2023-01-09 09:58:44'),
(43, 'Aliquid quidem.', 'erwin87@vonrueden.net', 'qui-velit-ea-impedit-eaque-libero-unde', '2023-01-09 09:58:42', '2022-10-27 10:42:27', '2023-01-09 09:58:44'),
(44, 'Molestiae tenetur.', 'smitham.charlie@hotmail.com', 'distinctio-aut-est-id-cupiditate-natus-non-ipsum-dolorem-veritatis', '2023-01-09 09:58:42', '2022-03-07 03:59:45', '2023-01-09 09:58:44'),
(45, 'Qui.', 'little.caterina@yahoo.com', 'autem-aut-quod-voluptatem-doloribus-nihil-veritatis-qui', '2023-01-09 09:58:42', '2022-01-17 19:53:20', '2023-01-09 09:58:45'),
(46, 'Laborum neque.', 'cweber@towne.com', 'commodi-praesentium-iusto-enim-sunt-nisi-laboriosam-ut-sit-ut-repudiandae-soluta', '2023-01-09 09:58:42', '2022-11-30 21:43:48', '2023-01-09 09:58:45'),
(47, 'Et perspiciatis.', 'abdiel56@reynolds.com', 'deleniti-quisquam-temporibus-qui-maiores-aut-ea-aliquid-fugiat-repellendus-minima-animi-tempore-nemo', '2023-01-09 09:58:42', '2022-12-27 07:00:30', '2023-01-09 09:58:45'),
(48, 'Ut.', 'rowena18@prosacco.com', 'ipsa-quae-atque-voluptates-aut-consectetur-asperiores-quis-tempora-aliquid-iste', '2023-01-09 09:58:42', '2022-10-24 01:16:48', '2023-01-09 09:58:45'),
(49, 'Voluptatum.', 'baumbach.willie@gmail.com', 'consequatur-aut-inventore-nesciunt-labore-dolorem-voluptas-repellat-dolorem-non-minus-quos-alias-ipsa', '2023-01-09 09:58:42', '2022-07-12 10:05:39', '2023-01-09 09:58:45'),
(50, 'Rerum.', 'josh.harber@herman.org', 'iure-et-est-voluptatem-ut-repudiandae-recusandae', '2023-01-09 09:58:42', '2022-10-12 15:59:56', '2023-01-09 09:58:45'),
(51, 'Ut.', 'hickle.maurine@gmail.com', 'veritatis-non-maiores-enim-sint-veritatis-sapiente-soluta-ipsam-dolorum-commodi', '2023-01-09 09:58:42', '2022-11-03 13:25:23', '2023-01-09 09:58:45'),
(52, 'Vel eos.', 'jbrown@kihn.com', 'debitis-distinctio-quo-nulla-in-enim-possimus-et-qui-culpa', '2023-01-09 09:58:42', '2022-02-11 16:22:53', '2023-01-09 09:58:45'),
(53, 'Consequatur molestias.', 'reichert.rozella@heidenreich.com', 'omnis-et-eos-rerum-fugiat-vero-aspernatur-sed-nihil-in-quas', '2023-01-09 09:58:42', '2022-08-15 16:30:15', '2023-01-09 09:58:45'),
(54, 'Sit.', 'marquise28@gmail.com', 'hic-sit-reiciendis-eaque-est-laboriosam-excepturi-amet-eos-architecto-suscipit-minus-odio-fugiat', '2023-01-09 09:58:42', '2022-11-03 12:27:47', '2023-01-09 09:58:45'),
(55, 'Voluptatem voluptatibus.', 'fmarvin@yahoo.com', 'pariatur-non-aut-repudiandae-velit-a-voluptatem-quaerat-ut-ipsum-id-voluptas-dolores-est', '2023-01-09 09:58:42', '2022-05-09 19:32:47', '2023-01-09 09:58:45'),
(56, 'Quam.', 'hudson.arnaldo@fritsch.info', 'quaerat-assumenda-perspiciatis-et-saepe-nemo-et-eum-soluta-ipsum-voluptas', '2023-01-09 09:58:42', '2022-05-15 07:53:15', '2023-01-09 09:58:46'),
(57, 'Suscipit voluptatem.', 'icollier@gmail.com', 'quos-sit-facere-voluptatem-fugiat-et-enim-at-voluptas-repellat-odit-magnam-delectus-et', '2023-01-09 09:58:42', '2022-10-02 07:03:29', '2023-01-09 09:58:46'),
(58, 'Odio ut.', 'huels.mack@yahoo.com', 'suscipit-aliquam-id-eveniet-dolorem-a-voluptatem-repellat', '2023-01-09 09:58:42', '2022-03-06 15:38:39', '2023-01-09 09:58:46'),
(59, 'Nihil ut.', 'pierce.kuhn@yahoo.com', 'sit-sed-dicta-modi-hic-deleniti-ullam-quia-est', '2023-01-09 09:58:42', '2022-09-03 19:47:48', '2023-01-09 09:58:46'),
(60, 'Tempore.', 'tvon@murazik.com', 'mollitia-inventore-omnis-et-eos-aperiam-modi-dolor-iste-est-ullam-nisi-id-iste', '2023-01-09 09:58:42', '2022-05-09 09:42:44', '2023-01-09 09:58:46'),
(61, 'Magni voluptatem.', 'rudy.mosciski@gmail.com', 'similique-dolorem-hic-necessitatibus-sunt-et-saepe-ut', '2023-01-09 09:58:42', '2022-07-28 00:03:36', '2023-01-09 09:58:46'),
(62, 'Consequatur quisquam.', 'jarret.schmitt@gusikowski.info', 'id-nostrum-praesentium-ipsam-consectetur-eligendi-qui-eveniet-aut-nobis-cumque-sint-ut-occaecati', '2023-01-09 09:58:42', '2022-09-04 13:22:53', '2023-01-09 09:58:46'),
(63, 'Nobis dignissimos.', 'miles31@ondricka.com', 'nemo-voluptatem-nisi-tempore-id-eaque-corporis-distinctio-omnis-voluptatem-rerum-quo', '2023-01-09 09:58:42', '2022-11-27 12:22:02', '2023-01-09 09:58:46'),
(64, 'Iste quia.', 'raegan44@gutmann.org', 'facere-qui-neque-sit-quos-optio-quo-et-vitae-repellendus-odit-enim', '2023-01-09 09:58:42', '2022-09-11 04:07:22', '2023-01-09 09:58:46'),
(65, 'In.', 'manderson@gmail.com', 'officiis-veniam-doloribus-consequatur-in-voluptatibus-qui-omnis-architecto-quidem-numquam', '2023-01-09 09:58:42', '2022-12-22 19:13:20', '2023-01-09 09:58:46'),
(66, 'Fugiat.', 'landen74@gmail.com', 'ullam-iure-delectus-aut-non-veniam-veniam-perferendis-iste-distinctio-sunt-reiciendis-impedit-sapiente', '2023-01-09 09:58:42', '2022-07-20 14:10:38', '2023-01-09 09:58:46'),
(67, 'Asperiores libero.', 'schamberger.marlon@gmail.com', 'et-aspernatur-nostrum-qui-velit-soluta-omnis-aut-autem-rerum-maxime-sint-esse', '2023-01-09 09:58:42', '2022-12-16 11:32:56', '2023-01-09 09:58:46'),
(68, 'Est inventore.', 'charlotte.grant@yahoo.com', 'earum-voluptas-tenetur-porro-quia-possimus-quo-ea-quis-in-ut-doloribus', '2023-01-09 09:58:42', '2022-06-21 15:37:22', '2023-01-09 09:58:46'),
(69, 'Distinctio.', 'roberts.clovis@hotmail.com', 'ex-exercitationem-velit-minus-quod-est-reiciendis-sit-ut', '2023-01-09 09:58:42', '2022-08-27 17:56:31', '2023-01-09 09:58:46'),
(70, 'Assumenda aut.', 'peter83@yahoo.com', 'maiores-accusamus-est-eaque-provident-voluptate-consectetur', '2023-01-09 09:58:42', '2022-10-13 21:38:37', '2023-01-09 09:58:46'),
(71, 'Reiciendis et.', 'johan.nikolaus@yahoo.com', 'similique-dolores-voluptatem-similique-nobis-facere-odit-molestiae-minima-exercitationem-aut', '2023-01-09 09:58:42', '2022-06-23 19:57:26', '2023-01-09 09:58:46'),
(72, 'Nam non.', 'abdiel.turcotte@strosin.com', 'fugiat-voluptatibus-sapiente-expedita-adipisci-quia-necessitatibus', '2023-01-09 09:58:42', '2022-03-24 12:44:15', '2023-01-09 09:58:46'),
(73, 'Quos inventore.', 'bechtelar.vida@conroy.com', 'aliquam-tenetur-omnis-repellat-doloremque-ducimus-assumenda-error-provident-ut-mollitia', '2023-01-09 09:58:42', '2022-12-19 07:26:42', '2023-01-09 09:58:46'),
(74, 'Ut cum.', 'jay.corwin@feil.org', 'aperiam-qui-cupiditate-ut-id-excepturi-sed-voluptas-quod-aut-dignissimos-molestiae-ab-sint', '2023-01-09 09:58:42', '2022-06-13 00:58:18', '2023-01-09 09:58:46'),
(75, 'Quis.', 'knader@thompson.com', 'corrupti-neque-vitae-assumenda-provident-et-eveniet-perferendis', '2023-01-09 09:58:42', '2023-01-05 08:19:41', '2023-01-09 09:58:46'),
(76, 'Eum accusamus.', 'doyle.belle@buckridge.biz', 'ratione-excepturi-sed-et-aut-et-est-adipisci-molestias-animi-fugit-autem', '2023-01-09 09:58:42', '2022-07-02 20:28:53', '2023-01-09 09:58:46'),
(77, 'Asperiores.', 'waldo81@bins.com', 'voluptates-dignissimos-et-dolor-dolorem-minima-error-libero', '2023-01-09 09:58:42', '2022-07-31 18:52:27', '2023-01-09 09:58:46'),
(78, 'Ad.', 'qdach@hotmail.com', 'sint-voluptas-alias-quos-asperiores-quo-enim-praesentium-aspernatur-qui-ea-fugit', '2023-01-09 09:58:42', '2023-01-03 14:24:33', '2023-01-09 09:58:46'),
(79, 'Sunt aspernatur.', 'kenton19@gibson.com', 'voluptate-eum-voluptatum-explicabo-molestias-cumque-minima-voluptatum-corrupti', '2023-01-09 09:58:42', '2022-08-15 23:23:02', '2023-01-09 09:58:46'),
(80, 'Eum laudantium.', 'angelica.greenfelder@cartwright.com', 'atque-aut-enim-ea-tempore-enim-quasi-et-nisi-sapiente-voluptatem-labore-optio', '2023-01-09 09:58:42', '2022-11-05 15:52:04', '2023-01-09 09:58:46'),
(81, 'Explicabo cumque.', 'leatha07@lubowitz.net', 'sit-fuga-ipsam-dolore-quia-ut-nihil-quidem', '2023-01-09 09:58:42', '2022-05-25 02:12:39', '2023-01-09 09:58:46'),
(82, 'Deserunt sit.', 'agnes99@cole.com', 'nostrum-autem-et-odit-fugiat-eius-praesentium-ab', '2023-01-09 09:58:42', '2022-04-27 02:21:06', '2023-01-09 09:58:46'),
(83, 'Possimus.', 'zklocko@eichmann.com', 'sunt-quae-quia-ipsum-impedit-ea-sit', '2023-01-09 09:58:42', '2022-07-13 12:17:08', '2023-01-09 09:58:46'),
(84, 'Voluptas.', 'agoyette@will.com', 'alias-ut-quos-quo-assumenda-tempore-architecto-labore-tempora-harum-dolorem-omnis-autem-suscipit', '2023-01-09 09:58:42', '2022-07-21 16:28:22', '2023-01-09 09:58:47'),
(85, 'Sint.', 'fbauch@hotmail.com', 'omnis-nihil-rerum-voluptatem-quaerat-accusantium-consequatur-ex-consequatur-facilis-voluptatibus-delectus', '2023-01-09 09:58:42', '2022-10-16 20:13:02', '2023-01-09 09:58:47'),
(86, 'Eum.', 'eruecker@oconnell.net', 'cumque-temporibus-et-esse-et-quas-ut-ut-veniam-non-ea-commodi', '2023-01-09 09:58:42', '2022-03-25 01:36:03', '2023-01-09 09:58:47'),
(87, 'Sint quibusdam.', 'umccullough@hotmail.com', 'soluta-quia-ad-et-iusto-voluptate-omnis-odit-corrupti-et-fugit-sint', '2023-01-09 09:58:42', '2022-08-10 22:32:38', '2023-01-09 09:58:47'),
(88, 'Dolor.', 'arvel23@yahoo.com', 'incidunt-deleniti-modi-maiores-quaerat-quo-est-et-illum-vel', '2023-01-09 09:58:42', '2022-05-16 19:40:44', '2023-01-09 09:58:47'),
(89, 'Non delectus.', 'eula55@gmail.com', 'aut-dignissimos-voluptatum-libero-quis-doloremque-aut-tempora-ipsum-accusantium-quia', '2023-01-09 09:58:42', '2022-12-14 16:47:04', '2023-01-09 09:58:47'),
(90, 'Dolorem consequatur.', 'milan78@gmail.com', 'quis-cumque-tempora-sequi-modi-quo-veniam-omnis', '2023-01-09 09:58:42', '2022-04-11 10:42:06', '2023-01-09 09:58:47'),
(91, 'Ut.', 'mollie20@yahoo.com', 'temporibus-consequatur-doloremque-odio-repellendus-sed-voluptatem-aut-deserunt', '2023-01-09 09:58:42', '2022-03-05 06:03:05', '2023-01-09 09:58:47'),
(92, 'Esse.', 'qjakubowski@ward.com', 'est-voluptatibus-itaque-harum-dolor-recusandae-odit-eius-tempora', '2023-01-09 09:58:42', '2022-01-29 03:16:15', '2023-01-09 09:58:47'),
(93, 'Distinctio rerum.', 'cummings.eric@hotmail.com', 'nisi-molestiae-voluptas-reprehenderit-voluptas-vero-similique', '2023-01-09 09:58:42', '2022-11-17 21:04:39', '2023-01-09 09:58:47'),
(94, 'Mollitia.', 'bria.gottlieb@durgan.com', 'voluptatem-qui-rem-quasi-atque-cupiditate-rerum-quasi-consectetur-ratione-ipsum-quas', '2023-01-09 09:58:42', '2022-05-06 07:59:11', '2023-01-09 09:58:47'),
(95, 'Neque consequatur.', 'everette80@gmail.com', 'nam-modi-et-id-fugit-odit-maxime-aliquid-mollitia-officiis-alias', '2023-01-09 09:58:42', '2022-01-19 09:43:05', '2023-01-09 09:58:47'),
(96, 'Maiores et.', 'ysmith@eichmann.org', 'et-rerum-dolorem-explicabo-ipsam-excepturi-et-sint', '2023-01-09 09:58:42', '2022-07-14 15:59:20', '2023-01-09 09:58:47'),
(97, 'Temporibus corrupti.', 'ashly.trantow@effertz.com', 'quia-eos-inventore-quasi-est-sed-quidem-inventore', '2023-01-09 09:58:42', '2022-12-31 11:25:42', '2023-01-09 09:58:47'),
(98, 'Voluptas.', 'wbednar@gmail.com', 'exercitationem-magni-voluptates-illum-rem-minima-dicta-aliquam-libero-nulla-cupiditate', '2023-01-09 09:58:42', '2022-10-12 13:18:23', '2023-01-09 09:58:47'),
(99, 'Amet voluptatibus.', 'antonina.flatley@morar.org', 'repellendus-dolores-consequatur-qui-similique-ea-magni-id-cupiditate', '2023-01-09 09:58:42', '2022-10-07 02:51:15', '2023-01-09 09:58:47'),
(100, 'Porro reprehenderit.', 'tiffany06@batz.biz', 'iusto-laudantium-sed-qui-sit-velit-voluptatem-nemo', '2023-01-09 09:58:42', '2022-11-24 15:15:53', '2023-01-09 09:58:47'),
(101, '1a1a1a1a1a', '1a1a1a1a1a1a', '1a@mail.com', NULL, '2023-01-09 10:53:22', '2023-01-09 10:53:22'),
(102, 'sdfgsdfsdfsd', 'asdfsdgfsdfsd', 'sdfsdfsf@mail.com', NULL, '2023-01-09 10:57:57', '2023-01-09 10:57:57'),
(103, 'ertertert', 'werrwrwerwerw', 'ert@mail.com', NULL, '2023-01-09 10:58:43', '2023-01-09 10:58:43'),
(104, 'asdasdasd', 'rotu90tioertg', 'asdasdasdasd@mail.com', NULL, '2023-01-09 10:59:32', '2023-01-09 10:59:32');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `body`, `img`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'werwerwerwerwer', '/storage/img/202301091300403.jpg', 102, '2023-01-09 11:00:40', '2023-01-09 11:00:40'),
(2, 'werwerwerwer', NULL, 102, '2023-01-09 11:00:49', '2023-01-09 11:00:49');

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
(6, '2022_07_29_102821_create_comments_table', 1);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
