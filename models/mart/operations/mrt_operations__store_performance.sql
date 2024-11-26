select store_id, sum(order_id) as total_orders

from {{ ref("int_databird_localbike__order") }}
group by store_id
