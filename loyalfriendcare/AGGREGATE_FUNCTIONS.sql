use my_database;


/*=======================================
>>>>>>>>>>>>AGGREGATE FUNCTIONS<<<<

Aggregate fonksiyonlar, SQL'de bir grup satır üzerinde belirli
bir işlemi gerçekleştiren ve tek bir değer döndüren fonksiyonlardır.
Bu tür fonksiyonlar, veri analizi yaparken veya raporlar hazırlarken
veri setleri üzerinden özet bilgiler elde etmek için sıklıkla kullanılır.
Aggregate fonksiyonlar, birden fazla satırın bilgilerini toplayarak,
bunların ortalamasını almak, en büyük veyıa en küçük değerlerini bulmak
gibi işlemleri kolaylikla yapabilir.

Yaygın Kullanılan Aggregate Fonksiyonlar
OUNT(): Belirli bir kriteri karşılayan satırların sayısını döndürür.
örneğin, bir tabloda kaç tane farklı kayıt olduğunu bulmak için kullanılır.
sUM(): Sayısal bir sütundaki tüm değerlerin toplamını hesaplar.
rneğin, bir satış tablosundaki tüm satışların toplam gelirini hesaplamak için
kullanılabilir.
aVG(): Sayısal bir sütundaki değerlerin ortalamasını hesaplar.
örneğin, öğrencilerin sınav puanlarının ortalamasını bulmak için kullanılır.
ı
mIN() ve MAX(): Bir sütundaki en küçük ve en büyük değerleri bulur.
örneğin, bir ürünün satış fiyatları arasından en düşük ve en yüksek fiyatı
bulmak için kullanılabilir.
========================================*/

/*======================================================
>>>>>>>>>>>>>>>COUNT<<<<<<<<<<<<<<<<<<<<<<<
======================================================*/

USE my_database;

 

CREATE TABLE satis_raporu (
    id INT,
    urun_adi VARCHAR(255),
    satis_miktari INT,
    urun_fiyati DECIMAL(10, 2),
    siparis_tarihi DATE
);


