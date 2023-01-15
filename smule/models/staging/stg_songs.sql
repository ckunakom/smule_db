with source as (
    select * from {{ source('smule_data','songs') }}
),

rename as (
    select 
        source.arr_key song_key,
        source.title,
        source.artist,
        sourc.cover_url
    from source
)

select * from rename