SELECT
    trip_id,
    origin_city,
    destination_city,
    airplane_id,
    start_timestamp,
    end_timestamp
FROM {{ source('raw', 'trips') }};
