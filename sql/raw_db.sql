-- users
select owner.account_id, owner.handle, owner.is_vip from my-smule-habitat.ds_matcha.favorite
union distinct
select o.account_id, o.handle, o.is_vip from my-smule-habitat.ds_matcha.favorite, unnest(other_performers) as o


-- songs
select distinct arr_key, title, artist, cover_url
from my-smule-habitat.ds_matcha.favorite

-- performances_stat
select key,stats.total_performers, stats.total_listens,
stats.total_loves,stats.total_comments, stats.total_gifts
from my-smule-habitat.ds_matcha.favorite

-- performances
select key, ensemble_type, web_url, media_url,
app_uid, performed_by, arr_key,
other_performers, created_at, expire_at, closed,
child_count, message
from my-smule-habitat.ds_matcha.favorite
