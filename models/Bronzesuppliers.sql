{{ config(materialized='table') }}


select * from workspace.default.suppliers
