USE noel-db;

CREATE TABLE users
(
  user_id     INT PRIMARY KEY AUTO_INCREMENT,
  user_name   VARCHAR(255),
  password    VARCHAR(255)
);

CREATE TABLE scores
(
    score_id INT PRIMARY KEY AUTO_INCREMENT,
    score    INT,
    user_id  INT
);

CREATE TABLE cities
(
    city_id    INT PRIMARY KEY AUTO_INCREMENT,
    city_name  VARCHAR(255),
    city_score INT
);

CREATE TABLE tokens
(
    token_id INT PRIMARY KEY AUTO_INCREMENT,
    token    VARCHAR(255),
    user_id  INT
);

INSERT INTO users
    (user_id, user_name, password)
VALUES
    (1, 'かな', 'knPass'),
    (2, 'まな', 'mnPass'),
    (3, 'こうた', 'ktPass'),
    (4, 'たけし', 'tkPass'),
    (5, 'かける', 'kkPass');
