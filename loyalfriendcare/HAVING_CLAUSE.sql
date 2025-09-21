use my_database;

/*
                     HAVING_CLAUSE
                     
HAVING, AGGREGATE FUNCTION11ar ile birlikte kullanilan
FİLTRELEME komutudur.
Aggregate fonksiyonlar ile ilgili bir koşul koymak
icin GROUP BYldan sonra HAVING cumlecigi kullanilir.
Yeni create ettigimiz (order by veya Aggregate functions)bir şutun üzerinden
filtreleme yapmak istiyorsak WHERE cumlecigini kullanamayiz.
WHERE cumlecigi sadece database de var olan fieldlar üzerinde
bir filtreleme yapar.
*/

create table isciler(
id int,
isim varchar(50), -- iki isimli bazı kişiler olur 
-- ayse fatma  ve fatma ayse gibi selection için 
-- toplam 100 satırlık bir tablo 
sehir varchar(50), -- sehirlerin içine Denizli koyabilirmisin 
maas int,
sirket varchar(50),
yas int, 
cinsiyet varchar(10) -- mysql de cinsiyet belirten bir şey varsa olur 

);

CREATE TABLE isciler(
    id INT,
    isim VARCHAR(50),
    sehir VARCHAR(50),
    maas INT,
    sirket VARCHAR(50),
    yas INT,
    cinsiyet ENUM('Kadin', 'Erkek')
);


