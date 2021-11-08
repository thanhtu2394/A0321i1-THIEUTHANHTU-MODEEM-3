create database benhnhan;
use benhnhan;
create table benhnhan(
id_benhan int, 
id_benhnhan int not null,
name_benhnhan varchar(50),
ngay_nhap_vien varchar(50),
ngay_ra_vien varchar(50),
ly_do_nhap_vien varchar(50),
primary key(id_benhnhan),
foreign key(id_benhan) references benhan(id_benhan)
);
insert into benhnhan values(123,1,nguyễn vãn a,2021-09-12,2021-10-32,mệt trong người);
insert into benhnhan values(125,2,nguyễn vãn b,2021-12-12,2021-10-32,mệt trong người);
insert into benhnhan values(126,3,nguyễn vãn c,2021-03-12,2021-10-32,mệt trong người);
insert into benhnhan values(124,4,nguyễn vãn d,2021-04-12,2021-10-32,mệt trong người);
insert into benhnhan values(123,5,nguyễn vãn e,2021-06-12,2021-10-32,mệt trong người);
insert into benhnhan values(125,6,nguyễn vãn f,2021-08-12,2021-10-32,mệt trong người);
insert into benhnhan values(123,7,nguyễn vãn g,2021-01-12,2021-10-32,mệt trong người);
update benhnhan set name_benhnhan=,ngay_nhap_vien=,ngay_ra_vien=,ly_do_nhap_vien= where id_benhnhan=;
delete from benhnhan where id_benhnhan=;
selectfrom benhnhan inner join benhan on benhnhan.id_benhan=benhan.id_benhan ;

create table benhan(
id_benhan int,
name_benhan varchar(50),
primary key(id_benhan)
);
insert into benhan values(123,đau tim);
insert into benhan values(124,đau đầu);
insert into benhan values(125,đau tai);
insert into benhan values(126,đau mắt);