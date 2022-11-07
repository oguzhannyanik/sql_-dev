--SORU1 film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT COUNT(*) AS Longer_Films  FROM film
WHERE length >(SELECT AVG(length) FROM film) ;
--SORU2 film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(*) AS Heighest_Ren_Rate_Number FROM film 
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film) ;
--SORU3 film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT COUNT(*) AS Heighest_Ren_Rate_Number FROM film 
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film) ;
--SORU4 payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT first_name , last_name , SUM(amount) AS Maximum_Shopping FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY payment.customer_id , customer.first_name ,customer.last_name
ORDER BY SUM(amount) DESC
LIMIT 10 ;
