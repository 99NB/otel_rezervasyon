-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 28 Oca 2021, 19:02:06
-- Sunucu sürümü: 8.0.22
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `otel`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int NOT NULL,
  `telefon` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `eposta` varchar(85) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `footer` varchar(500) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `k1_yazi` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `k1_link` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `k1_resim` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `k2_yazi` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `k2_link` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `k2_resim` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `k3_yazi` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `k3_link` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `k3_resim` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `k4_yazi` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `k4_link` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `k4_resim` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `k5_yazi` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `k5_link` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `k5_resim` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `instagram` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `youtube` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `twitter` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `facebook` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `alt_k1` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k2` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k3` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k4` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k5` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k6` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k7` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k8` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k9` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k10` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k11` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k12` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k13` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k14` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k15` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k16` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k17` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k18` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k19` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k20` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `alt_k21` varchar(45) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `telefon`, `eposta`, `footer`, `k1_yazi`, `k1_link`, `k1_resim`, `k2_yazi`, `k2_link`, `k2_resim`, `k3_yazi`, `k3_link`, `k3_resim`, `k4_yazi`, `k4_link`, `k4_resim`, `k5_yazi`, `k5_link`, `k5_resim`, `instagram`, `youtube`, `twitter`, `facebook`, `alt_k1`, `alt_k2`, `alt_k3`, `alt_k4`, `alt_k5`, `alt_k6`, `alt_k7`, `alt_k8`, `alt_k9`, `alt_k10`, `alt_k11`, `alt_k12`, `alt_k13`, `alt_k14`, `alt_k15`, `alt_k16`, `alt_k17`, `alt_k18`, `alt_k19`, `alt_k20`, `alt_k21`) VALUES
(1, '0850 111 22 33', 'destek@turkceotel.com', 'turkceotel.com', 'İstanbul', 'istanbul', 'kiz_kulesi.jpg', 'Antalya', 'antalya', 'adrasan_koyu.jpg', 'Muğla', 'muğla', 'mugla.jpg', 'Ankara', 'ankara', 'ankara.jpg', 'Aydın', 'aydın', 'aydın.jpg', '', '', '', '', 'Trabzon', 'Mersin', 'Adana', 'Gümüşhane', 'Niğde', 'İzmir', 'Vanxd', 'Afyon', 'Balıkesir', 'Çankırı', 'Denizli', 'Giresun', 'Bayburt', 'Zonguldak', 'Samsun', 'Rize', 'Hatay', 'Düzce', 'Kilis', 'Karabük', 'Sivas');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteri`
--

