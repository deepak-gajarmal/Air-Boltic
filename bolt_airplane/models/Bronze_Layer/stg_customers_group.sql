SELECT
    id,
    group_name,
    group_type,
    registry_number
FROM {{ source('raw', 'customer_group') }};
