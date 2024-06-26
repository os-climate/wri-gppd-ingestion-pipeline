{{
  config(
    materialized = 'view',
    view_security = 'invoker'
  )
}}

with source_data as (
   select gppd_idnr,name,country,country_long,latitude,longitude,capacity_mw, year_of_capacity_data,
    primary_fuel,other_fuel1,other_fuel2,other_fuel3,commissioning_year,owner
    from osc_datacommons_dev.wri_gppd.gppd_source
)

select * from source_data
