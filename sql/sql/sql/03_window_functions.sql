SELECT *
FROM (
    SELECT 
        platform,
        post_id,
        views,
        RANK() OVER (PARTITION BY platform ORDER BY views DESC) AS rank_in_platform
    FROM social_media_posts
) t
WHERE rank_in_platform <= 3;
