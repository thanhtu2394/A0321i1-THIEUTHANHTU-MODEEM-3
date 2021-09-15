create database csdl;
use csdl;
create table ly_lich(
id int ,
ho_va_ten varchar(250),
ngay_thang_nam_sinh date,
que_quan varchar(250) default 'DA DANG',
primary key(id)
);
select * from  ly_lich;
ALTER TABLE ly_lich ADD ton_giao varchar(50);
ALTER TABLE ly_lich MODIFY ton_giao int;
ALTER TABLE ly_lich drop ton_giao;
ALTER TABLE ly_lich change ton_giao mon_phai varchar(20);
ALTER TABLE ly_lich rename to xxx;
select*from xxx;

drop table ly_lich;
drop database csdl;

