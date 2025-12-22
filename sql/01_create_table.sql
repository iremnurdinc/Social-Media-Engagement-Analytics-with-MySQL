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
