SELECT
    order_id,
    trip_id,
    customer_id,
    seat_no,
    price,
    payment_status
FROM {{ ref('stg_orders') }};
