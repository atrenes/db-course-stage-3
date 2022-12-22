--CLAN
INSERT INTO CLAN (id, name) VALUES(0, '');
INSERT INTO CLAN (name) VALUES
    ('Узумаки'),
    ('Учиха'),
    ('Хатаке'),
    ('Хьюга'),
    ('Казекаги'),
    ('Намикадзэ'),
    ('Сунагакуре'),
    ('Хошигаки'),
    ('Момочи'),
    ('Куриараре'),
    ('Теруми'),
    ('Би');

--EYES
INSERT INTO EYES (id, type) VALUES (0, '');
INSERT INTO EYES (type) VALUES
    ('Обычные'),
    ('Шаринган'),
    ('Бьякуган'),
    ('Риннеган');

--NINJA_RANK
INSERT INTO NINJA_RANK (id, type) VALUES (0, '');
INSERT INTO NINJA_RANK (type) VALUES ('Генин'),
    ('Чунин'),
    ('Джоунин'),
    ('Кагэ');

--COUNTRY
INSERT INTO COUNTRY (id, name) VALUES (0, '');
INSERT INTO COUNTRY (name) VALUES
    ('Страна Огня'),
    ('Страна Ветра'),
    ('Страна Воды'),
    ('Страна Молнии'),
    ('Страна Земли');

--VILLAGES
INSERT INTO VILLAGE (id, name, country_id) VALUES (0,'', 0);
INSERT INTO VILLAGE (name, country_id) VALUES
    ('Скрытый Лист', 1),
    ('Скрытый Песок', 2),
    ('Скрытый Туман', 3),
    ('Скрытое Облако', 4),
    ('Скрытый Камень', 5);

--CRIMINAL_GROUP
INSERT INTO CRIMINAL_GROUP(id, name, crime_num, description) VALUES (0, '', 0, '');
INSERT INTO CRIMINAL_GROUP(name, crime_num, description) VALUES
    ('Акацуки', 872, 'самая опасная группировка'),
    ('Четверка Звука', 143, 'элитарные защитники орачимару'),
    ('Семь Мечников Тумана', 362, 'не церемонятся с жертвой');

--WEAPON_TYPE
INSERT INTO WEAPON_TYPE(id, type) VALUES (0, '');
INSERT INTO WEAPON_TYPE(type) VALUES
    ('Метательное'),
    ('Клинковое');

--WEAPON
INSERT INTO WEAPON (id, name, type_id) VALUES (0, '', 1);
INSERT INTO WEAPON (name, type_id) VALUES
    ('сюрикен', 1),
    ('кунай', 1),
    ('лук', 1),
    ('дротик', 1),
    ('Клинок Чакры Белого Света', 2),
    ('Самехада', 2),
    ('Меч-Секач', 2),
    ('Клинок Кусанаги', 2),
    ('Веер', 2);

--NINJA
INSERT INTO NINJA (id, name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, criminal_group_id, is_criminal, village_id) VALUES (0,'',0,0,0,0,0,0,false,0);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, criminal_group_id, is_criminal, village_id) VALUES
    ('Минато', 6, 1, 4, 800, 0, 0, false, 1),
    ('Кушина', 1, 1, 3, 700, 0, 0, false, 1),
    ('Наруто', 1, 1, 4, 1000, 0, 0, false, 1),
    ('Саске', 2, 2, 3, 950, 32, 1, true, 1),
    ('Итачи', 2, 2, 3, 900, 182, 1, true, 1),
    ('Какаси', 3, 1, 4, 750, 0, 0, false, 1),
    ('Неджи', 4, 3, 3, 680, 0, 0, false, 1),
    ('Хиаши', 4, 3, 3, 700, 0, 0, false, 3),
    ('Нагато', 1, 4, 3, 870, 68, 1, true, 4),
    ('Гаара', 7, 1, 4, 890, 0, 0, false, 2),
    ('Обито', 2, 2, 3, 910, 59, 1, true, 1),
    ('Кисаме', 8, 1, 3, 800, 45, 3, true, 3),
    ('Забуза', 9, 1, 3, 600, 26, 3, true, 3),
    ('Чоуджуро', 0, 1, 3, 551, 13, 3, true, 3),
    ('Кушимару', 10, 1, 3, 546, 42, 3, true, 3),
    ('Орочимару', 0, 1, 3, 900, 69, 0, true, 1),
    ('Мей', 11, 1, 4, 764, 0, 0, false, 3),
    ('Киллер', 12, 1, 3, 816, 0, 0, false, 4),
    ('Эй', 12, 1, 4, 821, 0, 0, false, 4),
    ('Ооноки', 0, 1, 4, 879, 0, 0, false, 5),
    ('Дейдара', 0, 1, 3, 764, 56, 1, true, 5),
    ('Сасори', 0, 1, 3, 648, 23, 1, true, 2),
    ('Темари', 0, 1, 3, 567, 0, 0, false, 2),
    ('Канкуро', 5, 1, 3, 789, 0, 0, false, 2);

