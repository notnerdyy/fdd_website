-- 資料表標題： Fundodo 訂單資料
-- 摘要：根據會員總表與商品總表生成的訂單資料

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+08:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `fundodo`
--

-- --------------------------------------------------------

--
-- 資料表結構 `coupon`
--

CREATE TABLE IF NOT EXISTS `coupon` (
    `id` mediumint(5),
    `name` varchar(20) NOT NULL,
    `desc` varchar(100) NOT NULL,
    `desc_ps` varchar(100) NOT NULL,
    `scope_to` varchar(2),
    `scope_from` varchar(2),
    `discount` decimal(7,2) UNSIGNED NOT NULL,
    `min_spent` mediumint(5) UNSIGNED NOT NULL,
    `max_discount` int(7) UNSIGNED NOT NULL,
    `get_code` VARCHAR(10),
    `start_date` DATETIME NOT NULL,
    `end_date` DATETIME,
    `time_span` tinyint(2) UNSIGNED NOT NULL,
    `created_at` DATETIME NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
ALTER TABLE `coupon` CHANGE `id` `id` mediumint(5) UNSIGNED NOT NULL AUTO_INCREMENT, add PRIMARY KEY (`id`); 


INSERT INTO `coupon`
(`name`, `desc`, `desc_ps`, `scope_to`, `scope_from`, `discount`, `min_spent`, `max_discount`, `get_code`, `start_date`, `end_date`, `time_span`, `created_at`) VALUES
  ('會員專屬 200 元折價券',
  '會員專屬 200 元折價券，全站皆可使用',
  '200 元折價券，全站無條件使用，長期彈性發放。',
  NULL,NULL,
  200.00,0,
  NULL,NULL,
  '2022-04-10 00:00:00',
  NULL,14,'2022-04-09 15:35:47'),
	('翻肚肚商城 100 元折價券','商城全品項皆可使用（不包含旅館與課程）','200 元折價券，全商城無條件使用，長期彈性發放。','PD',NULL,200.00,0,NULL,NULL,'2022-04-10 00:00:00',NULL,7,'2022-04-09 15:36:34'),
	('翻肚肚免運券','翻肚肚商城免運券（不適用於旅館與課程）','免運券，全商城無條件使用，長期彈性發放。','運費',NULL,200.00,0,NULL,NULL,'2022-04-10 00:00:00',NULL,7,'2022-04-09 15:37:41'),
	('新朋友專屬 200 元購物金','新會員的註冊禮，全站皆可使用','200 元折價券，全站無條件使用，註冊成功時發放',NULL,NULL,200.00,0,NULL,NULL,'2022-04-10 00:00:00',NULL,7,'2022-04-09 15:38:39'),
	('滿千送百優惠券','凡消費滿 1000 元，贈 100 元購物金','滿額贈優惠，適用於全站',NULL,NULL,100.00,1000,NULL,NULL,'2022-06-20 14:36:17',NULL,15,'2022-06-20 14:36:17'),
	('滿千送百優惠券','凡消費滿 1000 元，贈 100 元購物金，不包含旅館與課程','適用於商城，不包含旅館與課程',NULL,NULL,100.00,1000,NULL,NULL,'2022-06-20 14:38:23',NULL,15,'2022-06-20 14:38:23'),
	('生日專屬 100 元折價券','會員生日當月可享 100 元折扣，適用於全站商品與服務','生日專屬優惠，適用於全站，於會員生日當月自動發放',NULL,NULL,100.00,0,NULL,NULL,'2023-01-01 00:00:00',NULL,30,'2022-12-24 10:07:51'),
	('新春 500 元購物金','新春特別優惠，滿 2000 元即可享有 500 元折扣','新春促銷，適用於所有商品與服務；於 start_date 發放',NULL,NULL,500.00,2000,NULL,NULL,'2024-02-07 00:00:00','2024-02-24 23:59:59',NULL,'2023-01-15 13:47:21'),
	('翻肚肚免運券','翻肚肚商城免運券（不適用於旅館與課程）','免運券，全商城無條件使用，今年度活動加碼發放，以碼領取。','運費',NULL,NULL,NULL,NULL,'fddUxr59','2024-02-07 00:00:00','2024-02-24 23:59:59',NULL,'2023-01-28 11:26:40'),
	('首次訂房九折券','首次使用旅館服務可享九折優惠，最高折 2000 千','新會員首次訂房優惠，適用於所有旅館，註冊成功時發放','HT',NULL,0.90,0,2000,NULL,'2024-04-01 00:00:00',NULL,14,'2024-03-25 10:18:31'),
	('旅館回購九折券','再次使用旅館服務可享九折優惠，最高折 2000 千','新會員二次訂房優惠，適用於所有旅館，最高折 2000 千；於首次訂購旅館後發放','HT',NULL,0.90,0,2000,NULL,'2024-04-01 00:00:00',NULL,30,'2024-03-25 15:37:09'),
	('滿兩千打九折','凡消費滿兩千元，當次消費享九折優惠，最高折 1000 元。不適用於旅館與課程','限商品，不包含課程與旅館','PD',NULL,0.90,2000,1000,NULL,'2024-06-01 00:00:00',NULL,7,'2024-05-25 13:45:52'),
	('買飼料搭零食，享八八折','凡消費滿兩千元，當次消費享九折優惠，不包含旅館與課程','一筆零食可以讓一筆飼料打折','零食','飼料',0.88,0,NULL,NULL,'2024-06-01 00:00:00',NULL,7,'2024-05-25 15:03:56'),
	('暑假享特價，全商城八折券','暑假期間，全商城八折優惠，不包含課程與旅館','夏日特賣，適用於全商城；於 start_date 發放','PD',NULL,0.80,0,NULL,NULL,'2024-07-01 00:00:00','2024-08-31 23:59:59',NULL,'2024-06-03 10:02:49'),
	('夏日限定旅館購物金 200 元','夏日炎炎想出遊，翻肚肚幫您減輕毛孩住宿的負擔','夏日特賣，僅適用於旅館；於 start_date 發放','HT',NULL,200.00,0,NULL,NULL,'2024-07-01 00:00:00','2024-08-31 23:59:59',NULL,'2024-06-03 10:32:43'),
	('翻肚肚贊助你暑假進修金','暑假為家裡毛孩上點課，任何課程費用直接折抵 200 元','夏日特賣，僅適用於課程；於 start_date 發放','HT',NULL,200.00,0,NULL,NULL,'2024-07-01 00:00:00','2024-08-31 23:59:59',NULL,'2024-06-03 16:15:41'),
	('歡慶中秋 250 元折價券','中秋期間凡有旅館的消費，即能享商品的 250 元折扣','250 元折價券，有旅館的消費一筆以上，限使用一次；於 start_date 發放','PD','HT',250.00,0,NULL,NULL,'2024-09-01 00:00:00','2024-09-18 23:59:59',NULL,'2024-08-21 13:37:08'),
	('九九重陽九折優惠券','慶祝重陽，全商城消費滿 3000 元即可打九折，不包含旅館與課程','雙十一專屬優惠，適用於全站，需滿 3000 元才可使用；於 start_date 發放','PD',NULL,500.00,3000,NULL,NULL,'2024-09-09 00:00:00','2024-09-09 23:59:59',NULL,'2024-08-25 14:26:29'),
	('九九重陽課程九折券','慶祝重陽，課程消費滿 2000 元即可打九折，最高折 2000 元','雙十一專屬優惠，適用於全站，需滿 3000 元才可使用；於 start_date 發放','CR',NULL,500.00,3000,2000,NULL,'2024-09-09 00:00:00','2024-09-09 23:59:59',NULL,'2024-08-25 17:07:16');

COMMIT;
