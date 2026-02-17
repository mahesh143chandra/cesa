{{ config(materialized='table') }}


select * from workspace.default.promotions
