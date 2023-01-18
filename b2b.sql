-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Oca 2023, 21:16:51
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `b2b`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `sitebaslik` varchar(300) NOT NULL,
  `siteurl` varchar(300) NOT NULL,
  `sitekeyw` varchar(300) NOT NULL,
  `sitedesc` varchar(300) NOT NULL,
  `sitelogo` varchar(300) NOT NULL,
  `sitekdv` int(11) NOT NULL,
  `sitesiparisdurum` varchar(200) NOT NULL,
  `sitedurum` tinyint(1) NOT NULL DEFAULT 1,
  `smtphost` varchar(300) NOT NULL,
  `smtpmail` varchar(300) NOT NULL,
  `smtpsifre` varchar(300) NOT NULL,
  `smtpsec` varchar(100) NOT NULL,
  `smtpport` varchar(100) NOT NULL,
  `smtpkime` varchar(300) NOT NULL,
  `tel` varchar(200) DEFAULT NULL,
  `fax` varchar(200) DEFAULT NULL,
  `eposta` varchar(200) DEFAULT NULL,
  `adres` text DEFAULT NULL,
  `map` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `sitebaslik`, `siteurl`, `sitekeyw`, `sitedesc`, `sitelogo`, `sitekdv`, `sitesiparisdurum`, `sitedurum`, `smtphost`, `smtpmail`, `smtpsifre`, `smtpsec`, `smtpport`, `smtpkime`, `tel`, `fax`, `eposta`, `adres`, `map`) VALUES
