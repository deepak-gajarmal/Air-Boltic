SELECT
    order_id,                           
    trip_id,                            
    customer_id,                        
    CAST(booking_date AS DATE) AS booking_date,
    price,
    payment_status,
    CASE
        WHEN payment_status = 'Cancelled' THEN TRUE
        ELSE FALSE
    END AS cancellation_status            
FROM {{ ref('int_orders') }} ;