CREATE TABLE `musteri` (
  `id` int NOT NULL,
  `kullanici_adi` varchar(45) NOT NULL,
  `sifre` varchar(45) NOT NULL,
  `ad` varchar(45) NOT NULL,
  `soyad` varchar(45) NOT NULL,
  `telefon` varchar(45) NOT NULL,
  `eposta` varchar(45) NOT NULL,
  `dogum_tarihi` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `il` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `admin` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `musteri`
--

INSERT INTO `musteri` (`id`, `kullanici_adi`, `sifre`, `ad`, `soyad`, `telefon`, `eposta`, `dogum_tarihi`, `il`, `admin`) VALUES
(51, 'ferhatuzun', '123456789', 'ferhat', 'uzun', '05456502661', 'ferhatuzuntr@gmail.com', '2001-10-25', 'Trabzon', 'evet'),
(52, 'murat', '123456789', 'murat', 'yılmaz', '05451112233', 'murat@gmail.com', '2005-02-11', 'Bolu', NULL),
(55, 'ali', '123456859', 'ali', 'aytekin', '05365659847', 'aliaytekin@gmail.com', '1999-11-11', 'Ardahan', NULL),
(56, 'hamza', 'hamza123', 'hamza', 'yalçın', '05458745963', 'hamza@gmail.com', '1996-06-21', 'Düzce', NULL),
(57, 'ardahan', '123ardahan', 'ardahan', 'yüce', '05416598547', 'ardahan@gmail.com', '1986-06-06', 'Denizli', NULL),
(58, 'deniz', '12548deniz', 'Deniz', 'alataş', '05354584520', 'denizalatas@gmail.com', '1975-10-09', 'Uşak', NULL),
(59, 'metin', 'metin1458', 'metin', 'dede', '05305695847', 'metin@gmail.com', '1995-10-12', 'Kilis', NULL),
(60, 'hasan', '1458755ddssd', 'hasan', 'can', '05315698547', 'hasancan@gmail.com', '1997-06-06', 'Batman', NULL),
(62, 'hasanalemdar', 'hasanal123', 'hasan', 'alemdar', '05458569874', 'hasan@gmail.com', '1991-06-07', 'Van', NULL),
(105, 'tunahan', '123456', 'tunahan', 'akça', '05986654747', 'tunahan@gmail.com', '1990-02-15', 'Batman', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `odalar`
--

CREATE TABLE `odalar` (
  `id` int NOT NULL,
  `otel_id` int NOT NULL,
  `oda_adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `aciklama` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resim` varchar(45) NOT NULL,
  `yetiskin_fiyat` int NOT NULL,
  `cocuk_fiyat` int NOT NULL,
  `kapasite` int NOT NULL,
  `oda_buyuklugu` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `odalar`
--

INSERT INTO `odalar` (`id`, `otel_id`, `oda_adi`, `aciklama`, `resim`, `yetiskin_fiyat`, `cocuk_fiyat`, `kapasite`, `oda_buyuklugu`) VALUES
(21, 67, 'Standart Oda', 'Ahşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Temizlik ürünleri,Çalışma Masası,Ütü,Ütü Olanakları,Split Klima,Makyaj Masası', '9688019.jpg', 80, 50, 3, 20),
(22, 67, 'Aile Odası', 'Ahşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Temizlik ürünleri,Çalışma Masası,Ütü,Ütü Olanakları,Split Klima,Makyaj Masası', '5573731.jpg', 80, 50, 4, 20),
(23, 67, 'Üç kişilik Standart Oda', 'Ahşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Temizlik ürünleri,Çalışma Masası,Ütü,Ütü Olanakları,Split Klima,Makyaj Masası', '7718509.jpg', 150, 100, 3, 25),
(24, 67, 'Dört Kişilik Standart Oda', 'Ahşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Temizlik ürünleri,Çalışma Masası,Ütü,Ütü Olanakları,Split Klima,Makyaj Masası', '6941430.jpg', 165, 115, 4, 25),
(25, 68, 'Superior Oda', 'Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Makyaj Masası', '6286167.jpg', 120, 85, 3, 33),
(26, 68, 'Deluxe Oda', 'Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Makyaj Masası', '3989981.jpg', 120, 85, 3, 35),
(27, 68, 'One Bedroom Suite', 'Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Makyaj Masası', '8901163.jpg', 150, 110, 3, 30),
(28, 69, 'Aile Odası', 'Ahşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Makyaj Masası', '1493645.jpg', 80, 50, 4, 30),
(29, 69, 'Standart Oda', 'Ahşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Makyaj Masası', '6072167.jpg', 100, 80, 4, 25),
(30, 70, 'Standart Oda', 'Genel Özellikler\r\nTemizlik ürünleri,Çalışma Masası\r\nDış Mekan/Manzara\r\nŞehir Manzarası\r\nMedya Özellikleri\r\nLed TV,Kablosuz İnternet\r\nYeme/İçme Özellikleri\r\nElektrikli Su Isıtıcısı,Minibar,Çay/Kahve Makinesi', '8582703.jpg', 110, 85, 3, 30),
(31, 71, 'Standart - İki Yataklı Oda', 'Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Klima,Kurutucu,Ses Yalıtımı,Ütü,Ütü Olanakları', '2468750.jpg', 110, 85, 2, 28),
(32, 71, 'Standart Oda', 'Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Klima,Kurutucu,Ses Yalıtımı,Ütü,Ütü Olanakları', '422939.jpg', 150, 100, 2, 36),
(33, 72, 'Standart Oda', 'Genel Özellikler\r\nGardırop/Dolap,Isıtma,Klima,Çalışma Masası,Makyaj Masası', '3070528.jpg', 100, 65, 3, 25),
(35, 72, 'Balayı Suit', 'Genel Özellikler\r\nGardırop/Dolap,Isıtma,Klima,Çalışma Masası,Makyaj Masası', '7720319.jpg', 200, 0, 2, 45),
(36, 73, 'Standart Oda', 'Ahşap/Parke Zemin,Anti-Alerjik,Gardırop/Dolap,Isıtma,Klima,Ses Yalıtımı,Temizlik ürünleri', '2572630.jpg', 85, 40, 2, 15),
(37, 73, ' Standart Oda Ayrı Yataklı', 'Ahşap/Parke Zemin,Anti-Alerjik,Gardırop/Dolap,Isıtma,Klima,Ses Yalıtımı,Temizlik ürünleri', '8226478.jpg', 110, 85, 2, 22),
(38, 73, 'Aile Odası Dört Kişilik', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Gardırop/Dolap,Isıtma,Kanepe,Klima,Ses Yalıtımı,Temizlik ürünleri', '5543543.jpg', 140, 100, 4, 25),
(39, 74, 'Deluxe Oda', 'Ahşap/Parke Zemin,Bağlantılı odalar mevcuttur,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Ses Yalıtımı,Sivrisinek Teli,Çalışma Masası,Split Klima,Makyaj Masası', '4529320.jpg', 150, 100, 3, 30),
(40, 74, 'Superior Oda', 'Ahşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Oturma Gurubu,Ses Yalıtımı,Sivrisinek Teli,Çalışma Masası,Split Klima,Makyaj Masası', '684886.jpg', 200, 130, 3, 30),
(41, 74, 'Corner Suite', 'Ahşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Oturma Gurubu,Ses Yalıtımı,Sivrisinek Teli,Çalışma Masası,Split Klima,Makyaj Masası', '2511122.jpg', 270, 195, 3, 50),
(42, 75, 'Standart Oda', 'Gardırop/Dolap,Isıtma,Karo/Mermer Zemin,Klima,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Split Klima,Makyaj Masası', '5770432.jpg', 140, 85, 3, 28),
(43, 75, 'Aile Odası', 'Bağlantılı odalar mevcuttur,Gardırop/Dolap,Isıtma,Karo/Mermer Zemin,Klima,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Split Klima,Makyaj Masası', '585895.jpg', 140, 100, 4, 56),
(44, 75, 'Corner Suit Oda', 'Gardırop/Dolap,Isıtma,Karo/Mermer Zemin,Klima,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Split Klima,Makyaj Masası', '2975299.jpg', 240, 185, 2, 55),
(45, 76, 'Superior Oda', 'Bağlantılı odalar mevcuttur,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Çalışma Masası', '9673122.jpg', 120, 75, 3, 35),
(46, 76, ' Superior Deluxe Oda', 'Bağlantılı odalar mevcuttur,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Çalışma Masası', '9459056.jpg', 140, 95, 3, 40),
(47, 76, 'Dublex Aile Odası', 'Bağlantılı odalar mevcuttur,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Çalışma Masası', '8387451.jpg', 180, 120, 4, 56),
(48, 77, 'Standart Oda', 'Ücretsiz Erken Giriş (09:00 sonrası)\r\nOdadaki tüm misafirler için geçerlidir.', '2326900jpeg', 75, 40, 2, 33),
(49, 77, 'Standart Oda - Üç Kişilik', 'Ücretsiz Erken Giriş (09:00 sonrası)\r\nOdadaki tüm misafirler için geçerlidir.', '3950087jpeg', 100, 65, 3, 55),
(50, 78, 'Standart Oda - İki Kişilik', 'Anti-Alerjik,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Oturma Gurubu,Ses Yalıtımı,Sivrisinek Teli,Temizlik ürünleri,Çalışma Masası', '478389.jpg', 140, 100, 2, 35),
(51, 78, 'Standart Oda - Dört Kişilik', 'Anti-Alerjik,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Oturma Gurubu,Ses Yalıtımı,Sivrisinek Teli,Temizlik ürünleri,Çalışma Masası', '8766024.jpg', 140, 110, 4, 65),
(52, 79, 'Standart Oda', 'Ahşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Ütü Olanakları,Split Klima,Makyaj Masası', '4559357.jpg', 140, 95, 3, 20),
(53, 79, 'Aile Odası', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Klima,Temizlik ürünleri,Ütü Olanakları,Split Klima,Makyaj Masası', '2210351.jpg', 150, 110, 4, 40),
(54, 79, 'King - Suit Oda', 'Ahşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Ütü Olanakları,Split Klima,Makyaj Masası', '7034308.jpg', 250, 200, 3, 65),
(55, 80, 'Standart Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları,Split Klima,Makyaj Masası', '271236.jpg', 90, 40, 3, 17),
(56, 80, 'Delüks Oda', 'Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları,Split Klima,Makyaj Masası', '7884485.jpg', 110, 85, 4, 20),
(57, 80, 'Padişah Odası', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Çalışma Masası,Ütü Olanakları,Split Klima,Makyaj Masası', '4309205.jpg', 500, 400, 4, 120),
(58, 81, 'Suit Oda', 'Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Oturma Gurubu,Ses Yalıtımı,Çalışma Masası', '4959269.jpg', 140, 100, 2, 30),
(59, 81, 'King Suit', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Oturma Gurubu,Ses Yalıtımı,Çalışma Masası', '7822903.jpg', 160, 120, 2, 30),
(60, 81, 'Standart Oda - Üç Kişilik', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Oturma Gurubu,Ses Yalıtımı,Çalışma Masası', '8764348.jpg', 180, 130, 3, 28),
(61, 82, 'Standart - İki Yataklı Oda', 'Genel Özellikler Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Oturma Gurubu,Ses Yalıtımı,Çalışma Masası', '2824263.jpg', 180, 100, 2, 45),
(62, 83, 'Standart Oda', 'Ahşap/Parke Zemin,Anti-Alerjik,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Isıtma,Karo/Mermer Zemin,Klima,Temizlik ürünleri,Çalışma Masası,Split Klima,Makyaj Masası', '9742900.jpg', 150, 90, 2, 20),
(63, 83, 'Comfort Oda 2 Kişilik', 'Ahşap/Parke Zemin,Anti-Alerjik,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Isıtma,Karo/Mermer Zemin,Klima,Temizlik ürünleri,Çalışma Masası,Split Klima,Makyaj Masası', '3588216.jpg', 170, 120, 2, 20),
(64, 84, '1+1 Ekonomik Apart', 'Ahşap/Parke Zemin,Gardırop/Dolap,Isıtma,Kanepe,Klima,Çalışma Masası,Özel Giriş,Split Klima', '3836534.jpg', 70, 50, 2, 20),
(65, 84, '1+1 Standart Apart', 'Genel Özellikler\r\nGardırop/Dolap,Isıtma,Kanepe,Karo/Mermer Zemin,Klima,Çalışma Masası,Özel Giriş,Split Klima', '4355202.jpg', 100, 80, 3, 22),
(66, 85, 'Bungalov - İki Kişilik', 'Ahşap/Parke Zemin,Isıtma,Klima,Oturma Gurubu,Sivrisinek Teli', '8991382.jpg', 100, 80, 2, 20),
(67, 86, 'Standart Oda', 'Genel Özellikler\r\nHalı Kaplı Zemin,Isıtma,Klima,Çalışma Masası,Split Klima,Makyaj Masası', '2515424.jpg', 100, 80, 2, 15),
(68, 86, 'Bungalov', 'Genel Özellikler\r\nIsıtma,Klima,Çalışma Masası,Split Klima,Makyaj Masası', '3938802.jpg', 240, 150, 2, 25),
(71, 87, 'Superior Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Ses Yalıtımı,Ütü,Ütü Olanakları,Makyaj Masası', '817748.jpg', 150, 110, 2, 31),
(72, 87, 'Deluxe Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Oturma Gurubu,Ses Yalıtımı,Çalışma Masası,Ütü,Ütü Olanakları,Makyaj Masası', '6024036.jpg', 180, 130, 3, 45),
(73, 88, 'Standart Oda - Deniz Manzarali', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları,Split Klima,Makyaj Masası', '494977.jpg', 100, 60, 4, 30),
(74, 89, 'Ekonomik Zemin Kat Oda Manzarasız', 'Genel Özellikler\r\nIsıtma,Karo/Mermer Zemin,Sivrisinek Teli\r\nMedya Özellikleri\r\nKablolu Yayın Kanalları,Telefon,TV,Uydu Kanalları,İnternet,Kablosuz İnternet', '9808335.jpg', 150, 95, 2, 18),
(75, 89, 'Deluxe Oda - Şehir Manzaralı', 'Genel Özellikler\r\nAhşap/Parke Zemin,Gardırop/Dolap,Isıtma,Karo/Mermer Zemin,Klima,Sivrisinek Teli,Şömine', '671365.jpg', 250, 190, 3, 18),
(76, 90, 'Standart Bahçe Manzaralı Oda', 'Genel Özellikler\r\nGardırop/Dolap,Klima,Makyaj Masası\r\nDış Mekan/Manzara\r\nBahçe Manzarası', '2699934.jpg', 180, 140, 3, 22),
(77, 90, 'Aile Odası - Bahçe Manzaralı', 'Genel Özellikler\r\nGardırop/Dolap,Klima,Makyaj Masası\r\nDış Mekan/Manzara\r\nBahçe Manzarası,Balkon,Deniz Manzarası', '865513.jpg', 240, 185, 4, 30),
(78, 91, 'Standart Oda - İki Kişilik', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Kurutucu,Çalışma Masası', '6735249.jpg', 90, 45, 3, 25),
(79, 91, 'Standart Oda Üç Kişilik', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Kurutucu,Çalışma Masası', '2859233.jpg', 140, 120, 3, 25),
(80, 92, ' DELUXE ODA ÇİFT KİŞİLİK (1 BÜYÜK YATAKLI)', 'Genel Özellikler Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Kurutucu,Çalışma Masası', '6960640.jpg', 140, 85, 2, 20),
(81, 92, 'DELUXE ODA ÜÇ KİŞİLİK', 'Genel Özellikler Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Kurutucu,Çalışma Masası', '3814063.jpg', 160, 110, 3, 35),
(82, 93, 'Standart İki Kişilik Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Karo/Mermer Zemin,Klima,Ses Yalıtımı,Split Klima,Makyaj Masası', '5852968.jpg', 100, 65, 2, 30),
(83, 93, 'Standart Oda - Üç Kişilik', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Karo/Mermer Zemin,Klima,Ses Yalıtımı,Split Klima,Makyaj Masası', '2718342.jpg', 140, 95, 3, 25),
(84, 94, 'Standart - İki Yataklı Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Gardırop/Dolap,Isıtma,Kanepe,Klima,Kurutucu,Ses Yalıtımı,Temizlik ürünleri,Split Klima,Makyaj Masası', '395062.jpg', 120, 75, 3, 15),
(85, 94, 'Standart Oda - İki Kişilik', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Gardırop/Dolap,Isıtma,Kanepe,Klima,Kurutucu,Ses Yalıtımı,Temizlik ürünleri,Split Klima,Makyaj Masası', '1252210.jpg', 150, 105, 3, 15),
(86, 95, 'Standart Oda', 'Genel Özellikler Ahşap/Parke Zemin,Anti-Alerjik,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Karo/Mermer Zemin,Klima,Ses Yalıtımı,Split Klima,Makyaj Masası', '1335793.jpg', 160, 105, 4, 20),
(87, 95, 'Suit Oda', 'Genel Özellikler Ahşap/Parke Zemin,Anti-Alerjik,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin', '8600201.jpg', 105, 70, 3, 35),
(88, 96, 'Standart İki Kişilik Oda', 'Genel Özellikler\r\nGardırop/Dolap,Isıtma,Karo/Mermer Zemin,Sivrisinek Teli,Çalışma Masası,Ütü Olanakları,Makyaj Masası,Çamaşırlık', '6231597.jpg', 100, 65, 3, 20),
(89, 96, 'Standart Oda - Üç Kişilik', 'Genel Özellikler Gardırop/Dolap,Isıtma,Karo/Mermer Zemin,Sivrisinek Teli,Çalışma Masası,Ütü Olanakları,Makyaj Masası,Çamaşırlık', '3721433.jpg', 150, 105, 4, 20),
(90, 97, 'Hb-Standart Oda', 'Genel Özellikler\r\nExtra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Sağlık Havuzu,Isıtma,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Ütü,Ütü Olanakları,Makyaj Masası', '3455874.jpg', 100, 65, 3, 24),
(91, 98, ' Queen Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Çalışma Masası,Ütü,Ütü Olanakları', '4881895.jpg', 80, 40, 2, 25),
(92, 98, 'Twin Ekonomi Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Çalışma Masası,Ütü,Ütü Olanakları', '274765.jpg', 140, 105, 2, 25),
(93, 99, 'Standart - Çift Kisilik Oda', 'Ahşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Oturma Gurubu,Ses Yalıtımı,Sivrisinek Teli,Çalışma Masası,Split Klima,Makyaj Masası', '4164168.jpg', 180, 105, 4, 20),
(94, 99, 'Standart Oda - Üç Kisilik', 'Ahşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Oturma Gurubu,Ses Yalıtımı,Sivrisinek Teli,Çalışma Masası,Split Klima,Makyaj Masası', '8446211.jpg', 170, 120, 4, 20),
(95, 100, 'Standart Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Gardırop/Dolap,Çalışma Masası,Makyaj Masası', '9220762.jpg', 80, 35, 2, 12),
(96, 100, ' Standart Oda - Üç Kişilik', 'Genel Özellikler\r\nAhşap/Parke Zemin,Gardırop/Dolap,Çalışma Masası,Makyaj Masası', '3823794.jpg', 90, 40, 4, 15),
(97, 101, ' Superior Garden View Room', '30 - 45 m² (322 - 484 sq. ft.) 12 m2 balkonlu odalar Avlu ve Dağ manzarası Küvetli ve duşlu banyo Ücretsiz internet bağlantısı Oda ici dijital laptop şarj edilebilir emanet kasası Yastık menüsü Havalandırma ve iklimlendirme sistemi LCD televizyon Uydu TV Mini bar Banyoda acil durum telefon hattı Özel Çay-Kahve İkram Tepsisi Su ısıtıcısı Balkon Masa ve Sandalye Takımı', '7676993jfif', 140, 95, 3, 35),
(98, 101, 'Superior City View Room', '0 - 45 m² (322 - 484 sq. ft.) 12 m2 balkonlu odalar Bursa ovası ve şehir manzarası Küvetli ve duşlu banyo Ücretsiz internet bağlantısı Oda ici dijital laptop şarj edilebilir emanet kasası Yastık menüsü Havalandırma ve iklimlendirme sistemi LCD televizyon Uydu TV Mini bar Banyoda acil durum telefon hattı Balkon masa ve sandalye takımı Özel çay-kahve ikram tepsisi Su ısıtıcısı', '8410902jfif', 180, 130, 3, 35),
(100, 102, 'Standart - İki Yataklı Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Klima,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları', '4707734.jpg', 170, 110, 3, 24),
(101, 102, ' Manzarasız Ekonomik 2', 'BU ODALAR OTELİMİZİN 1. ve 2. KATINDA BULUNAN BLOK ARKA KISMINA BAKAN SESSİZ ODALARDIR. IŞIK VE SESTEN UZAK KALMAK İSTEYEN MİSAFİRLERİMİZ İÇİN UYGUNDUR.', '3856140.jpg', 100, 65, 2, 24),
(102, 103, 'Standart Oda', 'Bu klimali oda; düz ekran uydu TV, telefon ve minibar ile donatilmistir. Özel banyoda dus, saç kurutma makinesi ve ücretsiz banyo malzemeleri bulunmaktadir. Ayni zamanda balkon, dag ve deniz manzarasi da mevcuttur', '3791418.jpg', 120, 95, 3, 24),
(103, 103, 'Aile Odasi', 'Genel Özellikler\r\nGardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima\r\nDış Mekan/Manzara\r\nBalkon,Dağ Manzarası,Deniz Manzarası,Manzara', '2577608.jpg', 290, 160, 4, 63),
(104, 104, 'Standart Kara Manzaralı Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Isıtma,Klima,Sivrisinek Teli,Çalışma Masası\r\nMedya Özellikleri\r\nTelefon,TV,Uydu Kanalları,Lcd TV,Kablosuz İnternet', '4717677.jpg', 150, 105, 2, 16),
(105, 104, 'DELUXE Deniz Manzarali Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Sivrisinek Teli,Çalışma Masası', '9550780.jpg', 180, 105, 2, 20),
(106, 105, ' Standart Oda - Ana Bina', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Isıtma,Klima,Temizlik ürünleri,Makyaj Masası', '3944423.jpg', 95, 40, 3, 40),
(107, 105, 'Suit Oda', 'Genel Özellikler Ahşap/Parke Zemin,Emanet Kasası,Isıtma,Klima,Temizlik ürünleri,Makyaj Masası', '9747918.jpg', 120, 85, 2, 65),
(108, 106, 'Klasik Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Temizlik ürünleri,Çalışma Masası', '9218220.jpg', 140, 95, 2, 25),
(109, 107, 'Standart Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Oturma Gurubu,Çalışma Masası,Ütü Olanakları,Split Klima', '4490227.jpg', 150, 100, 4, 40),
(110, 108, 'Standart Oda - İki Kişilik', 'Genel Özellikler Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Oturma Gurubu,Çalışma Masası,Ütü Olanakları,Split Klima', '4918877.jpg', 240, 180, 2, 90),
(111, 108, 'Standart Oda - Üç Kişilik', 'Genel Özellikler Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Oturma Gurubu,Çalışma Masası,Ütü Olanakları,Split Klima', '2970868.jpg', 140, 105, 3, 90),
(112, 109, 'Standart Oda', 'Genel Özellikler\r\nBağlantılı odalar mevcuttur,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Ses Yalıtımı,Ütü Olanakları,Çamaşırlık', '2528352.jpg', 180, 105, 3, 27),
(113, 109, ' Köşe Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Oturma Gurubu,Ses Yalıtımı,Çalışma Masası,Ütü Olanakları,Çamaşırlık', '8523957.jpg', 220, 180, 3, 30),
(114, 110, ' Standart Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Çalışma Masası,Split Klima,Makyaj Masası', '4968293.jpg', 108, 120, 3, 25),
(115, 111, 'Standart Oda', 'Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Makyaj Masası', '5060893jfif', 150, 95, 3, 20),
(116, 111, 'Aile Odası', 'Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Makyaj Masası', '6446506.jpg', 150, 85, 4, 35),
(117, 112, 'Superior Oda - İki Yataklı', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Isıtma,Klima,Ses Yalıtımı', '6229224.jpg', 150, 85, 2, 25),
(118, 112, 'Superior Queen Oda - Çift Kişilik Yataklı, Kanepeli', 'Bu modern dekorlu odada bir kraliçe yatak, en-suite banyo, düz ekran kablolu TV ve çalışma masası bulunmaktadır. Banyolarda ücretsiz banyo malzemeleri, küvet, terlik ve saç kurutma makinesi mevcuttur. Bu oda tipinde ücretsiz Wi-Fi erişimi de sağlanmaktadır.', '8494273.jpg', 180, 105, 2, 25),
(119, 113, 'Twin Double Room', 'Ahşap/Parke Zemin,Anti-Alerjik,Gardırop/Dolap,Isıtma,Klima,Ses Yalıtımı,Temizlik ürünleri', '8655301.jpg', 140, 95, 2, 30),
(120, 113, 'Standard Double Room', 'Ahşap/Parke Zemin,Anti-Alerjik,Gardırop/Dolap,Isıtma,Klima,Ses Yalıtımı,Temizlik ürünleri', '2365600.jpg', 160, 120, 2, 30),
(121, 114, 'Aile Odası', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '3284632.jpg', 150, 95, 5, 40),
(122, 114, 'Superior Family Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '2806628.jpg', 160, 105, 3, 25),
(123, 115, 'Standart Oda - Üç Kişilik', 'Genel Özellikler\r\nAnti-Alerjik,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Ses Yalıtımı,Temizlik ürünleri', '1925876.jpg', 90, 35, 4, 29),
(124, 116, 'Standart İki Kişilik Oda', 'Genel Özellikler\r\nAnti-Alerjik,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Oturma Gurubu,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Makyaj Masası', '6687153.jpg', 140, 95, 3, 19),
(125, 116, 'Suit Oda', 'Genel Özellikler\r\nAnti-Alerjik,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Makyaj Masası', '2645670.jpg', 180, 120, 3, 50),
(126, 117, 'Standart Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '8319364.jpg', 140, 95, 3, 25),
(127, 117, 'Dublex Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Extra Uzun Yatak (>2 mt),Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '3257753.jpg', 180, 120, 4, 30),
(128, 118, 'Standart Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '7702989.jpg', 80, 60, 3, 20),
(129, 118, ' Deluxe oda', 'Genel Özellikler\r\nExtra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Oturma Gurubu,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '657914.jpg', 140, 95, 3, 30),
(130, 119, 'Standart Oda', 'Genel Özellikler\r\nGardırop/Dolap,Halı Kaplı Zemin,Isıtma,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '9328292.jpg', 110, 85, 3, 22),
(131, 119, 'Süit', 'Genel Özellikler\r\nGardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Oturma Gurubu,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '4859192.jpg', 180, 120, 4, 50),
(132, 120, 'Standart Oda', 'Emanet Kasası,Gardırop/Dolap,Sağlık Havuzu,Isıtma,Kanepe,Karo/Mermer Zemin,Kurutucu,Ses Yalıtımı,Çalışma Masası', '4538694.jpg', 140, 90, 2, 18),
(133, 120, 'Deluxe Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Sağlık Havuzu,Isıtma,Kanepe,Karo/Mermer Zemin,Kurutucu,Oturma Gurubu,Ses Yalıtımı,Çalışma Masası,Çamaşır Makinesi,Ütü Olanakları,Çamaşır Kurutma Makinesi', '8081866.jpg', 180, 120, 2, 25),
(134, 121, 'STANDART ODA', 'Genel Özellikler\r\nAhşap/Parke Zemin,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Ses Yalıtımı,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '2256922.jpg', 180, 120, 3, 20),
(135, 121, ' JUNIOR DELUXE ODA', '1 ADET 160*200 CM YATAK, 1 ADET 75*185 CM AÇILIR KOLTUK BULUNMAKTADIR.', '1928818.jpg', 140, 95, 3, 25),
(136, 122, 'Business Double Room', 'Genel Özellikler\r\nAnti-Alerjik,Emanet Kasası,Gardırop/Dolap,Isıtma,Karo/Mermer Zemin,Klima,Ses Yalıtımı,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '2124417.jpg', 140, 110, 3, 35),
(137, 122, 'Family Suit Room', 'Genel Özellikler\r\nAnti-Alerjik,Emanet Kasası,Gardırop/Dolap,Isıtma,Karo/Mermer Zemin,Klima,Ses Yalıtımı,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '330004.jpg', 800, 600, 4, 60),
(138, 123, 'Twin Ekonomi Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Çalışma Masası', '1822363.jpg', 140, 95, 2, 28),
(139, 123, 'Standart Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Çalışma Masası', '6628765.jpg', 180, 120, 3, 38),
(140, 124, 'Standart Queen City View', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Çalışma Masası', '1545245.jpg', 100, 45, 2, 23),
(141, 124, ' Superior King City View', 'Genel Özellikler\r\nExtra Uzun Yatak (>2 mt),Elektrikli battaniye,Emanet Kasası,Gardırop/Dolap,Isıtma,Kanepe,Klima,Kurutucu,Ütü Olanakları,Makyaj Masası', '8601847.jpg', 150, 105, 3, 25),
(142, 125, 'Standart İki Kişilik Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Kurutucu,Temizlik ürünleri,Ütü Olanakları,Makyaj Masası', '5813934.jpg', 140, 95, 2, 24),
(143, 125, ' Aile Odası', 'Genel Özellikler\r\nBağlantılı odalar mevcuttur,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Kurutucu,Temizlik ürünleri,Ütü Olanakları,Makyaj Masası', '3896135.jpg', 180, 120, 4, 35),
(144, 126, ' Standart Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Gardırop/Dolap,Isıtma,Klima,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '7218706.jpg', 140, 95, 3, 25),
(145, 126, ' Süit Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Gardırop/Dolap,Isıtma,Kanepe,Klima,Oturma Gurubu,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '5614830.jpg', 180, 120, 3, 35),
(146, 127, 'Standart Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Isıtma,Ses Yalıtımı,Ütü Olanakları,Makyaj Masası', '5167856.jpg', 100, 65, 2, 20),
(147, 127, 'Aile Odası', 'Genel Özellikler\r\nAhşap/Parke Zemin,Isıtma,Ses Yalıtımı,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '481468.jpg', 140, 95, 3, 35),
(148, 128, ' Standart Oda - İki Kişilik', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Extra Uzun Yatak (>2 mt),Gardırop/Dolap,Isıtma,Kanepe,Klima,Kurutucu,Oturma Gurubu,Çalışma Masası,Özel Giriş,Ütü,Ütü Olanakları,Split Klima,Çamaşır Kurutma Makinesi,Çamaşırlık', '5764776.jpg', 150, 105, 2, 25),
(149, 128, ' Suit Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Bağlantılı odalar mevcuttur,Extra Uzun Yatak (>2 mt),Gardırop/Dolap,Isıtma,Kanepe,Klima,Kurutucu,Oturma Gurubu,Çalışma Masası,Özel Giriş,Ütü,Ütü Olanakları,Split Klima,Çamaşır Kurutma Makinesi,Çamaşırlık', '4504468.jpg', 200, 140, 4, 50),
(150, 129, ' Standart Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Bağlantılı odalar mevcuttur,Extra Uzun Yatak (>2 mt),Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Temizlik ürünleri,Çalışma Masası', '8777867.jpg', 90, 50, 2, 12),
(151, 129, 'Aile Odası', 'Genel Özellikler\r\nBağlantılı odalar mevcuttur,Gardırop/Dolap,Isıtma,Kanepe,Temizlik ürünleri,Çalışma Masası', '3487868.jpg', 100, 65, 3, 12),
(152, 130, 'Aile Odasi', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Extra Uzun Yatak (>2 mt),Emanet Kasası,Isıtma,Kanepe,Kurutucu', '6106819.jpg', 90, 40, 3, 25),
(153, 131, 'Standart Oda Dağ Manzaralı', 'Genel Özellikler\r\nAhşap/Parke Zemin,Gardırop/Dolap,Kanepe,Klima,Makyaj Masası', '9608440.jpg', 150, 95, 4, 20),
(154, 131, 'Standart Oda - Deniz Manzaralı', 'Genel Özellikler\r\nAhşap/Parke Zemin,Gardırop/Dolap,Kanepe,Klima,Makyaj Masası', '6481617.jpg', 95, 45, 3, 15),
(155, 132, 'Standart Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Kanepe,Karo/Mermer Zemin,Klima,Kurutucu,Temizlik ürünleri,Ütü,Ütü Olanakları,Makyaj Masası', '1112701.jpg', 140, 95, 4, 30),
(156, 133, 'Standart - İki Yataklı Oda', 'Genel Özellikler\r\nExtra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Ses Yalıtımı,Çalışma Masası,Ütü,Ütü Olanakları,Makyaj Masası', '4000538.jpg', 140, 95, 3, 30),
(157, 133, ' Standart Oda - Büyük yataklı oda', 'Genel Özellikler\r\nExtra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Ses Yalıtımı,Çalışma Masası,Ütü,Ütü Olanakları,Makyaj Masası', '1420327.jpg', 180, 120, 3, 30),
(158, 134, 'Standart Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Isıtma,Kanepe,Karo/Mermer Zemin,Klima,Kurutucu,Oturma Gurubu,Ses Yalıtımı,Sivrisinek Teli,Soyunma Odası,Temizlik ürünleri,Vantilatör,Çalışma Masası,Ütü Olanakları,Makyaj Masası,Çamaşırlık', '5682408.jpg', 180, 130, 2, 35),
(159, 135, 'Superior İki Yataklı Oda Sehir Manzaralı', 'Bu iki yataklı odada klima, minibar ve elektrikli su ısıtıcısı vardır. Oda özellikleri: Manzara, Şehir manzarası, Telefon, Uydu Kanalları, Düz Ekran TV, Emanet Kasası, Klima, Çalışma Masası, Isıtma, Gardırop/Dolap, Duş, Saç Kurutma Makinesi, Ücretsiz Banyo Malzemeleri, Tuvalet, Banyo, Terlik, Minibar, Elektrikli Su Isıtıcısı, Uyandırma Servisi, Havlular, Çarşaf Tüm odalarda ücretsiz WiFi mevcuttur.', '3645520jfif', 120, 85, 3, 35),
(160, 135, 'Superior Kral Yataklı Oda Deniz Manzaralı', 'Bu çift yataklı odada klima, minibar ve elektrikli su ısıtıcısı vardır. Oda özellikleri: Manzara, Şehir manzarası, Telefon, Uydu Kanalları, Düz Ekran TV, Emanet Kasası, Klima, Çalışma Masası, Isıtma, Gardırop/Dolap, Duş, Saç Kurutma Makinesi, Ücretsiz Banyo Malzemeleri, Tuvalet, Banyo, Terlik, Minibar, Elektrikli Su Isıtıcısı, Uyandırma Servisi, Havlular, Çarşaf Tüm odalarda ücretsiz WiFi mevcuttur.', '5354060.jpg', 100, 85, 3, 26),
(161, 136, ' Standart Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Ütü,Ütü Olanakları,Makyaj Masası', '5452092.jpg', 95, 45, 3, 25),
(162, 136, ' Superior Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Ütü,Ütü Olanakları,Makyaj Masası', '4947372.jpg', 140, 95, 4, 25),
(163, 137, 'Superior King Oda', 'Emanet Kasası, Klima, Çalışma Masası, Halı Kaplı Zemin, Gardırop/Dolap, Duş, Küvet, Saç Kurutma Makinesi, Bornoz, Ücretsiz Banyo Malzemeleri, Tuvalet, Banyo, Terlik, Küvet veya Duş,Telefon, Uydu Kanalları,Düz Ekran TV, Minibar, Elektrikli Su Isıtıcısı, Havlular, Çarşaf Tüm odalarda ücretsiz WiFi mevcuttur.', '7688840.jpg', 180, 140, 3, 22),
(164, 137, ' Deluxe King Oda', 'Emanet Kasası, Klima, Çalışma Masası, Halı Kaplı Zemin, Gardırop/Dolap, Duş, Küvet, Saç Kurutma Makinesi, Bornoz, Ücretsiz Banyo Malzemeleri, Tuvalet, Banyo, Terlik, Küvet veya Duş,Telefon, Uydu Kanalları, Düz Ekran TV, Minibar, Elektrikli Su Isıtıcısı, Havlular, Çarşaf Tüm odalarda ücretsiz WiFi mevcuttur.', '3227901.jpg', 220, 180, 3, 22),
(165, 138, 'Standart - İki Yataklı Oda', 'Genel Özellikler\r\nBağlantılı odalar mevcuttur,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Klima,Ses Yalıtımı,Çalışma Masası,Ütü Olanakları', '2118332.jpg', 180, 140, 2, 32),
(166, 138, ' Standart King Yataklı', 'Genel Özellikler\r\nBağlantılı odalar mevcuttur,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Klima,Ses Yalıtımı,Çalışma Masası,Ütü Olanakları', '7869873.jpg', 220, 180, 3, 32),
(167, 139, 'Klasik Oda - Sehir Manzarali Iki Kisilik', 'Genel Özellikler\r\nBağlantılı odalar mevcuttur,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Klima,Çalışma Masası,Ütü,Ütü Olanakları', '2364793.jpg', 350, 280, 2, 27),
(168, 139, 'Klasik Oda - Bahçe Manzarali Iki Kisilik', 'Genel Özellikler\r\nBağlantılı odalar mevcuttur,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Klima,Çalışma Masası,Ütü,Ütü Olanakları', '5774847.jpg', 380, 320, 2, 27),
(169, 140, ' Standart King Room', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Çalışma Masası,Çamaşırlık', '8508996.jpg', 150, 95, 2, 24),
(170, 140, ' Superior Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Çalışma Masası,Çamaşırlık', '8765772.jpg', 150, 105, 2, 29),
(171, 141, ' Standart Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Çalışma Masası,Makyaj Masası', '8187567.jpg', 95, 45, 3, 25),
(172, 141, 'Standart Oda - Üç Kişilik', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Çalışma Masası,Makyaj Masası', '1863058.jpg', 105, 75, 3, 25),
(173, 142, ' Standart Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Temizlik ürünleri,Ütü Olanakları,Makyaj Masası', '1484555.jpg', 120, 85, 3, 22),
(174, 143, ' Dağ Evi Odası', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Kanepe,Temizlik ürünleri,Çalışma Masası', '6134858.jpg', 140, 105, 3, 20),
(175, 143, ' Çiftlik Evi Odası', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma', '1721250.jpg', 200, 145, 4, 19),
(176, 144, ' Standart Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Gardırop/Dolap,Isıtma,Temizlik ürünleri,Ütü Olanakları,Makyaj Masası', '1652941.jpg', 95, 45, 3, 20),
(177, 145, ' Standart Oda', 'Bu konaklamadaki tesisinin Standart Odalari, rahatlatici bir çevre ve genis odalar sunuyor. Ücretsiz yüksek hizli kablosuz internet ile bagli kalin ve City Club Fitness & SPA Center’a ücretsiz erisim keyfini yasayin.\r\n', '5325605.jpg', 185, 105, 3, 35),
(178, 145, ' Executive Oda', 'Executive Odamız, konukların minibardan geniş bir içecek seçkisinin tadını çıkarmalarına ve çeşitli günlük gazete ve dergilere göz atmalarına olanak tanır. Ücretsiz Wi-Fi, kahve makinesi ve lezzetli atıştırmalıklar konforlu bir konaklama sağlar.', '8769046.jpg', 185, 115, 3, 35),
(179, 146, 'Standart Oda - Geniş Yataklı', 'Genel Özellikler\r\nAhşap/Parke Zemin,Bağlantılı odalar mevcuttur,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Kanepe,Klima,Kurutucu,Oturma Gurubu,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Ütü,Ütü Olanakları,Split Klima,Makyaj Masası', '5676993.jpg', 150, 105, 3, 25),
(180, 146, ' Standart - İki Yataklı Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Bağlantılı odalar mevcuttur,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Kanepe,Klima,Kurutucu,Oturma Gurubu,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Ütü,Ütü Olanakları,Split Klima,Makyaj Masası', '3960003.jpg', 140, 85, 3, 25),
(181, 147, ' Junior Suit', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Kurutucu,Oturma Gurubu,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Çamaşır Makinesi,Ütü,Ütü Olanakları,Çamaşır Kurutma Makinesi,Çamaşırlık', '8139831.jpg', 140, 95, 3, 40),
(182, 147, ' Suit Oda', 'Genel Özellikler\r\nBağlantılı odalar mevcuttur,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Klima,Kurutucu,Oturma Gurubu,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Çamaşır Makinesi,Ütü,Ütü Olanakları,Çamaşır Kurutma Makinesi,Çamaşırlık', '4493312.jpg', 220, 180, 5, 45),
(183, 148, ' Standart Oda - Iki Kisilik', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Çalışma Masası,Makyaj Masası', '7846904jpeg', 85, 45, 2, 20),
(184, 149, ' Executive Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Oturma Gurubu,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları', '3964641.jpg', 180, 140, 3, 35),
(185, 149, ' Apart Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Isıtma,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları', '6904866.jpg', 220, 180, 4, 45),
(186, 150, ' Superior Oda-İki Yataklı', 'Genel Özellikler\r\nBağlantılı odalar mevcuttur,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Çalışma Masası,Makyaj Masası', '6282510.jpg', 95, 50, 3, 32),
(187, 150, ' Superior Oda-Çift Kişilik', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Çalışma Masası,Makyaj Masası', '1819783.jpg', 120, 95, 3, 32),
(188, 151, ' Apart 1+1', 'Genel Özellikler Gardırop/Dolap,Isıtma,Klima,Çalışma Masası,Makyaj Masası', '5059970.jpg', 100, 45, 4, 40),
(189, 152, ' Standart Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Klima,Ses Yalıtımı,Ütü Olanakları', '3588037.jpg', 140, 95, 3, 30),
(190, 152, ' Engelli Odası', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Klima,Ses Yalıtımı,Ütü Olanakları', '8486379.jpg', 50, 35, 2, 30),
(191, 153, ' Standart Tek Büyük veya İki Küçük Yataklı Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Split Klima', '4187663.jpg', 140, 95, 2, 20),
(192, 153, ' Standart Tek Büyük Yataklı Oda, Evcil Hayvan Kabul Edilen', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Split Klima,Makyaj Masası', '1354688.jpg', 200, 140, 3, 20),
(193, 154, ' Standart Oda', 'Genel Özellikler\r\nAnti-Alerjik,Bağlantılı odalar mevcuttur,Emanet Kasası,Gardırop/Dolap,Isıtma,Kanepe,Karo/Mermer Zemin,Klima,Ses Yalıtımı,Çalışma Masası,Ütü,Ütü Olanakları,Split Klima,Makyaj Masası', '9399147.jpg', 200, 140, 3, 30),
(194, 155, 'Standart Oda', 'Banyo,Bornoz,Duş,Küvet,Saç Kurutma Makinesi,Terlik,Tuvalet,Ücretsiz Banyo Malzemesi,Havlu Seti,Banyoda Telefon', '318846.jpg', 140, 95, 3, 30),
(195, 156, ' Standart Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Bağlantılı odalar mevcuttur,Emanet Kasası,Gardırop/Dolap,Kanepe,Klima,Ütü Olanakları,Makyaj Masası', '8378332.jpg', 140, 95, 2, 28),
(196, 157, ' Aile Odası', 'Genel Özellikler\r\nAnti-Alerjik,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Kurutucu,Oturma Gurubu,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Ütü,Ütü Olanakları,Makyaj Masası,Çamaşırlık', '4279090.jpg', 140, 95, 2, 32),
(197, 157, ' 3 kişilik oda', 'Genel Özellikler\r\nAnti-Alerjik,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Kurutucu,Oturma Gurubu,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Ütü,Ütü Olanakları,Makyaj Masası,Çamaşırlık', '8222315.jpg', 220, 165, 3, 38),
(198, 158, 'Balkonlu, Şömineli Üç Kişilik', 'Genel Özellikler\r\nAnti-Alerjik,Extra Uzun Yatak (>2 mt),Gardırop/Dolap,Isıtma,Karo/Mermer Zemin,Klima,Ses Yalıtımı,Temizlik ürünleri,Ütü,Ütü Olanakları,Split Klima', '529732.jpg', 130, 85, 4, 45),
(199, 158, ' Şömineli Balkonlu Comfort Üç K', 'Genel Özellikler\r\nAnti-Alerjik,Extra Uzun Yatak (>2 mt),Gardırop/Dolap,Isıtma,Karo/Mermer Zemin,Klima,Ses Yalıtımı,Temizlik ürünleri,Ütü,Ütü Olanakları,Split Klima', '9157436.jpg', 210, 175, 3, 45),
(200, 159, ' Aile Odası', 'Genel Özellikler\r\nAhşap/Parke Zemin,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Karo/Mermer Zemin,Klima,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Ütü,Ütü Olanakları,Makyaj Masası,Çamaşır Kurutma Makinesi', '3293007.jpg', 140, 85, 4, 26),
(201, 159, ' Standart - İki Yataklı Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Karo/Mermer Zemin,Klima,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Makyaj Masası,Çamaşır Kurutma Makinesi', '7665027.jpg', 185, 125, 4, 26),
(202, 160, ' Standart Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Klima,Çalışma Masası,Ütü,Ütü Olanakları', '4769186jfif', 125, 80, 2, 20),
(203, 160, ' Standart Oda - Üç Kişilik', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Klima,Çalışma Masası,Ütü,Ütü Olanakları', '7355056jfif', 120, 75, 3, 22),
(204, 161, ' Deluxe Oda', 'Genel Özellikler\r\nGardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Temizlik ürünleri,Çalışma Masası,Makyaj Masası', '6883453.jpg', 115, 75, 2, 36),
(205, 161, ' Suit Room', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Klima,Ses Yalıtımı,Ütü Olanakları,Makyaj Masası', '5707728.jpg', 190, 135, 2, 75),
(206, 162, ' Standart Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Ses Yalıtımı,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '6458902.jpg', 110, 85, 3, 27),
(207, 162, ' Superior Oda - Orman Manzaralı', 'Genel Özellikler\r\nAhşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Ses Yalıtımı,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '7639155.jpg', 135, 95, 3, 28),
(208, 163, ' Deluxe Oda', 'Ilave Yataklar Bebek Yatagi (Istege Bagli) Oda Servisi 24 Saat Mini Bar Eglence Odalarda Film Izleme Uydu Kanallari Oda Özellikleri Sigara Içilmeyen Oda Balkon Aile Odasi Kolay Ulasilabilir Odalar Oda Özellikleri ve Hizmetler Uyandirma Servisi Oda Temizligi Hizmeti Sigara Dedektörü Odadan Kontrollü Havalandirma Odada Kasa Internet Erisimi Odalarda ücretsiz yüksek hizda internet Banyo Saç Kurutma Makinesi', '2942539jpeg', 180, 135, 3, 25),
(209, 163, 'Junior Suit', 'Odamız deniz manzaralı ve jakuzili odalarımızdır. Tek bölümden oluşmaktadır. Oda içerisinde bir adet çift kişilik yatak ve üçlü koltuk bulunmaktadır.', '9865909jpeg', 210, 180, 4, 35),
(210, 164, ' Aile Odası', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Makyaj Masası', '2639712.jpg', 140, 95, 3, 40),
(211, 165, ' Deniz Manzarali Standart Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Çalışma Masası,Ütü Olanakları,Split Klima', '7109705.jpg', 100, 85, 3, 25),
(212, 165, 'Dag Manzarali Standart Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Ses Yalıtımı,Temizlik ürünleri,Ütü Olanakları,Split Klima', '2056737.jpg', 120, 85, 3, 20),
(213, 166, ' Standart Room', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Ses Yalıtımı,Çamaşır Makinesi,Makyaj Masası', '5152836.jpg', 140, 100, 3, 25),
(214, 167, ' Standart Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları', '9413103.jpg', 100, 45, 3, 40),
(215, 167, ' Deluxe Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları', '6798212.jpg', 120, 100, 3, 45),
(216, 168, ' Superior Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Bağlantılı odalar mevcuttur,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Makyaj Masası', '1230213.jpg', 120, 85, 3, 26),
(217, 168, ' Deluxe Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Bağlantılı odalar mevcuttur,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Oturma Gurubu,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Makyaj Masası', '8585401.jpg', 150, 105, 4, 40),
(218, 169, ' Superior Oda', 'Genel Özellikler\r\nBağlantılı odalar mevcuttur,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Özel Giriş,Ütü,Ütü Olanakları', '7470979.jpg', 130, 100, 3, 30),
(219, 169, ' Superior Oda - Deniz Manzaralı', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Isıtma,Kanepe,Klima,Çalışma Masası,Ütü,Ütü Olanakları', '1148074.jpg', 140, 105, 3, 30),
(220, 170, ' Superior King Room', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima\r\n', '87159.jpg', 140, 95, 3, 28),
(221, 170, ' Superior Twin Room', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima', '3657287.jpg', 180, 115, 2, 20),
(222, 171, ' Superior Oda - Duşlu', 'Genel Özellikler\r\nAhşap/Parke Zemin,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Klima,Çalışma Masası,Makyaj Masası', '2555303.jpg', 120, 85, 2, 26),
(223, 172, ' Standart Oda - İki Kişilik', 'Genel Özellikler\r\nExtra Uzun Yatak (>2 mt),Gardırop/Dolap,Isıtma,Kanepe,Karo/Mermer Zemin,Klima,Kurutucu,Oturma Gurubu,Temizlik ürünleri,Çalışma Masası,Çamaşır Makinesi,Çamaşır Kurutma Makinesi', '697392.jpg', 180, 135, 2, 25),
(224, 172, ' Standart Oda - Üç Kişilik', 'Genel Özellikler\r\nExtra Uzun Yatak (>2 mt),Gardırop/Dolap,Isıtma,Kanepe,Karo/Mermer Zemin,Klima,Kurutucu,Oturma Gurubu,Temizlik ürünleri,Çalışma Masası,Çamaşır Makinesi,Çamaşır Kurutma Makinesi', '1757820.jpg', 110, 75, 3, 30),
(225, 173, ' Standart Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Oturma Gurubu,Çalışma Masası', '8617911.jpg', 180, 135, 3, 25),
(226, 174, 'Twin Avlu Manzaralı', 'Genel Özellikler\r\nExtra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '1823783.jpg', 150, 100, 3, 37),
(227, 174, ' Deluxe Oda', 'Genel Özellikler\r\nBağlantılı odalar mevcuttur,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları,Makyaj Masası', '9082305.jpg', 200, 150, 3, 37),
(228, 175, ' Standart Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Klima,Oturma Gurubu,Makyaj Masası', '7792575.jpg', 140, 95, 2, 25),
(229, 175, ' Suit Oda', 'Genel Özellikler\r\nEmanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Oturma Gurubu,Çalışma Masası,Makyaj Masası', '2598940.jpg', 150, 100, 3, 50),
(230, 176, ' Standart Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Bağlantılı odalar mevcuttur,Emanet Kasası,Gardırop/Dolap,Halı Kaplı Zemin,Isıtma,Kanepe,Klima,Kurutucu,Oturma Gurubu,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Çamaşır Makinesi,Özel Giriş,Ütü,Ütü Olanakları,Split Klima,Makyaj Masası', '6769859.jpg', 120, 85, 4, 60),
(231, 177, ' Standart Oda', 'Banyo Özellikleri\r\nBanyo,Küvet,Küvet veya Duş,Terlik,Tuvalet,Ücretsiz Banyo Malzemesi,Havlu Seti,Banyoda Telefon\r\nDış Mekan/Manzara\r\nBahçe Manzarası,Şehir Manzarası', '6113280.jpg', 100, 75, 2, 20),
(232, 177, ' Suite Oda', 'Banyo Özellikleri\r\nBanyo,Küvet,Küvet veya Duş,Terlik,Tuvalet,Ücretsiz Banyo Malzemesi,Havlu Seti,Banyoda Telefon\r\nDış Mekan/Manzara\r\nBahçe Manzarası,Şehir Manzarası', '1693463.jpg', 120, 100, 3, 40),
(233, 178, 'Standart Oda - Üç Kişilik', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Gardırop/Dolap,Isıtma,Sivrisinek Teli,Temizlik ürünleri,Vantilatör,Çalışma Masası', '3446756.jpg', 140, 95, 3, 25),
(234, 178, ' Standart Oda - İki Kişilik', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Gardırop/Dolap,Isıtma,Klima,Kurutucu,Sivrisinek Teli,Temizlik ürünleri,Vantilatör,Çalışma Masası,Makyaj Masası', '5606898.jpg', 150, 105, 2, 15),
(235, 179, ' Standart Oda', 'Otelimiz, 7/24 açık kafe, restoran ve alışveriş merkezlerin bulunduğu Turgut Özal Bulvarının tam göbeğinde yer almaktadır. Batman’ın en büyük parkı konumunda bulunan ATATÜRK Parkının tam karşısında olup Batman Valiliği, Milli Eğitim Müdürlüğü, Batman Emniyet Müdürlüğü ve Halk Eğitim merkezi otelimizin hemen yanı başında yer almaktadır. 2018’in ikinci yarısında modern Fransız mimarisi tasarımıyla yenilenmiş, Güneydoğu Anadolu Bölgesinin incisi BATMAN’daki eviniz BOZOOĞULLARI OTEL Ailesi içerisinde sizleri de görmekten mutluluk duyacağız.', '5200575.jpg', 200, 160, 2, 28),
(236, 180, ' Standart - İki Yataklı Oda', 'Banyo Özellikleri\r\nBanyo,Saç Kurutma Makinesi,Terlik,Tuvalet,Ücretsiz Banyo Malzemesi', '1542680.jpg', 150, 100, 3, 22),
(237, 180, ' Standart Oda - Deniz Manzaralı', 'Banyo Özellikleri\r\nBanyo,Saç Kurutma Makinesi,Terlik,Tuvalet,Ücretsiz Banyo Malzemesi', '9307581.jpg', 200, 150, 2, 22),
(238, 181, ' Standart Oda', 'Banyo Özellikleri\r\nBanyo,Duş,Saç Kurutma Makinesi,Terlik,Tuvalet,Ücretsiz Banyo Malzemesi,Havlu Seti,Banyoda Telefon\r\nGenel Özellikler\r\nGardırop/Dolap,Halı Kaplı Zemin,Klima,Makyaj Masası', '6580236.jpg', 140, 95, 3, 22),
(239, 181, ' Suit Oda', 'Banyo Özellikleri\r\nBanyo,Duş,Saç Kurutma Makinesi,Terlik,Tuvalet,Ücretsiz Banyo Malzemesi,Havlu Seti,Banyoda Telefon\r\nGenel Özellikler\r\nGardırop/Dolap,Halı Kaplı Zemin,Klima,Makyaj Masası', '1932252.jpg', 180, 140, 3, 25),
(240, 182, ' çift kişilik (suit)', 'Ahşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Temizlik ürünleri,Çalışma Masası,Ütü,Ütü Olanakları,Split Klima,Makyaj Masası', '5753579.jpg', 150, 110, 3, 40),
(241, 182, ' Aile Odası', 'Ahşap/Parke Zemin,Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Temizlik ürünleri,Çalışma Masası,Ütü,Ütü Olanakları,Split Klima,Makyaj Masası', '8571964.jpg', 100, 75, 4, 35),
(242, 183, ' Standart Oda', 'Bu zarif oda kadife perdeler ve cam avizelerle donatilmistir. Odaya kaplica suyu saglanmaktadir.', '799209.jpg', 120, 75, 4, 25),
(243, 183, ' Standart Oda Küçük Otel', 'Standart odadan farkli olarak bu odalarda standart küvet bulunmaktadir ve jakuzilidir. Spa merkezine geçiste 20-30 metre açik alandan geçilmektedir. Bu binada toplam 10 oda bulunmaktadir. Sadece bu odalarda standart olarak çay ve kahve setup’ i ücretsiz olarak verilmektedir. ODA ÖZELLIKLERI Standart odalar ile ayni. Sadece bu odalar direk bahçeye çikiyor. Balkon yok ve odalar 20 m2. Max 2 yetiskin konaklama yapilabilir. Tüm odalar french bed olup, ilave yatak açilmasi sikisiklik yaratabilir.', '6652949.jpg', 150, 100, 2, 20),
(244, 184, ' Ekonomik Oda', 'Ekonomik odalarda yatak seçme opsiyonumuz yoktur french yada iki ayrı sngl yataklı odalardan müsait olan adınıza ayrılır.', '3679032.jpg', 140, 95, 2, 20),
(245, 184, ' Standart Oda', 'Standart odalarda misafirlerin rahatı ve konforu için tüm teknolojik donanımlar mevcut olup. 24 saat sıcak su, ücretsiz wifi, minibar ve saç kurutma makinesi sunulan imkanlardan bazılarıdır.', '4037524.jpg', 150, 100, 2, 25),
(246, 185, ' Aile Suit', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Bağlantılı odalar mevcuttur,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Isıtma,Klima,Kurutucu,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları,Split Klima', '9468016.jpg', 200, 175, 4, 48),
(247, 185, ' Business Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Bağlantılı odalar mevcuttur,Extra Uzun Yatak (>2 mt),Emanet Kasası,Gardırop/Dolap,Isıtma,Kanepe,Klima,Kurutucu,Oturma Gurubu,Ses Yalıtımı,Temizlik ürünleri,Çalışma Masası,Ütü Olanakları,Split Klima', '3923691.jpg', 280, 220, 2, 48),
(248, 186, ' Standart Deniz Manzaralı Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Emanet Kasası,Gardırop/Dolap,Kanepe,Klima,Ses Yalıtımı,Makyaj Masası', '9571058.jpg', 100, 65, 3, 20),
(249, 186, ' Standart Kara Manzarlı Oda', 'Genel Özellikler\r\nAhşap/Parke Zemin,Anti-Alerjik,Emanet Kasası,Gardırop/Dolap,Kanepe,Klima,Ses Yalıtımı,Makyaj Masası', '1034814.jpg', 120, 80, 3, 20),
(251, 189, 'sdf', 'sdf', '1677145.jpg', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `odeme_tip`
--

CREATE TABLE `odeme_tip` (
  `id` int NOT NULL,
  `odeme_adi` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `odeme_tip`
--

INSERT INTO `odeme_tip` (`id`, `odeme_adi`) VALUES
(1, 'kredi kartı'),
(2, 'nakit');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oteller`
--

CREATE TABLE `oteller` (
  `id` int NOT NULL,
  `otel_adi` varchar(90) NOT NULL,
  `aciklama` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resim` varbinary(45) NOT NULL,
  `il` varchar(50) NOT NULL,
  `adres` varchar(450) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telefon` varchar(45) NOT NULL,
  `eposta` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `oteller`
--

INSERT INTO `oteller` (`id`, `otel_adi`, `aciklama`, `resim`, `il`, `adres`, `telefon`, `eposta`) VALUES
(67, 'Adana Saray Otel', 'Sabahları kaliteli açık büfe kahvaltı hizmetimizle iyi bir gün geçirmeniz için elimizden geleni en iyi şekilde yapmaktayız. İş ve gezi seyahatlerinizde tek yada ailenizle kalabileceğiniz nezih ve şehrin içinde fakat şehrin gürültü ve karmaşasından uzak sakin bir gün geçirmek isterseniz Adana Saray Otel\'i tercih edebilirsiniz.', 0x313434393834332e6a7067, 'Adana', 'Merkez, Seyhan, Adana, Türkiye ', '05364859865', 'sarayotel@gmail.com'),
(68, 'Divan Adana', 'Tüm alanlarında ücretsiz Wi-Fi erişimi sunan Divan Adana, Adana\'da konaklama olanağı sunmaktadır. Otelde spa merkezi, sauna, kapalı yüzme havuzu, spor salonu ve hamam vardır. Tesisin 24 saat açık resepsiyonu oda servisi ve konsiyerj hizmetleri vermektedir. Modern bir şekilde dekore edilmiş odalarda düz ekran TV bulunmaktadır. Bazı odalar yoğun bir günün ardından dinlenmek için oturma alanı sunar. Tüm odalar özel banyoludur.', 0x353034363033322e6a7067, 'Adana', 'Merkez, Seyhan, Adana, Türkiye ', '05263659865', 'divanadana@gmail.com'),
(69, 'Ziyapaşa Park Otel', 'Adana Ziyapaşa Bulvarı\'nda bulunan Ziyapaşa Park Otel; Şakirpaşa Havaalanı\'na arabayla 5 dakika uzaklıktadır.Şehir merkezi otele sadece 3 dakikalık yürüme mesafesindedir. Adana Otobüs Terminali sadece 5 km uzaklıktadır. . Ziyapaşa Park Otel; kapalı yüzme havuzu, geleneksel Türk hamamı, sauna ve ses yalıtımlı modern odalar sunmaktadır. Otel, Şakirpaşa Havaalanı\'na arabayla 5 dakika uzaklıktadır. Parke zeminlere sahip tüm odalarda düz ekran TV, klima ve elektrikli su ısıtıcısı vardır.', 0x363630373037372e6a7067, 'Adana', 'Merkez, Seyhan, Adana, Türkiye', '05112365985', 'ziyapasa@gmail.com'),
(70, 'Ramada Hotel & Suites Adana', 'Modern olanaklarla donatılmış geniş ve şık odaları ile Adanada hem iş amaçlı hem turistik seyahatler için ideal olan Ramada Hotel & Suites Adana, Adana Havalimanına yakın konumuyla da konuklarına kolay ulaşım imkanı sunuyor. Tesis, usta şeflerin elinden çıkan Adana lezzetlerini, yöresel kahvaltıları, özel öğle ve akşam yemeklerini konaklama boyunca misafirlerinin beğenisine sunuluyor.', 0x373139303933312e6a7067, 'Adana', 'Merkez, Seyhan, Adana, Türkiye', '05412369856', 'ramadaadana@gmail.com'),
(71, 'Garden Adiyaman Hotel', 'Hilton Garden Inn Adıyaman, şehir merkezindeki konumu, kültürel ve tarihi mekanlara olan yakınlığı ile misafirlerine muhteşem bir konaklama fırsatı sunuyor.', 0x383634343339392e6a7067, 'Adıyaman', 'Merkez, Adiyaman, Türkiye ', '05869870025', 'gardenadiyaman@gmail.com'),
(72, 'Bozdoğan Otel ', 'Evinizin konforunu vadeden Bozdoğan Otel, Kültür turizmi başkenti Adıyaman\'da güler yüzlü personeli ve hizmet kalitesiyle hem iş hem tatil amaçlı seyahat eden misafirlerimizi memnuniyetle ağırlamaktadır.Tur firmalarının Kültür turizmi gezilerinde canlı müzik ve çiğköfte eşliğinde hizmet vermekteyiz', 0x363730303630372e6a7067, 'Adıyaman', 'Merkez, Merkez, Adiyaman, Türkiye', '05211235568', 'bozdoganadiyaman@gmail.com'),
(73, 'Hotel Elvina', 'Otelimiz 40 odadan oluşmakta olup müşteri memnuniyeti esaslı hizmet vermektedir.Tesisimiz Güneydogu Anadolu Bölgesi \'nin Adiyaman kentinde yer almaktadir. Adiyaman Üniversitesi Hastanesi\'ne 5 dk. yürüme mesafesindedir.', 0x3537323830312e6a7067, 'Adıyaman', 'Merkez, Merkez, Adiyaman, Türkiye ', '05689652211', 'hotelelvina@gmail.com'),
(74, 'May Thermal Resort Spa', 'May Thermal Resort Spa Merkezi; Sağlığınızı ve güzelliğinizi korumanız için 2000 yıldır şifalı suları ile sağlık ve zindelik veren termal sularının özelliklerini korumakta olup günümüz ileri teknolojisi ile birleşmiştir. Uzman doktor ve sağlık ekipleri tarafından teknolojik tedavi yöntemleri ile May Thermal Resort Spa Merkezi\'nde siz değerli misafirlerimiz için spordan sağlığınıza, dinlenceden eğlencenize, güzellikten gençliğinize özel ilgi ile hizmet verilmektedir.', 0x353332323936312e6a7067, 'Afyon', 'Sandikli, Afyon, Türkiye ', '05112369857', 'mayafyon@gmail.com'),
(75, 'Jura Hotels Afyon Thermal', 'Otelimiz toplamda 193 oda 390 yatak kapasitelidir. Misafir odalarında sunulan hizmetlerimiz; LCD ekran TV ve uydu yayınları, telefon, merkezi klima sistemi, minibar, elektronik emanet kasa, makyaj ve çalışma masası, kablosuz ADSL internet bağlantısı, oda Servisi, saç kurutma makinesi bulunmaktadır', 0x333635303335362e6a7067, 'Afyon', 'Merkez, Afyon, Türkiye', '05856982233', 'jurahotels@gmail.com'),
(76, 'NG Afyon Wellness & Convention Hotel', 'Sağlık turizminde bir dünya markası olan Afyon\'da bulunan Güral Afyon Wellness, doğayla iç içe, huzurlu ve konforlu bir tatil için en doğru adres. Zafer Havalimanı\'na uzaklığı 45 km, Uşak Havaalanı\'na 90 km ve Eskişehir Havaalanı\'na 130 km mesafede yer alan Güral Afyon Wellness ile sağlık, ferahlık dolu günler geçirir, kendinizi yenilersiniz.', 0x383035373130312e6a7067, 'Afyon', 'Merkez, Afyon, Türkiye ', '05128556985', 'ngafyon@gmail.com'),
(77, 'Alp Hotel', 'Ağrı Alp Hotel Apart, 2019 yılında Ağrı’da siz değerli misafirlerimizi ağırlamak için kuruldu. Yeni yapılan ve apart için dizayn edilen binamızda sizler için; Tek kişilik, çift kişilik apart tercihiyle birlikte, bünyesinde otel için dizayn edilmiş odaları da barındırmaktadır.', 0x3735373535386a706567, 'Ağrı', 'Merkez, Ağri, Türkiye ', '05213698547', 'alphotel@gmail.com'),
(78, 'Butik Ertur Hotel', 'Butik Ertur Hotel, bahçe, teras, ortak salon ve ücretsiz Wi-Fi gibi çeşitli olanaklar sunmaktadır. Tesiste restoran ve bar vardır. Tesiste 24 saat açık resepsiyon ve konsiyerj hizmeti mevcuttur.', 0x343734363130322e6a7067, 'Ağrı', 'Doğubayazıt, Ağri, Türkiye', '05127789654', 'butikerturhotel@gmail.com'),
(79, 'The Apple Palace', 'Otelimiz konumu itibariyle tüm Amasya Şehrinin o büyülü görünümünü panorama olarak misafirlerine seyrettirebilecek şekilde hakim bir tepe üzerine kurulmuştur. Yemyeşil ormanın içinde Amasya’yı kuş bakışı seyrederken, size mis gibi çam kokusu ve cıvıl cıvıl kuş sesleri eşlik eder.', 0x343130303234342e6a7067, 'Amasya', 'Merkez, Amasya, Türkiye', '05121123659', 'theapple@gmail.com'),
(80, 'Lalehan Otel Ve Restaurant ', 'Yeşilırmak\'ın hemen kenarında bulunan Lalehan Hotel, ücretsiz Wi-Fi erişimine ve nehir ve dağ manzaralı bir restorana sahiptir. Otelin klimalı odalarında uydu TV mevcuttur. Hotel Lalehan\'ın odaları, zarif renklerle modern bir şekilde dekore edilmiştir. Minibar standarttır. Bazı odalarda spa banyosu ve balkon vardır. Lalehan\'ın açık büfe kahvaltısı ev yapımı reçeller, peynir çeşitleri ve hamur işleri içerir.', 0x323634373138322e6a7067, 'Amasya', 'Merkez, Amasya, Türkiye', '05869587468', 'lalehanotel@gmail.com'),
(81, 'Grand Work Hotel ', 'Grand Work Hotel merkezi isitma ve ücretsiz Wi-Fi ile donatilmis modern odalara ev sahipligi yapmaktadir. Otel bünyesinde kapali havuz bulunmaktadir. Grand Work Hotel\'in odalari parke ve hali zeminlere sahiptir. Tüm odalar LCD TV, kasa ve minibar ile donatilmistir. Kahvalti, sabahlari açik büfe tarzinda sunulmaktadir. Otelin restorani Türk yemekleri servis etmektedir.', 0x343336313136332e6a7067, 'Ankara', 'Çankaya, Ankara, Türkiye ', '05623125474', 'grandwork@gmail.com'),
(82, 'Ve Hotels Gölbasi', 'Mogan Gölü\'nün kenarında bulunan Ankara Vilayetler Evi, Gölbaşı\'nda yer almaktadır. Tesis huzurlu bir bahçeyle çevrili olmasının yanı sıra göl manzaralı konaklama birimleri bulunmaktadır. Tüm alanlarda ücretsiz Wi-Fi erişiminden yararlanabilirsiniz. Konuklar, tesis bünyesindeki konsiyerj masasından yararlanabilir. Ankara Vilayetler Evi\'nin klimalı konuk odalarında balkon, uydu ve kablo kanallarını izleyebileceğiniz LED TV, minibar ve oturma alanı vardır.', 0x353235363930342e6a7067, 'Ankara', 'Gölbaşı, Ankara, Türkiye', '05863321457', 'vehotels@gmail.com'),
(83, 'Pure Blanche Hotel ', '', 0x363737343233352e6a7067, 'Antalya', 'Lara, Muratpaşa, Antalya, Türkiye', '05129658475', 'pureblanche@gmail.com'),
(84, 'Turka Loca City Apart ', 'Turka Loca City Apart\'ta, odalarımız 1+1 şeklinde olup içerisinde double yatak, klima, ek çekyat/single yatak, özel banyo, su ısıtıcısı, mini ocak, mini buzdolabı ve çamaşır makinesi bulunmaktadır. Odalarımızda 3 kişi rahatça konaklayabilmektedir.', 0x323834383232372e6a7067, 'Antalya', 'Lara, Muratpasa, Antalya, Türkiye ', '05468569854', 'turkaloca@gmail.com'),
(85, 'Marina Tatil Köyü ', 'Karadeniz’in essiz güzellikteki illerinden Artvin’in Borçka ilçesinde, göl kiyisinda konumlanan Marina Tatil Köyü, misafirlerine doga ile bas basa tatil yapabilecekleri bir atmosferde hizmet vermektedir.', 0x363635393830352e6a7067, 'Artvin', 'Borçka, Artvin, Türkiye', '05423659874', 'marinatatil@gmail.com'),
(86, 'Villa Da Butik Otel ', 'Otelimiz bu yıl itibariyle faaliyete geçmiş olup, 24 adet villa, 10 adet standart oda ve 5 adet ahşap bungalov ev\'den oluşmaktadır. Dairelerde Wi- Fi, Led Tv, klima, minibar, mutfak gereçleri bulunmaktadır. Tesisimiz bahçeli ve teraslıdır. Açık yüzme havuzumuz bulunmaktadır. Güvenlik kameralarıyla 24 saat izlenmektedir. Tatlısu balık avcılığı yapılabilmektedir. Siz değerli misafirlerimizi huzurlu bir tatil için tesisimize bekliyoruz.', 0x333433323930302e6a7067, 'Artvin', 'Merkez, Artvin, Türkiye', '05421459685', 'villadabutik@gmail.com'),
(87, 'Charisma De Luxe Hotel', 'CHARISMA DE-LUXE HOTEL: Tesisimiz, Aydın il Merkezine 71 km uzaklıkta, Ege Bölgesi’nin denizle buluştuğu kıyı şeridindeki turizm cennetlerinden biri olan Kuşadası ilçesindeki şehir merkezinin ve denizin birleştiği bir tesisin işletmeciliğini yapmaktadır. Kuzeyde Selçuk ve Pamucak, Güneyde Dilek yarımadası ile sınırlanan ilçe merkezi, Efes Antik kenti, Meryem Ana, Milet, Didim, Pamukkale, Marmaris, Bodrum gibi önemli turistik merkezlerin odağında bulunmaktadır.', 0x393839363030352e6a7067, 'Aydın', 'Kuşadasi, Aydin, Türkiye ', '05312569854', 'charismadeluxe@gmail.com'),
(88, 'Efe Boutique Hotel ', 'Kuşadası sahilinde, Ege Denizi?nin eşsiz manzarasına açılan otel, Güvercinada ve liman arasında konumlanıyor. Otel modern ve ferah bir tasarıma sahip mekanları ile misafirlerini ağırlıyor. Farklı tipte dekore edilmiş 40 oda ile hizmet veren otelin odalarında; LCD TV, minibar, klima, duşakabin, WC, kablosuz internet erişimi gibi olanaklar bulunuyor. Muhteşem deniz manzarasına açılan odalarda özel balkon da bulunuyor.', 0x373039353032312e6a7067, 'Aydın', 'Merkez, Kuşadasi, Aydin, Türkiye', '05368987456', 'efeboutique@gmail.com'),
(89, 'Fikret Bey Konağı ', 'Konağımızda Ege mutfağı\'na özel tüm ayrıntılara sahip kahvaltımız ile güne başlayıp, Cunda Adası\'nın tarih kokan sokaklarında yapacağınız gezi ile yılın tüm yorgunluğunu atabilirsiniz.', 0x333530383538332e6a7067, 'Balıkesir', 'Cunda Adası, Ayvalik, Balikesir, Türkiye ', '05869874411', 'fikretbey@gmail.com'),
(90, 'Efruze Otel ', 'Denize sadece iki adım uzaklıkta', 0x363838373939352e6a7067, 'Balıkesir', 'Cunda Adası, Ayvalik, Balikesir, Türkiye ', '05685987458', 'efruzeotel@gmail.com'),
(91, 'Grand Çalı Hotel', 'Bilecik\'in Bozüyük ilçesinde bulunan Grand Çalı Hotel, klima ve ücretsiz Wi-Fi içeren modern odalar ile hizmet vermektedir. Otel bünyesinde açık yüzme havuzu, fitness merkezi ve geleneksel Türk hamamı mevcuttur.Grand Çalı\'nın odaları, LCD TV, minibar ve oturma alanı ile donatılmıştır. Odaların hepsi, açık yüzme havuzu manzaralıdır.Alakart restoran, zarif yemek salonunda yöresel yemekler servis etmektedir. Sabahları, açık büfe tarzında servis edilen Türk kahvaltısının keyfini çıkarabilirsiniz.', 0x313932333737352e6a7067, 'Bilecik', 'Bozöyük, Bilecik, Türkiye ', '05869632147', 'grandcali@gmail.com'),
(92, 'Grand Hotel Başaran ', 'Grand Hotel Basaran, Bilecik\'te bulunmaktadır. Konuklar otel bünyesindeki restoranın tadını çıkarabilirler. Her odada düz ekran TV bulunmaktadır. Bazı birimlerde rahatınız için bir oturma alanı bulunmaktadır. Odada bir kahve makinesi bulacaksınız. Odalarda özel banyo bulunmaktadır. Ekstralar arasında terlik, ücretsiz banyo malzemeleri ve saç kurutma makinesi bulunmaktadır. Grand Hotel Basaran, otel genelinde ücretsiz Wi-Fi imkanı sunmaktadır. Tesiste 24 saat açık bir resepsiyon bulacaksınız.', 0x353630373531342e6a7067, 'Bilecik', 'Merkez, Bilecik, Türkiye ', '05786548596', 'grandhotel@gmail.com'),
(93, 'Büyük Bingöl Otel', 'Ulaşım açısından elverişli konumuyla misafirlerine avantaj sağlayan Büyük Bingöl Oteli, Yolaçtı Kurucadağ Kayak Merkezi 2 km mesafede konumlanıyor. Şehrin ve Doğanın tadını çıkabileceğiniz bir otel dir', 0x313335353139342e6a7067, 'Bingöl', 'Merkez, Bingöl, Türkiye ', '05869987745', 'buyukbingol@gmail.com'),
(94, 'Binkap Resort Hotel ', 'Bingöl şehir merkezine yürüme mesafesinde bulunan Binkap Resort Hotel, ulaşım açısından hem iş hem de turizm amaçlı konaklamalar için misafirlerine konforlu bir konaklama imkanı sunuyor. Tesisin modern dekorasyona sahip 48 odası mevcut.', 0x363735373135342e6a7067, 'Bingöl', 'Merkez, Bingöl, Türkiye', '05689985474', 'binkap@gmail.com'),
(95, 'Hotel Tatvan Kardelen', 'Tesisimiz 24 saat hizmet vermekte olup, tüm odalarında Uydu TV, minibar ve elektirikli su ısıtıcısı vardır, banyoları özel olup saç kurutma makinası banyo malzemeleri ücretsizdir. Günlük açık büfe kahvaltı ile güne başlıyabilir, öğle ve aksam yemeklerinizi alakart restoranımızda tadabilirsiniz, ek ücret karşılığnda Kuru temizleme ütü hizmeti sunulmaktadır. Tatvan merkezde yerel alan tesisimizden Nemrut gölü Ahlat Selçuklu Mezarlığına Günlük rehberli turlar düzenlenmektedir', 0x363331333636382e6a7067, 'Bitlis', 'Merkez, Tatvan, Bitlis, Türkiye ', '05268547745', 'hoteltatvan@gmail.com'),
(96, 'Karaman Otel ', 'Van gölünün hemen kıyısında, bölgedeki çoğu şehirden daha modern görünüme sahip Tatvan\'da misafirlerini ağırlayan Otel Karaman, Van Gölü\'nün cömertçe sunduğu doğal güzelliklere yürüyüş mesafesinde konumlanıyor. Kendinizi evinizde gibi hissedebilmeniz adına özenle tasarlanmış tüm odalarında; LCD TV, minibar ve kablosuz internet bulunan tesis, hem iş hem de kültür seyahati yapan konuklar için ideal bir konaklama alternatifi.', 0x353238303435362e6a7067, 'Bitlis', 'Tatvan, Bitlis, Türkiye ', '05054756985', 'karamanotel@gmail.com'),
(97, 'The Sign Esentepe & Ski Center', 'The Sign Esentepe Otel\'de tatiliniz boyunca çocuklarınız güvenli bir şekilde ağırlanabilmesi için çocuk kulübü bulunmaktadır. Tesiste bulunan A La Carte restoran, açık restoran ve kapalı restoranda yemeklerinizi yiyebilirsiniz. Konaklamanız boyunca faydalanabileceğiniz TV, kablosuz internet, telefon ve oda kasası odalarda mevcuttur. Oda servisi hizmeti bulunmaktadır.', 0x353532303732342e6a7067, 'Bolu', 'Gerede, Bolu, Türkiye ', '05026584574', 'thesign@gmail.com'),
(98, 'Hampton By Hilton Bolu ', 'Çağdaş donanımı,modern dizayn ve mimarisiyle düzenlenmiş odalarında misafirlerine yüksek uyku kalitesi ve konforu garantileyen otel hampton ayrıcalıklarından yararlanma fırsatlarını da sizlere sunmaktadır.', 0x3938353434352e6a7067, 'Bolu', 'Karacasu, Merkez, Bolu, Türkiye ', '05035475869', 'hamptonby@gmail.com'),
(99, 'Grand Özeren Otel & Spa ', 'Burdur şehir merkezinde yer alan Grand Özeren Otel & Spa 30 Mart 2009 yılında hizmete girmiştir ve şehir merkezinde hizmet veren bir oteldir. Türk hamamı, sauna ve masaj salonu bulunan bir spa ile sağlık merkezi hizmetleri sunmaktadır. Ücretsiz Wi-Fi erişimi sunan otelin resepsiyonu 24 saat açıktır. Otelimizde Osmanlı motifleriyle tasarlanmış 64\'ü standart 2\'si suit olmak üzere 66 oda ve 25, 100 ve 120 kişilik toplantı salonları mevcuttur.', 0x383237373934322e6a7067, 'Burdur', 'Merkez, Burdur, Türkiye ', '05013659857', 'grandozeren@gmail.com'),
(100, 'Kayışlıoğlu Otel ', 'Ücretsiz WiFi erişimi ve bir terasa sahip Kayışlıoğlu Otel, Burdur\'da İnsuyu Mağarası\'na 10 km mesafede konaklama imkanı sunmaktadır. Bu otelin her odasında klima ve TV mevcuttur. Bazı odalarda yoğun bir günün ardından dinlenebileceğiniz bir oturma alanı vardır. Özel banyo küvetli veya duşludur. Konforunuz için terlik ve ücretsiz banyo malzemeleri temin edilmektedir. Resepsiyon 24 saat açıktır.', 0x393739353439362e6a7067, 'Burdur', 'Merkez, Burdur, Türkiye ', '05046589654', 'kayisogluotel@gmail.com'),
(101, 'Divan Bursa', 'SPA tesisi, Euphoria SPA tarafından işletilmekte olup Euphoria Spa kullanım standartları gereğince Pazartesi günleri kapalıdır . Salı , Çarşamba, perşembe ve Cuma günleri 0 -12 yaş arası çocuk kullanımına kapalıdır. Cumartesi ve Pazar günleri sadece 6-12 yaş arası çocuklar yanlarında velileri olması koşulu ile kabul edilebilmektedir. Her Perşembe günü termal havuz sadece bayan misafirler için kullanımına açıktır..', 0x393733313739392e6a7067, 'Bursa', 'Merkez, Osmangazi, Bursa, Türkiye', '05095476598', 'divanbursa@gmail.com'),
(102, 'Hotel Anatolia', '116 oda ile misafirlerine hizmet veren tesisimizin tüm odalarında; LCD TV ve ücretsiz Wi-Fi mevcuttur.', 0x393931303032302e6a7067, 'Bursa', 'Çekirge, Osmangazi, Bursa, Türkiye ', '05064587456', 'hotelanatolia@gmail.com'),
(103, 'Ida Tas Konak Otel ', 'Ida Tas Konak, enfes çam kokulu ormanin tam kalbine kurulmus olup, size efsanelerin, huzurun ve mutlulugun resmini çiziyor, hayalleriniz ve ötesini daha da asarak mitolojik boyutunu da önünüze getiriyor.', 0x393731363937392e6a7067, 'Çanakkale', 'Yesilyurt, Ayvacik,Çanakkale, Türkiye', '05096587458', 'idataskonak@gmail.com'),
(104, 'Assos Behram Hotel ', 'Assos Yat Limanı\'nın tam karşısında yer alan Assos Behram Hotel, panoramik deniz manzaralı bir restorana sahiptir. Otel, uydu TV ve minibar ile donatılmış klimalı odalarla hizmet vermektedir.Hotel Assos Behram\'ın odaları benzersiz bir tarzda dekore edilmiştir. Odaların tamamında saç kurutma makinesi içeren özel banyo vardır. Ayrıca standart olarak bir gardırop da mevcuttur.Günlük kahvaltı geleneksel tarzda servis edilmektedir.', 0x343735303338392e6a7067, 'Çanakkale', 'Assos, Ayvacık, Çanakkale, Türkiye ', '05996587458', 'assosbehram@gmail.com'),
(105, 'Nar Otel Çerkeş', 'Otelimiz 3 yıldızlı olmakla birlikte müşteri memnuniyeti üst düzeydedir.', 0x383536353430322e6a7067, 'Çankırı', 'Çerkeş, Çankiri, Türkiye', '05006598547', 'narotelcerkes@gmail.com'),
(106, 'Olgassys Butik Otel', 'Ilgaz Dağının eteklerinde kayak merkezine yakın bir konumdadır.', 0x353635323031302e6a7067, 'Çankırı', 'Ilgaz, Çankiri, Türkiye ', '05998548757', 'olgassys@gmail.com'),
(107, 'Çorum Büyük Otel', 'Çorum Büyük Otel olarak bizim en çok önem verdiğimiz güleryüz, ciddiyet, dikkat, düzen, yaratıcılık, estedik, gösteriş ve titizlik ilkeleridir . Deneyimli ve profesyonel kadrosu ile siz değerli müşterilerimizin hizmetinde olan ihtiyaç ve beklentilerinizi bir çatı altında toplayarak faaliyetini sürdürmektedir.Odalarımız temiz ve ferah olup uydu, klima, TV, telefon, minibar, saç kurutma makinası, duşa kabinli odalarımızda 24 saat sıcak sudan faydalanabilirsiniz.', 0x353237333031342e6a7067, 'Çorum', 'Merkez, Merkez, Çorum, Türkiye', '05859875698', 'corumbuyukotel@gmail.com'),
(108, 'Bilge Suite Otel ', 'Her sabah zengin bir açık büfe kahvaltı servisi yapılmaktadır. Çeşitli restoranlar, kafeler ve marketler, tesise 50 metre uzaklıkta bulunabilir.Otelde günün 24 saati resepsiyon hizmeti verilmektedir. Merzifon Havaalanı, tesise 68 km uzaklıktadır.', 0x3234373838312e6a7067, 'Çorum', 'Merkez, Çorum, Türkiye ', '05218547457', 'bilgesuite@gmail.com'),
(109, 'North Point Hotel Denizli', 'Denizli şehir merkezinde yer alan North Point Hotel Denizli, klima ve ücretsiz Wi-Fi erişimi içeren konforlu konaklama birimleri sunmaktadır. North Point Hotel, şehirdeki birçok restoran, kafe ve alışveriş merkezlerine yakın bie konumdadır. Otelimizin modern odaları, uydu yayını yapan LCD TV, halı kaplı zeminler ve minibar ile donatılmıştır. Mermer duvarlara sahip banyolarda duş ve saç kurutma makinesi de mevcuttur.', 0x343934323732322e6a7067, 'Denizli', 'Merkez, Denizli, Türkiye ', '05065875858', 'northpoint@gmail.com'),
(110, 'Grand Denizli Hotel', 'Klimalı odalar, modern mobilyalarla şık bir şekilde dekore edilmiştir. Tüm odalarda LCD TV, ücretsiz Wi-Fi ve minibar bulunmaktadır. Mermer banyolar saç kurutma makinesi ile donatılmıştır. Her sabah, kahvaltı açık büfe olarak servis edilmektedir. Akşam yemeklerinde alakart restoranda lezzetli yemekler sunulmaktadır. Konuklar lobi barda içkilerini içerken günün yorgunluğunu atabilirler. Grand Denizli\'nin bünyesinde konukların rahatlamaları için hamam, sauna ve havuzlu jakuzi bulunmaktadır.', 0x313930333335302e6a7067, 'Denizli', 'Merkez, Denizli, Türkiye', '05859856868', 'grandenizli@gmail.com'),
(111, 'Sv Business Hotel', 'Modern mimarisiyle, konforuyla, güvenliği ve teknolojik hizmetleri ile iş ve turizm eğlence amaçlı konaklamalarda en iyisini isteyenlerin yeni adresiyiz.Kalitemizle sizlere evinizdeki konforu ve huzuru sunuyoruz.Birçok tarihi yere yakınlığıylada Diyarbakır\'daki ilk tercihiniz olacağız.', 0x363235323736332e6a7067, 'Diyarbakır', 'Dağkapı, Sur, Diyarbakir, Türkiye ', '05889598875', 'svbussiness@gmail.com'),
(112, 'Novotel Diyarbakır', 'Engelli ziyaretçiler için özel imkanların sunulduğu Novotel Diyarbakır, açık ve kapalı otopark hizmetinin yanı sıra fitness merkezinden yararlanma imkanı da sunar. Novoda Diyarbakır, seminer ve kongreler için sağladığı ideal toplantı salonu ile iş gezilerinde kolaylık sağlar. İdeal konumu sayesinde tercih edilir olma özelliği taşıyan Novotel Diyarbakır, TÜYAP’a yakın konumuyla dikkat çekmektedir.', 0x3635343239382e6a7067, 'Diyarbakır', 'Yenişehir, Diyarbakir, Türkiye ', '05668569898', 'novoteldiyar@gmail.com'),
(113, 'Rys Hotel', 'Otel bünyesinde 3 adet restoran bulunmaktadır. Otelin tüm alanlarında Wi-Fi erişimi ücretsizdir. Konuklar, otelin 8. katında yer alan ve panoramik şehir manzarası sunan alakart restoranda Türk ve dünya mutfaklarından yemeklerin tadını çıkarabilirler. Lobi alanının yanında bulunan Merdane Bakery & Cafe\'de taze pişmiş hamur işleri sunulmaktadır.', 0x393031373038342e6a7067, 'Edirne', 'Merkez, Edirne, Türkiye', '05336565985', 'ryshotel@gmail.com'),
(114, 'Adresin Hotel ', 'Sabahları kaliteli açık büfe kahvaltı hizmetimizle iyi bir gün geçirmeniz için elimizden geleni en iyi şekilde yapmaktayız. İş ve gezi seyahatlerinizde tek yada ailenizle kalabileceğiniz nezih ve şehrin içinde fakat şehrin gürültü ve karmaşasından uzak sakin bir gün geçirmek isterseniz Adana Saray Otel\'i tercih edebilirsiniz.', 0x3738383235352e6a7067, 'Edirne', 'Merkez, Edirne, Türkiye ', '05065859898', 'adresinotel@gmail.com'),
(115, 'Elazığ Windyhill Hotel ', 'anaromik Elazığ ve Harput manzarasına hakim konumu ve sunduğu olanaklar ile bölgede öne çıkan Windy Hill Hotel Elazığ, geniş ve konforlu odalarının yanı sıra toplantı salonu ile iş odaklı konaklamalar için de konforlu bir alternatif sunuyor. 101 oda ile misafirlerine hizmet veriyor.Windy Hill Hotel Elazığ odalarına giriş saati 14.00\'ten itibaren başlar. ', 0x313633313037372e6a7067, 'Elazığ', 'Merkez, Elaziğ, Türkiye ', '05065856969', 'windyhill@gmail.com'),
(116, 'Marathon Hotel', 'Elazig sehir merkezinde ulasim aglarina yakin konumuyla avantaj saglayan Marathon Hotel, merkezi konumu ve donanimli toplanti salonuyla özellikle is amaçli seyahat eden konuklar için ideal bir ortam sagliyor. ', 0x383538373632392e6a7067, 'Elazığ', 'Merkez, Elazig, Türkiye ', '05041562323', 'marathonhot@gmail.com'),
(117, 'Hotel Grand Alemdar ', 'Vizyonumuz; Ulusal Liderlik pozisyonumuzu güçlendirmeye devam ederek, otelcilik, gurme ürünler ve yeme-içme sektörlerinde sadece Türkiye’de en saygın markalar arasında yer alarak büyümek. Misyonumuz; İşimiz aracılığıyla yaşamları daha ayrıcalıklı kılmak', 0x373434353431322e6a7067, 'Erzincan', 'Merkez, Erzincan, Türkiye ', '05313365858', 'hotelgrand@gmail.com'),
(118, 'Grand Simay Hotel', 'Dört Yildizli Grand Simay Hotel olarak kurumsal sosyal sorumluluk anlayisi ile çalismakta; bu bilinci is yapis modellerimize ve sosyal paydaslarimiza yayarak topluma deger katmayi hedefliyoruz.', 0x363639343038372e6a7067, 'Erzincan', 'Merkez, Merkez, Erzincan, Türkiye', '05696685959', 'grandsimay@gmail.com'),
(119, 'Dilaver Hotel', 'Titiz bir çalışmanın ürünü olan Otelimiz,misafirlerine zengin mutfağı ve seçkin kadrosuyla hizmet etmekten gurur duymaktadır. Toplam 165 yataklı otelimizin,9 süit odası ve 66 standart odası bulunmaktadır. Otel lobisi,asma katında 55 kişilik ve üst katta manzaralı, teraslı 130 kişilik restoran,toplantı odası mevcut olup günün her saatinde oda servisi ile misafirlerinin hizmetindedir.', 0x353832373239312e6a7067, 'Erzurum', 'Merkez, Erzurum, Türkiye ', '05475858698', 'dilaverotel@gmail.com'),
(120, 'Bora Park Otel ', 'Erzurum\'da bulunan Borapark Otel, bir fitness merkezi ve masaj hizmetleri sunmaktadır. Günün 24 saati açık resepsiyona sahip bu tesiste ayrıca bir restoran bulunmaktadır. Otelde kapalı yüzme havuzu, sauna ve bagaj depolama alanı bulunmaktadır. Tüm konuk odalarında kablo TV, su ısıtıcısı, duş, ücretsiz banyo malzemeleri ve çalışma masası vardır.', 0x393231373931392e6a7067, 'Erzurum', 'Aziziye, Erzurum, Türkiye', '05001548787', 'boraparkotel@gmail.com'),
(121, 'Arus Hotel ', 'Otelimiz tatil veya iş amaçlı konaklayan tüm misafirlerin ihtiyaçlarını karşılayabilecek şekilde dekore edilmiştir.İhtiyaç duyulabilecek tüm özelliklere sahip 66 oda, 94 yatak, 160 konuk kapasiteli otelimizin tüm odalarında ve ortak alanlarda ücretsiz internet erişimi mevcuttur.', 0x383930393939392e6a7067, 'Eskişehir', 'Merkez, Tepebaşi, Eskişehir, Türkiye ', '05889898568', 'arusotel@gmail.com'),
(122, 'Capella Otel', 'Deluxe odalar 35m2 olup, odalar halısız ve yerden ısıtmalı zeminler sayesinde kusursuz hijyen sağlamaktadır. Suit odalar 65 m2 olup ayrıca 40 m2 terasa sahiptir. Her odada çay-kahve, 2 adet 0,5 su ikramı ve kettle bulunmaktadır. Tüm odalar için çamaşırhane hizmeti mevcuttur.', 0x313236363536342e6a7067, 'Eskişehir', 'Tepebaşi, Eskişehir, Türkiye ', '05487785855', 'capellaotel@gmail.com'),
(123, 'Kule Hotel & Spa ', 'Kule Hotel & Spa kapılarını Ekim 2017’de hizmetinize açmıştır. 23 katlı Kule Hotel & Spa 330 oda ve 770 yatak sayısı ile Gaziantep’deki en yüksek kapasiteyi misafirlerinin beğenisine sunmaktadır. Ayrıca 7.000 m2’lik alanda Gaziantep’in en kapsamlı Bay ve Bayanlara ayrı bölümlerde hizmet veren spa merkezinde aquapark, yüzme havuzları, 40 derecelik sıcak havuzları, sauna, Türk hamamı, buhar odası ve fitness ile bir tatil köyü gibi eğlenebileceksiniz.', 0x393331353334312e6a7067, 'Gaziantep', 'Karataş, Şahinbey, Gaziantep, Türkiye ', '05889895858', 'kulehotel@gmail.com'),
(124, 'Divan Gaziantep', 'Kahvaltı, öğle ve akşam yemekleri için haftanın yedi günü hizmetinizde olan Divan Pub, Divan Klasiklerinin yanı sıra, Türk, Dünya ve Yöresel mutfakların en iyilerini seçkin bir şarap menüsü ile sunarak, Gaziantep\'e gusto alanında yepyeni bir kalite ve yaratıcılık standardı getiriyor. Tüm gün boyunca üstün kaliteli sofra hizmetiyle tasarlanmış anlayışına, geleneksel ve yöresel dokunuşların eşlik ettiği rahat ve stil sahibi bir atmosfer ev sahipliği yapıyor.', 0x343935343235316a666966, 'Gaziantep', 'Merkez, Şehitkamil, Gaziantep, Türkiye ', '05849896655', 'divangaziantep@gmail.com'),
(125, 'Hotel Aripsas', 'Otelin odalarının her biri klima ve TV ile donatılmıştır. Konuklar deniz veya dağ manzarası eşliğinde bir fincan çayın tadını çıkarabilirler. Tüm odalar özel banyoludur. Konforunuz için terlik, ücretsiz banyo malzemeleri ve saç kurutma makinesi temin edilir.Aripsas Hotel, Giresun Taşbaşı Parkı\'na 600 metre, Giresun Müzesi\'ne ise 1,2 km uzaklıktadır.', 0x34323433312e6a7067, 'Giresun', 'Merkez, Giresun, Türkiye ', '05445696868', 'hotelarispsas@gmail.com'),
(126, 'Kit-Tur Otel ', 'Otel Kit-Tur, 200 kişilik Giresun manzaralı restoranı, 100 yatak kapasitesi ile misafirlerini ağırlamaktan mutluluk duyar. Odalarımızda yerden ısıtma, klima , banyo, direkt telefon, tv saç kurutma makinesi, sineklik mevcuttur.', 0x353736313633372e6a7067, 'Giresun', 'Merkez, Giresun, Türkiye ', '05486868989', 'kitturotel@gmail.com'),
(127, 'Grand Teras Hotel', 'Şehir merkezine sadece 200mt mesafede! Grand Teras Hotel, Kelkit\'te konaklamayı ekonomik ve konforlu hale getiriyor,Ücretsiz Wİ-Fİ,Tüm Odalarda 82\'\' led Tv,Geniş odalar,Balkonlu Odalar,Otelimizin ismini Taşıdığı gibi Harika bir Teras...Otoparkımız Siz Değerli Misafirlerimize ücret talep etmeksizin sunuluyor.Erzincan Hava Limanı otelimize sadece ve sadece 55km uzaklıkta. Gümüşhane Şehir merkezine 35km mesafedeyiz... Konforu Gerçekten Ekonomiyle birleştirdik!', 0x393531333634382e6a7067, 'Gümüşhane', 'Kelkit‎, Gümüşhane, Türkiye ', '05295568686', 'granteras@gmail.com'),
(128, 'Grand Yeniçeri Otel', 'Otelimizin en üst katı 200 kişi kapasiteli restoran ve kafe şeklinde dizayn edilmiştir. Aynı zamanda restoran ve kafe amaçlı dizayn edilmiş bu kat, nişan, mezuniyet töreni ve doğum günü partisi yapılabilecek donanıma sahiptir. Otelimizde biri 90 diğeri 35 kişi kapasiteli iki tane toplantı salonu bulunmaktadır.Grand yeniçeri otel olarak misyonumuz Şiran’ı turizm açısında ileri seviyeye taşımak ve bölgedeki en iyi otel olmaktır.', 0x313431383637362e6a7067, 'Gümüşhane', 'Şiran, Gümüşhane, Türkiye ', '05489986565', 'granyeniceri@gmail.com'),
(129, 'Şenler Otel ', 'Otelimiz 3 yıldızlı 59 oda 100 yatak kapasitesinde olup deneyimli sıcak ve güler yüzlü personeliyle kaliteli ve konforlu hizmet sunmaktadır.', 0x353435373037352e6a7067, 'Hakkari', 'Merkez, Hakkari, Türkiye ', '05302585656', 'senlerotel@gmail.com'),
(130, 'Ufuk Zafer Hotel', 'Evinizin konforunu vadeden Bozdoğan Otel, Kültür turizmi başkenti Adıyaman\'da güler yüzlü personeli ve hizmet kalitesiyle hem iş hem tatil amaçlı seyahat eden misafirlerimizi memnuniyetle ağırlamaktadır.Tur firmalarının Kültür turizmi gezilerinde canlı müzik ve çiğköfte eşliğinde hizmet vermekteyiz', 0x353537303733362e6a7067, 'Hakkari', 'Yüksekova, Hakkari, Türkiye', '05889896565', 'ufukzaverho@gmail.com'),
(131, 'İssos Hotel', 'İskenderun\'a 10 dk sürüş mesafesinde Arsuz Yolu üzerinde konuma sahip İssos Hotel, denize sıfır sakin bir atmosfer içerisinde yer alıyor. Odalar deniz veya kara manzaralıdır. Odalarda misafirlerin konforu için bütün konaklama ihtiyaçları düşünülmüş. Otele ait denize bakan açık havuzda yüzerken sonsuzluk hissine kapılabilirsiniz. İssos Hotel, iş ve turistik amaçlı Hatay seyahatlerinizde konforu ve huzuru konaklamanız süresince bir arada sunuyor.', 0x353233313331342e6a7067, 'Hatay', 'İskenderun, Hatay, Türkiye', '05889896555', 'issosotel@gmail.com'),
(132, 'Truva Life Hotel ', 'Truva Life Hotel, ücretsiz Wi-Fi ile donatılmış klimalı odalar sunmaktadır. Otelde açık yüzme havuzu ve güneşlenme terası vardır. Truva Life Hotel\'in tüm odalarında düz ekran TV, minibar ve 24 saat sıcak suya sahip özel banyo bulunmaktadır. Bazı odalarda Spa küveti mevcuttur ve bazı odalar deniz manzaralıdır. Oda servisi günün 24 saati hizmetinizdedir. Truva Life Restaurant kahvaltı, öğle ve akşam yemekleri servis etmektedir. Yaz aylarında yemeklerinizi havuz kenarında yiyebilirsiniz.', 0x373235313734352e6a7067, 'Hatay', 'Samandağ, Hatay, Türkiye', '05112556868', 'truvalife@gmail.com'),
(133, 'Ramada Isparta ', 'Oda servisi hizmeti bulunmaktadir. Konaklamaniz boyunca faydalanabileceginiz TV, kablosuz internet, telefon ve oda kasasi standart odalarda mevcuttur. Tesis içerisinde bulunan doktor, araç kiralama hizmetlerinden yararlanabilirsiniz. Tesiste bulunan ala carte restaurant, kapali restaurantta yemeklerinizi yiyebilirsiniz. Konferans, toplanti, kongre ve organizasyonlariniz için uygun bir oteldir. Keyifli vakit geçirmeniz için tesiste bar bulunmaktadir.', 0x3537383937322e6a7067, 'Isparta', 'Merkez, Isparta, Türkiye ', '05336595568', 'ramadaisparta@gmail.com'),
(134, 'Devin Otel ', 'Devin Otel\'de 50 adet oda ve 4 adet suit bulunmaktadır. Odaların taban kaplamaları laminant parkedir. Tesis şehir otelciliği konseptine göre dizayn edilmiş odaları; klima, ses yalıtımı ve ücretsiz wi-fi erişimine sahiptir.', 0x363234383530342e6a7067, 'Isparta', 'Merkez, Isparta, Türkiye ', '05448568989', 'devinotel@gmail.com'),
(135, 'Divan Mersin', 'Spa merkezi ve sauna sunan Divan Mersin, Akdeniz Bölgesi\'ndeki Mersin\'de yer almaktadır. Otelde fitness merkezi, hamam ve yemeklerin tadını çıkarabileceğiniz bir restoran vardır. Odalarda düz ekran TV bulunmaktadır. Bazı birimlerde rahatınız için bir oturma alanı da mevcuttur. Odaların bazıları deniz ya da şehir manzaralıdır. Tüm odalar özel banyoludur. Konforunuz için terlik ve ücretsiz banyo malzemeleri sağlanmıştır. Otelde ayrıca talep üzerine ve ek ücret karşılığında bone temin edilir.', 0x373335333433322e6a7067, 'Mersin', 'Yenişehir, Mersin, Türkiye ', '05226598888', 'divanmersin@gmail.com'),
(136, 'The Menord Hotel Spa & Wellness ', 'Mersin\'de Mersin Büyükşehir Belediyesi\'ne 1 km mesafede yer alan The Menord Hotel, Wi-fi erişimi ve özel otoparktan ücretsiz yararlanma imkanı sunmaktadır. Konuklar, spa merkezinde ücretsiz Türk hamamı, sauna ve buhar odası hizmetlerinden faydalanabilir, tesis bünyesindeki restaurantın keyfini çıkarabilir. Her gün, belirli saatlerde ücretsiz, Mersin Limanına ve Forum alışveriş merkezine transfer hizmeti sağlamaktadır.', 0x323038343630302e6a7067, 'Mersin', 'Merkez, Mersin, Türkiye ', '05112565858', 'themenord@gmail.com'),
(137, 'Dedeman Istanbul', 'Dedeman İstanbul\'un tümü modern oda ve süitleri, sıcak renklerle dekore edilmiştir. Hepsinde uydu TV, ücretsiz su ve çay-kahve yapma imkanı, banyolarında ise ilave konfor için bornoz ve terlikler mevcuttur. Otel genelinde Wi-Fi erişimi ücretsizdir. Konuklar hidromasajlı küvet ve modern bir spor salonu bulunan Life Style Health Club\'ın keyfini çıkarabilirler. Çeşitli masajlar da yaptırabilirler.', 0x333939303936352e6a7067, 'İstanbul', 'Gayrettepe, Beşiktaş, İstanbul, Türkiye', '05487785656', 'dedemanist@gmail.com'),
(138, 'Hilton Istanbul Kozyatagi', 'Hilton İstanbul Kozyatağı, Anadolu yakasında, iş dünyasının merkezindedir.Metro istasyonu ve Sabiha Gökçen Havalimanı servisine 5 dakikalık yürüyüş mesafesindedir. Tüm alanlarda ücretsiz Wi-Fi mevcuttur. Hilton Kozyatağı, İstanbul’un ünlü restoran ve eğlence mekanlarının tek çatı altında toplandığı bir oteldir.', 0x313332383636362e6a7067, 'İstanbul', 'Kozyataği, Kadiköy, İstanbul, Türkiye ', '05886598585', 'hiltonist@gmail.com'),
(139, 'Swissotel Büyük Efes İzmir ', 'Sayısız tarihi güzellikleri ile dünyanın en eski ve en güzel şehirlerinden biri olan İzmir’in merkezinde bulunan Swissotel Buyuk Efes, İzmir, şehrin dinamik iş ve alışveriş sahalarına olan yakınlığı, Uluslararası İzmir Fuar Alanı’na, Arkeoloji Müzesi ve İzmir Körfezi kıyısındaki muhteşem Kordon’a yürüme mesafesindeki konumuyla ulaşım açısından misafirlerine büyük bir rahatlık sağlamaktadır.', 0x333737373231332e6a7067, 'İzmir', 'Alsancak, Konak, İzmir, Türkiye ', '05356659999', 'swissotel@gmail.com'),
(140, 'DoubleTree by Hilton Izmir Alsancak', 'Otelin alakart restoranında dünya mutfaklarından yemekler servis edilir. Ayrıca, lobide ve Roof Bar\'da serinletici içeceklerin tadını çıkarabilirsiniz. DoubleTree by Hilton İzmir - Alsancak\'ın konukları, kahvaltılarını odalarının keyifli ortamında yapabilir.Konuklar fitness merkezinde egzersiz yapabilir ve Türk hamamında, saunada ya da masaj salonlarında yorgunluklarını atabilirler. Otelde ayrıca çamaşırhane hizmeti ve oda servisi de sağlanmaktadır.', 0x343830313738312e6a7067, 'İzmir', 'Alsancak, Konak, İzmir, Türkiye ', '05356689989', 'doubletree@gmail.com'),
(141, 'Kayı Snow Otel', 'Kayı Snow Otel, sarıçam ormanlarının beyaz örtüyle kaplandığı kuş sesleri ve kristal kar tanelerinin ışıltısı içinde doğanın tüm güzelliklerini hissedeceğiniz eğlenceli bir kar tatili imkanı sunuyor. Ev konforunda bir konaklama imkanı sunan 92 odasıyla hizmet veren tesisin tüm odalarında kasa, telefon, gardırop ve çalışma masası bulunuyor.', 0x3937373036322e6a7067, 'Kars', 'Sarıkamış, Kars, Türkiye ', '05365586565', 'kayisnow@gmail.com'),
(142, 'Bildik Otel - Sarıkamış ', '12 ay açık otelimiz Sarıkamış’taki eviniz sloganıyla sizlere rahatlık ve konfor sunmak için 2012 yılında hizmete açılmış olup, kış aylarında kristal kar ve kayak keyfinize hizmet etmekte, yaz aylarında ise muhteşem doğası ve havası ile kendinizi evinizde hissettirecek otel ortamı sunmaktadır. Bildik Otel - Sarıkamış 4 adet çok özel villası, lezzetli yemekleri, sıcak kanlı personeli, hamam ve saunası ile sizleri rahatlatacak huzurlu bir tesis imkanı sunmaktadır.', 0x383633363538302e6a7067, 'Kars', 'Sarıkamış, Kars, Türkiye ', '05998586556', 'bildikotel@gmail.com'),
(143, 'İksir Resort Town ', 'İksir Resort Town Hotel, Daday Çayı\'nın kıyısında, doğal bir çevrenin içerisindedir. Otelimizin odaları son derece şık ve konforlu bir şekilde döşenmiş olup sizleri tatiliniz boyunca kendi evinizde hissettirecektir. Her iki cephesinde cümle kapıları olan ahşap konak 1200 m²\'lik kullanım alanına sahiptir. İkinci derece tarihi eser olan konak aslına uygun olarak restore edilmiş, dekorasyonu dönemin özelliklerinden izler taşıyarak yapılmıştır. Konakta her kata ahşap merdivenlerle ulaşılır.', 0x363430343130352e6a7067, 'Kastamonu', 'Merkez, Daday, Kastamonu, Türkiye ', '05225689898', 'iksirresort@gmail.com'),
(144, 'Uğurlu Konakları ', 'Uğurlu Konakları kompleksi, toplam 1,5 dönüm bahçe içinde yer alan 2 adet geleneksel Kastamonu evinden oluşmaktadır.Yol cephesinde bulunan ve Uğurlu Konağı olarak bilinen konağın,1850 ile 1860 yılları arasında yapıldığı tahmin edilmektedir. Konakların tefrişinde, geleneksel Kastamonu evinin dekorasyonu örnek alınmış, bu tarz, modern konaklama gereksinimleriyle uyum içinde yorumlanmıştır.', 0x343838383735362e6a7067, 'Kastamonu', 'Merkez, Merkez, Kastamonu, Türkiye ', '05856895568', 'ugurlukonak@gmail.com'),
(145, 'Radisson Blu Hotel Kayseri', 'Konforlu odalar ve süitlerde ücretsiz yüksek hızlı kablosuz internet gibi imkanlar; otel içerisinde akşam yemeği seçenekleri arasında şehir manzaralı Çatı Restoran bulunuyor. Sakin bir eğlence için kapalı havuzda serinleyebilir ve oteldeki iş merkezinde 24 saat kullanıma açık yazdırma ve faks hizmetlerini kullanabilirsiniz. Hem iş organizasyonları hem de kişisel organizasyonlar için kullanılabilen esnek toplantı tesisleri de bulunuyor.', 0x32306a666966, 'Kayseri', 'Hunat Mahallesi, Melikgazi,Kayseri, Türkiye ', '05485568989', 'raddissonblu@gmail.com'),
(146, 'Holiday Inn Kayseri Düvenönü', 'Holiday Inn Kayseri Düvenönü, keyifli ve huzurlu bir konaklama gerçekleştirebilmeniz için, gerekli olan tüm ihtiyaçlarınızı sunarak ﻿ kendinizi evinizde gibi hissettirir. Tesisin Lobby katında bulunan uluslararası cafe, restaurantımızda güzel bir şehir turu sonrası iş amaçlı gelinen bir günün sonrasında ve özellikle kış mevsiminde Erciyes Dağı’nda geçireceğiniz muhteşem bir kayak sonrasında yorgunluğunuzu geçirebileceğiniz ve keyifli vakit geçireceğiniz bir atmosfer hazırladık.', 0x3535353932312e6a7067, 'Kayseri', 'Kocasinan, Kayseri, Türkiye ', '05448659898', 'holidaylnn@gmail.com'),
(147, 'Lozengrad Hotel ', 'Kırklareli Lozengrad Hotel\'imiz 5 yıldızlı otel standartlarında yapılmış olup hizmetizim\'de aynı kalitededir.Lozengrad Hotel tarihte Bulgaristan\'ın şehirlerinden birisi olup tarihteki ismi de Lozengrad\'dır. Anlamı ise Bağ şehri (üzüm bağlarının oldukça çok olduğu bir şehir)\'dir. Kırklareli şehir merkezi\'nde hizmet veren Lozengrad Hotel, ulaşıma elverişli konumu ve modern odaları ile misafirlerine konforlu bir tatil imkanı sunuyor.', 0x323034313636362e6a7067, 'Kırklareli', 'Merkez, Kirklareli, Türkiye ', '05485569898', 'lozengrad@gmail.com'),
(148, 'Grand Kirsehir Otel', 'Evinizin konforunu vadeden Bozdoğan Otel, Kültür turizmi başkenti Adıyaman\'da güler yüzlü personeli ve hizmet kalitesiyle hem iş hem tatil amaçlı seyahat eden misafirlerimizi memnuniyetle ağırlamaktadır.Tur firmalarının Kültür turizmi gezilerinde canlı müzik ve çiğköfte eşliğinde hizmet vermekteyiz', 0x3333373230342e6a7067, 'Kırşehir', 'Merkez, Kirsehir, Türkiye', '05889886565', 'grandkirsehir@gmail.com'),
(149, 'The Green Park Kartepe', 'The Green Park Resort Kartepe doğanın kalbindeki lokasyonu ile sizlere her mevsim şehrin stresli yaşantısından ve gürültüsünden uzaklaşmak için huzurlu bir tatil öneriyor. Özellikle kışın bembeyaz bir örtüyle süslendiğinde bu manzaranın, ilk baharda yemyeşil ağaçların ve temiz havanın, yazın sıcaklarında serin ve gölgeli ormanın, sonbaharda ise dökülen yaprakların ve doğanın en zengin renk paletleri ile süslenmiş romantik manzaranızın tadını çıkartabilirsiniz.', 0x393439383638372e6a7067, 'Kocaeli', 'Maşukiye, Kartepe, Kocaeli, Türkiye', '05485563232', 'thegreenpark@gmail.com'),
(150, 'Dedeman Konya', 'Afra İş ve Alışveriş Merkezi (yaklaşık olarak 2,4 km) Selçuk Kulesi (yaklaşık olarak 2,6 km) Karatay Medresesi Müzesi (yaklaşık olarak 2,9 km) Şems-i Tebrizi Camisi ve Türbesi (yaklaşık olarak 3,3 km) İnce Minareli Medrese (yaklaşık olarak 3,3 km)', 0x353633323433326a666966, 'Konya', 'Selçuklu, Konya, Türkiye', '05448785656', 'dedemankonya@gmail.com'),
(151, 'Emet Thermal Resort & Spa', 'Emet Termal Resort, 97.000 m²`lik botanik bahçe içerisinde Kütahya otelleri arasındaki ilk ve tek beş yıldızlı oteli, Emet Thermal Resort sağlık ve tatil için hizmetinizde. İstanbul-Ankara-İzmir üçgeninin tam ortasında olan Kütahya`nın Emet ilçesinde konumlanan otelimiz, 83 standart, 4 suit ve 36 aile suitine sahiptir. Tüm odaların banyosunda katkısız, şifalı termal suyu bulunmaktadır.', 0x313539343536332e6a7067, 'Kütahya', 'Merkez, Emet, Kütahya, Türkiye', '05665856556', 'emetthermal@gmail.com'),
(152, 'Divalin Hotel ', 'Oda servisi hizmeti bulunmaktadır. Tesis içerisinde yer alan masaj hizmetlerinden faydalanarak rahatlayabilir ve kendinizi yenilenmiş hissedebilirsiniz. Konaklamanız boyunca faydalanabileceğiniz TV, kablosuz internet, telefon ve oda kasası standart odalarda mevcuttur. Tesis içerisinde bulunan kuaför hizmetlerinden yararlanabilirsiniz. Tesiste bulunan ala carte restaurantta yemeklerinizi yiyebilirsiniz.', 0x383434303331312e6a7067, 'Malatya', 'Yeşilyurt, Malatya, Türkiye', '05368856969', 'divalinhotel@gmail.com'),
(153, 'Spilos Hotel ', 'Otelimizde klasik yıldızlı oteller dışında misafirlerimize sıcak ve samimi hizmet sunmak amacımızdır. Gelen misafirlerimizin kendilerini rahat ve huzurlu bir ortamda hissetmeleri bizim için önemlidir. Bu anlayışla hizmet vererek, siz değerli misafirlerimize sunduğumuz hizmetleri çeşitlendirmekteyiz. Manisa ormanlarının huzurlu ortamını yaşayabilirsiniz. Büyük şehrin yorgunluğunu. Çam ormanlarını seyrederken balkonunuzda dinlenirken üzerinizden atabilirsiniz.', 0x393539363930312e6a7067, 'Manisa', 'Merkez, Manisa, Türkiye ', '05221256565', 'spilosotel@gmail.com'),
(154, 'Hampton by Hilton Kahramanmaraş', 'Hilton Kahramanmaraş\'taki tümü şık dekorlu odalarda klima, minibar ve kasa bulunmaktadır. Tüm konaklama birimlerinde 102 cm LCD TV, çalışma masası ve ütü olanakları vardır. Yakınlarda çeşitli restoran ve kafelerin keyfini çıkarabilirsiniz. Resepsiyon 24 saat açıktır. Talep üzerine kuru temizleme ve çamaşırhane hizmetleri verilmektedir.Tesis fitness merkezi ve çalışma alanıyla hizmet vermektedir. WiFi erişimi ve ücretsiz özel otopark mevcuttur.', 0x363139393931332e6a7067, 'Kahramanmaraş', 'Merkez, Kahramanmaraş, Türkiye ', '05558568899', 'hamptonbyhil@gmail.com'),
(155, 'Matiat Hotel ', 'Tüm mekanlarında kendinizi tarihin içinde zaman yolculuğuna çıkmış gibi hissedeceğiniz bu tesis Midyat’ta yer alır. Ulusal ve uluslararası lezzetlerin servis edildiği restoranlarında bir lezzet şöleni yaşamaya hazırlanın. Tesisin havuz başı restoranı canlı müzik ve dans gösterileri eşliğinde servis edeceği yemekleri ile size unutulmaz bir akşam vaat eder. Ayrıca tesiste yer alan 3 farklı bar ile eğlence ve dansın tadını çıkarabilir; atıştırmalıklar eşliğinde içkinizi yudumlayabilirsiniz.', 0x373330313138322e6a7067, 'Mardin', 'Merkez, Midyat, Mardin, Türkiye ', '05478986655', 'miliathot@gmail.com'),
(156, 'Demircioğlu Park Hotel', 'Tüm alanlarında ücretsiz WiFi erişimi sunan Demircioğlu Park Hotel, Muğla\'da konaklama olanağı sağlamaktadır. Otelde spa merkezi ve sauna vardır. Konuklar barda içeceklerin tadını çıkarabilir. Tesis bünyesinde ücretsiz özel otopark mevcuttur. Resepsiyonu 24 saat hizmet veren tesiste kuaför ve ortak salon mevcuttur. Kuru temizleme hizmeti de sağlanmaktadır.', 0x343139383339322e6a7067, 'Muğla', 'Merkez, Muğla, Türkiye ', '05552300145', 'demircioglup@gmail.com'),
(157, 'Mir Saray Hotel', 'Şehrin tam kalbinde bulunan Muş Mir Saray Hotel, sizleri kusursuz hizmet ve üst düzey konforla buluşmaya davet ediyor. Çok özel konaklama, açık büfe kahvaltısı, şık restaurantı, prestijli toplantı – konferans salonu, kapalı otoparkı, tam donanımlı odaları ve misafirperverliği ile kapılarımızı ayrıcalıklı bir dünyaya açıyoruz.', 0x313432303834362e6a7067, 'Muş', 'Merkez, Muş, Türkiye ', '05335485757', 'mirsaray@gmail.com'),
(158, 'Cappadocia Elite Stone House ', 'Her odada düz ekran TV, klima ve elektrikli su ısıtıcısı bulunmaktadır. Ferah banyolarda duş, saç kurutma makinesi, ısıtmalı havlu askısı ve ücretsiz banyo malzemeleri vardır. Bazı Restoranın Kızıl Vadi, Gül Vadisi ve Göreme\'nin Peribacaları manzaralı terasında her gün servis edilen açık büfe Türk kahvaltısının tadını çıkarabilirsiniz. Yerel ve uluslararası yemeklerin tadına bakabileceğiniz restoranlara ve mağazalara 5 dakikadan daha kısa sürede yürüyebilirsiniz.', 0x373834313637342e6a7067, 'Nevşehir', 'Göreme, Kapadokya, Nevşehir, Türkiye ', '05125586868', 'cappadocia@gmail.com'),
(159, 'Ramada by Wyndham Niğde', 'Harika bir konumla birlikte ücretsiz kahvaltı, ücretsiz Wi-Fi, iki toplantı alanı ve spor salonu da sunuyoruz. Ayrıca, otel bünyesindeki restoran otantik Türk mutfağını denemek için mükemmel bir mekandır. Elis Toplantı Salonu 550 kişilik olup ayrıca Balo Salonu olarakta kullanılabilmektedir. Kapadokya Toplantı Salonu 60 Kişilik kapasitelidir.', 0x323833323438342e6a7067, 'Niğde', 'Merkez, Niğde, Türkiye', '05477854112', 'ramadabynigde@gmail.com'),
(160, 'The Wyspy Hotel ', 'Tesis genelinde ücretsiz Wi-Fi erişimi sunan The Wyspy Hotel, Ordu\'da, Kurul Kalesi\'ne 10 km uzaklıkta konaklama olanağı sağlamaktadır. Konuklar tesis bünyesindeki restoranın keyfini çıkarabilirler. Tesis bünyesindeki özel otopark ücretsizdir. Bu otelin her odasında klima ve uydu TV bulunmaktadır. Odalarda su ısıtıcısı da vardır. Odaların hepsi duşlu özel banyoya sahiptir. İlave olanaklar arasında terlik ve ücretsiz banyo malzemeleri yer alır.', 0x353232373737392e6a7067, 'Ordu', 'Merkez, Ordu, Türkiye ', '05895685847', 'thewyps@gmail.com'),
(161, 'Ramada Plaza Rize', 'Ramada Plaza Rize oteli, şehrin endüstri nabzının attığı Gündoğdu mevkiinde 200 tanesi 36m² büyüklüğünde deluxe, 57 tanesi connection, 18 tanesi 1+1 suite, 8 tanesi family suite, 2 tanesi Grand suite, 1 tanesi King Suite ve 1 tanesi de presidential suite olmak üzere toplamda 290 adet ferah ve çağdaş odasıyla faaliyet gösteren şehrin ilk ve tek Uluslararası oteli durumundadır.', 0x323234313531392e6a7067, 'Rize', 'Merkez, Rize, Türkiye', '05526584757', 'ramadarize@gmail.com'),
(162, 'Radisson Blu Hotel Sakarya ', 'Radisson Blu Hotel Sakarya, evinizdeki tüm konforlara sahip 139 modern oda ve süit ile hem eglence hem de is amaçli seyahat edenler için mükemmel bir ortam sunmaktadir. Sakarya Otobüs terminali\'ne 1 km,Sapanca gölü\'ne 18 km, Arifiye Tren istasyonu\'na 2 km, Tem otoyolu giseleri\'ne 800 m uzakliktadir.Ücretsiz Wi-Fi gibi modern olanaklarin yani sira sehir manzarasinin keyfini çikarin.', 0x363734333337302e6a7067, 'Sakarya', 'Sapanca Merkez, Sapanca, Sakarya, Türkiye', '05036584757', 'raddissonsakarya@gmail.com'),
(163, 'B&C Hotel', 'B&C Hotel kosulsuz misafir memnuniyetini kendine rehber edinmis ekibi, konforun ve rahatligin farkli bir boyuta tasindigi genis deniz ve sehir manzarali odalari, kalitenin ve lezzetin sizi bir rüya aleminde gezintiye çikardigi restaurant ve yemekleriyle, bir otelden daha fazlasini vaat ediyor. Burasi B&C Hotel siz hayal edin biz size gerçekle yansimasini sunalim.', 0x373833323733376a706567, 'Samsun', 'Atakum, Samsun, Türkiye ', '05554125454', 'bchotel@gmail.com'),
(164, 'Barden Hotel', 'Barden Hotel : Teras cafe gün boyunca nefis atıştırmalık , pizza ,pide , lahmacun , hamburger , Taze sıkılmış meyve suları ve kahve çeşitlerini yudumlayarak dostlarınızla hoşça vakit geçireceğiniz, Büyüleyici gün batımı ve Siirt manzarası ile sizi karşılayan hatıralarınızda önemli bir yer alacak unutulmaz mekandır.Din ve astronomi bilgini olarak ibrahim hakkı Hz.’nin hocası İsmail Fakirullah için 18.yüzyılda yaptırdığı türbe Tillo ilçe merkezinde bulunmaktadır.', 0x373030303935302e6a7067, 'Siirt', 'Merkez, Siirt, Türkiye ', '05478752200', 'bardenhotel@gmail.com'),
(165, 'Geruze Otel ', 'Türkiye’nin en kuzey ucunda Sinop’un şirin ilçesi Gerze’de, adını eski mitoloji Gerze ilçesinden alan Geruze Otel, doğayı seven ve yeşillik arayanlar için ideal bir oteldir. Bir yandan serin Karadeniz sularına dalmak bir yandan da yeşil terapiye kendinizi verip yöresel yemeklerden tadacaksanız ister kısa, ister uzun tatillerinizde Sinop’taki eviniz Geruze Otel sizleri bekliyor.', 0x313735353232362e6a7067, 'Sinop', 'Merkez, Gerze, Sinop, Türkiye ', '05254475858', 'geruzeotel@gmail.com'),
(166, 'The Green Park Sivas', 'Sivas\'ın gelişen yeni bölgesinde yer alan; modern, konforlu, zevkle döşenmiş odaları ile iş ve gezi amaçlı misafirlerimizin rahatı için tasarlanmıştır. Bir cephesi modern mimariye göre diğer cephesi de klasik Avrupa mimarisine göre dizayn edildi. Ücretsiz kapalı yüzme havuzu ve sağlıklı yaşam merkezi sunan 5 yıldızlı Otelin tüm misafir odalarında, toplantı odalarında ve genel alanda ücretsiz Wi-Fi bulunmaktadır.', 0x353631363235352e6a7067, 'Sivas', 'Merkez, Sivas, Türkiye', '05585875454', 'thegreensivas@gmail.com'),
(167, 'Des Otel ', 'Otelimiz ayrıca Tekirdağ Çorlu Havalimanı\'na 59 km, Tekirdağ Otogarı\'na ise 1 km mesafede bulunuyor. Modern tarzla dizayn edilmiş deniz manzaralı odalarımızda estetik ve konforun keyfini yaşayabilir, Tekirdağ denizinin maviliğini ve şehrin güzelliğini sizlere sunan terasımızda eşsiz lezzetlerin tadına vararak hoşça vakit geçirebilirsiniz.', 0x363830373035352e6a7067, 'Tekirdağ', 'Merkez, Tekirdağ, Türkiye ', '05595475858', 'desotel@gmail.com');
INSERT INTO `oteller` (`id`, `otel_adi`, `aciklama`, `resim`, `il`, `adres`, `telefon`, `eposta`) VALUES
(168, 'Dedeman Tokat', 'Yüzyıllardır tüm medeniyetlerin göz bebeği olan Anadolu’nun beyaz zambaklar şehri Tokat’ta tarih ve doğayı iç içe görebilecek, eşsiz lezzetleri deneyimleyeceksiniz. Bu güzel şehrin kalbinde Yeşilırmak manzarasını izleyebileceğiniz, şehrin en büyük alışveriş merkezine ve tarihi güzelliklerine yürüme mesafesinde yer alan Dedeman Tokat, Kongre Merkezi, 3000 m2 alana sahip Spor merkezi ve açık-kapalı yüzme havuzlarıyla misafirlerine hizmet vermektedir.', 0x383734393934332e6a7067, 'Tokat', 'Merkez, Tokat, Türkiye', '05602145855', 'dedemantokat@gmail.com'),
(169, 'Park Dedeman Trabzon ', 'Bu tesis plaja 14 dakikalik yürüme mesafesindedir. Karadeniz Bölgesi\'ndeki Trabzon\'da, Kasustu Plaji\'ndan 550 metre uzaklikta yer alan Park Dedeman Trabzon\'da bir fitness merkezi bulunmaktadir. Otel genelinde ücretsiz Wi-Fi hizmeti sunulmaktadir. Park Dedeman Trabzon\'un klimali odalari, oturma alani, emanet kasasi ve düz ekran uydu TV ile donatilmistir. Elektrikli su isiticisi ve minibar da mevcuttur. Bazi odalarda katlanabilir yataklar, teras ve deniz veya sehir manzarasi bulunur.', 0x373936303835302e6a7067, 'Trabzon', 'Merkez, Yomra, Trabzon, Türkiye ', '05612214745', 'parkdedemantrab@gmail.com'),
(170, 'Dedeman Şanlıurfa ', 'Tüm şehrin etkileyici bir manzarasını sunan bu prestijli 5 yıldızlı otel, modern konaklama birimleri ve olanaklara sahiptir. Otelin ısıtmalı kapalı yüzme havuzunda gevşeyebilir veya fitness merkezinde stres atabilirsiniz. Ardından da terasta akşam yemeği yiyebilir, barda içki içebilir veya otelin kendi gece kulübünde geç saatlere kadar eğlenebilirsiniz. Safran Restaurant, yerel lezzetlerin de dahil olduğu çeşitli yemeklerden oluşan alakart menü seçenekleri sunmaktadır.', 0x373535373933386a666966, 'Şanlıurfa', 'Merkez, Şanliurfa, Türkiye ', '05854720011', 'dedemanurfa@gmail.com'),
(171, 'Ramada By Wyndham Uşak', 'Şehir merkezinde konumlanan Ramada Uşak; ulaşım, eğlence ve alışveriş merkezlerine yakın konumu ile misafirlerine avantaj sağlıyor. Modern dekore edilmiş 124 oda ile misafirlerine hizmet veren tesisin tüm odalarında; LED TV, klima, uydu yayını, minibar ve telefon mevcut. Tesiste; kapalı havuz, hamam ve fitness salonu bulunuyor. Ayrıca restoran ve barıda mevcut.', 0x363530383132342e6a7067, 'Uşak', 'Uşak, Uşak, Türkiye ', '05110256858', 'ramadausak@gmail.com'),
(172, 'Caspian Suit Otel ', 'Otelimiz Van çarşı merkezde bulunmaktadır. * Otelimizin tüm odaları: Kombi - LCD TV - Çamaşır Makinesi - Bulaşık Makinesi - Buz Dolabı - Fırın ve Ketıl ile donatılmıştır. * Her odanın kendisine ait modemi mevcuttur, ücretsiz Wİ-Fİ erişimi sağlanmaktadır. * Tüm odalarımız 1+1 suittir. Evinizi aratmayan ve konforuyla ruhunuza hitap ederek tatilinizi güzel geçirebilir ve şehir merkezinin tüm imkanlarından faydalanabilirsiniz.', 0x363939303538306a666966, 'Van', 'Merkez, Van, Türkiye ', '05985684747', 'caspiamsuit@gmail.com'),
(173, 'Grand Ser Hotel ', 'Yozgat şehir merkezinde faaliyet gösteren Yozgat Grand Ser Hotel, düz ekran TV ve ücretsiz Wi-Fi erişimi ile donatılmış zarif odalar sunmaktadır. Otelin modern sağlıklı yaşam alanında kapalı havuza bakan bir fitness merkezi bulunmaktadır.Yozgat Grand Ser\'in klimalı odalarında modern iç mekanlar göze çarpar. Tüm odalarda minibar, uydu TV ve özel banyo mevcuttur. Oda servisi de hizmetinizdedir.', 0x353335303736392e6a7067, 'Yozgat', 'Merkez, Yozgat, Türkiye ', '05484487555', 'grandser@gmail.com'),
(174, 'Dedeman Zonguldak', 'Doğal ve tarihi güzellikleriyle kongre, doğa ve kültür turizmi için çekim merkezi olan Zonguldak’ın ilk 5 yıldızlı oteli olma özelliğini taşıyan Dedeman Zonguldak, şehre modern ve lüks bir yaşam alanı getirmiştir.', 0x383435373331352e6a7067, 'Zonguldak', 'Merkez, Zonguldak, Türkiye', '05487586565', 'dedemanzonguldak@gmail.com'),
(175, 'Grand Altuntaş Hotel', 'Grand Altuntaş Hotel, kalitesinden asla ödün vermeyen ve yüksek standartlarda bir hizmet anlayışına sahiptir. Otelimizde konakladığınız süre içerisinde bölgemizin doğal güzelliklerini görebilirsiniz. Ihlara Vadisi, Selime, Güzelyurt, Sofular Vadisi, Kapadokya ve Göreme’yi günü birlik turlarla rahatlıkla gezebilir, günün yorgunluğunu yeşillikler içindeki bahçemizde güller arasında bulunan kamelyamızda çayınızı yudumlarken Hasan Dağı’nın büyüleyici güzelliği eşliğinde çıkarabilirsiniz.', 0x333933393232392e6a7067, 'Aksaray', 'Merkez, Aksaray, Türkiye ', '05486598544', 'grandaltuntas@gmail.com'),
(176, 'Otel Bayburt Konaklama', 'Otelimiz; şehrin merkezinde, Bayburt’un tam girişinde, Trabzon, Erzurum ve Çaykara yollarının birleştiği kavşakta yer alır. Bayburt‘tun en büyük, en iyi ve en temiz oteli olarak ön plana çıkan Bayburt otel, sadece Bayburt’ta değil, çevre illerde de kendinden söz ettirmektedir.', 0x323435373533342e6a7067, 'Bayburt', 'Merkez, Bayburt, Türkiye ', '05695874521', 'otelbayburt@gmail.com'),
(177, 'Grand Karaman Spa & Otel', 'Grand Karaman Spa & Otel, Karaman - Otel Photo Karaman\'ın merkezinde hizmet veren Grand Karaman Hotel\'de kapalı yüzme havuzu bulunmaktadır. Tesis genelinde ücretsiz Wi-Fi erişiminden yararlanabilirsiniz. Otel bünyesinde ücretsiz otopark da mevcuttur. Hotel Grand Karaman\'ın tüm odaları düz ekran TV, klima ve minibar ile donatılmıştır. Özel banyolarda saç kurutma makinesi ve ücretsiz banyo malzemeleri temin edilmiştir. Bütün odalar bahçe manzaralıdır; bazı odalarda oturma alanı da vardır.', 0x363935373638392e6a7067, 'Karaman', 'Merkez, Karaman, Türkiye ', '05487445522', 'grandkaraman@gmail.com'),
(178, 'Ons Otel ', 'Dem Otel Kırıkkale, tüm yıl açık olup misafirlerini kusursuz bir hizmet anlayışı ile doğanın kucağında sakin ve huzurlu ortamında ağırlamaktadır. Tesisin tüm açık - kapalı ortak kullanım alanları ile konaklama birimlerinde ücretsiz wi - fi erişimli kablosuz internet ağı mevcuttur. Tesisin barından sıcak ve soğuk içeceklerin tadına bakabilir keyifli vakit geçirebilirsiniz. Tesisin özel otopark alanı ücretsizdir.', 0x313239383539352e6a7067, 'Kırıkkale', 'Merkez, Kirikkale, Türkiye ', '05485869845', 'onsotel@gmail.com'),
(179, 'Bozooğulları Hotel ', 'Bozooğulları Hotel\'in odaları konforlu mobilyalarla döşenmiştir. Odaların tamamında saç kurutma makinesi içeren özel banyo ve minibar bulunmaktadır. Bazı süitlerde oturma alanı da mevcuttur. Günlük kahvaltı açık büfe tarzında servis edilir. Otelde panoramik şehir manzarasına sahip bir teras kafe vardır. Restoran ve barlarda yerel yemekler ve serinletici içecekler sunulmaktadır. Otelin resepsiyonu 7 gün 24 saat hizmet vermektedir. Ayrıca oda servisi de mevcuttur.', 0x353033303835332e6a7067, 'Batman', 'Merkez, Batman, Türkiye ', '05704152536', 'bozoogullarihotel@gmail.com'),
(180, 'Diamond Liman Hotel ', 'Diamond Liman Otel, odalarına giriş, saat 15:00\'ten itibaren başlar. Odalardan çıkış saati ise en geç 12:00\'dir. Evcil hayvan kabul edilmiyor. Tesiste hizmet veren açık alanların kullanımı mevsim koşullarına bağlıdır. Aile odaları veya bazı özel odalar haricinde, diğer odalarda yapılacak 2 + 2 veya 3 + 1 konaklamalar, odada sıkışıklık yaratabilir ve verilen ilave yataklar sabit yatak konforunda olmayabilir', 0x373932323131326a706567, 'Bartın', 'Amasra, Bartin, Türkiye ', '05804756565', 'diamondliman@gmail.com'),
(181, 'Cildir Gölü Konagi ', '2010’lu yıllarda, Çıldır Gölü, namı giderek artmasına rağmen, hala misafirlerini ağırlayacak bir yapıdan mahzundu. Bu ihtiyaca binaen Prof. Dr. Yusuf Bayraktar, doğup yetiştiği Sazlısu Köyü’ne hizmet etme gayesiyle, Sazlısu Köyü ile Çıldır Gölü arasındaki dede yadigarı tarlasına, köy mimarisine uygun ‘butik otel’ tarzındaki, ekoturizm amaçlı ‘Çıldır Gölü Konağı’ nı yaptırdı. 2019 yılında açılan Konağımız, Çıldır Gölü ahalisini, doğayı koruyarak ve bütünleşerek, geliştirme ülküsüyle kurulmuştur', 0x3133323636312e6a7067, 'Ardahan', 'Çıldır, Ardahan, Türkiye ', '05442152525', 'cildirkonak@gmail.com'),
(182, 'Grand Derya Otel ', 'Tüm odalarda klima, uydu kanallı TV, su ısıtıcısı, banyo veya duş, ücretsiz banyo malzemeleri ve gardırop bulunmaktadır. Seçkin odalar şehir manzaralı olup odalarda özel banyo bulunmaktadır. Odalar, konuklara bir buzdolabı sağlayacaktır. Tesiste her sabah büfe kahvaltı servis edilmektedir. Stadyuma yürüyerek 19 dakikada ulaşabilirsiniz.', 0x363536363532332e6a7067, 'Iğdır', 'Merkez, Iğdir, Türkiye', '05851456585', 'grandderya@gmail.com'),
(183, 'Limak Thermal Boutique Hotel ', 'Bu otel, Versay sarayından esinlenerek dekore edilmiş iç mekanlar ve kolonyal tarz mimarisini bir araya getirmektedir. Spada termal hidromasaj küveti, kuru ve ıslak sauna, çeşitli masaj ve güzellik terapileri mevcuttur. Limak Thermal Hotel, kaplıcalarıyla ünlü Termal ilçesinde yer almaktadır. Yalova şehir merkezi yaklaşık 12 km uzaklıktadır. Limak Hotel\'in konuk odaları ücretsiz Wi-Fi erişimi, düz ekran TV ve spa küvetiyle donatılmıştır.', 0x343932353930322e6a7067, 'Yalova', 'Gökçedere, Termal, Yalova, Türkiye ', '05854756522', 'limakthermal@gmail.com'),
(184, 'Safran City Hotel & Spa', 'Karabük\'ün eşsiz tarihi mekanlarından biri olan Safranbolu\'da yer alan Safran City Hotel & Spa, sauna, Türk Hamamı ve masaj hizmetlerini içeren bir spa merkezine ev sahipliği yapmaktadır. Tesisin diğer olanakları arasında toplantı odası ve konferans salonu sayılabilir. Safran City Hotel & Spa\'nın tüm odalarında balkon, çalışma masası, çay-kahve makinesi, eşya dolabı, klima, mini bar, telefon ve uydu TV yer almaktadır.', 0x3636313435372e6a7067, 'Karabük', 'Safranbolu, Karabük, Türkiye ', '05485220033', 'safrancity@gmail.com'),
(185, 'Lina Suite Hotel ', 'Kilis\'te yepyeni bir otel anlayışı getiren Lina Suite Hotel misafirlerini ağırlamaya başladı. Lina Suite Hotel geniş ve ferah odaları,şık atmosferi ile misafir memnuniyetine odaklı bir konaklama sunuyor. Zevkle tasarlanan 30 suit odası, kaliteli hizmet anlayışı ve tüm detayları ile kendinizi evinizde ve aynı zamanda özel hissedeceksiniz. Sadelik ve konforu birleştiren Lina Suite Hotel; keyifli, huzurlu ve temiz bir konaklama için aklınıza gelen ilk yer olacaktır.', 0x373931333731382e6a7067, 'Kilis', 'Merkez, Kilis, Türkiye ', '05485475544', 'linasuite@gmail.com'),
(186, 'Livadi Butik Otel ', 'Livadi Boutique Hotel & Restaurant Düzce/ Akçakoca\'da Bulunmaktadır. Ulaşım Mesafesi Olarak İstanbul ve Ankara İllerine 230-250 km Uzaklıktadır. Denize Sıfır Konumda Yer Almakla Birlikte,Şehir Merkezine 5 dk Yürüme Mesafesindedir. Denize Bakan Odaları Mevcuttur ,Karadenizin Mavisi İle Misafirlerine Güneşin Doğuşunu ve Batışını İzleyebilmenin Ayrıcalığını Yaşatmakla Beraber ,Otantik-Ağaç Döşeme Konsepti İle Alaçatı Havasını Yansıtmaktadır...', 0x343835303732342e6a7067, 'Düzce', 'Merkez, Akçakoca, Düzce, Türkiye ', '05310024578', 'livadibutik@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resimler`
--

CREATE TABLE `resimler` (
  `id` int NOT NULL,
  `resimler` varbinary(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `resimler`
--

INSERT INTO `resimler` (`id`, `resimler`) VALUES
(110, 0x313434393834332e6a7067),
(112, 0x393638383031392e6a7067),
(114, 0x353537333733312e6a7067),
(116, 0x373731383530392e6a7067),
(118, 0x363934313433302e6a7067),
(119, 0x353034363033322e6a7067),
(121, 0x363238363136372e6a7067),
(123, 0x333938393938312e6a7067),
(125, 0x383930313136332e6a7067),
(126, 0x363630373037372e6a7067),
(128, 0x313439333634352e6a7067),
(130, 0x363037323136372e6a7067),
(131, 0x373139303933312e6a7067),
(133, 0x383538323730332e6a7067),
(134, 0x383634343339392e6a7067),
(136, 0x323436383735302e6a7067),
(138, 0x3432323933392e6a7067),
(139, 0x3131323031332e6a7067),
(140, 0x363730303630372e6a7067),
(142, 0x333037303532382e6a7067),
(144, 0x363435343635372e6a7067),
(146, 0x373732303331392e6a7067),
(148, 0x3537323830312e6a7067),
(150, 0x323537323633302e6a7067),
(152, 0x383232363437382e6a7067),
(154, 0x353534333534332e6a7067),
(155, 0x353332323936312e6a7067),
(157, 0x343532393332302e6a7067),
(159, 0x3638343838362e6a7067),
(161, 0x323531313132322e6a7067),
(162, 0x333635303335362e6a7067),
(164, 0x353737303433322e6a7067),
(166, 0x3538353839352e6a7067),
(168, 0x323937353239392e6a7067),
(169, 0x383035373130312e6a7067),
(171, 0x393637333132322e6a7067),
(173, 0x393435393035362e6a7067),
(175, 0x383338373435312e6a7067),
(176, 0x3735373535386a706567),
(178, 0x323332363930306a706567),
(180, 0x333935303038376a706567),
(182, 0x343734363130322e6a7067),
(184, 0x3437383338392e6a7067),
(187, 0x383736363032342e6a7067),
(188, 0x343130303234342e6a7067),
(190, 0x343535393335372e6a7067),
(192, 0x323231303335312e6a7067),
(194, 0x373033343330382e6a7067),
(195, 0x323634373138322e6a7067),
(197, 0x3237313233362e6a7067),
(199, 0x373838343438352e6a7067),
(201, 0x343330393230352e6a7067),
(202, 0x343336313136332e6a7067),
(204, 0x343935393236392e6a7067),
(206, 0x373832323930332e6a7067),
(208, 0x383736343334382e6a7067),
(209, 0x353235363930342e6a7067),
(211, 0x323832343236332e6a7067),
(212, 0x363737343233352e6a7067),
(214, 0x393734323930302e6a7067),
(216, 0x333538383231362e6a7067),
(217, 0x323834383232372e6a7067),
(219, 0x333833363533342e6a7067),
(221, 0x343335353230322e6a7067),
(222, 0x363635393830352e6a7067),
(224, 0x383939313338322e6a7067),
(226, 0x333433323930302e6a7067),
(228, 0x323531353432342e6a7067),
(230, 0x333933383830322e6a7067),
(231, 0x393839363030352e6a7067),
(233, 0x373238393335342e6a7067),
(235, 0x313235393737362e6a7067),
(237, 0x3831373734382e6a7067),
(239, 0x363032343033362e6a7067),
(240, 0x373039353032312e6a7067),
(242, 0x3439343937372e6a7067),
(243, 0x333530383538332e6a7067),
(245, 0x393830383333352e6a7067),
(247, 0x3637313336352e6a7067),
(248, 0x363838373939352e6a7067),
(250, 0x323639393933342e6a7067),
(252, 0x3836353531332e6a7067),
(253, 0x313932333737352e6a7067),
(255, 0x363733353234392e6a7067),
(257, 0x323835393233332e6a7067),
(258, 0x353630373531342e6a7067),
(260, 0x363936303634302e6a7067),
(262, 0x333831343036332e6a7067),
(263, 0x313335353139342e6a7067),
(265, 0x353835323936382e6a7067),
(267, 0x323731383334322e6a7067),
(268, 0x363735373135342e6a7067),
(270, 0x3339353036322e6a7067),
(272, 0x313235323231302e6a7067),
(273, 0x363331333636382e6a7067),
(275, 0x313333353739332e6a7067),
(277, 0x383630303230312e6a7067),
(278, 0x353238303435362e6a7067),
(280, 0x363233313539372e6a7067),
(282, 0x333732313433332e6a7067),
(283, 0x353532303732342e6a7067),
(285, 0x333435353837342e6a7067),
(286, 0x3938353434352e6a7067),
(288, 0x343838313839352e6a7067),
(290, 0x3237343736352e6a7067),
(292, 0x383237373934322e6a7067),
(294, 0x343136343136382e6a7067),
(296, 0x383434363231312e6a7067),
(297, 0x393739353439362e6a7067),
(299, 0x393232303736322e6a7067),
(301, 0x333832333739342e6a7067),
(302, 0x393733313739392e6a7067),
(304, 0x373637363939336a666966),
(306, 0x383431303930326a666966),
(307, 0x393931303032302e6a7067),
(309, 0x353231323632322e6a7067),
(311, 0x393139303737312e6a7067),
(313, 0x343730373733342e6a7067),
(315, 0x333835363134302e6a7067),
(316, 0x393731363937392e6a7067),
(318, 0x333739313431382e6a7067),
(320, 0x323537373630382e6a7067),
(321, 0x343735303338392e6a7067),
(323, 0x343731373637372e6a7067),
(325, 0x393535303738302e6a7067),
(326, 0x383536353430322e6a7067),
(328, 0x333934343432332e6a7067),
(330, 0x393734373931382e6a7067),
(331, 0x353635323031302e6a7067),
(333, 0x393231383232302e6a7067),
(334, 0x353237333031342e6a7067),
(336, 0x343439303232372e6a7067),
(337, 0x3234373838312e6a7067),
(339, 0x343931383837372e6a7067),
(341, 0x323937303836382e6a7067),
(342, 0x343934323732322e6a7067),
(344, 0x323532383335322e6a7067),
(346, 0x383532333935372e6a7067),
(347, 0x313930333335302e6a7067),
(349, 0x343936383239332e6a7067),
(354, 0x363235323736332e6a7067),
(356, 0x353036303839336a666966),
(358, 0x363434363530362e6a7067),
(359, 0x3635343239382e6a7067),
(363, 0x363232393232342e6a7067),
(365, 0x383439343237332e6a7067),
(366, 0x393031373038342e6a7067),
(368, 0x383635353330312e6a7067),
(370, 0x323336353630302e6a7067),
(371, 0x3738383235352e6a7067),
(373, 0x333238343633322e6a7067),
(375, 0x323830363632382e6a7067),
(376, 0x313633313037372e6a7067),
(378, 0x313932353837362e6a7067),
(379, 0x383538373632392e6a7067),
(381, 0x363638373135332e6a7067),
(383, 0x323634353637302e6a7067),
(385, 0x373434353431322e6a7067),
(387, 0x383331393336342e6a7067),
(389, 0x333235373735332e6a7067),
(390, 0x363639343038372e6a7067),
(392, 0x373730323938392e6a7067),
(394, 0x3635373931342e6a7067),
(396, 0x353832373239312e6a7067),
(398, 0x393332383239322e6a7067),
(400, 0x343835393139322e6a7067),
(401, 0x393231373931392e6a7067),
(405, 0x383038313836362e6a7067),
(406, 0x383930393939392e6a7067),
(408, 0x323235363932322e6a7067),
(410, 0x313932383831382e6a7067),
(411, 0x313236363536342e6a7067),
(413, 0x323132343431372e6a7067),
(415, 0x3333303030342e6a7067),
(417, 0x393331353334312e6a7067),
(419, 0x313832323336332e6a7067),
(421, 0x363632383736352e6a7067),
(422, 0x343935343235316a666966),
(424, 0x313534353234352e6a7067),
(426, 0x383630313834372e6a7067),
(427, 0x34323433312e6a7067),
(429, 0x353831333933342e6a7067),
(431, 0x333839363133352e6a7067),
(432, 0x353736313633372e6a7067),
(434, 0x373231383730362e6a7067),
(436, 0x353631343833302e6a7067),
(438, 0x393531333634382e6a7067),
(440, 0x353136373835362e6a7067),
(442, 0x3438313436382e6a7067),
(443, 0x313431383637362e6a7067),
(445, 0x353736343737362e6a7067),
(447, 0x343530343436382e6a7067),
(448, 0x353435373037352e6a7067),
(450, 0x383737373836372e6a7067),
(452, 0x333438373836382e6a7067),
(453, 0x353537303733362e6a7067),
(455, 0x363130363831392e6a7067),
(456, 0x353233313331342e6a7067),
(458, 0x393630383434302e6a7067),
(460, 0x363438313631372e6a7067),
(462, 0x373235313734352e6a7067),
(464, 0x313131323730312e6a7067),
(465, 0x3537383937322e6a7067),
(467, 0x343030303533382e6a7067),
(469, 0x313432303332372e6a7067),
(470, 0x363234383530342e6a7067),
(472, 0x353638323430382e6a7067),
(473, 0x373335333433322e6a7067),
(475, 0x333634353532306a666966),
(477, 0x353335343036302e6a7067),
(478, 0x323038343630302e6a7067),
(480, 0x353435323039322e6a7067),
(482, 0x343934373337322e6a7067),
(483, 0x333939303936352e6a7067),
(485, 0x373638383834302e6a7067),
(487, 0x333232373930312e6a7067),
(489, 0x313332383636362e6a7067),
(491, 0x323131383333322e6a7067),
(493, 0x373836393837332e6a7067),
(494, 0x333737373231332e6a7067),
(496, 0x323336343739332e6a7067),
(498, 0x353737343834372e6a7067),
(499, 0x343830313738312e6a7067),
(501, 0x383530383939362e6a7067),
(503, 0x383736353737322e6a7067),
(504, 0x3937373036322e6a7067),
(506, 0x383138373536372e6a7067),
(508, 0x313836333035382e6a7067),
(510, 0x383633363538302e6a7067),
(512, 0x313438343535352e6a7067),
(513, 0x363430343130352e6a7067),
(515, 0x363133343835382e6a7067),
(517, 0x313732313235302e6a7067),
(519, 0x343838383735362e6a7067),
(522, 0x313635323934312e6a7067),
(524, 0x32306a666966),
(526, 0x353332353630352e6a7067),
(528, 0x383736393034362e6a7067),
(529, 0x3535353932312e6a7067),
(531, 0x353637363939332e6a7067),
(533, 0x333936303030332e6a7067),
(534, 0x323034313636362e6a7067),
(536, 0x383133393833312e6a7067),
(538, 0x343439333331322e6a7067),
(539, 0x3333373230342e6a7067),
(541, 0x373834363930346a706567),
(542, 0x393439383638372e6a7067),
(544, 0x333936343634312e6a7067),
(546, 0x363930343836362e6a7067),
(547, 0x353633323433326a666966),
(549, 0x363238323531302e6a7067),
(551, 0x313831393738332e6a7067),
(552, 0x313539343536332e6a7067),
(554, 0x353035393937302e6a7067),
(555, 0x383434303331312e6a7067),
(557, 0x333538383033372e6a7067),
(559, 0x383438363337392e6a7067),
(561, 0x393539363930312e6a7067),
(563, 0x343138373636332e6a7067),
(565, 0x313335343638382e6a7067),
(566, 0x363139393931332e6a7067),
(568, 0x393339393134372e6a7067),
(569, 0x373330313138322e6a7067),
(571, 0x3331383834362e6a7067),
(572, 0x343139383339322e6a7067),
(574, 0x383337383333322e6a7067),
(576, 0x313432303834362e6a7067),
(578, 0x343237393039302e6a7067),
(580, 0x383232323331352e6a7067),
(581, 0x373834313637342e6a7067),
(583, 0x3532393733322e6a7067),
(585, 0x393135373433362e6a7067),
(586, 0x323833323438342e6a7067),
(588, 0x333239333030372e6a7067),
(590, 0x373636353032372e6a7067),
(591, 0x353232373737392e6a7067),
(593, 0x343736393138366a666966),
(595, 0x373335353035366a666966),
(596, 0x323234313531392e6a7067),
(598, 0x363838333435332e6a7067),
(600, 0x353730373732382e6a7067),
(601, 0x363734333337302e6a7067),
(603, 0x363435383930322e6a7067),
(605, 0x373633393135352e6a7067),
(606, 0x373833323733376a706567),
(608, 0x323934323533396a706567),
(610, 0x393836353930396a706567),
(611, 0x373030303935302e6a7067),
(613, 0x323633393731322e6a7067),
(615, 0x313735353232362e6a7067),
(617, 0x373130393730352e6a7067),
(619, 0x323035363733372e6a7067),
(620, 0x353631363235352e6a7067),
(622, 0x353135323833362e6a7067),
(623, 0x363830373035352e6a7067),
(625, 0x393431333130332e6a7067),
(627, 0x363739383231322e6a7067),
(628, 0x383734393934332e6a7067),
(630, 0x313233303231332e6a7067),
(632, 0x383538353430312e6a7067),
(633, 0x373936303835302e6a7067),
(635, 0x373437303937392e6a7067),
(637, 0x313134383037342e6a7067),
(638, 0x373535373933386a666966),
(640, 0x38373135392e6a7067),
(642, 0x333635373238372e6a7067),
(643, 0x363530383132342e6a7067),
(645, 0x323535353330332e6a7067),
(646, 0x363939303538306a666966),
(648, 0x3639373339322e6a7067),
(650, 0x313735373832302e6a7067),
(651, 0x353335303736392e6a7067),
(653, 0x383631373931312e6a7067),
(654, 0x383435373331352e6a7067),
(656, 0x313832333738332e6a7067),
(658, 0x393038323330352e6a7067),
(659, 0x333933393232392e6a7067),
(661, 0x373739323537352e6a7067),
(663, 0x323539383934302e6a7067),
(664, 0x323435373533342e6a7067),
(666, 0x363736393835392e6a7067),
(668, 0x363935373638392e6a7067),
(670, 0x363131333238302e6a7067),
(672, 0x313639333436332e6a7067),
(674, 0x313239383539352e6a7067),
(676, 0x333434363735362e6a7067),
(679, 0x353630363839382e6a7067),
(681, 0x353033303835332e6a7067),
(683, 0x323338333235392e6a7067),
(685, 0x353230303537352e6a7067),
(686, 0x373932323131326a706567),
(688, 0x313534323638302e6a7067),
(690, 0x393330373538312e6a7067),
(691, 0x3133323636312e6a7067),
(693, 0x363538303233362e6a7067),
(695, 0x313933323235322e6a7067),
(696, 0x363536363532332e6a7067),
(698, 0x353735333537392e6a7067),
(700, 0x383537313936342e6a7067),
(702, 0x343932353930322e6a7067),
(704, 0x3739393230392e6a7067),
(706, 0x363635323934392e6a7067),
(708, 0x3636313435372e6a7067),
(710, 0x333637393033322e6a7067),
(712, 0x343033373532342e6a7067),
(713, 0x373931333731382e6a7067),
(715, 0x393436383031362e6a7067),
(717, 0x333932333639312e6a7067),
(718, 0x343835303732342e6a7067),
(720, 0x393537313035382e6a7067),
(729, 0x353437393534382e6a7067);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rezervasyon`
--

CREATE TABLE `rezervasyon` (
  `id` int NOT NULL,
  `musteri_id` int NOT NULL,
  `otel_id` int NOT NULL,
  `oda_id` int DEFAULT NULL,
  `rezervasyon_tarihi` varchar(45) NOT NULL,
  `giris_tarihi` varchar(45) NOT NULL,
  `cikis_tarihi` varchar(45) NOT NULL,
  `yetiskin_sayisi` int NOT NULL,
  `cocuk_sayisi` int NOT NULL,
  `tutar` int DEFAULT NULL,
  `odeme_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `rezervasyon`
--

INSERT INTO `rezervasyon` (`id`, `musteri_id`, `otel_id`, `oda_id`, `rezervasyon_tarihi`, `giris_tarihi`, `cikis_tarihi`, `yetiskin_sayisi`, `cocuk_sayisi`, `tutar`, `odeme_id`) VALUES
(31, 52, 83, 62, '2021-01-28', '2021-01-07', '2021-01-16', 2, 3, 570, 1),
(32, 52, 156, 195, '2021-01-28', '2021-01-15', '2021-01-16', 1, 0, 140, 2),
(33, 55, 109, 112, '2021-01-28', '2021-01-16', '2021-01-03', 1, 0, 180, 1),
(34, 55, 180, 237, '2021-01-28', '2020-12-31', '2021-01-06', 1, 0, 100, 1),
(35, 56, 139, 167, '2021-01-28', '2021-01-02', '2021-01-01', 1, 1, 630, 1),
(36, 56, 163, 209, '2021-01-28', '2021-01-16', '2021-01-02', 1, 4, 720, 1),
(37, 59, 127, 146, '2021-01-28', '2021-01-02', '2021-01-01', 1, 0, 100, 1),
(38, 59, 67, 23, '2021-01-28', '2021-01-08', '2021-01-08', 2, 1, 210, 1),
(39, 57, 125, 142, '2021-01-28', '2021-01-01', '2021-01-02', 1, 3, 425, 1),
(40, 57, 128, 149, '2021-01-28', '2021-01-08', '2021-01-15', 2, 3, 615, 1),
(41, 52, 137, 163, '2021-01-28', '2021-01-15', '2021-01-13', 2, 1, 500, 1),
(42, 52, 156, 195, '2021-01-28', '2020-12-31', '2021-01-15', 1, 3, 425, 1),
(43, 52, 176, 230, '2021-01-28', '2021-01-01', '2021-01-02', 1, 0, 120, 1),
(44, 52, 156, 195, '2021-01-28', '2021-01-07', '2021-01-15', 4, 2, 750, 1),
(45, 52, 137, 163, '2021-01-28', '2021-01-08', '2021-01-16', 4, 5, 1420, 1),
(46, 52, 137, 163, '2021-01-28', '2021-01-02', '2021-01-08', 1, 0, 180, 1),
(49, 52, 161, 204, '2021-01-28', '2021-01-15', '2021-01-02', 3, 2, 495, 1),
(50, 52, 131, 153, '2021-01-28', '2021-01-21', '2021-01-16', 5, 5, 1225, 1),
(51, 52, 137, 163, '2021-01-28', '2021-01-02', '2021-01-14', 8, 5, 2140, 1),
(53, 52, 186, 248, '2021-01-28', '2021-01-07', '2021-01-01', 2, 2, 330, 1),
(55, 56, 161, 204, '2021-01-28', '2021-01-21', '2021-01-17', 1, 3, 340, 1),
(56, 56, 89, 74, '2021-01-28', '2021-01-08', '2021-01-01', 1, 0, 150, 1),
(57, 57, 67, 21, '2021-01-28', '2021-01-09', '2021-01-06', 1, 2, 180, 1),
(58, 57, 67, 21, '2021-01-28', '2021-01-09', '2021-01-06', 1, 2, 180, 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Tablo için indeksler `musteri`
--
ALTER TABLE `musteri`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kullanici_adi_UNIQUE` (`kullanici_adi`),
  ADD UNIQUE KEY `eposta_UNIQUE` (`eposta`),
  ADD UNIQUE KEY `telefon` (`telefon`);

--
-- Tablo için indeksler `odalar`
--
ALTER TABLE `odalar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_odalar_oteller1_idx` (`otel_id`);

--
-- Tablo için indeksler `odeme_tip`
--
ALTER TABLE `odeme_tip`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `oteller`
--
ALTER TABLE `oteller`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `resimler`
--
ALTER TABLE `resimler`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Tablo için indeksler `rezervasyon`
--
ALTER TABLE `rezervasyon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rezervasyon_table11_idx` (`musteri_id`),
  ADD KEY `fk_rezervasyon_oteller1_idx` (`otel_id`),
  ADD KEY `fk_rezervasyon_odalar1_idx` (`oda_id`),
  ADD KEY `fk_rezervasyon_odeme_tip1_idx` (`odeme_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `musteri`
--
ALTER TABLE `musteri`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Tablo için AUTO_INCREMENT değeri `odalar`
--
ALTER TABLE `odalar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- Tablo için AUTO_INCREMENT değeri `odeme_tip`
--
ALTER TABLE `odeme_tip`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `oteller`
--
ALTER TABLE `oteller`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- Tablo için AUTO_INCREMENT değeri `resimler`
--
ALTER TABLE `resimler`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=730;

--
-- Tablo için AUTO_INCREMENT değeri `rezervasyon`
--
ALTER TABLE `rezervasyon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
