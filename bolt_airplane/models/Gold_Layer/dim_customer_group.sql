SELECT
    group_id,
    group_name,
    group_type,
    registry_number
FROM {{ ref('int_customers_group') }};
