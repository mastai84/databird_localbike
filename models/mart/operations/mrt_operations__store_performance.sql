select
    o.store_id,
    s.store_name,
    sum(o.order_id) as total_orders,
    sum(o.total_item_quantity) as total_items_quantity,
    avg(o.total_item_quantity) as average_item_quantity,
    sum(o.order_amount) as total_order_item_amount,
    avg(o.order_amount) as average_order_amount,
    sum(distinct s.product_id) as total_distinct_products_available

from {{ ref("int_databird_localbike__order") }} o
left join {{ ref("int_databird_localbike__stocks") }} s on o.store_id = s.store_id
group by store_id, store_name
