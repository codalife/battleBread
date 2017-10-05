DROP DATABASE IF EXISTS battlebread;

CREATE DATABASE battlebread;

USE battlebread;

CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  username varchar(50) NOT NULL,
  password varchar(50) NOT NULL,
  wins int NOT NULL DEFAULT 0,
  losses int NOT NULL DEFAULT 0,
  playerLevel int NOT NULL DEFAULT 1,
  avatarUrl varchar(100) DEFAULT 'http://oi40.tinypic.com/i5sy1u.jpg',
  PRIMARY KEY (id)
);

CREATE TABLE games (
  id int NOT NULL AUTO_INCREMENT,
  player1ID int NOT NULL,
  player1Placement varchar(100),
  player1Hits varchar(100),
  player1Misses varchar(100),
  player2ID int NOT NULL,
  player2Placement varchar(100),
  player2Hits varchar(100),
  player2Misses varchar(100),
  allMoves varchar (200) DEFAULT '[]',
  result varchar(20) DEFAULT 'In progress',
  PRIMARY KEY (id),
  FOREIGN KEY (player1ID) REFERENCES users(id),
  FOREIGN KEY (player2ID) REFERENCES users(id)
);

CREATE TABLE chats (
  id int NOT NULL AUTO_INCREMENT,
  chatLog varchar(1000),
  PRIMARY KEY (id)
);

CREATE TABLE phrases (
  id int NOT NULL AUTO_INCREMENT,
  phrases varchar(60),
  requiredLevel int NOT NULL,
  PRIMARY KEY (id)
);

INSERT into users (username, password, wins, losses, playerLevel, avatarUrl)
Values ('boxingBakerBen', 'password1', 6, 4, 2, 'http://oi46.tinypic.com/4jl55k.jpg');

INSERT into users (username, password, wins, losses, playerLevel, avatarUrl)
Values ('doughDudeDevon', 'password2', 3, 7, 1, 'http://oi48.tinypic.com/2n9z89k.jpg');

INSERT into users (username, password, wins, losses, playerLevel, avatarUrl)
Values ('empanadaEaterEphraim', 'password3', 5, 5, 2, 'http://oi50.tinypic.com/241jksn.jpg');

INSERT into users (username, password, wins, losses, playerLevel, avatarUrl)
Values ('sniperSouffleSteph', 'password4', 8, 2, 3, 'http://oi43.tinypic.com/5twb9d.jpg');



INSERT into games (player1ID, player1Placement, player1Hits, player1Misses, player2ID, 
player2Placement, player2Hits, player2Misses, allMoves, result)
Values (1, '[[1,2], [1,3]}', '[]', '[]', 2, '[]', '[]', '[]', null, null);

INSERT into games (player1ID, player1Placement, player1Hits, player1Misses, player2ID, 
player2Placement, player2Hits, player2Misses, allMoves, result)
Values (3, '[]', '[]', '[]', 4, '[]', '[]', '[]', null, null);



