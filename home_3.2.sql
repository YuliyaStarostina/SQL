-- Задание №1 сортировка по возрастанию
SELECT * FROM workers
ORDER BY salary;

-- Задание №1 сортировка по убыванию
SELECT * FROM workers
ORDER BY salary DESC;

-- Задание №2
SELECT * FROM workers
ORDER BY salary
LIMIT 5;

-- Задание №3
SELECT specialty, COUNT(*) AS specialty FROM workers
WHERE salary > 100000
GROUP BY workers;