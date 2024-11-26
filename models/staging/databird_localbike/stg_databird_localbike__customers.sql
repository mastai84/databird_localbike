select
    customer_id,
    concat(first_name, ' ', last_name) as customer_full_name,
    first_name as customer_first_name,
    last_name as customer_last_name,
    phone as customer_phone,
    email as customer_email,
    street as customer_street,
    city as customer_city,
    state as customer_state,
    zip_code as customer_zip_code

from {{ source("databird_localbike", "customers") }}
