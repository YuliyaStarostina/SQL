-- 1 Для создания таблицы с мобильными телефонами можно использовать следующий SQL-запрос:

CREATE TABLE mobile_phones (
  id INT PRIMARY KEY,
  brand VARCHAR(30),
  model VARCHAR(30),
  price DECIMAL(10,2),
  quantity INT
);

-- Заполнение БД данными:

INSERT INTO mobile_phones (id, brand, model, price, quantity) VALUES 
(1, 'Samsung', 'Galaxy S21', 999.99, 5),
(2, 'Apple', 'iPhone 12', 1099.99, 3),
(3, 'Xiaomi', 'Redmi Note 10 Pro', 349.99, 10),
(4, 'Samsung', 'Galaxy A52', 499.99, 7),
(5, 'OnePlus', '9 Pro', 969.00, 2);

-- Чтобы вывести название, производителя и цену для товаров, количество которых превышает 2, можно использовать следующий SQL-запрос:

SELECT brand, model, price
FROM mobile_phones
WHERE quantity > 2;

-- Чтобы вывести весь ассортимент товаров марки "Samsung", можно использовать следующий SQL-запрос:

SELECT brand, model, price, quantity
FROM mobile_phones
WHERE brand = 'Samsung';