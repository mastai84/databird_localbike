select 
oi.order_id,
oi.order_item_id,
oi.item_id,
o.customer_id,
o.order_status,
o.order_date,
o.store_id,
o.staff_id,
oi.product_id,
oi.item_quantity,
oi.total_order_item_amount

from {{ ref("stg_databird_localbike__order_items")}} as oi
left join {{ ref("stg_databird_localbike__orders")}} as o on oi.order_id = o.order_id