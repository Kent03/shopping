-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th8 27, 2021 lúc 10:02 AM
-- Phiên bản máy phục vụ: 5.7.33
-- Phiên bản PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopping`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'corporis occaecati', 'corporis-occaecati', '2021-08-20 06:07:57', '2021-08-20 06:07:57'),
(2, 'sint consequatur', 'sint-consequatur', '2021-08-20 06:07:57', '2021-08-20 06:07:57'),
(3, 'quas sint', 'quas-sint', '2021-08-20 06:07:57', '2021-08-20 06:07:57'),
(4, 'quos in', 'quos-in', '2021-08-20 06:07:57', '2021-08-20 06:07:57'),
(5, 'sequi quas', 'sequi-quas', '2021-08-20 06:07:58', '2021-08-20 06:07:58'),
(6, 'sed repellat', 'sed-repellat', '2021-08-20 06:07:58', '2021-08-20 06:07:58'),
(7, 'temporibus et', 'temporibus-et', '2021-08-20 06:35:29', '2021-08-20 06:35:29'),
(8, 'saepe quod', 'saepe-quod', '2021-08-20 06:35:29', '2021-08-20 06:35:29'),
(9, 'magnam sapiente', 'magnam-sapiente', '2021-08-20 06:35:29', '2021-08-20 06:35:29'),
(10, 'inventore et', 'inventore-et', '2021-08-20 06:35:29', '2021-08-20 06:35:29'),
(11, 'qui cum', 'qui-cum', '2021-08-20 06:35:29', '2021-08-20 06:35:29'),
(12, 'eos asperiores', 'eos-asperiores', '2021-08-20 06:35:29', '2021-08-20 06:35:29'),
(13, 'ut ullam', 'ut-ullam', '2021-08-20 06:36:33', '2021-08-20 06:36:33'),
(14, 'occaecati accusamus', 'occaecati-accusamus', '2021-08-20 06:36:33', '2021-08-20 06:36:33'),
(15, 'quae rerum', 'quae-rerum', '2021-08-20 06:36:33', '2021-08-20 06:36:33'),
(16, 'neque quos', 'neque-quos', '2021-08-20 06:36:33', '2021-08-20 06:36:33'),
(17, 'aliquid explicabo', 'aliquid-explicabo', '2021-08-20 06:36:33', '2021-08-20 06:36:33'),
(18, 'aliquam voluptates', 'aliquam-voluptates', '2021-08-20 06:36:34', '2021-08-20 06:36:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_08_17_063027_create_sessions_table', 1),
(10, '2021_08_20_103904_create_categories_table', 4),
(11, '2021_08_20_104000_create_products_table', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'in sapiente consequatur qui', 'in-sapiente-consequatur-qui', 'Provident unde voluptates non. Ut eum error beatae alias. Et et excepturi error ipsam repellendus et. Tenetur molestiae eligendi ut quae beatae id. Aliquid perspiciatis voluptatem possimus.', 'Assumenda nihil perspiciatis cumque in ea sunt. Praesentium perferendis aut unde laborum sed. Eius excepturi occaecati eligendi et adipisci necessitatibus voluptatibus quia. Autem sed voluptatem officiis laudantium velit quis ipsum. Possimus est autem aliquid quaerat. At et sit vel voluptatem culpa quas. Voluptatem cumque praesentium repudiandae repellat. Minus id placeat in nobis necessitatibus. Ut totam ea at numquam maiores. Placeat a doloribus consequatur.', '117.00', NULL, 'DIGI126', 'instock', 0, 124, 'digital_11.jpg', NULL, 5, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(2, 'et vel voluptates repellendus', 'et-vel-voluptates-repellendus', 'Corporis ratione perspiciatis corporis ea corrupti. Officia debitis vel et animi ut at animi fugiat. Tempore vel deleniti sequi ipsum sed omnis. Est dicta est eligendi quaerat et facere corrupti eum.', 'Illum qui omnis at quasi. In architecto illo praesentium cum et distinctio facilis veritatis. Magni est sit quia deserunt omnis ullam. Sequi inventore voluptatem aperiam. Qui eum provident sit culpa odio aut. Optio nulla voluptas ratione necessitatibus debitis iste esse. Aut dignissimos sapiente libero illo sunt. Omnis odio magnam cum ut in. Et porro non quo accusantium. Qui veniam praesentium et quia. Similique quo est ullam nam cumque rerum.', '125.00', NULL, 'DIGI131', 'instock', 0, 193, 'digital_15.jpg', NULL, 1, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(3, 'vitae cum aliquid suscipit', 'vitae-cum-aliquid-suscipit', 'Aut cum commodi provident dolor aut. Autem a voluptatem nisi autem beatae. Impedit dolore adipisci est et eos. Quasi est voluptate adipisci accusantium dolor eveniet.', 'Dicta consequatur sunt quis officia corrupti. Eligendi praesentium ut accusamus eius beatae autem. Quia assumenda alias exercitationem ut ab. Ut animi ipsa repellat ea non et omnis. Ducimus occaecati non beatae. Molestiae necessitatibus dolores id dolor. Praesentium a optio sunt voluptatem. Eaque blanditiis libero adipisci rem voluptatem. Possimus fuga qui ex fugit et. Doloribus impedit quo ut autem. Occaecati consequuntur labore qui laboriosam doloremque delectus est.', '204.00', NULL, 'DIGI472', 'instock', 0, 136, 'digital_3.jpg', NULL, 4, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(4, 'qui omnis illum libero', 'qui-omnis-illum-libero', 'Ut nostrum modi laboriosam hic incidunt nobis et quis. Laborum fugit et quas tempora iure. Alias ex repudiandae doloremque vel.', 'In autem et dicta vitae ea. Vitae magnam illo sunt facilis harum perspiciatis debitis. Vero laboriosam eligendi ipsa quidem rerum rerum. Occaecati ut culpa cupiditate omnis. Sit voluptas rerum quidem itaque et aut. Sed similique dolorum iste repudiandae perspiciatis quasi. Qui dolores maxime dolores atque. Occaecati quo facilis dolore qui ab quos.', '369.00', NULL, 'DIGI176', 'instock', 0, 137, 'digital_21.jpg', NULL, 5, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(5, 'in praesentium aut et', 'in-praesentium-aut-et', 'Mollitia voluptatem molestias dolore blanditiis velit maxime architecto et. Dolore sunt aspernatur et consequatur impedit minima. Voluptas et earum omnis aut aut fuga aperiam.', 'Perspiciatis porro provident tempore id. Ipsum amet et in qui perferendis quo ut. Autem ut ipsa placeat expedita consequatur. Repellat et molestias optio asperiores ex. Voluptas ducimus voluptatum fugit sunt magnam temporibus enim. Nisi vero vel omnis perferendis aut reprehenderit. Amet nobis quia nihil adipisci facilis. Est consequatur recusandae possimus nisi temporibus natus inventore et. Quisquam est quas qui placeat quasi.', '67.00', NULL, 'DIGI262', 'instock', 0, 193, 'digital_13.jpg', NULL, 2, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(6, 'amet magnam asperiores quibusdam', 'amet-magnam-asperiores-quibusdam', 'Error ipsa fuga omnis. Alias molestiae aut eveniet et eos impedit quis. Iusto earum libero at eligendi dolor voluptatem.', 'Excepturi qui rerum saepe. Magni deleniti vero voluptate veritatis est eos. Totam non et quos libero aperiam autem. Porro et eveniet assumenda blanditiis veritatis debitis non doloremque. Aut asperiores atque est minus. Autem et perspiciatis quidem. Est qui impedit molestias dolores maiores debitis sed. Assumenda omnis ipsa delectus accusamus blanditiis. Explicabo architecto optio et consequatur. Placeat ut totam sed soluta et.', '119.00', NULL, 'DIGI275', 'instock', 0, 142, 'digital_6.jpg', NULL, 4, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(7, 'dolore pariatur quia natus', 'dolore-pariatur-quia-natus', 'Reprehenderit delectus dolor rerum illum quam. Laudantium voluptatem dolore sed dolor sed nostrum. Aperiam veritatis odio enim illum. Repellendus ut minima porro sit laudantium facilis.', 'Facilis cupiditate error quo doloremque omnis aperiam quo qui. Saepe tempora et illo quis sint. Eum totam quibusdam quos commodi dolore. Nemo et enim vitae officiis porro voluptatibus rerum omnis. Et corporis minus omnis eligendi vitae. Et deserunt animi rerum consequatur natus iusto laborum aut. Fugiat sequi possimus officiis tempora et. Ipsa officiis perferendis dolores.', '364.00', NULL, 'DIGI347', 'instock', 0, 154, 'digital_19.jpg', NULL, 2, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(8, 'atque corporis ex sit', 'atque-corporis-ex-sit', 'Voluptatibus veritatis ut itaque. Est magnam quia quidem quo quisquam dignissimos est. Sed ut ipsum quo saepe sed repudiandae et. Ipsam necessitatibus ducimus id consequuntur vitae.', 'Aut accusantium eius eveniet eius asperiores. Rem assumenda consequatur corrupti similique libero laboriosam ipsum. Sit ut quasi fuga cupiditate fugiat quis. Optio eveniet debitis molestiae inventore illum ex ea. Optio magnam sit fuga ut sed. Expedita laborum et consequatur et sint magni non. Harum occaecati voluptate ullam assumenda possimus voluptas et. Quaerat recusandae nisi libero neque. Vel dolor natus dolorum.', '353.00', NULL, 'DIGI268', 'instock', 0, 200, 'digital_1.jpg', NULL, 4, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(9, 'blanditiis voluptatem saepe impedit', 'blanditiis-voluptatem-saepe-impedit', 'Et fuga nobis non ad. Illo animi dolorem quia. Rem sapiente dolore quia reprehenderit laborum.', 'Temporibus nostrum qui voluptate. Amet quia sint necessitatibus voluptatem eaque. Beatae reiciendis qui sunt a aut sit esse quibusdam. Excepturi a laudantium et sunt eum ut aut. Sit vero velit impedit voluptas pariatur consequatur. Officiis nisi dolor omnis magnam. Nobis sed incidunt et sequi. Eos sed cum rerum veniam qui voluptas aliquid. Aut repellendus earum totam dolores animi.', '120.00', NULL, 'DIGI236', 'instock', 0, 113, 'digital_20.jpg', NULL, 4, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(10, 'minima voluptas accusamus dolorum', 'minima-voluptas-accusamus-dolorum', 'Consectetur animi sunt quibusdam qui sequi corrupti enim. Molestias et corporis aperiam voluptas accusamus a.', 'Et quod quae aliquid maxime cumque perferendis. Culpa aperiam ut molestiae unde necessitatibus iste soluta. Adipisci rerum ex vero est doloremque. Cumque ex qui vel perspiciatis aliquam fuga velit beatae. Eos alias dolor omnis rerum in facere. Ad exercitationem autem praesentium consequatur. Enim corrupti et saepe consectetur et. Et eum nihil ad voluptate qui delectus repellat dignissimos. Ut dolores nihil quidem voluptatibus quia consequatur.', '116.00', NULL, 'DIGI474', 'instock', 0, 179, 'digital_5.jpg', NULL, 4, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(11, 'officia aut rerum velit', 'officia-aut-rerum-velit', 'Deleniti voluptas corporis earum autem culpa magni. Laboriosam necessitatibus sequi quia dolorem quos facilis animi. A harum omnis quis nihil dolor facilis ad similique. Qui ut nihil quod et et.', 'Unde maiores voluptas aspernatur in ut. Aperiam consequatur velit tenetur ea. Ipsam exercitationem fugiat voluptas eius. Deleniti nulla alias numquam. Ullam ut repellendus vero odit. Consequatur repellendus voluptatem voluptatem est dolorem qui enim. Dolor laudantium sint voluptatem qui. Esse libero commodi voluptatem. Ut quas et rem eligendi. Atque ut sint id. Voluptatum et nam et necessitatibus vel fugit reiciendis voluptatem. Explicabo autem ab atque quas non vel corrupti.', '333.00', NULL, 'DIGI394', 'instock', 0, 120, 'digital_2.jpg', NULL, 5, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(12, 'sit voluptatem voluptatum laboriosam', 'sit-voluptatem-voluptatum-laboriosam', 'Modi id expedita quidem voluptate magnam. Minus incidunt magni sed voluptatem. Est iste nam omnis et. Officia modi occaecati enim nam.', 'Veniam qui qui alias. Quae molestiae unde omnis porro quo numquam. Nesciunt aut delectus et omnis. Vitae repellendus sint quia at veritatis. Error aliquid rem fuga omnis. Animi quo beatae consequatur possimus qui consectetur. Voluptatem quae quod laboriosam possimus provident omnis. Hic deleniti repellat quidem sit eaque consequatur. Tempora nam labore maxime deserunt qui natus nam et. Quasi vitae sint consequuntur beatae quia. Sequi nemo explicabo ipsum.', '313.00', NULL, 'DIGI167', 'instock', 0, 140, 'digital_7.jpg', NULL, 4, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(13, 'autem odit maxime similique', 'autem-odit-maxime-similique', 'Perspiciatis sapiente tenetur repudiandae. Eum non quos veritatis voluptas sit. Nemo ex repudiandae voluptatem.', 'Praesentium voluptatibus facere et illo ut at ut. Similique incidunt labore ut laboriosam. Itaque dolores rerum expedita quos. Et inventore reiciendis officiis assumenda. Cupiditate sunt et accusantium voluptatem quis cumque. Laborum voluptates voluptatem repellat ad quis. Odio omnis consequatur laboriosam beatae. Similique et minima est deleniti est unde. Similique perspiciatis enim exercitationem eligendi omnis quod est.', '99.00', NULL, 'DIGI284', 'instock', 0, 193, 'digital_9.jpg', NULL, 2, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(14, 'cupiditate aut maxime amet', 'cupiditate-aut-maxime-amet', 'Quo rem doloremque qui pariatur doloremque voluptate facilis. Dolores culpa hic voluptas saepe consectetur in culpa. Voluptatem et neque aut ipsa.', 'Repellendus error ipsum aut atque explicabo quibusdam. Nulla consequatur qui animi accusantium iure doloremque. Quae culpa commodi minus natus rerum. Adipisci animi numquam expedita sint debitis unde adipisci. Illo ipsam ea ut quaerat molestias culpa. Cumque recusandae repellat facere facilis. Placeat beatae nostrum ut eligendi. Quo maxime neque quia tempora vero nemo iusto soluta. Earum ut fugiat perferendis enim deserunt.', '362.00', NULL, 'DIGI487', 'instock', 0, 102, 'digital_16.jpg', NULL, 2, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(15, 'et suscipit et et', 'et-suscipit-et-et', 'Ullam quo natus est natus ut dolore. Ut molestias assumenda eos expedita deserunt dicta incidunt. Et ipsam ullam sit numquam veniam aut repudiandae veniam.', 'Quia qui quae sapiente cum ipsum veritatis. Rerum quos sint consequatur. Reiciendis rerum dignissimos in rerum. Sed vero eius laborum corporis minus et. Ea voluptatem voluptas doloremque odit repellat quas ut. Quis voluptas quia earum consequatur enim sunt. Iusto dignissimos inventore sequi eligendi. Cumque harum qui in quae numquam fugiat blanditiis. Ipsum autem ducimus eligendi laborum. Occaecati a dolores et quaerat labore. Ea reprehenderit qui alias necessitatibus aut.', '394.00', NULL, 'DIGI179', 'instock', 0, 194, 'digital_14.jpg', NULL, 5, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(16, 'nemo eum iusto velit', 'nemo-eum-iusto-velit', 'Quas non et exercitationem. Vel eos culpa ipsum reiciendis aliquid. Fugit a maxime officia quod quia expedita id quasi.', 'Alias tempore omnis id eum. Dolorum vero facilis molestiae ut. Voluptatem blanditiis quo illum autem in molestias ipsum. Voluptate ut odit quia deserunt corrupti ut qui eaque. Explicabo hic aspernatur dolorem odio. Eius reprehenderit reprehenderit in aut sit. Et repudiandae provident iusto a facilis quia. Accusamus alias deleniti et iure. Sequi et ipsa rem est animi ad quos quas. Autem architecto ea id voluptatum nihil repellendus.', '424.00', NULL, 'DIGI141', 'instock', 0, 105, 'digital_10.jpg', NULL, 1, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(17, 'eum ad eum explicabo', 'eum-ad-eum-explicabo', 'Sit aperiam magni quia voluptatem. Accusantium blanditiis error quis eos.', 'Ad dignissimos omnis nulla. Iusto est facere nobis commodi quia officiis. Eaque iusto expedita quia eligendi architecto consequuntur illum officia. Laborum sapiente est recusandae minima. Corporis explicabo omnis eum alias. Facilis iusto dolores accusantium non. Alias sunt neque tenetur est. Voluptate culpa sit soluta nihil consectetur ea accusantium minus.', '483.00', NULL, 'DIGI455', 'instock', 0, 139, 'digital_8.jpg', NULL, 2, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(18, 'aut eveniet dignissimos harum', 'aut-eveniet-dignissimos-harum', 'Eveniet eaque ut laudantium autem. Occaecati doloremque dolorem eligendi et modi eos. Iure nesciunt voluptate vel in illum commodi facere quidem.', 'Laboriosam minus dolore omnis explicabo numquam saepe. Cumque molestias error ipsam quisquam. Dolores totam reprehenderit dolorem quisquam iste sapiente atque. Exercitationem nemo magni dolore cum. Amet ipsum aliquam perferendis officia. Repellat ab voluptas expedita vel atque quia vero. Ratione eaque ut eos. Cumque impedit mollitia nihil aut voluptatem. Nam eum ut sint totam.', '441.00', NULL, 'DIGI165', 'instock', 0, 148, 'digital_17.jpg', NULL, 4, '2021-08-20 06:36:34', '2021-08-20 06:36:34'),
(19, 'fuga corrupti et voluptas', 'fuga-corrupti-et-voluptas', 'Consequatur sit rerum ipsam dolores. At nostrum et molestiae officia.', 'Saepe assumenda laboriosam sed amet dignissimos. Aut voluptas non corporis et ex. Qui accusantium sit rerum veritatis. Voluptate ullam officiis suscipit. Placeat alias ab modi veritatis rerum est aliquam. Est sequi cupiditate iusto aliquam. Sit possimus facere quidem sit quo. Magni possimus soluta expedita non aut saepe eos. Atque vel ipsam quis quo harum tenetur et. Fugit commodi esse recusandae et quisquam repellendus. Amet alias nihil aut vero. Culpa quaerat minima expedita.', '167.00', NULL, 'DIGI256', 'instock', 0, 156, 'digital_4.jpg', NULL, 5, '2021-08-20 06:36:35', '2021-08-20 06:36:35'),
(20, 'quo consequatur hic quas', 'quo-consequatur-hic-quas', 'Ut delectus aut facere et. Voluptatem autem voluptatem voluptatem aut accusamus. Laudantium itaque consequuntur voluptas doloribus quibusdam velit error. Aliquam sed laudantium non soluta.', 'Ratione placeat recusandae fugiat quo. Esse illo qui voluptas illum a inventore. Laborum nobis sunt accusantium molestiae. Deleniti fuga eius tempora. Nihil ipsa eius quo ab sint qui totam. Voluptas ipsam minus eius sed quibusdam commodi rerum. Ullam iste et magnam consequatur. Nemo facilis at nihil cum quas distinctio. Nostrum necessitatibus quasi consequuntur.', '132.00', NULL, 'DIGI467', 'instock', 0, 120, 'digital_18.jpg', NULL, 1, '2021-08-20 06:36:35', '2021-08-20 06:36:35'),
(21, 'sunt ut dolorem atque', 'sunt-ut-dolorem-atque', 'Doloremque ullam labore quisquam debitis ut. Est quae nulla minima. Qui sequi voluptatibus laborum provident labore iste dolorum.', 'Illum perferendis odit sunt doloremque nulla est. Corrupti perferendis harum impedit ea occaecati recusandae atque. Laborum similique esse amet optio sed nam. Nesciunt velit quis doloremque ullam est. Et velit sed explicabo odio voluptatum dolorem non. Provident mollitia nihil praesentium illum. Harum non temporibus quia pariatur necessitatibus dolores vel iure. Est tempora doloremque reiciendis itaque aspernatur aliquid.', '291.00', NULL, 'DIGI241', 'instock', 0, 133, 'digital_22.jpg', NULL, 1, '2021-08-20 06:36:35', '2021-08-20 06:36:35'),
(22, 'cupiditate pariatur aut laborum', 'cupiditate-pariatur-aut-laborum', 'Saepe amet accusantium aut eveniet modi eum. Porro aut ipsa atque vitae rerum eos et. Cumque sunt accusantium eligendi et vel. Ratione accusamus sequi aut rerum.', 'Cupiditate laboriosam autem placeat autem doloremque reprehenderit sit. Laborum dolorum labore exercitationem laborum ex. Repellendus ut ut ut esse. Id nihil et aspernatur. Nesciunt totam neque qui officia. Numquam et dignissimos veniam est praesentium nesciunt iure. Dicta veritatis necessitatibus blanditiis. Voluptas doloribus repudiandae iure minus. Nisi quisquam facere rerum odit et inventore cum.', '319.00', NULL, 'DIGI340', 'instock', 0, 112, 'digital_12.jpg', NULL, 4, '2021-08-20 06:36:35', '2021-08-20 06:36:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('wRa3NTax6rYTlzu1kJY7Ll5TTQEpxZQWZs1PDNXg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/97.0.194 Chrome/91.0.4472.194 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEc1dXdGRGw3a3NWR2dWdExoNWVZWU9lUlg2b3lJSjAyNGttMVhYMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9zaG9wcGluZy52dGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1630058357);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for USER or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$NPBXF19VS0vt8vmAg8WCAOfa3zD0o5xTVSvRNZJtLHrbNMYBpNJg.', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-08-20 01:25:13', '2021-08-20 01:25:13'),
(2, 'chobao', 'admin3@gmail.com', NULL, '$2y$10$F4k.6NbiKH9TZq6ijw/TD.KG97nHpwmmWR1edsqOcZUbGWWyNaAF.', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-08-20 21:10:48', '2021-08-20 21:10:48');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
