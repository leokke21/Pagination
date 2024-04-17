-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3305
-- Время создания: Янв 22 2024 г., 09:53
-- Версия сервера: 8.0.24
-- Версия PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `music`
--

-- --------------------------------------------------------

--
-- Структура таблицы `music_band`
--

CREATE TABLE `music_band` (
  `id_band` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` int NOT NULL,
  `frontman` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `imаge` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `discription` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `music_band`
--

INSERT INTO `music_band` (`id_band`, `name`, `year`, `frontman`, `imаge`, `discription`) VALUES
(1, 'Aerosmith', 1970, 'Стивен Тайлер', 'img/Тайлер.jpg', 'Музыкальная группа, вероятно, самый важный представитель американского хард-рока. Группа черпала своё вдохновение в британском блюз-роке, доминировавшем на рок-сцене в конце 1960-х и начале 1970-х, как, например, Cream, Led Zeppelin, Jeff Beck Group, а также the Rolling Stones. '),
(2, 'Metallica', 1981, 'Джеймс Хэтфилд', 'img/Хэтфилд.jpg', 'Американская метал-группа, созданная вокалистом и гитаристом Джеймсом Хэтфилдом и барабанщиком Ларсом Ульрихом в Лос-Анджелесе, штат Калифорния, в 1981 году. Одна из наиболее популярных и влиятельных команд в истории хард-рока, Metallica входит в так называемую «большую четвёрку» основоположников и ключевых коллективов жанра трэш-метал, оказавших определяющее влияние на его развитие, и считается, что творчество этих коллективов положило начало развитию данного направления в музыке.'),
(3, 'Bon Jovi', 1983, 'Джон Бон Джови', 'img/Джови.jpg', 'Американская рок-группа из Нью-Джерси, образованная в 1983 году. В состав коллектива входят вокалист Джон Бон Джови, клавишник Дэвид Брайан, бас-гитарист Хью Макдональд, гитарист Фил Икс и барабанщик Тико Торрес. На протяжении многих лет состав группы практически не менялся, лишь в 1994 году от них ушёл басист Алек Джон Сач, которого заменил Хью Макдональд, а в 2013 году группу покинул гитарист Ричи Самбора. В 2016 году Хью Макдональд и Фил Икс стали полноправными участниками коллектива.'),
(4, 'Guns n Rose', 1985, 'Эксл Роуз', 'img/Роуз.jpg', 'Американская хард-рок-группа, сформировавшаяся в 1985 году в Лос-Анджелесе, штат Калифорния. В первоначальный состав участников, которые в 1986 году заключили контракт со звукозаписывающей компанией Geffen Records, входили: вокалист Эксл Роуз, соло-гитарист Слэш, ритм-гитарист Иззи Стрэдлин, басист Дафф Маккаган и барабанщик Стивен Адлер. Текущий состав включает: Роуза, Слэша, Маккагана, а также клавишников Диззи Рида и Мелиссу Риз, гитариста Ричарда Фортуса и барабанщика Фрэнка Феррера. Guns N’ Roses продала более 100 миллионов своих записей по всему миру, включая 45 миллионов только в США, в связи с чем считается одной из самых востребованных групп в мире.'),
(5, 'Scorpions', 1965, 'Клаус Майне', 'img/Майне.jpg', 'Немецкая англоязычная рок-группа, созданная в 1965 в Ганновере. Для стиля группы характерны как классический хард-рок, так и лирические гитарные баллады. Scorpions являются самой популярной рок-группой Германии и одной из самых известных в мире, продав более 100 миллионов копий своих альбомов.'),
(6, 'Песняры', 1985, 'Ярушин', 'img/Ярушин.jpg', 'Советский и белорусский вокально-инструментальный ансамбль (ВИА) под управлением народного артиста СССР Владимира Мулявина, созданный в Минске в 1969 году. Известен широкой аудитории по песням: «Косил Ясь конюшину», «Белоруссия», «Вологда», «За полчаса до весны», «Беловежская пуща» и многим другим.'),
(7, 'Родник', 1985, 'Наталья Жуковская', 'img/Жуковская.jpg', 'Группа \"Родник\" образовалась в 1985 году в городе Сочи. Изначально позиционировалась как студия звукозаписи \"Родник\", объединиющая трёх талантливых музыкантов : Геннадия Пешкова, Михаила Качанова и вокалистку Наталью Жуковскую, которые записывают дебютный альбом, который так и называется \"Родник-1\", позднее переименованный в \"Сочи\". На волне первого успеха записывается второй альбом, вышедший в 1986 году - Дискотека . Он взорвал все танцплощадки страны, в основном благодаря таким хитам, как \"Радуги свет\" и \"Не было любви\". В 1988 году группа перебралась в город Владимир и сменила название на \"Миди-поп\", опять же сочетающееся с названием студии.'),
(8, 'Кино', 1981, 'Юрий Каспарян', 'img/Каспарян.jpg', 'Одна из самых популярных советских рок-групп 1980-х годов, входившая в состав ленинградского рок-клуба. Лидером группы и автором текстов песен и музыки, исполняемых ею на концертах, был Виктор Цой, после смерти которого в 1990 году, коллектив, выпустивший, в общей сложности, за 9 лет в студийных альбомах более 100 песен, несколько сборников и концертных записей, а также большое количество неофициальных бутлегов, надолго прекратил существование...'),
(9, 'Король и Шут', 1988, 'Михаил Горшенёв', 'img/Горшенёв.jpg', 'Король и Шут (аббревиатура КиШ) — российская хоррор-панк-группа. Группа наиболее известна благодаря своим текстам, представляющим собой короткие сказки-страшилки, обычно мистические или метаисторические. Сценический имидж группы включает в себя грим согласно тематике их песен.'),
(10, 'Дискотека Авария', 1990, 'Алексей Серов', 'img/Серов.jpg', 'Советская и российская музыкальная группа, основанная 5 июня 1990 года. Изначально коллектив специализировался на танцевальной музыке с юмористическими текстами, а с середины 2000-х годов в репертуаре группы преобладает жанр поп-музыки.\r\nАлексей Серов – российский музыкант, солист и яркий участник популярной группы «Дискотека Авария».'),
(11, 'Дискотека Авария', 1990, 'Алексей Рыжов', 'img/Рыжов.jpg', 'Основатель, вокалист, композитор и продюсер группы «Дискотека Авария» Алексей Рыжов посвятил десятки лет музыкальной карьере. За это время им было написано множество композиций, некоторые из них стали суперхитами. И, конечно, велика заслуга Рыжова в долголетии коллектива: тонко чувствуя музыкальную конъюнктуру, он не перестает генерировать все новые и новые хиты. '),
(12, 'Кино', 1981, 'Виктор Цой', 'img/Виктор Цой.jpg', 'Одна из самых популярных советских рок-групп 1980-х годов, входившая в состав ленинградского рок-клуба. Лидером группы и автором текстов песен и музыки, исполняемых ею на концертах, был Виктор Цой, после смерти которого в 1990 году, коллектив, выпустивший, в общей сложности, за 9 лет в студийных альбомах более 100 песен, несколько сборников и концертных записей, а также большое количество неофициальных бутлегов, надолго прекратил существование.'),
(13, 'The Beatles', 1960, 'Пол Маккартни', 'img/Маккартни.jpg', 'Британская рок-группа из Ливерпуля, основанная в 1960 году, в составе которой играли Джон Леннон, Пол Маккартни, Джордж Харрисон и Ринго Старр. Также в разное время в составе группы выступали Стюарт Сатклифф, Пит Бест и Джимми Никол. Большинство композиций The Beatles создано в соавторстве и подписано именами Джона Леннона и Пола Маккартни. Дискография группы включает 13 официальных студийных альбомов, изданных в 1963—1970 годах, и 211 песен'),
(14, 'The Beatles', 1960, 'Джон Леннон', 'img/Леннон.jpg', 'Британская рок-группа из Ливерпуля, основанная в 1960 году, в составе которой играли Джон Леннон, Пол Маккартни, Джордж Харрисон и Ринго Старр. Также в разное время в составе группы выступали Стюарт Сатклифф, Пит Бест и Джимми Никол. Большинство композиций The Beatles создано в соавторстве и подписано именами Джона Леннона и Пола Маккартни. Дискография группы включает 13 официальных студийных альбомов, изданных в 1963—1970 годах, и 211 песен');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `nusic.___`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `nusic.___` (
`id_band` int
,`name` varchar(50)
);

-- --------------------------------------------------------

--
-- Структура для представления `nusic.___`
--
DROP TABLE IF EXISTS `nusic.___`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `nusic.___`  AS SELECT `music_band`.`id_band` AS `id_band`, `music_band`.`name` AS `name` FROM `music_band` ORDER BY `music_band`.`name` DESC ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `music_band`
--
ALTER TABLE `music_band`
  ADD PRIMARY KEY (`id_band`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `music_band`
--
ALTER TABLE `music_band`
  MODIFY `id_band` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;