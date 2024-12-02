WITH trip_base AS (
    SELECT
        t.trip_id,
        t.airplane_id AS plane_id,
        t.origin_city AS origin,
        t.destination_city AS destination,
        TIMESTAMPDIFF(MINUTE, t.start_timestamp, t.end_timestamp) AS duration_minutes,
        CAST(t.start_timestamp AS DATE) AS trip_date
    FROM {{ ref('silver_trips') }} t
),

trip_metrics AS (
    SELECT
        o.trip_id,
        COUNT(o.order_id) AS seats_filled,      
        SUM(o.price) AS revenue                 
    FROM {{ ref('silver_orders') }} o
    GROUP BY o.trip_id
)

SELECT
    tb.trip_id,
    tb.plane_id,                                
    o.customer_id,                              
    tb.origin,
    tb.destination,
    tm.seats_filled,
    tm.revenue,
    tb.trip_date,
    tb.duration_minutes
FROM trip_base tb
LEFT JOIN trip_metrics tm ON tb.trip_id = tm.trip_id
LEFT JOIN {{ ref('dim_customers') }} o ON tm.trip_id = o.customer_id;  
