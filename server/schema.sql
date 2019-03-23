CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  id INT NOT NULL AUTO_INCREMENT,
  message TEXT,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  /* Describe your table here.*/
  id INT NOT NULL AUTO_INCREMENT,
  user TEXT,
  PRIMARY KEY (id)
);

CREATE TABLE rooms (
  /* Describe your table here.*/
  id INT NOT NULL AUTO_INCREMENT,
  room TEXT,
  PRIMARY KEY (id)
);

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

