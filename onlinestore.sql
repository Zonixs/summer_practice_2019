-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 26 2018 г., 18:42
-- Версия сервера: 10.1.33-MariaDB
-- Версия PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `onlinestore`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `price` float NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Информация о товаре';

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`, `date`, `type`, `color`) VALUES
(1, 'q', 124, 'asdf', 'kartinkijane.ru-45174.jpg', '2018-06-25 16:15:21', 'CHAIR', 'BLUE'),
(3, 'X7MTA', 657, 'tN9HV9jwJM', 'kartinkijane.ru-45174.jpg', '2018-06-25 16:15:21', 'TABLE', 'ORANGE'),
(4, 'f17JFv4mC', 539, 'dck0g0', 'kartinkijane.ru-45174.jpg', '2018-06-25 16:15:21', 'STOOL', 'ORANGE');

-- --------------------------------------------------------

--
-- Структура таблицы `product_bascet`
--

CREATE TABLE `product_bascet` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_bascet`
--

INSERT INTO `product_bascet` (`id`, `user_id`, `product_id`) VALUES
(1, 0, 4),
(2, 1, 4),
(3, 2, 0),
(4, 1, 1),
(5, 3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `purchase_history`
--

CREATE TABLE `purchase_history` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `region` text NOT NULL,
  `city` text NOT NULL,
  `address` text NOT NULL,
  `delivery_type` smallint(5) UNSIGNED NOT NULL,
  `payment_type` smallint(5) UNSIGNED NOT NULL,
  `purchase_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_status` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='История покупок для всех пользователей';

--
-- Дамп данных таблицы `purchase_history`
--

INSERT INTO `purchase_history` (`id`, `user_id`, `product_id`, `username`, `email`, `phone`, `region`, `city`, `address`, `delivery_type`, `payment_type`, `purchase_date`, `order_status`) VALUES
(1, 1, 2, 'tmp_username0', 'tmp_email0', 'tmp_phone0', 'tmp_region0', 'tmp_city0', 'tmp_address0', 1, 1, '2018-06-25 16:15:21', 9),
(2, 1, 0, 'tmp_username1', 'tmp_email1', 'tmp_phone1', 'tmp_region1', 'tmp_city1', 'tmp_address1', 1, 0, '2018-06-25 16:15:21', 10),
(3, 2, 2, 'tmp_username2', 'tmp_email2', 'tmp_phone2', 'tmp_region2', 'tmp_city2', 'tmp_address2', 0, 0, '2018-06-25 16:15:21', 9),
(4, 1, 3, 'tmp_username3', 'tmp_email3', 'tmp_phone3', 'tmp_region3', 'tmp_city3', 'tmp_address3', 2, 0, '2018-06-25 16:15:21', 0),
(5, 2, 0, 'tmp_username4', 'tmp_email4', 'tmp_phone4', 'tmp_region4', 'tmp_city4', 'tmp_address4', 1, 0, '2018-06-25 16:15:21', 4),
(6, 3, 3, 'tmp_username5', 'tmp_email5', 'tmp_phone5', 'tmp_region5', 'tmp_city5', 'tmp_address5', 2, 0, '2018-06-25 16:15:21', 6),
(7, 1, 1, 'tmp_username6', 'tmp_email6', 'tmp_phone6', 'tmp_region6', 'tmp_city6', 'tmp_address6', 0, 2, '2018-06-25 16:15:21', 10),
(8, 0, 0, 'tmp_username7', 'tmp_email7', 'tmp_phone7', 'tmp_region7', 'tmp_city7', 'tmp_address7', 0, 1, '2018-06-25 16:15:21', 9),
(9, 2, 2, 'tmp_username8', 'tmp_email8', 'tmp_phone8', 'tmp_region8', 'tmp_city8', 'tmp_address8', 2, 1, '2018-06-25 16:15:21', 3),
(10, 0, 1, 'tmp_username9', 'tmp_email9', 'tmp_phone9', 'tmp_region9', 'tmp_city9', 'tmp_address9', 1, 2, '2018-06-25 16:15:22', 7),
(11, -1, 1, 'adw', 'daw@adsw', '12412512', 'wafr23', '125rfw', 'hterd214', 1, 1, '2018-06-25 20:09:40', 0),
(12, -1, 1, '124214', 'daw@adsw', '12412512', 'rqwfas', 'afwas', 'wfa', 1, 1, '2018-06-25 20:10:25', 0),
(13, -1, 4, '124214', '1@mail', '12412512', 'wafr23', 'afwas', 'wfa', 1, 1, '2018-06-25 20:12:38', 0),
(14, -1, 1, '124214', 'daw@adsw', '12412512', 'awdf', '125rfw', '125rfwq', 1, 1, '2018-06-25 20:18:22', 0),
(15, -1, 3, 'q3wtseg', 'fsa@fg', '12521521', 'dsfsf', 'wehger', 'qwrfegs', 1, 1, '2018-06-25 21:14:31', 0),
(16, -1, 4, 'dwqa', 'fsa@fg', '12521521', 'dsfsf', 'wehger', 'qwrfegs', 1, 1, '2018-06-26 10:57:44', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `surname` text NOT NULL,
  `login` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `avatar` text NOT NULL,
  `phone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Информация о пользователе';

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `login`, `email`, `password`, `is_admin`, `avatar`, `phone`) VALUES
(1, '8AMgaZ9Gd1', '9Rp58', 'nQDOE', '6OqCvNrQi@Tftyw.u1', 'rkPGrq5', 0, 'kartinkijane.ru-45174.jpg', '988-809305'),
(2, 'DqROoB', 'X8SwW54z', 'WxbcX7', 'bOaAnK@Oluuu.eY', 'vIhDo9hw', 0, 'kartinkijane.ru-45174', '322-363782'),
(3, 'LeajVPgD1', 'oHFdV', 'VXItqa4Be5', 'mXpqcHoA61@Jx3DF.mP', 'n3xPdIues', 0, 'kartinkijane.ru-45174', '905-835425'),
(4, '', '', 'dwq', 'fwq@wad', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '', ''),
(5, '', '', 'user', 'mail@email.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '', ''),
(6, '', '', '1', '1@mail', '356a192b7913b04c54574d18c28d46e6395428ab', 0, '', ''),
(7, '', '', '2', 'daw@adsw', '356a192b7913b04c54574d18c28d46e6395428ab', 0, '', ''),
(8, '', '', '3', 'fwawes@safd', '356a192b7913b04c54574d18c28d46e6395428ab', 0, '', ''),
(9, '', '', 'dAW', 'qd@fac', '356a192b7913b04c54574d18c28d46e6395428ab', 0, '', ''),
(10, '', '', 'фаы', 'faw@afw', '356a192b7913b04c54574d18c28d46e6395428ab', 0, '', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price` (`price`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `price_2` (`price`);

--
-- Индексы таблицы `product_bascet`
--
ALTER TABLE `product_bascet`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `purchase_history`
--
ALTER TABLE `purchase_history`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `product_bascet`
--
ALTER TABLE `product_bascet`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `purchase_history`
--
ALTER TABLE `purchase_history`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
