--SORU1 film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
SELECT rating, COUNT(title) FROM film
GROUP BY rating;
--SORU2 film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan 
--replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
SELECT replacement_cost, COUNT(title) FROM film
GROUP BY replacement_cost 
HAVING COUNT(title) > 50
ORDER BY COUNT(title) ASC;
--SORU3 customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?
SELECT store_id, COUNT(customer_id) FROM customer
GROUP BY store_id;
--SORU4 city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı
--barındıran country_id bilgisini ve şehir sayısını paylaşınız.
SELECT country_id, COUNT(city_id) FROM CITY
GROUP BY country_id
ORDER BY COUNT(city_id) DESC
LIMIT 1;
