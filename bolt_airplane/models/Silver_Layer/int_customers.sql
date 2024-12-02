SELECT
    customer_id,
    customer_group_id,
    SPLIT_PART(name, ' ', 1) AS first_name,
    COALESCE(SPLIT_PART(name, ' ', 2), '') AS last_name,
    email,
    phone_number
FROM {{ ref('stg_customers') }};
