

{{ config(materialized='table', tags=['Finance']) }}


select * from {{ source('default_src','products')}}


