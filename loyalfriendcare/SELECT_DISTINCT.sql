use my_database;

-- Eğer tablo zaten varsa, silip yeniden oluşturmak için bu satırı kullanabilirsiniz.
-- DROP TABLE IF EXISTS siparisler;

-- Tabloyu oluşturma
CREATE TABLE siparisler(
    id INT,
    musteri_adi VARCHAR(50),
    urun_adi VARCHAR(50),
    siparis_tarihi DATE,
    siparis_il VARCHAR(40)
);

-- Tabloya 100 adet örnek veri ekleme
INSERT INTO siparisler (id, musteri_adi, urun_adi, siparis_tarihi, siparis_il) VALUES
(1, 'Ahmet Yılmaz', 'Laptop', '2024-01-15', 'İstanbul'),
(2, 'Ayşe Kaya', 'Akıllı Telefon', '2024-01-15', 'Ankara'),
(3, 'Mehmet Demir', 'Laptop', '2024-01-16', 'İzmir'),
(4, 'Ahmet Yılmaz', 'Klavye', '2024-01-17', 'İstanbul'),
(5, 'Fatma Çelik', 'Kitap', '2024-01-18', 'Bursa'),
(6, 'Ali Şahin', 'Akıllı Telefon', '2024-01-18', 'Ankara'),
(7, 'Ayşe Kaya', 'Mouse', '2024-01-19', 'Ankara'),
(8, 'Zeynep Öztürk', 'Tablet', '2024-01-20', 'İstanbul'),
(9, 'Mehmet Demir', 'Monitör', '2024-01-20', 'İzmir'),
(10, 'Hasan Aydın', 'Kitap', '2024-01-21', 'Antalya'),
(11, 'Ahmet Yılmaz', 'Laptop', '2024-02-05', 'İstanbul'),
(12, 'Emine Arslan', 'Kulaklık', '2024-02-05', 'Konya'),
(13, 'Fatma Çelik', 'Kitap', '2024-02-06', 'Bursa'),
(14, 'Ali Şahin', 'Klavye', '2024-02-07', 'Ankara'),
(15, 'Ayşe Kaya', 'Akıllı Telefon', '2024-02-08', 'Ankara'),
(16, 'Burak Doğan', 'Yazıcı', '2024-02-09', 'İzmir'),
(17, 'Zeynep Öztürk', 'Tablet', '2024-02-10', 'İstanbul'),
(18, 'Merve Yıldız', 'Mouse', '2024-02-10', 'Bursa'),
(19, 'Hasan Aydın', 'Monitör', '2024-02-11', 'Antalya'),
(20, 'Mehmet Demir', 'Laptop', '2024-02-12', 'İzmir'),
(21, 'Can Koç', 'Sandalye', '2024-02-12', 'Adana'),
(22, 'Deniz Kurt', 'Kitap', '2024-02-13', 'İstanbul'),
(23, 'Ahmet Yılmaz', 'Klavye', '2024-02-14', 'İstanbul'),
(24, 'Ayşe Kaya', 'Kulaklık', '2024-02-15', 'Ankara'),
(25, 'Ali Şahin', 'Akıllı Telefon', '2024-02-15', 'Ankara'),
(26, 'Fatma Çelik', 'Mouse', '2024-03-01', 'Bursa'),
(27, 'Zeynep Öztürk', 'Laptop', '2024-03-02', 'İstanbul'),
(28, 'Mehmet Demir', 'Tablet', '2024-03-02', 'İzmir'),
(29, 'Hasan Aydın', 'Klavye', '2024-03-03', 'Antalya'),
(30, 'Emine Arslan', 'Kitap', '2024-03-04', 'Konya'),
(31, 'Burak Doğan', 'Monitör', '2024-03-05', 'İzmir'),
(32, 'Merve Yıldız', 'Akıllı Telefon', '2024-03-05', 'Bursa'),
(33, 'Ahmet Yılmaz', 'Laptop', '2024-03-06', 'İstanbul'),
(34, 'Ayşe Kaya', 'Mouse', '2024-03-07', 'Ankara'),
(35, 'Can Koç', 'Yazıcı', '2024-03-08', 'Adana'),
(36, 'Deniz Kurt', 'Tablet', '2024-03-09', 'İstanbul'),
(37, 'Ali Şahin', 'Klavye', '2024-03-10', 'Ankara'),
(38, 'Fatma Çelik', 'Kitap', '2024-03-10', 'Bursa'),
(39, 'Zeynep Öztürk', 'Kulaklık', '2024-03-11', 'İstanbul'),
(40, 'Mehmet Demir', 'Monitör', '2024-03-12', 'İzmir'),
(41, 'Hasan Aydın', 'Sandalye', '2024-03-13', 'Antalya'),
(42, 'Emine Arslan', 'Akıllı Telefon', '2024-03-14', 'Konya'),
(43, 'Burak Doğan', 'Laptop', '2024-03-15', 'İzmir'),
(44, 'Merve Yıldız', 'Mouse', '2024-03-15', 'Bursa'),
(45, 'Ahmet Yılmaz', 'Kitap', '2024-03-16', 'İstanbul'),
(46, 'Ayşe Kaya', 'Klavye', '2024-04-01', 'Ankara'),
(47, 'Can Koç', 'Tablet', '2024-04-02', 'Adana'),
(48, 'Deniz Kurt', 'Monitör', '2024-04-03', 'İstanbul'),
(49, 'Ali Şahin', 'Yazıcı', '2024-04-04', 'Ankara'),
(50, 'Fatma Çelik', 'Kulaklık', '2024-04-05', 'Bursa'),
(51, 'Zeynep Öztürk', 'Sandalye', '2024-04-05', 'İstanbul'),
(52, 'Mehmet Demir', 'Akıllı Telefon', '2024-04-06', 'İzmir'),
(53, 'Hasan Aydın', 'Laptop', '2024-04-07', 'Antalya'),
(54, 'Emine Arslan', 'Mouse', '2024-04-08', 'Konya'),
(55, 'Burak Doğan', 'Kitap', '2024-04-09', 'İzmir'),
(56, 'Merve Yıldız', 'Klavye', '2024-04-10', 'Bursa'),
(57, 'Ahmet Yılmaz', 'Tablet', '2024-04-10', 'İstanbul'),
(58, 'Ayşe Kaya', 'Monitör', '2024-04-11', 'Ankara'),
(59, 'Can Koç', 'Kulaklık', '2024-04-12', 'Adana'),
(60, 'Deniz Kurt', 'Yazıcı', '2024-04-13', 'İstanbul'),
(61, 'Ali Şahin', 'Sandalye', '2024-04-14', 'Ankara'),
(62, 'Fatma Çelik', 'Akıllı Telefon', '2024-04-15', 'Bursa'),
(63, 'Zeynep Öztürk', 'Laptop', '2024-04-15', 'İstanbul'),
(64, 'Mehmet Demir', 'Mouse', '2024-04-16', 'İzmir'),
(65, 'Hasan Aydın', 'Kitap', '2024-04-17', 'Antalya'),
(66, 'Emine Arslan', 'Klavye', '2024-04-18', 'Konya'),
(67, 'Burak Doğan', 'Tablet', '2024-04-19', 'İzmir'),
(68, 'Merve Yıldız', 'Monitör', '2024-04-20', 'Bursa'),
(69, 'Ahmet Yılmaz', 'Kulaklık', '2024-04-20', 'İstanbul'),
(70, 'Ayşe Kaya', 'Yazıcı', '2024-04-21', 'Ankara'),
(71, 'Can Koç', 'Sandalye', '2024-04-22', 'Adana'),
(72, 'Deniz Kurt', 'Akıllı Telefon', '2024-04-23', 'İstanbul'),
(73, 'Ali Şahin', 'Laptop', '2024-04-24', 'Ankara'),
(74, 'Fatma Çelik', 'Mouse', '2024-04-25', 'Bursa'),
(75, 'Zeynep Öztürk', 'Kitap', '2024-04-25', 'İstanbul'),
(76, 'Mehmet Demir', 'Klavye', '2024-04-26', 'İzmir'),
(77, 'Hasan Aydın', 'Tablet', '2024-04-27', 'Antalya'),
(78, 'Emine Arslan', 'Monitör', '2024-04-28', 'Konya'),
(79, 'Burak Doğan', 'Kulaklık', '2024-04-29', 'İzmir'),
(80, 'Merve Yıldız', 'Yazıcı', '2024-04-30', 'Bursa'),
(81, 'Seda Yalçın', 'Laptop', '2024-05-01', 'Ankara'),
(82, 'Okan Efe', 'Kitap', '2024-05-01', 'İstanbul'),
(83, 'Seda Yalçın', 'Mouse', '2024-05-02', 'Ankara'),
(84, 'Levent Aksoy', 'Akıllı Telefon', '2024-05-03', 'İzmir'),
(85, 'Okan Efe', 'Klavye', '2024-05-04', 'İstanbul'),
(86, 'Pınar Tekin', 'Tablet', '2024-05-05', 'Bursa'),
(87, 'Seda Yalçın', 'Laptop', '2024-05-05', 'Ankara'),
(88, 'Levent Aksoy', 'Monitör', '2024-05-06', 'İzmir'),
(89, 'Okan Efe', 'Kulaklık', '2024-05-07', 'İstanbul'),
(90, 'Pınar Tekin', 'Yazıcı', '2024-05-08', 'Bursa'),
(91, 'Seda Yalçın', 'Kitap', '2024-05-09', 'Ankara'),
(92, 'Levent Aksoy', 'Sandalye', '2024-05-10', 'İzmir'),
(93, 'Okan Efe', 'Mouse', '2024-05-10', 'İstanbul'),
(94, 'Pınar Tekin', 'Laptop', '2024-05-11', 'Bursa'),
(95, 'Seda Yalçın', 'Akıllı Telefon', '2024-05-12', 'Ankara'),
(96, 'Levent Aksoy', 'Klavye', '2024-05-13', 'İzmir'),
(97, 'Okan Efe', 'Tablet', '2024-05-14', 'İstanbul'),
(98, 'Pınar Tekin', 'Monitör', '2024-05-15', 'Bursa'),
(99, 'Seda Yalçın', 'Kulaklık', '2024-05-15', 'Ankara'),
(100, 'Levent Aksoy', 'Kitap', '2024-05-16', 'İzmir');

-- Eklenen verileri görmek için
SELECT * FROM siparisler;
 

SELECT 
    urun_adi,
    COUNT(*) AS siparis_sayisi
FROM siparisler
GROUP BY urun_adi;

select distinct siparis_tarihi
from siparisler 
;


SELECT 
    urun_adi,
    siparis_il,
    COUNT(*) AS siparis_adeti
FROM siparisler
WHERE MONTH(siparis_tarihi) = 2 -- Şubat ayını filtreler
GROUP BY urun_adi, siparis_il
ORDER BY siparis_adeti DESC;

select distinct urun_adi
from siparisler
where siparis_tarihi
like '____-02-__';

select distinct urun_adi
from siparisler
where siparis_tarihi> '2024-01-01';

select distinct urun_adi
from siparisler
where  month (siparis_tarihi)  <= 2
and year(siparis_tarihi) =2024 ;



