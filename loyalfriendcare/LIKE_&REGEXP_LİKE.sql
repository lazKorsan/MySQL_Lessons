USE my_database;

-- s1===========================


SELECT * FROM kisiler;

select 
 ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
   COUNT(*) OVER() AS toplam_kayit_sayisi,
isim,soyisim
from kisiler
where isim
like '%et';

-- Personel tablosunu oluşturma
-- Eğer tablo zaten varsa, bir sonraki komutla silip yeniden oluşturabilirsiniz.
-- DROP TABLE IF EXISTS personel;

CREATE TABLE personel (
    ID CHAR(5) PRIMARY KEY, -- Benzersiz 5 karakterli personel ID'si
    isim VARCHAR(40),       -- Personel adı
    soyisim VARCHAR(40),    -- Personel soyadı
    yas INT,                -- Personel yaşı
    maas INT                -- Personel maaşı
);

-- Tabloya 100 adet örnek veri ekleme
INSERT INTO personel (ID, isim, soyisim, yas, maas) VALUES
('10001', 'Ahmet', 'Yılmaz', 34, 7500),
('10002', 'Ayşe', 'Kaya', 28, 5500),
('10003', 'Mustafa', 'Demir', 45, 12000),
('10004', 'Elif', 'Çelik', 29, 9000),
('10005', 'Mehmet', 'Şahin', 52, 15000),
('10006', 'Fatma', 'Öztürk', 31, 7500),
('10007', 'Ali', 'Aydın', 25, 5500),
('10008', 'Zeynep', 'Özdemir', 38, 12000),
('10009', 'Hasan', 'Arslan', 41, 9000),
('10010', 'Emine', 'Doğan', 26, 6000),
('10011', 'Burak', 'Yıldız', 33, 7500),
('10012', 'Merve', 'Koç', 29, 5500),
('10013', 'Can', 'Kurt', 48, 12000),
('10014', 'Deniz', 'Güneş', 36, 9000),
('10015', 'Hüseyin', 'Sarı', 55, 15000),
('10016', 'Sultan', 'Kaplan', 30, 7500),
('10017', 'İsmail', 'Çınar', 27, 5500),
('10018', 'Hatice', 'Aslan', 43, 12000),
('10019', 'Murat', 'Ertuğrul', 39, 9000),
('10020', 'Yasemin', 'Balcı', 24, 6000),
('10021', 'Ahmet', 'Kaya', 35, 8500),
('10022', 'Ayşe', 'Yılmaz', 29, 8500),
('10023', 'Mustafa', 'Şahin', 46, 13000),
('10024', 'Elif', 'Demir', 30, 11000),
('10025', 'Mehmet', 'Çelik', 53, 16000),
('10026', 'Fatma', 'Aydın', 32, 8500),
('10027', 'Ali', 'Öztürk', 26, 8500),
('10028', 'Zeynep', 'Arslan', 39, 13000),
('10029', 'Hasan', 'Özdemir', 42, 11000),
('10030', 'Emine', 'Koç', 27, 6500),
('10031', 'Burak', 'Doğan', 34, 8500),
('10032', 'Merve', 'Yıldız', 30, 8500),
('10033', 'Can', 'Güneş', 49, 13000),
('10034', 'Deniz', 'Kurt', 37, 11000),
('10035', 'Hüseyin', 'Çınar', 56, 16000),
('10036', 'Sultan', 'Sarı', 31, 8500),
('10037', 'İsmail', 'Kaplan', 28, 8500),
('10038', 'Hatice', 'Ertuğrul', 44, 13000),
('10039', 'Murat', 'Aslan', 40, 11000),
('10040', 'Yasemin', 'Balcı', 25, 6500),
('10041', 'Ahmet', 'Demir', 36, 7500),
('10042', 'Ayşe', 'Çelik', 30, 5500),
('10043', 'Mustafa', 'Yılmaz', 47, 12000),
('10044', 'Elif', 'Kaya', 31, 9000),
('10045', 'Mehmet', 'Aydın', 54, 15000),
('10046', 'Fatma', 'Şahin', 33, 7500),
('10047', 'Ali', 'Arslan', 27, 5500),
('10048', 'Zeynep', 'Öztürk', 40, 12000),
('10049', 'Hasan', 'Doğan', 43, 9000),
('10050', 'Emine', 'Özdemir', 28, 6000),
('10051', 'Okan', 'Polat', 29, 9500),
('10052', 'Seda', 'Baran', 34, 9500),
('10053', 'Uğur', 'Avcı', 41, 14000),
('10054', 'Pınar', 'Tekin', 28, 9500),
('10055', 'Serkan', 'Gök', 37, 14000),
('10056', 'Gamze', 'Aksoy', 32, 9500),
('10057', 'Tarkan', 'Keskin', 45, 14000),
('10058', 'Filiz', 'Taş', 26, 9500),
('10059', 'Levent', 'Uçar', 50, 17000),
('10060', 'Bahar', 'Can', 31, 7000),
('10061', 'Ahmet', 'Şahin', 37, 7500),
('10062', 'Ayşe', 'Demir', 31, 5500),
('10063', 'Mustafa', 'Çelik', 48, 12000),
('10064', 'Elif', 'Yılmaz', 32, 9000),
('10065', 'Mehmet', 'Kaya', 55, 15000),
('10066', 'Fatma', 'Arslan', 34, 7500),
('10067', 'Ali', 'Öztürk', 28, 5500),
('10068', 'Zeynep', 'Aydın', 41, 12000),
('10069', 'Hasan', 'Kurt', 44, 9000),
('10070', 'Emine', 'Özdemir', 29, 6000),
('10071', 'Fatih', 'Türk', 38, 11500),
('10072', 'Gül', 'Işık', 27, 11500),
('10073', 'Kemal', 'Toprak', 49, 18000),
('10074', 'Songül', 'Deniz', 35, 11500),
('10075', 'Yusuf', 'Gül', 42, 18000),
('10076', 'Özlem', 'Bulut', 33, 11500),
('10077', 'Adem', 'Kara', 51, 18000),
('10078', 'Derya', 'Aktaş', 29, 11500),
('10079', 'İbrahim', 'Güler', 47, 20000),
('10080', 'Aslı', 'Çetin', 30, 8000),
('10081', 'Ahmet', 'Öztürk', 38, 7500),
('10082', 'Ayşe', 'Arslan', 32, 5500),
('10083', 'Mustafa', 'Aydın', 49, 12000),
('10084', 'Elif', 'Şahin', 33, 9000),
('10085', 'Mehmet', 'Demir', 56, 15000),
('10086', 'Fatma', 'Kaya', 35, 7500),
('10087', 'Ali', 'Yılmaz', 29, 5500),
('10088', 'Zeynep', 'Çelik', 42, 12000),
('10089', 'Hasan', 'Koç', 45, 9000),
('10090', 'Emine', 'Kurt', 30, 6000),
('10091', 'Burak', 'Güneş', 35, 7500),
('10092', 'Merve', 'Sarı', 31, 5500),
('10093', 'Can', 'Kaplan', 50, 12000),
('10094', 'Deniz', 'Çınar', 38, 9000),
('10095', 'Hüseyin', 'Aslan', 57, 15000),
('10096', 'Sultan', 'Ertuğrul', 32, 7500),
('10097', 'İsmail', 'Balcı', 29, 5500),
('10098', 'Hatice', 'Yılmaz', 45, 12000),
('10099', 'Murat', 'Kaya', 41, 9000),
('10100', 'Yasemin', 'Demir', 26, 6000);

