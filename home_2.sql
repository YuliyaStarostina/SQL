-- Для создания таблички "sales" в SQL необходимо выполнить следующий запрос:
CREATE TABLE sales (
  sale_id INTEGER PRIMARY KEY,
  product_name VARCHAR(50),
  sale_date DATE,
  sale_amount NUMERIC(10,2)
);

INSERT INTO sales(sale_id, product_name, sale_date, sale_amount)
VALUES
(1, 'Product A', '2020-01-01', 1000.00),
(2, 'Product B', '2020-01-02', 500.00),
(3, 'Product A', '2020-01-03', 250.00),
(4, 'Product C', '2020-01-04', 800.00),
(5, 'Product B', '2020-01-05', 600.00);

-- Для сегментации количества продаж можно использовать функцию CASE и агрегатную функцию SUM:

SELECT 
  CASE 
    WHEN sale_amount < 100 THEN 'less than 100'
    WHEN sale_amount >= 100 AND sale_amount <= 300 THEN 'between 100 and 300'
    ELSE 'more than 300'
  END AS sale_segment,
  SUM(sale_amount) AS total_sales
FROM sales
GROUP BY sale_segment;

-- Для создания таблицы "orders" и использования оператора CASE необходимо выполнить следующий запрос:

CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,
  order_date DATE,
  customer_name VARCHAR(50),
  order_amount NUMERIC(10,2),
  is_paid BOOLEAN
);

INSERT INTO orders(order_id, order_date, customer_name, order_amount, is_paid)
VALUES
(1, '2021-01-01', 'Customer A', 200.00, TRUE),
(2, '2021-01-02', 'Customer B', 450.00, FALSE),
(3, '2021-01-03', 'Customer C', 1000.00, TRUE),
(4, '2021-01-04', 'Customer B', 600.00, TRUE),
(5, '2021-01-05', 'Customer A', 150.00, FALSE);

SELECT 
  order_id,
  order_date,
  customer_name,
  order_amount,
  CASE 
    WHEN is_paid = TRUE THEN 'Paid'
    ELSE 'Not Paid'
  END AS order_status
FROM orders;

-- NULL и 0 - это разные значения в SQL. NULL означает "неизвестное" или "нет значения", тогда как 0 - это конкретное число. В базах данных NULL используется для обозначения отсутствующих или неизвестных значений. 0 - это число, которое может использоваться для представления точного значения.