with
    managers as (
        select distinct manager_id, count(distinct staff_id) as number_of_staffs
        from {{ ref("stg_databird_localbike__staffs") }}
        where manager_id is not null
        group by manager_id
    )

select
    m.manager_id,
    s.staff_full_name as manager_full_name,
    s.staff_first_name as manager_first_name, 
    s.staff_last_name as manager_last_name,
    s.staff_email as manager_email,
    s.staff_phone as manager_phone,
    s.store_id as manager_store_id,
    m.number_of_staffs 
from managers m
left join {{ ref("stg_databird_localbike__staffs") }} s on m.manager_id = s.staff_id