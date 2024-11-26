select
        concat(store_id, '_', product_id) as stock_id,
        store_id,
        product_id,
        quantity as stock_quantity

    from {{ source('databird_localbike', 'stocks') }}
