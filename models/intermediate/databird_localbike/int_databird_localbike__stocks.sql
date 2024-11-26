select
    stocks.stock_id,
    stocks.store_id,
    stores.store_name,
    stocks.product_id,
    products.product_name,
    stocks.stock_quantity
from {{ ref("stg_databird_localbike__stocks")}} stocks
left join {{ ref("stg_databird_localbike__stores")}} stores on stocks.store_id = stores.store_id
left join {{ ref("stg_databird_localbike__products")}} products on stocks.product_id = products.product_id