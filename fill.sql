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
VALUES ('Наруто', 1, 1, 4, 1000, 0, 1, 2, 0, false, 2, 1);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Минато', 6, 1, 4, 800, 0, 0, 0, 0, false, 2, 1);
INSERT INTO NINJA (name, clan_id, eye_id, rank_id, chakra_amount, criminal_num, father_id, mother_id, criminal_group_id, is_criminal, weapon_id, village_id)
VALUES ('Кушина', 1, 1, 3, 700, 0, 0, 0, 0, false, 1, 1);
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