INSERT INTO satis_raporu (id, urun_adi, satis_miktari, urun_fiyati, siparis_tarihi) VALUES
(1, 'Laptop', 3, 1250.00, '2023-03-15'),
(2, 'Smartphone', 5, 820.50, '2023-03-16'),
(3, 'Tablet', 2, 440.00, '2023-03-17'),
(4, 'Smartwatch', 10, 260.75, '2023-03-18'),
(5, 'Headphones', 8, 145.99, '2023-03-19'),
(6, 'Monitor', 4, 310.00, '2023-03-20'),
(7, 'Keyboard', 6, 80.00, '2023-03-21'),
(8, 'Mouse', 12, 28.50, '2023-03-22'),
(9, 'Webcam', 7, 55.25, '2023-03-23'),
(10, 'Printer', 3, 185.00, '2023-03-24'),
(11, 'Laptop', 2, 1190.00, '2023-04-01'),
(12, 'Smartphone', 6, 799.99, '2023-04-02'),
(13, 'Tablet', 3, 455.50, '2023-04-03'),
(14, 'Smartwatch', 8, 245.00, '2023-04-04'),
(15, 'Headphones', 10, 155.00, '2023-04-05'),
(16, 'Monitor', 5, 295.00, '2023-04-06'),
(17, 'Keyboard', 7, 78.50, '2023-04-07'),
(18, 'Mouse', 15, 26.99, '2023-04-08'),
(19, 'Webcam', 9, 52.00, '2023-04-09'),
(20, 'Printer', 4, 179.50, '2023-04-10'),
(21, 'Laptop', 4, 1300.00, '2023-05-11'),
(22, 'Smartphone', 4, 850.00, '2023-05-12'),
(23, 'Tablet', 5, 460.00, '2023-05-13'),
(24, 'Smartwatch', 12, 270.00, '2023-05-14'),
(25, 'Headphones', 6, 139.99, '2023-05-15'),
(26, 'Monitor', 3, 320.50, '2023-05-16'),
(27, 'Keyboard', 8, 82.00, '2023-05-17'),
(28, 'Mouse', 10, 30.00, '2023-05-18'),
(29, 'Webcam', 5, 58.75, '2023-05-19'),
(30, 'Printer', 2, 190.00, '2023-05-20'),
(31, 'Laptop', 1, 1150.75, '2023-06-01'),
(32, 'Smartphone', 7, 810.00, '2023-06-02'),
(33, 'Tablet', 4, 430.00, '2023-06-03'),
(34, 'Smartwatch', 9, 255.50, '2023-06-04'),
(35, 'Headphones', 11, 160.00, '2023-06-05'),
(36, 'Monitor', 6, 289.99, '2023-06-06'),
(37, 'Keyboard', 5, 75.00, '2023-06-07'),
(38, 'Mouse', 20, 25.00, '2023-06-08'),
(39, 'Webcam', 8, 50.50, '2023-06-09'),
(40, 'Printer', 5, 175.00, '2023-06-10'),
(41, 'Laptop', 3, 1280.00, '2023-07-15'),
(42, 'Smartphone', 5, 830.00, '2023-07-16'),
(43, 'Tablet', 2, 445.00, '2023-07-17'),
(44, 'Smartwatch', 11, 265.00, '2023-07-18'),
(45, 'Headphones', 9, 149.50, '2023-07-19'),
(46, 'Monitor', 4, 315.00, '2023-07-20'),
(47, 'Keyboard', 7, 81.00, '2023-07-21'),
(48, 'Mouse', 14, 29.00, '2023-07-22'),
(49, 'Webcam', 6, 56.00, '2023-07-23'),
(50, 'Printer', 3, 182.00, '2023-07-24'),
(51, 'Laptop', 2, 1210.00, '2023-08-01'),
(52, 'Smartphone', 6, 790.00, '2023-08-02'),
(53, 'Tablet', 3, 465.00, '2023-08-03'),
(54, 'Smartwatch', 7, 240.00, '2023-08-04'),
(55, 'Headphones', 12, 158.00, '2023-08-05'),
(56, 'Monitor', 5, 299.00, '2023-08-06'),
(57, 'Keyboard', 8, 77.00, '2023-08-07'),
(58, 'Mouse', 18, 27.50, '2023-08-08'),
(59, 'Webcam', 10, 51.00, '2023-08-09'),
(60, 'Printer', 4, 178.00, '2023-08-10'),
(61, 'Laptop', 4, 1320.00, '2023-09-11'),
(62, 'Smartphone', 3, 860.00, '2023-09-12'),
(63, 'Tablet', 6, 470.00, '2023-09-13'),
(64, 'Smartwatch', 14, 275.00, '2023-09-14'),
(65, 'Headphones', 5, 135.00, '2023-09-15'),
(66, 'Monitor', 2, 325.00, '2023-09-16'),
(67, 'Keyboard', 9, 84.00, '2023-09-17'),
(68, 'Mouse', 9, 31.00, '2023-09-18'),
(69, 'Webcam', 4, 59.00, '2023-09-19'),
(70, 'Printer', 1, 195.00, '2023-09-20'),
(71, 'Laptop', 1, 1180.00, '2023-10-01'),
(72, 'Smartphone', 8, 800.00, '2023-10-02'),
(73, 'Tablet', 4, 420.00, '2023-10-03'),
(74, 'Smartwatch', 8, 258.00, '2023-10-04'),
(75, 'Headphones', 13, 162.00, '2023-10-05'),
(76, 'Monitor', 7, 285.00, '2023-10-06'),
(77, 'Keyboard', 4, 74.00, '2023-10-07'),
(78, 'Mouse', 22, 24.00, '2023-10-08'),
(79, 'Webcam', 9, 49.00, '2023-10-09'),
(80, 'Printer', 6, 170.00, '2023-10-10'),
(81, 'Laptop', 3, 1290.00, '2023-11-15'),
(82, 'Smartphone', 5, 840.00, '2023-11-16'),
(83, 'Tablet', 2, 450.00, '2023-11-17'),
(84, 'Smartwatch', 13, 268.00, '2023-11-18'),
(85, 'Headphones', 8, 148.00, '2023-11-19'),
(86, 'Monitor', 4, 318.00, '2023-11-20'),
(87, 'Keyboard', 7, 83.00, '2023-11-21'),
(88, 'Mouse', 13, 29.50, '2023-11-22'),
(89, 'Webcam', 6, 57.00, '2023-11-23'),
(90, 'Printer', 3, 184.00, '2023-11-24'),
(91, 'Laptop', 2, 1220.00, '2023-12-01'),
(92, 'Smartphone', 7, 780.00, '2023-12-02'),
(93, 'Tablet', 3, 470.00, '2023-12-03'),
(94, 'Smartwatch', 6, 235.00, '2023-12-04'),
(95, 'Headphones', 14, 165.00, '2023-12-05'),
(96, 'Monitor', 5, 305.00, '2023-12-06'),
(97, 'Keyboard', 9, 76.00, '2023-12-07'),
(98, 'Mouse', 16, 28.00, '2023-12-08'),
(99, 'Webcam', 11, 53.00, '2023-12-09'),
(100, 'Printer', 5, 177.00, '2023-12-10');


