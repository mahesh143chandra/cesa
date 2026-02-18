{{ config(materialized='table')}}


select c.store_code,c.store_name,c.store_type,b.product_name,b.unit_cost from {{ref('Bronzeinventory')}} a
left join {{ref('BronzeProducts')}} b on b.product_id=a.product_id
left join {{ref('Bronzestores')}} c on c.store_id=a.store_id