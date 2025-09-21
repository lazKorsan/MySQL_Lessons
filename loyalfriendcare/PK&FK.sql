USE my_database;

/*
-- Primary Key Tanımı:
1. Bir satırı benzersiz şekilde tanımlayan bir veya birden fazla sütun kombinasyonudur
2. Temel özellikleri:
   - UNIQUE constraint'i otomatik uygulanır
   - NULL değer içeremez (NOT NULL)
   - Bir tabloda yalnızca bir adet Primary Key tanımlanabilir
3. Örnek Kullanım:
   CREATE TABLE Çalışanlar (
       ÇalışanID INT PRIMARY KEY,
       Ad VARCHAR(50) NOT NULL,
       Soyad VARCHAR(50) NOT NULL,
       TCKN CHAR(11) UNIQUE
   );
   
   create table (
   
   plaka int primarykey, -- türkiye plaka kodu 
   alan_kodu varchar(6), -- posta alan kodu 
   sehir_adi varchar(50) not null ; -- türkiyedeki şehirler
   nufus bigint, -- güncel olması gerekmez her bir iş için 55000 den fazla olması yeterli
   
   --15 dk
   
   
   
   
   
   
   
   );

*/