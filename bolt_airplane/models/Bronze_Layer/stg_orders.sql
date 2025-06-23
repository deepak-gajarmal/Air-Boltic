SELECT
    order_id,
    trip_id
FROM {{ source('raw', 'order') }};
