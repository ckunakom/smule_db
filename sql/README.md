This is the sql code for inserting the data into tables.

Selecting attributes for the table
Lots of the data attributes are not very usable and are excluded. For example, the attributes are null at all times, or if they are a string of number that do not hold any meaning or do not make any sense.

Some of the data attributes  are almost a duplicate of one another. Those are excluded as well.

Some of the data attributes could have potentially stored the data, but given how flimsy the data was being extracted (no authentication needed or whatsoever), it makes sense why it has null as opposed to some data. 

For example: `private` might be an attribute that indicates whether the user has set the performance to private. Thankfully, that attribute is always a null in all the records. Otherwise, one would question if any of their supposed-to-be private performace is really private.

Here's an exmaple of a record:
    {
        "rec_id": null,
        "poi": null,
        "key": "55555555_77777777",
        "performance_key": "55555555_77777777",
        "join_link": null,
        "type": "audio",
        "title": "Some Song Name",
        "artist": "Some Artist",
        "message": "User's message",
        "created_at": "2222-01-01T00:00:00-00:00",
        "expire_at": null,
        "seed": false,
        "closed": false,
        "ensemble_type": "DUET",
        "child_count": 0,
        "app_uid": "sing_g/i",
        "arr_type": null,
        "arr_key": "22222222_44444444",
        "song_id": null,
        "song_length": null,
        "perf_status": "n",
        "artist_twitter": null,
        "media_url": "e:choco4cupcakes324nutella89yummycocoa+hojicha932latte84so12good/real23taro2boba9only+MacaronPistachio92oh9is0that04corecttly7spelled+End0fFaking",
        "video_media_url": null,
        "video_media_mp4_url": null,
        "visualizer_media_url": null,
        "cover_url": "song_cover.jpg",
        "web_url": "/recording/some-song-name/22222222_44444444",
        "song_info_url": null,
        "stats": {
            "total_performers": 2,
            "truncated_other_performers": "1",
            "total_listens": 20,
            "truncated_listens": "20",
            "total_loves": 1,
            "truncated_loves": "1",
            "total_comments": 2,
            "truncated_comments": "2",
            "total_commenters": 0,
            "total_gifts": 1,
            "truncated_gifts": "1"
        },
        "performed_by": "user_1",
        "performed_by_url": "/user_1",
        "owner": {
            "account_id": 000000000,
            "handle": "user_1",
            "pic_url": "fake.png",
            "price": 37.8,
            "discount": -122.4,
            "url": "/user_1",
            "is_vip": true,
            "is_verified": false,
            "verified_type": "unverified"
        },
        "other_performers": [
            {
                "account_id": 11111111,
                "handle": "user_2",
                "pic_url": "fake.jpg",
                "url": "/user_2",
                "is_vip": true,
                "is_verified": false,
                "verified_type": "unverified"
            }
        ],
        "duet": {
            "account_id": 854145468,
            "handle": "user_2",
            "pic_url": "fake.jpg",
            "url": "/user_2",
            "is_vip": true,
            "is_verified": false,
            "verified_type": "unverified"
        },
        "other": {
            "pic_url": "fake.jpg",
            "url": "/user_2",
            "verified_type": "unverified",
            "label": "user_2",
            "vip": true,
            "id": 854145468,
            "verified_urls": null
        },
        "featured": false,
        "rm": null,
        "private": false,
        "lyric_video": null,
        "lyrics": null,
        "segments": null
    }