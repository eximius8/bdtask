--Задание 6
--Найти отдел, заключивший контрактов на наибольшую сумму. Вывести: department_name, sum

SELECT 
	d.name,
       	SUM(amount)
FROM Executor e
	INNER JOIN Contract c ON c.customer_id = e.contract_id
	INNER JOIN Employees em ON e.tab_no = em.id
	INNER JOIN Department d ON em.department_id = d.id
	GROUP BY d.name
	ORDER BY SUM(amount) DESC LIMIT 1