(1, 'Esat Dönmez b2b projesi', 'http://localhost/b2b/', 'Esat Dönmez b2b projesi', 'Esat Dönmez b2b projesi', 'logo.png', 18, '1', 2, 'smtp.yandex.com', 'calısanples@yazvuzselim.com', '123456', 'tls', '587', 'info@yavuz-selim.com', ' +90 850 222 1 222', ' +90 850 222 1 223', 'info@.com', 'İstanbul / Eminönü', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6020.876733176721!2d28.96069782798871!3d41.015664462443745!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14cab9eb9d587135%3A0x8aa0bb6b1dd6ffb7!2zRW1pbsO2bsO8LCBSw7xzdGVtIFBhxZ9hLCBGYXRpaC_EsHN0YW5idWw!5e0!3m2!1str!2str!4v1673960132656!5m2!1str!2str\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bankalar`
--

CREATE TABLE `bankalar` (
  `id` int(11) NOT NULL,
  `bankaadi` varchar(300) NOT NULL,
  `bankahesap` varchar(300) NOT NULL,
  `bankasube` varchar(300) NOT NULL,
  `bankaiban` varchar(300) NOT NULL,
  `bankadurum` tinyint(1) NOT NULL DEFAULT 1,
  `bankaekleyen` int(11) NOT NULL,
  `bankatarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `bankalar`
--

INSERT INTO `bankalar` (`id`, `bankaadi`, `bankahesap`, `bankasube`, `bankaiban`, `bankadurum`, `bankaekleyen`, `bankatarih`) VALUES
(1, 'Deniz Bank', '123', 'Balıkesir', 'TR 123 123 123', 1, 1, '2023-01-16 18:07:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bayiler`
--

CREATE TABLE `bayiler` (
  `id` int(11) NOT NULL,
  `bayikodu` varchar(200) NOT NULL,
  `bayiadi` varchar(300) NOT NULL,
  `bayimail` varchar(300) NOT NULL,
  `bayisifre` varchar(300) NOT NULL,
  `bayidurum` tinyint(1) NOT NULL DEFAULT 2,
  `bayitarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `bayilogo` varchar(300) DEFAULT NULL,
  `bayiindirim` tinyint(3) NOT NULL DEFAULT 0,
  `bayitelefon` varchar(50) NOT NULL,
  `bayifax` varchar(50) DEFAULT NULL,
  `bayivergino` varchar(100) NOT NULL,
  `bayivergidairesi` varchar(300) NOT NULL,
  `bayisite` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `bayiler`
--

INSERT INTO `bayiler` (`id`, `bayikodu`, `bayiadi`, `bayimail`, `bayisifre`, `bayidurum`, `bayitarih`, `bayilogo`, `bayiindirim`, `bayitelefon`, `bayifax`, `bayivergino`, `bayivergidairesi`, `bayisite`) VALUES
(1, '63c1940a21550', 'sdsd', 'yavuz@hotmail.com', '63982e54a7aeb0d89910475ba6dbd3ca6dd4e5a1', 2, '2023-01-13 17:25:30', NULL, 0, 'sdgsdg', NULL, 'dgsdg', 'sdgsdg', ''),
(2, '63c3e8e8c2286', 'vestel', 'vestel@gmail.com', '63982e54a7aeb0d89910475ba6dbd3ca6dd4e5a1', 2, '2023-01-15 11:52:08', NULL, 0, '555555', NULL, '233', 'izmir', ''),
(3, '63c42943bccf8', 'clio1', 'clio@gmail.com', '63982e54a7aeb0d89910475ba6dbd3ca6dd4e5a1', 1, '2023-01-15 16:26:43', NULL, 0, '555555515', '1', '1212', '12312', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bayilog`
--

CREATE TABLE `bayilog` (
  `id` int(11) NOT NULL,
  `logbayi` varchar(200) NOT NULL,
  `logtarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `logip` varchar(300) NOT NULL,
  `logaciklama` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bayi_adresler`
--

CREATE TABLE `bayi_adresler` (
  `id` int(11) NOT NULL,
  `adresbayi` varchar(200) NOT NULL,
  `adresbaslik` varchar(200) NOT NULL,
  `adrestarif` text NOT NULL,
  `adresdurum` tinyint(1) NOT NULL DEFAULT 1,
  `adrestarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `bayi_adresler`
--

INSERT INTO `bayi_adresler` (`id`, `adresbayi`, `adresbaslik`, `adrestarif`, `adresdurum`, `adrestarih`) VALUES
(1, '63c42943bccf8', 'EV', 'KÜTAHYA / MERKEZ', 2, '2023-01-16 17:51:05'),
(2, '63c42943bccf8', 'ev', 'ev /küytahya', 2, '2023-01-16 21:42:30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `durumkodlari`
--

CREATE TABLE `durumkodlari` (
  `id` int(11) NOT NULL,
  `durumbaslik` varchar(300) NOT NULL,
  `durumkodu` varchar(200) NOT NULL,
  `durumtarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `durumekleyen` int(11) NOT NULL,
  `durumdurum` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `durumkodlari`
--

INSERT INTO `durumkodlari` (`id`, `durumbaslik`, `durumkodu`, `durumtarih`, `durumekleyen`, `durumdurum`) VALUES
(1, 'BEKLEMEDE', '2', '2023-01-16 17:04:08', 1, 1),
(2, 'İPTAL EDİLDİ', '3', '2023-01-16 17:04:08', 1, 1),
(3, 'ONAYLANDI', '1', '2023-01-16 17:04:08', 1, 1),
(4, 'TESLİM EDİLDİ', '4', '2023-01-16 17:04:08', 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `havalebildirim`
--

CREATE TABLE `havalebildirim` (
  `id` int(11) NOT NULL,
  `havalebayi` varchar(200) NOT NULL,
  `havaletarih` date NOT NULL,
  `havalesaat` varchar(200) NOT NULL,
  `havaletutar` double(15,2) NOT NULL,
  `havalenot` text NOT NULL,
  `banka` int(11) NOT NULL,
  `havaleeklenme` timestamp NOT NULL DEFAULT current_timestamp(),
  `havaleip` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `havalebildirim`
--

INSERT INTO `havalebildirim` (`id`, `havalebayi`, `havaletarih`, `havalesaat`, `havaletutar`, `havalenot`, `banka`, `havaleeklenme`, `havaleip`) VALUES
(1, '63c42943bccf8', '2023-01-04', '20:00', 120.00, 'ödemem hala geçmedi', 1, '2023-01-16 18:08:27', '192.168.0.1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajlar`
--

CREATE TABLE `mesajlar` (
  `id` int(11) NOT NULL,
  `mesajisim` varchar(300) NOT NULL,
  `mesajposta` varchar(300) NOT NULL,
  `mesajkonu` varchar(300) NOT NULL DEFAULT 'YOK',
  `mesajicerik` text NOT NULL,
  `mesajdurum` tinyint(1) NOT NULL DEFAULT 2,
  `mesajip` varchar(300) NOT NULL,
  `mesajtarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `mesajlar`
--

INSERT INTO `mesajlar` (`id`, `mesajisim`, `mesajposta`, `mesajkonu`, `mesajicerik`, `mesajdurum`, `mesajip`, `mesajtarih`) VALUES
(1, 'ahmet', '', 'YOK', '', 2, '', '2023-01-17 13:28:33');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfalar`
--

CREATE TABLE `sayfalar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(300) NOT NULL,
  `sef` varchar(300) NOT NULL,
  `icerik` text NOT NULL,
  `kapak` varchar(200) DEFAULT NULL,
  `durum` tinyint(1) NOT NULL DEFAULT 1,
  `tarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `ekleyen` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `sayfalar`
--

INSERT INTO `sayfalar` (`id`, `baslik`, `sef`, `icerik`, `kapak`, `durum`, `tarih`, `ekleyen`) VALUES
(1, 'Hakkımızda', 'hakkimizda', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'b2b.webp', 1, '2023-01-17 15:21:16', 1),
(2, 'Misyon/Vizyon', 'misyon-vizyon', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'b2b.webp', 1, '2023-01-17 15:21:16', 1),
(3, 'Mesafeli Satış Sözleşmesi', 'mesafeli-satis-sozlesmesi', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'b2b.webp', 1, '2023-01-17 15:21:16', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `id` int(11) NOT NULL,
  `sepetbayi` varchar(200) NOT NULL,
  `sepeturun` varchar(200) NOT NULL,
  `sepetadet` int(11) NOT NULL,
  `birimfiyat` double(15,2) NOT NULL,
  `toplamfiyat` double(15,2) NOT NULL,
  `sepettarih` date NOT NULL,
  `sepetsilinme` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`id`, `sepetbayi`, `sepeturun`, `sepetadet`, `birimfiyat`, `toplamfiyat`, `sepettarih`, `sepetsilinme`) VALUES
(1, '63c42943bccf8', 'b2b-002', 1, 0.00, 0.00, '2023-01-02', '2023-07-19'),
(3, '63c42943bccf8', 'b2b-001', 1, 0.00, 0.00, '2023-01-02', '2023-07-19'),
(4, '63c42943bccf8', 'b2b-003', 1, 0.00, 0.00, '2023-01-02', '2023-07-19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparisler`
--

CREATE TABLE `siparisler` (
  `id` int(11) NOT NULL,
  `siparisbayi` varchar(200) NOT NULL,
  `siparistarih` date NOT NULL,
  `siparissaat` varchar(200) NOT NULL,
  `siparisdurum` int(11) NOT NULL,
  `siparisnot` text NOT NULL,
  `siparistutar` double(15,2) NOT NULL,
  `siparisodeme` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = havale 2 = kredi kartı',
  `sipariskodu` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `siparisler`
--

INSERT INTO `siparisler` (`id`, `siparisbayi`, `siparistarih`, `siparissaat`, `siparisdurum`, `siparisnot`, `siparistutar`, `siparisodeme`, `sipariskodu`) VALUES
(1, '63c42943bccf8', '2023-01-16', '20:49', 2, 'Kırılmadadn Gelsin', 120.00, 1, '1234');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_urunler`
--

CREATE TABLE `siparis_urunler` (
  `id` int(11) NOT NULL,
  `sipkodu` varchar(200) NOT NULL,
  `sipurun` varchar(200) NOT NULL,
  `sipbirim` double(15,2) NOT NULL,
  `sipadet` int(11) NOT NULL,
  `siptoplam` double(15,2) NOT NULL,
  `sipurunadi` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `id` int(11) NOT NULL,
  `urunkat` int(11) NOT NULL,
  `urunbaslik` varchar(300) NOT NULL,
  `urunsef` varchar(300) NOT NULL,
  `urunicerik` text NOT NULL,
  `urunkapak` varchar(300) NOT NULL,
  `urunbanner` varchar(300) NOT NULL,
  `urunfiyat` double(15,2) NOT NULL,
  `urunkodu` varchar(200) NOT NULL,
  `urunstok` int(11) NOT NULL,
  `urunkeyw` varchar(300) NOT NULL,
  `urundesc` varchar(300) NOT NULL,
  `uruntarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `urunekleyen` int(11) NOT NULL,
  `urunvitrin` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = vitrin 2 = vitrin değil',
  `urundurum` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = aktif 2 = pasif'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `urunkat`, `urunbaslik`, `urunsef`, `urunicerik`, `urunkapak`, `urunbanner`, `urunfiyat`, `urunkodu`, `urunstok`, `urunkeyw`, `urundesc`, `uruntarih`, `urunekleyen`, `urunvitrin`, `urundurum`) VALUES
(1, 1, 'Lenovo Ideapad 5 Intel Core i5', 'Lenovo Ideapad 5 Intel Core i5', 'Lenovo Türkiye, 2021 yılının ikinci çeyreğini IDC sonuçlarına göre %25,3 pazar payı ile birinci sırada kapadı. Şirket, 2020 Ocak ayından 2021 Haziran ayına kadar tam 5 çeyrektir, pazar payı anlamında ilk sırada yer alıyor. Lenovo Türkiye, yılın ikinci çeyreğinde toplam kurumsal PC pazarında %34,1, toplam tüketici PC pazarında %20,3, toplam dizüstü bilgisayar pazarında %30 paya sahip olarak birinci sırada yer aldı.', 'lenovo.webp', 'lenovo.webp', 6000.00, 'b2b-001', 100, 'Lenovo Ideapad 5 Intel Core i5', 'Lenovo Ideapad 5 Intel Core i5', '2023-01-16 22:46:16', 1, 1, 1),
(2, 2, 'ASUS Ideapad ', 'Lenovo Ideapad 5 Intel Core i52', 'Lenovo Türkiye, 2021 yılının ikinci çeyreğini IDC sonuçlarına göre %25,3 pazar payı ile birinci sırada kapadı. Şirket, 2020 Ocak ayından 2021 Haziran ayına kadar tam 5 çeyrektir, pazar payı anlamında ilk sırada yer alıyor. Lenovo Türkiye, yılın ikinci çeyreğinde toplam kurumsal PC pazarında %34,1, toplam tüketici PC pazarında %20,3, toplam dizüstü bilgisayar pazarında %30 paya sahip olarak birinci sırada yer aldı.', 'asus.webp', 'asus.webp', 6000.00, 'b2b-002', 100, 'Lenovo Ideapad 5 Intel Core i5', 'Lenovo Ideapad 5 Intel Core i5', '2023-01-16 22:46:16', 1, 1, 1),
(3, 2, 'ASUS Ideapad ', 'ASUS Ideapad ', 'Lenovo Türkiye, 2021 yılının ikinci çeyreğini IDC sonuçlarına göre %25,3 pazar payı ile birinci sırada kapadı. Şirket, 2020 Ocak ayından 2021 Haziran ayına kadar tam 5 çeyrektir, pazar payı anlamında ilk sırada yer alıyor. Lenovo Türkiye, yılın ikinci çeyreğinde toplam kurumsal PC pazarında %34,1, toplam tüketici PC pazarında %20,3, toplam dizüstü bilgisayar pazarında %30 paya sahip olarak birinci sırada yer aldı.', 'asus2.webp', 'asus2.webp', 6000.00, 'b2b-003', 100, 'ASUS Ideapad ', 'ASUS Ideapad ', '2023-01-16 22:46:16', 1, 1, 1),
(4, 1, 'Lenovo Ideapad 3', 'Lenovo Ideapad 3', 'Lenovo Türkiye, 2021 yılının ikinci çeyreğini IDC sonuçlarına göre %25,3 pazar payı ile birinci sırada kapadı. Şirket, 2020 Ocak ayından 2021 Haziran ayına kadar tam 5 çeyrektir, pazar payı anlamında ilk sırada yer alıyor. Lenovo Türkiye, yılın ikinci çeyreğinde toplam kurumsal PC pazarında %34,1, toplam tüketici PC pazarında %20,3, toplam dizüstü bilgisayar pazarında %30 paya sahip olarak birinci sırada yer aldı.', 'lenovo3.webp', 'lenovo3.webp', 6000.00, 'b2b-004', 100, 'Lenovo Ideapad 3', 'Lenovo Ideapad 3', '2023-01-16 22:46:16', 1, 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_kategoriler`
--

CREATE TABLE `urun_kategoriler` (
  `id` int(11) NOT NULL,
  `katbaslik` varchar(300) NOT NULL,
  `katsef` varchar(300) NOT NULL,
  `katkeyw` varchar(300) NOT NULL,
  `katdesc` varchar(300) NOT NULL,
  `katdurum` tinyint(1) NOT NULL DEFAULT 1,
  `kattarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `katekleyen` int(11) NOT NULL,
  `silinmeyen_kat` tinyint(1) NOT NULL DEFAULT 2,
  `katresim` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `urun_kategoriler`
--

INSERT INTO `urun_kategoriler` (`id`, `katbaslik`, `katsef`, `katkeyw`, `katdesc`, `katdurum`, `kattarih`, `katekleyen`, `silinmeyen_kat`, `katresim`) VALUES
(1, 'lenovo', 'lenovo', 'lenovo', 'lenovo', 1, '2023-01-16 22:36:33', 1, 2, 'lenovobanner.webp'),
(2, 'asus', 'asus', 'asus', 'asus', 1, '2023-01-16 22:36:33', 1, 2, 'asusbanner.webp'),
(3, 'msi', 'msi', 'msi', 'msi', 1, '2023-01-16 22:36:33', 1, 2, 'msı.webp');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_ozellikler`
--

CREATE TABLE `urun_ozellikler` (
  `id` int(11) NOT NULL,
  `ozellikurun` varchar(200) NOT NULL,
  `ozellikbaslik` varchar(300) NOT NULL,
  `ozellikicerik` text NOT NULL,
  `ozellikekleyen` int(11) NOT NULL,
  `ozelliktarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `ozellikdurum` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `urun_ozellikler`
--

INSERT INTO `urun_ozellikler` (`id`, `ozellikurun`, `ozellikbaslik`, `ozellikicerik`, `ozellikekleyen`, `ozelliktarih`, `ozellikdurum`) VALUES
(1, 'b2b-001', 'işlemci ', 'intel-i9', 1, '2023-01-17 09:49:36', 1),
(2, 'b2b-001', 'Ram', '8 GB', 1, '2023-01-17 09:49:36', 1),
(3, 'b2b-001', 'Ekran Kartı', 'GTX 1080Tİ', 1, '2023-01-17 09:49:36', 1),
(4, 'b2b-001', 'kASA', 'Quadro', 1, '2023-01-17 09:49:36', 1),
(5, 'b2b-001', 'Ekran Çözünürlüğü', '1920x1080', 1, '2023-01-17 09:49:36', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_resimler`
--

CREATE TABLE `urun_resimler` (
  `id` int(11) NOT NULL,
  `resimurun` varchar(200) NOT NULL,
  `resimdosya` varchar(300) NOT NULL,
  `resimtarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `resimekleyen` int(11) NOT NULL,
  `resimdurum` tinyint(1) NOT NULL DEFAULT 1,
  `kapak` tinyint(1) NOT NULL DEFAULT 2
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `urun_resimler`
--

INSERT INTO `urun_resimler` (`id`, `resimurun`, `resimdosya`, `resimtarih`, `resimekleyen`, `resimdurum`, `kapak`) VALUES
(1, 'b2b-001', 'lenovo.webp', '2023-01-17 11:40:02', 1, 1, 2),
(2, 'b2b-001', 'lenovo2.webp', '2023-01-17 11:40:02', 1, 1, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_yorumlar`
--

CREATE TABLE `urun_yorumlar` (
  `id` int(11) NOT NULL,
  `yorumbayi` varchar(200) NOT NULL,
  `yorumurun` varchar(200) NOT NULL,
  `yorumisim` varchar(300) NOT NULL,
  `yorumicerik` text NOT NULL,
  `yorumdurum` tinyint(1) NOT NULL DEFAULT 2,
  `yorumip` varchar(300) NOT NULL,
  `yorumtarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `urun_yorumlar`
--

INSERT INTO `urun_yorumlar` (`id`, `yorumbayi`, `yorumurun`, `yorumisim`, `yorumicerik`, `yorumdurum`, `yorumip`, `yorumtarih`) VALUES
(1, '63c42943bccf8', 'b2b-001', 'clio1', 'Lorem Ipsum , basım ve dizgi endüstrisinin basit bir şekilde sahte metnidir. Lorem Ipsum, bilinmeyen bir matbaanın bir tip kadırga alıp onu bir tip numune kitabı yapmak için karıştırdığı 1500\'lerden beri endüstrinin standart sahte metni olmuştur. Sadece beş yüz yıl hayatta kalmakla kalmadı, aynı zamanda esasen değişmeden elektronik dizgiye sıçradı. 1960\'larda Lorem Ipsum pasajları içeren Letraset yapraklarının yayınlanmasıyla ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımlarıyla popüler oldu.', 1, '127.0.0.1', '2023-01-17 11:15:06'),
(2, '63c42943bccf8', 'b2b-001', 'clio1', 'Lorem Ipsum , basım ve dizgi endüstrisinin basit bir şekilde sahte metnidir. Lorem Ipsum, bilinmeyen bir matbaanın bir tip kadırga alıp onu bir tip numune kitabı yapmak için karıştırdığı 1500\'lerden beri endüstrinin standart sahte metni olmuştur. Sadece beş yüz yıl hayatta kalmakla kalmadı, aynı zamanda esasen değişmeden elektronik dizgiye sıçradı. 1960\'larda Lorem Ipsum pasajları içeren Letraset yapraklarının yayınlanmasıyla ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımlarıyla popüler oldu.', 1, '127.0.0.1', '2023-01-17 11:15:06');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bankalar`
--
ALTER TABLE `bankalar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bayiler`
--
ALTER TABLE `bayiler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bayilog`
--
ALTER TABLE `bayilog`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bayi_adresler`
--
ALTER TABLE `bayi_adresler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `durumkodlari`
--
ALTER TABLE `durumkodlari`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `havalebildirim`
--
ALTER TABLE `havalebildirim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sayfalar`
--
ALTER TABLE `sayfalar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `siparisler`
--
ALTER TABLE `siparisler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `siparis_urunler`
--
ALTER TABLE `siparis_urunler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urun_kategoriler`
--
ALTER TABLE `urun_kategoriler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urun_ozellikler`
--
ALTER TABLE `urun_ozellikler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urun_resimler`
--
ALTER TABLE `urun_resimler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urun_yorumlar`
--
ALTER TABLE `urun_yorumlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `bankalar`
--
ALTER TABLE `bankalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `bayiler`
--
ALTER TABLE `bayiler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `bayilog`
--
ALTER TABLE `bayilog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `bayi_adresler`
--
ALTER TABLE `bayi_adresler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `durumkodlari`
--
ALTER TABLE `durumkodlari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `havalebildirim`
--
ALTER TABLE `havalebildirim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `sayfalar`
--
ALTER TABLE `sayfalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `siparisler`
--
ALTER TABLE `siparisler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `siparis_urunler`
--
ALTER TABLE `siparis_urunler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `urun_kategoriler`
--
ALTER TABLE `urun_kategoriler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `urun_ozellikler`
--
ALTER TABLE `urun_ozellikler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `urun_resimler`
--
ALTER TABLE `urun_resimler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `urun_yorumlar`
--
ALTER TABLE `urun_yorumlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
