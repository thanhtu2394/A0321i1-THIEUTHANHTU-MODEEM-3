drop database a;
create database a;
use a;
create table book(
ma_sach int,
ten_sach varchar(50),
nha_xuat_ban varchar(50),
tac_gia varchar(50),
nam_xuat_ban year,
so_lan_xuat_ban int,
gia float,
image text,
ma_loai_sach int,
ma_phieu_muon int,
primary key(ma_sach),
foreign key(ma_loai_sach) references category(ma_loai_sach),
foreign key(ma_phieu_muon) references BorrowOrder(ma_phieu_muon)
);
insert into book values(12,'chientranh','aaa','thanhtu','1994',1,1.23,'121',1,1);
select*from book inner join category on book.ma_loai_sach=category.ma_loai_sach
inner join BorrowOrder on book.ma_phieu_muon=BorrowOrder.ma_phieu_muon;

-- về mã sách, tên sách, nhà xuất bản, tác giả, năm xuất bản, số lần xuất bản, giá, ảnh-- 
create table category(
ma_loai_sach int,
the_loai_sach varchar(50),
ghi_chu text,
primary key(ma_loai_sach));
insert into category values(1,'kiemhiep','18+');
insert into category values(2,'dammy','lgbt');
insert into category values(3,'tieniep','aomacanada');

create table student(
ma_sinh_vien int,
ten_sinh_vien varchar(50),
dia_chi varchar(50),
email varchar(50),
image text,
ma_phieu_muon int,
primary key(ma_sinh_vien),
foreign key(ma_phieu_muon) references BorrowOrder(ma_phieu_muon));
create table BorrowOrder(
ma_phieu_muon int,
ngay_muon date,
trang_thai_muon varchar(50),
primary key(ma_phieu_muon));

insert into BorrowOrder values(1,'1994-2-1','datra');
insert into BorrowOrder values(2,'1993-2-1','datra');
insert into BorrowOrder values(3,'1992-2-12','datra');