ALTER TABLE VILLAGE ADD KAGE INTEGER REFERENCES NINJA(ID);
UPDATE  VILLAGE SET KAGE = 3 where village.id = 1;
UPDATE  VILLAGE SET KAGE = 10 where village.id = 2;
UPDATE  VILLAGE SET KAGE = 17 where village.id = 3;
UPDATE  VILLAGE SET KAGE = 19 where village.id = 4;
UPDATE  VILLAGE SET KAGE = 20 where village.id = 5;

INSERT INTO TECHNIQUE_TYPE (type) VALUES
    ('Ниндзюцу'),
    ('Гендзюцу'),
    ('Тайдзюцу'),
    ('Доудзюцу');

INSERT INTO TECHNIQUE (name, type_id, clan_id, chakra_cost) VALUES
    ('Высшее Чувство: Формация Воздушной Молнии Цветущей Вишни',1,2,280),
    ('Демоническая Иллюзия: Летающая Тень',1,6,473),
    ('Стихия Лавы: Пылающий Бронированный Кулак',1,5,424),
    ('Доки: Коготь',1,1,565),
    ('Аматерасу: Резкий Удар',1,4,195),
    ('Кипарис',1,6,376),
    ('Передний Лотос Любви и Молодости',1,6,686),
    ('Мягкий Кулак: Игла Тенкецу',1,4,491),
    ('Воззвание Земли',1,1,787),
    ('Костная Пуля',1,4,509),
    ('Японская Лоницера',1,2,495),
    ('Держись От Меня Подальше!',1,2,305),
    ('Стихия Ветра: Вращающийся Лист Небес',1,5,115),
    ('Склон Железной Горы',1,8,470),
    ('Танец Камелии',1,11,107),
    ('Волчий Клык: Двойной Удар',1,5,66),
    ('Восходящий Ветер Листа',1,2,623),
    ('Разрывной Удар Цветущей Вишни',1,2,69),
    ('Мощная Нога Извержения',1,4,401),
    ('Вечный Соперник (Ultimate Ninja 3)',1,1,742),
    ('Дзельква',1,3,139),
    ('Танец Клематиса: Цветок',1,4,311),
    ('Стихия Дерева: Дерево Полёта',1,2,469),
    ('Падение Листа',1,5,94),
    ('Восемь Триграмм Тридцать Две Ладони',1,8,637),
    ('Построение Джосэки Конохи',1,11,626),
    ('Яростный Несокрушимый Смерч Листа',1,1,258),
    ('Построение Ино-Шика-Чоу',1,7,533),
    ('Скрученный Цветок',1,7,434),
    ('Марионетка: Удар Весеннего Наказания',1,10,664),
    ('Котоамацуками',2,4,410),
    ('Цукуёми',2,4,115),
    ('Бесконечное Цукуёми',2,5,135),
    ('Изанаги',2,5,432),
    ('Изанами',2,11,202),
    ('Техника Пришествия Тьмы',2,8,514),
    ('Великая Сакура',2,8,132),
    ('Ива Стиля Листа',2,3,264),
    ('Чёрный Сон',2,3,499),
    ('Фантазия',2,6,189),
    ('Техника Слуги Тумана',2,12,164),
    ('Техника Пришествия Тьмы',2,12,735),
    ('Техника Отслеживания Чакры',2,2,518),
    ('Техника Обмана Разума',2,10,753),
    ('Марионетка: Танец Вишни в Цвету',3,5,22),
    ('Восемь Триграмм: Нарушение Вакуумной Ладони',3,6,596),
    ('Супер Великий Огромный Вихрь Листа',3,9,414),
    ('Постоянная Связь',3,1,606),
    ('Построение Джосэки Конохи',3,3,714),
    ('Динамическое Действие',3,11,358),
    ('Нашествие Ясности',3,7,704),
    ('Пухлый Мега Удар',3,8,56),
    ('Зеленое Влияние',3,5,646),
    ('Зевс',3,12,512),
    ('Сияющий Страусиный Пинок',3,4,742),
    ('Землетрясение Земли',3,4,284),
    ('Лунный Свет',3,10,356),
    ('Землетрясение Земли',3,12,495),
    ('Бог-Дракон Листа',3,7,178),
    ('Стихия Ветра: Вращающийся Лист Небес',3,12,367),
    ('Скрученный Цветок',3,5,690),
    ('Защитные Восемь Триграмм Шестьдесят Четыре Ладони',3,12,273),
    ('Внутренняя Сакура',3,4,217),
    ('Кулаки Львов-Близнецов Мягкой Поступи',3,7,457),
    ('Вакуумная Атака Восьмидесяти Богов',4,5,419),
    ('Заряд! Отряд Конохамару',4,7,650),
    ('Стихия Земли: Техника Каменного Кулака',4,2,56),
    ('Паровой Рывок',4,7,165),
    ('Пронзительные Горящие Эмоции',4,3,699),
    ('Аркан Хвостатого Зверя',4,9,676),
    ('Проклятая Печать: Убийственный Крик',4,9,83),
    ('Разрез Ёсаку',4,6,534),
    ('Вихрь Листа',4,4,717),
    ('Белая Дымка Небесного Танца',4,5,276),
    ('Великий Заграждающий Удар',4,11,378),
    ('Вспышка Вращающейся Ноги',4,10,467),
    ('Великая Комбинация Ладоней Хьюга',4,1,342),
    ('Небесная Защитная Нога',4,3,432),
    ('Удерживание Воды',4,2,708),
    ('Танец Ивы',4,12,538),
    ('Восемь Триграмм Вакуумная Ладонь',4,10,217),
    ('Комбо Наруто по Области',4,1,175),
    ('Алое Приглашение',4,2,260),
    ('Небесный Двойной Клык',4,8,557),
    ('Меч Кагуцучи: Ярость',3,0,232),
    ('Человеческий Снаряд Йо-Йо',2,0,241),
    ('Построение Скальной Лавины',4,0,299),
    ('Полет!',4,0,706),
    ('Шип',3,0,318),
    ('Стихия Взрыва: Минный Кулак',2,0,555),
    ('Тайдзюцу Листа: Вихрь Яростных Ударов Ног',3,0,204),
    ('Истинные Восемь Триграмм Шестьдесят Четыре Ладони',2,0,640),
    ('Всплеск Девятихвостого',2,0,503),
    ('Последняя Надежда: Атака Восьми Врат',3,0,553),
    ('Тигровая Лилия',3,0,238),
    ('Вихрь Листа',2,0,699),
    ('Сон Багрового Листа',3,0,77),
    ('Кагуцучи Расенган',3,0,204),
    ('Восемь Триграмм: Триста Шестьдесят Один Стиль',2,0,562),
    ('Танец Клематиса: Цветок',3,0,699),
    ('Пятитысячное Комбо Наруто Узумаки',3,0,694),
    ('Комбо Атака Наруто Узумаки',2,0,162),
    ('Цветочный Аромат',2,0,464),
    ('Искусство Ниндзя: Техника Прохождения Сквозь Стену',2,0,757),
    ('Сияющий Страусиный Пинок',2,0,269),
    ('Усиленная Чакрой Мощь',3,0,448);


INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES
    (2,4),
    (2,9),
    (2,20),
    (2,27),
    (2,48),
    (2,77),
    (2,82),
    (3,4),
    (3,9),
    (3,20),
    (3,27),
    (9,4),
    (9,9),
    (9,20),
    (9,27),
    (4,1),
    (4,11),
    (4,12),
    (4,17),
    (5,1),
    (5,11),
    (5,12),
    (5,17),
    (5,18),
    (5,23),
    (5,43),
    (11,1),
    (11,11),
    (11,12),
    (6,21),
    (6,38),
    (6,39),
    (6,49),
    (6,69),
    (6,78),
    (7,5),
    (7,8),
    (7,10),
    (7,19),
    (7,22),
    (8,5),
    (8,8),
    (8,10),
    (8,19),
    (8,22),
    (8,31),
    (24,3),
    (24,13),
    (24,16),
    (24,24),
    (24,33),
    (24,34),
    (1,2),
    (1,6),
    (1,7),
    (1,40),
    (10,28),
    (10,29),
    (10,51),
    (12,14),
    (12,25),
    (12,36),
    (12,37),
    (13,47),
    (13,70),
    (13,71),
    (15,30),
    (15,44),
    (15,57),
    (15,76),
    (15,81),
    (17,15),
    (17,26),
    (17,35),
    (17,50),
    (18,41),
    (18,42),
    (18,54),
    (18,58),
    (18,60),
    (18,62),
    (18,80),
    (19,41),
    (19,42),
    (19,54),
    (19,58),
    (14,85),
    (14,86),
    (14,87),
    (14,88),
    (14,89),
    (14,90),
    (14,91),
    (16,85),
    (16,86),
    (16,87),
    (16,88),
    (16,89),
    (16,90),
    (20,85),
    (20,86),
    (20,87),
    (20,88),
    (21,85),
    (21,86),
    (21,87),
    (21,88),
    (21,89),
    (22,85),
    (22,86),
    (22,87),
    (22,88),
    (23,85),
    (23,86),
    (23,87),
    (23,88);

