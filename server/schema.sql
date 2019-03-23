CREATE DATABASE chat;

USE chat;

/* Create other tables and define schemas for them here! */
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

 /*
 ?  Joining tables
 */

CREATE TABLE rooms_to_users (
  /* Describe your table here.*/
  room INT NOT NULL,
  user INT NOT NULL,
  FOREIGN KEY (room) REFERENCES rooms(id),
  FOREIGN KEY (user) REFERENCES users(id)
);

CREATE TABLE messages_to_users (
  /* Describe your table here.*/
  message INT NOT NULL,
  user INT NOT NULL,
  FOREIGN KEY (message) REFERENCES messages(id),
  FOREIGN KEY (user) REFERENCES users(id)
);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

