create database xxxx;
use xxxx;
CREATE TABLE users(
   user_id INT AUTO_INCREMENT ,
   username VARCHAR(40),
   password VARCHAR(255),
   email VARCHAR(255),
   primary key(user_id)
);
CREATE TABLE roles(
   role_id INT AUTO_INCREMENT,
   role_name VARCHAR(50),
   PRIMARY KEY(role_id)
);
CREATE TABLE userroles(
   user_id INT ,
   role_id INT ,
   PRIMARY KEY(user_id,role_id),
   FOREIGN KEY(user_id) REFERENCES users(user_id),
   FOREIGN KEY(role_id) REFERENCES roles(role_id)
);
create table thanhtu(
a int,
b int,
c int);
ALTER TABLE thanhtu ADD PRIMARY KEY(a);
