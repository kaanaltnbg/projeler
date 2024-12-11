-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 11 Ara 2024, 16:36:39
-- Sunucu sürümü: 8.0.40-cll-lve
-- PHP Sürümü: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bbrajans_panel`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `activity`
--

CREATE TABLE `activity` (
  `id` int NOT NULL,
  `yapan` int NOT NULL,
  `icerik` text COLLATE utf8mb4_general_ci NOT NULL,
  `tarih` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `activity`
--

INSERT INTO `activity` (`id`, `yapan`, `icerik`, `tarih`) VALUES
(96, 1, 'Kaan Altunbağ, 37 numaralı işin durumunu Yeni olarak güncelledi.', '2024-09-03 17:51:50'),
(97, 1, 'Kaan Altunbağ, 37 numaralı işin atamasını 1 kişisi olarak güncelledi.', '2024-09-03 17:53:07'),
(98, 1, 'Kaan Altunbağ, 44 numaralı işin atamasını 0 kişisi olarak güncelledi.', '2024-09-03 17:54:10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `isler`
--

CREATE TABLE `isler` (
  `is_id` int NOT NULL,
  `is_firma` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `is_tanimi` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `is_detayi` text COLLATE utf8mb4_general_ci NOT NULL,
  `is_atanan` int NOT NULL,
  `is_olusturan` int NOT NULL,
  `is_olusturmatarihi` datetime NOT NULL,
  `is_durum` int NOT NULL,
  `is_dosya` varchar(250) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `isler`
--

INSERT INTO `isler` (`is_id`, `is_firma`, `is_tanimi`, `is_detayi`, `is_atanan`, `is_olusturan`, `is_olusturmatarihi`, `is_durum`, `is_dosya`) VALUES
(37, 'Çinkom', 'Kurumsal Website', 'Firma: Çinkom\r\nSektör: Çinko ve Kurşun Üretimi\r\nProje: Kurumsal Web Sitesi Tasarımı\r\n\r\nProje Tanımı:\r\n\r\nÇinkom firması olarak, kurumsal kimliğimizi dijital dünyaya taşımak amacıyla profesyonel bir web tasarımcısı arıyoruz. Web sitemizin, markamızın prestijini ve sektördeki liderliğimizi yansıtacak şekilde modern, kullanıcı dostu ve bilgi dolu bir yapıda tasarlanmasını istiyoruz.', 0, 1, '2024-09-03 17:15:15', 1, ''),
(38, 'Çinkom', 'Kurumsal Website', 'Firma: Çinkom\r\nSektör: Çinko ve Kurşun Üretimi\r\nProje: Kurumsal Web Sitesi Tasarımı\r\n\r\nProje Tanımı:\r\n\r\nÇinkom firması olarak, kurumsal kimliğimizi dijital dünyaya taşımak amacıyla profesyonel bir web tasarımcısı arıyoruz. Web sitemizin, markamızın prestijini ve sektördeki liderliğimizi yansıtacak şekilde modern, kullanıcı dostu ve bilgi dolu bir yapıda tasarlanmasını istiyoruz.', 0, 1, '2024-09-03 17:15:15', 1, ''),
(39, 'Çinkom', 'Kurumsal Website', 'Firma: Çinkom\r\nSektör: Çinko ve Kurşun Üretimi\r\nProje: Kurumsal Web Sitesi Tasarımı\r\n\r\nProje Tanımı:\r\n\r\nÇinkom firması olarak, kurumsal kimliğimizi dijital dünyaya taşımak amacıyla profesyonel bir web tasarımcısı arıyoruz. Web sitemizin, markamızın prestijini ve sektördeki liderliğimizi yansıtacak şekilde modern, kullanıcı dostu ve bilgi dolu bir yapıda tasarlanmasını istiyoruz.', 0, 1, '2024-09-03 17:15:15', 1, ''),
(40, 'Çinkom', 'Kurumsal Website', 'Firma: Çinkom\r\nSektör: Çinko ve Kurşun Üretimi\r\nProje: Kurumsal Web Sitesi Tasarımı\r\n\r\nProje Tanımı:\r\n\r\nÇinkom firması olarak, kurumsal kimliğimizi dijital dünyaya taşımak amacıyla profesyonel bir web tasarımcısı arıyoruz. Web sitemizin, markamızın prestijini ve sektördeki liderliğimizi yansıtacak şekilde modern, kullanıcı dostu ve bilgi dolu bir yapıda tasarlanmasını istiyoruz.', 0, 1, '2024-09-03 17:15:15', 1, ''),
(41, 'Çinkom', 'Kurumsal Website', 'Firma: Çinkom\r\nSektör: Çinko ve Kurşun Üretimi\r\nProje: Kurumsal Web Sitesi Tasarımı\r\n\r\nProje Tanımı:\r\n\r\nÇinkom firması olarak, kurumsal kimliğimizi dijital dünyaya taşımak amacıyla profesyonel bir web tasarımcısı arıyoruz. Web sitemizin, markamızın prestijini ve sektördeki liderliğimizi yansıtacak şekilde modern, kullanıcı dostu ve bilgi dolu bir yapıda tasarlanmasını istiyoruz.', 0, 1, '2024-09-03 17:15:15', 1, ''),
(42, 'Çinkom', 'Kurumsal Website', 'Firma: Çinkom\r\nSektör: Çinko ve Kurşun Üretimi\r\nProje: Kurumsal Web Sitesi Tasarımı\r\n\r\nProje Tanımı:\r\n\r\nÇinkom firması olarak, kurumsal kimliğimizi dijital dünyaya taşımak amacıyla profesyonel bir web tasarımcısı arıyoruz. Web sitemizin, markamızın prestijini ve sektördeki liderliğimizi yansıtacak şekilde modern, kullanıcı dostu ve bilgi dolu bir yapıda tasarlanmasını istiyoruz.', 0, 1, '2024-09-03 17:15:15', 1, ''),
(43, 'Çinkom', 'Kurumsal Website', 'Firma: Çinkom\r\nSektör: Çinko ve Kurşun Üretimi\r\nProje: Kurumsal Web Sitesi Tasarımı\r\n\r\nProje Tanımı:\r\n\r\nÇinkom firması olarak, kurumsal kimliğimizi dijital dünyaya taşımak amacıyla profesyonel bir web tasarımcısı arıyoruz. Web sitemizin, markamızın prestijini ve sektördeki liderliğimizi yansıtacak şekilde modern, kullanıcı dostu ve bilgi dolu bir yapıda tasarlanmasını istiyoruz.', 0, 1, '2024-09-03 17:15:15', 1, ''),
(44, 'Çinkom', 'Kurumsal Website', 'Firma: Çinkom\r\nSektör: Çinko ve Kurşun Üretimi\r\nProje: Kurumsal Web Sitesi Tasarımı\r\n\r\nProje Tanımı:\r\n\r\nÇinkom firması olarak, kurumsal kimliğimizi dijital dünyaya taşımak amacıyla profesyonel bir web tasarımcısı arıyoruz. Web sitemizin, markamızın prestijini ve sektördeki liderliğimizi yansıtacak şekilde modern, kullanıcı dostu ve bilgi dolu bir yapıda tasarlanmasını istiyoruz.', 0, 1, '2024-09-03 17:15:15', 1, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `isler_cevap`
--

CREATE TABLE `isler_cevap` (
  `ic_id` int NOT NULL,
  `ic_isid` int NOT NULL,
  `ic_yazan` int NOT NULL,
  `ic_icerik` text COLLATE utf8mb4_general_ci NOT NULL,
  `ic_tarih` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `isler_cevap`
--

INSERT INTO `isler_cevap` (`ic_id`, `ic_isid`, `ic_yazan`, `ic_icerik`, `ic_tarih`) VALUES
(14, 20, 1, 'AasAS', '2024-03-14 16:17:06'),
(15, 20, 1, 'dde222ssss', '2024-03-14 16:17:09'),
(16, 36, 1, 'Anasayfa yapıldı, sunum yapılacak.\r\n\r\nhttps://bbrajans.com/demo/cinkom', '2024-09-03 15:56:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `user_ad` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `user_soyad` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `user_password` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `user_unvan` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `user_role` int NOT NULL DEFAULT '0',
  `user_patron` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_ad`, `user_soyad`, `user_password`, `user_unvan`, `user_role`, `user_patron`) VALUES
