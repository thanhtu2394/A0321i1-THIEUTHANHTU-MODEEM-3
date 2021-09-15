create database CSDL;
use CSDL;
create table sinh_vien(
ten_sinh_vien varchar(50),
ngay_sinh int,
que_quan varchar(50),
primary key (ten_sinh_vien)
);
insert into sinh_vien values('tu',23,'danang');
insert into sinh_vien values('thanh',23,'danang');
insert into sinh_vien values('thieu',23,'danang');
select*from sinh_vien;
drop table sinh_vien;
drop database CSDL;