select * from personel;

select
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
   COUNT(*) OVER() AS toplam_kayit_sayisi,
 isim,soyisim
from personel
where isim like 'A%';


select
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
   COUNT(*) OVER() AS toplam_kayit_sayisi,
   isim,soyisim
   from personel
   where isim like '_____';
   
   
   select
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
   COUNT(*) OVER() AS toplam_kayit_sayisi,
   isim,soyisim
   from personel
   where isim like '%a';
   
   
select
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
   COUNT(*) OVER() AS toplam_kayit_sayisi,
   isim,soyisim
   from personel
   where isim like '_a%';
   
   
   select
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
   COUNT(*) OVER() AS toplam_kayit_sayisi,
   isim,soyisim
   from personel
   
   where isim like 'ayse';
   
   
     select
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
   COUNT(*) OVER() AS toplam_kayit_sayisi,
   isim,soyisim,ID
   from personel
   where isim like'ayse%' ;
   
   
   INSERT INTO personel (ID, isim, soyisim, yas, maas) VALUES
('10101', 'Ahmet', 'Yılmaz', 34, 7500),
('10102', 'Fatma Ayşe', 'Kaya', 28, 5500),
('10103', 'Ayse Fatma ', 'Demir', 45, 12000);


SELECT
  ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,
  isim, soyisim, ID
