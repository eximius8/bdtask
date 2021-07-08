-- Создание таблицы департаментов
CREATE TABLE Department (
    id int NOT NULL AUTO_INCREMENT,
    Name varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Добавление тестовых данных в таблицу департаментов
INSERT INTO Department (name) VALUES
    ('Manufacturing'),('Logistic'),('Sales'),
    ('Economy'),('Production');


-- Создание таблицы клиентов
CREATE TABLE Customer (
    id int NOT NULL AUTO_INCREMENT,
    customer_name varchar(255) NOT NULL,
    location varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Добавление тестовых данных в таблицу клиентов
INSERT INTO Customer (customer_name, location) VALUES
    ('Dmitry Bolshakov', 'Innopolis'),('Olesya Lavrenteeva', 'Innopolis'),('Anton Tarasov', 'Saratov'), ('Marya Chelnakova', 'Moscow'),('Andrew Nilov', 'Kazan'), ('Dmitry Egorov', 'Moscow'),('Ekaterina Fedorova', 'Moscow'), ('Sergey Nikonov', 'Kazan'), ('Alexey Lomovoi', 'Vladivostok');

-- Создание таблицы работников
CREATE TABLE Employees (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    department_id int,
    PRIMARY KEY (id),
    FOREIGN KEY (department_id) REFERENCES Department(id)
);

-- Добавление тестовых данных в таблицу работников
INSERT INTO Employees (department_id, name) VALUES 
(1, 'Ivan Ivanov'), (1, 'Sidor Sidorov'),(2,'Egor Egorov'),(3,'Petr Petrov'),(4,	'Vasily Vasilev'),(5,'Marina Marinina'),(5,'Dmitry Dmitriev'),(2,'Alex Alexeev'),(1,'Olga Olgova'),(3,'Olesya Olesyeva');


-- Создание таблицы контрактов
CREATE TABLE Contract (
    id int NOT NULL AUTO_INCREMENT,
    customer_id int,
    date DATE NOT NULL,
    amount int unsigned NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES Customer(id)
);

-- Добавление тестовых данных в таблицу контрактов
INSERT INTO Contract(customer_id,date,amount) VALUES (1,'5/10/2012',20000);
INSERT INTO Contract(customer_id,date,amount) VALUES (2,'5/11/2013',10000);
INSERT INTO Contract(customer_id,date,amount) VALUES (5,'5/12/2014',50000);
INSERT INTO Contract(customer_id,date,amount) VALUES (7,'5/13/2015',150000);
INSERT INTO Contract(customer_id,date,amount) VALUES (8,'5/13/2016',200000);
INSERT INTO Contract(customer_id,date,amount) VALUES (9,'5/14/2017',14000);
INSERT INTO Contract(customer_id,date,amount) VALUES (5,'5/15/2018',26000);
INSERT INTO Contract(customer_id,date,amount) VALUES (4,'1/8/2012',60000);
INSERT INTO Contract(customer_id,date,amount) VALUES (3,'2/9/2013',30000);
INSERT INTO Contract(customer_id,date,amount) VALUES (1,'3/14/2014',32000);
INSERT INTO Contract(customer_id,date,amount) VALUES (2,'4/16/2015',30000);
INSERT INTO Contract(customer_id,date,amount) VALUES (8,'5/18/2016',40000);
INSERT INTO Contract(customer_id,date,amount) VALUES (7,'6/20/2017',50000);
INSERT INTO Contract(customer_id,date,amount) VALUES (9,'7/23/2018',60000);
INSERT INTO Contract(customer_id,date,amount) VALUES (5,'8/25/2019',70000);
INSERT INTO Contract(customer_id,date,amount) VALUES (4,'1/1/2010',80000);
INSERT INTO Contract(customer_id,date,amount) VALUES (3,'2/2/2011',90000);
INSERT INTO Contract(customer_id,date,amount) VALUES (4,'3/5/2012',100000);
INSERT INTO Contract(customer_id,date,amount) VALUES (2,'4/6/2013',110000);
INSERT INTO Contract(customer_id,date,amount) VALUES (1,'5/8/2014',120000);
INSERT INTO Contract(customer_id,date,amount) VALUES (2,'6/9/2015',130000);
INSERT INTO Contract(customer_id,date,amount) VALUES (7,'7/10/2016',140000);
INSERT INTO Contract(customer_id,date,amount) VALUES (8,'8/11/2017',150000);
INSERT INTO Contract(customer_id,date,amount) VALUES (9,'9/12/2018',160000);
INSERT INTO Contract(customer_id,date,amount) VALUES (3,'10/14/2019',170000);

-- Создание таблицы исполнителей
CREATE TABLE Executor (
    tab_no int,
    contract_id int,
    PRIMARY KEY (tab_no, contract_id),
    FOREIGN KEY (tab_no) REFERENCES Employees(id),
    FOREIGN KEY (contract_id) REFERENCES Contract(id)
);

-- Добавление тестовых данных в таблицу исполнителей
INSERT INTO Executor(tab_no,contract_id) VALUES (1,1);
INSERT INTO Executor(tab_no,contract_id) VALUES (2,2);
INSERT INTO Executor(tab_no,contract_id) VALUES (3,3);
INSERT INTO Executor(tab_no,contract_id) VALUES (4,4);
INSERT INTO Executor(tab_no,contract_id) VALUES (5,5);
INSERT INTO Executor(tab_no,contract_id) VALUES (7,6);
INSERT INTO Executor(tab_no,contract_id) VALUES (2,7);
INSERT INTO Executor(tab_no,contract_id) VALUES (3,8);
INSERT INTO Executor(tab_no,contract_id) VALUES (5,9);
INSERT INTO Executor(tab_no,contract_id) VALUES (6,10);
INSERT INTO Executor(tab_no,contract_id) VALUES (7,11);
INSERT INTO Executor(tab_no,contract_id) VALUES (9,12);
INSERT INTO Executor(tab_no,contract_id) VALUES (10,13);
INSERT INTO Executor(tab_no,contract_id) VALUES (1,14);
INSERT INTO Executor(tab_no,contract_id) VALUES (2,15);
INSERT INTO Executor(tab_no,contract_id) VALUES (5,16);
INSERT INTO Executor(tab_no,contract_id) VALUES (2,17);
INSERT INTO Executor(tab_no,contract_id) VALUES (3,18);
INSERT INTO Executor(tab_no,contract_id) VALUES (7,19);
INSERT INTO Executor(tab_no,contract_id) VALUES (8,20);
INSERT INTO Executor(tab_no,contract_id) VALUES (5,21);
INSERT INTO Executor(tab_no,contract_id) VALUES (4,22);
INSERT INTO Executor(tab_no,contract_id) VALUES (3,23);
INSERT INTO Executor(tab_no,contract_id) VALUES (4,24);
INSERT INTO Executor(tab_no,contract_id) VALUES (5,25);

--В результате выполненных команд база данных содержит 5 таблиц
--Со всеми данными
