SELECT
    order_id,
    trip_id,
    customer_id
FROM {{ source('raw', 'order') }};
