SELECT
    customer_id,
    customer_group_id,
    name,
    email,
    phone_number
FROM {{ source('raw', 'customer') }};