(0, 'yok', 'Yok', '', 'adsfasdflkvilşdsfgkş*qweopığklşgfmörçeasdlkcxvbgddcvxbhg', '', 0, 0),
(1, 'kaanaltunbag', 'Kaan', 'Altunbağ', 'asdasdasd', 'Web Tasarımcısı', 1, 1),
(5, 'gulbaharkavak', 'Gülbahar', 'Kavak', 'eerenbahar11', 'Kurucu', 0, 1),
(6, 'refikaogan', 'Refika', 'Ogan', 'eerenbahar11', 'Kurucu', 0, 1),
(7, 'melikecadir', 'Melike', 'Çadır', 'melike.123', 'Grafiker', 1, 0),
(8, 'seymaozdemir', 'Şeyma', 'Özdemir', 'seyma11.', 'Grafiker', 1, 0),
(9, 'amirhossein', 'Amir', 'Hossein', 'amir3..', 'Sanat Yönetmeni', 1, 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `isler`
--
ALTER TABLE `isler`
  ADD PRIMARY KEY (`is_id`);

--
-- Tablo için indeksler `isler_cevap`
--
ALTER TABLE `isler_cevap`
  ADD PRIMARY KEY (`ic_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- Tablo için AUTO_INCREMENT değeri `isler`
--
ALTER TABLE `isler`
  MODIFY `is_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Tablo için AUTO_INCREMENT değeri `isler_cevap`
--
ALTER TABLE `isler_cevap`
  MODIFY `ic_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
