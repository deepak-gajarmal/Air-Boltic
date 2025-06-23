SELECT
    order_id,
    trip_id,
    customer_id,
    price
FROM {{ source('raw', 'order') }};
