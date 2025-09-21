use my_database ;

/*================================================
             LİMİT -OFFSET
==================================================*/

     /*
     LİMİT ifadesi,
maksimum satır
Eğer bir sorgu
ve siz sadece
bir sorgu sonucundan döndürülecek
sayısını belirlemenizi sağlar.
sonucu çok sayıda sat ıp döndürüyorsa
bir kısmını görmek istiyorsanız,
LIMIT kullanabilirsiniz.

OFFSET ifadesi, sorgu sonucu setinde biır başlangıç
noktası belirler.
Bu, özellikle sayfalama işlemlerinde faydalıdır.
OFFSET genellikle LİMİT ile birlikte kullanılır.

SELECT * FROM tablo adi
LİMİT 10 OFFSET 29;
- OFFSET :ilk 20 satiri atla  LİMİT : sonraki 10 satiri getir.
- yani satirlari getirir.
*/        

/* ========================================
     syntax yapisi
SELECT * FROM tablo adi
LİMİT 10;
=============================================*/     

select kitaplik ;

select * from kitaplik
limit 10 offset 20 ;

select * from kitaplik 
limit 40 ;

/* Kitaplik tablosundaki en yeni 3 Kitabı listeleyiniz.*/




SELECT * FROM kitaplik
ORDER BY yayin_yili ASC
LIMIT 10;

SELECT * FROM kitaplik
ORDER BY yayin_yili ASC
LIMIT 10 offset 80 ;


SELECT * FROM kitaplik
ORDER BY RAND()
LIMIT 10;

/*
RAND() fonksiyonu özellikle bir tablodan rastgele kayıtlar seçmek için
kullanılır.
ORDER BY RAND() ifadesi, tablonun satırlarını rastgele bir sıraya sokar.
Bu yöntem, özellikle küçük ve orta ölçekli tablolar için uygundur.
Ancak, büyük veri setleri için performans sorunlarına yol açabilir. 
*/

 SELECT * FROM kitaplik
ORDER BY RAND()
LIMIT 10;

/*Kitaplik tablosundaki kitaplarin 3. sayfasını listeleyiniz.
(Her sayfanin boyutu 10 kitap ile sinirlidir.)*/

select * from kitaplik
limit 10 offset 20;

/*
Kitaplik tablosundaki alfabetik siralanmis kitaplarin 4. sayfasını listeleyiniz.
(Her sayfanin boyutu 10 kitap ile sinirlidir.)
*/

select * from kitaplik
order by kitap_adi 
limit 10 offset 40;

/*
Kitaplik tablosundaki 'Fyodor Dostoyevski' nin kitaplarinin 2. sayfasını listeleyin
(Her sayfanin boyutu 2 kitap ile sinirlidir.)
*/

select * from kitaplik
where yazar = 'Fyodor Dostoyevski'
limit 2 offset 2 ;




     
