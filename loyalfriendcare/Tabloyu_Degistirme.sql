USE MY_DATABASE;

select * from kitaplar ;

ALTER TABLE kitaplar

Add sayfa_sayisi int;


ALTER TABLE OGRENCİLER

RENAME COLUMN ORTALAMA_NOT TO AVERAGE;

SELECT *FROM personel_tablosu;

ALTER TABLE personel_tablosu

RENAME COLUMN pozisyon to sorumluluk ;

-- ================================================ --

ALTER TABLE personel_tablosu
DROP COLUMN sorumluluk;

ALTER TABLE personel_tablosu
DROP COLUMN maas;

ALTER TABLE personel_tablosu
Add column sorumluluk varchar(30);

ALTER TABLE personel_tablosu
Add column mass int;






 
