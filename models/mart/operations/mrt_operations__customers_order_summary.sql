select 
customer_id,
count(distinct order_id) as number_of_orders,
count(distinct store_id) as number_of_stores,
sum(total_item_quantity) as total_item_ordered_quantity,
sum(order_amount) as total_orders_amount
from {{ ref("int_databird_localbike__order")}} as o
group by customer_id