
-- Use the `ref` function to select from other models

select *
from {{ ref('my_first_dbt_model') }} as a
join {{ref('my_second_dbt_model')}} as b
on (a.id = b.id)
where id = 1
