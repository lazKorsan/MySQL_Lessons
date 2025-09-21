USE my_database;

/*-- ==================================================== --
            TABLODAN SORGULAMA YAPMAKLIKLIK
-- ===================================================== --*/


-- 1,2,3, satırlar dolu . hata nerede

select * from kitaplar;

INSERT INTO kitaplar
    VALUES  
                (4,	'1984',	'George Orwell',	1949,	'Politik'),
                (5,	'Büyük Umutlar',	'Charles Dickens',	1861,	'Dram'),
                (6,	'Don Kişot',	'Miguel de Cervantes',	1605,	'Macera'),
                (7,	'Gurur ve Önyargı',	'Jane Austen',	1813,	'Dram'),
                (8,	'Monte Kristo Kontu',	'Alexandre Dumas',	1844,	'Macera'),
                (9,	'Faust',	'Johann Wolfgang von Goethe',	1808,	'Felsefi'),
                (10,'Ulysses',	'James Joyce',	1922,	'Modernist');
                
                ALTER TABLE kitaplar
                drop column sayfa_sayisi;
                
                select * from kitaplar;
                
 ALTER TABLE kitaplar 
 ADD COLUMN sayfa_sayisi int ;
 
 /* ===========================================================
 
        SELECT İLE TABLODAN VERİ ÇAĞIRMAKLIKLIK
 
============================================================= */

USE my_database;
 
 CREATE TABLE kisiler( 
 id int ,
 isim varchar(50),
 soyisim varchar(50),
 yas int,
 sehir varchar(50)
 );
 
 INSERT INTO kisiler (id, isim, soyisim, yas, sehir) 
VALUES
(1, 'Ahmet', 'Yılmaz', 28, 'İstanbul'),
(2, 'Mehmet', 'Kaya', 35, 'Ankara'),
(3, 'Ayşe', 'Demir', 22, 'İzmir'),
(4, 'Fatma', 'Çelik', 41, 'Bursa'),
(5, 'Mustafa', 'Şahin', 30, 'Antalya'),
(6, 'Emine', 'Yıldız', 27, 'Adana'),
(7, 'Hasan', 'Arslan', 45, 'Konya'),
(8, 'Zeynep', 'Koç', 19, 'Trabzon'),
(9, 'Ali', 'Kurt', 33, 'Gaziantep'),
(10, 'Elif', 'Öztürk', 25, 'Eskişehir');

SELECT isim,soyisim
from kisiler;

SELECT isim,soyisim,sehir
from kisiler;

SELECT * FROM kisiler ;

SELECT * FROM kisiler WHERE sehir='Ankara';

INSERT INTO kisiler (id, isim, soyisim, yas, sehir) 
VALUES
(11, 'Murat', 'Polat', 31, 'Samsun'),
(12, 'Seda', 'Erkan', 24, 'Diyarbakır'),
(13, 'Cem', 'Aksoy', 38, 'Van'),
(14, 'Gizem', 'Turan', 29, 'Erzurum'),
(15, 'Burak', 'Yavuz', 42, 'Malatya'),
(16, 'Deniz', 'Kara', 26, 'Kahramanmaraş'),
(17, 'Ebru', 'Çetin', 33, 'Şanlıurfa'),
(18, 'Kaan', 'Özdemir', 22, 'Mardin'),
(19, 'Aslı', 'Koçak', 45, 'Muğla'),
(20, 'Volkan', 'Şen', 28, 'Aydın'),
-- ... (80 satır daha) ...
(95, 'İrem', 'Güneş', 30, 'Kırklareli'),
(96, 'Tolga', 'Bulut', 36, 'Bilecik'),
(97, 'Pınar', 'Yıldırım', 27, 'Karabük'),
(98, 'Umut', 'Kılıç', 40, 'Kilis'),
(99, 'Nazlı', 'Özer', 23, 'Osmaniye'),
(100, 'Serkan', 'Demirci', 34, 'Düzce'),
(101, 'Leyla', 'Arıkan', 31, 'Bartın'),
(102, 'Hakan', 'Tunç', 29, 'Iğdır'),
(103, 'Selin', 'Öztürk', 37, 'Yalova'),
(104, 'Onur', 'Kurtuluş', 41, 'Kırıkkale'),
(105, 'Ece', 'Çelik', 26, 'Kırşehir'),
(106, 'Berk', 'Yılmaz', 32, 'Nevşehir'),
(107, 'Zehra', 'Şahin', 28, 'Hakkari'),
(108, 'Mert', 'Koç', 35, 'Siirt'),
(109, 'İpek', 'Arslan', 24, 'Bayburt'),
(110, 'Can', 'Demir', 39, 'Şırnak');

