use my_database;

/*vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
                  GROUP BY
GROUP BY SQL ifadesi, veritabanı sorgularında belirli bir veya
birden fazla sütuna göre satırları gruplandırmak için kullanılır.
Genellikle aggregate (toplulaştırma) fonksiyonlar
(COUNT(), SUM(), AVG(), MIN(), MAX() vb.) ile birlikte kullanılır.
GROUP BY ifadesi, belirtilen sütunlardaki değerlere göre benzersiz
gruplar oluşturur ve her grup için aggregate fonksiyonların sonuçlarını
döndürür. duş veriler üzerinde özetlemeler ve analizler yapmayı sağlar.

   Notlar:
GROUP BY kullanılırken, SELECT ifadesinde belirtilen
ifadesinde (GROUP BY kısmında) belirtilmiş olması ya
parçası olması gerekir.
Birden fazla sütun üzerinde gruplandırma yapılabilir.
ile ayrılarak GROUP BY ifadesine eklenir.
sütunların ya gruplandırma
da bir aggregate fonksiyonunun
Bu durumda, sütunlar virgül      


SELECT SUM(adet) AS toplam _ adet
FROM tablo adi
GROUP BY sutun adi
» (gruplanacak verilerin oldugu);   


-- 10 farklı urun için 100 satirlik bir tablo 
-- oluşturabilirmisin 
create TABLE manav (
id int,
urun_adi VARCHAR(50),
birim_fiyat DECIMAL(5,2),
satilan_kg DECIMAL (5,2),
toplam_satis_tutari DECİMAL(7,2),
satis_tarihi DATE,
katagori Varchar(50) -- sebze , meyve 
);             
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/    

CREATE TABLE manav (
    id INT,
    urun_adi VARCHAR(50),
    birim_fiyat DECIMAL(5,2),
    satilan_kg DECIMAL(5,2),
    toplam_satis_tutari DECIMAL(8,2) GENERATED ALWAYS AS (birim_fiyat * satilan_kg) STORED,
    satis_tarihi DATE,
    kategori VARCHAR(50)
    );



INSERT INTO manav (id, urun_adi, birim_fiyat, satilan_kg, satis_tarihi, kategori) VALUES
(1, 'Elma', 15.50, 2.50, '2023-10-01', 'Meyve'),
(2, 'Domates', 25.00, 1.20, '2023-10-01', 'Sebze'),
(3, 'Muz', 35.75, 3.00, '2023-10-02', 'Meyve'),
(4, 'Salatalık', 18.00, 0.80, '2023-10-02', 'Sebze'),
(5, 'Portakal', 12.25, 4.50, '2023-10-03', 'Meyve'),
(6, 'Patates', 10.00, 5.00, '2023-10-03', 'Sebze'),
(7, 'Çilek', 45.50, 0.75, '2023-10-04', 'Meyve'),
(8, 'Soğan', 8.50, 3.20, '2023-10-04', 'Sebze'),
(9, 'Karpuz', 7.75, 1.50, '2023-10-05', 'Meyve'),
(10, 'Biber', 32.00, 0.90, '2023-10-05', 'Sebze'),
(11, 'Elma', 15.50, 3.10, '2023-10-06', 'Meyve'),
(12, 'Domates', 25.00, 2.00, '2023-10-06', 'Sebze'),
(13, 'Muz', 35.75, 1.80, '2023-10-07', 'Meyve'),
(14, 'Salatalık', 18.00, 1.10, '2023-10-07', 'Sebze'),
(15, 'Portakal', 12.25, 2.20, '2023-10-08', 'Meyve'),
(16, 'Patates', 10.00, 10.50, '2023-10-08', 'Sebze'),
(17, 'Çilek', 45.50, 1.25, '2023-10-09', 'Meyve'),
(18, 'Soğan', 8.50, 4.00, '2023-10-09', 'Sebze'),
(19, 'Karpuz', 7.75, 2.80, '2023-10-10', 'Meyve'),
(20, 'Biber', 32.00, 1.50, '2023-10-10', 'Sebze'),
(21, 'Elma', 16.00, 2.00, '2023-10-11', 'Meyve'),
(22, 'Domates', 26.50, 1.50, '2023-10-11', 'Sebze'),
(23, 'Muz', 36.00, 2.50, '2023-10-12', 'Meyve'),
(24, 'Salatalık', 17.50, 1.00, '2023-10-12', 'Sebze'),
(25, 'Portakal', 13.00, 3.00, '2023-10-13', 'Meyve'),
(26, 'Patates', 11.00, 6.00, '2023-10-13', 'Sebze'),
(27, 'Çilek', 46.00, 0.50, '2023-10-14', 'Meyve'),
(28, 'Soğan', 9.00, 2.80, '2023-10-14', 'Sebze'),
(29, 'Karpuz', 8.00, 3.20, '2023-10-15', 'Meyve'),
(30, 'Biber', 33.50, 1.10, '2023-10-15', 'Sebze'),
(31, 'Elma', 15.75, 1.90, '2023-10-16', 'Meyve'),
(32, 'Domates', 25.50, 2.30, '2023-10-16', 'Sebze'),
(33, 'Muz', 35.50, 2.10, '2023-10-17', 'Meyve'),
(34, 'Salatalık', 18.25, 1.30, '2023-10-17', 'Sebze'),
(35, 'Portakal', 12.50, 3.80, '2023-10-18', 'Meyve'),
(36, 'Patates', 10.50, 8.00, '2023-10-18', 'Sebze'),
(37, 'Çilek', 45.00, 1.15, '2023-10-19', 'Meyve'),
(38, 'Soğan', 8.75, 3.50, '2023-10-19', 'Sebze'),
(39, 'Karpuz', 7.50, 2.40, '2023-10-20', 'Meyve'),
(40, 'Biber', 32.50, 1.80, '2023-10-20', 'Sebze'),
(41, 'Elma', 16.25, 2.60, '2023-10-21', 'Meyve'),
(42, 'Domates', 26.00, 1.40, '2023-10-21', 'Sebze'),
(43, 'Muz', 36.25, 2.90, '2023-10-22', 'Meyve'),
(44, 'Salatalık', 17.75, 0.70, '2023-10-22', 'Sebze'),
(45, 'Portakal', 13.25, 4.10, '2023-10-23', 'Meyve'),
(46, 'Patates', 11.50, 4.50, '2023-10-23', 'Sebze'),
(47, 'Çilek', 46.50, 0.95, '2023-10-24', 'Meyve'),
(48, 'Soğan', 9.25, 2.20, '2023-10-24', 'Sebze'),
(49, 'Karpuz', 8.25, 3.50, '2023-10-25', 'Meyve'),
(50, 'Biber', 34.00, 0.80, '2023-10-25', 'Sebze'),
(51, 'Elma', 15.00, 3.50, '2023-10-26', 'Meyve'),
(52, 'Domates', 24.50, 1.00, '2023-10-26', 'Sebze'),
(53, 'Muz', 35.00, 2.00, '2023-10-27', 'Meyve'),
(54, 'Salatalık', 19.00, 1.50, '2023-10-27', 'Sebze'),
(55, 'Portakal', 12.00, 5.00, '2023-10-28', 'Meyve'),
(56, 'Patates', 9.50, 7.50, '2023-10-28', 'Sebze'),
(57, 'Çilek', 47.00, 1.05, '2023-10-29', 'Meyve'),
(58, 'Soğan', 8.00, 3.00, '2023-10-29', 'Sebze'),
(59, 'Karpuz', 7.00, 4.00, '2023-10-30', 'Meyve'),
(60, 'Biber', 31.50, 1.30, '2023-10-30', 'Sebze'),
(61, 'Elma', 16.50, 2.20, '2023-11-01', 'Meyve'),
(62, 'Domates', 27.00, 1.80, '2023-11-01', 'Sebze'),
(63, 'Muz', 37.00, 2.30, '2023-11-02', 'Meyve'),
(64, 'Salatalık', 18.50, 1.20, '2023-11-02', 'Sebze'),
(65, 'Portakal', 13.50, 3.50, '2023-11-03', 'Meyve'),
(66, 'Patates', 12.00, 6.50, '2023-11-03', 'Sebze'),
(67, 'Çilek', 48.00, 0.85, '2023-11-04', 'Meyve'),
(68, 'Soğan', 9.50, 2.50, '2023-11-04', 'Sebze'),
(69, 'Karpuz', 8.50, 3.00, '2023-11-05', 'Meyve'),
(70, 'Biber', 35.00, 1.00, '2023-11-05', 'Sebze'),
(71, 'Elma', 15.25, 2.80, '2023-11-06', 'Meyve'),
(72, 'Domates', 25.75, 1.60, '2023-11-06', 'Sebze'),
(73, 'Muz', 36.50, 2.70, '2023-11-07', 'Meyve'),
(74, 'Salatalık', 18.75, 1.40, '2023-11-07', 'Sebze'),
(75, 'Portakal', 12.75, 4.20, '2023-11-08', 'Meyve'),
(76, 'Patates', 11.75, 5.50, '2023-11-08', 'Sebze'),
(77, 'Çilek', 47.50, 1.20, '2023-11-09', 'Meyve'),
(78, 'Soğan', 9.75, 3.30, '2023-11-09', 'Sebze'),
(79, 'Karpuz', 8.75, 2.60, '2023-11-10', 'Meyve'),
(80, 'Biber', 34.50, 1.60, '2023-11-10', 'Sebze'),
(81, 'Elma', 16.75, 2.30, '2023-11-11', 'Meyve'),
(82, 'Domates', 27.25, 1.90, '2023-11-11', 'Sebze'),
(83, 'Muz', 37.25, 2.40, '2023-11-12', 'Meyve'),
(84, 'Salatalık', 19.25, 1.10, '2023-11-12', 'Sebze'),
(85, 'Portakal', 13.75, 3.90, '2023-11-13', 'Meyve'),
(86, 'Patates', 12.25, 7.00, '2023-11-13', 'Sebze'),
(87, 'Çilek', 48.50, 0.90, '2023-11-14', 'Meyve'),
(88, 'Soğan', 10.00, 2.00, '2023-11-14', 'Sebze'),
(89, 'Karpuz', 9.00, 3.80, '2023-11-15', 'Meyve'),
(90, 'Biber', 35.50, 1.20, '2023-11-15', 'Sebze'),
(91, 'Elma', 14.75, 3.00, '2023-11-16', 'Meyve'),
(92, 'Domates', 24.25, 2.10, '2023-11-16', 'Sebze'),
(93, 'Muz', 34.75, 2.20, '2023-11-17', 'Meyve'),
(94, 'Salatalık', 19.50, 1.60, '2023-11-17', 'Sebze'),
(95, 'Portakal', 11.75, 4.80, '2023-11-18', 'Meyve'),
(96, 'Patates', 9.25, 9.00, '2023-11-18', 'Sebze'),
(97, 'Çilek', 49.00, 1.30, '2023-11-19', 'Meyve'),
(98, 'Soğan', 7.75, 3.60, '2023-11-19', 'Sebze'),
(99, 'Karpuz', 6.75, 4.20, '2023-11-20', 'Meyve'),
(100, 'Biber', 31.25, 1.70, '2023-11-20', 'Sebze');

/* vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
Manav tablosundaki her bir urun licin toplam satis miktari nedir?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/

select urun_adi,
sum(satilan_kg)
from manav
group by urun_adi;

select urun_adi,
sum(toplam_satis_tutari) as toplam_gelir
from manav
group by urun_adi;

-- vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv

SELECT urun_adi,
       SUM(birim_fiyat * satilan_kg) AS toplam_gelir
FROM manav
GROUP BY urun_adi
ORDER BY toplam_gelir ASC; -- ASC: Küçükten büyüğe (min->max)

-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv

SELECT urun_adi,
       SUM(birim_fiyat * satilan_kg) AS toplam_gelir
FROM manav
GROUP BY urun_adi
ORDER BY toplam_gelir DESC; -- ASC: büyükten kücüğe (min->max)

-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

SELECT urun_adi,
       SUM(birim_fiyat * satilan_kg) AS toplam_gelir,
       SUM( satilan_kg) as toplam_kg
FROM manav
GROUP BY urun_adi
ORDER BY toplam_gelir DESC; -- ASC: büyükten kücüğe (min->max)


-- vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
SELECT 
    ROW_NUMBER() OVER(ORDER BY toplam_gelir DESC) AS sira_no,
    urun_adi,
    toplam_gelir,
    toplam_kg
FROM (
    SELECT 
        urun_adi,
        SUM(birim_fiyat * satilan_kg) AS toplam_gelir,
        SUM(satilan_kg) AS toplam_kg
    FROM manav
    GROUP BY urun_adi
) AS subquery
ORDER BY toplam_gelir DESC;

-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-- vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv

-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


-- vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
-- manav tablosunda en çok satılan urun nedir 
SELECT 
    urun_adi,
    SUM(satilan_kg) AS toplam_satilan_kg
FROM manav
GROUP BY urun_adi
ORDER BY toplam_satilan_kg DESC
LIMIT 1;

-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


/*-- vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
Fliases komutu ile tablo yazdirilirken, field isimleri sadece
o cikti icin degistirilebilir.
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/


-- vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
-- Manav tablosundaki her bir gun icin ortalama birim fiyati nedir?
SELECT 
    satis_tarihi,
    ROUND(AVG(birim_fiyat), 2) AS gunluk_ortalama_fiyat
FROM manav
GROUP BY satis_tarihi
ORDER BY gunluk_ortalama_fiyat DESC;


-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

/*-- vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
Manav tablosundaki her bir urun için gunluk ortalama fiyat nedir 
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/
SELECT 
    urun_adi,
    satis_tarihi,
    ROUND(AVG(birim_fiyat), 2) AS gunluk_ortalama_fiyat
FROM manav
GROUP BY urun_adi, satis_tarihi
ORDER BY satis_tarihi DESC, gunluk_ortalama_fiyat DESC;

SELECT satis_tarihi, AVG(birim_fiyat) AS birim_fiyat
FROM manav
GROUP BY satis_tarihi;


SELECT 
    satis_tarihi,
    ROUND(AVG(birim_fiyat), 2) AS ortalama_fiyat,
    COUNT(*) AS satis_adedi
FROM manav
GROUP BY satis_tarihi
ORDER BY satis_tarihi DESC;

-- vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
-- Manav tablosundaki satilan en pahali urunun bilgileri nelerdir?

SELECT 
    urun_adi,
    birim_fiyat,
    satis_tarihi,
    satilan_kg,
    (birim_fiyat * satilan_kg) AS satis_tutari
FROM manav
ORDER BY birim_fiyat DESC
LIMIT 1;

-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


-- Manav tablosundaki her kategorideki en yüksek satış fiyatına sahip ürünleri bulup,
-- bunları toplam satış fiyatına göre azalan sırayla sıralayip sadece ilk 5 sonucu listeleyiniz


WITH KategoriMaxFiyat AS (
    SELECT 
        kategori,
        MAX(birim_fiyat) AS max_fiyat
    FROM manav
    GROUP BY kategori
)

SELECT 
    m.kategori,
    m.urun_adi,
    m.birim_fiyat AS en_yuksek_fiyat,
    ROUND(SUM(m.birim_fiyat * m.satilan_kg), 2) AS toplam_satis_tutari
FROM manav m
INNER JOIN KategoriMaxFiyat kmf 
    ON m.kategori = kmf.kategori 
    AND m.birim_fiyat = kmf.max_fiyat
GROUP BY m.kategori, m.urun_adi, m.birim_fiyat
ORDER BY toplam_satis_tutari DESC
LIMIT 5;


-- ================================
WITH KategoriSatisSiralamasi AS (
    SELECT 
        kategori,
        urun_adi,
        ROUND(SUM(birim_fiyat * satilan_kg), 2) AS toplam_tutar,
        ROW_NUMBER() OVER (
            PARTITION BY kategori 
            ORDER BY SUM(birim_fiyat * satilan_kg) DESC
        ) AS siralama
    FROM manav
    GROUP BY kategori, urun_adi
)
SELECT 
    kategori,
    urun_adi,
    toplam_tutar
FROM KategoriSatisSiralamasi
WHERE siralama <= 5
ORDER BY kategori, siralama;


-- ============================================
SELECT kategori, MAX(birim_fiyat) AS satis_fiyati
FROM manav
GROUP BY kategori
ORDER BY satis_fiyati DESC
LIMIT 5 ;






















              