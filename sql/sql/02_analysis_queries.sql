SELECT platform, 
	AVG(views) AS avg_views,
    AVG(likes) AS avg_likes,
    AVG(comments) AS avg_comments
FROM social_media_posts GROUP BY platform;

SELECT content_type,
	AVG(likes) AS avg_likes,
    AVG(shares) AS avg_shares
FROM social_media_posts GROUP BY content_type;

SELECT hashtag,
	SUM(views) AS total_views
FROM social_media_posts GROUP BY hashtag ORDER BY total_views DESC LIMIT 10;

SELECT region,
	AVG(likes+comments+shares) AS avg_engagement
FROM social_media_posts GROUP BY region ORDER BY avg_engagement DESC;

SELECT 
	DAYNAME(post_date) AS day,
    AVG(likes) AS avg_likes
FROM social_media_posts GROUP BY day ORDER BY avg_likes DESC;
