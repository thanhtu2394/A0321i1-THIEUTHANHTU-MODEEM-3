create database a;
use a;
create table hocsinh(
id int,
ten varchar(50),
tuoi int,
khoahoc int,
sotien int,
primary key(id)
);
insert into hocsinh values(1,'thanh',12,23,3423);
insert into hocsinh values(2,'hung',12,23,3423);
insert into hocsinh values(3,'ba',12,23,3423);
insert into hocsinh values(4,'huong',12,23,3423);
insert into hocsinh values(5,'huong',12,23,3423);

-- hiển thị tên hương
select*from hocsinh where hocsinh.ten like '%huong';
-- tổng tiền có tên hương
select sum(sotien) as 'tien' from hocsinh where hocsinh.ten like '%huong' ;
-- tên không trung lặp
select distinct ten from hocsinh ;
