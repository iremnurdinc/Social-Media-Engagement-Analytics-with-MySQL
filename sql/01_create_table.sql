CREATE DATABASE social_media_analysis;
USE social_media_analysis;

CREATE TABLE social_media_posts (
    post_id VARCHAR(50) PRIMARY KEY,
    post_date DATE,
    platform VARCHAR(50),
    hashtag VARCHAR(100),
    content_type VARCHAR(50),
    region VARCHAR(50),
    views INT,
    likes INT,
    shares INT,
    comments INT,
    engagement_level VARCHAR(20)
);


DESC social_media_posts;

--Result:
--Field            	Type    	   Null	    Key	    Default	    Extra
--post_id	        varchar(50)	   NO	    PRI	    NULL	
--post_date	        date	       YES		        NULL	
--platform	        varchar(50)	   YES		        NULL	
--hashtag	        varchar(100)   YES		        NULL	
--content_type	    varchar(50)	   YES		        NULL	
--region	        varchar(50)	   YES		        NULL	
--views	            int	YES		   NULL	
--likes	            int	YES		   NULL	
--shares	        int	YES		   NULL	
--comments	        int	YES		   NULL	
--engagement_level	varchar(20)	   YES		        NULL	


CREATE VIEW engagement_view AS
SELECT *,
       (likes + comments + shares) AS engagement_score
FROM social_media_posts;


