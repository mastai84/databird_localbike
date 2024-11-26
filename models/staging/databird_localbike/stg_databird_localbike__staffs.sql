select
        staff_id,
        concat(first_name, ' ', last_name) as staff_full_name,
        first_name as staff_first_name,
        last_name as staff_last_name,
        email as staff_email,
        phone as staff_phone,
        active as staff_active,
        store_id,
        manager_id

from {{ source('databird_localbike', 'staffs') }}
