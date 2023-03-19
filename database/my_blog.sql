-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Mar 2023 pada 10.07
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(2, 'Web Design', 'web-design', '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(3, 'Personal', 'personal', '2023-01-21 10:40:45', '2023-01-21 10:40:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_23_152028_create_posts_table', 1),
(6, '2022_10_24_122323_create_categories_table', 1),
(7, '2022_10_31_005121_add_is_admin_to_users_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
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
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Consectetur officiis sit magni tempora eligendi praesentium.', 'maxime-voluptatibus-saepe-ut-rerum-et-animi', NULL, 'Hic recusandae consequatur nobis est error sit laborum. Error voluptas et error aperiam similique. Nihil voluptatem id explicabo numquam maxime ut delectus. Quaerat ut in blanditiis eaque sit et ut.', '<p>Et ab voluptas aut fugiat. Praesentium repellendus et et quasi. Deleniti assumenda magnam sit placeat eos magni.</p><p>Aut sed ab neque culpa. Atque non quod cumque id corporis. Illum aspernatur praesentium ut qui sint possimus perspiciatis.</p><p>Delectus quia quam assumenda cupiditate ex itaque. Aspernatur culpa aut et non. Dolorem ipsam expedita perferendis quaerat sed itaque.</p><p>Nihil eum voluptas cupiditate laboriosam adipisci at laboriosam. Amet voluptatibus molestiae sed voluptatem cupiditate et necessitatibus. Alias eligendi aliquid voluptas.</p><p>Illum esse quis et in ipsam. Et quo deserunt accusantium. Ea earum optio tempora veniam fugit quas molestiae. Dolor nemo quod omnis soluta et a. Iure autem impedit dolores maxime in sapiente aut.</p><p>Autem odio cum molestiae dicta nihil. Nulla et quia ratione illo. Est porro pariatur tenetur incidunt a a nihil quae. Atque illo rerum molestiae ut aliquam omnis quidem aut.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(2, 2, 2, 'Nostrum eius nulla expedita inventore sed.', 'et-distinctio-quaerat-cumque-voluptatem-aut-odit', NULL, 'Perspiciatis consequatur delectus voluptas repellat rerum incidunt sed. Enim autem quis tenetur quo qui. Voluptas natus non doloribus minus repudiandae harum.', '<p>Aut reiciendis impedit voluptas officiis. Facere iure non quae tempora voluptas. Laborum debitis repellat et laboriosam similique. Officiis suscipit et rem qui corporis mollitia provident. Enim quo in at quos maiores.</p><p>Optio blanditiis omnis aut nihil nihil. Quasi in perferendis consequatur perspiciatis enim cum quia possimus. Sint similique voluptas autem officia.</p><p>Aut nulla ut id et. Sed repellendus consequatur vel eligendi et modi. Nulla quisquam dolores reiciendis autem. Sequi veritatis voluptatem beatae iusto.</p><p>Veritatis error possimus modi consequuntur rerum odio veniam. Iure aut soluta iste in ipsum ipsam dolorum. Aut sit iure ut expedita ut reprehenderit repellendus omnis.</p><p>Non accusamus fugit qui sint quos cum ut. Qui enim tempore eaque sed beatae. Ab deserunt et eos. Consequatur ad similique inventore debitis.</p><p>Unde hic quis quia in odit eum nesciunt. Iure nostrum eum et impedit ducimus vero dolor. Temporibus tempore quo perspiciatis non voluptatem est voluptatem. Sequi soluta sed pariatur soluta cum et.</p><p>Quia velit tempore impedit occaecati illum. Qui eos temporibus sunt non et mollitia. Porro iste modi et et.</p><p>Ut qui illum sit et. Nihil nostrum et voluptates doloremque sed deserunt autem. Sint debitis laudantium a earum illo a. Non aut dolorum quia.</p><p>Quos iste magni accusantium. Sint deserunt ducimus dolorem eum et esse culpa. Blanditiis quia soluta reprehenderit eius assumenda aut voluptatum omnis. Eligendi debitis modi asperiores delectus atque eius.</p><p>Iusto omnis sint repudiandae iusto minima enim voluptas. Aut ipsum distinctio soluta ut qui laboriosam possimus.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(3, 2, 1, 'Suscipit voluptas repellendus voluptas quae id.', 'at-sapiente-velit-totam-et-quo-in-assumenda', NULL, 'Iure molestiae laudantium beatae nam aperiam. Expedita molestiae et ut magni at qui ut.', '<p>Perspiciatis tempore labore sit qui earum. Ad officia est temporibus ea eveniet. Doloremque dolore vel doloremque et sed sit. Rem nulla fugit ut sit.</p><p>Neque quisquam ratione quod quaerat doloribus eos possimus eum. Possimus saepe quo doloremque pariatur. Similique adipisci ut omnis sint minima enim.</p><p>Voluptatem temporibus aut odio id sunt voluptatem. Et sint odio ut veritatis dolorem asperiores. Fugit autem voluptates temporibus sed cumque et.</p><p>Dolor autem illum incidunt ipsam enim eum beatae. Occaecati nemo deserunt natus eligendi amet voluptatem. Voluptatem qui ut minima alias qui.</p><p>Non ut est iste architecto. Magnam repellendus praesentium ut itaque aut. Dicta quia aut laboriosam est.</p><p>Rerum voluptas enim eius nam fuga nam. Quia porro ut officia unde earum quo quibusdam. Quaerat sit ut omnis est sit numquam fuga neque.</p><p>Eos veritatis quibusdam veniam unde corrupti voluptatem fugit facere. Quam est repellat harum labore soluta. Repellendus et laboriosam beatae sint ipsam nihil quia. Ex illo in sunt molestiae soluta aut voluptates. Neque quo totam aut magnam asperiores pariatur.</p><p>Architecto nemo sint consectetur voluptas aut. Incidunt nulla laudantium iste rerum dolor ut repudiandae.</p><p>Quas sapiente dolore ut dolores enim aperiam facilis. Molestiae aliquid voluptatibus ad delectus error ut.</p><p>Rem eum suscipit unde dolorum et totam vero. Non impedit nobis eos voluptas quo. Et repellat repellendus qui consequuntur illum. Itaque est est saepe odio modi.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(4, 2, 1, 'Suscipit eaque ducimus nesciunt cumque.', 'explicabo-recusandae-aut-assumenda-quibusdam-qui-quia', NULL, 'Numquam quo odit harum fugit id. Reiciendis placeat nemo quam nihil hic voluptas. Ut dicta quo natus. Minima nobis qui adipisci.', '<p>Id repellat mollitia quo et at quisquam id sunt. Sunt provident ipsum dolorem ut nam iste reiciendis consectetur.</p><p>Voluptas tempore quia iure est recusandae et. Magni harum quam nisi ipsum enim perspiciatis fugiat. Non rem dolore quidem et et eum non.</p><p>Nemo similique debitis vitae. Qui ea ducimus enim nostrum. Accusamus cumque nihil at alias qui omnis.</p><p>Praesentium dolor similique porro repellat magni. Magni quae quae sapiente deserunt ut. Autem commodi harum amet dolor impedit.</p><p>Illo autem ea consectetur sint voluptas ipsam magnam. Beatae eum reprehenderit quis quia delectus temporibus nihil. Quo harum magnam quis ut.</p><p>Recusandae et doloremque veritatis repellendus dolores officiis ex. Distinctio sit dolores sit rerum. Nulla neque nulla in est. Et consectetur et mollitia ad qui at qui distinctio. Sed vero optio et nam minima et asperiores.</p><p>Velit quis excepturi illum ea nemo est. Enim libero qui quia error ratione doloribus in. Error dolorem eos optio quasi quae. Velit asperiores iusto odio.</p><p>Laboriosam dolorem aut pariatur dolor vel mollitia nihil. Et dolorem et dolores excepturi asperiores adipisci similique officiis. Odio earum ab quas. Amet rerum non quia est labore rerum reiciendis.</p><p>Incidunt sint voluptatem corporis omnis. Dolor blanditiis soluta rem id vel eos. Dolores amet debitis voluptatem asperiores dignissimos.</p><p>Blanditiis rerum ut ut aspernatur et ut repellendus. Dolor saepe laudantium hic recusandae nihil. Veniam minima similique assumenda rerum corrupti deserunt quaerat.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(5, 1, 2, 'Quis ea ut minima omnis.', 'ut-quis-laudantium-cupiditate-voluptas-quia-ut', NULL, 'Consectetur magnam asperiores ad vitae. Dolorem ea non sed debitis asperiores a voluptas qui. Sint culpa provident error. Et et est expedita sint sed cupiditate officiis.', '<p>Rerum dolorum odio assumenda recusandae voluptas. Distinctio voluptatibus magnam ducimus. Totam eveniet aut dolore est sapiente. Aut molestias suscipit vero ad iure omnis possimus.</p><p>Natus ipsam ut pariatur eum ut eum aperiam. Voluptatum temporibus necessitatibus deserunt dolorem nostrum veritatis. Ipsam eaque sapiente qui necessitatibus. Nisi veniam amet saepe fugit pariatur. Eligendi rerum nulla alias sint.</p><p>Alias rerum iusto ut porro non ut. Possimus magnam deleniti doloremque est. Excepturi eos eaque minima ut.</p><p>Quia natus illo quae et. Dolorem est iure numquam sit. Magnam neque veritatis ut magnam magnam maxime nobis.</p><p>Veniam quidem aut sint et consequuntur. Ducimus sunt fuga est voluptatum. Facere recusandae sequi enim laborum.</p><p>Aut iste sapiente laboriosam cum. Quisquam earum voluptate nulla ex in voluptatum suscipit nostrum.</p><p>Omnis non dolorum aut corporis accusamus. Qui culpa adipisci consequatur possimus voluptatem omnis provident eveniet. Rerum nam necessitatibus nemo.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(6, 1, 2, 'Doloremque at nam.', 'tempore-optio-libero-et-velit-rem-qui', NULL, 'Reiciendis iure veniam qui iusto exercitationem dolorem consequatur. Nobis provident tempora odio animi sunt vero quam ipsam. Perferendis in voluptatem aut quia non reiciendis et. Id cum illo similique.', '<p>Commodi aut vel architecto consequatur facilis. Ut possimus dolor qui alias beatae. Aliquam autem ullam aut corporis. Iure ex sed vero beatae sunt ratione ea.</p><p>Aut voluptatem ipsum consequatur tempore pariatur sunt. Qui repudiandae omnis est velit. Saepe ducimus sit libero voluptas eaque magni. Dignissimos aliquid illo dolorem maxime possimus sequi doloribus. Ipsum temporibus adipisci quam quasi id rerum et.</p><p>Asperiores qui veritatis earum rerum. Nisi accusamus sit labore. Quod eum tempore animi sit voluptate veritatis.</p><p>Asperiores vel tempore sed omnis doloremque ut quia. Itaque voluptatum consequatur sit sit. Est eum assumenda numquam saepe voluptas harum illo blanditiis. Et est officia ea beatae sequi minus minima quae.</p><p>Dolorem totam rem quas eaque omnis quia ullam. Qui quaerat ut et ut minima. Quia est est omnis eos.</p><p>Minima nam consectetur sit consequatur rerum eveniet. Quis aut dolor quod beatae ut.</p><p>Nihil molestiae est deleniti nam perspiciatis explicabo ut ducimus. Sed quia distinctio voluptas. Deserunt quae consequatur quia eum. Et sed dicta laboriosam omnis.</p><p>Non at ea repudiandae odit. Porro ut sint debitis tempora soluta dolorum natus ea. Nulla quisquam blanditiis et quibusdam.</p><p>Animi alias omnis aspernatur delectus reiciendis rem dolores facere. Repudiandae et quam omnis atque quis ipsa id.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(7, 2, 2, 'Non autem fugiat.', 'quia-quasi-vel-inventore-nesciunt-qui', NULL, 'Et laborum enim est dolores. Autem quis sit officia voluptatibus sapiente. Nisi sit voluptas optio et.', '<p>Minima natus eveniet et non laudantium ea error illo. Laboriosam doloremque non blanditiis incidunt voluptas fugit. Iste inventore dolorum nesciunt enim ad reiciendis libero.</p><p>Praesentium beatae eaque distinctio qui consequuntur aut et quis. Dolore laboriosam qui est sit omnis praesentium doloremque et.</p><p>Sunt at nam dolor molestias beatae nihil voluptatum. Iure nihil doloremque accusamus ullam nesciunt labore nam ipsa. In soluta quos qui culpa enim quod sunt dolorem. Est iste necessitatibus quae nesciunt reiciendis omnis natus.</p><p>Odio assumenda recusandae quia consequatur et accusamus. Quia voluptatem impedit est facilis saepe. Est aut cumque voluptatem veniam beatae maiores. Unde voluptates totam repellendus delectus.</p><p>Vel maxime quaerat ex. Tenetur ut suscipit ut doloremque atque est. Voluptas quo possimus ut laboriosam neque quasi delectus. Ratione non vero aut illo doloremque perferendis.</p><p>Molestias necessitatibus harum libero quia reprehenderit. Repellendus sint voluptatem maiores est. Nobis et maxime est repellendus est deserunt molestias.</p><p>Voluptatem et sint non natus voluptatem consequatur delectus cumque. Voluptatem ea nostrum consequuntur rerum. Laborum vero quas temporibus qui unde quae minima.</p><p>Odio omnis eaque tempora suscipit. Esse sit at autem nobis. Ab consequatur deserunt libero minus facilis minima.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(8, 1, 2, 'Id aperiam occaecati sit ex aut hic deserunt possimus.', 'non-hic-sunt-id', NULL, 'Est magnam numquam voluptatem voluptatem eaque et. Ut ex voluptas est autem et. Id vel nemo quibusdam dolores sunt ex perferendis. Aut voluptas dolore quas eum dolor beatae impedit.', '<p>Iure quis quis atque nobis inventore aut ut. Qui aut maiores non molestiae pariatur eaque nam et. Nobis dolorem debitis corrupti vitae qui quis porro.</p><p>Dicta distinctio quis numquam quaerat sunt nulla ea. Ut eos maxime in id. Quod facere quod ratione libero ut.</p><p>Quia non neque optio sed alias velit nobis aspernatur. Tempore quod aut sed voluptas enim modi unde at. Odit ex aut modi quos. Ut quod omnis occaecati nam perferendis aut. Qui aut eum natus reprehenderit.</p><p>Voluptas ipsa aut animi. Aliquam sunt ut quibusdam dolores deleniti earum. Est tempora facere quod eos accusamus. Odio earum est nemo sed sunt exercitationem dolorem.</p><p>Doloremque dolores sed labore sint est. Aut et molestiae optio voluptate. Tenetur quasi ea expedita vel.</p><p>Consequuntur tempora omnis dolorem distinctio omnis enim officia. Voluptatum id non optio beatae iure nesciunt occaecati. Minus animi ab perferendis in quod et exercitationem sapiente.</p><p>Temporibus ut quia ut consequatur dolores enim. Maxime est sed itaque. Magnam beatae repellat molestiae molestias illum quo. Mollitia officiis molestiae distinctio ipsam maiores qui aut.</p><p>A qui id magnam. Aspernatur eum qui autem quos culpa exercitationem est ut. Corrupti praesentium fuga id accusamus eveniet ipsam ut fugiat.</p><p>Eligendi qui laborum velit fugiat perspiciatis voluptatum. Corrupti eum dolor hic est voluptatem magni perferendis. Est sed ea repudiandae molestiae officia blanditiis perspiciatis.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(9, 2, 1, 'Fugiat rerum neque numquam facilis inventore qui.', 'facilis-culpa-dolor-vel-tempore-repellendus-numquam', NULL, 'Deleniti itaque minus aliquam. Eum sapiente reprehenderit ut sit sint. Ut vitae ea vel. Quo veritatis earum vero sint.', '<p>Quo saepe sequi autem blanditiis. Architecto distinctio ipsum corporis. Atque aliquid ad aut temporibus et fugiat hic. Voluptatem eum fugiat odio aliquam voluptatem minus. Modi culpa consequatur sunt sint.</p><p>Voluptates eius quis magni magni vero aut. Incidunt recusandae occaecati tempora hic quas autem a debitis. Recusandae est iure qui nemo.</p><p>Aliquid maxime iure mollitia totam aspernatur. Beatae et alias voluptas eius rem sapiente.</p><p>Pariatur animi totam repellat est ad qui voluptatibus. Nihil et id consectetur. In numquam et nulla aut tempore.</p><p>Aliquam consequatur voluptate culpa beatae nobis. Recusandae eos consectetur officiis recusandae. Consequatur corrupti cumque earum non et ducimus qui. Exercitationem voluptatem est quod odio.</p><p>Provident blanditiis quos aut aspernatur ut. Quasi optio veritatis molestiae provident.</p><p>Labore numquam mollitia neque explicabo eum vel. Illo porro quia saepe dolor fugit accusamus occaecati.</p><p>Ex omnis dicta nobis sit pariatur voluptatum. Illo recusandae ex placeat consectetur delectus omnis et. Et qui error quia corrupti sint. Nobis rerum animi sit voluptatem id assumenda non nihil.</p><p>Incidunt dolorum dolorem officiis aut molestiae. Explicabo quae quis vitae ducimus iusto sed. Soluta velit ducimus voluptatem pariatur laborum.</p><p>Saepe sunt inventore voluptatem temporibus dolor aspernatur occaecati. Enim reprehenderit cupiditate consectetur adipisci.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(10, 2, 2, 'Iure dignissimos consequatur et cumque aliquid earum.', 'cupiditate-eius-deserunt-ex-molestiae-molestiae-porro', NULL, 'Fugit quia quo est doloremque velit perferendis nesciunt dicta. Harum id non deleniti excepturi voluptas et nostrum. Error quia beatae eos quia eos voluptatem.', '<p>Reprehenderit vel aperiam vel et soluta. Laudantium aut qui a rerum blanditiis officiis. Nam voluptas aperiam quo soluta voluptatem reprehenderit.</p><p>Error voluptas odit debitis tempora recusandae delectus. Vero et veritatis voluptas nemo eveniet. Doloremque quia quae voluptas illum perspiciatis. Ut et rerum iure fugit dolorem reiciendis.</p><p>Magnam quasi mollitia quisquam voluptatem tempora. Est quod expedita dolorem et. Dolor dolorum quaerat voluptatem hic. Quidem porro minus perspiciatis aut labore magnam vero. Ut rerum sit perferendis et et laborum perspiciatis.</p><p>Et et voluptate facilis harum porro eum. Ullam vitae consequuntur eius perspiciatis. Consequatur sit omnis sit sed. Iste ducimus et repellat ut qui ut sed eligendi. Iure doloribus tenetur laudantium maxime.</p><p>Impedit quia est modi eveniet sapiente sit. Optio eius molestiae et et cum. Similique repellat dolor enim est provident esse. Et rerum eos provident quia.</p><p>Officiis vel voluptate doloribus quaerat. Corrupti voluptatem tempore illo nisi et delectus. Id possimus est officia distinctio officiis voluptate. Nihil corporis adipisci excepturi.</p><p>Sit porro nostrum ut. Ipsum sapiente cumque nemo occaecati excepturi. Ipsam et ut nisi nostrum.</p><p>Ut voluptatum rerum eligendi similique quod et. Accusamus consequatur placeat optio dolorum. Nostrum quisquam pariatur suscipit enim iste.</p><p>Quam quis nam ut nulla. Suscipit odit quia et.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(11, 2, 3, 'Ea maiores nobis omnis deleniti et.', 'excepturi-nihil-incidunt-et-consequuntur-sit', NULL, 'Enim harum perferendis nisi totam ut. Totam atque dolores ea id sint ad. Id et consectetur laboriosam labore aperiam ut consequatur.', '<p>Mollitia perspiciatis saepe labore harum. Sint ut consectetur in. Distinctio aliquid eaque aut provident et. Id aliquid molestiae esse dolores tenetur ut. Autem consectetur molestiae cumque nostrum sed eos consequatur.</p><p>Qui sint eaque deserunt aut qui natus at distinctio. Explicabo voluptatem repellat placeat fugit ea. Deleniti sint quas sit et.</p><p>Corrupti modi officia quia officia commodi repudiandae aut. Non dolorem ipsum laborum nobis est possimus fugit. Sed velit voluptates et sint voluptatem aut. Neque est repudiandae recusandae suscipit perspiciatis dolor.</p><p>Et qui iure et voluptates beatae provident. Eum et esse vitae sit aliquid omnis amet quibusdam. Dolor voluptatibus voluptatem possimus id. Incidunt possimus minima quia omnis eius vel nihil alias.</p><p>Ipsa ratione eveniet voluptas nihil magnam. Reiciendis cum est quam eos quod doloribus. Eum quod explicabo non qui consectetur fugit aut. Et recusandae vitae placeat nam aut facilis ipsam. Exercitationem sit quo cupiditate voluptatem.</p><p>Qui illo odio amet qui perferendis debitis. Consequuntur placeat hic eveniet iure dolores. Quos voluptatem facilis doloremque debitis. Possimus corrupti quia ab vel et.</p><p>Temporibus et quisquam voluptas quae sit saepe assumenda. Iste consectetur corrupti sunt minima consequatur odit sunt. Corrupti amet velit officiis consequatur magni id omnis.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(12, 1, 2, 'Voluptate molestiae cum et.', 'incidunt-neque-sit-a-aut', NULL, 'Nemo consectetur atque dolores quis ut nesciunt. Cupiditate quis id laboriosam quia inventore rerum. Et omnis voluptate et dignissimos aut quos et. Voluptas vel id et voluptatem animi.', '<p>Non unde dolorem vel doloribus officia cupiditate. Aut reiciendis aut exercitationem ipsa natus hic nisi. Nihil qui dolorem cumque est non quam debitis.</p><p>Nesciunt voluptatum velit voluptas rerum voluptatem. Minus reprehenderit qui repellendus odit earum.</p><p>Animi temporibus eum sed architecto sapiente veritatis voluptatem sint. Qui delectus sit quia sint quia sint dolorem voluptatem.</p><p>Temporibus ratione vero consequuntur autem quae. Autem nihil ab quia voluptatem consequatur. Sed magni atque fugit et dolorem quasi non quas. Nihil quibusdam est dolorem voluptatem possimus atque.</p><p>Omnis expedita quibusdam placeat iusto dolores omnis. Dolorum harum doloremque voluptatem vero perspiciatis ratione. Illo ullam tempore quisquam eius commodi sit enim. Fugiat culpa quibusdam qui.</p><p>Voluptate accusantium consequatur quia deleniti id deserunt. Blanditiis eum repellat sunt et. Itaque quia aut dolorem beatae dicta tempore ut. Expedita sunt recusandae praesentium ipsum aut tenetur.</p><p>Commodi qui eum consectetur ut eos aspernatur. Nihil adipisci et molestiae laborum harum perferendis. Commodi perferendis sunt eum repellat reprehenderit enim. Delectus ipsam magni nobis dolor.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(13, 2, 3, 'Molestias quae molestiae atque.', 'molestias-necessitatibus-perferendis-enim-nihil-quia-maiores-iste-porro', NULL, 'Maiores nostrum reiciendis rerum tempora molestias. Aut dolorum qui quod. Non nostrum quia autem ipsum. Sit in qui quo temporibus voluptatibus sit.', '<p>Quis placeat inventore officiis asperiores libero sit. Molestiae iusto sit ipsam ipsam. Quia sed aspernatur quam cum est modi consequuntur. Ipsum perferendis animi consectetur in voluptatem nesciunt.</p><p>Laudantium eos sint et facilis eos quia. Consequuntur eos a vero accusamus. Nulla iste aliquam commodi sit corporis pariatur.</p><p>Et et vitae quis maiores quaerat ut modi. Magnam excepturi et distinctio. Ipsum et et aliquid alias sit illo beatae. Asperiores repudiandae fuga omnis sed non aut amet ducimus. Nulla numquam et voluptatem.</p><p>Dignissimos sint dolores non rerum eveniet. Voluptatem ut aut laborum sunt sed ut id natus. Laborum maxime explicabo minima tempora molestias autem.</p><p>Voluptas et corrupti odio voluptas. Sunt sint laborum vel quas autem excepturi rerum accusamus. Vero et ut suscipit libero dolor. Rerum voluptates modi asperiores nulla autem. Et commodi facilis ipsam ab.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(14, 2, 1, 'Eligendi similique mollitia velit vitae sapiente ratione maiores ipsum.', 'consequuntur-eaque-quidem-consequuntur-eligendi-veritatis-rerum', NULL, 'Magni ad quia voluptas qui sint adipisci tempore culpa. Eaque molestias ratione est sint. Impedit itaque voluptates quae consectetur qui ut. Deserunt porro est enim nemo consectetur. Voluptates quae repellat qui voluptas similique quibusdam quae.', '<p>Aut quo itaque dolor autem. Magnam asperiores earum doloribus debitis. Consectetur asperiores laborum molestiae repudiandae et autem fugiat. Ut repudiandae consequuntur unde tenetur vitae doloribus impedit.</p><p>Enim hic repellat enim. Aspernatur ratione est voluptatem aut occaecati et ut adipisci. Id quod ut nostrum quisquam velit animi. Suscipit odit rem modi magnam incidunt id.</p><p>Laborum doloribus doloribus exercitationem dignissimos. Aut voluptatem et deserunt iste. Vero praesentium vel et nobis. Totam modi facilis voluptate molestiae consequatur quaerat eligendi.</p><p>Ab ut est et labore omnis dolorem. Non nemo repudiandae commodi quis libero enim. Aut suscipit cum et non provident veritatis.</p><p>Et quia eligendi iusto sed est. Non beatae tenetur dolorum et consequatur. Enim voluptates temporibus illum corrupti. Ut ipsam dolorem sunt.</p><p>Et commodi enim debitis quaerat. Quas asperiores pariatur quam ea aspernatur quia. Repudiandae quo ut incidunt deleniti. Et quam deserunt accusamus quas ea qui ut.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(15, 2, 2, 'A accusantium vel unde.', 'assumenda-delectus-quia-autem', NULL, 'Inventore voluptatibus qui similique cumque fugit. Officiis quidem eligendi asperiores vero eius fuga dolorem. Atque ut inventore quia. Dolor repellendus sit voluptatum vel voluptatibus.', '<p>Culpa enim tempore vel hic qui beatae est. Modi nam ullam aliquam officiis. Commodi id ut sapiente fugit exercitationem delectus magnam expedita.</p><p>Sed et reprehenderit expedita unde quidem rerum in. Sint perferendis numquam ipsam voluptas quae quaerat aliquid. Sequi unde qui ut laborum porro dolor.</p><p>Pariatur eos eum repudiandae animi ex inventore odio. Quibusdam in natus eos tenetur fuga est non adipisci. Perspiciatis ex eum eveniet modi.</p><p>Necessitatibus voluptate tempora doloribus aut consequatur ad et. Debitis in est sunt. Et nulla rem doloremque quidem. Nostrum sed exercitationem qui nemo mollitia cum.</p><p>Dolore voluptatum sint delectus qui earum. Ex molestiae placeat voluptas iusto odio voluptatem. Optio omnis sequi occaecati quis dolores molestiae eligendi.</p><p>Expedita assumenda ab veniam et hic vel. Dolor commodi consequatur quod quia dicta minima deleniti. Dolorem nulla neque doloremque cumque perferendis nulla labore. Voluptatem doloribus corrupti sit modi ea.</p><p>Officia animi odit veritatis asperiores maxime. Vitae omnis ut eos placeat corporis. Ut ratione possimus et eos. Sequi dolor eligendi accusamus omnis perferendis quasi quia.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(16, 2, 1, 'Repellendus quasi.', 'dolor-et-ipsum-est-placeat-dolor-sit', NULL, 'Cupiditate id molestiae placeat sequi. Quos illum accusantium ab enim architecto est. Ut aperiam rerum cupiditate tenetur consequuntur magni non illo.', '<p>Ex repellat quibusdam iusto nesciunt ab dicta dolorem et. Placeat repellendus rerum voluptatum hic. Aut perspiciatis dolorem consequatur quis sed. Amet nostrum qui voluptatem totam.</p><p>Ut ut ratione expedita ea. Quod dolores repellat natus sunt harum quae sint. Velit distinctio eligendi commodi eaque impedit. Occaecati et quo sequi nostrum quod magnam et soluta. Quia molestiae voluptatibus voluptas voluptatibus minus et.</p><p>Accusantium ut aliquid voluptas maxime itaque aut possimus. Quos amet nihil eos sit pariatur est. Tempora et laboriosam at debitis ipsum dolor. Molestiae molestiae eius quis fuga.</p><p>Nemo totam earum praesentium qui et quia. Exercitationem accusantium voluptas nihil a.</p><p>Quas repudiandae temporibus magnam maxime nisi id. Doloribus et est qui corrupti consequatur tempore delectus sed. Itaque non rerum adipisci voluptatem harum nostrum.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(17, 2, 1, 'Unde nulla.', 'quia-iste-a-sunt-accusantium-voluptatem-voluptatibus', NULL, 'Ratione aut quis aut dicta. Id delectus exercitationem consequatur et.', '<p>Nihil voluptas cumque rerum et. Quas autem velit tenetur facere vel. Nihil nihil est fugiat provident molestiae.</p><p>Doloremque rem id voluptas quia. Ad vel minus cum eos quibusdam. Quasi placeat non eius. Commodi ut quia accusamus suscipit sint. Id ex commodi dolores esse quae.</p><p>Debitis rerum ipsam dolorem quo velit. Necessitatibus mollitia blanditiis soluta veniam culpa provident in ut. Nihil quis repellat illo architecto architecto et non consequatur.</p><p>Aspernatur vel voluptatem perferendis nesciunt. Itaque laboriosam sint eligendi quis nemo et. Fuga quis ut est doloremque. Itaque velit minus cum dolorem alias.</p><p>Doloremque minus suscipit natus quam labore consectetur aut. Et perspiciatis minima commodi nulla commodi ab. Consequuntur ipsa minus eligendi dolorem nemo totam. Accusantium et dolor voluptatem laborum facere.</p><p>Aut inventore sed illo maxime praesentium cum quia. Dolores quidem sed provident ut. Qui soluta ad iure quae corporis.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(18, 1, 2, 'Minus sit labore cupiditate.', 'sint-molestiae-provident-magni-exercitationem-ut-quam-architecto', NULL, 'Laboriosam vero optio quia est at rerum nihil. Dolores eius consequatur excepturi asperiores ipsa quas.', '<p>Nam quis eligendi unde officiis nobis possimus. Dicta quos saepe cupiditate quia qui quia ut. Ipsa nam laudantium fugiat eius. Commodi error quia consequatur id est commodi. Reprehenderit voluptas et est omnis et a.</p><p>Dolores ad modi vel culpa consequatur autem. Rerum consequatur asperiores deleniti dolor. Sunt rerum et voluptate fugit voluptatibus. Ducimus aut in voluptatem id.</p><p>Sapiente asperiores perferendis occaecati harum et veniam voluptatem. Molestiae ipsum animi explicabo ea rerum. Quidem velit numquam saepe pariatur. Repellat cupiditate praesentium iure quae distinctio quo.</p><p>Repellendus quis repudiandae nulla et porro laborum asperiores. Voluptatem id omnis laboriosam alias nulla ducimus. Provident vel tempore cupiditate et magni est beatae.</p><p>Et tempora pariatur nobis quae voluptates. Et voluptatem minus accusantium tempore consequatur. Ullam voluptate ipsum est enim eos excepturi nisi sequi. Exercitationem ullam aliquam ut temporibus eaque.</p><p>Voluptatem quos laboriosam facere. Voluptatem reiciendis dignissimos ullam voluptas neque beatae molestias eos. Iure quos debitis ipsam voluptas enim rem. Ratione beatae consequuntur officia natus velit aut quisquam at.</p><p>Quos voluptates est numquam aperiam expedita nobis. Qui et distinctio reiciendis excepturi atque officiis laboriosam in. Qui et reiciendis itaque quis totam. Suscipit maxime et ut animi quos iusto.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(19, 1, 3, 'Repellendus vel odio consequatur eum ad qui libero quia.', 'exercitationem-mollitia-consectetur-ut-incidunt', NULL, 'Accusantium ut voluptatem quis sequi alias qui. Dolor eos provident deleniti aliquam assumenda. Dolorem voluptate ab consequatur debitis in incidunt quia.', '<p>Error error ut reprehenderit quis temporibus. Cumque voluptatem laudantium autem sit qui labore. Enim aspernatur exercitationem voluptate quia. Adipisci consequatur labore tempore in sit.</p><p>Veritatis in nobis voluptatem non dolores officia ipsa. Tempora rerum et perferendis enim eos. Nihil distinctio fuga nam rerum. Amet rerum aut officia necessitatibus.</p><p>Animi recusandae sapiente distinctio earum. Necessitatibus non et perferendis accusamus. Suscipit doloremque consequatur consequatur aut officia.</p><p>Maiores est officia amet dignissimos a corrupti repellendus ea. Corporis mollitia eos dolores magni labore. Laboriosam non voluptates sed aut dolor est sed cumque.</p><p>Atque pariatur ut similique debitis et. Est corporis possimus doloremque culpa. Quia quibusdam quia quia sed harum quam vitae. Non incidunt reiciendis sit laborum alias minus consequatur.</p><p>Labore nihil iure ullam. Quia et nobis non quis soluta.</p><p>Dolor necessitatibus recusandae necessitatibus sunt ut voluptatem quidem. Officiis assumenda ad quo amet. Nostrum doloribus similique modi dolores. Delectus quaerat omnis enim atque.</p><p>Est tempora qui ea sed est sapiente. Nesciunt expedita sed molestiae neque quia sapiente nihil. Et provident suscipit quia est doloremque. Numquam dicta ut est rerum distinctio.</p><p>Aliquid facilis nulla in adipisci ullam numquam. Laboriosam laudantium alias facilis eveniet dolores sequi temporibus. Numquam a id minima consequuntur sint.</p><p>Dolorem fugit rerum dolor. Voluptatem velit nostrum veritatis et sunt magnam libero. Rerum eum voluptatem sunt sapiente impedit autem consequatur et. Et dolore a impedit reiciendis maiores nihil.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(20, 1, 1, 'Asperiores quia consequatur reprehenderit aut.', 'dolorem-itaque-autem-illo-nobis', NULL, 'Et quasi provident occaecati vel hic est. Sint voluptas temporibus quaerat omnis. Accusantium perspiciatis in sit aspernatur sit neque rerum. Reiciendis autem cupiditate esse rerum adipisci.', '<p>Animi est quas a facilis laborum quibusdam reprehenderit quisquam. Maiores eos id eveniet blanditiis. Enim iste nesciunt delectus. Labore tempora consequatur dolorem libero culpa molestias non.</p><p>Aliquid assumenda praesentium adipisci nihil. Ea aspernatur expedita qui. Magnam itaque qui commodi qui voluptatum.</p><p>Rerum unde est rerum. Vitae velit dolores rerum recusandae. Quas laboriosam qui adipisci et fugit suscipit quo. Eligendi quo ratione occaecati facilis.</p><p>Esse dolor quia iusto ea natus. Est atque consequatur delectus repellat dolor. Libero magni qui assumenda inventore omnis voluptas repellat dolor.</p><p>Aut in atque deserunt et molestias architecto. Numquam cumque ad consequatur sapiente.</p><p>Odio repellat eius maxime voluptatem unde modi consequatur. Enim enim non quidem assumenda qui omnis ut. Rerum odio velit ea voluptatem.</p><p>Deserunt sit doloremque amet optio consequatur. Sed est qui nihil officiis ut. Et qui consequatur qui unde esse explicabo quia.</p>', NULL, '2023-01-21 10:40:45', '2023-01-21 10:40:45'),
(21, 1, 5, 'Programming satu', 'programming-satu', NULL, 'asdasd', '<div>asdasd</div>', NULL, '2023-03-19 01:26:21', '2023-03-19 01:26:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Fandi Adi Prasetio', 'fandi', 'fandiadi30@gmail.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-01-21 10:40:44', '2023-01-21 10:40:44', 0),
(2, 'Rusman Pradana S.I.Kom', 'harsana.prasetyo', 'janetjanuar@gmail.com', '2023-01-21 10:40:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Gw3JOv9uqJ', '2023-01-21 10:40:45', '2023-01-21 10:40:45', 0),
(3, 'Prabawa Simbolon', 'gyolanda', 'gunawan.melinda@example.com', '2023-01-21 10:40:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '47Kz9IQ65M', '2023-01-21 10:40:45', '2023-01-21 10:40:45', 0),
(4, 'Omar Pranowo', 'almira.sinaga', 'eluh.halimah@example.net', '2023-01-21 10:40:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mNT7OPSy3B', '2023-01-21 10:40:45', '2023-01-21 10:40:45', 0),
(5, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$u.Jv/c6VYH10mBfvjBPw5.GFklQvyRgAcAjlV4Xj2wdzhJEXkn0tC', NULL, '2023-03-19 01:25:29', '2023-03-19 01:25:29', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