FROM personel
WHERE 
  LOWER(isim) LIKE '%ayşe%' -- Büyük/küçük harf duyarsız arama
  OR LOWER(isim) LIKE '%ayse%'; -- Türkçe karakter alternatifi

-- ============================================================
SELECT 
  ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,
  isim, soyisim, ID
FROM personel
WHERE 
  -- İki isimli olanlar (isim alanında boşluk içerenler)
  isim LIKE '% %' 
  -- İsim içinde ayşe geçenler (büyük/küçük harf ve Türkçe karakter desteği)
  AND (LOWER(isim) LIKE '%ayşe%' OR LOWER(isim) LIKE '%ayse%');
  
  -- ====================================================================

SELECT 
  ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,
  isim, soyisim, ID
FROM personel
WHERE 
  -- İki isimli olanlar (isim alanında boşluk içerenler)
  isim LIKE '% %' 
  -- İsim içinde ayşe geçenler (büyük/küçük harf ve Türkçe karakter desteği)
  AND (LOWER(isim) LIKE '%ayşe%' OR LOWER(isim) LIKE '%ayse%');
  
   -- ====================================================================
   
   SELECT 
  ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,
  isim, soyisim, ID
FROM personel
WHERE 
  isim like '% %'
and (isim like '%ayse%');

-- ====================================================================
-- Personel tablosundan isminin 2. harfi e olup isiminde y geçen personeli listeleyiniz

USE my_database;

select * from personel;

-- =========================================================

SELECT 
  ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,
  isim, soyisim, ID
FROM personel
WHERE 
isim like '_e%' 
and 
(isim like'%y%') ;

-- ============================================

select isim,soyisim
from personel
where isim
regexp '^A%et$';


-- Eğer tablo mevcutsa silip yeniden oluşturmak için bu satırı kullanabilirsiniz.
-- DROP TABLE IF EXISTS kelimeler;

-- Tabloyu oluşturma
CREATE TABLE kelimeler (
  id int UNIQUE,
  kelime varchar(50),
  harf_sayisi int
);

-- Tabloya 40 adet örnek veri ekleme
INSERT INTO kelimeler (id, kelime, harf_sayisi) VALUES
-- 'h' ile başlayıp 't' ile biten ve ortası değişen kelimeler
(1001, 'hot', 3),
(1002, 'hat', 3),
(1003, 'hit', 3),
(1004, 'hbt', 3),
(1005, 'h9t', 3), -- Ortasında sayı olan

-- Başlangıç ve bitiş harfleri benzer olanlar
(1006, 'araba', 5),
(1007, 'armut', 5),
(1008, 'masa', 4),
(1009, 'kasa', 4),

-- Büyük-küçük harf denemeleri için
(1010, 'Kalem', 5),
(1011, 'KİTAP', 5),
(1012, 'hOt', 3),
(1013, 'BiLgiSayAr', 10),

