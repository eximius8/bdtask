--Задача 2
--Найти среднюю стоимость контрактов, заключенных сотрудников Ivan Ivanov. Вывести: среднее значение amount

SELECT
	AVG(c.amount)   	
FROM
	Contract c
   	INNER JOIN Executor e on c.id=e.contract_id
WHERE
	e.tab_no=(SELECT id FROM Employees WHERE name='Ivan Ivanov')

