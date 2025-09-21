use my_database;

SELECT * FROM kisiler;

SELECT * FROM kisiler
where yas=22;

select * FROM kisiler 
WHERE YAS=35;

SELECT isim,soyisim
From kisiler
where YAS=35;

SELECT sehir
from kisiler
where yas=35;

select * from kisiler
where yas>30;

select isim,soyisim
from kisiler
where sehir='Konya';

select * from kisiler
where isim>'ez';

select * from kisiler
where isim<'ez';


select isim,soyisim
from kisiler ;

Select sehir
from kisiler
where isim>'e';

select isim,soyisim
from kisiler
where sehir>'k';

select isim,soyisim
from kisiler
where sehir<'k';

select isim,sehir
from kisiler
where sehir>'k';

select isim,soyisim,yas
from kisiler
where yas<=35;


-- // sehri antalya olmayanlar 
select isim,sehir
from kisiler
where sehir != 'antalya';


-- // sehri antalya olmayanlar 
select isim,sehir
from kisiler
where sehir <>'antalya' ;

select isim,yas
from kisiler
where   yas between 22 and 35;

select isim,yas
from kisiler
where   yas not between  28 and 35 ;

select isim,yas,sehir
from kisiler
where   sehir !='trabzon';

select * from kisiler
where soyisim <>'seniz';


SELECT *,
       (SELECT COUNT(*) 
        FROM kisiler 
        WHERE soyisim <> 'seniz') AS toplam_kisi_sayisi
FROM kisiler
WHERE soyisim <> 'seniz';

select * ,(SELECT COUNT(*) 
        FROM kisiler 
        WHERE soyisim ) AS toplam_kisi_sayisi

from kisiler
Where soyisim and isim;

SELECT 
  ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  isim, 
  yas
FROM kisiler
WHERE yas > 25;


SET @sira = 0;
SELECT 
  @sira := @sira + 1 AS sira_no,
  isim,
  yas
FROM kisiler
ORDER BY yas DESC;


Select isim,sehir
from kisiler
where yas<=22 or yas>=28;


-- ==============================================
-- =========================arama sonucu sayisini verir

SELECT isim, sehir,
  
  COUNT(*) OVER() AS toplam_kayit_sayisi
  
FROM kisiler
WHERE yas <= 22 OR yas >= 28;

-- =====================================================

-- ====================================================
-- satır numarası atar 

SELECT 
  ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  isim,
  sehir
FROM kisiler
WHERE yas <= 22 OR yas >= 28;
-- ==================================

-- ========================================

SELECT 
  ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
   COUNT(*) OVER() AS toplam_kayit_sayisi,
  isim,
  sehir
FROM kisiler
WHERE yas <= 22 OR yas >= 28;

 -- =================vvvvvvvvv=======================
select 
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
   COUNT(*) OVER() AS toplam_kayit_sayisi,

isim,soyisim

from kisiler
where 
yas>=29
                    and
sehir='ankara';

-- ================^^^^^^^^^^^^^^=========================

 -- =================vvvvvvvvv=======================
SELECT 
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
   COUNT(*) OVER() AS toplam_kayit_sayisi,

isim, yas
FROM kisiler
WHERE yas > 18
ORDER BY yas;

-- ======================^^^^^^^^^^^^^^^^^^^^=================


 -- =================vvvvvvvvv=======================
-- 29 dan byuyuk ankaralı 

select 
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
   COUNT(*) OVER() AS toplam_kayit_sayisi,
isim,sehir
from kisiler
where yas>=29 and sehir='ankara';

-- =============^^^^^^^^^^^=================

select
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
   COUNT(*) OVER() AS toplam_kayit_sayisi,
 isim,yas
from kisiler
where   yas <29 or yas>35;


select 
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
   COUNT(*) OVER() AS toplam_kayit_sayisi,
isim,soyisim
from kisiler
where isim = 'fatma' or soyisim='kurt';

select 
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
   COUNT(*) OVER() AS toplam_kayit_sayisi,
   isim,soyisim

 from kisiler;


select
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
   COUNT(*) OVER() AS toplam_kayit_sayisi,

 isim,soyisim,yas
from kisiler
where yas between 22 and 35;

SELECT 
  ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,
  isim,
  yas,
  sehir
FROM kisiler
WHERE yas BETWEEN 25 AND 35;

select 
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,
  isim,soyisim,sehir
 from kisiler
where yas between 25 and 35 and sehir='ankara';


select 
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,
  isim,soyisim,sehir
 from kisiler
where yas between 22 and 85 or sehir='antalya' or 'ankara';
 
SELECT 
ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,
  isim,yas,sehir
FROM kisiler
WHERE sehir = 'ankara' 
  AND yas BETWEEN 22 AND 35;
  
SELECT 
  ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,
  isim, yas, sehir  
FROM kisiler
WHERE sehir = 'ankara' 
  AND (yas = 22 OR yas = 35); -- Parantezler kritik!
  
  select 
   ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,
  
  isim,sehir
  from kisiler
  where sehir='antalya' or sehir='konya' or sehir= 'trabzon';
  
  -- =======================================
  -- in operatörü 
  
  select 
    ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,  
  isim,soyisim,sehir
   from kisiler
  where  sehir in ('antalya',' ankara', 'konya');
  
  
  -- =================vvvvvvvvv=======================
  -- ========= in ile sorgu 
  select
  ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,  
  isim,soyisim, sehir
  from kisiler
  where soyisim in('kaya', 'demir', 'celik');
  
  -- ============ or ile sorgu 
  select
  ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,  
  isim,soyisim, sehir
  from kisiler
  where soyisim = 'kaya' or soyisim ='celik' or soyisim = 'demir';
  
  -- =========^^^^^^^^^^^^^^^=========================
  
  -- ===============================================
   -- =================vvvvvvvvv=======================
  -- =========== or ile cozum
  select 
  ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,  
  isim,soyisim,yas
  from kisiler
  where soyisim !='KAYA' and soyisim!='celik' and soyisim !='demir';
  -- ========== not in ile çözüm 
  select
  ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,  
  isim,soyisim,yas
  from kisiler
  where soyisim not in('demir','kaya','celik');
  
  -- =========^^^^^^^^^^^^^^^=========================
  
 -- ===============================================
  -- =================vvvvvvvvv=======================
  -- not operatörü ile sorgu
  select  
  ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,  
  isim,sehir
  from kisiler
  where not sehir='ISTanbul';
  
  -- ====== != operatörü ile sorgu 
    select  
  ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,  
  isim,sehir
  from kisiler
  where  sehir !='ISTanbul';
  
  
  -- ========  <> operatörü ile sorgu 
    select  
  ROW_NUMBER() OVER (ORDER BY id) AS sira_no,
  COUNT(*) OVER() AS toplam_kayit_sayisi,  
  isim,sehir
  from kisiler
  where  sehir <>'ISTanbul';
  
 -- =========^^^^^^^^^^^^^^^=========================
  
  -- ===============================================
  
  select * from kisiler
  where yas<=30;
  
   select * from kisiler
  where not yas>=30;
  
  
  
  
















