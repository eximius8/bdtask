--Задача 5
--Найти заказчика с наименьшей средней стоимостью контрактов. Вывести customer_name, среднее значение amount

SELECT 
	c.customer_name, 
    AVG(amount)
FROM Contract cont
	INNER JOIN Customer c ON cont.customer_id = c.id
	GROUP BY c.customer_name
	ORDER BY AVG(amount) ASC LIMIT 1


