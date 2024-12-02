SELECT
    manufacturer,
    model_name,
    max_seats,
    max_weight,
    max_distance,
    engine_type
FROM {{ ref('int_plane_models') }};
