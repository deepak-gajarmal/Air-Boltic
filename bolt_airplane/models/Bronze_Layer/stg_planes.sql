SELECT
    airplane_id,
    airplane_model,
    manufacturer
FROM {{ source('raw', 'aeroplane') }};
