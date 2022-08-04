create or replace view OwnersComplete as (
select b.*,
(SELECT date_part('year'::text, age(CURRENT_DATE::timestamp with time zone, b.bdate::timestamp with time zone)) AS date_part) AS age

from owners b)


select * from alltransactions