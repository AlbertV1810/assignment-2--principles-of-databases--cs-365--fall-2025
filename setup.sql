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

INSERT INTO passwords (website_name, url, password, comment) VALUES
('MY SQL', 'https://mysql.com', AES_ENCRYPT('stingPass1', 'secretKey'), 'Main DB account'),
('Hartford Portal', 'http://hartford.edu', AES_ENCRYPT('kimPass2', 'secretKey'), 'School login'),
('GitHub', 'https://github.com', AES_ENCRYPT('gitSecure3', 'secretKey'), 'Code repo login'),
('Netflix', 'http://netflix.com', AES_ENCRYPT('streamPass4', 'secretKey'), 'Streaming account'),
('Spotify', 'https://spotify.com', AES_ENCRYPT('musicVibes5', 'secretKey'), 'Music app'),
('Reddit', 'http://reddit.com', AES_ENCRYPT('redditBuzz6', 'secretKey'), 'Forum login'),
('Amazon', 'https://amazon.com', AES_ENCRYPT('shopPrime7', 'secretKey'), 'Shopping account'),
('Twitter', 'http://twitter.com', AES_ENCRYPT('tweetSafe8', 'secretKey'), 'Social media'),
('Stack Overflow', 'http://stackoverflow.com', AES_ENCRYPT('codeHelp9', 'secretKey'), 'Programming Q&A site'),
('LinkedIn', 'https://linkedin.com', AES_ENCRYPT('careerTrack10', 'secretKey'), 'Professional profile');
