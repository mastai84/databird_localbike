select
    o.order_id,
    o.order_status,
    o.customer_id,
    o.order_date,
    o.store_id,
    o.staff_id,
    sum(o.item_quantity) as total_item_quantity,
    count(distinct o.item_id) as total_distinct_items,
    sum(o.total_order_item_amount) as order_amount
from {{ ref("int_databird_localbike__order_items") }} as o
left join
    {{ ref("stg_databird_localbike__customers") }} as c on o.customer_id = c.customer_id
group by order_id, order_status, customer_id, order_date, store_id, staff_id
