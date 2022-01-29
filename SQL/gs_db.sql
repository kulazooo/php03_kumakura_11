-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2022 年 1 月 29 日 07:17
-- サーバのバージョン： 5.7.34
-- PHP のバージョン: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE `gs_an_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pass` text NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `pass`, `content`, `date`) VALUES
(1, 'kumakura', 'kulapro11@gmail.com', '', 'HELLO WORLD', '2022-01-16 14:52:40'),
(2, 'yasuhiro', 'realbj9ma@yahoo.co.jp', '', 'hello', '2022-01-16 14:56:58'),
(3, 'kulazooo', 'realbj9ma@yahoo.co.jp', '', 'hello', '2022-01-16 14:57:24'),
(4, 'yasuhiro111', 'realbj9mawww@yahoo.co.jp', '', 'hello', '2022-01-16 14:59:56'),
(5, 'kumakura', 'realbj9ma@yahoo.co.jp', '', 'sss', '2022-01-16 15:52:24'),
(6, 'kumakura', 'realbj9ma@yahoo.co.jp', '', 'sss', '2022-01-16 15:54:53'),
(7, '', '', '', '', '2022-01-16 15:54:55'),
(8, 'kumakura', 'realbj9ma@yahoo.co.jp', '', 'ssss', '2022-01-16 15:55:01'),
(9, 'ss', 'ss', '', 'sss', '2022-01-16 15:55:38'),
(10, 's', 'd', '', 'd', '2022-01-16 16:11:38'),
(11, 'select', 'select', '', 'select', '2022-01-16 16:13:42'),
(12, 'select', 'select', '', 'select', '2022-01-16 16:16:03'),
(13, 'x', 'x', '', 'x', '2022-01-16 16:16:25'),
(14, 'select', 'select', '', 's', '2022-01-16 16:26:56'),
(15, 'kumakura', 'select', '', 'ccc', '2022-01-16 16:53:59'),
(16, 'kumakura', 'realbj9ma@yahoo.co.jp', '', 'fff', '2022-01-16 16:59:35'),
(17, 'kumakura', 'realbj9ma@yahoo.co.jp', '', 'ff', '2022-01-22 03:48:32');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `bookname` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `bookname`, `url`, `comment`, `indate`) VALUES
(2, '邂逅の森', 'https://www.amazon.co.jp/%E9%82%82%E9%80%85%E3%81%AE%E6%A3%AE-%E6%96%87%E6%98%A5%E6%96%87%E5%BA%AB-%E7%86%8A%E8%B0%B7-%E9%81%94%E4%B9%9F/dp/4167724014', '読んだ後、泣いた', '2022-01-29 16:15:34'),
(10, '吾輩は猫である', 'kkk', 'bb', '2022-01-29 16:14:29'),
(11, '富士日記', 'tt', 'たんたんとした日常の風景を綴るエッセイ\r\nです', '2022-01-29 16:14:00'),
(12, '熱源', 'https://www.amazon.co.jp/%E3%80%90%E7%AC%AC162%E5%9B%9E-%E7%9B%B4%E6%9C%A8%E8%B3%9E%E5%8F%97%E8%B3%9E%E4%BD%9C%E3%80%91%E7%86%B1%E6%BA%90-%E5%B7%9D%E8%B6%8A-%E5%AE%97%E4%B8%80/dp/4163910417/ref=pd_lpo_3?pd_rd_i=4163910417&psc=1', '第162回-直木賞受賞作　川越-宗', '2022-01-29 16:16:48');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_test`
--

CREATE TABLE `gs_test` (
  `id` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pass` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'kumakura', 'real', 'pzx', 0, 0),
(2, 'AI', 'AI', 'choco', 0, 0),
(3, 'hogehoge', 'hoge', 'zzz', 0, 0),
(4, 'kumakura02', 'real', 'zzz', 0, 0),
(5, 'kumakura', 'real', 'pzxoo', 0, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_an_table`
--
ALTER TABLE `gs_an_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_user_table`
--
ALTER TABLE `gs_user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_an_table`
--
ALTER TABLE `gs_an_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- テーブルの AUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- テーブルの AUTO_INCREMENT `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
