with address_console AS(
select a.* , b.* from {{( 'L1_LANDING.point_of_interests_addresses_relationships' )}} a 
join {{( 'L1_LANDING.US_ADDRESSES' )}} b on a.ADDRESS_ID = b.ADDRESS_ID)
select * from address_console