INSERT INTO isciler (id, isim, sehir, maas, sirket, yas, cinsiyet) VALUES
(1, 'Ali Veli', 'Istanbul', 45000, 'TechCorp', 32, 'Erkek'),
(2, 'Ayse Yilmaz', 'Ankara', 52000, 'Innovate Inc.', 28, 'Kadin'),
(3, 'Mehmet Kaya', 'Izmir', 48000, 'DataSolutions', 45, 'Erkek'),
(4, 'Fatma Demir', 'Denizli', 41000, 'WebWorks', 25, 'Kadin'),
(5, 'Mustafa Arslan', 'Bursa', 60000, 'TechCorp', 38, 'Erkek'),
(6, 'Zeynep Sahin', 'Antalya', 43000, 'Innovate Inc.', 31, 'Kadin'),
(7, 'Huseyin Celik', 'Denizli', 55000, 'DataSolutions', 42, 'Erkek'),
(8, 'Ayse Fatma', 'Istanbul', 49000, 'WebWorks', 29, 'Kadin'),
(9, 'Emre Kurt', 'Ankara', 47000, 'TechCorp', 27, 'Erkek'),
(10, 'Hatice Aydin', 'Denizli', 58000, 'Innovate Inc.', 35, 'Kadin'),
(11, 'Ibrahim Koc', 'Izmir', 42000, 'DataSolutions', 24, 'Erkek'),
(12, 'Fatma Ayse', 'Bursa', 51000, 'WebWorks', 33, 'Kadin'),
(13, 'Ahmet Ozturk', 'Antalya', 46000, 'TechCorp', 30, 'Erkek'),
(14, 'Elif Dogan', 'Denizli', 53000, 'Innovate Inc.', 36, 'Kadin'),
(15, 'Murat Aslan', 'Istanbul', 50000, 'DataSolutions', 40, 'Erkek'),
(16, 'Sultan Can', 'Ankara', 44000, 'WebWorks', 26, 'Kadin'),
(17, 'Ramazan Efe', 'Izmir', 57000, 'TechCorp', 37, 'Erkek'),
(18, 'Meryem Sari', 'Denizli', 40000, 'Innovate Inc.', 23, 'Kadin'),
(19, 'Fatih Polat', 'Bursa', 54000, 'DataSolutions', 34, 'Erkek'),
(20, 'Sibel Yavuz', 'Antalya', 59000, 'WebWorks', 39, 'Kadin'),
(21, 'Osman Tekin', 'Denizli', 47500, 'TechCorp', 31, 'Erkek'),
(22, 'Gulay Aksoy', 'Istanbul', 51500, 'Innovate Inc.', 29, 'Kadin'),
(23, 'Yusuf Kilic', 'Ankara', 49500, 'DataSolutions', 43, 'Erkek'),
(24, 'Ayse Fatma', 'Denizli', 42500, 'WebWorks', 26, 'Kadin'),
(25, 'Kenan Bulut', 'Izmir', 61000, 'TechCorp', 39, 'Erkek'),
(26, 'Yasemin Cakir', 'Bursa', 43500, 'Innovate Inc.', 32, 'Kadin'),
(27, 'Ismail Gunes', 'Denizli', 55500, 'DataSolutions', 41, 'Erkek'),
(28, 'Fatma Ayse', 'Antalya', 48500, 'WebWorks', 28, 'Kadin'),
(29, 'Hakan Yildirim', 'Istanbul', 46500, 'TechCorp', 25, 'Erkek'),
(30, 'Esra Ozdemir', 'Ankara', 57500, 'Innovate Inc.', 36, 'Kadin'),
(31, 'Adem Simsek', 'Denizli', 41500, 'DataSolutions', 24, 'Erkek'),
(32, 'Zehra Kurtulus', 'Izmir', 50500, 'WebWorks', 34, 'Kadin'),
(33, 'Serkan Tunc', 'Bursa', 45500, 'TechCorp', 30, 'Erkek'),
(34, 'Derya Uzun', 'Denizli', 52500, 'Innovate Inc.', 37, 'Kadin'),
(35, 'Okan Erdogan', 'Antalya', 59500, 'DataSolutions', 44, 'Erkek'),
(36, 'Pinar Avci', 'Istanbul', 44500, 'WebWorks', 27, 'Kadin'),
(37, 'Burak Deniz', 'Ankara', 56500, 'TechCorp', 38, 'Erkek'),
(38, 'Cigdem Kara', 'Denizli', 39500, 'Innovate Inc.', 23, 'Kadin'),
(39, 'Tarkan Soylemez', 'Izmir', 53500, 'DataSolutions', 35, 'Erkek'),
(40, 'Bahar Gezgin', 'Bursa', 58500, 'WebWorks', 40, 'Kadin'),
(41, 'Umut Baris', 'Denizli', 48000, 'TechCorp', 33, 'Erkek'),
(42, 'Songul Durmaz', 'Antalya', 51000, 'Innovate Inc.', 31, 'Kadin'),
(43, 'Ercan Mutlu', 'Istanbul', 50000, 'DataSolutions', 42, 'Erkek'),
(44, 'Ayse Fatma', 'Ankara', 43000, 'WebWorks', 29, 'Kadin'),
(45, 'Gokhan Inan', 'Denizli', 62000, 'TechCorp', 37, 'Erkek'),
(46, 'Funda Erdem', 'Izmir', 44000, 'Innovate Inc.', 30, 'Kadin'),
(47, 'Tolga Seven', 'Bursa', 56000, 'DataSolutions', 41, 'Erkek'),
(48, 'Fatma Ayse', 'Denizli', 47000, 'WebWorks', 28, 'Kadin'),
(49, 'Cemil Toprak', 'Antalya', 45000, 'TechCorp', 26, 'Erkek'),
(50, 'Nese Tas', 'Istanbul', 55000, 'Innovate Inc.', 35, 'Kadin'),
(51, 'Kadir Cetin', 'Denizli', 40000, 'DataSolutions', 24, 'Erkek'),
(52, 'Seda Ucar', 'Ankara', 49000, 'WebWorks', 33, 'Kadin'),
(53, 'Levent Akin', 'Izmir', 46000, 'TechCorp', 32, 'Erkek'),
(54, 'Gamze Keskin', 'Denizli', 54000, 'Innovate Inc.', 38, 'Kadin'),
(55, 'Tuncay Gok', 'Bursa', 61000, 'DataSolutions', 45, 'Erkek'),
(56, 'Ebru Sanli', 'Antalya', 42000, 'WebWorks', 27, 'Kadin'),
(57, 'Volkan Ates', 'Denizli', 58000, 'TechCorp', 39, 'Erkek'),
(58, 'Aylin Mert', 'Istanbul', 41000, 'Innovate Inc.', 25, 'Kadin'),
(59, 'Birol Cansever', 'Ankara', 52000, 'DataSolutions', 36, 'Erkek'),
(60, 'Dilek Ozer', 'Denizli', 60000, 'WebWorks', 43, 'Kadin'),
(61, 'Erol Varol', 'Izmir', 47000, 'TechCorp', 31, 'Erkek'),
(62, 'Filiz Coskun', 'Bursa', 50000, 'Innovate Inc.', 30, 'Kadin'),
(63, 'Gurkan Tezcan', 'Denizli', 48000, 'DataSolutions', 40, 'Erkek'),
(64, 'Hande Balci', 'Antalya', 43000, 'WebWorks', 28, 'Kadin'),
(65, 'Ilker Sener', 'Istanbul', 57000, 'TechCorp', 42, 'Erkek'),
(66, 'Jale Isik', 'Denizli', 45000, 'Innovate Inc.', 29, 'Kadin'),
(67, 'Koray Pekcan', 'Ankara', 53000, 'DataSolutions', 34, 'Erkek'),
(68, 'Leman Turan', 'Izmir', 59000, 'WebWorks', 39, 'Kadin'),
(69, 'Metin Uysal', 'Denizli', 46000, 'TechCorp', 26, 'Erkek'),
(70, 'Nalan Kose', 'Bursa', 51000, 'Innovate Inc.', 32, 'Kadin'),
(71, 'Orhan Vural', 'Antalya', 55000, 'DataSolutions', 37, 'Erkek'),
(72, 'Oya Bilgin', 'Denizli', 44000, 'WebWorks', 25, 'Kadin'),
(73, 'Rasim Dincer', 'Istanbul', 56000, 'TechCorp', 38, 'Erkek'),
(74, 'Selma Guler', 'Ankara', 49000, 'Innovate Inc.', 31, 'Kadin'),
(75, 'Taner Altin', 'Denizli', 54000, 'DataSolutions', 36, 'Erkek'),
(76, 'Tuba Das', 'Izmir', 60000, 'WebWorks', 41, 'Kadin'),
(77, 'Ufuk Ceylan', 'Bursa', 42000, 'TechCorp', 27, 'Erkek'),
(78, 'Ulku Evren', 'Denizli', 58000, 'Innovate Inc.', 35, 'Kadin'),
(79, 'Veli Kiraz', 'Antalya', 47000, 'DataSolutions', 30, 'Erkek'),
(80, 'Yeliz Sevinc', 'Istanbul', 52000, 'WebWorks', 33, 'Kadin'),
(81, 'Zafer Bayram', 'Denizli', 48000, 'TechCorp', 44, 'Erkek'),
(82, 'Ahu Gozde', 'Ankara', 43000, 'Innovate Inc.', 24, 'Kadin'),
(83, 'Bulent Ecevit', 'Izmir', 59000, 'DataSolutions', 40, 'Erkek'),
(84, 'Canan Sezer', 'Denizli', 46000, 'WebWorks', 29, 'Kadin'),
(85, 'Dogan Alp', 'Bursa', 51000, 'TechCorp', 32, 'Erkek'),
(86, 'Esin Tuna', 'Antalya', 57000, 'Innovate Inc.', 38, 'Kadin'),
(87, 'Ferdi Tayfur', 'Denizli', 45000, 'DataSolutions', 26, 'Erkek'),
(88, 'Gizem Unal', 'Istanbul', 53000, 'WebWorks', 31, 'Kadin'),
(89, 'Halil Ibrahim', 'Ankara', 60000, 'TechCorp', 37, 'Erkek'),
(90, 'Ipek Bocek', 'Denizli', 42000, 'Innovate Inc.', 25, 'Kadin'),
(91, 'Kaan Kaplan', 'Izmir', 55000, 'DataSolutions', 36, 'Erkek'),
(92, 'Lale Devri', 'Bursa', 49000, 'WebWorks', 30, 'Kadin'),
(93, 'Musa Eroglu', 'Denizli', 56000, 'TechCorp', 41, 'Erkek'),
(94, 'Nilufer Zaman', 'Antalya', 44000, 'Innovate Inc.', 28, 'Kadin'),
(95, 'Ozan Arif', 'Istanbul', 58000, 'DataSolutions', 39, 'Erkek'),
(96, 'Pelin Su', 'Denizli', 47000, 'WebWorks', 27, 'Kadin'),
(97, 'Recep Ivedik', 'Ankara', 50000, 'TechCorp', 34, 'Erkek'),
(98, 'Selin Gunes', 'Izmir', 54000, 'Innovate Inc.', 35, 'Kadin'),
(99, 'Tekin Acar', 'Denizli', 61000, 'DataSolutions', 42, 'Erkek'),
(100, 'Zerrin Ozer', 'Bursa', 41000, 'WebWorks', 23, 'Kadin');

