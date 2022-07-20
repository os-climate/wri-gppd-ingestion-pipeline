{{ config(materialized='table') }}

with source_data as (
   select wepp_id, country, name, capacity_mw from osc_datacommons_dev.sandbox.gppd
)

select * from source_data