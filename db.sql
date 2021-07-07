-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июл 08 2021 г., 01:41
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sql_bd_task`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Contract`
--
-- Создание: Июл 06 2021 г., 15:47
-- Последнее обновление: Июл 06 2021 г., 15:58
--

DROP TABLE IF EXISTS `Contract`;
CREATE TABLE `Contract` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Contract`
--

INSERT INTO `Contract` (`id`, `customer_id`, `date`, `amount`) VALUES
(1, 1, '0000-00-00', 20000),
(2, 2, '0000-00-00', 10000),
(3, 5, '0000-00-00', 50000),
(4, 7, '0000-00-00', 150000),
(5, 8, '0000-00-00', 200000),
(6, 9, '0000-00-00', 14000),
(7, 5, '0000-00-00', 26000),
(8, 4, '0000-00-00', 60000),
(9, 3, '0000-00-00', 30000),
(10, 1, '0000-00-00', 32000),
(11, 2, '0000-00-00', 30000),
(12, 8, '0000-00-00', 40000),
(13, 7, '0000-00-00', 50000),
(14, 9, '0000-00-00', 60000),
(15, 5, '0000-00-00', 70000),
(16, 4, '0000-00-00', 80000),
(17, 3, '0000-00-00', 90000),
(18, 4, '0000-00-00', 100000),
(19, 2, '0000-00-00', 110000),
(20, 1, '0000-00-00', 120000),
(21, 2, '0000-00-00', 130000),
(22, 7, '0000-00-00', 140000),
(23, 8, '0000-00-00', 150000),
(24, 9, '0000-00-00', 160000),
(25, 3, '0000-00-00', 170000);

-- --------------------------------------------------------

--
-- Структура таблицы `Customer`
--
-- Создание: Июл 06 2021 г., 15:20
-- Последнее обновление: Июл 06 2021 г., 15:25
--

DROP TABLE IF EXISTS `Customer`;
CREATE TABLE `Customer` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Customer`
--

INSERT INTO `Customer` (`id`, `customer_name`, `location`) VALUES
(1, 'Dmitry Bolshakov', 'Innopolis'),
(2, 'Olesya Lavrenteeva', 'Innopolis'),
(3, 'Anton Tarasov', 'Saratov'),
(4, 'Marya Chelnakova', 'Moscow'),
(5, 'Andrew Nilov', 'Kazan'),
(6, 'Dmitry Egorov', 'Moscow'),
(7, 'Ekaterina Fedorova', 'Moscow'),
(8, 'Sergey Nikonov', 'Kazan'),
(9, 'Alexey Lomovoi', 'Vladivostok');

-- --------------------------------------------------------

--
-- Структура таблицы `Department`
--
-- Создание: Июл 06 2021 г., 15:11
-- Последнее обновление: Июл 06 2021 г., 15:17
--

DROP TABLE IF EXISTS `Department`;
CREATE TABLE `Department` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Department`
--

INSERT INTO `Department` (`id`, `Name`) VALUES
(1, 'Manufacturing'),
(2, 'Logistic'),
(3, 'Sales'),
(4, 'Economy'),
(5, 'Production');

-- --------------------------------------------------------

--
-- Структура таблицы `Employees`
--
-- Создание: Июл 06 2021 г., 15:33
-- Последнее обновление: Июл 06 2021 г., 15:37
--

DROP TABLE IF EXISTS `Employees`;
CREATE TABLE `Employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Employees`
--

INSERT INTO `Employees` (`id`, `name`, `department_id`) VALUES
(1, 'Ivan Ivanov', 1),
(2, 'Sidor Sidorov', 1),
(3, 'Egor Egorov', 2),
(4, 'Petr Petrov', 3),
(5, 'Vasily Vasilev', 4),
(6, 'Marina Marinina', 5),
(7, 'Dmitry Dmitriev', 5),
(8, 'Alex Alexeev', 2),
(9, 'Olga Olgova', 1),
(10, 'Olesya Olesyeva', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `Executor`
--
-- Создание: Июл 06 2021 г., 16:04
-- Последнее обновление: Июл 06 2021 г., 16:06
--

DROP TABLE IF EXISTS `Executor`;
CREATE TABLE `Executor` (
  `tab_no` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Executor`
--

INSERT INTO `Executor` (`tab_no`, `contract_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(7, 6),
(2, 7),
(3, 8),
(5, 9),
(6, 10),
(7, 11),
(9, 12),
(10, 13),
(1, 14),
(2, 15),
(5, 16),
(2, 17),
(3, 18),
(7, 19),
(8, 20),
(5, 21),
(4, 22),
(3, 23),
(4, 24),
(5, 25);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Contract`
--
ALTER TABLE `Contract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Индексы таблицы `Executor`
--
ALTER TABLE `Executor`
  ADD PRIMARY KEY (`tab_no`,`contract_id`),
  ADD KEY `contract_id` (`contract_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Contract`
--
ALTER TABLE `Contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `Customer`
--
ALTER TABLE `Customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `Department`
--
ALTER TABLE `Department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Employees`
--
ALTER TABLE `Employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Contract`
--
ALTER TABLE `Contract`
  ADD CONSTRAINT `Contract_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`id`);

--
-- Ограничения внешнего ключа таблицы `Employees`
--
ALTER TABLE `Employees`
  ADD CONSTRAINT `Employees_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `Department` (`id`);

--
-- Ограничения внешнего ключа таблицы `Executor`
--
ALTER TABLE `Executor`
  ADD CONSTRAINT `Executor_ibfk_1` FOREIGN KEY (`tab_no`) REFERENCES `Employees` (`id`),
  ADD CONSTRAINT `Executor_ibfk_2` FOREIGN KEY (`contract_id`) REFERENCES `Contract` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
