

{{ config(materialized='table') }}


select * from {{ source('default_src','transaction_items')}}

