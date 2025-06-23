SELECT
    order_id,
    trip_id,
    customer_id,
    seat_no,
    price
FROM {{ source('raw', 'order') }};