INSERT INTO CRIME_RANK (type) VALUES
    ('местный'),
    ('федеральный'),
    ('межгосударственный');


INSERT INTO CRIME (date_of_crime, crime_rank_id) VALUES
    ('1643-12-23',2),
    ('1622-07-06',3),
    ('1632-02-24',3),
    ('1668-03-21',3),
    ('1653-02-08',1),
    ('1664-10-21',2),
    ('1637-10-02',3),
    ('1621-10-03',2),
    ('1607-07-25',3),
    ('1609-06-11',3),
    ('1635-05-09',1),
    ('1640-01-13',1),
    ('1621-04-18',1),
    ('1624-10-18',1),
    ('1640-01-03',2),
    ('1613-09-26',1),
    ('1663-03-09',2),
    ('1620-02-09',2),
    ('1604-12-01',1),
    ('1622-05-05',3),
    ('1614-11-02',1),
    ('1630-12-27',3),
    ('1653-08-15',3),
    ('1618-09-27',1),
    ('1648-10-24',1),
    ('1633-06-03',1),
    ('1617-05-24',3),
    ('1644-02-18',1),
    ('1639-11-09',2),
    ('1629-01-24',2),
    ('1607-01-31',2),
    ('1603-06-21',3),
    ('1619-02-05',3),
    ('1615-12-01',3),
    ('1620-05-28',2),
    ('1655-12-03',1),
    ('1620-11-25',3),
    ('1649-01-31',2),
    ('1609-05-12',3),
    ('1642-12-04',3),
    ('1641-07-10',2),
    ('1621-09-07',2),
    ('1628-07-04',1),
    ('1636-09-23',3),
    ('1625-08-20',1),
    ('1632-10-13',1),
    ('1605-10-04',1),
    ('1647-08-12',3),
    ('1610-12-07',3),
    ('1644-08-09',3),
    ('1640-05-29',1),
    ('1612-08-10',2),
    ('1611-02-27',2),
    ('1608-12-15',2),
    ('1619-12-16',2),
    ('1661-04-17',1),
    ('1669-11-13',3),
    ('1643-12-19',3),
    ('1603-09-10',3),
    ('1666-05-02',3),
    ('1611-09-13',2),
    ('1627-08-30',3),
    ('1665-06-06',1),
    ('1630-04-22',3),
    ('1637-10-19',1),
    ('1634-09-03',2),
    ('1659-09-17',3),
    ('1643-12-27',3),
    ('1605-03-16',3),
    ('1648-07-21',2),
    ('1668-12-15',1),
    ('1651-01-04',2),
    ('1648-04-12',1),
    ('1605-05-15',1),
    ('1669-06-19',1),
    ('1631-08-25',2),
    ('1643-07-12',1),
    ('1657-03-02',3),
    ('1639-09-20',2),
    ('1651-07-02',2),
    ('1667-07-01',1),
    ('1629-02-07',1),
    ('1657-10-02',2),
    ('1608-08-16',3),
    ('1625-03-02',1),
    ('1630-03-25',3),
    ('1615-08-07',3),
    ('1664-02-15',3),
    ('1603-06-18',1),
    ('1641-06-27',1),
    ('1669-12-04',1),
    ('1654-10-08',3),
    ('1655-03-18',1),
    ('1640-07-13',3),
    ('1620-06-07',1),
    ('1662-01-29',1),
    ('1657-05-13',3),
    ('1668-09-20',3),
    ('1651-09-22',2),
    ('1644-06-29',2);