select count(urun_adi)
from satis_raporu;

SELECT COUNT(DISTINCT urun_adi)
FROM satis_raporu;

select count(*)
from satis_raporu
where urun_fiyati < 1200;

select sum(urun_fiyati)
from satis_raporu;

select sum(satis_miktari)
from satis_raporu;

SELECT SUM(satis_miktari * urun_fiyati) AS toplam_tutar
FROM satis_raporu
WHERE siparis_tarihi LIKE '2023-07-__';

select * from satis_raporu;

SELECT SUM(satis_miktari * urun_fiyati) AS toplam_tutar
FROM satis_raporu
WHERE siparis_tarihi BETWEEN '2023-07-01' AND '2023-07-31';

SELECT SUM(satis_miktari * urun_fiyati) AS toplam_tutar
FROM satis_raporu
WHERE YEAR(siparis_tarihi) = 2023 AND MONTH(siparis_tarihi) = 7;


SELECT SUM(satis_miktari * urun_fiyati) AS toplam_tutar
FROM satis_raporu
WHERE DATE_FORMAT(siparis_tarihi, '%Y-%m') = '2023-07';

select avg(urun_fiyati)
from satis_raporu;

-- ===================================
-- Ciroya Göre En Yüksek Satış Yapılan Ay Hangisidir?

SELECT
    DATE_FORMAT(siparis_tarihi, '%Y-%m') AS ay,
    SUM(satis_miktari * urun_fiyati) AS aylik_toplam_tutar
FROM
    satis_raporu
GROUP BY
    ay
ORDER BY
    aylik_toplam_tutar DESC
LIMIT 1;

-- ===============

-- ===============================
-- Satılan Ürün Adedine Göre En Çok Satış Yapılan Ay Hangisidir?
SELECT
    DATE_FORMAT(siparis_tarihi, '%Y-%m') AS ay,
    SUM(satis_miktari) AS aylik_toplam_adet
FROM
    satis_raporu
GROUP BY
    ay
ORDER BY
    aylik_toplam_adet DESC
LIMIT 1;

-- Satis raporu tablosundaki kulak lik ve yazicilarin ortalama satis miktari nedir

SELECT AVG(satis_miktari)
FROM satis_raporu
WHERE urun_adi IN(' WEBCAM','printer');


-- SORU: 'Webcam' ve 'Printer' ürünlerinin ortalama satış miktarlarını tek bir sorgu sonucunda nasıl ayrı ayrı görebilirim?

-- Başlangıçtaki Hatalı Yaklaşım ve Düzeltilmesi
-- Sizin sorgunuz: SELECT AVG(satis_miktari) FROM satis_raporu WHERE urun_adi IN(' WEBCAM','printer');
-- Bu sorgu, iki ürünün satış miktarlarını aynı havuza koyar ve bu havuzun genel ortalamasını alır. 
-- Yani, Webcam ve Printer ayrımı yapmadan tek bir ortalama hesaplar. Ayrıca ' WEBCAM' başındaki boşluk ve 'printer' küçük harfle yazılması veri bulunamamasına neden olabilir.

-- ÇÖZÜM YOLLARI

-- Yöntem 1: GROUP BY ile Gruplama (En Yaygın ve Basit Yöntem)
-- Açıklama: Bu yöntem, en standart ve okunabilir çözümdür. Sorgu, belirtilen ürün adlarına göre verileri gruplar ve her grup için ayrı ayrı ortalama hesaplar. Sonuç, her ürün için bir satır olacak şekilde görüntülenir.

SELECT 
    urun_adi, 
    AVG(satis_miktari) AS ortalama_satis_miktari
FROM 
    satis_raporu
WHERE 
    urun_adi IN ('Webcam', 'Printer')
GROUP BY 
    urun_adi;

