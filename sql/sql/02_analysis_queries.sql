SELECT platform, 
	AVG(views) AS avg_views,
    AVG(likes) AS avg_likes,
    AVG(comments) AS avg_comments
FROM social_media_posts GROUP BY platform;

-- Result:
--platform	   avg_views	 avg_likes	 avg_comments
--TikTok	   2515015.402	244206.7198	 24778.6968
--YouTube	   2545648.399	258314.0023	 25321.3905
--Twitter	   2506004.586	245880.1188	 24456.8571
--Instagram    2404079.878	257118.2178	 24958.1139


SELECT content_type,
	AVG(likes) AS avg_likes,
    AVG(shares) AS avg_shares
FROM social_media_posts GROUP BY content_type;

-- Result:
--content_type	avg_likes	avg_shares
--Video			254768.9239	50614.3865
--Shorts		247926.202	49593.9543
--Post			252784.1747	50164.1981
--Live Stream	248811.6164	49921.9602
--Tweet			249384.4701	51427.4545
--Reel			255011.069	51357.868


SELECT hashtag,
	SUM(views) AS total_views
FROM social_media_posts GROUP BY hashtag ORDER BY total_views DESC LIMIT 10;

-- Result:
hashtag	total_views
#Fitness	1393273574
#Education	1328894615
#Music	1266398079
#Challenge	1242826928
#Comedy	1237321563
#Tech	1235543295
#Dance	1213891935
#Gaming	1197834795
#Fashion	1181866511
#Viral	1172480925


SELECT region,
	AVG(likes+comments+shares) AS avg_engagement
FROM social_media_posts GROUP BY region ORDER BY avg_engagement DESC;

-- Result:
--region	avg_engagement
--Japan		332977.2061
--Canada	331679.7857
--Australia	330202.2043
--UK		328593.3184
--India		326491.081
--Brazil	323449.8331
--USA		323056.8567
--Germany	318338.6696


SELECT 
	DAYNAME(post_date) AS day,
    AVG(likes) AS avg_likes
FROM social_media_posts GROUP BY day ORDER BY avg_likes DESC;

-- Result:
--day		avg_likes	
--Wednesday	255894.5666
--Friday	254287.6749
--Thursday	253876.0859
--Tuesday	252089.2151
--Sunday	251463.0499
--Monday	251206.188
--Saturday	241155.2208

