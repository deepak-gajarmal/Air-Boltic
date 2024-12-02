SELECT
    airplane_id,
    airplane_model,
    airplane_manufacturer
FROM {{ ref('int_planes') }};
