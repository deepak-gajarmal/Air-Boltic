SELECT
    model_name,
    max_seats,
    max_weight_kg,
    max_distance_km,
    engine_type
FROM {{ source('raw', 'aeroplane_model') }};
