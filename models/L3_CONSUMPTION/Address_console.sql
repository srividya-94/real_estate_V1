-- with address_console AS(
-- select a.* , b.* from {{( 'L1_LANDING.point_of_interests_addresses_relationships' )}} a 
-- join {{( 'L1_LANDING.US_ADDRESSES' )}} b on a.ADDRESS_ID = b.ADDRESS_ID)
-- select * from address_console

with address_console AS(
select b.* , a.poi_id,a.RELATIONSHIP_TYPE from US_REAL_ESTATE.CYBERSYN.POINT_OF_INTEREST_ADDRESSES_RELATIONSHIPS  a 
join  US_REAL_ESTATE.CYBERSYN.US_ADDRESSES b on a.ADDRESS_ID = b.ADDRESS_ID)
select * from address_console