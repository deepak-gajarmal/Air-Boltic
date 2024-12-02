SELECT
    airplane_id,
    airplane_model,
    manufacturer as "airplane_manufacturer"
FROM {{ ref('stg_planes') }};
