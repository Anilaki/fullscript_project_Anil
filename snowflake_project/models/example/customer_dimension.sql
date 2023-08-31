{{ config(
    materialized='table',
    description='A fact table containing order information.'
) }}

SELECT
    c_custkey AS customer_id,
    c_name AS customer_name,
    c_address AS customer_address,
    c_nationkey AS customer_nationkey,
    c_phone AS customer_phnoe,
    c_acctbal AS customer_balance
FROM
    snowflake_sample_data.tpch_sf1.customer