SELECT * FROM kisiler;

-- kisiler adında yeni bir tablo oluşturur.
CREATE TABLE kisiler (
    id INT ,
    isim VARCHAR(50),
    soyisim VARCHAR(50),
    yas INT,
    sehir VARCHAR(50)
);

-- Tabloya 100 adet örnek veri ekler.
-- Not: Sorgu pratikleri için verilerde tekrarlar ve tekil bir kayıt (id=1, sehir='Bayburt') bulunmaktadır.
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (1, 'Cem', 'Tekin', 33, 'Bayburt');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (2, 'Ahmet', 'Yılmaz', 28, 'Ankara');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (3, 'Ayşe', 'Kaya', 34, 'İstanbul');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (4, 'Mehmet', 'Demir', 45, 'İzmir');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (5, 'Fatma', 'Çelik', 22, 'Bursa');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (6, 'Ali', 'Şahin', 50, 'Antalya');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (7, 'Elif', 'Öztürk', 31, 'Ankara');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (8, 'Can', 'Aydın', 29, 'İstanbul');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (9, 'Deniz', 'Özdemir', 38, 'İzmir');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (10, 'Selin', 'Arslan', 25, 'Konya');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (11, 'Emre', 'Doğan', 41, 'Adana');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (12, 'Zeynep', 'Yıldız', 27, 'Gaziantep');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (13, 'Oğuz', 'Koç', 36, 'Mersin');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (14, 'Burcu', 'Çınar', 24, 'Kayseri');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (15, 'Kaya', 'Kaplan', 55, 'Samsun');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (16, 'Seda', 'Güneş', 30, 'Trabzon');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (17, 'Murat', 'Kurt', 48, 'Diyarbakır');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (18, 'Veli', 'Aslan', 33, 'Eskişehir');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (19, 'Hatice', 'Sarı', 29, 'Ankara');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (20, 'Merve', 'Balcı', 26, 'İstanbul');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (21, 'Burak', 'Ertuğrul', 39, 'İzmir');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (22, 'Ahmet', 'Kaya', 42, 'Bursa');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (23, 'Ayşe', 'Yılmaz', 28, 'Antalya');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (24, 'Mehmet', 'Şahin', 37, 'Ankara');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (25, 'Fatma', 'Demir', 41, 'İstanbul');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (26, 'Ali', 'Öztürk', 23, 'İzmir');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (27, 'Elif', 'Çelik', 35, 'Konya');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (28, 'Can', 'Özdemir', 44, 'Adana');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (29, 'Deniz', 'Aydın', 32, 'Gaziantep');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (30, 'Selin', 'Doğan', 27, 'Mersin');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (31, 'Emre', 'Arslan', 49, 'Kayseri');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (32, 'Zeynep', 'Koç', 30, 'Samsun');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (33, 'Oğuz', 'Yıldız', 28, 'Trabzon');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (34, 'Burcu', 'Kaplan', 46, 'Diyarbakır');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (35, 'Kaya', 'Çınar', 31, 'Eskişehir');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (36, 'Seda', 'Kurt', 25, 'Ankara');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (37, 'Murat', 'Güneş', 52, 'İstanbul');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (38, 'Veli', 'Sarı', 36, 'İzmir');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (39, 'Hatice', 'Aslan', 29, 'Bursa');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (40, 'Merve', 'Ertuğrul', 33, 'Antalya');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (41, 'Burak', 'Balcı', 40, 'Ankara');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (42, 'Ahmet', 'Demir', 29, 'İstanbul');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (43, 'Ayşe', 'Şahin', 48, 'İzmir');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (44, 'Mehmet', 'Yılmaz', 34, 'Konya');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (45, 'Fatma', 'Öztürk', 26, 'Adana');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (46, 'Ali', 'Kaya', 51, 'Gaziantep');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (47, 'Elif', 'Aydın', 30, 'Mersin');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (48, 'Can', 'Çelik', 28, 'Kayseri');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (49, 'Deniz', 'Doğan', 43, 'Samsun');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (50, 'Selin', 'Özdemir', 35, 'Trabzon');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (51, 'Emre', 'Yıldız', 22, 'Diyarbakır');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (52, 'Zeynep', 'Arslan', 39, 'Eskişehir');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (53, 'Oğuz', 'Çınar', 47, 'Ankara');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (54, 'Burcu', 'Koç', 28, 'İstanbul');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (55, 'Kaya', 'Kurt', 36, 'İzmir');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (56, 'Seda', 'Kaplan', 31, 'Bursa');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (57, 'Murat', 'Sarı', 45, 'Antalya');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (58, 'Veli', 'Güneş', 27, 'Ankara');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (59, 'Hatice', 'Ertuğrul', 53, 'İstanbul');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (60, 'Merve', 'Aslan', 30, 'İzmir');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (61, 'Burak', 'Balcı', 38, 'Konya');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (62, 'Ahmet', 'Şahin', 42, 'Adana');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (63, 'Ayşe', 'Demir', 25, 'Gaziantep');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (64, 'Mehmet', 'Öztürk', 39, 'Mersin');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (65, 'Fatma', 'Yılmaz', 31, 'Kayseri');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (66, 'Ali', 'Aydın', 47, 'Samsun');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (67, 'Elif', 'Kaya', 29, 'Trabzon');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (68, 'Can', 'Doğan', 34, 'Diyarbakır');
INSERT INTO kisiler (id, isim, soyis_im, yas, sehir) VALUES (69, 'Deniz', 'Çelik', 40, 'Eskişehir');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (70, 'Selin', 'Yıldız', 28, 'Ankara');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (71, 'Emre', 'Özdemir', 50, 'İstanbul');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (72, 'Zeynep', 'Çınar', 32, 'İzmir');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (73, 'Oğuz', 'Arslan', 26, 'Bursa');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (74, 'Burcu', 'Kurt', 44, 'Antalya');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (75, 'Kaya', 'Koç', 37, 'Ankara');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (76, 'Seda', 'Sarı', 29, 'İstanbul');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (77, 'Murat', 'Kaplan', 49, 'İzmir');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (78, 'Veli', 'Ertuğrul', 31, 'Konya');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (79, 'Hatice', 'Güneş', 27, 'Adana');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (80, 'Merve', 'Aslan', 46, 'Gaziantep');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (81, 'Burak', 'Balcı', 33, 'Mersin');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (82, 'Ahmet', 'Öztürk', 28, 'Kayseri');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (83, 'Ayşe', 'Şahin', 41, 'Samsun');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (84, 'Mehmet', 'Aydın', 35, 'Trabzon');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (85, 'Fatma', 'Demir', 24, 'Diyarbakır');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (86, 'Ali', 'Yılmaz', 54, 'Eskişehir');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (87, 'Elif', 'Doğan', 30, 'Ankara');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (88, 'Can', 'Kaya', 29, 'İstanbul');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (89, 'Deniz', 'Yıldız', 45, 'İzmir');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (90, 'Selin', 'Çelik', 32, 'Bursa');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (91, 'Emre', 'Çınar', 27, 'Antalya');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (92, 'Zeynep', 'Özdemir', 38, 'Ankara');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (93, 'Oğuz', 'Kurt', 43, 'İstanbul');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (94, 'Burcu', 'Arslan', 26, 'İzmir');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (95, 'Kaya', 'Sarı', 51, 'Konya');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (96, 'Seda', 'Koç', 34, 'Adana');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (97, 'Murat', 'Ertuğrul', 30, 'Gaziantep');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (98, 'Veli', 'Kaplan', 48, 'Mersin');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (99, 'Hatice', 'Balcı', 29, 'Kayseri');
INSERT INTO kisiler (id, isim, soyisim, yas, sehir) VALUES (100, 'Merve', 'Güneş', 36, 'Samsun');


SELECT * FROM kisiler
WHERE sehir='Konya';

SELECT * FROM kisiler
WHERE sehir='Antalya';

SELECT * FROM kisiler
WHERE yas<=34;


SELECT * FROM kisiler
WHERE yas>=34;

SELECT * FROM kisiler
WHERE yas<34;

SELECT * FROM kisiler
WHERE yas>34;

SELECT * FROM kisiler
WHERE yas=22;

SELECT * FROM kisiler
WHERE sehir='Ankara';


SeLECT * FROM kisiler
WHERE sehir ='Ankara';

SELECT * FROM kisiler
WHERE isim ='ahmet';

SELECT isim,soyisim,yas
FROM kisiler 
WHERE sehir = 'Ankara';








 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 