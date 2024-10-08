-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-08-31 17:57:51
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `0831_course_sql`
--

-- --------------------------------------------------------

--
-- 資料表結構 `courses`
--

CREATE TABLE `courses` (
  `id` int(5) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `summary` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `img_path` varchar(50) NOT NULL,
  `original_price` decimal(5,0) NOT NULL,
  `sale_price` decimal(5,0) UNSIGNED NOT NULL,
  `viewed_count` int(5) DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(5) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `courses`
--

INSERT INTO `courses` (`id`, `title`, `summary`, `description`, `img_path`, `original_price`, `sale_price`, `viewed_count`, `created_at`, `updated_at`, `status`) VALUES
(1, '玩出好感情！與狗兒的互動遊戲課', '與狗兒的線上遊戲課程，一起練習合作遊戲，加深彼此的信任關係，讓每次互動都變得更有趣、更有意義，並提升狗兒的參與感與快樂指數。', '• 深入理解狗兒遊戲偏好，設計適合的活動提高參與度和樂趣。\n• 創建安全有趣的遊戲場景，激發狗兒興趣，滿足不同品種需求。\n• 增進人狗合作技巧，建立默契，提高狗兒對指令的反應能力。\n• 建立一致的遊戲規則，培養狗兒自制力，平衡自由和規矩。\n• 在遊戲中融入基本服從訓練，提高狗兒學習積極性和效率。', 'CR0000011.jpg', 1500, 1200, 175, '2023-10-18 11:02:37', NULL, 1),
(2, '狗狗教養實作- 線上體驗課', '9/19 (四) ：不同狗兒教養方式全面解析 ！+ 吠叫案例詳解，讓你掌握狗兒行為背後的真正原因，並學習有效解決方法，提升飼養經驗。', '• 探索多種教養方式，分析優缺點，選擇最適合的策略。\r\n• 分析常見吠叫案例，探討原因，提供個性化解決方案。\r\n• 破解教養迷思，糾正錯誤觀念，建立平衡的教養方式。\r\n• 學習戶外訓練技巧，應對環境干擾，確保安全和禮儀。\r\n• 制定不良行為應對策略，識別問題根源，實現長期改善。', 'CR0000021.jpg', 500, 350, 142, '2023-10-18 19:32:47', '2024-08-23 15:24:03', 1),
(3, '正向教養生活課－吃飯啃咬', '餵正餐時狗兒愛吃不吃，非得要過一兩小時才肯吃光，通過本課程，學習如何解決挑食問題，並預防狗兒撿拾異物，確保牠的健康與安全。', '• 解析挑食問題根源，制定個性化飲食計劃，建立健康習慣。\r\n• 學習防止狗狗撿拾異物的方法，訓練自制力，創造安全環境。\r\n• 介紹適合的咀嚼玩具，根據狗狗特點選擇，滿足需求保護牙齒。\r\n• 訓練進食習慣，設定固定餵食時間，建立規律飲食節奏。\r\n• 指導建立餐桌禮儀，訓練不打擾他人進食，改善乞食行為。', 'CR0000031.jpg', 1500, 1200, 188, '2023-10-19 00:00:50', NULL, 1),
(4, '正向教養生活課－洗澡美容', '每月固定要去美容室洗澡的狗兒總是異常緊張，本課程將教你如何減輕狗兒的焦慮，讓牠適應洗澡和美容過程，提升牠的舒適感。', '• 教導如何讓狗狗適應洗澡過程，減少焦慮，建立正面體驗。\r\n• 介紹減少美容時抗拒的技巧，培養狗狗的耐心和配合度。\r\n• 講解正確的洗澡和美容步驟，確保過程安全舒適有效。\r\n• 指導選擇適合的美容工具，根據狗狗毛髮類型和需求。\r\n• 培訓美容過程中的溝通技巧，增進人狗互信和默契。', 'CR0000041.jpg', 900, 650, 205, '2023-10-19 07:28:00', NULL, 1),
(5, '正向教養生活課－看醫生', '正向教養是以「人狗關係」為核心的沈浸式課程，幫助飼主學習如何處理與狗兒的關係，並有效解決生活中的各種問題。', '• 指導如何準備完整的醫療記錄，幫助獸醫快速了解狗狗情況。\r\n• 教授讓狗狗放鬆接受檢查的方法，減少看診時的壓力。\r\n• 介紹常見狗狗疾病，提高飼主的預防意識和早期發現能力。\r\n• 說明就醫過程中的注意事項，確保診療順利進行。\r\n• 培養與獸醫良好溝通的技巧，有效表達狗狗症狀和需求。', 'CR0000051.jpg', 900, 650, 123, '2023-10-19 09:34:01', NULL, 1),
(6, 'Chew Box 操作守則', '如同我們壓力大的時候，會依靠美食來紓壓，「啃咬」除了滿足狗兒的食物多樣性需求，也是狗兒調節情緒的方式，提供其必要的紓壓方法。', '• 詳細介紹Chew Box的功能和用途，了解其對狗狗的益處。\r\n• 指導如何正確使用Chew Box，確保安全和最大效果。\r\n• 教授選擇適合狗狗咀嚼物的標準，滿足不同需求。\r\n• 解釋咀嚼如何緩解狗狗壓力，改善行為問題。\r\n• 提供維持狗狗心理健康的策略，結合Chew Box使用。', 'CR0000061.jpg', 1500, 1200, 175, '2023-12-19 20:51:10', NULL, 1),
(7, '2024 狗狗正向教養 6 週高階課程', '在正向教養中，我們會重新學習擁抱自己的情緒，從不同的視角看看與狗兒的關係，探索更多有效的教養方法，提升人狗互動的品質。', '• 深入理解正向教養核心理念，應用於日常狗狗訓練中。\r\n• 分析狗狗行為背後的動機，制定針對性的訓練方案。\r\n• 學習強化人狗信任關係的技巧，提升訓練效果。\r\n• 掌握高階行為訓練方法，解決複雜的行為問題。\r\n• 分享實際案例，學習如何應對各種狗狗行為挑戰。', 'CR0000071.jpg', 9500, 9000, 213, '2023-12-20 11:58:19', NULL, 1),
(8, '安全感與五大需求講座', '一些狗兒常見的行為問題可能是源於需求未被滿足，本講座將全面探討狗兒的五大需求，教你如何創造出符合狗兒需求的和諧生活。', '• 全面理解狗狗的五大基本需求，確保身心健康發展。\r\n• 學習如何創建安全感環境，減少狗狗焦慮和不安。\r\n• 解決常見的分離焦慮等情緒問題，提高生活品質。\r\n• 培養狗狗的情緒穩定能力，應對各種生活變化。\r\n• 建立長期有效的安全感培養策略，增進人狗關係。', 'CR0000081.jpg', 1500, 1200, 99, '2023-12-21 04:14:20', NULL, 1),
(9, '2024 狗狗正向教養 6 週初階課程', '透過正向教養工作坊，了解溫和與堅定背後的含義，探索與狗兒之間的更多可能性，提升人狗關係，為進階訓練打下基礎。', '• 介紹正向教養的基礎知識，理解其對狗狗成長的重要性。\r\n• 學習建立穩定行為模式的方法，提高狗狗的可預測性。\r\n• 掌握初階行為訓練技術，為進階訓練打下基礎。\r\n• 學習鞏固人狗關係的基本步驟，增進相互理解和信任。\r\n• 解決常見問題，提供實用的正向教養解決方案。', 'CR0000091.jpg', 8300, 8000, 156, '2024-02-21 11:32:23', NULL, 1),
(10, '吠叫講座－聽懂狗兒叫什麼', '吠叫是狗兒用來傳遞訊息、表達情緒的方式，通過本講座，你將深入理解狗兒的吠叫背後的原因，並學會如何有效改善吠叫行為。', '• 深入分析狗狗吠叫的各種原因，理解背後的情緒需求。\r\n• 學習識別不同類型的吠叫模式，精準判斷狗狗意圖。\r\n• 掌握有效的吠叫行為糾正方法，改善過度吠叫問題。\r\n• 學習如何預防和減少不必要的吠叫，提高生活品質。\r\n• 增進與狗狗的溝通技巧，建立更和諧的互動關係。', 'CR0000101.jpg', 1500, 1200, 224, '2024-02-21 12:46:24', NULL, 1),
(11, '2024 狗狗正向教養 6 週中階課程', '在正向教養中，我們會重新學習擁抱自己的情緒，從不同的視角看待與狗兒的關係，透過中階課程，深入探討如何解決更複雜的行為問題。', '• 學習中階行為訓練策略，提升狗狗的服從性和靈活性。\r\n• 加強人狗之間的情感連結，建立更深厚的信任關係。\r\n• 學習如何處理行為回歸問題，鞏固訓練成果。\r\n• 提高狗狗的服從度和注意力，應對複雜環境挑戰。\r\n• 深入探討正向教養的進階理論，優化訓練方法。', 'CR0000111.jpg', 9500, 9000, 138, '2024-02-22 05:13:35', NULL, 1),
(12, '看懂狗兒在說什麼！肢體語言講座課程', '學習狗兒的肢體語言，理解牠們在表達什麼，尊重與滿足牠們的需求，才能建立起雙向溝通的管道，增進人狗之間的關係與理解。', '• 學習解讀狗狗的各種肢體語言，準確理解其情緒狀態。\r\n• 分析狗狗不同姿態和表情的含義，提高溝通效率。\r\n• 了解狗狗如何通過肢體語言表達需求和意圖。\r\n• 學習減少人狗之間的誤解，避免潛在的衝突。\r\n• 提高觀察和解讀能力，增進與狗狗的默契配合。', 'CR0000121.jpg', 1500, 1200, 240, '2024-02-22 10:39:38', NULL, 1),
(13, '壓力與情緒復原力講座', '當狗兒的壓力滿到臨界點時，可能會出現一些行為問題，本講座將教你如何識別與紓解狗兒的壓力，幫助牠們保持心理健康。', '• 學習識別狗狗的各種壓力源，預防不良行為的發生。\r\n• 掌握有效的壓力紓解方法，幫助狗狗保持心理健康。\r\n• 培養狗狗的情緒復原能力，應對各種生活挑戰。\r\n• 學習調整狗狗面對壓力時的行為反應，提高適應力。\r\n• 制定壓力預防和應對策略，確保狗狗的長期心理健康。', 'CR0000131.jpg', 1500, 1200, 193, '2024-03-10 18:45:42', NULL, 1),
(14, '狗狗社交講座(上) - 狗兒社交語言大解析', '掌握狗兒的社交語言與信號，正確判斷牠們的社交狀態，確保每次互動都能成為愉快的經驗，為牠們累積更多良好的社交經驗。', '• 深入解析狗狗的3大玩樂訊號，理解其社交意圖。\r\n• 學習識別6個關鍵社交肢體語言，提高互動質量。\r\n• 掌握4種不同互動狀態的判別技巧，確保安全社交。\r\n• 提高狗狗的社交能力，培養良好的群體行為。\r\n• 學習預防和處理社交衝突，建立和諧的狗群關係。', 'CR0000141.jpg', 1500, 1300, 85, '2024-03-13 06:56:53', NULL, 1),
(15, '社交講座(下) - 良好的社交守則', '社交挫敗可能導致狗兒出現攻擊行為，通過本講座，學習如何安排狗兒的社交活動，避免社交挫敗，幫助牠們重新建立良好的社交經驗。', '• 學習狗狗社交的基本禮儀，培養良好的群體行為。\r\n• 掌握建立積極社交經驗的方法，增強狗狗的自信心。\r\n• 學習預防社交中的攻擊行為，確保安全互動環境。\r\n• 掌握社交活動的規劃和管理技巧，優化狗狗社交。\r\n• 學習提高狗狗社交成功率的策略，建立良好人際關係。', 'CR0000151.jpg', 1500, 1200, 110, '2024-03-18 21:07:58', NULL, 1),
(16, '完整社交講座大合集', '看懂狗兒的社交語言，評估牠們的社交狀態，預防社交挫敗的發生，本講座將帶你全面掌握狗兒的社交語言與溝通技巧。', '• 全面掌握狗狗的社交語言，提高理解和溝通能力。\r\n• 學習評估狗狗的社交狀態，確保互動的安全性。\r\n• 掌握預防社交挫敗的技巧，建立正面社交體驗。\r\n• 學習促進狗狗間良好互動的方法，增進群體和諧。\r\n• 提升狗狗的社交技巧，幫助其建立健康的社交圈。', 'CR0000161.jpg', 2480, 2280, 202, '2024-03-21 13:37:07', NULL, 1),
(17, '嗅聞講座', '透過嗅聞，狗兒可以建構出一個世界！嗅聞對狗兒來說是很重要的需求和減壓方式，本講座將教你如何滿足這一需求並改善牠們的情緒。', '• 深入理解狗狗的嗅聞需求，認識其對狗狗的重要性。\r\n• 學習利用嗅聞活動作為減壓方式，改善狗狗情緒。\r\n• 掌握創建豐富嗅聞環境的技巧，滿足狗狗探索欲。\r\n• 了解嗅聞活動對狗狗身心健康的多重益處。\r\n• 學習如何通過嗅聞遊戲提高狗狗的認知能力。', 'CR0000171.jpg', 1450, 1200, 187, '2024-03-25 02:03:10', NULL, 1),
(18, '戶外狗兒也穩定！狗兒專注力 Level Up 訓練課程', '透過一整套以「人狗信任關係」為核心設計的訓練遊戲，鍛鍊狗兒的專注力和穩定性，並加強人狗之間的信任關係，提升訓練效果。', '• 學習9大指令訓練，提升狗狗戶外專注力和穩定性。\r\n• 掌握抓住狗狗注意力的技巧，增強戶外控制能力。\r\n• 學習培養狗狗3大關鍵能力，應對複雜戶外環境。\r\n• 強化人狗間的信任關係，提高訓練效果和互動品質。\r\n• 掌握戶外安全技巧，確保狗狗在各種環境中的安全。', 'CR0000181.jpg', 3100, 2900, 215, '2024-04-05 11:09:11', NULL, 1),
(19, '青少年狗！線上行為知識講座', '深入理解青少年狗的行為特徵，並學習如何管理與減少青少年狗在叛逆期的行為問題，幫助牠們健康成長，度過這一充滿挑戰的時期。', '• 深入理解青少年狗的行為特徵，適應這一特殊成長階段。\r\n• 學習建立情緒穩定管理方法，減少叛逆期的行為問題。\r\n• 掌握預防青少年期常見問題的策略，確保健康成長。\r\n• 學習針對青少年狗的特殊訓練技巧，提高訓練效果。\r\n• 強化人狗合作關係，共同度過充滿挑戰的青春期。', 'CR0000191.jpg', 1400, 1200, 131, '2024-04-18 15:12:19', NULL, 1),
(20, '玩出好狗兒！教會狗兒玩玩具、放嘴以及拾回', '與狗狗玩玩具能增加牠們的快樂清單，本講座將教你如何選擇合適的玩具，並通過遊戲增進你與狗狗之間的關係與互動。', '• 學習選擇合適玩具的技巧，增加狗狗的娛樂和刺激。\r\n• 掌握訓練狗狗放嘴的方法，建立良好的遊戲互動。\r\n• 學習教導狗狗拾回物品的技巧，增強互動和服從性。\r\n• 探索多種玩具遊戲方式，豐富狗狗的日常生活。\r\n• 通過玩具互動增進人狗關係，提高訓練效果。', 'CR0000201.jpg', 2100, 1900, 222, '2024-04-29 18:31:19', NULL, 1),
(21, '戶外遊戲、STAY及召回指令', '與狗狗在戶外一起玩遊戲，提升彼此的好感情並學會STAY和召回指令，確保關鍵時刻能夠召回狗狗，保證牠們的安全。', '• 學習設計有趣的戶外遊戲，增強狗狗的戶外適應能力。\r\n• 掌握STAY指令的訓練方法，提高狗狗的自制力。\r\n• 學習有效的召回技巧，確保狗狗在戶外的安全。\r\n• 提高狗狗對指令的反應速度，應對各種戶外情況。\r\n• 強化狗狗的安全意識，預防戶外潛在風險。', 'CR0000211.jpg', 2750, 2500, 148, '2024-05-06 04:48:21', NULL, 1),
(22, '帶狗出國二三事 - 狗兒出國分享會', '帶狗出國不是夢，本講座將教你如何準備出國所需的文件和訓練細節，確保旅途順利進行，為狗狗打造一個愉快的旅行體驗。', '• 全面了解帶狗出國的準備工作，確保旅行順利進行。\r\n• 學習辦理出國所需文件的流程，避免法律問題。\r\n• 掌握訓練狗狗適應飛行的技巧，減少旅途壓力。\r\n• 分享成功帶狗出國的經驗，學習實用的旅行技巧。\r\n• 了解不同國家的入境規定，做好充分的旅行準備。', 'CR0000221.jpg', 900, 650, 179, '2024-05-09 09:56:23', NULL, 1),
(23, 'Plenty in Life is Free - 導讀會', '深入探討狗狗行為的潛在動機，並重新思考人狗關係的本質，通過本講座，你將學會如何建立更和諧的相處模式與有效的教養策略。', '• 深入探討狗狗行為的潛在動機，提高訓練的針對性。\r\n• 重新思考人狗關係的本質，建立更和諧的相處模式。\r\n• 學習正向教養的實踐指南，改善日常互動品質。\r\n• 分析訓練方法對人狗關係的影響，優化訓練策略。\r\n• 學習成功案例，汲取實用的教養經驗和技巧。', 'CR0000231.jpg', 900, 650, 99, '2024-05-13 20:26:23', '2024-06-09 01:25:31', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `course_chapters`
--

CREATE TABLE `course_chapters` (
  `id` int(5) UNSIGNED NOT NULL,
  `course_id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `course_chapters`
--

INSERT INTO `course_chapters` (`id`, `course_id`, `name`) VALUES
(1, 1, '遊戲基礎與互動技巧'),
(2, 1, '進階遊戲設計'),
(3, 1, '遊戲在訓練中的應用'),
(4, 2, '教養基本原則'),
(5, 2, '常見行為問題解決'),
(6, 2, '教養技巧實踐'),
(7, 3, '飲食行為分析'),
(8, 3, '改善進食習慣'),
(9, 3, '預防和處理飲食問題'),
(10, 4, '洗澡準備與技巧'),
(11, 4, '美容過程管理'),
(12, 4, '美容後護理'),
(13, 5, '就醫前準備'),
(14, 5, '診療過程配合'),
(15, 5, '術後護理與康復'),
(16, 6, 'Chew Box介紹與使用'),
(17, 6, '咀嚼行為管理'),
(18, 6, '咀嚼在訓練中的應用'),
(19, 7, '高階訓練原理'),
(20, 7, '複雜行為塑造'),
(21, 7, '高級服從訓練'),
(22, 8, '狗狗需求理解'),
(23, 8, '安全感建立方法'),
(24, 8, '滿足需求的日常實踐'),
(25, 9, '正向教養基礎'),
(26, 9, '初階行為塑造'),
(27, 9, '正向強化技巧應用'),
(28, 10, '吠叫行為分析'),
(29, 10, '吠叫管理策略'),
(30, 10, '長期吠叫行為改善'),
(31, 11, '中階訓練理論'),
(32, 11, '複雜指令訓練'),
(33, 11, '環境適應能力培養'),
(34, 12, '基礎肢體語言解讀'),
(35, 12, '進階表情與姿態分析'),
(36, 12, '應用肢體語言改善溝通'),
(37, 13, '壓力來源識別'),
(38, 13, '壓力紓解技巧'),
(39, 13, '建立情緒復原力'),
(40, 14, '狗狗社交行為基礎'),
(41, 14, '社交互動分析'),
(42, 14, '提升社交技巧'),
(43, 15, '良好社交守則介紹'),
(44, 15, '社交問題處理'),
(45, 15, '建立積極社交經驗'),
(46, 16, '全面社交行為解析'),
(47, 16, '複雜社交情境應對'),
(48, 16, '高級社交技巧培養'),
(49, 17, '嗅聞行為的重要性'),
(50, 17, '設計嗅聞遊戲'),
(51, 17, '嗅聞在日常生活中的應用'),
(52, 18, '專注力訓練基礎'),
(53, 18, '戶外專注力培養'),
(54, 18, '高干擾環境中的穩定性'),
(55, 19, '青少年狗行為特點'),
(56, 19, '叛逆期行為管理'),
(57, 19, '青少年狗的社交化'),
(58, 20, '玩具選擇與介紹'),
(59, 20, '玩具互動技巧'),
(60, 20, '拾回訓練進階'),
(61, 21, '戶外遊戲安全準則'),
(62, 21, 'STAY指令強化'),
(63, 21, '高級召回訓練'),
(64, 22, '出國前準備工作'),
(65, 22, '旅途中的狗狗照顧'),
(66, 22, '應對國外環境變化'),
(67, 23, '理解Plenty in Life is Free'),
(68, 23, '應用無條件正向互動'),
(69, 23, '建立長期正向關係');

-- --------------------------------------------------------

--
-- 資料表結構 `course_imgs`
--

CREATE TABLE `course_imgs` (
  `id` int(5) UNSIGNED NOT NULL,
  `course_id` int(5) NOT NULL,
  `path` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `course_imgs`
--

INSERT INTO `course_imgs` (`id`, `course_id`, `path`) VALUES
(1, 1, 'summary15.png'),
(2, 1, 'summary14.png'),
(3, 1, 'summary13.png'),
(4, 2, 'summary12.png'),
(5, 2, 'summary10.png'),
(6, 2, 'summary9.png'),
(7, 3, 'summary8.png'),
(8, 3, 'summary7.png'),
(9, 3, 'summary6.jpg'),
(10, 4, 'summary5.jpg'),
(11, 4, 'summary4.jpg'),
(12, 4, 'summary3.jpg'),
(13, 5, 'summary2.jpg'),
(14, 5, 'summary1.png'),
(15, 5, 'touch.jpg'),
(16, 6, 'tips5.jpg'),
(17, 6, 'teach1.jpg'),
(18, 6, 'safe3.jpg'),
(19, 7, 'safe2.jpg'),
(20, 7, 'summary18.png'),
(21, 7, 'summary17.png'),
(22, 8, 'summary16.png'),
(23, 8, 'safe.jpgright2.jpg'),
(24, 8, 'right.jpg'),
(25, 9, 'massage.jpg'),
(26, 9, 'detail_info.jpg'),
(27, 9, 'summary15.png'),
(28, 10, 'summary14.png'),
(29, 10, 'summary13.png'),
(30, 10, 'summary12.png'),
(31, 11, 'summary10.png'),
(32, 11, 'summary9.png'),
(33, 11, 'summary8.png'),
(34, 12, 'summary7.png'),
(35, 12, 'summary6.jpg'),
(36, 12, 'summary5.jpg'),
(37, 13, 'summary4.jpg'),
(38, 13, 'summary3.jpg'),
(39, 13, 'summary2.jpg'),
(40, 14, 'summary1.png'),
(41, 14, 'touch.jpg'),
(42, 14, 'tips5.jpg'),
(43, 15, 'teach1.jpg'),
(44, 15, 'safe3.jpg'),
(45, 15, 'safe2.jpg'),
(46, 16, 'summary18.png'),
(47, 16, 'summary17.png'),
(48, 16, 'summary16.png'),
(49, 17, 'safe.jpgright2.jpg'),
(50, 17, 'right.jpg'),
(51, 17, 'massage.jpg'),
(52, 18, 'detail_info.jpg'),
(53, 18, 'summary15.png'),
(54, 18, 'summary14.png'),
(55, 19, 'summary13.png'),
(56, 19, 'summary12.png'),
(57, 19, 'summary10.png'),
(58, 20, 'summary9.png'),
(59, 20, 'summary8.png'),
(60, 20, 'summary7.png'),
(61, 21, 'summary6.jpg'),
(62, 21, 'summary5.jpg'),
(63, 21, 'summary4.jpg'),
(64, 22, 'summary3.jpg'),
(65, 22, 'summary2.jpg'),
(66, 22, 'summary1.png'),
(67, 23, 'touch.jpg'),
(68, 23, 'tips5.jpg'),
(69, 23, 'teach1.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `course_lessons`
--

CREATE TABLE `course_lessons` (
  `id` int(5) UNSIGNED NOT NULL,
  `chapter_id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `duration` varchar(5) NOT NULL,
  `video_path` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `course_lessons`
--

INSERT INTO `course_lessons` (`id`, `chapter_id`, `name`, `duration`, `video_path`) VALUES
(1, 1, '了解狗狗的遊戲需求', '19', 'training7.mp4'),
(2, 1, '建立良好的遊戲規則', '10', 'training8.mp4'),
(3, 1, '選擇適合的互動遊戲', '17', 'training8.mp4'),
(4, 2, '室內遊戲設計技巧', '18', 'training13.mp4'),
(5, 2, '戶外遊戲安全與樂趣', '20', 'training20.mp4'),
(6, 2, '多狗家庭的遊戲策略', '19', 'training12.mp4'),
(7, 3, '遊戲中的基礎訓練', '12', 'training11.mp4'),
(8, 3, '通過遊戲增進溝通', '18', 'training11.mp4'),
(9, 4, '正向教養的核心理念', '10', 'training18.mp4'),
(10, 4, '了解狗狗的發展階段', '10', 'training14.mp4'),
(11, 4, '建立清晰的溝通系統', '13', 'training9.mp4'),
(12, 5, '處理常見行為問題', '12', 'training20.mp4'),
(13, 5, '分離焦慮的預防與改善', '11', 'training15.mp4'),
(14, 5, '破壞行為的糾正技巧', '12', 'training18.mp4'),
(15, 6, '日常生活中的教養時機', '17', 'training19.mp4'),
(16, 6, '長期行為塑造的技巧', '15', 'training12.mp4'),
(17, 7, '了解狗狗的飲食心理', '14', 'training10.mp4'),
(18, 7, '分析常見的進食問題', '10', 'training20.mp4'),
(19, 7, '建立健康的飲食習慣', '15', 'training17.mp4'),
(20, 8, '選擇適合的飼料和餵食方式', '14', 'training15.mp4'),
(21, 8, '定時定量餵食的重要性', '13', 'training10.mp4'),
(22, 8, '改善挑食行為的方法', '15', 'training19.mp4'),
(23, 9, '預防食物攻擊行為', '12', 'training10.mp4'),
(24, 9, '處理異食癖的策略', '17', 'training15.mp4'),
(25, 10, '準備狗狗的心理狀態', '18', 'training12.mp4'),
(26, 10, '選擇合適的洗澡用品', '16', 'training2.mp4'),
(27, 10, '建立正面的洗澡經驗', '18', 'training11.mp4'),
(28, 11, '不同毛髮類型的護理', '13', 'training5.mp4'),
(29, 11, '安全使用美容工具', '10', 'training14.mp4'),
(30, 11, '處理美容過程中的應激', '12', 'training3.mp4'),
(31, 12, '洗澡後的皮膚護理', '18', 'training15.mp4'),
(32, 12, '日常毛髮維護技巧', '12', 'training18.mp4'),
(33, 13, '識別常見疾病症狀', '18', 'training8.mp4'),
(34, 13, '選擇合適的獸醫', '15', 'training5.mp4'),
(35, 13, '準備就醫所需物品', '18', 'training5.mp4'),
(36, 14, '與獸醫有效溝通', '17', 'training13.mp4'),
(37, 14, '協助檢查和治療', '12', 'training6.mp4'),
(38, 14, '減輕狗狗的就醫壓力', '18', 'training19.mp4'),
(39, 15, '術後護理基礎知識', '14', 'training7.mp4'),
(40, 15, '康復期活動管理', '14', 'training20.mp4'),
(41, 16, 'Chew Box的設計理念', '16', 'training2.mp4'),
(42, 16, '選擇適合的Chew Box', '17', 'training3.mp4'),
(43, 16, 'Chew Box的安全使用', '16', 'training8.mp4'),
(44, 17, '了解狗狗的咀嚼需求', '13', 'training5.mp4'),
(45, 17, '糾正不當咀嚼行為', '13', 'training19.mp4'),
(46, 17, '建立正面咀嚼習慣', '16', 'training9.mp4'),
(47, 18, 'Chew Box在訓練中的應用', '11', 'training11.mp4'),
(48, 18, '利用Chew Box緩解焦慮', '12', 'training12.mp4'),
(49, 19, '高階訓練的心理基礎', '12', 'training9.mp4'),
(50, 19, '建立穩固的訓練基礎', '15', 'training3.mp4'),
(51, 19, '提升狗狗的學習動機', '10', 'training20.mp4'),
(52, 20, '多步驟指令的訓練', '17', 'training14.mp4'),
(53, 20, '遠距離控制能力培養', '12', 'training3.mp4'),
(54, 20, '複雜環境中的行為塑造', '19', 'training4.mp4'),
(55, 21, '高級『停留』指令訓練', '10', 'training18.mp4'),
(56, 21, '精確的取物和放置訓練', '11', 'training3.mp4'),
(57, 22, '了解狗狗的基本需求', '12', 'training15.mp4'),
(58, 22, '狗狗的心理需求解析', '19', 'training6.mp4'),
(59, 22, '評估狗狗的需求滿足度', '16', 'training8.mp4'),
(60, 23, '創造安全的生活環境', '10', 'training20.mp4'),
(61, 23, '建立與主人的安全依戀', '19', 'training8.mp4'),
(62, 23, '處理分離焦慮問題', '13', 'training6.mp4'),
(63, 24, '平衡的日常生活安排', '16', 'training2.mp4'),
(64, 24, '滿足社交需求的方法', '17', 'training3.mp4'),
(65, 25, '正向教養的核心理念', '15', 'training4.mp4'),
(66, 25, '理解狗狗的學習過程', '14', 'training9.mp4'),
(67, 26, '基本指令的教學方法', '19', 'training5.mp4'),
(68, 26, '使用標記物進行訓練', '15', 'training15.mp4'),
(69, 26, '漸進式行為塑造技巧', '12', 'training2.mp4'),
(70, 27, '日常生活中的正向強化', '15', 'training10.mp4'),
(71, 27, '處理輕微行為問題', '17', 'training3.mp4'),
(72, 28, '了解不同類型的吠叫', '16', 'training11.mp4'),
(73, 28, '識別吠叫的觸發因素', '18', 'training6.mp4'),
(74, 28, '評估吠叫的嚴重程度', '11', 'training17.mp4'),
(75, 29, '制定吠叫管理計劃', '18', 'training10.mp4'),
(76, 29, '使用正向強化減少吠叫', '20', 'training11.mp4'),
(77, 29, '環境管理預防過度吠叫', '17', 'training18.mp4'),
(78, 30, '長期吠叫行為的改善策略', '12', 'training13.mp4'),
(79, 30, '處理根深蒂固的吠叫習慣', '13', 'training18.mp4'),
(80, 31, '設定中階訓練目標', '13', 'training2.mp4'),
(81, 31, '提升訓練的精確度', '14', 'training20.mp4'),
(82, 31, '增加訓練的持續時間', '15', 'training13.mp4'),
(83, 32, '複雜指令的訓練方法', '17', 'training8.mp4'),
(84, 32, '結合動作和聲音指令', '19', 'training1.mp4'),
(85, 32, '提高指令執行的可靠性', '18', 'training14.mp4'),
(86, 33, '不同環境下的訓練轉換', '10', 'training7.mp4'),
(87, 33, '應對戶外分心因素', '13', 'training15.mp4'),
(88, 34, '狗狗肢體語言的基礎', '16', 'training19.mp4'),
(89, 34, '解讀尾巴動作的含義', '19', 'training10.mp4'),
(90, 34, '耳朵和眼神的訊息', '19', 'training19.mp4'),
(91, 35, '識別壓力和焦慮信號', '10', 'training11.mp4'),
(92, 35, '理解攻擊性行為前兆', '15', 'training16.mp4'),
(93, 35, '解讀玩耍和友好行為', '14', 'training17.mp4'),
(94, 36, '利用肢體語言改善溝通', '18', 'training12.mp4'),
(95, 36, '在訓練中應用肢體語言', '14', 'training8.mp4'),
(96, 37, '識別狗狗的壓力來源', '16', 'training16.mp4'),
(97, 37, '了解壓力對行為的影響', '12', 'training16.mp4'),
(98, 37, '評估狗狗的壓力程度', '11', 'training12.mp4'),
(99, 38, '創造放鬆的家居環境', '12', 'training13.mp4'),
(100, 38, '使用遊戲和活動減壓', '13', 'training13.mp4'),
(101, 38, '音樂和氣味療法應用', '13', 'training17.mp4'),
(102, 39, '建立日常減壓習慣', '10', 'training15.mp4'),
(103, 39, '提升狗狗的抗壓能力', '15', 'training5.mp4'),
(104, 40, '狗狗社交行為的進化基礎', '17', 'training16.mp4'),
(105, 40, '解析狗狗的社交信號系統', '19', 'training3.mp4'),
(106, 40, '不同品種的社交特點', '19', 'training18.mp4'),
(107, 41, '識別友好和警戒的社交信號', '20', 'training2.mp4'),
(108, 41, '理解狗狗間的等級關係', '15', 'training7.mp4'),
(109, 41, '解讀狗狗的遊戲邀請', '11', 'training11.mp4'),
(110, 42, '評估狗狗的社交性格', '14', 'training7.mp4'),
(111, 42, '觀察群體中的社交動態', '13', 'training18.mp4'),
(112, 43, '建立狗狗社交的基本原則', '14', 'training4.mp4'),
(113, 43, '安全引導狗狗社交的技巧', '18', 'training7.mp4'),
(114, 43, '如何介紹狗狗認識新朋友', '12', 'training5.mp4'),
(115, 44, '處理社交中的緊張和衝突', '13', 'training4.mp4'),
(116, 44, '糾正過度熱情的社交行為', '19', 'training17.mp4'),
(117, 44, '協助害羞狗狗建立自信', '15', 'training4.mp4'),
(118, 45, '組織成功的狗狗社交活動', '12', 'training13.mp4'),
(119, 45, '利用遊戲促進社交發展', '15', 'training12.mp4'),
(120, 46, '全面解析狗狗社交行為', '13', 'training1.mp4'),
(121, 46, '不同年齡階段的社交需求', '11', 'training12.mp4'),
(122, 46, '群居動物的社交心理學', '14', 'training5.mp4'),
(123, 47, '多狗家庭的和諧共處之道', '20', 'training2.mp4'),
(124, 47, '大型犬群中的社交動態管理', '14', 'training3.mp4'),
(125, 47, '處理複雜社交問題的策略', '11', 'training10.mp4'),
(126, 48, '設計高階社交技能培訓計劃', '19', 'training2.mp4'),
(127, 48, '社交行為在工作犬培訓中的應用', '16', 'training17.mp4'),
(128, 49, '了解狗狗嗅覺的驚人能力', '14', 'training12.mp4'),
(129, 49, '嗅聞在狗狗生活中的重要性', '16', 'training8.mp4'),
(130, 49, '不同品種的嗅覺特點', '10', 'training1.mp4'),
(131, 50, '基礎嗅聞遊戲的設計原則', '11', 'training8.mp4'),
(132, 50, '室內嗅聞活動的創意方案', '17', 'training4.mp4'),
(133, 51, '將嗅聞活動融入日常生活', '19', 'training14.mp4'),
(134, 51, '利用嗅聞減輕分離焦慮', '18', 'training2.mp4'),
(135, 52, '了解狗狗注意力的特點', '20', 'training13.mp4'),
(136, 52, '評估狗狗的專注力水平', '12', 'training6.mp4'),
(137, 52, '專注力與年齡和品種的關係', '16', 'training2.mp4'),
(138, 53, '戶外環境中的注意力控制', '18', 'training12.mp4'),
(139, 53, '應對分心物的策略', '17', 'training11.mp4'),
(140, 53, '增加戶外訓練的難度', '15', 'training3.mp4'),
(141, 54, '高干擾環境中的穩定性訓練', '11', 'training5.mp4'),
(142, 54, '多重任務下的專注力維持', '18', 'training5.mp4'),
(143, 55, '認識青少年期的生理變化', '18', 'training4.mp4'),
(144, 55, '青少年狗的心理特點', '15', 'training20.mp4'),
(145, 55, '常見的青少年期行為問題', '14', 'training20.mp4'),
(146, 56, '調整訓練方法以適應青春期', '19', 'training5.mp4'),
(147, 56, '處理叛逆行為的策略', '15', 'training2.mp4'),
(148, 56, '管理過度活躍的能量', '18', 'training13.mp4'),
(149, 57, '促進青少年狗的社交發展', '18', 'training4.mp4'),
(150, 57, '建立健康的獨立性', '14', 'training10.mp4'),
(151, 58, '了解狗狗的玩具偏好', '11', 'training3.mp4'),
(152, 58, '選擇適合的玩具類型', '14', 'training14.mp4'),
(153, 58, '安全使用玩具的原則', '11', 'training17.mp4'),
(154, 59, '教導狗狗正確使用玩具', '16', 'training7.mp4'),
(155, 59, '培養「放嘴」指令', '19', 'training8.mp4'),
(156, 59, '解決玩具相關的問題行為', '14', 'training16.mp4'),
(157, 60, '拾回訓練的基礎', '18', 'training11.mp4'),
(158, 60, '增加拾回難度的方法', '11', 'training8.mp4'),
(159, 61, '設計安全的戶外遊戲', '13', 'training14.mp4'),
(160, 61, '增進戶外遊戲中的互動', '12', 'training2.mp4'),
(161, 61, '應對戶外環境的挑戰', '19', 'training18.mp4'),
(162, 62, 'STAY指令的基礎訓練', '20', 'training19.mp4'),
(163, 62, '增加STAY的時間和距離', '18', 'training7.mp4'),
(164, 62, '在不同環境中練習STAY', '12', 'training6.mp4'),
(165, 63, '建立可靠的召回反應', '16', 'training2.mp4'),
(166, 63, '處理召回中的干擾因素', '17', 'training2.mp4'),
(167, 64, '了解國際旅行的寵物規定', '14', 'training19.mp4'),
(168, 64, '準備必要的健康檢查和文件', '13', 'training17.mp4'),
(169, 64, '選擇合適的寵物運輸方式', '10', 'training20.mp4'),
(170, 65, '航空旅行中的狗狗護理', '17', 'training8.mp4'),
(171, 65, '應對時差和環境變化', '18', 'training20.mp4'),
(172, 65, '在新環境中安撫狗狗', '13', 'training18.mp4'),
(173, 66, '國外的寵物友好設施尋找', '13', 'training18.mp4'),
(174, 66, '處理國外緊急情況的準備', '16', 'training3.mp4'),
(175, 67, '理解PILIF的核心理念', '20', 'training7.mp4'),
(176, 67, 'PILIF與傳統訓練方法的對比', '17', 'training13.mp4'),
(177, 67, 'PILIF對狗狗心理的積極影響', '10', 'training7.mp4'),
(178, 68, '在日常生活中實踐PILIF', '14', 'training4.mp4'),
(179, 68, '利用PILIF改善行為問題', '16', 'training10.mp4'),
(180, 68, 'PILIF與正面強化的結合', '15', 'training7.mp4'),
(181, 69, '將PILIF應用於高級訓練', '20', 'training18.mp4'),
(182, 69, 'PILIF在多狗家庭中的應用', '14', 'training12.mp4');

-- --------------------------------------------------------

--
-- 資料表結構 `course_tag`
--

CREATE TABLE `course_tag` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `course_tag`
--

INSERT INTO `course_tag` (`id`, `name`) VALUES
(1, '外出禮儀'),
(2, '感情增溫'),
(3, '情緒穩定'),
(4, '狗兒社交'),
(5, '放鬆紓壓'),
(6, '狗拔麻必修課'),
(7, '線上行為知識講座'),
(8, '主題分享會'),
(9, '正向教養體驗式課程');

-- --------------------------------------------------------

--
-- 資料表結構 `course_tags`
--

CREATE TABLE `course_tags` (
  `id` int(5) UNSIGNED NOT NULL,
  `course_id` int(5) UNSIGNED NOT NULL,
  `tag_id` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `course_tags`
--

INSERT INTO `course_tags` (`id`, `course_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 2, 9),
(3, 3, 9),
(4, 3, 8),
(5, 4, 9),
(6, 4, 8),
(7, 5, 9),
(8, 5, 8),
(9, 6, 3),
(10, 6, 5),
(11, 7, 6),
(12, 7, 9),
(13, 8, 2),
(14, 8, 3),
(15, 8, 6),
(16, 8, 7),
(17, 9, 9),
(18, 10, 6),
(19, 10, 7),
(20, 11, 9),
(21, 12, 6),
(22, 12, 7),
(23, 13, 6),
(24, 13, 7),
(25, 14, 4),
(26, 14, 7),
(27, 15, 4),
(28, 15, 7),
(29, 16, 4),
(30, 16, 7),
(31, 17, 3),
(32, 17, 5),
(33, 17, 7),
(34, 18, 8),
(35, 19, 7),
(36, 20, 2),
(37, 20, 3),
(38, 20, 5),
(39, 21, 2),
(40, 21, 3),
(41, 21, 1),
(42, 22, 8),
(43, 23, 2),
(44, 23, 7);

-- --------------------------------------------------------

--
-- 資料表結構 `crs_perm`
--

CREATE TABLE `crs_perm` (
  `id` int(7) UNSIGNED NOT NULL,
  `user_id` int(7) UNSIGNED NOT NULL,
  `crs_id` mediumint(5) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `crs_perm`
--

INSERT INTO `crs_perm` (`id`, `user_id`, `crs_id`, `start_date`, `end_date`) VALUES
(1, 3, 15, '2022-07-17', NULL),
(2, 12, 12, '2022-07-27', NULL),
(3, 11, 8, '2022-11-21', NULL),
(4, 11, 10, '2022-11-21', NULL),
(5, 11, 12, '2022-11-21', NULL),
(6, 42, 15, '2022-12-12', NULL),
(7, 42, 16, '2022-12-12', NULL),
(8, 42, 17, '2022-12-12', NULL),
(9, 44, 5, '2022-12-27', NULL),
(10, 65, 9, '2023-03-22', NULL),
(11, 72, 3, '2023-05-11', NULL),
(12, 72, 13, '2023-05-11', NULL),
(13, 62, 6, '2023-05-25', NULL),
(14, 47, 4, '2023-07-25', NULL),
(15, 93, 3, '2023-08-03', NULL),
(16, 93, 4, '2023-08-03', NULL),
(17, 93, 5, '2023-08-03', NULL),
(18, 93, 6, '2023-08-03', NULL),
(19, 93, 7, '2023-08-03', NULL),
(20, 123, 8, '2023-08-10', NULL),
(21, 123, 9, '2023-08-10', NULL),
(22, 81, 8, '2023-08-25', NULL),
(23, 49, 21, '2023-08-29', NULL),
(24, 49, 23, '2023-08-29', NULL),
(25, 123, 10, '2023-09-04', NULL),
(26, 123, 11, '2023-09-04', NULL),
(27, 123, 12, '2023-09-04', NULL),
(28, 130, 16, '2023-09-10', NULL),
(29, 9, 22, '2023-10-07', NULL),
(30, 9, 1, '2023-10-07', NULL),
(31, 9, 3, '2023-10-07', NULL),
(32, 9, 5, '2023-10-07', NULL),
(33, 9, 7, '2023-10-07', NULL),
(34, 124, 3, '2023-10-10', NULL),
(35, 128, 23, '2023-11-04', NULL),
(36, 128, 2, '2023-11-04', NULL),
(37, 8, 19, '2023-11-05', NULL),
(38, 67, 14, '2023-11-11', NULL),
(39, 161, 12, '2023-12-20', NULL),
(40, 8, 19, '2023-12-20', NULL),
(41, 143, 12, '2023-12-20', NULL),
(42, 27, 18, '2023-12-21', NULL),
(43, 27, 21, '2023-12-21', NULL),
(44, 97, 12, '2023-12-26', NULL),
(45, 186, 23, '2023-12-30', NULL),
(46, 186, 8, '2023-12-30', NULL),
(47, 186, 16, '2023-12-30', NULL),
(48, 186, 1, '2023-12-30', NULL),
(49, 19, 11, '2024-01-16', NULL),
(50, 187, 6, '2024-01-18', NULL),
(51, 187, 9, '2024-01-18', NULL),
(52, 187, 12, '2024-01-18', NULL),
(53, 187, 15, '2024-01-18', NULL),
(54, 187, 18, '2024-01-18', NULL),
(55, 205, 7, '2024-01-19', NULL),
(56, 39, 17, '2024-01-28', NULL),
(57, 230, 13, '2024-01-30', NULL),
(58, 230, 16, '2024-01-30', NULL),
(59, 230, 19, '2024-01-30', NULL),
(60, 8, 19, '2024-02-04', NULL),
(61, 67, 6, '2024-02-11', NULL),
(62, 203, 15, '2024-02-20', NULL),
(63, 168, 22, '2024-03-22', NULL),
(64, 129, 8, '2024-03-31', NULL),
(65, 129, 12, '2024-03-31', NULL),
(66, 213, 11, '2024-03-31', NULL),
(67, 213, 13, '2024-03-31', NULL),
(68, 226, 15, '2024-04-11', NULL),
(69, 48, 12, '2024-04-13', NULL),
(70, 102, 15, '2024-04-29', NULL),
(71, 46, 8, '2024-05-07', NULL),
(72, 46, 11, '2024-05-16', NULL),
(73, 225, 21, '2024-05-17', NULL),
(74, 225, 2, '2024-05-17', NULL),
(75, 225, 6, '2024-05-17', NULL),
(76, 36, 20, '2024-06-03', NULL),
(77, 36, 10, '2024-06-03', NULL),
(78, 224, 4, '2024-06-12', NULL),
(79, 150, 9, '2024-06-17', NULL),
(80, 150, 23, '2024-06-17', NULL),
(81, 233, 13, '2024-06-24', NULL),
(82, 209, 12, '2024-06-27', NULL),
(83, 209, 16, '2024-06-27', NULL),
(84, 233, 17, '2024-07-12', NULL),
(85, 233, 21, '2024-07-12', NULL),
(86, 233, 2, '2024-07-12', NULL),
(87, 224, 18, '2024-07-16', NULL),
(88, 178, 23, '2024-07-19', NULL),
(89, 178, 17, '2024-07-19', NULL),
(90, 178, 11, '2024-07-19', NULL),
(91, 226, 2, '2024-07-19', NULL),
(92, 226, 12, '2024-07-19', NULL),
(93, 46, 14, '2024-07-20', NULL),
(94, 277, 1, '2024-07-28', NULL),
(95, 277, 4, '2024-07-28', NULL),
(96, 277, 7, '2024-07-28', NULL),
(97, 276, 20, '2024-08-02', NULL),
(98, 186, 9, '2024-08-04', NULL),
(99, 243, 13, '2024-08-08', NULL),
(100, 243, 13, '2024-08-08', NULL),
(101, 259, 20, '2024-08-08', NULL),
(102, 276, 3, '2024-08-10', NULL),
(103, 289, 20, '2024-08-11', NULL),
(104, 289, 2, '2024-08-11', NULL),
(105, 68, 9, '2024-08-12', NULL),
(106, 97, 21, '2024-08-13', NULL),
(107, 274, 12, '2024-08-16', NULL),
(108, 286, 16, '2024-08-24', NULL),
(109, 286, 4, '2024-08-24', NULL),
(110, 286, 15, '2024-08-24', NULL),
(111, 282, 21, '2024-08-26', NULL),
(112, 202, 15, '2024-08-26', NULL),
(113, 97, 7, '2024-08-28', NULL),
(114, 276, 9, '2024-08-31', NULL),
(115, 296, 17, '2024-09-01', NULL),
(116, 233, 6, '2024-09-04', NULL),
(117, 241, 14, '2024-09-05', NULL),
(118, 297, 22, '2024-09-09', NULL),
(119, 297, 2, '2024-09-09', NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `course_chapters`
--
ALTER TABLE `course_chapters`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `course_imgs`
--
ALTER TABLE `course_imgs`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `course_lessons`
--
ALTER TABLE `course_lessons`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `course_tag`
--
ALTER TABLE `course_tag`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `course_tags`
--
ALTER TABLE `course_tags`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `crs_perm`
--
ALTER TABLE `crs_perm`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `course_chapters`
--
ALTER TABLE `course_chapters`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `course_imgs`
--
ALTER TABLE `course_imgs`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `course_lessons`
--
ALTER TABLE `course_lessons`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `course_tag`
--
ALTER TABLE `course_tag`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `course_tags`
--
ALTER TABLE `course_tags`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `crs_perm`
--
ALTER TABLE `crs_perm`
  MODIFY `id` int(7) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
