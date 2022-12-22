--CLAN
INSERT INTO CLAN (id, name) VALUES(0, '');
INSERT INTO CLAN (name) VALUES('Узумаки');
INSERT INTO CLAN (name) VALUES('Учиха');
INSERT INTO CLAN (name) VALUES('Хатаке');
INSERT INTO CLAN (name) VALUES('Хьюга');
INSERT INTO CLAN (name) VALUES('Казекаги');
INSERT INTO CLAN (name) VALUES('Намикадзэ');
INSERT INTO CLAN (name) VALUES('Сунагакуре');
INSERT INTO CLAN (name) VALUES('Хошигаки');
INSERT INTO CLAN (name) VALUES('Момочи');
INSERT INTO CLAN (name) VALUES('Куриараре');
INSERT INTO CLAN (name) VALUES('Теруми');
INSERT INTO CLAN (name) VALUES('Би');

--EYES
INSERT INTO EYES (id, type) VALUES (0, '');
INSERT INTO EYES (type) VALUES ('Обычные');
INSERT INTO EYES (type) VALUES ('Шаринган');
INSERT INTO EYES (type) VALUES ('Бьякуган');
INSERT INTO EYES (type) VALUES ('Риннеган');

--NINJA_RANK
INSERT INTO NINJA_RANK (id, type) VALUES (0, '');
INSERT INTO NINJA_RANK (type) VALUES ('Генин');
INSERT INTO NINJA_RANK (type) VALUES ('Чунин');
INSERT INTO NINJA_RANK (type) VALUES ('Джоунин');
INSERT INTO NINJA_RANK (type) VALUES ('Кагэ');

--COUNTRY
INSERT INTO COUNTRY (id, name) VALUES (0, '');
INSERT INTO COUNTRY (name) VALUES ('Страна Огня');
INSERT INTO COUNTRY (name) VALUES ('Страна Ветра');
INSERT INTO COUNTRY (name) VALUES ('Страна Воды');
INSERT INTO COUNTRY (name) VALUES ('Страна Молнии');
INSERT INTO COUNTRY (name) VALUES ('Страна Земли');

--VILLAGES
INSERT INTO VILLAGE (id, name, country_id) VALUES (0,'', 0);
INSERT INTO VILLAGE (name, country_id) VALUES ('Скрытый Лист', 1);
INSERT INTO VILLAGE (name, country_id) VALUES ('Скрытый Песок', 2);
INSERT INTO VILLAGE (name, country_id) VALUES ('Скрытый Туман', 3);
INSERT INTO VILLAGE (name, country_id) VALUES ('Скрытое Облако', 4);
INSERT INTO VILLAGE (name, country_id) VALUES ('Скрытый Камень', 5);

--CRIMINAL_GROUP
INSERT INTO CRIMINAL_GROUP(id, name, crime_num, description) VALUES (0, '', 0, '');
INSERT INTO CRIMINAL_GROUP(name, crime_num, description) VALUES ('Акацуки', 872, 'самая опасная группировка');
INSERT INTO CRIMINAL_GROUP(name, crime_num, description) VALUES ('Четверка Звука', 143, 'элитарные защитники орачимару');
INSERT INTO CRIMINAL_GROUP(name, crime_num, description) VALUES ('Семь Мечников Тумана', 362, 'не церемонятся с жертвой');

--WEAPON_TYPE
INSERT INTO WEAPON_TYPE(id, type) VALUES (0, '');
INSERT INTO WEAPON_TYPE(type) VALUES ('Метательное');
INSERT INTO WEAPON_TYPE(type) VALUES ('Клинковое');

--WEAPON
INSERT INTO WEAPON (id, name, type_id) VALUES (0, '', 1);
INSERT INTO WEAPON (name, type_id) VALUES ('сюрикен', 1);
INSERT INTO WEAPON (name, type_id) VALUES ('кунай', 1);
INSERT INTO WEAPON (name, type_id) VALUES ('лук', 1);
INSERT INTO WEAPON (name, type_id) VALUES ('дротик', 1);
INSERT INTO WEAPON (name, type_id) VALUES ('Клинок Чакры Белого Света', 2);
INSERT INTO WEAPON (name, type_id) VALUES ('Самехада', 2);
INSERT INTO WEAPON (name, type_id) VALUES ('Меч-Секач', 2);
INSERT INTO WEAPON (name, type_id) VALUES ('Клинок Кусанаги', 2);
INSERT INTO WEAPON (name, type_id) VALUES ('Веер', 2);

