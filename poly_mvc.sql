-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 03:24 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poly_mvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_menu` int(1) DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cate_name`, `slug`, `show_menu`, `desc`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 't-shirt', NULL, 1, NULL, NULL, NULL, -1),
(2, 'Skinny Jean', NULL, 1, NULL, NULL, NULL, -1),
(3, 'pleated skirt', NULL, 1, NULL, NULL, NULL, -1),
(4, 'blazer', NULL, 1, NULL, NULL, NULL, -1),
(5, 'sweatshirt', NULL, NULL, NULL, NULL, NULL, -1),
(6, 'Dress', NULL, 1, NULL, NULL, NULL, -1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL DEFAULT 0,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `cate_id`, `price`, `short_desc`, `detail`, `star`, `created_at`, `updated_at`, `views`) VALUES
(1, 'Deven Carroll DDS', 'public/uploads/5eb03df109d2f-unnamed.jpg', 3, 2000, 'But the sun. (IF you a snatch in his brush, and a tiny golden scale! \'How the other: the Lobster Quadrille The master was on his history,\' As for a sigh: \'he taught them: such a mouse--a mouse--O.', 'I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go on for some while in silence. At last the Mouse, getting up and picking the daisies, when suddenly a White Rabbit blew three blasts on the top.', 3.00, NULL, '2020-05-04 10:08:17', 1),
(2, 'Ava Olson', 'https://lorempixel.com/640/480/cats/?43699', 3, 3000, 'Ma!\' said to the trees upon her face was speaking, so much care of thought, \'till its mouth, and in March.\' As she found her repeating all the bright idea what CAN I grow larger, sir, just upset the.', 'Alice, as she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must be off, and Alice thought she might find another key on.', 5.00, NULL, NULL, 1),
(3, 'long dep trai', 'https://lorempixel.com/640/480/cats/?78623', 5, 5000, 'Seven flung down with a nice soft thing she went to one place for a red-hot poker will tell me, please, if there was good thing!\' said the pebbles came up the next remark. \'Of course,\' he consented.', 'Mouse to Alice to herself. \'I dare say there may be different,\' said Alice; \'living at the bottom of a tree. \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad.', 3.00, NULL, '2019-10-16 00:02:27', 438),
(4, 'Samir Schumm DVM', 'https://lorempixel.com/640/480/cats/?56187', 2, 83653, 'Will you, and hot buttered toast,) she had any other parts of course--\"I GAVE HIM TWO--\" why, that would bend about here, O Mouse!\' (Alice had to be like to the matter much,\' said the way, was.', 'And in she went. Once more she found a little pattering of footsteps in the sea, some children digging in the same year for such a curious feeling!\' said Alice; \'that\'s not at all anxious to have.', 5.00, NULL, NULL, 1),
(5, 'Javier Sipes', 'https://lorempixel.com/640/480/cats/?27602', 6, 84750, 'Alice could remember it must be asleep instantly, and she had not taste it, and waited. The White Rabbit; \'in my dear, certainly: Alice thought), and she was a duck with her fancy, that: they saw.', 'All on a crimson velvet cushion; and, last of all the rats and--oh dear!\' cried Alice, jumping up in such a capital one for catching mice you can\'t help it,\' she thought, \'till its ears have come.', 5.00, NULL, NULL, 1),
(6, 'Aryanna Bartell', 'https://lorempixel.com/640/480/cats/?63932', 6, 3775, 'YOUR table,\' said the King; \'and even room for she was an encouraging tone. Alice thought of bright brass plate came opposite to worry it; and said, without being that makes my jaw, Has lasted the.', 'Mock Turtle interrupted, \'if you only kept on puzzling about it while the Mouse was swimming away from him, and very soon finished off the cake. * * * * * * * * * * * * * * * CHAPTER II. The Pool of.', 2.00, NULL, NULL, 1),
(7, 'Unique Tromp', 'https://lorempixel.com/640/480/cats/?14953', 4, 59885, 'Hearts, who was going back to find herself what they arrived, with the roof. There was her face, with a little bit of use now,\' she went on, then,\' the moral of the two feet as they WILL be no such.', 'Queen said to herself, \'to be going messages for a conversation. \'You don\'t know what to do, so Alice went on again:-- \'I didn\'t write it, and very soon had to be a footman in livery, with a round.', 4.00, NULL, '2019-01-11 18:08:55', 2),
(8, 'Vaughn McLaughlin', 'https://lorempixel.com/640/480/cats/?56031', 5, 54407, 'I don\'t FIT you,\' she was, that in my dear, YOU manage?\' Alice began singing a body tucked away, even introduced to be a commotion in a blow with them,\' the hearth and sometimes, \'Do you may not.', 'Alice, she went slowly after it: \'I never could abide figures!\' And with that she still held the pieces of mushroom in her pocket) till she got into it), and sometimes she scolded herself so.', 3.00, NULL, NULL, 1),
(9, 'Miss Florida Paucek Sr.', 'https://lorempixel.com/640/480/cats/?12502', 4, 71067, 'Queen of thing I think--\' (for, you manage the darkness as quickly that there seemed to make children digging her voice, and bawled out, at once.\' And so savage if I wish I shall have wanted it.', 'Gryphon, sighing in his confusion he bit a large mushroom growing near her, she began, rather timidly, saying to herself that perhaps it was as much as she could not be denied, so she went on.', 4.00, NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`cate_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_cate_id_foreign` (`cate_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
