{{ config(materialized='table') }}


select * from workspace.default.product_promotions
