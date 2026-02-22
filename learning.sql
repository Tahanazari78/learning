-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2026 at 05:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`title`, `content`) VALUES
('درباره ما', 'به وب‌سایت ما خوش آمدید؛ جایی که یادگیری برنامه‌نویسی را به ساده‌ترین، کاربردی‌ترین و جذاب‌ترین شکل ممکن تجربه می‌کنید.\r\nدر این سایت می‌توانید آموزش‌های متنوع برنامه‌نویسی را در حوزه‌های مختلف مانند طراحی وب، برنامه‌نویسی بک‌اند، فرانت‌اند، پایگاه داده و توسعه نرم‌افزار دنبال کنید.\r\n\r\nتمام دوره‌ها به‌صورت دسته‌بندی‌شده و مرحله‌به‌مرحله ارائه شده‌اند تا بتوانید متناسب با سطح دانش و هدف خود، مسیر یادگیری مناسبی را انتخاب کنید.\r\nآموزش‌ها به شکل پروژه‌محور طراحی شده‌اند تا با انجام تمرین‌های واقعی، مهارت‌های عملی و موردنیاز بازار کار را کسب کنید.\r\n\r\nدر کنار آموزش‌ها، نکات کاربردی، راهکارهای بهینه‌نویسی و تجربیات عملی ارائه شده تا مسیر یادگیری شما سریع‌تر و هدفمندتر شود.\r\nرابط کاربری سایت ساده و کاربرپسند طراحی شده تا تمرکز شما فقط روی یادگیری باشد.\r\n\r\nشما می‌توانید روند پیشرفت خود را دنبال کرده، تمرین‌ها را مرور کنید و مهارت‌های خود را به‌مرور تقویت نمایید.\r\nبا ما یاد می‌گیرید، تمرین می‌کنید و برای ورود به دنیای حرفه‌ای برنامه‌نویسی آماده می‌شوید.');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `aid` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`aid`, `question_id`, `text`, `score`) VALUES
(114, 37, 'count', 0),
(115, 37, 'strlen', 1),
(116, 37, 'length', 0),
(117, 37, 'strcount', 0),
(118, 38, 'array_key_exists', 0),
(119, 38, 'isset', 0),
(120, 38, 'in_array', 1),
(121, 38, 'array_search', 0),
(122, 39, 'implode', 0),
(123, 39, 'explode', 1),
(124, 39, 'split', 0),
(125, 39, 'str_split', 0),
(126, 40, 'تعداد کاراکترهای یک رشته را برمی‌گرداند', 0),
(127, 40, 'تعداد عناصر یک آرایه را برمی‌گرداند', 1),
(128, 40, 'تعداد فایل‌ها در یک پوشه را می‌شمارد', 0),
(129, 40, 'تعداد توابع تعریف‌شده را نمایش می‌دهد', 0),
(130, 41, 'link', 0),
(131, 41, 'a', 1),
(132, 41, 'href', 0),
(133, 42, 'img', 1),
(134, 42, 'image', 0),
(135, 42, 'picture', 0),
(136, 43, 'src', 0),
(137, 43, 'link', 0),
(138, 43, 'href', 1),
(139, 44, 'h1', 1),
(140, 44, 'head', 0),
(141, 44, 'title', 0),
(142, 45, 'p', 0),
(143, 45, 'hr', 1),
(144, 45, 'br', 0),
(145, 46, 'ul', 0),
(146, 46, 'li', 0),
(147, 46, 'ol', 1),
(148, 47, 'font-color', 0),
(149, 47, 'text-color', 0),
(150, 47, 'color', 1),
(151, 48, 'absolute', 0),
(152, 48, 'fixed', 1),
(153, 48, 'relative', 0),
(154, 49, 'margin', 0),
(155, 49, 'padding', 1),
(156, 49, 'border', 0),
(157, 50, 'align-text', 0),
(158, 50, 'text-align', 1),
(159, 50, 'vertical-align', 0),
(160, 51, 'px', 0),
(161, 51, 'em', 1),
(162, 51, '%', 0),
(163, 52, 'display: none', 0),
(164, 52, 'visibility: hidden', 1),
(165, 52, 'opacity: 0', 0),
(166, 53, 'print', 0),
(167, 53, 'echo', 0),
(168, 53, 'console.log', 1),
(169, 53, 'alert.log', 0),
(170, 54, 'const', 0),
(171, 54, 'static', 0),
(172, 54, 'var', 0),
(173, 54, 'let', 1),
(174, 55, 'add', 0),
(175, 55, 'append', 0),
(176, 55, 'push', 1),
(177, 55, 'insert', 0),
(178, 56, '==', 0),
(179, 56, '=', 0),
(180, 56, '!=', 0),
(181, 56, '===', 1),
(182, 57, 'onload', 0),
(183, 57, 'onchange', 0),
(184, 57, 'onclick', 1),
(185, 57, 'onhover', 0);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) NOT NULL,
  `catid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` text DEFAULT NULL,
  `content` longtext NOT NULL,
  `pic` varchar(255) NOT NULL,
  `video` text DEFAULT NULL,
  `view` int(11) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `catid`, `title`, `summary`, `content`, `pic`, `video`, `view`, `created_at`) VALUES
