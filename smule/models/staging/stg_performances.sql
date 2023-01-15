with source as (
    select * from {{ source('smule_data','performances') }}
),

source_stats as (
    select * from {{ source('smule_data','performance_stats') }}
),

source_users as (
    select * from {{ source('smule_data', 'performers') }}
),

rename as (
    select
        source.key performance_key,
        source.ensemble_type,
        source.web_url,
        source.app_uid app_uid,
        source.arr_key song_key,
        source.created_at created_dtts,
        source.expire_at expired_dtts,
        source.closed is_closed,
        source.child_count join_count,
        source.message description,
        source_users.performed_by,
        source_users.joined_by,
        source_stats.total_performers,
        source_stats.total_listens,
        source_stats.total_loves,
        source_stats.total_comments,
        source_stats.total_gifts
    from source
    inner join source_stats on source.key = source_detail.key
    inner join source_users on source.key = source_users.key
)

select * from rename