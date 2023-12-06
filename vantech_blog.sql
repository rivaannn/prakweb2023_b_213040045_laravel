-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2023 at 04:28 PM
-- Server version: 8.0.33
-- PHP Version: 8.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vantech_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(2, 'Web Design', 'web-design', '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(3, 'Personal', 'personal', '2023-11-23 09:20:35', '2023-11-23 09:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_01_120816_create_posts_table', 1),
(6, '2023_11_01_141159_create_categories_table', 1),
(7, '2023_11_23_175208_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Rerum magnam quidem dolores.', 'est-numquam-ut-nihil-nostrum-similique', NULL, 'Et reiciendis quasi ullam. Est ipsum ut ea omnis quia aspernatur ut qui. Et ipsam sapiente omnis at nihil tempora a. Tenetur dolore optio consectetur.', '<p>Et quaerat ab animi ullam aut velit illum possimus. Et quia earum sit odio. Qui enim temporibus molestias est fuga. Nostrum et eum quod accusamus. Repudiandae nobis quas unde aut.</p><p>Perspiciatis at est qui illum assumenda quod. Omnis rerum quia consequuntur deserunt sed est corrupti. Ut officiis id et rerum sed voluptatem.</p><p>Consectetur sunt et alias. Odit dolorem corporis ab debitis et aut fugiat. Ullam rerum similique qui architecto.</p><p>Repellat magnam officiis recusandae qui ut sint accusamus sint. Dicta consectetur tempora reiciendis autem. Consequatur corporis eius repellat aut nam saepe consequatur. Ducimus fugiat eaque sint quo.</p><p>Atque aut corrupti sint tempore officiis est. Quia pariatur magni quia sit soluta earum asperiores. Dolorem non corporis beatae omnis. Provident blanditiis deleniti qui omnis. Voluptas autem ut dolores impedit.</p><p>Culpa aliquid esse harum enim nisi. Quibusdam itaque provident fuga aliquam quas laborum. Enim repellendus enim tempora quo. Iure praesentium exercitationem dolore ab sed velit.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(2, 1, 3, 'Reiciendis qui repellendus deleniti totam velit architecto.', 'possimus-ratione-numquam-qui-ut-ipsam', NULL, 'Cum id maiores ipsa tempora laudantium aspernatur. Iure voluptatem enim quisquam saepe. Odio ex alias aut pariatur ullam est sequi.', '<p>Temporibus eveniet dolores fugit repellendus. Et quia tenetur odio maxime dolorum nostrum facilis delectus. Et consequatur aut nisi sed pariatur nihil facilis dolor. Consequatur voluptate dolores mollitia fugiat.</p><p>Officia eius maiores et ut. Voluptatum et qui voluptatum eos. Qui necessitatibus qui dolore dolore voluptatem dignissimos ducimus. Voluptas et veritatis possimus iusto voluptates inventore ex recusandae. Aut est facilis quia neque velit est.</p><p>Debitis tempora voluptate voluptas accusantium sit quod eveniet. Quod pariatur dignissimos voluptas ad odio nihil. Aut cumque magnam assumenda qui repudiandae excepturi dolorem et. Consequatur eos quisquam nostrum et.</p><p>Cumque impedit et sed id ratione placeat. Deleniti et fugit totam eveniet amet. Repellendus provident tempora explicabo ut quasi.</p><p>Velit quasi deleniti sapiente maiores. Pariatur cumque saepe repellat quia. Qui voluptatem quod amet perferendis sed illo qui.</p><p>Assumenda rerum amet et natus dolor. Error sit harum adipisci beatae aut. Et quos beatae facilis. Magnam et dignissimos temporibus necessitatibus. Et dolorem et dicta aliquid.</p><p>Iste ad aliquam blanditiis labore. Ex ab aut qui maxime iusto eum qui voluptate. Ab tenetur qui explicabo doloribus illum.</p><p>Aut sunt reiciendis quia eum aut. In corporis iure omnis architecto. Repellat nemo mollitia laudantium beatae autem mollitia modi. Cumque distinctio dicta aliquid ut magni voluptatem.</p><p>Adipisci architecto inventore nulla officia aperiam. Accusantium dolores et quae ut assumenda est. Iste cumque asperiores repellat repudiandae omnis aut error.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(3, 1, 2, 'Minima non nihil autem quae corrupti aut nemo.', 'harum-voluptatibus-doloribus-et-dolor-eligendi-iure', NULL, 'Vitae earum non voluptatem. Deleniti voluptas dolore officiis rem. Repudiandae consequuntur illo in. Sed ratione qui tempore recusandae officiis reprehenderit blanditiis. Facilis ipsam laudantium reiciendis eos accusamus et.', '<p>Sunt ut ab aperiam fuga accusantium harum similique. Reprehenderit temporibus quis a voluptatum. Ipsam voluptas doloremque ea veniam sunt et.</p><p>Doloremque minus aspernatur corporis harum rerum. Architecto molestiae natus itaque aut in ullam.</p><p>Eaque dolore eveniet tempora dolorum. Quam exercitationem ipsam quod ratione. Maxime voluptate voluptatibus quo quod nisi consequatur. Amet placeat odio fuga amet enim.</p><p>Ut alias vero magni odio. Autem commodi est ea occaecati. Deleniti a aut possimus ipsum nam possimus.</p><p>Consectetur occaecati ut tempora omnis eum. Quidem voluptatem pariatur repellendus ut expedita. Tempora ipsam alias est a.</p><p>Nihil iste nam voluptas aliquid praesentium nulla asperiores. Modi ad accusantium voluptatem alias aperiam. Itaque eius aut dicta atque ipsum.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(4, 2, 1, 'At inventore beatae quis qui voluptas incidunt et recusandae dicta.', 'reprehenderit-neque-sapiente-aut-quasi-consequuntur-sint', NULL, 'Quas dolorem et sit repudiandae in quasi maiores. Rerum sit quae consequatur voluptatum et consequatur voluptatem. Et voluptatem nisi eum ut cumque qui.', '<p>Neque consequuntur autem consequatur ut adipisci. Molestiae voluptates doloribus aperiam quod. Et id labore quisquam omnis a dolore quod. Adipisci molestiae neque placeat perferendis. Sit est eos debitis labore.</p><p>Delectus in nihil cumque et quis quaerat commodi. Sit dignissimos commodi iusto eos. Sint ullam distinctio dolorem non. Exercitationem ut a minima minima.</p><p>Perferendis dolor et adipisci corporis. Quia quo consequuntur enim sed numquam. Deserunt voluptatum ab omnis incidunt est architecto.</p><p>Repellendus inventore sunt reiciendis non voluptate. Architecto commodi veritatis ad animi totam. In aut tempora et unde.</p><p>Officiis aperiam ex autem fugit. Dolor rerum necessitatibus dicta amet nam quis sapiente maxime. Ea eveniet similique et veniam eligendi ea vel.</p><p>Minima qui eos vel nam reprehenderit sint. Nesciunt nostrum animi molestias voluptas. Quia in earum nam iusto quidem consequatur molestiae.</p><p>Quos quo commodi et. Eos vero recusandae repellendus quos. Dolor repudiandae corrupti et doloribus dolor quae.</p><p>Inventore necessitatibus eligendi harum facilis. Dolorum nulla doloribus adipisci. Et occaecati ex dolore deleniti sunt non.</p><p>Omnis quia id quo a voluptatem. Ut et molestias aspernatur at magni libero praesentium. Molestiae temporibus illum praesentium sit sed est et natus. Quis consequuntur dolores est quo beatae illum sed.</p><p>Quaerat blanditiis delectus ipsum eum optio. Cupiditate et aut doloremque officiis non. Reprehenderit iste enim commodi. Deserunt explicabo voluptatum reprehenderit ex consequatur voluptatem.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(5, 2, 1, 'At voluptatem esse sit voluptatem nobis porro blanditiis.', 'tenetur-corporis-quibusdam-non', NULL, 'Eum dolorem eligendi consequatur nisi omnis aperiam aperiam. Eius modi accusantium voluptatibus fugit iste consectetur. Voluptas est eveniet officiis minima.', '<p>Quae alias dolor a dignissimos quia. Laboriosam qui laborum optio nihil quaerat harum. Praesentium ipsum cumque iure adipisci voluptatem in et. Qui voluptatem voluptates voluptas. Voluptatum aut autem quo repudiandae sunt esse.</p><p>Qui consequuntur aut itaque accusantium rerum sit eveniet in. Mollitia voluptatem fugiat necessitatibus rerum consequatur similique quo eius. Eos soluta perspiciatis ut pariatur libero.</p><p>Nam beatae sint odio inventore maiores quo. Autem sed deserunt praesentium assumenda sit. Ut cupiditate maiores mollitia atque libero quia et. Vero officiis numquam amet suscipit impedit dolorum.</p><p>Qui cumque quod sed nihil voluptatum molestias optio. Voluptatem magnam dolore voluptas. Voluptatem sunt corrupti optio.</p><p>Aut qui beatae sit dicta quidem totam. Dolores omnis sit odio veniam quam. Dolorem in quos error cum sequi tempore.</p><p>Sunt est quasi omnis dolor veritatis ipsam aut est. Non iusto dolorum minus placeat atque corrupti soluta. Et est dicta laborum natus voluptatem. Quod sint dolorem aut dolores delectus voluptatem. Et quisquam et molestias reiciendis.</p><p>Nemo eveniet modi qui debitis aliquid praesentium. Quia aperiam et voluptatibus eius. Non est nobis rerum quam eveniet aliquam laudantium. Eos est provident nesciunt error velit voluptatem. Et repudiandae ea blanditiis porro voluptatem.</p><p>Non et nemo nisi sit. At et est cupiditate est ipsam. Est delectus cumque ut. Deleniti quos sint sit et enim at.</p><p>Deserunt cupiditate ipsum et nemo. Hic labore sunt ipsam repudiandae et et. Quia et nihil voluptatem qui. Hic quia ipsa autem.</p><p>Quibusdam a magni ut voluptatem. Et suscipit recusandae omnis ipsum eaque. Magni ex amet quia non hic voluptatibus facere aut.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(6, 1, 3, 'Rerum cum est.', 'nihil-qui-praesentium-qui-modi-quia-quia-voluptatem', NULL, 'Tempora nulla aperiam qui ut voluptas tempore quos. Atque fugiat consequatur sint eos similique a et. Sed ut aut reiciendis quaerat voluptatem molestiae. Placeat sunt placeat saepe. Blanditiis est dolor consequuntur eos corporis praesentium.', '<p>Nihil non et nemo optio veritatis. Sed quaerat atque voluptas modi sit qui optio. Aperiam aperiam deleniti et non modi fuga.</p><p>Dignissimos unde molestiae sed sint saepe ut quia. Autem corrupti occaecati inventore non. Ut qui atque vitae tempora tempora maiores et.</p><p>Earum possimus est maxime facere. Voluptatem ut magnam sint voluptatem iure. Magnam enim et ex minima vel quaerat et. Doloribus qui nisi dolor optio voluptas adipisci qui.</p><p>Ut placeat et sed sunt. Beatae ducimus delectus provident amet modi doloribus nemo. Eius est rerum minima quia rem. Repellat consequuntur aspernatur dicta rerum omnis aut nisi.</p><p>Deserunt dignissimos beatae vel dignissimos. Hic reiciendis cum doloribus rerum quo amet expedita sed. Aut quod assumenda minima qui aspernatur rerum omnis totam.</p><p>Natus nostrum qui consequatur animi. Officia facilis ratione repudiandae rerum. Ut omnis modi repudiandae unde ut.</p><p>Nostrum nobis alias et odio in iusto. Omnis ex et veniam sit. Incidunt officiis corporis rerum omnis fuga. Pariatur et deleniti dolorem et nobis a voluptatem et.</p><p>Optio porro illo magni et similique ipsum non quod. Illo earum et corporis quos ullam iste impedit. Qui est velit aut veritatis. In inventore autem eum distinctio quibusdam minus.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(7, 1, 2, 'Molestiae distinctio deleniti atque fuga voluptas corrupti nesciunt earum.', 'optio-labore-laboriosam-ea-molestias-velit-qui', NULL, 'Neque et architecto cumque fuga in. Provident voluptatem aspernatur et veniam. Suscipit impedit officia dignissimos voluptate.', '<p>Quisquam repellendus ea labore rerum. A perferendis cum qui qui voluptatibus tenetur ad. Alias atque et ea veritatis quis labore.</p><p>Odio sit beatae distinctio dolores quaerat excepturi corporis id. Tempore sit eaque reprehenderit ducimus voluptatum sit. Maiores est sit blanditiis omnis animi molestiae. Aut dignissimos nulla assumenda odio inventore.</p><p>Et adipisci amet nulla illo autem atque. Error aut dolores laudantium provident illo ex sint.</p><p>Voluptas recusandae et voluptatibus et et exercitationem. Neque porro vel sunt soluta laboriosam ducimus atque.</p><p>Eos rerum nisi et distinctio id veritatis. Veniam possimus repellat harum doloribus ipsam. Deleniti harum sit recusandae dolorem repellat. Iste maxime rerum iste consectetur quasi praesentium et aut.</p><p>Esse repellendus alias in et. Natus minima totam hic tempora. Quod iusto impedit et.</p><p>Voluptate quis quidem nostrum quia. Dignissimos corrupti et impedit consequuntur et. Et totam non autem.</p><p>Et laboriosam voluptas quibusdam qui minima. Tenetur et modi excepturi eos. Dolorem omnis perspiciatis nam aut aut. Nemo labore nobis sed necessitatibus culpa accusamus quasi.</p><p>Nostrum repudiandae quia rerum exercitationem. Earum qui deleniti ratione aut in. Molestiae iste dolor quisquam est odit. Maiores consequuntur iure porro quidem quidem dolores voluptatem qui.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(8, 2, 2, 'Praesentium consequatur deserunt molestiae.', 'sed-et-quisquam-optio-rerum', NULL, 'Nemo dolorem exercitationem sequi dolore est ipsa. Aut eaque possimus libero maxime ducimus laborum. Placeat voluptatem nam omnis alias dolore. Corrupti modi inventore sed itaque cumque et et.', '<p>Consequuntur vel nesciunt similique culpa. Sed repudiandae culpa laudantium. Ipsum quae voluptatem quas dignissimos.</p><p>Laudantium eaque debitis quas doloremque. Explicabo adipisci quisquam ullam beatae enim. Molestiae optio porro voluptas dolores magni.</p><p>Et occaecati voluptatibus alias est. Quo assumenda consequuntur sint sit quod voluptas id. Eveniet qui natus ducimus praesentium. Vero vitae et eligendi autem libero delectus architecto.</p><p>Soluta sunt omnis ut aut ut. Et harum eius eius ad dignissimos laborum sint est. Ut deserunt architecto laudantium veniam blanditiis molestias.</p><p>Quam nostrum voluptatem quia. Cumque quo quia illo. Fugiat in ea iste doloremque nisi harum quis et.</p><p>Cum illum quod et. Maiores vel molestiae expedita voluptatem repellat fugiat saepe. Quo in dolorem voluptas quidem qui saepe voluptatem. Ipsa nobis dolorum aut commodi non consequatur.</p><p>Quod amet eaque delectus harum. Est debitis pariatur expedita beatae qui possimus vitae. Facere rerum voluptas qui non consequatur.</p><p>Nihil quo natus repudiandae impedit eveniet. Voluptatem sunt ratione alias et. Dicta magnam voluptatem tenetur dolor. Aliquid aliquam ipsa perspiciatis est vel rerum. Fuga nam est modi quia non.</p><p>Iusto consequatur deleniti rerum esse autem officia nostrum totam. Eveniet autem recusandae in et facilis voluptatum possimus. Natus aliquid quaerat dolor. Delectus et explicabo voluptate temporibus ad necessitatibus quisquam ut.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(9, 1, 3, 'Quod dolore voluptas labore autem et corrupti natus dolorem culpa.', 'sed-sit-saepe-sint-reprehenderit-sequi-non', NULL, 'Eveniet veniam quasi repellat sint illum praesentium esse sunt. Rerum voluptate occaecati vel beatae.', '<p>Similique architecto doloribus odit sed quisquam repudiandae. Vitae libero voluptatum sed voluptatem praesentium. Sit modi laudantium nisi numquam officia.</p><p>Aut ut ea eveniet nihil corrupti quidem. Qui iste quo occaecati reprehenderit deleniti. Voluptates nemo sunt quidem dolor doloremque. Ea id qui sint fugit alias officia. Sequi iste iure tenetur reiciendis temporibus provident.</p><p>Et sunt error vitae officiis facere. Vero natus sequi amet exercitationem dolorem et occaecati. Voluptatibus magni hic et voluptas distinctio id fugit tempora.</p><p>Velit enim quae aut impedit consequatur rem. Dolorem rerum consequatur tempore quia voluptas explicabo dolor inventore.</p><p>Ipsam dicta qui voluptatem animi. Perspiciatis et non exercitationem quibusdam accusamus natus aut quis. Ipsum sint est ad incidunt quidem.</p><p>Ipsa iste et sit temporibus odio dolorem ut. Itaque accusantium voluptas consequuntur. Quia rerum fuga consequatur inventore ut vitae quo quia.</p><p>Eveniet ut sint qui fugiat tempore voluptas ea. Dolorum aut amet quisquam molestiae occaecati. Similique consectetur eum accusantium soluta quidem odio est.</p><p>Quis quaerat ad porro ratione delectus quo est. Nostrum in ipsum hic dolorem nihil vel. Voluptatibus excepturi nesciunt excepturi voluptas ad est. Debitis tempora corporis consequuntur nesciunt architecto repudiandae quisquam. Et qui molestiae blanditiis ut earum.</p><p>Sint quae dignissimos molestiae illum. Veritatis dolorem ut voluptas inventore. Odio consequatur libero a.</p><p>Quia qui iure ipsa deleniti aut veritatis aut temporibus. Tenetur ea itaque voluptas cupiditate ea quam. Odio odit rerum temporibus magnam corrupti.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(10, 1, 2, 'At tenetur nesciunt quas quo soluta.', 'soluta-ex-perferendis-tempore-debitis-quo-soluta-enim', NULL, 'Modi error ea quibusdam distinctio iusto non. Odio consequuntur voluptas dicta quas itaque ea eum. Repellendus consectetur animi aspernatur tenetur. Aspernatur omnis illo molestiae sed corrupti fugiat nesciunt.', '<p>Aut laudantium est repellendus neque. Quia dolore nam vel est autem est. Aperiam perspiciatis doloribus dolores unde quis.</p><p>Voluptatem molestiae harum aliquam animi ut. Et omnis cum sapiente nesciunt. Ex cupiditate soluta et aut quia amet.</p><p>Dolorum ut quisquam sunt optio. Possimus fugiat nam est placeat eius facilis aperiam. Nulla assumenda odio minima qui. Voluptas dolores quia porro facilis perferendis perspiciatis eos. Modi quia sunt ea quas unde.</p><p>Dolorem ut et voluptatem labore soluta et perspiciatis. Natus dolor voluptas nihil placeat. A labore quo iure.</p><p>Aut qui soluta eos saepe est error illo. Doloremque sint voluptas necessitatibus porro eaque sit aut non. Alias praesentium quae molestias. Et voluptate exercitationem iste alias quaerat quia iusto.</p><p>Non quia id facilis quia libero. Enim ea molestias sequi ut odio laudantium sunt harum. Facere sit ut libero voluptas aut labore deserunt perferendis.</p><p>Id quidem eum praesentium delectus. Aut rerum rem ut. Nemo quidem ea pariatur impedit eos recusandae.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(11, 2, 3, 'Aut tempore expedita quibusdam enim vel commodi amet.', 'quae-quod-consequatur-id-et', NULL, 'Consequatur tempore laudantium natus mollitia tempora. Ad tenetur dignissimos porro odit aut pariatur. Expedita aspernatur voluptas eum velit dolor. Suscipit et autem ipsum culpa.', '<p>Doloribus qui quos perspiciatis aliquam quam. Id aut quos vero qui sed qui debitis. Non accusamus quos officiis.</p><p>Et fugit ipsam aut. Et qui non in aut aut. Optio in repellendus ut eum quae laboriosam aut tenetur. Velit ut ipsam facere ut et.</p><p>Esse natus omnis qui. Debitis deleniti doloribus quia quod. Voluptas dolorem assumenda voluptatem dicta et. Officiis sit aut aperiam nostrum sequi sed sint.</p><p>Qui ut amet ex alias sit. Quos dolorum quo sit. Libero est debitis est amet quo et distinctio.</p><p>Sit ullam et velit nihil. Facilis impedit est et ut tenetur.</p><p>Voluptatibus beatae repudiandae praesentium nihil quis fugit. Modi odio illo qui et et dolorem. Doloremque quaerat cumque in dicta voluptatibus eum incidunt nihil.</p><p>Omnis aut error fugiat id quia nihil. Laborum et corporis repellat quis. Totam amet explicabo placeat incidunt illo mollitia quia.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(12, 1, 2, 'Vel aut praesentium voluptatum.', 'delectus-aliquam-et-vel-sit-nihil-iure-et', NULL, 'Numquam qui iusto distinctio iusto. Sunt quis beatae et nihil quo minima. Ut nobis at beatae officiis molestiae et fuga. Voluptates quos ut qui cum praesentium voluptas.', '<p>Maxime impedit ex autem adipisci. Ut et molestiae sed inventore. Commodi non sunt quis dolor dolore dolorem. Consequatur animi vero omnis saepe sint sed.</p><p>Similique molestias eligendi officiis sint enim suscipit consequatur. Recusandae non similique accusantium et ea. Et accusantium cupiditate dolores reiciendis magnam nostrum.</p><p>Sed ipsum aut cum quo. Magnam quasi consequatur perspiciatis reprehenderit atque quas cumque. Nulla exercitationem quia deserunt non occaecati vitae commodi.</p><p>Harum voluptatem accusantium excepturi numquam qui consequatur necessitatibus. Tenetur aliquid quia dolore placeat mollitia consequuntur. Et qui incidunt explicabo non. Deleniti repellat doloribus odit voluptatem.</p><p>At aperiam perferendis et saepe. Nihil perspiciatis ad quos.</p><p>Laudantium esse dolore architecto consequatur. Occaecati vel ut quasi aliquam aut fugit. Eaque voluptas quia adipisci est.</p><p>Et fugiat ex repellendus recusandae numquam. Hic ipsam deserunt fuga sed voluptatem. Dolorem aliquam doloremque cum dignissimos iste. Aut reprehenderit voluptatibus dolorem in nisi cumque et. Ex tempore et quidem voluptatem.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(13, 1, 1, 'Debitis repellendus qui neque sunt.', 'rem-tenetur-animi-molestiae-et-repellat-corrupti-dignissimos', NULL, 'Dolor facilis quaerat voluptas ad aliquid ab. Et quo corrupti mollitia dolorem. Assumenda dolorem optio animi quaerat.', '<p>Molestias quia non quam sed id voluptatem. Minima aperiam est corrupti placeat quia laboriosam. Nulla adipisci minus ex similique numquam.</p><p>Vel error nihil error accusamus fuga nobis. Vitae nobis est ab a. Sapiente voluptatum perferendis aut iure nihil. Voluptate eum optio alias incidunt fugit illum.</p><p>Dolor omnis aliquid necessitatibus. Reiciendis facere eum incidunt quas ut soluta dolorem dolorem. Sed dolorem voluptatem et. Officia aut unde possimus laboriosam totam doloribus aliquam cumque.</p><p>Quisquam quia sit fuga hic sapiente mollitia. Laboriosam esse non aut iste mollitia. Distinctio modi repellat eos corporis est repudiandae. Sit facere velit pariatur enim qui recusandae eum.</p><p>Qui porro vitae inventore eos deserunt eum. Et molestiae assumenda vero est. Ut vel facilis sed consequatur quasi eum.</p><p>Rem ut ea in voluptatem aliquam qui debitis deleniti. Reprehenderit culpa quae laboriosam eos itaque porro est nisi. Officiis sit possimus ipsam minus.</p><p>Perspiciatis dolore rerum sequi sunt quis. Esse autem ut tempore ut ipsa. Suscipit rerum voluptatem et necessitatibus at porro aut. Enim occaecati minus praesentium eos animi soluta debitis.</p><p>Deserunt perspiciatis consequatur fugiat corrupti rerum pariatur. Aut vel vel voluptatem ad in. Quis culpa minima blanditiis ab sapiente quo quo est.</p><p>Sunt iure aut et nobis. Eum et expedita eos. Labore molestiae explicabo autem illum.</p><p>Totam eos animi et voluptate ab odit quia. Repellat voluptatem ipsum quis dolorum aut deserunt rem. Dolor asperiores dolores qui.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(14, 2, 2, 'Voluptatum non perferendis.', 'atque-nihil-omnis-explicabo', NULL, 'Neque occaecati laudantium quas. Aut placeat esse voluptatum doloribus possimus illum laboriosam. Porro repellat dolor iusto libero ex dicta fugit. Quasi quaerat et atque omnis porro possimus aliquid. Dolor quisquam nulla est perspiciatis eveniet.', '<p>Facere minus officia mollitia corporis temporibus. Possimus aperiam quaerat eum voluptatum atque reprehenderit mollitia. Nesciunt pariatur sapiente sequi itaque. Perferendis sint hic inventore beatae in.</p><p>Aspernatur voluptas porro alias sed quaerat voluptatem. Quis ratione ut voluptas. Et iusto suscipit a sapiente. Nihil tempore debitis ut excepturi. Et et voluptatibus aut sint beatae.</p><p>Autem cupiditate officiis omnis quas. Et error corporis nihil deserunt illo. Aut deleniti ipsa provident quia.</p><p>Occaecati velit eaque dicta tempore molestiae voluptatibus. Dolores veniam repellendus vero commodi dicta deleniti. Quaerat saepe officia reiciendis numquam ea veritatis.</p><p>Velit corrupti enim non culpa ea est. Hic rem animi voluptatum provident maiores veritatis mollitia. Perspiciatis et facere dolore ab. Et voluptas voluptatibus magnam dolores quo.</p><p>Aut distinctio et nihil velit similique maiores cum recusandae. Nostrum cupiditate quisquam veniam numquam. Consequatur adipisci consequatur et autem accusantium cum. Iure ut sunt earum sed.</p><p>Voluptatibus quod illum illum. Sit eum dignissimos minima quos quos. Nihil alias deleniti soluta qui non voluptatem. Ut est quaerat et in eos quo.</p><p>Voluptas eveniet quia soluta corporis est debitis. Consectetur distinctio quia illum alias illo. Illo quisquam rerum beatae amet sequi praesentium aut.</p><p>Saepe ut sunt et officiis provident. Incidunt reiciendis quos voluptatem in magnam est aliquam. Excepturi eius dolorum necessitatibus animi qui debitis.</p><p>Provident odit quibusdam reprehenderit. Porro saepe placeat voluptates repudiandae velit et aut. Maiores voluptas aut corporis ad dolores natus rerum.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(15, 1, 3, 'Illum illum mollitia rem.', 'voluptatibus-ut-et-inventore-molestiae-blanditiis-illo-voluptatem', NULL, 'Voluptates excepturi est quo beatae. Deleniti eos a modi id velit eveniet consectetur. Delectus dolores impedit quia optio.', '<p>Illo odit at non. Et est ratione est culpa libero quibusdam nisi. Sunt ea suscipit vel ut omnis.</p><p>Corporis accusamus saepe quos non. Autem sit nihil aspernatur sequi quod animi facilis. Maxime ipsam enim delectus minus quod inventore qui rerum.</p><p>Quia ratione nesciunt quos sapiente velit tempora id. Ipsa vel facere voluptatibus velit. Ut quisquam non consequatur quasi voluptate.</p><p>Quidem nihil sunt id sapiente. Autem ab rerum cupiditate voluptates eius repudiandae. Ipsa dolorem aut beatae laborum fuga sunt nulla. Et dolorem et quam odit.</p><p>Placeat libero quae quia est dolor totam. Quaerat quia impedit et debitis dolorum. Id fugiat laboriosam et consequatur rerum at.</p><p>Iure voluptatem tempore enim quae et. Odio beatae consequatur facere deserunt rerum vel. Ipsam sunt fugiat consequuntur id. Nihil dolorem ab et minima dignissimos quis.</p><p>Perspiciatis placeat eius ab enim ducimus dolor. Mollitia quia ab et sint. Eos optio voluptatem non dolorem blanditiis et. Veniam omnis quo consequatur voluptas dolore.</p><p>Eum enim consectetur quia tempora quis in rerum. Omnis culpa officiis rerum soluta vero. Enim voluptatem dolorem ullam ut.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(16, 1, 3, 'Aliquam natus.', 'iure-rerum-nulla-odit-veritatis', NULL, 'Ipsum ullam nulla laboriosam atque ad ut. Sint tempora temporibus est et quasi blanditiis quae est. Autem et temporibus sint aut ut dicta. Beatae fuga eligendi aliquid non nihil quisquam mollitia adipisci.', '<p>Nemo possimus vitae exercitationem harum facilis sit. Error non magni tempora consequatur sit necessitatibus nihil ut.</p><p>Non corrupti necessitatibus molestiae explicabo est. Eligendi omnis excepturi eum qui iste. Doloremque ducimus sunt ex aut dolores rerum ea.</p><p>Quae reprehenderit ducimus veniam vero aut debitis tenetur alias. Culpa animi qui aut tempora consequatur.</p><p>Itaque voluptate dignissimos ea. Est debitis aut et facilis dolore quidem commodi. Eum ut sint ut dolorum quasi nobis eveniet numquam. Nihil reiciendis pariatur enim sunt doloremque.</p><p>Qui corrupti atque laboriosam perspiciatis necessitatibus molestiae. Nam optio nihil aut eum soluta accusantium dolores. Omnis est sit fuga eum cupiditate. Iste rerum voluptatem nesciunt libero illo recusandae eius.</p><p>Et sit deserunt hic veritatis necessitatibus voluptatem. Quaerat illo amet similique libero. Et doloremque ut tempore vitae repellendus. Ut qui aut et animi.</p><p>Voluptate blanditiis culpa pariatur et eum commodi soluta. Tempora sunt totam expedita saepe. Sint voluptas ipsum nihil eaque.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(17, 2, 3, 'Enim et pariatur ducimus officia ab est illum.', 'tempore-odit-occaecati-cumque-voluptate-explicabo-consequuntur', NULL, 'Laborum eius nemo dolores odit fuga. Occaecati doloribus autem aperiam. Deleniti voluptatum soluta suscipit atque architecto ducimus ad.', '<p>Consectetur inventore aliquid veniam accusantium quas et quam eveniet. Neque quia reprehenderit nam rem. Dolores explicabo minus molestiae commodi sunt repellendus laboriosam.</p><p>Natus commodi aut sit. Dolor facere asperiores veniam. Cupiditate natus eaque molestiae. Quas veniam ipsam consequatur sit porro dolor. Rerum inventore et doloremque eius quia in.</p><p>Iure voluptatem similique mollitia et a aliquid enim. Beatae qui voluptas et soluta. Repudiandae fuga inventore maxime exercitationem assumenda. Rem accusantium sapiente autem dignissimos et facilis.</p><p>Expedita deserunt neque amet mollitia quibusdam et magni totam. Et est unde illo praesentium. In nobis qui officia accusantium dolor eum aut. Consequatur architecto dicta sapiente delectus.</p><p>Quisquam officiis qui voluptatem accusantium id animi. Perferendis et explicabo dolor ut enim. Veniam recusandae praesentium possimus deleniti praesentium. Aspernatur voluptates quae autem soluta adipisci odio laudantium.</p><p>Deleniti sunt et vitae sit. Pariatur recusandae voluptas accusamus nihil nostrum facere autem. Aut architecto mollitia atque ut laboriosam et et rerum.</p><p>Sequi deleniti veritatis maxime aut. Sit sunt autem deserunt ea laboriosam necessitatibus. Placeat ad at qui maiores cumque magnam. Qui ex qui omnis corrupti voluptatem autem. Laborum qui deserunt non qui.</p><p>Ullam delectus deserunt iure similique voluptates qui dolorum aut. Laudantium autem sunt molestiae voluptas ab tempore voluptas non. Non fugiat dolorum incidunt aut hic quidem.</p><p>In quam quia magnam et voluptas sapiente aliquid. Nam repudiandae soluta sit mollitia doloremque laborum. Consectetur asperiores unde voluptatem voluptas porro alias dolorem.</p><p>Velit voluptas voluptas voluptate est voluptatem incidunt tempore et. Accusantium eos sed deserunt et doloribus aliquam.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(18, 2, 2, 'Quo fugit rerum sed consectetur quo.', 'recusandae-sit-veniam-ut-sit-eum', NULL, 'Animi qui sequi rem autem et atque eum. Explicabo occaecati distinctio laborum eligendi totam voluptates. Necessitatibus illum nisi consequatur rerum ut numquam eos.', '<p>Qui beatae quia esse reprehenderit sint eligendi. Eveniet temporibus ut repellat et cupiditate quae.</p><p>Voluptatem sequi doloribus incidunt quibusdam ipsam magni. Facere sapiente voluptas tempore odit soluta consequuntur ut voluptatum. Eaque quas enim voluptas cupiditate facilis.</p><p>In quas quia voluptatibus voluptates officia quam dolor. Minus non magnam enim vitae ipsa. Soluta molestiae voluptas in exercitationem ut eum.</p><p>Eum quia voluptas porro voluptatem voluptatem laboriosam veritatis maiores. Vero ipsum maxime quisquam ex excepturi et doloremque. In aspernatur nisi architecto qui dolorem ea dolores.</p><p>Ab explicabo reprehenderit quis quasi earum dolor fugit. Nesciunt eos quo recusandae reprehenderit quae quo inventore. Harum rem ducimus nisi sint aut tempore. Doloremque aut a iste harum expedita dolore saepe. Nisi non nihil ducimus consequatur beatae.</p><p>Magnam labore nobis eos rem maiores quo qui facere. Enim vel reiciendis labore quam. Et assumenda deleniti voluptatem itaque ea aspernatur et. Sed maiores dolorem aut earum laudantium quo esse.</p><p>Delectus quae mollitia nihil error quis. Eius rerum id sunt quae ea facilis. Sequi rerum sequi sed ipsa maiores.</p><p>Saepe voluptatem non nemo magnam quaerat. Et asperiores nisi dolores deleniti vero. Quisquam unde voluptates et iusto. Deserunt enim eos et a.</p><p>Quo harum dignissimos beatae fugiat. Voluptas nemo temporibus ratione tenetur consectetur recusandae aspernatur. Sapiente est iure voluptas qui aut. Id neque sed et dolores id qui impedit quos.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(19, 1, 3, 'Et neque sit laborum tenetur cupiditate.', 'aliquam-mollitia-et-perferendis-ea-ut-eos-quos-magni', NULL, 'Dolor illo molestias autem id blanditiis esse labore dicta. Esse est blanditiis doloremque. Rerum nesciunt sint non non corrupti non labore dolore. Corporis qui ducimus temporibus ea maiores facere voluptate.', '<p>Magni itaque doloremque placeat repellat. Sint quidem quisquam nesciunt ut odio et labore. Illo officia sint occaecati laudantium autem quia.</p><p>Nobis amet occaecati aut est voluptatem vitae beatae. Sunt perferendis nesciunt sit placeat. Ad iure ut sed dicta aut debitis.</p><p>Ea natus eligendi asperiores ut facilis. Libero consequatur aliquid adipisci qui in. Quia facere nisi molestiae ut dolore veniam. Eius non qui consectetur vel iste maxime quae.</p><p>Repudiandae esse doloremque dolorem repudiandae qui vero repellendus maxime. Exercitationem at nostrum totam consectetur accusantium non doloremque cupiditate. Voluptas amet possimus dolore officiis iste dicta non. Aspernatur id ea libero reprehenderit amet.</p><p>Facere voluptas qui dolorem dolores. Eius libero quae quia aut cum odio. Ut ut est sit sed deserunt nam. Occaecati tempore magni non corporis quis et doloribus.</p><p>Culpa voluptatem fugiat et facilis ipsum est dolor quae. Aut at ab voluptas minima accusamus. Quam vitae cum ipsam molestiae numquam ratione. Autem aperiam temporibus eaque sequi recusandae assumenda vero exercitationem.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(20, 2, 3, 'Aut quo odit.', 'quisquam-sint-et-et-eaque-inventore-explicabo', NULL, 'Aut in dolor tempore at doloremque distinctio. Magnam quis ducimus et aliquam quam qui minus adipisci.', '<p>Voluptatum totam recusandae nihil iure minus ab voluptatem vel. Quo quam sed sint tempora. Hic rerum non iure illo et. Explicabo molestias doloribus ut sit ea doloremque reprehenderit. Velit id vel sed voluptatibus esse.</p><p>Nihil soluta nihil animi assumenda alias pariatur impedit. Hic ipsa recusandae cumque magnam enim sed.</p><p>Eius labore neque autem tempore nobis accusamus. Dolor suscipit deleniti dolore earum. Provident rem omnis vitae delectus. Natus voluptatem aliquam eum nostrum odio.</p><p>Magnam et distinctio dolore aut consectetur quidem. Eaque praesentium sed nobis veniam autem. Aspernatur corporis totam nihil quo et.</p><p>Quibusdam ipsum molestias assumenda voluptatem. Tempore et est odio. Cumque vero maiores quo aperiam. Atque odit nemo rerum ducimus similique vitae et molestiae.</p><p>Quis odit nihil sunt perferendis. Rerum eos accusantium rem cupiditate. Doloremque qui a sequi delectus nisi cupiditate reprehenderit. Occaecati voluptatum et non sit voluptatem nemo.</p>', NULL, '2023-11-23 09:20:35', '2023-11-23 09:20:35'),
(21, 1, 1, 'Judul Post Baru', 'judul-post-baru', 'post-images/xjxHTkXIewf5EYyHkJstNkXfAwIKK59bpqUJDxcZ.jpg', 'Ini adalah judul Post Baru', '<div>Ini adalah judul Post Baru</div>', NULL, '2023-11-23 09:31:03', '2023-11-23 09:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Muhamad Rivan Sahronie', 'rivan', 'rivan@gmail.com', '$2y$10$Rz6/TobZsSO2Rian2.nReuZxU8RgZfbfid9P4Rp7zLchH6ua7m73C', NULL, NULL, '2023-11-23 09:20:34', '2023-11-23 09:20:34', 1),
(2, 'Yuliana Maryati S.T.', 'zpertiwi', 'laksita.cinthia@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-11-23 09:20:35', '47NAEDYm3ErMOpxaqBlVxU6B9Azv0LYfh1nr8n5AjwMSVRAsGlFGN7u632un', '2023-11-23 09:20:35', '2023-11-23 09:20:35', 0),
(3, 'Fathonah Maryati', 'permata.banawa', 'saiful15@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-11-23 09:20:35', 'myFaVzA3d0', '2023-11-23 09:20:35', '2023-11-23 09:20:35', 0),
(4, 'Harimurti Halim', 'galar94', 'irma.fujiati@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-11-23 09:20:35', 'Y9kwapCpL2', '2023-11-23 09:20:35', '2023-11-23 09:20:35', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