--NINJA
INSERT INTO NINJA (id, name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES (0,'',0,0,0,0,0,0,0,0,false,0,0);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Минато', 6, 1, 4, 800, 0, 0, 0, 0, false, 2, 1);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Кушина', 1, 1, 3, 700, 0, 0, 0, 0, false, 1, 1);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Наруто', 1, 1, 4, 1000, 0, 1, 2, 0, false, 2, 1);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Саске', 2, 2, 3, 950, 32, 0, 0, 1, true, 8, 1);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Итачи', 2, 2, 3, 900, 182, 0, 0, 1, true, 8, 1);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Какаси', 3, 1, 4, 750, 0, 0, 0, 0, false, 5, 1);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Неджи', 4, 3, 3, 680, 0, 7, 0, 0, false, 2, 1);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Хиаши', 4, 3, 3, 700, 0, 0, 0, 0, false, 3, 1);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Нагато', 1, 4, 3, 870, 68, 0, 0, 1, true, 1, 4);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Гаара', 7, 1, 4, 890, 0, 0, 0, 0, false, 2, 2);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Обито', 2, 2, 3, 910, 59, 0, 0, 1, true, 2, 1);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Кисаме', 8, 1, 3, 800, 45, 0, 0, 3, true, 6, 3);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Забуза', 9, 1, 3, 600, 26, 0, 0, 3, true, 7, 3);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Чоуджуро', 0, 1, 3, 551, 13, 0, 0, 3, true, 7, 3);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Кушимару', 10, 1, 3, 546, 42, 0, 0, 3, true, 7, 3);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Орочимару', 0, 1, 3, 900, 69, 0, 0, 0, true, 0, 1);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Мей', 11, 1, 4, 764, 0, 0, 0, 0, false, 5, 3);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Киллер', 12, 1, 3, 816, 0, 0, 0, 0, false, 6, 4);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Эй', 12, 1, 4, 821, 0, 0, 0, 0, false, 0, 4);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Ооноки', 0, 1, 4, 879, 0, 0, 0, 0, false, 0, 5);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Дейдара', 0, 1, 3, 764, 56, 0, 0, 1, true, 0, 5);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Сасори', 0, 1, 3, 648, 23, 0, 0, 1, true, 0, 2);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Темари', 0, 1, 3, 567, 0, 0, 0, 0, false, 9, 2);

INSERT INTO TECHNIQUE_TYPE (type) VALUES ('Ниндзюцу');
INSERT INTO TECHNIQUE_TYPE (type) VALUES ('Гендзюцу');
INSERT INTO TECHNIQUE_TYPE (type) VALUES ('Тайдзюцу');
INSERT INTO TECHNIQUE_TYPE (type) VALUES ('Доудзюцу');

INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Высшее Чувство: Формация Воздушной Молнии Цветущей Вишни',1,2,'',280);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Демоническая Иллюзия: Летающая Тень',1,6,'',473);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Стихия Лавы: Пылающий Бронированный Кулак',1,5,'',424);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Доки: Коготь',1,1,'',565);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Аматерасу: Резкий Удар',1,4,'',195);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Кипарис',1,6,'',376);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Передний Лотос Любви и Молодости',1,6,'',686);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Мягкий Кулак: Игла Тенкецу',1,4,'',491);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Воззвание Земли',1,1,'',787);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Костная Пуля',1,4,'',509);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Японская Лоницера',1,2,'',495);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Держись От Меня Подальше!',1,2,'',305);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Стихия Ветра: Вращающийся Лист Небес',1,5,'',115);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Склон Железной Горы',1,8,'',470);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Танец Камелии',1,11,'',107);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Волчий Клык: Двойной Удар',1,5,'',66);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Восходящий Ветер Листа',1,2,'',623);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Разрывной Удар Цветущей Вишни',1,2,'',69);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Мощная Нога Извержения',1,4,'',401);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Вечный Соперник (Ultimate Ninja 3)',1,1,'',742);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Дзельква',1,3,'',139);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Танец Клематиса: Цветок',1,4,'',311);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Стихия Дерева: Дерево Полёта',1,2,'',469);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Падение Листа',1,5,'',94);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Восемь Триграмм Тридцать Две Ладони',1,8,'',637);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Построение Джосэки Конохи',1,11,'',626);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Яростный Несокрушимый Смерч Листа',1,1,'',258);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Построение Ино-Шика-Чоу',1,7,'',533);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Скрученный Цветок',1,7,'',434);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Марионетка: Удар Весеннего Наказания',1,10,'',664);

INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Котоамацуками',2,4,'',410);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Цукуёми',2,4,'',115);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Бесконечное Цукуёми',2,5,'',135);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Изанаги',2,5,'',432);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Изанами',2,11,'',202);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Техника Пришествия Тьмы',2,8,'',514);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Великая Сакура',2,8,'',132);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Ива Стиля Листа',2,3,'',264);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Чёрный Сон',2,3,'',499);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Фантазия',2,6,'',189);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Техника Слуги Тумана',2,12,'',164);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Техника Пришествия Тьмы',2,12,'',735);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Техника Отслеживания Чакры',2,2,'',518);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Техника Обмана Разума',2,10,'',753);

INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Марионетка: Танец Вишни в Цвету',3,5,'',22);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Восемь Триграмм: Нарушение Вакуумной Ладони',3,6,'',596);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Супер Великий Огромный Вихрь Листа',3,9,'',414);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Постоянная Связь',3,1,'',606);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Построение Джосэки Конохи',3,3,'',714);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Динамическое Действие',3,11,'',358);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Нашествие Ясности',3,7,'',704);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Пухлый Мега Удар',3,8,'',56);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Зеленое Влияние',3,5,'',646);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Зевс',3,12,'',512);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Сияющий Страусиный Пинок',3,4,'',742);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Землетрясение Земли',3,4,'',284);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Лунный Свет',3,10,'',356);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Землетрясение Земли',3,12,'',495);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Бог-Дракон Листа',3,7,'',178);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Стихия Ветра: Вращающийся Лист Небес',3,12,'',367);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Скрученный Цветок',3,5,'',690);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Защитные Восемь Триграмм Шестьдесят Четыре Ладони',3,12,'',273);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Внутренняя Сакура',3,4,'',217);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Кулаки Львов-Близнецов Мягкой Поступи',3,7,'',457);

INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Вакуумная Атака Восьмидесяти Богов',4,5,'',419);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Заряд! Отряд Конохамару',4,7,'',650);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Стихия Земли: Техника Каменного Кулака',4,2,'',56);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Паровой Рывок',4,7,'',165);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Пронзительные Горящие Эмоции',4,3,'',699);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Аркан Хвостатого Зверя',4,9,'',676);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Проклятая Печать: Убийственный Крик',4,9,'',83);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Разрез Ёсаку',4,6,'',534);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Вихрь Листа',4,4,'',717);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Белая Дымка Небесного Танца',4,5,'',276);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Великий Заграждающий Удар',4,11,'',378);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Вспышка Вращающейся Ноги',4,10,'',467);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Великая Комбинация Ладоней Хьюга',4,1,'',342);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Небесная Защитная Нога',4,3,'',432);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Удерживание Воды',4,2,'',708);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Танец Ивы',4,12,'',538);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Восемь Триграмм Вакуумная Ладонь',4,10,'',217);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Комбо Наруто по Области',4,1,'',175);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Алое Приглашение',4,2,'',260);
INSERT INTO TECHNIQUE (name, type_id, clan_id, description, chakra_cost) VALUES ('Небесный Двойной Клык',4,8,'',557);

INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (2,4);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (2,9);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (2,20);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (2,27);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (2,48);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (2,77);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (2,82);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (3,4);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (3,9);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (3,20);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (3,27);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (9,4);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (9,9);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (9,20);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (9,27);

INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (4,1);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (4,11);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (4,12);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (4,17);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (5,1);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (5,11);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (5,12);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (5,17);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (5,18);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (5,23);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (5,43);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (11,1);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (11,11);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (11,12);

INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (6,21);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (6,38);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (6,39);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (6,49);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (6,69);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (6,78);

INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (7,5);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (7,8);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (7,10);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (7,19);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (7,22);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (8,5);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (8,8);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (8,10);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (8,19);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (8,22);
INSERT INTO TECHNIQUE_TO_NINJA (ninja_id, technique_id) VALUES (8,31);

