{{ config(materialized='table', tags =["finance"]) }}


select * from {{ source('default_src','inventory')}}


