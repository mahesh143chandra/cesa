{% snapshot Dimcustomers %}

{{
    config(
        target_schema='cesadev',
        unique_key='customer_id',
        strategy='check',
        check_cols=[
            'first_name',
            'last_name',
            'email',
            'phone',
            'loyalty_tier',
            'is_active'
        ]
    )
}}

select *
from {{ref('Bronzecustomers')}}

{% endsnapshot %}