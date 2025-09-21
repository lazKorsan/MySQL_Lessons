USE my_database;


/* ==========================================================
                 ORDER BY (ASCENDİNG-DESCENDİNG)
============================================================*/                 


/*
ORDER BY ifadesi, SQL sorgularındaı sonuçları belirli bir
veya birden fazla sütuna göre sıralamak için kullanılır.
Bu ifade, sıralama işleminin yükselen (ascending) veya
azalan (descending) düzeninde yapılmasını sağlar.
ASC anahtar kelimesi yükselen sıralamayı (dogal),
DESC anahtar kelimesi ise azalan sıralamayı (ters) belirtir.
*/


/*
SELECT sütun adları
FROM tablo adı
ORDER BY sıralanacak_sütun ASC|DESC; */

CREATE TABLE kitaplik(
id int primary key ,
kitap_adi varchar(50),
yazar varchar(50),
yayin_yili int,
sayfa_sayisi,
katagori,
yerli_yabanci
);


-- Eğer tablo zaten varsa, silip yeniden oluşturmak için bu satırı kullanabilirsiniz.
-- DROP TABLE IF EXISTS kitaplik;

-- Tabloyu oluşturma
CREATE TABLE kitaplik(
    id INT PRIMARY KEY,
    kitap_adi VARCHAR(50),
    yazar VARCHAR(50),
    yayin_yili INT,
    sayfa_sayisi INT,
    kategori VARCHAR(30),
    yerli_yabanci VARCHAR(10)
);

