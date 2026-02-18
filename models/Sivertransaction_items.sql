{{ config(materialized='table')}}

select a.transaction_id,a.line_number,b.product_name,a.quantity,a.unit_price,c.promotion_name,c.discount_type,c.discount_value,a.discount_amount,a.net_amount,a.tax_amount
from {{ref('Bronzetransaction_items')}} a
left join {{ref('BronzeProducts')}} b on a.product_id=b.product_id
left join {{ref('Bronzepromotions')}} c on c.promotion_id=a.promotion_id


