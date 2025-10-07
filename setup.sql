CREATE DATABASE passwords;
USE passwords;

CREATE TABLE users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR (50),
  username VARCHAR (50),
  email VARCHAR(100)
);

CREATE TABLE passwords (
  password_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  website_name VARCHAR(100),
  url VARCHAR (255),
  password VARBINARY (255),
  comment TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO users (first_name, last_name, username, email) VALUES
('Gordon', 'Sumner', 'sting123', 'sting@thepolice.com'),
('Kim', 'Thayil', 'kimrock', 'kim@soundgarden.com'),
('Saul', 'Hudson', 'slashman', 'slash@gnr.com'),
('Emily', 'Kokal', 'emkokal', 'emily@warpaint.com'),
('Mike', 'Inez', 'inezbass', 'mike@aic.com'),
('Chris', 'Cornell', 'chrisc', 'chris@soundgarden.com'),
('Jenny', 'Lindberg', 'jennyl', 'jenny@warpaint.com'),
('Jerry', 'Cantrell', 'jerryc', 'jerry@aic.com'),
('Axl', 'Rose', 'axlrose', 'axl@gnr.com'),
('Andy', 'Summers', 'andys', 'andy@thepolice.com');

INSERT INTO passwords (user_id, website_name, url, password, comment) VALUES
(1, 'MY SQL', 'https://mysql.com', AES_ENCRYPT('stingPass1', 'secretKey'), 'Main DB account'),
(2, 'Hartford Portal', 'http://hartford.edu', AES_ENCRYPT('kimPass2', 'secretKey'), 'School login'),
(3, 'GitHub', 'https://github.com', AES_ENCRYPT('gitSecure3', 'secretKey'), 'Code repo login'),
(4, 'Netflix', 'http://netflix.com', AES_ENCRYPT('streamPass4', 'secretKey'), 'Streaming account'),
(5, 'Spotify', 'https://spotify.com', AES_ENCRYPT('musicVibes5', 'secretKey'), 'Music app'),
(6, 'Reddit', 'http://reddit.com', AES_ENCRYPT('redditBuzz6', 'secretKey'), 'Forum login'),
(7, 'Amazon', 'https://amazon.com', AES_ENCRYPT('shopPrime7', 'secretKey'), 'Shopping account'),
(8, 'Twitter', 'http://twitter.com', AES_ENCRYPT('tweetSafe8', 'secretKey'), 'Social media'),
(9, 'Stack Overflow', 'http://stackoverflow.com', AES_ENCRYPT('codeHelp9', 'secretKey'), 'Programming Q&A site'),
(10, 'LinkedIn', 'https://linkedin.com', AES_ENCRYPT('careerTrack10', 'secretKey'), 'Professional profile');
