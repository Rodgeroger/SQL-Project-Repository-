CREATE TABLE HomePage_Videos (
	video_id int,
	title varchar(255),
	channel_name varchar(255),
	view_count int,
	like_count int,
	dislike_count int,
	category varchar(255),
	comments int,
	watched bit	
	duration TIME,
	release_time smalldatetime
	);

INSERT INTO HomePage_Videos (video_id, title, channel_name, view_count, like_count, dislike_count, category, comments, watched, duration, release_time)
VALUES (1, 'Revisiting Star Wars Battlefront 2 - Luke Reacts', 'Luke Stephens LIVE', 37309, 1400, 38, 'Gaming', 292, 0, '00:15:23', '2025-05-18 00:00')

INSERT INTO HomePage_Videos (video_id, title, channel_name, view_count, like_count, dislike_count, category, comments, watched, duration, release_time)
VALUES (2, 'The Cold & Calculated Murder Of Valeria Marquez | The Most Dangerous CJNG Enforcer | El Doble RR', 'Disturbed Reality', 2384, 251, 4, 'Horror', 63, 0, '00:15:24', '2025-05-18 00:00')

INSERT INTO HomePage_Videos (video_id, title, channel_name, view_count, like_count, dislike_count, category, comments, watched, duration, release_time)
VALUES (3, 'Schaffrillas Productions: The Inhibitor Chip Apologist', 'J.J. Plagiarisms', 30000, 1000, 97, 'Video Essay', 1234, 0, '01:04:20', '2024-10-19 00:00')

INSERT INTO HomePage_Videos (video_id, title, channel_name, view_count, like_count, dislike_count, category, comments, watched, duration, release_time)
VALUES (4, '3 Disturbing TRUE Suburban Horror Stories', 'Mr. Nightmare', 21557, 3000, 0, 'Horror', 523, 0, '00:21:54', '2025-05-20 00:00')

INSERT INTO HomePage_Videos (video_id, title, channel_name, view_count, like_count, dislike_count, category, comments, watched, duration, release_time)
VALUES (5, 'The FBI "Scam" That Caught 7 Congressmen [Atrioc Reacts]', 'Atrioc VODs', 16000, 383, 2, 'React', 46, 1, '02:44:47', '2025-05-18 00:00')

INSERT INTO HomePage_Videos (video_id, title, channel_name, view_count, like_count, dislike_count, category, comments, watched, duration, release_time)
VALUES (6, 'BATTLEFRONT IS SO BACK', 'NLTILIA', 882, 0, 0, 'Gaming', 13, 0, '00:12:14', '2025-05-19 00:00')

## Basic Video Summary
SELECT 
    COUNT(*) AS total_videos,
    SUM(view_count) AS total_views,
    SUM(like_count) AS total_likes,
    SUM(dislike_count) AS total_dislikes,
    SUM(comments) AS total_comments
FROM HomePage_Videos;

## Average Metrics per Video
SELECT 
    AVG(view_count) AS avg_views,
    AVG(like_count) AS avg_likes,
    AVG(dislike_count) AS avg_dislikes,
    AVG(comments) AS avg_comments
FROM HomePage_Videos;

## Top 3 Most Viewed Videos
SELECT 
    title,
    channel_name,
    view_count
FROM HomePage_Videos
ORDER BY view_count DESC
LIMIT 3;

## Most Liked Video by Category
SELECT category, title, like_count
FROM HomePage_Videos h1
WHERE like_count = (
    SELECT MAX(like_count) 
    FROM HomePage_Videos h2 
    WHERE h2.category = h1.category
);

## Watched vs. Not Watched Count
SELECT 
    watched,
    COUNT(*) AS video_count
FROM HomePage_Videos
GROUP BY watched;

## Average Duration per Category
SELECT 
    category,
    AVG(DATEDIFF(SECOND, 0, duration)) / 60.0 AS avg_duration_minutes
FROM HomePage_Videos
GROUP BY category;

## New Videos Released in the Last 7 Days
SELECT 
    title,
    release_time
FROM HomePage_Videos
WHERE release_time >= DATEADD(DAY, -7, GETDATE());

## Like-to-Dislike Ratio
SELECT 
    title,
    CASE 
        WHEN dislike_count = 0 THEN 'No Dislikes'
        ELSE CAST(like_count AS FLOAT) / dislike_count
    END AS like_dislike_ratio
FROM HomePage_Videos;

## Category Popularity by Total Views
SELECT 
    category,
    SUM(view_count) AS total_views
FROM HomePage_Videos
GROUP BY category
ORDER BY total_views DESC;