-- Tabloya 100 adet örnek veri ekleme
INSERT INTO kitaplik (id, kitap_adi, yazar, yayin_yili, sayfa_sayisi, kategori, yerli_yabanci) VALUES
(1, 'Suç ve Ceza', 'Fyodor Dostoyevski', 1866, 680, 'Klasik', 'Yabancı'),
(2, 'Sefiller', 'Victor Hugo', 1862, 1460, 'Klasik', 'Yabancı'),
(3, '1984', 'George Orwell', 1949, 328, 'Distopya', 'Yabancı'),
(4, 'Kürk Mantolu Madonna', 'Sabahattin Ali', 1943, 160, 'Roman', 'Yerli'),
(5, 'İnce Memed', 'Yaşar Kemal', 1955, 436, 'Roman', 'Yerli'),
(6, 'Harry Potter ve Felsefe Taşı', 'J.K. Rowling', 1997, 223, 'Fantastik', 'Yabancı'),
(7, 'Yüzüklerin Efendisi', 'J.R.R. Tolkien', 1954, 1200, 'Fantastik', 'Yabancı'),
(8, 'Beyaz Geceler', 'Fyodor Dostoyevski', 1848, 96, 'Novella', 'Yabancı'),
(9, 'Çalıkuşu', 'Reşat Nuri Güntekin', 1922, 512, 'Roman', 'Yerli'),
(10, 'Benim Adım Kırmızı', 'Orhan Pamuk', 1998, 417, 'Tarihi Roman', 'Yerli'),
(11, 'Gazap Üzümleri', 'John Steinbeck', 1939, 464, 'Roman', 'Yabancı'),
(12, 'Yabancı', 'Albert Camus', 1942, 112, 'Felsefi', 'Yabancı'),
(13, 'Kuyucaklı Yusuf', 'Sabahattin Ali', 1937, 221, 'Roman', 'Yerli'),
(14, 'Savaş ve Barış', 'Lev Tolstoy', 1869, 1225, 'Tarihi Roman', 'Yabancı'),
(15, 'Hayvan Çiftliği', 'George Orwell', 1945, 152, 'Alegorik', 'Yabancı'),
(16, 'Yer Demir Gök Bakır', 'Yaşar Kemal', 1963, 336, 'Roman', 'Yerli'),
(17, 'Karamazov Kardeşler', 'Fyodor Dostoyevski', 1880, 824, 'Klasik', 'Yabancı'),
(18, 'Tutunamayanlar', 'Oğuz Atay', 1972, 724, 'Modern', 'Yerli'),
(19, 'Simyacı', 'Paulo Coelho', 1988, 188, 'Felsefi', 'Yabancı'),
(20, 'Da Vinci Şifresi', 'Dan Brown', 2003, 489, 'Polisiye', 'Yabancı'),
(21, 'Serenad', 'Zülfü Livaneli', 2011, 481, 'Roman', 'Yerli'),
(22, 'Hobbit', 'J.R.R. Tolkien', 1937, 310, 'Fantastik', 'Yabancı'),
(23, 'İçimizdeki Şeytan', 'Sabahattin Ali', 1940, 239, 'Roman', 'Yerli'),
(24, 'Budala', 'Fyodor Dostoyevski', 1869, 656, 'Klasik', 'Yabancı'),
(25, 'Aylak Adam', 'Yusuf Atılgan', 1959, 192, 'Modern', 'Yerli'),
(26, 'Uçurtma Avcısı', 'Khaled Hosseini', 2003, 372, 'Roman', 'Yabancı'),
(27, 'Saatleri Ayarlama Enstitüsü', 'Ahmet Hamdi Tanpınar', 1961, 384, 'Roman', 'Yerli'),
(28, 'Harry Potter ve Sırlar Odası', 'J.K. Rowling', 1998, 251, 'Fantastik', 'Yabancı'),
(29, 'Aşk', 'Elif Şafak', 2009, 420, 'Roman', 'Yerli'),
(30, 'Otomatik Portakal', 'Anthony Burgess', 1962, 192, 'Distopya', 'Yabancı'),
(31, 'Yılanı Öldürseler', 'Yaşar Kemal', 1976, 128, 'Roman', 'Yerli'),
(32, 'Veba', 'Albert Camus', 1947, 308, 'Felsefi', 'Yabancı'),
(33, 'Anna Karenina', 'Lev Tolstoy', 1877, 864, 'Klasik', 'Yabancı'),
(34, 'Huzur', 'Ahmet Hamdi Tanpınar', 1949, 382, 'Roman', 'Yerli'),
(35, 'Fahrenheit 451', 'Ray Bradbury', 1953, 249, 'Bilim Kurgu', 'Yabancı'),
(36, 'Masumiyet Müzesi', 'Orhan Pamuk', 2008, 535, 'Roman', 'Yerli'),
(37, 'İnsan Ne İle Yaşar?', 'Lev Tolstoy', 1885, 80, 'Novella', 'Yabancı'),
(38, 'Harry Potter ve Azkaban Tutsağı', 'J.K. Rowling', 1999, 317, 'Fantastik', 'Yabancı'),
(39, 'Bereketli Topraklar Üzerinde', 'Orhan Kemal', 1954, 496, 'Roman', 'Yerli'),
(40, 'Dönüşüm', 'Franz Kafka', 1915, 72, 'Novella', 'Yabancı'),
(41, 'Puslu Kıtalar Atlası', 'İhsan Oktay Anar', 1995, 238, 'Fantastik', 'Yerli'),
(42, 'Satranç', 'Stefan Zweig', 1942, 88, 'Novella', 'Yabancı'),
(43, 'Sinekli Bakkal', 'Halide Edib Adıvar', 1936, 448, 'Roman', 'Yerli'),
(44, 'Cesur Yeni Dünya', 'Aldous Huxley', 1932, 288, 'Distopya', 'Yabancı'),
(45, 'Ateşten Gömlek', 'Halide Edib Adıvar', 1922, 224, 'Tarihi Roman', 'Yerli'),
(46, 'Ecinniler', 'Fyodor Dostoyevski', 1872, 736, 'Klasik', 'Yabancı'),
(47, 'Doğu Ekspresinde Cinayet', 'Agatha Christie', 1934, 256, 'Polisiye', 'Yabancı'),
(48, 'Kardeşimin Hikayesi', 'Zülfü Livaneli', 2013, 324, 'Roman', 'Yerli'),
(49, 'Bülbülü Öldürmek', 'Harper Lee', 1960, 324, 'Roman', 'Yabancı'),
(50, 'Tehlikeli Oyunlar', 'Oğuz Atay', 1973, 479, 'Modern', 'Yerli'),
(51, 'Harry Potter ve Ateş Kadehi', 'J.K. Rowling', 2000, 636, 'Fantastik', 'Yabancı'),
(52, 'Suskunlar', 'İhsan Oktay Anar', 2007, 472, 'Tarihi Roman', 'Yerli'),
(53, 'Dava', 'Franz Kafka', 1925, 256, 'Felsefi', 'Yabancı'),
(54, 'Yaprak Dökümü', 'Reşat Nuri Güntekin', 1930, 160, 'Roman', 'Yerli'),
(55, 'Silmarillion', 'J.R.R. Tolkien', 1977, 365, 'Fantastik', 'Yabancı'),
(56, 'Beyaz Kale', 'Orhan Pamuk', 1985, 164, 'Tarihi Roman', 'Yerli'),
(57, 'İvan İlyiçin Ölümü', 'Lev Tolstoy', 1886, 96, 'Novella', 'Yabancı'),
(58, 'Drina Köprüsü', 'İvo Andriç', 1945, 354, 'Tarihi Roman', 'Yabancı'),
(59, 'Demirciler Çarşısı Cinayeti', 'Yaşar Kemal', 1974, 440, 'Roman', 'Yerli'),
(60, 'Melekler ve Şeytanlar', 'Dan Brown', 2000, 569, 'Polisiye', 'Yabancı'),
(61, 'Harry Potter ve Zümrüdüanka Yoldaşlığı', 'J.K. Rowling', 2003, 766, 'Fantastik', 'Yabancı'),
(62, 'Eylül', 'Mehmet Rauf', 1901, 288, 'Roman', 'Yerli'),
(63, 'Yeraltından Notlar', 'Fyodor Dostoyevski', 1864, 144, 'Felsefi', 'Yabancı'),
(64, 'Efrasiyabın Hikayeleri', 'İhsan Oktay Anar', 1998, 254, 'Fantastik', 'Yerli'),
(65, 'Goriot Baba', 'Honoré de Balzac', 1835, 368, 'Klasik', 'Yabancı'),
(66, 'Devlet Ana', 'Kemal Tahir', 1967, 696, 'Tarihi Roman', 'Yerli'),
(67, 'Akdeniz', 'Panait Istrati', 1927, 192, 'Roman', 'Yabancı'),
(68, 'Harry Potter ve Melez Prens', 'J.K. Rowling', 2005, 594, 'Fantastik', 'Yabancı'),
(69, 'Cevdet Bey ve Oğulları', 'Orhan Pamuk', 1982, 576, 'Roman', 'Yerli'),
(70, 'Notre Dameın Kamburu', 'Victor Hugo', 1831, 488, 'Klasik', 'Yabancı'),
(71, 'Patasana', 'Ahmet Ümit', 2000, 448, 'Polisiye', 'Yerli'),
(72, 'Martin Eden', 'Jack London', 1909, 448, 'Roman', 'Yabancı'),
(73, 'Anayurt Oteli', 'Yusuf Atılgan', 1973, 136, 'Modern', 'Yerli'),
(74, 'Diriliş', 'Lev Tolstoy', 1899, 528, 'Klasik', 'Yabancı'),
(75, 'Harry Potter ve Ölüm Yadigarları', 'J.K. Rowling', 2007, 690, 'Fantastik', 'Yabancı'),
(76, 'Sis ve Gece', 'Ahmet Ümit', 1996, 256, 'Polisiye', 'Yerli'),
(77, 'İki Şehrin Hikayesi', 'Charles Dickens', 1859, 448, 'Klasik', 'Yabancı'),
(78, 'Binboğalar Efsanesi', 'Yaşar Kemal', 1971, 376, 'Roman', 'Yerli'),
(79, 'Şato', 'Franz Kafka', 1926, 320, 'Felsefi', 'Yabancı'),
(80, 'Huzursuzluk', 'Zülfü Livaneli', 2017, 168, 'Roman', 'Yerli'),
(81, 'Denizler Altında Yirmi Bin Fersah', 'Jules Verne', 1870, 448, 'Bilim Kurgu', 'Yabancı'),
(82, 'Kara Kitap', 'Orhan Pamuk', 1990, 444, 'Roman', 'Yerli'),
(83, 'Vadideki Zambak', 'Honoré de Balzac', 1835, 320, 'Klasik', 'Yabancı'),
(84, 'Kırmızı Pazartesi', 'Gabriel Garcia Marquez', 1981, 112, 'Roman', 'Yabancı'),
(85, 'Eskici ve Oğulları', 'Orhan Kemal', 1962, 288, 'Roman', 'Yerli'),
(86, 'Momo', 'Michael Ende', 1973, 304, 'Fantastik', 'Yabancı'),
(87, 'Kiralık Konak', 'Yakup Kadri Karaosmanoğlu', 1922, 256, 'Roman', 'Yerli'),
(88, 'Siddhartha', 'Hermann Hesse', 1922, 152, 'Felsefi', 'Yabancı'),
(89, 'Ağrı Dağı Efsanesi', 'Yaşar Kemal', 1970, 128, 'Roman', 'Yerli'),
(90, 'Milena`ya Mektuplar', 'Franz Kafka', 1952, 288, 'Mektup', 'Yabancı'),
(91, 'Yaban', 'Yakup Kadri Karaosmanoğlu', 1932, 224, 'Roman', 'Yerli'),
(92, 'Küçük Prens', 'Antoine de Saint-Exupéry', 1943, 96, 'Fantastik', 'Yabancı'),
(93, 'İstanbul Hatırası', 'Ahmet Ümit', 2010, 568, 'Polisiye', 'Yerli'),
(94, 'Muhteşem Gatsby', 'F. Scott Fitzgerald', 1925, 180, 'Roman', 'Yabancı'),
(95, 'Dokuzuncu Hariciye Koğuşu', 'Peyami Safa', 1930, 112, 'Roman', 'Yerli'),
(96, 'Körlük', 'José Saramago', 1995, 336, 'Roman', 'Yabancı'),
(97, 'Bir Gün Tek Başına', 'Vedat Türkali', 1974, 784, 'Roman', 'Yerli'),
(98, 'Yüzyıllık Yalnızlık', 'Gabriel Garcia Marquez', 1967, 416, 'Roman', 'Yabancı'),
(99, 'Sultanı Öldürmek', 'Ahmet Ümit', 2012, 520, 'Polisiye', 'Yerli'),
(100, 'İnsancıklar', 'Fyodor Dostoyevski', 1846, 192, 'Roman', 'Yabancı');

