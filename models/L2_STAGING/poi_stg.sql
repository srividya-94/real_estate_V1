{{ config(
    database='DBT_TEST',
    schema='L2_STAGING'
) }}

WITH poi_index AS (
    SELECT 
        poiar.POI_ID,
        poi.POI_NAME,
        poiar.ADDRESS_ID,
        poi.PHONES
    FROM 
        US_REAL_ESTATE.CYBERSYN.POINT_OF_INTEREST_ADDRESSES_RELATIONSHIPS poiar
    JOIN 
        US_REAL_ESTATE.CYBERSYN.POINT_OF_INTEREST_INDEX poi
    ON 
        poiar.POI_ID = poi.POI_ID
)
SELECT * FROM poi_index