SELECT
    airplane_id,
    airplane_model
FROM {{ source('raw', 'aeroplane') }};
