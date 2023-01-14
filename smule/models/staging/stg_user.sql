with source as (

    select * from {{ source('smule_data','favorite')}}

)

select * from source