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

--Result:
--platform	post_id	views	rank_in_platform
--Instagram	Post_1842	4997766	1
--Instagram	Post_2508	4992601	2
--Instagram	Post_2588	4990567	3
--TikTok	Post_3604	4997284	1
--TikTok	Post_2106	4979485	2
--TikTok	Post_3733	4975716	3
--Twitter	Post_651	4997429	1
--Twitter	Post_2578	4996111	2
--Twitter	Post_3784	4988828	3
--YouTube	Post_676	4999430	1
--YouTube	Post_2601	4999077	2
--YouTube	Post_1882	4995973	3