(1, 3, 'آموزش پروژه محور php', 'زبان برنامه نویسی PHP یکی از زبان های برنامه نویسی سمت سرور است که کاربرد اصلی آن، در پیاده سازی وب سایت های دینامیکی (پویا) است. عبارت PHP در ابتدا مخفف Personal Home Page (صفحه خانگی شخصی) بود که بعدها، با یک مخفف سازی مجدد، به صورت PHP: Hypertext Preprocessor تبدیل شد تا مفهوم جامع تری را شامل شود.\n\nاین زبان برنامه نویسی در سال 1994 توسط راسموس لردورف (Rasmus Lerdorf) و به صورت یک سری توابع کتابخانه ای با زبان C پیاده سازی شد. در فاصله کوتاهی، نسخه دوم PHP نیز توسط لردورف ارائه گردید. البته تا آن زمان، به زحمت می شد عنوان «زبان برنامه نویسی» را برای PHP استفاده کرد. اما در سال 1997، این زبان برنامه نویسی به شدت متحول شد. دو نفر به نام های زیو سوراسکی (Zeev Suraski) و اندی گاتمنز (Andy Gutmans) هسته اصلی PHP را بازنویسی کردند و به این ترتیب نسخه سوم PHP متولد شد.', '<p>\r\n	زبان برنامه&zwnj;نویسی PHP چیست؟<br />\r\n	<br />\r\n	زبان برنامه نویسی PHP یکی از زبان های برنامه نویسی سمت سرور است که کاربرد اصلی آن، در پیاده سازی وب سایت های دینامیکی (پویا) است. عبارت PHP در ابتدا مخفف Personal Home Page (صفحه خانگی شخصی) بود که بعدها، با یک مخفف سازی مجدد، به صورت PHP: Hypertext Preprocessor تبدیل شد تا مفهوم جامع تری را شامل شود.<br />\r\n	<br />\r\n	این زبان برنامه نویسی در سال 1994 توسط راسموس لردورف (Rasmus Lerdorf) و به صورت یک سری توابع کتابخانه ای با زبان C پیاده سازی شد. در فاصله کوتاهی، نسخه دوم PHP نیز توسط لردورف ارائه گردید. البته تا آن زمان، به زحمت می شد عنوان &laquo;زبان برنامه نویسی&raquo; را برای PHP استفاده کرد. اما در سال 1997، این زبان برنامه نویسی به شدت متحول شد. دو نفر به نام های زیو سوراسکی (Zeev Suraski) و اندی گاتمنز (Andy Gutmans) هسته اصلی PHP را بازنویسی کردند و به این ترتیب نسخه سوم PHP متولد شد.<br />\r\n	<br />\r\n	اهمیت یادگیری زبان برنامه&zwnj;نویسی PHP چیست؟<br />\r\n	<br />\r\n	بازنویسی هسته PHP و ایجاد موتور پردازشی زند (Zend Engine) تحول بزرگی را در مسیر و تاریخچه زبان برنامه نویسی PHP ایجاد کرد، و در طی 10 سال، این زبان برنامه نویسی، تبدیل به مهم ترین ابزار برای پیاده سازی پروژه های وب دینامیکی شد.<br />\r\n	<br />\r\n	در کنار پیاده سازی بسیاری از پروژه های سفارشی با استفاده از PHP، بسیاری از سیستم های مدیریت محتوای متن باز و عمومی، توسط PHP پیاده سازی شده اند، که در ادامه فهرستی از آن ها آمده است:<br />\r\n	<br />\r\n	&nbsp; &nbsp; وردپرس یا WordPress (پرکاربردترین و رایج ترین سیستم مدیریت محتوای جهان)<br />\r\n	<br />\r\n	&nbsp; &nbsp; جوملا یا Joomla (یکی از سیستم های مدیریت محتوای قوی و پر طرفدار)<br />\r\n	<br />\r\n	&nbsp; &nbsp; دروپال یا Drupal (یکی از سیستم های مدیریت محتوای قوی و پر طرفدار)<br />\r\n	<br />\r\n	&nbsp; &nbsp; اوپن کارت یا OpenCart (یک سیستم فروشگاه ساز قوی و ساده)<br />\r\n	<br />\r\n	&nbsp; &nbsp; پرستاشاپ یا PrestaShop (یک سیستم فروشگاه ساز قوی)<br />\r\n	<br />\r\n	&nbsp; &nbsp; مدیاویکی یا MediaWiki (سیستم مدیریت محتوای ویکی پدیا و سایت های مشابه)<br />\r\n	<br />\r\n	&nbsp; &nbsp; مجنتو یا Magento (یکی از قوی ترین سیستم های فروشگاه ساز)<br />\r\n	<br />\r\n	&nbsp; &nbsp; وی بولتن یا vBulletin (پر کاربردترین سیستم انجمن ساز یا فوریوم)<br />\r\n	<br />\r\n	زبان برنامه نویسی PHP از نظر گرامر و شیوه پیاده سازی، تحت تاثیر زبان های برنامه نویسی سی (C)، سی پلاس پلاس (C++&lrm;)، جاوا (Java) و پرل (Perl) بوده است. البته سخت گیری های رایج و موجود در زبان های کامپایلری، در زبان برنامه نویسی PHP بسیار کم رنگ تر هستند و برنامه نویسی با PHP بسیار ساده و آسان است.<br />\r\n	<br />\r\n	در این فرادرس چه چیزی و چگونه یاد می&zwnj;گیریم؟<br />\r\n	<br />\r\n	در مجموعه فرادرس های آموزش برنامه نویسی PHP، تمامی نکات و مهارت های عملی مورد نیاز برای ورود به دنیای جذاب برنامه نویسی تحت وب و پیاده سازی وب سایت های دینامیکی، به ساده ترین و روان ترین شکل ممکن، و به صورت کاملا عملی توسط دکتر سید مصطفی کلامی هریس، آموزش داده شده است. این مجموعه آموزشی، از نظر نظم منحصر به فردی که در روند آموزش و ترتیب مطالب دارد، بسیار خاص است و در ارائه آن، از تجارب موفق ارائه بیش از یکصد ساعت آموزش برنامه نویسی زبان های مختلف در فرادرس، استفاده شده است.<br />\r\n	<br />\r\n	جدیدترین نسخه زبان برنامه نویسی PHP نسخه 7 است که برای انتشار نهایی در سال 2015 میلادی برنامه ریزی شده است. از این رو، در این مجموعه آموزشی در کنار مطالب و مباحث مربوطه به PHP 5.6، ویژگی های جدید مربوط به PHP 7 نیز مورد بحث و بررسی واقع شده اند.<br />\r\n	<br />\r\n	<br />\r\n	سرفصل&zwnj;ها<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس یکم: آشنایی با زبان برنامه نویسی PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; تاریخچه زبان برنامه نویسی PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بررسی نحوه عملکرد و اجرای یک برنامه PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; نصب XAMPP برای راه اندازی سرور محلی (Local Host)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; پیاده سازی و اجرای نخستین برنامه PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; آشنایی با شبه تابع echo<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; نصب محیط توسعه (IDE) نت بینز (NetBeans) برای توسعه برنامه های PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; نحوه لینک بین XAMPP و NetBeans<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; توسعه برنامه ابتدایی نوشته شده با PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; فراخوانی تابع phpinfo برای دریافت اطلاعات سرور و ماژول PHP در سرور<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; تگ های php برای تلفیق HTML و PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; نحوه درج توضیح یا کامنت در برنامه های PHP<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس دوم: متغیرها، انواع داده ها و ثوابت<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; متغیرها و کاربردهای آن ها<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; انواع داده ها در PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; توابع مربوط به تشخیص نوع توابع<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; تشخیص متغیرهای خالی<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; تشخیص متغیرهای تعریف شده<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; نمایش جزئیات یک متغیر در مرورگر<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; تبدیل انواع یا Type Casting<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; عملگرها<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; عملگرهای محاسباتی<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; عملگرهای تخصیص و مقداردهی<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; عملگرهای کاهش و افزایش<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; عملگرهای رشته های کاراکتری<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; عملگرهای رابطه ای و قیاسی<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; عملگرهای منطقی<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; عملگرهای بیتی<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; عملگر شرطی و حالات مختلف آن<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; عملگرهای جدید در PHP 7<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; اولویت عملگرها در PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; تعریف مقادیر ثابت (Constants) در PHP<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس سوم: ساختارهای کنترل برنامه - عبارات شرطی و تصمیم گیری<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; دستور if و حالات مختلف آن<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; دستور switch و حالات آن<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; پیاده سازی مثال های مختلف برای نمایش کاربرد ساختارهای شرطی و تصمیم گیری<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس چهارم: ساختارهای کنترل برنامه - حلقه های تکرار<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; حلقه تکرار while برای پیاده سازی تکرار نامشخص و/یا نامحدود<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; حلقه تکرار do-while برای پیاده سازی حلقه با حداقل یک اجرا<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; حلقه تکرار for برای پیاده سازی حلقه های مشخص و/یا محدود<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; پیاده سازی مثال های مختلف برای نمایش کاربرد ساختارهای تکرار<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس پنجم: آرایه ها در PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; نحوه تعریف آرایه ها در PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; تعریف کلیدهای عدد صحیح<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; تعریف کلیدهای غیر عددی<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; تغییر عناصر یک آرایه<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; افزودن عنصر جدید به آرایه ها<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; عملگرهای مربوط به آرایه ها<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; توابع مهم و کاربردی برای کار با آرایه ها در PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; اشاره گرهای آرایه در PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; حلقه تکرار foreach برای حرکت بر روی عناصر یک آرایه<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ارائه مثال های متنوع برای کاربردهای آرایه در PHP<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس ششم: رشته ها<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; نحوه تعریف رشته ها در PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; تعریف با استفاده از علامت گفتار یگانه (Single Quotation Mark)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; تعریف با استفاده از علامت گفتار دوگانه (Double Quotation Mark)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; تعریف رشته با استفاده از روش Heredoc<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; تعریف رشته با استفاده از روش Nowdoc<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; متغیرهای با نام متغیر<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; رشته ها به عنوان آرایه<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; توابع مهم و کاربردی رشته ها در PHP<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس هفتم: توابع و مقدمه ای بر برنامه نویسی ماژولار (پیمانه ای)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; نحوه تعریف توابع<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; تعریف آرگومان ها و پارامترهای ورودی توابع<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; تعریف خروجی برای توابع<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; حوزه تعریف متغیرها<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; متغیرهای سراسری (Global)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; متغیرهای ایستا (Static)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; مقادیر پیش فرض برای پارامترهای ورودی<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ضمیمه کردن فایل های جانبی<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بررسی وجود یک تابع با استفاده از تابع function_exists<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; توابع تو در تو یا Nested Functions<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; تعریف متغیرهای مرجع یا Reference<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ورودی های از نوع مرجع در توابع<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; خروجی های از نوع مرجع در توابع<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; توابع ناشناس (ضمنی) یا Anonymous Function<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ارث بری متغیرهای از اسکوپ مادر (والد)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ویژگی های جدید PHP 7 برای تعریف توابع<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; محدودیت نوع<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; تعیین نوع ورودی<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; نعیین نوع خروجی<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس هشتم: اشکال زدایی و مدیریت حالات استثنائی<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; نمایش پیام هاو جزئیات در خصوص متغیرها<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; کاربرد تابع error_reporting برای مدیریت نمایش پیام های خطا و هشدار<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بلوک try/catch/finally برای مدیریت حالات استثنائی یا Exception Handling<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بررسی کلاس Exception<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; کاربرد دستور throw برای ایجاد خطای دلخواه<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس نهم: اطلاعات مربوط به سرور و ثابت های خاص<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; دریافت اطلاعات سرور و درخواست با $_SERVER<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; مولفه های مربوط به آرایه اطلاعات سرور<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; توابث خاص<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; دریافت خط جاری با __LINE__<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; دریافت فایل جاری با __FILE__<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; دریافت مسیر فایل جاری با __DIR__<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; دریافت نام تابع جاری با __FUNCTION__<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; دریافت نام کلاس جاری با __CLASS__<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; دریافت متد جاری با __METHOD__<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; دریافت فضای نام جاری با __NAMESPACE__<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس دهم: فرم های وب و مدیریت درخواست ها<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; انتقال اطلاعات میان صفحات وب<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; روش GET برای ارسال اطلاعات و درخواست<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; روش POST برای ارسال اطلاعات و درخواست<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; استفاده از $_GET برای دریافت ویژگی های منتقل شده با روش GET<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; استفاده از $_POST برای دریافت ویژگی های منتقل شده با روش POST<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; پیاده سازی فرم های وب با روش GET و POST<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; آرایه سراسری $_REQUEST<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; آماده سازی داده برای ارسال از طریق روش GET<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس یازدهم: مدیریت کوکی یا Cookie<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; کوکی چیست؟<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; تاریخ انقضای کوکی<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; نحوه تنظیم کوکی با استفاده از تابع setcookie<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; کوکی های ساده و کوکی های آرایه ای<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; دریافت اطلاعات کوکی های تعریف شده توسط آرایه سراسری $_COOKIE<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; حذف یک کوکی با تابع unset<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بررسی امکان تعریف کوکی ها و فعال بودن آن ها در مرورگر کاربر<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس دوازدهم: مدیریت جلسه، نشست یا Session<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; آشنایی با مفهوم نشست یا Session<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; شروع نشست کاری با session_start<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; تعریف متغیرهای نشست با استفاده از آرایه سراسری $_SESSION<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بررسی وجود متغیر های نشست<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; حذف اطلاعات نشست به صورت جزئی و کلی<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; دریافت شناسه نشست<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس سیزدهم: هدرها (Headers)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; کاربرد تابع header برای ارسال هدرهای خام<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بررسی ارسال هدرهای<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; استخراج کد پاسخ دریافتی از هدر<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; فهرست هدرهای دریافت شده<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس چهاردهم: کار با فایل ها و پوشه ها (الف)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; سیستم فایل در PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; هماهنگ سازی آدرس های یونیکس (UNIX) و ویندوز (Windows)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; توابع مهم و کاربردی برای مدیریت فایل ها و پوشه ها<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; استخراج اطلاعات مورد نیاز از مسیر فایل و دایرکتوری<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; تابع basename برای استخراج نام اصلی از روی مسیر<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; تابع dirname برای استخراج نام دایرکتوری (پوشه) از روی مسیر<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; تابع pathinfo برای استخراج اطلاعات از مسیر فایل<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; بررسی ویژگی های فایل و دایرکتوری با توابع:<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; بررسی وجود فایل با file_exists<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; چک کردن فایل یا دایرکتوری بودن با is_file و is_dir<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; محاسبه اندازه فایل با filesize<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; چک کردن وضعیت خواندنی و نوشتنی بودن فایل با is_readable و is_writable<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; مدیریت پوشه&zwnj;ها<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ایجاد دایرکتوری با mkdir<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; حذف دایرکتوری با rmdir<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس پانزدهم: کار با فایل ها و پوشه ها (ب)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بررسی محتوای دایرکتوری ها و فهرست فایل های داخل آن<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; تابع scandir<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; توابع opendir، closedir و readdir<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; تابع glob<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; کپی، انتقال و حذف فایل ها<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; تابع copy برای کپی کردن فایل<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; تابع rename برای تغییر نام و انتقال فایل<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; تابع unlink برای حذف فایل<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; مدیریت مالکیت، مود و گروه فایل&zwnj; ها<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; تغییر مالک فایل با chown<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; تغییر مود یا حالت دسترسی فایل با chmod<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; تغییر گروه فایل با chgrp<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس شانزدهم: کار با فایل ها و پوشه ها (پ)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; خواندن و نوشتن محتوای فایل ها با توابعfile ، file_get_contents و file_put_contents<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; خواندن محتوای فایل با readfile<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; خواندن و نوشتن اطلاعات در فرمت سریالی با توابع serialize و unserialize<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; خواندن و نوشتن اطلاعات در فرمت JSON (جیسون) با توابع json_encode و json_decode<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس هفدهم: کار با فایل ها و پوشه ها (ت)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; باز کردن فایل با fopen<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بستن هندل فایل با fclose<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; چک کردن برای رسیدن به پایان فایل با تابع feof<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; خواندن اطلاعات از فایل با توابع fread ،fgets ،fgetc و stream_get_contents<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; نوشتن اطلاعات در فایل با fputs و fwrite<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ایجاد فایل های موقتی یا تمپ (Temporary) با tnpfile و tempnam<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; استخراج مسیر فایل های موقتی در سیستم با sys_get_temp_dir<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس هجدهم: پایگاه داده مبتنی بر فایل با فلینت استون FlintStone<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; معرفی سیستم فلینت استون (سنگ چخماق)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بررسی نحوه کارکرد فلینت استون<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; راه اندازی و نصب فلینت استون<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ایجاد یک پروژه ساده با پایگاه داده فلینت استون<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس نوزدهم: مدیریت پایگاه داده با SQLite<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بررسی اهمیت پایگاه داده در پروژه های وب<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; معرفی کتابخانه و استاندارد SQLite برای مدیریت پایگاه داده<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; راهنمای عملی استفاده از SQLite در php:<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ایجاد آبجکت SQLite3<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; فراخوانی و اجرای کوئری (Query) در SQLite<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ایجاد جدول<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; بررسی فرمت فایل SQLite<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; اجرای فرمان های رایج SQL در سیستم SQLite<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; پیاده سازی عملیات و مکانیزم CRUD<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ایجاد یا Create<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; خواندن یا Read<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; به روز رسانی یا Update (نوشتن)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; حذف یا Delete<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس بیستم / درس بیست و یکم / درس بیست و دوم: پیاده سازی یک پروژه وب کامل و ساده<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; آشنایی با توئیتر بوت استرپ (Twitter Bootstrap) برای طراحی ظاهر سایت<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; نصب و راه اندازی نسخه راست چین (RTL) بوت استرپ با فونت یکان<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; پیاده سازی گام به گام یک پروژه وب<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; آشنایی با فایل htaccess و ریرایت کردن (Rewriting) مسیرها<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; پیاده سازی دیتابیس مبتنی بر SQLite<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; پیاده سازی ماژول مسیر یابی<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; پیاده سازی مکانیزم CRUD برای کاربران و تنظیمات<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; پیاده سازی ماژوی احراز هویت و کاربران<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ایجاد نوار پیمایش یا Navigation<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; فرم ورود به سیستم<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ایجاد ماژول های بدون نیاز به ورود به سیستم (با دسترسی عمومی)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ایجاد ماژول های نیازمند ورود به سیستم<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; خروج از سیستم<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; مباحث تکمیلی و نکات مهم در مسیر پیاده سازی پروژه های وب<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس بیست و سوم: بافر خروجی یا Output Buffering<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; مفهوم و کاربرد بافر خروجی<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; شروع بافر خروجی با ob_start<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; پاک سازی بافر خروجی با ob_clean و ob_flush<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; دریافت محتوای بافر خروجی با ob_get_clean و ob_get_flush و ob_get_contents<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بستن بافر خروجی با ob_end_clean و ob_end_flush<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس بیست و چهارم: امن سازی و اعتبارسنجی فرم ها<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بررسی خطرات ناشی از کاربرد آرایه های سراسری مانند $_GET، $_POST و $_SERVER<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; خطر حمله اسکریپ بین سایت یا XSS (مخفف: Cross-Site Scripting)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; امن سازی فرم های وب با حذف کاراکترهای مشکوک<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بررسی و امن سازی ورودی های به دست آمده از فرم ها<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بررسی فیلدهای فرم ها<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; اعتبارسنجی فیلدها با استفاده از تابع filter_var<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; فیلتر FILTER_VALIDATE_EMAIL برای تصدیق ایمیل<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; فیلتر FILTER_VALIDATE_INT برای تصدیق اعداد صحیح<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; فیلتر FILTER_VALIDATE_FLOAT برای تصدیق اعداد با ممیز<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; فیلتر FILTER_VALIDATE_IP برای تصدیق آدرس آی پی یا IP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; فیلتر FILTER_VALIDATE_URL برای تصدیق آدرس اینترنتی یا URL<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس بیست و پنجم: پیاده سازی یک برنامه محاسبات آماری<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ایجاد فرم حاوی کنترل textarea برای دریافت ورودی چند خطی<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بازگردانی ورودی های قبلی ارسال شده<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بررسی متن چند خطی ورودی و استخراج اعداد از آن<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; پیاده سازی محاسبات آماری<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; محاسبه تعداد<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; محاسبه مجموع<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; محاسبه میانگین<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; محاسبه واریانس و انحراف معیار<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; پیاده سازی محاسبات بر روی آرایه ها با استفاده از تابع array_map<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس بیست و ششم: استفاده از کرل یا cURL در PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; کرل یا cURL چیست؟<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; کاربردهای cURL<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; آغاز یک نشست cURL<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; اجرای یک نشست cURL<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ارسال اطلاعات از طریق cURL<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; دریافت نتیجه اجرای cURL<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ارسال اطلاعات میان دو وب سایت، دامنه یا اسکریپت از طریق cURL<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; تنظیمات cURL در PHP<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس بیست و هفتم: کتابخانه GD برای کارهای گرافیکی در PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; آشنایی با کتابخانه توابع گرافیکی GD<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ایجاد تصاویر در GD<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ترسیم اشکال هندسی و متن ها در GD<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ارسال خروجی حاصل از GD<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; کاربرد تابع header برای ایجاد تصاویر دینامیکی<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; پروژه عملی: امن سازی آدرس های ایمیل با تبدیل به تصویر<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ایجاد یک تصویر کپچا (CAPTCHA)<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس بیست و هشتم: مدیریت پایگاه داده با MySQL و phpMyAdmin<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; آشنایی با سرویس mysql<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; اجرای mysql در زمپ (XAMPP)<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; کنسول mysql<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; آشنایی با phpMyAdmin<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ایجاد دیتابیس جدید<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ایجاد کاربر و دسترسی به دیتابیس<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ایجاد جدول جدید<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; به کار بردن دیتابیس های mysql از طریق PHP<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; اینترفیس قدیمی مبتنی بر مجموعه توابع mysql<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; اینترفیس جدید مبتنی بر کلاس mysqli<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; اینترفیس PDO یا آبجکت های داده ای PHP یا PHP Data Objects<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; پیاده سازی برنامه ارتباط با دیتابیس با هر سه اینترفیس به صورت گام به گام<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; بررسی تنظیمات و توابع تکمیلی<br />\r\n	<br />\r\n	&nbsp; &nbsp; درس بیست و نهم / درس سی ام (پایانی): پروژه ایجاد یک سیستم مدیریت محتوا یا CMS ساده با استفاده از PHP و MySQL<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ایجاد و پیکربندی پایگاه داده MySQL در محیط phpMyAdmin<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; تبدیل پروژه جلسه بیست و دوم از SQLite به MySQL<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; رفع برخی نواقص و بهبود عملکرد سیستم<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ایجاد جدول صفحات<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ایجاد صفحات نمونه از طریق دیتابیس<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; نمایش محتوای صفحات<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; نمایش فهرست صفحات<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; افزودن ویژگی پنهان شوندگی (Hidden) به صفحات<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; ایجاد مکانیزم ویرایش و ایجاد صفحات جدید توسط کاربر<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; جمع بندی مباحث و نهایی سازی CMS سفارشی ایجاد شده</p>\r\n', '1767694785_fvrphp101.svg', '1767694785_php.mp4', 16, 1767694785),
(2, 3, 'آموزش پروژه‌ محور پی اچ پی – طراحی سایت فروشگاهی با PHP', 'در دنیای امروز، طراحی وب‌سایت‌های حرفه‌ای، به یکی از مهم‌ترین و محبوب‌ترین حوزه‌های دنیای فناوری اطلاعات تبدیل شده است. در هر وب‌سایتی نیاز است که یک بخش به عنوان پنل مدیریت وجود داشته باشد که از طریق آن، بتوان موجودی محصول، لیست محصولات، سفارشات و مشتریان را کنترل کرد.\r\n\r\nPHP به عنوان یکی از زبان‌های برنامه‌نویسی پرکاربرد و قدرتمند در زمینه توسعه وب، امکانات فراوانی را برای ساخت و توسعه سایت‌های فروشگاهی فراهم می‌کند. با یادگیری طراحی و پیاده‌سازی سایت فروشگاهی با PHP، توسعه‌دهندگان می‌توانند سایت‌های فروشگاهی پویا، امن و کارآمدی را طراحی و پیاده‌سازی کنند که از جمله مزیت‌های آن می‌توان به افزایش فروش و درآمد سایت، بهبود تجربه خرید کاربران، مدیریت موثر محتوا و محصولات، پیگیری سفارشات و مدیریت مالی، اشاره کرد. ', '<div class=\"font-bold flex-shrink break-words title-md-demibold text-fds-primary text-ellipsis whitespace-nowrap overflow-hidden\">\r\n	فصل ۱. فرم ورود کاربر</div>\r\n<div class=\"w-full flex flex-col\">\r\n	<div class=\"sm:py-fds-10 py-fds-16 relative \">\r\n		<div class=\"cursor-pointer sm:px-fds-24 px-fds-16 hover:bg-fds-canvas-primary justify-between  w-full py-fds-10 flex items-center\">\r\n			<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n				<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-secondary\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-primary\">\r\n		نصب و راه&zwnj;اندازی نرم&zwnj;افزارهای مورد نیاز</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۰۴:۳۳</span><svg aria-label=\"play icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-brand\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		ایجاد پایگاه داده و جداول</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۵:۲۱</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		طراحی فرم ورود کاربر</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۹:۵۸</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-secondary\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-primary\">\r\n		اعتبارسنجی فرم ورود کاربر</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۴:۵۹</span><svg aria-label=\"play icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-brand\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		پیاده&zwnj;سازی فرم ورود کاربر</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۸:۳۹</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex justify-between items-center box-border cursor-pointer h-auto py-fds-10 md:py-fds-12 pl-fds-8 pr-fds-20 bg-fds-secondary border-t border-fds-default rounded-b-none border-b\">\r\n	<div class=\"font-bold flex-shrink break-words title-md-demibold text-fds-primary text-ellipsis whitespace-nowrap overflow-hidden\">\r\n		فصل ۲. نمایش پیام</div>\r\n</div>\r\n<div class=\"w-full flex flex-col\">\r\n	<div class=\"sm:py-fds-10 py-fds-16 relative \">\r\n		<div class=\"cursor-pointer sm:px-fds-24 px-fds-16 hover:bg-fds-canvas-primary justify-between  w-full py-fds-10 flex items-center\">\r\n			<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n				<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-secondary\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-primary\">\r\n		بررسی SweetAlert</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۰۸:۰۸</span><svg aria-label=\"play icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-brand\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		استفاده از SweetAlert برای نمایش پیام</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۷:۰۶</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex justify-between items-center box-border cursor-pointer h-auto py-fds-10 md:py-fds-12 pl-fds-8 pr-fds-20 bg-fds-secondary border-t border-fds-default rounded-b-none border-b\">\r\n	<div class=\"font-bold flex-shrink break-words title-md-demibold text-fds-primary text-ellipsis whitespace-nowrap overflow-hidden\">\r\n		فصل ۳. طراحی فروشگاه اینترنتی</div>\r\n</div>\r\n<div class=\"w-full flex flex-col\">\r\n	<div class=\"sm:py-fds-10 py-fds-16 relative \">\r\n		<div class=\"cursor-pointer sm:px-fds-24 px-fds-16 hover:bg-fds-canvas-primary justify-between  w-full py-fds-10 flex items-center\">\r\n			<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n				<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-secondary\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-primary\">\r\n		طراحی منو</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۶:۳۰</span><svg aria-label=\"play icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-brand\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		طراحی فروشگاه اینترنتی</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۲:۳۰</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		شخصی&zwnj;سازی فروشگاه اینترنتی</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۰۷:۱۲</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		انتخاب آیکن&zwnj;های مناسب</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۹:۱۷</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex justify-between items-center box-border cursor-pointer h-auto py-fds-10 md:py-fds-12 pl-fds-8 pr-fds-20 bg-fds-secondary border-t border-fds-default\">\r\n	<div class=\"font-bold flex-shrink break-words title-md-demibold text-fds-primary text-ellipsis whitespace-nowrap overflow-hidden\">\r\n		فصل ۴. فرم ورود مدیر</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"w-full overflow-hidden transition-max-height duration-300 ease-linear\" style=\"max-height: 0px;\">\r\n		<div class=\"w-full flex flex-col\">\r\n			&nbsp;</div>\r\n	</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"flex justify-between items-center box-border cursor-pointer h-auto py-fds-10 md:py-fds-12 pl-fds-8 pr-fds-20 bg-fds-secondary border-t border-fds-default\">\r\n		<div class=\"font-bold flex-shrink break-words title-md-demibold text-fds-primary text-ellipsis whitespace-nowrap overflow-hidden\">\r\n			فصل ۵. پنل مدیریت</div>\r\n	</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"w-full overflow-hidden transition-max-height duration-300 ease-linear\" style=\"max-height: 0px;\">\r\n		<div class=\"w-full flex flex-col\">\r\n			&nbsp;</div>\r\n	</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"flex justify-between items-center box-border cursor-pointer h-auto py-fds-10 md:py-fds-12 pl-fds-8 pr-fds-20 bg-fds-secondary border-t border-fds-default\">\r\n		<div class=\"font-bold flex-shrink break-words title-md-demibold text-fds-primary text-ellipsis whitespace-nowrap overflow-hidden\">\r\n			فصل ۶. فرم افزودن محصول</div>\r\n	</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"w-full overflow-hidden transition-max-height duration-300 ease-linear\" style=\"max-height: 0px;\">\r\n		<div class=\"w-full flex flex-col\">\r\n			&nbsp;</div>\r\n	</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"flex justify-between items-center box-border cursor-pointer h-auto py-fds-10 md:py-fds-12 pl-fds-8 pr-fds-20 bg-fds-secondary border-t border-fds-default\">\r\n		<div class=\"font-bold flex-shrink break-words title-md-demibold text-fds-primary text-ellipsis whitespace-nowrap overflow-hidden\">\r\n			فصل ۷. لیست محصولات</div>\r\n	</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"w-full overflow-hidden transition-max-height duration-300 ease-linear\" style=\"max-height: 0px;\">\r\n		<div class=\"w-full flex flex-col\">\r\n			&nbsp;</div>\r\n	</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"flex justify-between items-center box-border cursor-pointer h-auto py-fds-10 md:py-fds-12 pl-fds-8 pr-fds-20 bg-fds-secondary border-t border-fds-default\">\r\n		<div class=\"font-bold flex-shrink break-words title-md-demibold text-fds-primary text-ellipsis whitespace-nowrap overflow-hidden\">\r\n			فصل ۸. لیست کاربران</div>\r\n	</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"w-full overflow-hidden transition-max-height duration-300 ease-linear\" style=\"max-height: 0px;\">\r\n		<div class=\"w-full flex flex-col\">\r\n			&nbsp;</div>\r\n	</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"flex justify-between items-center box-border cursor-pointer h-auto py-fds-10 md:py-fds-12 pl-fds-8 pr-fds-20 bg-fds-secondary border-t border-fds-default\">\r\n		<div class=\"font-bold flex-shrink break-words title-md-demibold text-fds-primary text-ellipsis whitespace-nowrap overflow-hidden\">\r\n			فصل ۹. پیاده&zwnj;سازی فروشگاه اینترنتی</div>\r\n	</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"w-full overflow-hidden transition-max-height duration-300 ease-linear\" style=\"max-height: 0px;\">\r\n		<div class=\"w-full flex flex-col\">\r\n			&nbsp;</div>\r\n	</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"flex justify-between items-center box-border cursor-pointer h-auto py-fds-10 md:py-fds-12 pl-fds-8 pr-fds-20 bg-fds-secondary border-t border-fds-default\">\r\n		<div class=\"font-bold flex-shrink break-words title-md-demibold text-fds-primary text-ellipsis whitespace-nowrap overflow-hidden\">\r\n			فصل ۱۰. سبد خرید</div>\r\n	</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"w-full overflow-hidden transition-max-height duration-300 ease-linear\" style=\"max-height: 0px;\">\r\n		<div class=\"w-full flex flex-col\">\r\n			&nbsp;</div>\r\n	</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"flex justify-between items-center box-border cursor-pointer h-auto py-fds-10 md:py-fds-12 pl-fds-8 pr-fds-20 bg-fds-secondary border-t border-fds-default\">\r\n		<div class=\"font-bold flex-shrink break-words title-md-demibold text-fds-primary text-ellipsis whitespace-nowrap overflow-hidden\">\r\n			فصل ۱۱. لیست سفارشات</div>\r\n	</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"w-full overflow-hidden transition-max-height duration-300 ease-linear\" style=\"max-height: 0px;\">\r\n		<div class=\"w-full flex flex-col\">\r\n			&nbsp;</div>\r\n	</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"flex justify-between items-center box-border cursor-pointer h-auto py-fds-10 md:py-fds-12 pl-fds-8 pr-fds-20 bg-fds-secondary border-t border-fds-default\">\r\n		<div class=\"font-bold flex-shrink break-words title-md-demibold text-fds-primary text-ellipsis whitespace-nowrap overflow-hidden\">\r\n			فصل ۱۲. راهنمایی ادامه مسیر</div>\r\n	</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"w-full overflow-hidden transition-max-height duration-300 ease-linear\" style=\"max-height: 0px;\">\r\n		<div class=\"w-full flex flex-col\">\r\n			&nbsp;</div>\r\n	</div>\r\n</div>\r\n<div class=\"w-full\">\r\n	<div class=\"flex justify-between items-center box-border cursor-pointer h-auto py-fds-10 rounded-b-12 md:py-fds-12 pl-fds-8 pr-fds-20 bg-fds-secondary border-t border-fds-default\">\r\n		<div class=\"font-bold flex-shrink break-words title-md-demibold text-fds-primary text-ellipsis whitespace-nowrap overflow-hidden\">\r\n			فایل&zwnj;های همراه</div>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '1767700600_fvphp315.svg', '', 11, 1767700600);
INSERT INTO `articles` (`id`, `catid`, `title`, `summary`, `content`, `pic`, `video`, `view`, `created_at`) VALUES
(3, 2, 'آموزش اچ تی ام ال – طراحی وب با HTML ', 'واژه HTML (اچ‌‌تی‌‌ام‌ال) مخفف Hyper Text Markup Language به معنی زبان نشانه‌‌گذاری فوق متن است. HTML به عنوان زبان بنیادی طراحی وب، یکی از ساده‌ترین زبان‌های کامپیوتری است که با استفاه از آن می‌توانیم اسکلت اصلی وب‌سایت را طراحی کنیم.\r\n\r\nHTML از تگ‌ها یا نشانگرهای خاص برای نشان دادن محتوا و ساختار صفحات استفاده می‌کند، این تگ‌ها به مرورگر اعلام می‌‌کنند، که هر بخش از صفحه چه نوع عنصری است و باید به چه صورت نمایش داده شود.', '<div class=\"font-bold flex-shrink break-words title-md-demibold text-fds-primary text-ellipsis whitespace-nowrap overflow-hidden\">\r\n	فصل ۱. آموزش HTML اچ تی ام ال برای طراحی وب - مقدماتی</div>\r\n<div class=\"w-full flex flex-col\">\r\n	<div class=\"sm:py-fds-10 py-fds-16 relative \">\r\n		<div class=\"cursor-pointer sm:px-fds-24 px-fds-16 hover:bg-fds-canvas-primary justify-between  w-full py-fds-10 flex items-center\">\r\n			<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n				<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-secondary\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-primary\">\r\n		مقدمات HTML</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۲۹:۱۴</span><svg aria-label=\"play icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-brand\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		تگ های Text Formatting</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۵:۴۹</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		Link Building</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۳:۲۶</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		عکس ها در صفحه وب</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۵:۱۳</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		مروری بر CSS</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۴:۴۶</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		لیست ها</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۰:۵۷</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		جدول</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۷:۵۸</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		تگ div</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۳:۲۰</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-secondary\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-primary\">\r\n		فرم در صفحه وب</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۷:۳۱</span><svg aria-label=\"play icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-brand\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		مدیا در صفحه وب</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۰:۴۹</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		تگ های درون head و مفهوم DOCTYPE</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۱۲:۰۲</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 h-4 md:w-5 md:h-5 text-fds-icon-secondary\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-primary\">\r\n		مروری مختصر بر رنگ ها</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">۰۵:۴۴</span><svg aria-label=\"play icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-brand\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 md:w-5 h-4 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		ادامه مسیر تا ورود به بازار کار</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">درس متنی</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 md:w-5 h-4 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		آزمون ۱</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex justify-between items-center box-border cursor-pointer h-auto py-fds-10 md:py-fds-12 pl-fds-8 pr-fds-20 bg-fds-secondary border-t border-fds-default rounded-b-none border-b\">\r\n	<div class=\"font-bold flex-shrink break-words title-md-demibold text-fds-primary text-ellipsis whitespace-nowrap overflow-hidden\">\r\n		فصل ۲. تمرین&zwnj;ها</div>\r\n</div>\r\n<div class=\"w-full flex flex-col\">\r\n	<div class=\"sm:py-fds-10 py-fds-16 relative \">\r\n		<div class=\"sm:px-fds-24 px-fds-16 hover:bg-fds-canvas-primary justify-between  w-full py-fds-10 flex items-center\">\r\n			<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n				<svg class=\"ml-2 grow-0 shrink-0 w-4 md:w-5 h-4 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		تمرین ۱ - کار با پاراگراف&zwnj;ها</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">درس متنی</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 md:w-5 h-4 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		تمرین ٢ - نقشه قابل کلیک</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">درس متنی</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 md:w-5 h-4 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		تمرین ۳ - ایجاد صفحه وب چند ستونه</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">درس متنی</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 md:w-5 h-4 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		تمرین ۴ - طراحی فرم</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">درس متنی</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 md:w-5 h-4 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		تمرین ۵ - طراحی قالب سه ستونه</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">درس متنی</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<svg class=\"ml-2 grow-0 shrink-0 w-4 md:w-5 h-4 md:h-5 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex items-center w-[calc(100%-90px)] \">\r\n	<p class=\"body-sm md:body-md text-ellipsis whitespace-nowrap overflow-hidden ml-2  text-fds-secondary\">\r\n		تمرین ۶ - طراحی صفحه لندینگ</p>\r\n</div>\r\n<div class=\"flex grow shrink-0 justify-end items-center\">\r\n	<span class=\"body-md text-fds-tertiary \">درس متن</span><svg aria-label=\"lock icon\" aria-labelledby=\"titleId\" class=\"mr-fds-12 grow-0 shrink-0 w-5 h-5 md:w-6 md:h-6 text-fds-icon-disable\" fill=\"none\" height=\"24\" viewbox=\"0 0 24 24\" width=\"24\" xmlns=\"http://www.w3.org/2000/svg\"></svg></div>\r\n<div class=\"flex justify-between items-center box-border cursor-pointer h-auto py-fds-10 md:py-fds-12 pl-fds-8 pr-fds-20 bg-fds-secondary border-t border-fds-default rounded-b-none border-b\">\r\n	<div class=\"font-bold flex-shrink break-words title-md-demibold text-fds-primary text-ellipsis whitespace-nowrap overflow-hidden\">\r\n		&nbsp;</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '1767701461_fvh4c94062-png.webp', '', 4, 1767701461);

-- --------------------------------------------------------

--
-- Table structure for table `azmoon`
--

CREATE TABLE `azmoon` (
  `ID` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `description` text NOT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `azmoon`
--

INSERT INTO `azmoon` (`ID`, `title`, `userid`, `catid`, `description`, `pic`, `created_at`, `active`) VALUES
(9, 'آزمون شناخت توابع php', 5, 3, 'این آزمون برای سنجش میزان آشنایی شما با توابع پرکاربرد PHP طراحی شده است.\r\nسؤالات شامل توابع رشته‌ای، آرایه‌ای و توابع عمومی PHP هستند و سطح آن مقدماتی تا متوسط در نظر گرفته شده است.\r\nهر سؤال چهارگزینه‌ای است و فقط یک گزینه صحیح دارد.', 'php_function.png', 1767701854, 1),
(10, 'آزمون شناخت HTML', 5, 2, 'این آزمون برای ارزیابی میزان شناخت شما از مفاهیم پایه و تگ‌های پرکاربرد HTML طراحی شده است.\r\nسؤالات در سطح مقدماتی هستند و برای افرادی که به‌تازگی HTML را شروع کرده‌اند یا قصد مرور دارند مناسب است.\r\nهر سؤال سه‌گزینه‌ای بوده و فقط یک پاسخ صحیح دارد.', 'html.png', 1767718584, 1),
(11, 'آزمون آشنایی با css', 5, 1, 'این آزمون برای سنجش آشنایی شما با مفاهیم پایه و پراستفاده CSS طراحی شده است.\r\nسؤالات در سطح مقدماتی هستند و برای مرور سریع یا ارزیابی اولیه دانش CSS مناسب‌اند.\r\nهر سؤال سه‌گزینه‌ای بوده و فقط یک پاسخ صحیح دارد.', 'css.png', 1767719203, 1),
(12, 'آزمون شناخت javascript', 5, 5, 'این آزمون برای سنجش آشنایی شما با مفاهیم پایه و توابع پرکاربرد JavaScript طراحی شده است.\r\nسؤالات در سطح مقدماتی هستند و برای مرور سریع یا ارزیابی اولیه دانش جاوا اسکریپت مناسب‌اند.\r\nهر سؤال چهارگزینه‌ای بوده و فقط یک پاسخ صحیح دارد.', 'javascript.png', 1767719695, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(10) NOT NULL,
  `ctitle` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `ctitle`, `pic`) VALUES
(1, 'آموزش css', 'css.jpg'),
(2, 'آموزش html', 'html.png'),
(3, 'آموزش php', 'php.jpg'),
(4, 'آموزش Python', 'python.jpg'),
(5, 'آموزش جاوا اسکریپت', 'js.png'),
(6, 'آموزش react', 'react.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `subject`, `content`, `created_at`) VALUES
(2, 'احسان', 'ehsan@gmail.com', NULL, NULL, 'سایت بسیار خوبی دارید موفق باشید', 1759778479);

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` int(10) UNSIGNED NOT NULL,
  `sitename` varchar(255) NOT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `sitename`, `tel`, `mobile`, `email`, `address`, `whatsapp`, `instagram`, `telegram`) VALUES
(1, 'آموزش برنامه نویسی', '02179428', '09215948494', 'info@learning.com', 'ایران - قم', 'whatsapp', 'instagram', 'telegram');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(10) NOT NULL,
  `title` text NOT NULL,
  `azid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `title`, `azid`) VALUES
(37, 'کدام تابع برای محاسبه طول یک رشته در PHP استفاده می‌شود؟', 9),
(38, 'کدام تابع برای بررسی وجود یک مقدار در آرایه استفاده می‌شود؟', 9),
(39, 'کدام تابع برای جدا کردن رشته بر اساس یک جداکننده استفاده می‌شود؟', 9),
(40, 'تابع count() در PHP چه کاری انجام می‌دهد؟', 9),
(41, 'کدام تگ برای ایجاد لینک در HTML استفاده می‌شود؟', 10),
(42, 'کدام تگ برای نمایش تصویر در HTML استفاده می‌شود؟', 10),
(43, 'کدام ویژگی (attribute) برای مشخص کردن آدرس لینک استفاده می‌شود؟', 10),
(44, 'کدام تگ برای ایجاد عنوان اصلی صفحه مناسب‌تر است؟', 10),
(45, 'کدام تگ برای شکستن خط (رفتن به خط بعد) استفاده می‌شود؟', 10),
(46, 'کدام تگ برای ساخت لیست شماره‌دار استفاده می‌شود؟', 10),
(47, 'کدام خاصیت برای تغییر رنگ متن در CSS استفاده می‌شود؟', 11),
(48, 'کدام مقدار از position باعث می‌شود عنصر نسبت به مرورگر (viewport) ثابت بماند؟', 11),
(49, 'کدام خاصیت برای ایجاد فاصله داخلی بین محتوا و کادر عنصر استفاده می‌شود؟', 11),
(50, 'برای وسط‌چین کردن متن داخل یک عنصر از کدام خاصیت استفاده می‌شود؟', 11),
(51, 'کدام واحد اندازه‌گیری نسبت به اندازه فونت عنصر والد محاسبه می‌شود؟', 11),
(52, 'کدام خاصیت برای مخفی کردن یک عنصر بدون حذف فضای آن استفاده می‌شود؟', 11),
(53, 'کدام دستور برای نمایش پیام در کنسول مرورگر استفاده می‌شود؟', 12),
(54, 'کدام روش برای تعریف متغیر قابل تغییر در JavaScript استفاده می‌شود؟', 12),
(55, 'کدام متد برای اضافه کردن یک عنصر به انتهای آرایه استفاده می‌شود؟', 12),
(56, 'کدام عملگر برای مقایسه مقدار و نوع داده به‌صورت هم‌زمان استفاده می‌شود؟', 12),
(57, 'کدام رویداد هنگام کلیک کاربر روی یک عنصر اجرا می‌شود؟', 12);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `rid` int(11) NOT NULL,
  `azid` int(11) NOT NULL,
  `min_score` int(11) NOT NULL,
  `max_score` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`rid`, `azid`, `min_score`, `max_score`, `title`, `content`) VALUES
(1, 9, 0, 1, 'ضعیف', 'نیاز به تلاش بیشتری دارید'),
(2, 9, 2, 3, 'خوب', 'آفرین با کمی مطالعه بهتر خواهید شد'),
(3, 9, 3, 4, 'عالی', 'شما شناخت بسیار کاملی از این زبان دارید'),
(4, 11, 0, 2, 'ضعیف', 'نیاز به تلاش بیشتری برای آموزش و یادگیری دارید.'),
(5, 11, 3, 4, 'خوب', 'با ساختار css به خوبی آشنا هستید و با تلاش مضاعف نتایج بهتری بدست خواهید آورد.'),
(6, 11, 5, 6, 'عالی', 'شما به صورت کامل با css آشنا هستید و می توانید خود را یک متخصص فرانت بدانید.'),
(7, 12, 0, 2, 'ضعیف', 'نیاز به تلاش بیشتر دارید.'),
(8, 12, 3, 4, 'خوب', 'مطالعه و آموزش باعث یاد گیری بیشتر شما می شود.'),
(9, 12, 5, 6, 'عالی', 'خیلی خوب هست موفق باشید.'),
(10, 10, 0, 2, 'ضعیف', 'تلاشتو بیشتر کن'),
(11, 10, 3, 4, 'خوب', 'آموزش های خوبی داری بیشترش کنی بیشتر یاد میگیری'),
(12, 10, 5, 6, 'عالی', 'آفرین تو یه متخصص فرانت حرفه ای هستی.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `family` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `name`, `family`, `pic`, `tel`, `age`, `email`, `username`, `password`, `status`, `created_at`) VALUES
(4, 'محمدطه', 'نظری', '', '09215948494', 27, 'tahanazari@gmail.com', 'tahanazari', '81dc9bdb52d04dc20036dbd8313ed055', 2, 1771343354),
(5, 'معلم', 'تست', '', '09123456789', NULL, 'teacheer@gmail.com', 'teacher', '81dc9bdb52d04dc20036dbd8313ed055', 1, 1771345029),
(6, 'دانشجو', 'تست', '1771345442boy-red-jacket_1308-37236.avif', '09351235469', 27, 'student@gmail.com', 'student', '81dc9bdb52d04dc20036dbd8313ed055', 0, 1771345039);

-- --------------------------------------------------------

--
-- Table structure for table `user_answers`
--

CREATE TABLE `user_answers` (
  `uid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `azid` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `attempt_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_answers`
--

INSERT INTO `user_answers` (`uid`, `user_id`, `azid`, `question_id`, `answer_id`, `attempt_date`) VALUES
(19, 6, 12, 53, 169, '1771345629'),
(20, 6, 12, 54, 171, '1771345629'),
(21, 6, 12, 55, 176, '1771345629'),
(22, 6, 12, 56, 181, '1771345629'),
(23, 6, 12, 57, 183, '1771345629');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `azmoon`
--
ALTER TABLE `azmoon`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`),
  ADD KEY `azid` (`azid`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `azid` (`azid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `azid` (`azid`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `answer_id` (`answer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `azmoon`
--
ALTER TABLE `azmoon`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `fk_question_id` FOREIGN KEY (`question_id`) REFERENCES `questions` (`qid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `azmoon`
--
ALTER TABLE `azmoon`
  ADD CONSTRAINT `fk_cat_id` FOREIGN KEY (`catid`) REFERENCES `category` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `fk_azmoon_id` FOREIGN KEY (`azid`) REFERENCES `azmoon` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `fk_result_id` FOREIGN KEY (`azid`) REFERENCES `azmoon` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD CONSTRAINT `fk_answer_id` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_answer_id` FOREIGN KEY (`azid`) REFERENCES `azmoon` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_question_id` FOREIGN KEY (`question_id`) REFERENCES `questions` (`qid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
