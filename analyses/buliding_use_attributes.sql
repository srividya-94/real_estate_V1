-- select b.geo_id, a.building_use from US_REAL_ESTATE.CYBERSYN.US_REAL_ESTATE_ATTRIBUTES a    
-- join US_REAL_ESTATE.CYBERSYN.US_REAL_ESTATE_TIMESERIES b
-- on a.variable_name = b.variable_name group by a.building_use , b.geo_id order by building_use;

select b.geo_id, a.building_use from {{('US_REAL_ESTATE_ATTRIBUTES')}} a    
join {{('us_real_estate_timeseries')}} b
on a.variable_name = b.variable_name group by a.building_use , b.geo_id order by building_use