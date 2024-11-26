select order_id, 
item_id, 
product_id, 
quantity, 
list_price, 
discount

from {{ source("databird_localbike", "order_items") }}
