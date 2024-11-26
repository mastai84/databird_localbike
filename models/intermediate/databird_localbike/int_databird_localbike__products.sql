select 
p.product_id,
p.product_name,
b.brand_name,
c.category_name

from {{ ref("stg_databird_localbike__products")}} as p
left join {{ ref("stg_databird_localbike__categories")}} as c on p.category_id = c.category_id
left join {{ ref("stg_databird_localbike__brands")}} as b on p.brand_id = b.brand_id 