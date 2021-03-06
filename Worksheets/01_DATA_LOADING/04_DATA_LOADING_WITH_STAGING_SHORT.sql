CREATE TABLE LANGDESC (
  Factor_Code VARCHAR(5),
  Description VARCHAR(140)
)

SELECT REPLACE($1,'~') AS Factor_Code,REPLACE($2,'~') AS Description
FROM @MY_S3_BUCKET/load/LANGDESC.txt
(FILE_FORMAT => USDA_FILE_FORMAT)


COPY INTO LANGDESC(Factor_Code,Description)
FROM
(
SELECT REPLACE($1,'~'),REPLACE($2,'~')
FROM @MY_S3_BUCKET/load/LANGDESC.txt
)
FILE_FORMAT = ( FORMAT_NAME='USDA_FILE_FORMAT' )
