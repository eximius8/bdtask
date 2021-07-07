--Задача 1
--Найти информацию о всех контрактах, связанных с сотрудниками департамента «Logistic». Вывести: contract_id, employee_name

SELECT
	e.name,
   	c.contract_id
FROM
	Employees e
    	INNER join Executor c on e.id=c.tab_no
WHERE
	e.department_id=(SELECT id FROM Department WHERE Name='Logistic')


