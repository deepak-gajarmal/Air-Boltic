SELECT
    manufacturer,
    model_name,
    max_seats,
    max_weight_kg as "max_weight",
    max_distance_km as "max_distance",
    engine_type
FROM {{ ref('stg_plane_models') }};
