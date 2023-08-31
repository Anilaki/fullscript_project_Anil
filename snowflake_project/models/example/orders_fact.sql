{{ config(
    materialized='table',
    description='A fact table containing order information.'
) }}

SELECT
    o_orderkey AS order_id,
    o_custkey AS customer_id,
    o_orderdate AS order_date,
    o_totalprice AS order_total,
    o_orderstatus AS order_status,
    o_orderpriority AS order_priority
FROM
    snowflake_sample_data.tpch_sf1.orders