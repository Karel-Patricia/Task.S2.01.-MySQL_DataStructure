-- Ver usuarios y sus canales
SELECT 
    u.user_id,
    u.username,
    u.email,
    c.channel_id,
    c.name AS channel_name
FROM users u
LEFT JOIN channels c 
    ON u.user_id = c.user_id;

-- Listar vídeos con su autor
SELECT 
    v.video_id,
    v.title,
    v.visibility,
    v.views,
    u.username AS author
FROM videos v
JOIN users u 
    ON v.user_id = u.user_id;

-- comprobar etiquetas en un vídeo
SELECT 
    v.title,
    t.name AS tag
FROM video_tags vt
JOIN videos v ON vt.video_id = v.video_id
JOIN tags t ON vt.tag_id = t.tag_id
WHERE v.video_id = 1;

-- crear videos
SELECT 
    p.name AS playlist,
    v.title
FROM playlist_videos pv
JOIN playlists p ON pv.playlist_id = p.playlist_id
JOIN videos v ON pv.video_id = v.video_id;



