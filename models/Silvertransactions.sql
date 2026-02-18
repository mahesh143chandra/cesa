{{ config(materialized='table')}}



select a.*,b.store_code,b.store_name,b.store_type,b.address_line1,b.city,b.state,b.postcode,b.country,b.opened_date,c.first_name,c.last_name,c.gender
,c.date_of_birth,c.email,c.phone,c.loyalty_tier,d.first_name as EmpFirstName,d.last_name as EmpLastName,d.job_title,d.hire_date 
from {{ref('Bronzetransactions')}} a
left join {{ref('Bronzestores')}} b on b.store_id=a.store_id
left join {{ref('Bronzecustomers')}} c on c.customer_id=a.customer_id
left join {{ref('Bronzeemployees')}} d on d.employee_id=a.employee_id