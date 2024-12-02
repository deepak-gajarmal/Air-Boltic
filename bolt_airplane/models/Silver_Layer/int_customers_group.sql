SELECT
    id as "group_id",
    group_name,
    group_type,
    registry_number
FROM {{ ref('stg_customers_group') }};
