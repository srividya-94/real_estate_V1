{{ config(materialized='table') }}
WITH NAICS_CODE_INDEX AS (
    SELECT * 
    FROM US_REAL_ESTATE.CYBERSYN.NAICS_CODE_INDEX
)
select * from NAICS_CODE_INDEX
