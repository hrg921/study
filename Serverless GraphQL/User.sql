CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    handle VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    followers_count INT NOT NULL,
    friends_count INT NOT NULL,
    favourites_count INT NOT NULL,
    following VARCHAR NOT NULL
);