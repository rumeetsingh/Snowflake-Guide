USE DATABASE LIBRARY_CARD_CATALOG;

-- Create the relationships table
-- this is sometimes called a "Many-to-Many table"
CREATE OR REPLACE TABLE BOOK_TO_AUTHOR
(  BOOK_UID NUMBER,
   AUTHOR_UID NUMBER
);

TRUNCATE TABLE BOOK_TO_AUTHOR;

--Insert rows of the known relationships
INSERT INTO BOOK_TO_AUTHOR(BOOK_UID,AUTHOR_UID)
VALUES
(1,1),
(1,2),
(2,3),
(3,4),
(4,5),
(5,6);

SELECT * FROM "LIBRARY_CARD_CATALOG"."PUBLIC"."BOOK_TO_AUTHOR";
