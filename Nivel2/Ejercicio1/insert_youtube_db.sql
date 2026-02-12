
INSERT INTO users (email, password_hash, username, birth_date, gender, country, postal_code)
VALUES ('alice@test.com','hash1','alice','1990-01-01','female','MEXICO','1001');

INSERT INTO channels (user_id, name, description, created_at)
VALUES (1, 'Alice Channel', 'Tech videos', NOW());

INSERT INTO videos (user_id, title, description, file_name, file_size_mb, duration_seconds, thumbnail, visibility, published_at)
VALUES (1, 'First Video', 'Demo video', 'video1.mp4', 100.5, 300, 'thumb1.jpg', 'public', NOW());

INSERT INTO tags (name) VALUES ('mysql'), ('database'), ('tutorial');

INSERT INTO video_tags (video_id, tag_id)
VALUES 
    (1, 1),
    (1, 2),
    (1, 3);

INSERT INTO playlists (user_id, name, visibility, created_at)
VALUES (1, 'My Favorites', 'public', NOW());

INSERT INTO playlist_videos (playlist_id, video_id)
VALUES (1, 1);