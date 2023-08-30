{{ config(
    materialized='table',
    description='A fact table containing order information.'
) }}

CREATE OR REPLACE TABLE my_schema.orders_fact AS (
    SELECT
        o_orderkey AS order_id,
        o_custkey AS customer_id,
        o_orderdate AS order_date,
        o_totalprice AS order_total,
        o_shipaddress AS shipping_address,
        o_shipcity AS shipping_city,
        o_shipstate AS shipping_state,
        o_shipzip AS shipping_zip
    FROM
        tpch_sf1.orders
);