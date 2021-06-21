CREATE DATABASE LIBRARY_CARD_CATALOG COMMENT = 'Essentials Lesson 9 ';

USE DATABASE LIBRARY_CARD_CATALOG;

CREATE OR REPLACE TABLE AUTHOR (
   AUTHOR_UID NUMBER 
  ,FIRST_NAME VARCHAR(50)
  ,MIDDLE_NAME VARCHAR(50)
  ,LAST_NAME VARCHAR(50)
)

INSERT INTO AUTHOR(AUTHOR_UID,FIRST_NAME,MIDDLE_NAME,LAST_NAME)
VALUES
(1, 'Fiona', '','Macdonald'),
(2, 'Gian','Paulo','Faleschini');