/*
Sorgunun Adım Adım Açıklaması:
1. FROM satis_raporu: 'satis_raporu' tablosundaki tüm verilerle başlar.
2. WHERE urun_adi IN ('Webcam', 'Printer'): Tabloyu sadece 'urun_adi' sütununda 'Webcam' veya 'Printer' yazan satırlarla sınırlar.
3. GROUP BY urun_adi: Filtrelenmiş bu satırları 'urun_adi' değerine göre gruplara ayırır. Yani tüm 'Webcam' satışları bir grup, tüm 'Printer' satışları başka bir grup olur.
4. SELECT urun_adi, AVG(satis_miktari): Her bir grup için ürün adını ve o gruba ait 'satis_miktari' sütununun ortalamasını hesaplar ve seçer.
*/

-- Yöntem 2: Koşullu Ortalama ile Sütunlarda Gösterme (CASE Kullanımı)
-- Açıklama: Bu yöntem, her bir ürünün ortalamasını ayrı sütunlarda görmek istediğinizde kullanışlıdır. Tek bir satırda birden fazla ürünün ortalamasını yan yana gösterir.

SELECT 
    AVG(CASE WHEN urun_adi = 'Webcam' THEN satis_miktari END) AS webcam_ortalama_satis,
    AVG(CASE WHEN urun_adi = 'Printer' THEN satis_miktari END) AS printer_ortalama_satis
FROM 
    satis_raporu
WHERE 
    urun_adi IN ('Webcam', 'Printer');

/*
Sorgunun Adım Adım Açıklaması:
1. FROM satis_raporu: 'satis_raporu' tablosuyla başlar.
2. WHERE urun_adi IN ('Webcam', 'Printer'): Verileri sadece bu iki ürüne ait olanlarla sınırlar.
3. AVG(CASE WHEN urun_adi = 'Webcam' THEN satis_miktari END): Tüm satırları gezer. Eğer satırdaki 'urun_adi' 'Webcam' ise, o satırdaki 'satis_miktari' değerini alır. Diğer durumlarda NULL alır. AVG fonksiyonu sadece sayısal değerleri (NULL olmayanları) dikkate alarak ortalama hesaplar. Böylece sadece Webcam satışlarının ortalaması bulunur.
4. AVG(CASE WHEN urun_adi = 'Printer' THEN satis_miktari END): Aynı işlemi 'Printer' ürünü için yapar.
5. SELECT ...: Hesaplanan bu iki farklı ortalamayı 'webcam_ortalama_satis' ve 'printer_ortalama_satis' adlarıyla iki ayrı sütun olarak seçer.
*/

-- Yöntem 3: UNION ALL ile Sorguları Birleştirme (Daha Az Verimli Yöntem)
-- Açıklama: Bu yöntem, her bir ürün için ayrı ayrı yazılmış sorguların sonuçlarını birleştirmeye dayanır. Genellikle daha az verimlidir ve daha uzundur, ancak mantığı anlamak için öğretici olabilir.

SELECT 
    'Webcam' AS urun_adi, 
    AVG(satis_miktari) AS ortalama_satis
FROM 
    satis_raporu
WHERE 
    urun_adi = 'Webcam'

UNION ALL

SELECT 
    'Printer' AS urun_adi, 
    AVG(satis_miktari) AS ortalama_satis
FROM 
    satis_raporu
WHERE 
    urun_adi = 'Printer';

/*
Sorgunun Adım Adım Açıklaması:
1. İlk SELECT Sorgusu: Sadece 'Webcam' ürününün ortalama satış miktarını hesaplar ve bu sonuca 'Webcam' metnini de ekleyerek tek satırlık bir sonuç oluşturur.
2. İkinci SELECT Sorgusu: Sadece 'Printer' ürününün ortalama satış miktarını hesaplar ve 'Printer' metniyle birlikte tek satırlık bir sonuç daha oluşturur.
3. UNION ALL: Bu iki ayrı sorgunun sonuçlarını alır ve alt alta birleştirerek tek bir sonuç tablosu halinde sunar.
*/

-- satis_raporu tablosu en düşük fiyat nedir 

select MIN(urun_fiyati)
from satis_raporu;

-- ===========================================
SELECT urun_adi, 
       MIN(urun_fiyati) AS en_ucuz_fiyat
FROM satis_raporu
GROUP BY urun_adi;


-- vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
SELECT 
       MIN(siparis_tarihi) AS ilk_siparis,
       MAX(siparis_tarihi) AS son_siparis
FROM satis_raporu;
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^















