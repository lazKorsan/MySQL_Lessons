


/*
(
CREATE TABLE tablo_adi
sütun1 veri_tipi1
sütün2 veri_tipi2
...
sütunN veri_tipiN
);
*/
USE my_database;


CREAte tabLe kitaplar
(
  kitap_id int,
  kitap_adi VARChar(50),
  yazar_adi VARChar(50),
  yayin_yili int,
  katagori VARChar(50)
);

CREAte tabLe personel_tablosu
(
  id int,
  isim_adi VARChar(50),
  soyadi VARChar(50),
  dogum_tarihi date,
  pozisyon VARChar(50),
  maas double(10,3)
);

CREAte tabLe ogrenciler
(
  id int,
  adi VARChar(50),
  soyadi VARChar(50),
  bolum VARChar(50),
  kayit_yili YEAR,
  ortalama_not double
);

select *from kitaplar;
select *from ogrenciler;
select *from personel_tablosu;
