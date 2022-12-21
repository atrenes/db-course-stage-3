CREATE TABLE NINJA (
    ID SERIAL PRIMARY KEY,
    NAME VARCHAR(255) NOT NULL,
    CLAN_ID SERIAL REFERENCES CLAN(ID) NOT NULL ,
    EYE_ID SERIAL REFERENCES EYES(ID) NOT NULL,
    RANK_ID SERIAL REFERENCES NINJA_RANK(ID) NOT NULL,
    CHAKRA_AMOUNT INT CHECK ( CHAKRA_AMOUNT BETWEEN 0 AND 100),
    CRIMINAL_NUM INT CHECK ( CRIMINAL_NUM > 0),
    FATHER_ID SERIAL REFERENCES NINJA(ID) NOT NULL,
    MOTHER_ID SERIAL REFERENCES  NINJA(ID) NOT NULL,
    VILLAGE_ID SERIAL REFERENCES VILLAGE(ID) NOT NULL,
    CRIMINAL_GROUP_ID SERIAL REFERENCES CRIMINAL_GROUP(ID) NOT NULL,
    IS_CRIMINAL BOOLEAN NOT NULL,
    WEAPON_ID SERIAL REFERENCES WEAPON(ID)

);
CREATE TABLE VILLAGE (
  ID SERIAL PRIMARY KEY,
  NAME varchar(225) NOT NULL,
  KAGE_ID SERIAL REFERENCES NINJA(ID) NOT NULL,
  COUNTRY_ID SERIAL REFERENCES COUNTRY(ID) NOT NULL
);

CREATE TABLE CLAN (
    ID SERIAL PRIMARY KEY,
    NAME VARCHAR(225) NOT NULL
);

CREATE TABLE COUNTRY (
    ID SERIAL PRIMARY KEY,
    NAME VARCHAR(225) NOT NULL
);

CREATE TABLE TECHNIQUE_TYPE (
    ID SERIAL PRIMARY KEY,
    TYPE VARCHAR(225) NOT NULL
);

CREATE TABLE EYES (
    ID SERIAL PRIMARY KEY,
    TYPE VARCHAR(225) NOT NULL
);

CREATE TABLE TECHNIQUE (
    ID SERIAL PRIMARY KEY,
    NAME VARCHAR(225) NOT NULL,
    TYPE_ID SERIAL REFERENCES TECHNIQUE_TYPE(ID) NOT NULL,
    CLAN_ID SERIAL REFERENCES CLAN(ID),
    DESCRIPTION VARCHAR(225) NOT NULL,
    CHAKRA_COST INTEGER NOT NULL
);

CREATE TABLE TECHNIQUE_TO_NINJA(
  NINJA_ID SERIAL REFERENCES NINJA(ID) NOT NULL,
  TECHNIQUE SERIAL REFERENCES TECHNIQUE(ID) NOT NULL
);

CREATE TABLE CRIME_RANK (
    ID SERIAL PRIMARY KEY,
    TYPE VARCHAR(225) NOT NULL
);



CREATE TABLE CRIME (
    ID SERIAL PRIMARY KEY,
    DESCRIPTION VARCHAR(225) NOT NULL,
    DATE_OF_CRIME VARCHAR(225) NOT NULL,
    CRIME_RANK_ID SERIAL REFERENCES CRIME_RANK(ID) NOT NULL
);

CREATE TABLE CRIME_TO_NINJA(
  NINJA_ID SERIAL REFERENCES NINJA(ID) NOT NULL,
  CRIME_ID SERIAL REFERENCES CRIME(ID) NOT NULL
);


CREATE TABLE CRIMINAL_GROUP (
    ID SERIAL PRIMARY KEY,
    NAME VARCHAR(225) NOT NULL,
    CRIME_NUM INTEGER NOT NULL CHECK (CRIME_NUM > 0),
    DESCRIPTION VARCHAR(225) NOT NULL
);

CREATE TABLE WEAPON_TYPE (
    ID SERIAL PRIMARY KEY,
    TYPE VARCHAR(225) NOT NULL
);

CREATE TABLE WEAPON
(
    ID      SERIAL PRIMARY KEY,
    NAME    VARCHAR(225) NOT NULL,
    TYPE_ID SERIAL REFERENCES WEAPON_TYPE (ID)
);
CREATE TABLE WEAPON_TO_NINJA(
  NINJA_ID SERIAL REFERENCES NINJA(ID) NOT NULL,
  WEAPON_ID SERIAL REFERENCES WEAPON(ID) NOT NULL
);

CREATE TABLE WANTED_LIST(
  WANTED_NINJA_ID SERIAL REFERENCES NINJA(ID) NOT NULL,
  STATUS_ID SERIAL REFERENCES WANTED_STATUS(ID) NOT NULL,
  EXECUTOR_NINJA_ID SERIAL REFERENCES NINJA(ID) NOT NULL,
  DESCRIPTION VARCHAR (255) NOT NULL,
  DATE_OF_SEARCH_START DATE NOT NULL,
  DATE_OF_CAPTURE DATE NOT NULL

);

CREATE TABLE WANTED_STATUS (
    ID SERIAL PRIMARY KEY,
    TYPE VARCHAR(225) NOT NULL
);

CREATE TABLE NINJA_RANK (
    ID SERIAL PRIMARY KEY,
    TYPE VARCHAR(225)
);