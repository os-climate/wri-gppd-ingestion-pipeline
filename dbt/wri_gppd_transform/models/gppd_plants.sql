{{ config(materialized='table') }}

with source_data as (
   select gppd_idnr,name,country,country_long,latitude,longitude,capacity_mw, year_of_capacity_data, 
    primary_fuel,other_fuel1,other_fuel2,other_fuel3,commissioning_year,owner 
    from osc_datacommons_dev.sandbox.gppd
)

select * from source_data