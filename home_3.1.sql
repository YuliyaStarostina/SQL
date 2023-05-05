-- Задание №1
SELECT city, sname, sname, comm
FROM salespeople;

-- Задание №2
SELECT DISTINCT(cname) AS name, rating 
FROM customers; 

-- Задание №3
SELECT DISTINCT(cname) AS name 
FROM customers;

-- Задание №4
SELECT cname
FROM customers
WHERE cname LIKE 'G%';

-- Задание №5
SELECT *
FROM orders
WHERE amt > 1000;

-- Задание №6
SELECT MIN(amt)
FROM orders;

-- Задание №7
SELECT *
FROM customers
WHERE (rating > 100) AND (city != "Rome");