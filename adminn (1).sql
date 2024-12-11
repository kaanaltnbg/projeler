-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 11 Ara 2024, 14:36:04
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `adminn`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `uploadimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `gallery`
--

INSERT INTO `gallery` (`id`, `uploadimage`) VALUES
(24, '/29198271372146029030images.jpeg'),
(25, '/20240277612350120861WhatsApp Image 2024-10-21 at 13.53.59.jpeg'),
(26, '/21265268972679522967Blue and Pink Soft Magazine Cover Mockup Instagram Post (2).jpg'),
(27, '/25597273942322425983brand1.png'),
(28, '/28080299542383527053372fd3_9e3bbc4dd332477680a7e49a1deb4a9e~mv2.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `page_id` int(11) NOT NULL,
  `page_slug` varchar(255) NOT NULL,
  `web_link` varchar(255) NOT NULL,
  `web_target` varchar(255) NOT NULL,
  `sorting` int(11) NOT NULL DEFAULT 999
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `content_type`, `page_id`, `page_slug`, `web_link`, `web_target`, `sorting`) VALUES
(1, 'Anasayfa', 0, 'page', 1, 'anasayfa', '', '', 1),
(2, 'Kurumsal', 0, 'web', 0, '', 'javascript:void(0);', '_self', 2),
(4, 'Hakkımızda', 2, 'page', 2, 'hakkimizda', '', '', 1),
(5, 'Vizyon & Misyon', 2, 'page', 3, 'vizyon-&-misyon', '', '', 2),
(6, 'Hizmetlerimiz', 0, 'page', 4, 'hizmetlerimiz', '', '', 3),
(7, 'Referanslar', 0, 'page', 6, 'referanslar', '', '', 5),
(8, 'İletişim', 0, 'page', 5, 'iletisim', '', '', 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `body`, `keywords`, `description`, `status`) VALUES
(1, 'Anasayfa', 'anasayfa', '', '', '', 1),
(2, 'Hakkımızda', 'hakkimizda', '<div class=\"about-area-1 space-bottom\" style=\"margin-top:60px;\"><div class=\"about1-shape-img shape-mockup\"><img class=\"about1-shape-img-1 spin\" src=\"assets/img/normal/about_shape1-2.svg\" alt=\"img\"> <img class=\"about1-shape-img-2 spin2\" src=\"assets/img/normal/about_shape1-1.svg\" alt=\"img\"></div><div class=\"container\"><div class=\"row gx-60 align-items-center\"><div class=\"col-xl-6\"><div class=\"about-thumb1 mb-40 mb-xl-0\"><div class=\"about-img-1\"><img src=\"assets/img/normal/about_1-1.png\" alt=\"img\"></div><div class=\"about-img-2\"><img src=\"assets/img/normal/about_1-2.png\" alt=\"img\"></div></div></div><div class=\"col-xl-6\"><div class=\"about-content-wrap\"><div class=\"title-area me-xl-5 mb-20\"><p><span class=\"sub-title\">BİZ KİMİZ</span></p><h2 class=\"sec-title\">Hakkımızda</h2><p class=\"sec-text\">Oto Servis olarak, otomotiv sektöründe uzun yıllardır edindiğimiz deneyimle araç sahiplerine en iyi hizmeti sunmayı hedefliyoruz. Her türlü araç bakım, onarım ve periyodik kontrol işlemlerini uzman ekibimizle birlikte, en yeni teknolojiye sahip ekipmanlarla gerçekleştiriyoruz. Amacımız, müşterilerimize güvenli, hızlı ve kaliteli hizmet sunarak, araçlarının her zaman en iyi performansta olmasını sağlamak.</p><p class=\"mt-20\">Sadece araç tamiri ile sınırlı kalmayıp, müşteri memnuniyetini ön planda tutan hizmet anlayışımızla da fark yaratıyoruz. Uzman ekibimiz, her marka ve model araç için gerekli bilgi birikimi ve tecrübeye sahip olup, her zaman en iyi çözümü sunmak için çalışıyor. Oto Servis\'te aracınızın güvende olduğundan emin olabilirsiniz.</p></div><div class=\"btn-wrap mt-30\"><a class=\"btn style2 mt-xxl-0 mt-20\" href=\"http://asdasdasd\" target=\"_blank\">Devamını Oku&nbsp;</a></div></div></div></div></div></div>', 'sadasd', 'dsddddddddddd', 1),
(3, 'Vizyon & Misyon', 'vizyon-&-misyon', '', '', '', 1),
(4, 'Hizmetlerimiz', 'hizmetlerimiz', '<div class=\"service-area-2 space overflow-hidden\" style=\"padding-top:60px !important;\"><div class=\"container\"><div class=\"row justify-content-center\"><div class=\"col-lg-6\"><div class=\"title-area text-center\"><p><span class=\"sub-title\">NELER YAPIYORUZ</span></p><h2 class=\"sec-title\">Hizmetlerimiz <img class=\"title-bg-shape shape-center\" src=\"assets/img/bg/title-bg-shape.png\" alt=\"img\"></h2></div></div></div></div><div class=\"container\"><div class=\"row gy-4 justify-content-center\"><div class=\"col-lg-4 col-md-6\"><div class=\"service-card style2\"><div class=\"service-card_content\" style=\"background-image:url(assets/img/service/service-2-1.png);\"><div><div class=\"service-card_icon\"><img src=\"assets/img/icon/service-icon_1-1.svg\" alt=\"img\"></div><h4 class=\"service-card_title h5\"><a href=\"#\">Motor &amp; Mekanik</a></h4><p class=\"service-card_text\">Motorunuzu kapsamlı bir şekilde inceleyerek, gerekli onarım ve bakım işlemlerini en kısa sürede gerçekleştiriyoruz.</p></div></div><p><a class=\"btn style4\" href=\"#\">Daha Fazla&nbsp;</a></p></div></div><div class=\"col-lg-4 col-md-6\"><div class=\"service-card style2\"><div class=\"service-card_content\" style=\"background-image:url(assets/img/service/service-2-2.png);\"><div><div class=\"service-card_icon\"><img src=\"assets/img/icon/service-icon_1-2.svg\" alt=\"img\"></div><h4 class=\"service-card_title h5\"><a href=\"#\">Oto Elektrik</a></h4><p class=\"service-card_text\">Aydınlatma, akü, marş motoru, alternatör ve elektronik sistemlerde uzman ekibimizle hızlı ve güvenilir oto elektrik hizmeti sunuyoruz.</p></div></div><p><a class=\"btn style4\" href=\"#\">Daha Fazla&nbsp;</a></p></div></div><div class=\"col-lg-4 col-md-6\"><div class=\"service-card style2\"><div class=\"service-card_content\" style=\"background-image:url(assets/img/service/service-2-3.png);\"><div><div class=\"service-card_icon\"><img src=\"assets/img/icon/service-icon_1-3.svg\" alt=\"img\"></div><h4 class=\"service-card_title h5\"><a href=\"#\">Ön Düzen</a></h4><p class=\"service-card_text\">Direksiyon, süspansiyon ve lastik hizalamasını doğru şekilde ayarlayarak, lastik aşınmasını önler ve güvenli bir sürüş sağlar.</p></div></div><p><a class=\"btn style4\" href=\"#\">Daha Fazla&nbsp;</a></p></div></div></div></div></div>', '', '', 1),
(5, 'İletişim', 'iletisim', '', '', '', 1),
(6, 'Referanslar', 'referanslar', '', '', '', 1),
(28, 'Motor & Mekanik', 'motor-&-mekanik', '', '', '', 1),
(29, 'Ön Düzen', 'on-duzen', '', '', '', 1),
(30, 'Oto Elektrik', 'oto-elektrik', '', '', '', 1),
(31, 'Lastik', 'lastik', '', '', '', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `title`) VALUES
(1, 'Oto Servis Kurumsal Web Sitesi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `src` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `link_title_1` varchar(255) NOT NULL,
  `link_url_1` varchar(255) NOT NULL,
  `link_title_2` varchar(255) NOT NULL,
  `link_url_2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`id`, `src`, `title`, `description`, `link_title_1`, `link_url_1`, `link_title_2`, `link_url_2`) VALUES
(1, '/25597273942322425983brand1.png', '', '', '', '', '', ''),
(2, '/25597273942322425983brand1.png', '', '', '', '', '', ''),
(3, '/25597273942322425983brand1.png', '', '', '', '', '', ''),
(4, '/25597273942322425983brand1.png', 'Doğru Ayar, Güvenli Yol!', 'Direksiyon ve süspansiyon sistemlerinizin ayarlarını en iyi şekilde yaparak, lastiklerinizi doğru hizalıyor ve yol tutuşunu mükemmelleştiriyoruz. ', 'Daha Fazla', 'https://bbrajans.com', 'İletişim', 'https://bbrajans.com/page/iletisim'),
(5, '/25597273942322425983brand1.png', 'Doğru Ayar, Güvenli Yol!', 'Direksiyon ve süspansiyon sistemlerinizin ayarlarını en iyi şekilde yaparak, lastiklerinizi doğru hizalıyor ve yol tutuşunu mükemmelleştiriyoruz. ', 'İletişimasd', 'https://bbrajans.com/page/iletisim', 'İletişimasds', 'https://bbrajans.com/page/iletisim');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `status`) VALUES
(1, 'web@bbrajans.com', '12345', 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
