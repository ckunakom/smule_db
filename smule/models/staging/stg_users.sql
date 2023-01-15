with source as (
    select * from {{ source('smule_data','users') }}
),

rename as (
    select
        account_id,
        handle account_name,
        is_vip
    from source
)

select * from rename