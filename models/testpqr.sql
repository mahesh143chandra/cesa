

{{ config(materialized='table',schema='stg',pre_hook=["{{set_catalog(var('cat2'))}}"])}}

{% set pid=1%}
select {{add(1,2)}} as ggg,* from {{ source('default_src','products')}}
where product_id={{pid}}  
or product_id={{var('pid')}}