-- Eklenen verileri görmek için
SELECT * FROM kitaplik;

/* Kitaplik tablosundaki kitapları yayın yılına göre eski olanlardan
yeni olanlara doğru sıralayiniz.*/

select kitap_adi, yazar, yayin_yili
from kitaplik
order by yayin_yili ASC;

select kitap_adi,yazar,yayin_yili
from kitaplik
order by kitap_adi asc;

-- kitapların isim sırasına göre sıralanmış hali ile 

SELECT kitap_adi, yazar, yayin_yili
FROM kitaplik
ORDER BY yayin_yili ASC, kitap_adi ASC;

-- sondan geriye dogru sıralma 
SELECT kitap_adi, yazar, yayin_yili
FROM kitaplik
ORDER BY yayin_yili desc, kitap_adi ASC;

/* Kitaplik tablosundaki "Fyodor Dostoyevski "nin kitaplarını yayın
yılına göre eskiden gunumuze sırayiniz.*/

select kitap_adi, yazar, yayin_yili
from kitaplik
where yazar = 'Fyodor Dostoyevski' order by yayin_yili asc ;

/* Kitaplik tablosundaki Yazar isimlerini ve kitaplarini
dogal sırayiniz.*/

SELECT kitap_adi, yazar, yayin_yili
FROM kitaplik
ORDER BY yazar ASC, kitap_adi ASC;