-- İçinde belirli bir hece geçenler ('el')
(1014, 'elma', 4),
(1015, 'kelime', 6),
(1016, 'telefon', 7),
(1017, 'selam', 5),

-- Tekrarlayan harfler içerenler (REGEXP '+' veya '*' için)
(1018, 'saat', 4),
(1019, 'maalesef', 8),
(1020, 'boool', 5),
(1021, 'yesss', 5),

-- Sayı içeren kelimeler
(1022, 'SQL101', 6),
(1023, 'Test-4', 6),
(1024, 'B2B', 3),
(1025, '2024', 4),

-- Özel karakter içeren kelimeler
(1026, 'e-posta', 7),
(1027, 'web-site', 8),
(1028, 'kim?', 4),
(1029, 'Ahmet_Bey', 9),

-- Farklı uzunluklarda kelimeler
(1030, 'a', 1),
(1031, 'ev', 2),
(1032, 'top', 3),
(1033, 'okul', 4),
(1034, 'merhaba', 7),

-- REGEXP alternasyon (|) denemeleri için
(1035, 'kedi', 4),
(1036, 'köpek', 5),
(1037, 'kuş', 3),

-- Diğer çeşitli kelimeler
(1038, 'yazılım', 7),
(1039, 'donanım', 7),
(1040, 'internet', 8);

-- Eklenen verileri görmek için
SELECT * FROM kelimeler;

-- ot veya at bulunanarı sorgulayınız 

select
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,
 kelime,harf_sayisi
from kelimeler
where kelime 
like '%ot%' or kelime like '%at%';


select
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,
 kelime,harf_sayisi
from kelimeler
where
 regexp_like (kelime, '(ot'|'at)');
 
 -- =====================================================
 
SELECT * FROM kelimeler
WHERE REGEXP_LIKE(kelime, '(ot|at)');

SELECT 
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,
  kelime
 FROM kelimeler
WHERE REGEXP_LIKE(kelime, 'ot|at');



-- Veya daha açık hali:
SELECT * FROM kelimeler
WHERE REGEXP_LIKE(kelime, '.*(ot|at).*');

--  'c' büyük harf değil küçük harf sorgulama yapılamsını sağlar 
SELECT 
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,
  kelime
 FROM kelimeler
WHERE REGEXP_LIKE(kelime, 'ot|at','c');

select * from kelimeler
where 
regexp_like(kelime,'ha|hi');

SELECT * FROM kelimeler
WHERE REGEXP_LIKE(kelime, '(ot|at)');

select * from kelimeler
where 
regexp_like(kelime,'ha|hi','c');


-- Kelimeler tablosundan h ile baslayip t ile biten 3 harfli kelimeleri
-- (h ile t kucuk harfli olanlari) listeleyiniz.

select * from kelimeler
where kelime 
like 'h_t';


select *
from kelimeler
where 
REGEXP_LIKE (kelime,'^h.t$'); -- . işareti üçüncü karakteri ve felebilecek bütün kelimeleri seçer 


select *
from kelimeler
where 
REGEXP_LIKE (kelime,'^h.t$','c');


SELECT *
FROM kelimeler
WHERE REGEXP_LIKE(kelime, '^h[a-z]t$', 'c');


SELECT *
FROM kelimeler
WHERE REGEXP_LIKE(kelime, '^h[0-9]t$', 'c');



SELECT *
FROM kelimeler
WHERE REGEXP_LIKE(kelime, '^h[^a-zA-Z0-9]t$', 'c'); -- *** ^ []  köşeli parantez içinde kullanıldığında değil anlamına gelir 

select * from kelimeler;

-- *** içinde özel karakterler barındıran kelimler 
SELECT *
FROM kelimeler
WHERE REGEXP_LIKE(kelime, '[^a-zA-Z0-9]');
 -- xxxx sadece özel karakterlerden oluşan kelimleri bulmaklıklık 
 
 SELECT *
FROM kelimeler
WHERE REGEXP_LIKE(kelime, '^[^a-zA-Z0-9]+$');
























































































































