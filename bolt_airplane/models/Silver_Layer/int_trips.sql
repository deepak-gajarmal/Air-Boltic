SELECT
    trip_id,
    airplane_id AS plane_id,
    origin_city AS origin,
    destination_city AS destination,
    start_timestamp,
    end_timestamp,
    TIMESTAMPDIFF(MINUTE, start_timestamp, end_timestamp) AS duration_minutes,
    CAST(start_timestamp AS DATE) AS trip_date
FROM {{ ref('stg_trips') }};
