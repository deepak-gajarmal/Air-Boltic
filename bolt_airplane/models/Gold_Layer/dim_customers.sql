SELECT
    customer_id,
    customer_group_id,
    first_name,
    last_name,
    email,
    phone_number
FROM {{ ref('int_customers') }} 