INSERT INTO CRIME_TO_NINJA (ninja_id, crime_id) VALUES (4,68),
    (4,61),
    (4,56),
    (4,26),
    (4,16),
    (4,49),
    (4,63),
    (5,76),
    (5,83),
    (5,13),
    (5,18),
    (5,4),
    (5,34),
    (9,12),
    (9,38),
    (9,81),
    (9,78),
    (9,5),
    (9,90),
    (11,96),
    (11,47),
    (11,78),
    (11,43),
    (11,98),
    (11,54),
    (11,45),
    (11,71),
    (11,33),
    (12,7),
    (12,43),
    (12,33),
    (12,60),
    (12,89),
    (12,77),
    (12,78),
    (12,91),
    (13,6),
    (13,31),
    (13,37),
    (13,61),
    (13,93),
    (13,40),
    (13,21),
    (13,4),
    (13,93),
    (14,78),
    (14,90),
    (14,67),
    (14,76),
    (14,58),
    (14,7),
    (14,27),
    (15,97),
    (15,20),
    (15,59),
    (15,25),
    (15,65),
    (15,32),
    (15,66),
    (16,9),
    (16,46),
    (16,37),
    (16,86),
    (16,13),
    (16,4),
    (16,97),
    (16,23),
    (16,80),
    (16,3),
    (16,62),
    (21,59),
    (21,16),
    (21,70),
    (21,20),
    (21,3),
    (21,36),
    (22,16),
    (22,92),
    (22,35),
    (22,45),
    (22,29),
    (22,49),
    (22,51),
    (22,31),
    (22,63);

INSERT INTO WEAPON_TO_NINJA (ninja_id, weapon_id) VALUES
    (1,7),
    (1,2),
    (1,2),
    (1,7),
    (2,4),
    (2,8),
    (2,9),
    (3,1),
    (3,9),
    (4,1),
    (4,3),
    (4,6),
    (4,8),
    (5,3),
    (5,3),
    (5,2),
    (6,6),
    (6,2),
    (7,3),
    (7,6),
    (7,3),
    (8,4),
    (8,9),
    (8,3),
    (8,2),
    (9,6),
    (9,6),
    (9,8),
    (9,6),
    (10,5),
    (10,5),
    (11,8),
    (11,2),
    (11,8),
    (11,5),
    (12,1),
    (12,9),
    (13,9),
    (13,5),
    (13,8),
    (13,8),
    (14,7),
    (14,6),
    (15,5),
    (15,5),
    (15,7),
    (15,9),
    (16,1),
    (16,7),
    (16,3),
    (16,4),
    (17,5),
    (17,8),
    (17,1),
    (17,5),
    (18,6),
    (18,2),
    (19,6),
    (19,9),
    (19,8),
    (19,9),
    (20,1),
    (20,6),
    (20,7),
    (21,7),
    (21,6),
    (21,8),
    (21,2),
    (22,1),
    (22,8),
    (22,9),
    (23,4),
    (23,8),
    (23,3),
    (23,4),
    (24,5),
    (24,6),
    (24,3);
INSERT INTO WANTED_LIST(wanted_ninja_id, is_captured, executor_ninja_id, description, date_of_search_start, date_of_capture) VALUES
(4,false,null,'','1622-11-11',null),
(5,false,null,'','1664-09-09',null),
(9,false,null,'','1668-08-10',null),
(11,false,null,'','1638-04-22',null),
(12,false,null,'','1606-06-28',null),
(13,false,null,'','1612-04-29',null),
(14,false,null,'','1628-12-30',null),
(15,false,null,'','1652-12-23',null),
(16,false,null,'','1667-12-07',null),
(21,false,null,'','1625-09-20',null),
(22,false,null,'','1659-07-21',null);

