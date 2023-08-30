{{ config(
    materialized='table',
    description='A dimension table containing customer information.'
) }}

CREATE OR REPLACE TABLE my_schema.customer_dimension AS (
    SELECT
        c_custkey AS customer_id,
        c_name AS customer_name,
        c_address AS customer_address,
        c_city AS customer_city,
        c_state AS customer_state,
        c_zip AS customer_zip
    FROM
        tpch_sf1.customer
);