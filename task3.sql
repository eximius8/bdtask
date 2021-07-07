--Задача 3
--Найти самую часто встречающуюся локации среди всех заказчиков. Вывести: location, count.

SELECT
	location,
    	COUNT(location) AS v_o
FROM Customer
    GROUP BY location
    ORDER BY v_o DESC
    LIMIT    1;

