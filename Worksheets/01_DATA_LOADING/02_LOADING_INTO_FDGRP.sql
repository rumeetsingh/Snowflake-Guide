INSERT INTO "USDA_NUTRIENT_STDREF"."PUBLIC"."FD_GROUP"

SELECT
REPLACE(FDGRP_CD,'~') AS FDGRP_CD,
REPLACE(FDGRP_DESC,'~') AS FDGRP_DESC
FROM "USDA_NUTRIENT_STDREF"."PUBLIC"."FD_GROUP_INGEST"
