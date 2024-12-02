# ✈️ Air-Boltic ✈️

This repository contains the dbt implementation for the Air Boltic analytics case study. The project demonstrates a structured approach to building and managing a robust data model using a Medallion Architecture to enable monitoring and self-service analytics.

1. **Layers**:
* **Bronze**: Raw data ingestion from sources like S3.
* **Silver**: Cleaned and normalized data ready for analytical transformations.
* **Gold**: Aggregated and business-ready datasets (fact and dimension tables) for reporting and insights.

2. dbt Implementation:
* Includes **schema.yml** files for metadata and testing.
* **sources.yml** files to define raw data sources.
* dbt models are organized into bronze, silver, and gold folders for layered transformations.

3. Additional Features
* **Testing**: Basic dbt tests for constraints like not_null, unique, and foreign key relationships.
* The model supports future data growth and integration of additional data sources using a normalized structure.
