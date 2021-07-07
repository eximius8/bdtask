--Задача 4
--Найти контракты одинаковой стоимости. Вывести count, amount


SELECT 
	amount,
	COUNT(amount) AS countt
FROM Contract 
	GROUP BY amount 
    HAVING COUNT(amount)>1
    ORDER BY countt DESC