select * from isciler ;

-- şirketlere gore toplqm isci şayisini listeleyiniz.

SELECT 
    sirket,
    COUNT(*) AS toplam_isciler
FROM isciler
GROUP BY sirket
ORDER BY toplam_isciler DESC;

select sirket, COUNT(isim) AS toplam_isciler
from isciler
group by sirket;

-- Isci şayisi l'den buyuk olan şirketleri listeleyiniz.
SELECT 
    sirket,
    COUNT(*) AS isci_sayisi
FROM isciler
GROUP BY sirket
HAVING COUNT(*) > 1
ORDER BY isci_sayisi DESC;

-- Toplam geliri 8000 liradan fazla olan isimleri gosteren sorgu yaziniz
-- isimleri gruplandirarak soruyu cozumleyiniz.
SELECT 
    isim,
    SUM(maas) AS toplam_gelir,
    COUNT(*) AS kayit_sayisi
FROM isciler
GROUP BY isim
HAVING SUM(maas) > 8000
ORDER BY toplam_gelir DESC;

-- Egen bir şehirde al inan MAX maaş 5000 'den düşükse şehir ismini
-- ve MAX maasi veren sorgu yaziniz

SELECT 
    sehir,
    MAX(maas) AS en_yuksek_maas
FROM isciler
GROUP BY sehir
HAVING MAX(maas) < 5000
ORDER BY en_yuksek_maas DESC;

-- Soru: En yüksek maaşı 50,000'den DÜŞÜK olan şehirleri ve bu şehirlerdeki en yüksek maaşı listeleyin.

SELECT 
    sehir,
    MAX(maas) AS en_yuksek_maas
FROM isciler
GROUP BY sehir
HAVING MAX(maas) < 50000
ORDER BY en_yuksek_maas DESC;

select *from isciler;

select sehir,MAX(maas) as max_maas
from isciler
group by sehir
having max_maas < 50000;

select sehir , max(maas) as max_maas
from isciler
group by sehir
having max_maas <100000 ;

select * from isciler
;

-- Egen bir şehirde al inan MAX maaş 35000 den buyukse
-- şehir ismi 'd' harfi ile basliyorsa o şehirleri ve
-- ve MAX maasi, maaş ters sirali veren sorgu yaziniz

SELECT 
    sehir AS "Şehir",
    MAX(maas) AS max_maas
FROM isciler
WHERE sehir LIKE 'A%'
GROUP BY sehir
HAVING max_maas > 3500
ORDER BY max_maas DESC;







