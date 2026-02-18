{{ config(materialized='table')}}



select c.promotion_id,b.*,c.promotion_name,c.discount_type,c.discount_value
 from {{ref('Bronzeproduct_promotions')}} a
join {{ref('BronzeProducts')}} b on a.product_id=b.product_id
join {{ref('Bronzepromotions')}} c on a.promotion_id=c.promotion_id