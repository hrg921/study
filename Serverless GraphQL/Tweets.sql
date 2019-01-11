CREATE TABLE Tweets (
    tweet_id INT PRIMARY KEY AUTO_INCREMENT,
    tweet TEXT NOT NULL,
    retweeted BOOLEAN NOT NULL,
    retweet_count INT NOT NULL,
    favorited BOOLEAN NOT NULL,
    created_at BOOLEAN NOT NULL,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);