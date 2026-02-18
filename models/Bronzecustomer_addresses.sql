{{ config(materialized='table') }}


select * from {{ source('default_src','customer_addresses')}}


