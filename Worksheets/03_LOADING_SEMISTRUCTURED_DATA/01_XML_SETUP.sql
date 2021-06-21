USE DATABASE "LIBRARY_CARD_CATALOG";

CREATE OR REPLACE TABLE "LIBRARY_CARD_CATALOG"."PUBLIC"."AUTHOR_INGEST_XML" ("RAW_AUTHOR" VARIANT);

TRUNCATE TABLE "LIBRARY_CARD_CATALOG"."PUBLIC"."AUTHOR_INGEST_XML";

CREATE FILE FORMAT "LIBRARY_CARD_CATALOG"."PUBLIC".XML_FILE_FORMAT
TYPE = 'XML'
COMPRESSION = 'AUTO'
PRESERVE_SPACE = FALSE
STRIP_OUTER_ELEMENT = TRUE
DISABLE_SNOWFLAKE_DATA = FALSE
DISABLE_AUTO_CONVERT = FALSE
IGNORE_UTF8_ERRORS = FALSE;
