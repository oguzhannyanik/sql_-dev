--SORU1 actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
SELECT first_name FROM actor UNION
SELECT first_name FROM customer;
--SORU2 actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
SELECT first_name FROM actor INTERSECT SELECT
first_name FROM customer;
--SORU3 actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
SELECT first_name FROM actor except
SELECT first_name FROM customer;
--SORU4 İlk 3 sorguyu tekrar eden veriler için de yapalım
SELECT first_name FROM actor UNION ALL SELECT first_name FROM customer;
SELECT first_name FROM actor INTERSECT all SELECT first_name FROM customer;
SELECT first_name FROM actor EXCEPT all SELECT first_name FROM customer;
