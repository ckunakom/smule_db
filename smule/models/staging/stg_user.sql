with source as (

    select owner from {{ source('ds_matcha','favortie')}}

)

select * from source