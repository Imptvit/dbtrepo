select *
from {{ ref('I_SAP_ENT_LCTRTV_StagingLoad2') }} as a
join {{ref('I_SAP_ENT_LCTRTV_StagingLoad')}} as b
on (a.id = b.id)
where id = 1
