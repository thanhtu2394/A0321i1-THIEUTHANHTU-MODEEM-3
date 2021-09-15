create database xxxx;
use xxxx;
CREATE TABLE users(
   user_id INT  ,
   username VARCHAR(40),
   password VARCHAR(255),
   email VARCHAR(255),
   primary key(user_id)
);
CREATE TABLE roles(
   role_id INT AUTO_INCREMENT,
   role_name VARCHAR(50),
   user_id int,
   PRIMARY KEY(role_id),
   foreign key(user_id) references users(user_id)
);


