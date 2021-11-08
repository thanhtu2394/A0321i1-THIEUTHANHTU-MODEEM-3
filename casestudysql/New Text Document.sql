create database resort;
use resort;
drop database resort;
create table ViTri(
IDViTri int auto_increment,
TenViTri varchar(45),
primary key (IDViTri)
);
drop table Vitri;
insert into Vitri value(1,"op");
insert into Vitri value(2,"rv");
insert into Vitri(TenViTri) value("tl");
insert into Vitri value(4,"pm");

create table TrinhDo(
IDTrinhDo int auto_increment,
TrinhDo varchar(45),
primary key(IDTrinhDo)
);
drop table TrinhDo;
insert into TrinhDo(TrinhDo) value("trung cap");
insert into TrinhDo(TrinhDo) value("cao dang");
insert into TrinhDo(TrinhDo) value("dai hoc");
create table BoPhan(
IDBoPhan int ,
TenBoPhan varchar(45),
primary key(IDBoPhan)
);
insert into BoPhan value(1,"le tan");
insert into BoPhan value(2,"phuc vu");
insert into BoPhan value(3,"nha hang");

create table NhanVien(
IDNhanVien int,
HoTen varchar(45),
IDViTri int,
IDTrinhDo int,
IDBoPhan int,
NgaySinh date,
SoCMND varchar(45),
Luong varchar(45),
SDT varchar(45),
Email varchar(45),
DiaChi varchar(45),
primary key(IDNhanVien),
foreign key(IDViTri) references ViTri(IDViTri) on update cascade on delete cascade,
foreign key(IDTrinhDo) references TrinhDo(IDTrinhDo) on update cascade on delete cascade,
foreign key(IDBoPhan) references BoPhan(IDBoPhan) on update cascade on delete cascade
);
insert into NhanVien value(1,"thieu thanh tu",1,1,1,"1994-03-08","1232123121","520000","2023023","abc@gmail.com","da nang");
insert into NhanVien value(2,"nguyen thanh tuan",2,2,1,"1994-03-12","125673121","5220000","2023023","asd@gmail.com","quang nam");
insert into NhanVien value(3,"truong tan sang",3,2,1,"1994-02-03","1232893121","5200030","2023023","vbv@gmail.com","hue");
insert into NhanVien value(4,"phan van dinh ",1,3,2,"1994-04-023","1289893121","5240000","2023023","bvbv@gmail.com","quang ngai");

select Nhanvien.*,Vitri.TenViTri from Nhanvien inner join Vitri on Nhanvien.IDViTri=Vitri.IDViTri where TenViTri="op";
create table DichVuDiKem(
IDDichVuDiKem int,
TenDichVuDiKem varchar(45),
Gia int,
DonVi varchar(45),
TrangThaiKhaDung varchar(45),
primary key(IDDichVuDiKem)
);
insert into DichVuDiKem value(1,"massage","21321","Vnd","con trong");
insert into DichVuDiKem value(2,"du lich","232661","Vnd","con trong");
insert into DichVuDiKem value(3,"mua lan","67621","Vnd","het");
insert into DichVuDiKem value(4,"an uong","265651","Vnd","con trong");

create table LoaiKhach(
IDLoaiKhach int,
TenLoaiKhach varchar(45),
primary key(IDLoaiKhach)
);
insert into LoaiKhach value(1,"Diamond");
insert into LoaiKhach value(2,"Platinium");
insert into LoaiKhach value(3,"Gold");
insert into LoaiKhach value(4,"Silver");
insert into LoaiKhach value(5,"Member");
create table KhachHang(
IDKhachHang int,
IDLoaiKhach int,
HoTen varchar(45),
NgaySinh date,
SoCMND varchar(45),
SDT varchar(45),
Email varchar(45),
DiaChi varchar(45),
primary key(IDKhachHang),
foreign key(IDLoaiKhach) references LoaiKhach(IDLoaiKhach) on update cascade on delete cascade
);
insert into KhachHang value(1,1,"nguyen van a","1980-02-12","12331231","0923232323","nguyenvana@gmail.com","da nang");
insert into KhachHang value(2,2,"truong thao ly","1980-03-12","12331231","09236762323","nguyenvana3@gmail.com","da nang");
insert into KhachHang value(3,2,"hoang thuy ni","1932-04-23","125671","09267623","nguyenvana4@gmail.com","da nang");
insert into KhachHang value(4,3,"nguyen anh hang","1943-11-12","12336581","09236762323","nguyenvana5@gmail.com","da nang");
insert into KhachHang value(5,5,"nguyen hoang khang","1943-08-12","12676731","092376323","nguyenvana6@gmail.com","da nang");
insert into KhachHang value(6,5,"nguyen hoang thang","1943-08-12","12676731","092376323","nguyenvana6@gmail.com","quang tri");
insert into KhachHang value(7,5,"nguyen hoang phang","1943-08-12","12676731","092376323","nguyenvana6@gmail.com","dac nong");
create table KieuThue(
IDKieuThue int,
TenKieuThue varchar(45),
Gia int,
primary key(IDKieuThue)
);
insert into KieuThue value(1,"theo ngay",123);
insert into KieuThue value(2,"theo thang",1233);
insert into KieuThue value(3,"theo nam",4123);
insert into KieuThue value(4,"theo free",45);
create table LoaiDichVu(
IDLoaiDichVu int,
TenLoaiDichVu varchar(45),
primary key(IDLoaiDichVu)
);
insert into LoaiDichVu value(1,"bt");
insert into LoaiDichVu value(2,"petium");
insert into LoaiDichVu value(3,"vip");
insert into LoaiDichVu value(4,"meduim");
create table DichVu(
IDDichVu int,
TenDichVu varchar(45),
DienTich int,
SoTang int,
SoNguoiToiDa varchar(45),
ChiPhiThue varchar(45),
IDKieuThue int,
IDLoaiDichVu int,
TrangThai varchar(45),
primary key(IDDichVu),
foreign key(IDKieuThue) references KieuThue(IDKieuThue) on update cascade on delete cascade,
foreign key(IDLoaiDichVu) references LoaiDichVu(IDLoaiDichVu) on update cascade on delete cascade
);
insert into DichVu value(1,"an uong",123,2,"12N","12321D",1,1,"con hang");
insert into DichVu value(2,"massge",123,2,"12N","12321D",3,2,"con hang");
insert into DichVu value(3,"da banh",123,2,"12N","12321D",2,3,"con hang");
insert into DichVu value(4,"gold",123,2,"12N","12321D",1,2,"con hang");
create table HopDong(
IDHopDong int,
IDNhanVien int,
IDKhachHang int,
IDDichVu int,
NgayLamHopDong date,
NgayKetThuc date,
TienDatCoc int,
TongTien int,
primary key(IDHopDong),
foreign key(IDNhanVien) references NhanVien(IDNhanVien) on update cascade on delete cascade,
foreign key(IDKhachHang) references KhachHang(IDKhachHang) on update cascade on delete cascade,
foreign key(IDDichVu) references DichVu(IDDichVu) on update cascade on delete cascade
);
insert into HopDong value(1,1,1,1,"2021-04-05","2021-04-08",1223,1243141);
insert into HopDong value(2,2,3,4,"2021-02-02","2021-04-08",12763,127641);
insert into HopDong value(3,3,2,3,"2021-04-03","2021-04-02",763,176141);
insert into HopDong value(4,2,4,2,"2021-04-05","2021-04-23",1763,1741);
create table HopDongChiTiet(
IDHopDongChiTiet int,
IDHopDong int,
IDDichVuDiKem int,
SoLuong int,
primary key(IDHopDongChiTiet),
foreign key(IDDichVuDiKem) references DichVuDiKem(IDDichVuDiKem) on update cascade on delete cascade,
foreign key(IDHopDong) references HopDong(IDHopDong) on update cascade on delete cascade
);
insert into HopDongChiTiet value(1,1,1,12);
insert into HopDongChiTiet value(2,3,2,154);
insert into HopDongChiTiet value(3,2,3,43);
insert into HopDongChiTiet value(4,1,2,43);

-- task2 hien thi tat ca nhan vien-- 
select *from nhanvien where HoTen like "t%" or HoTen like "n%" and length(HoTen)<15;
-- task3 3.	Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
select * from khachhang where  ROUND(DATEDIFF(CURDATE(), ngaysinh) / 365, 0) >=18 and ROUND(DATEDIFF(CURDATE(), ngaysinh) / 365, 0)<50;
select * from khachhang where  ROUND(DATEDIFF(CURDATE(), ngaysinh) / 365, 0) between 18 and 50;
select * from khachhang where  (year(curdate())-year(ngaysinh)) between 18 and 50;
-- task 4
select hoten, count(hopdong.IDHopDong) as sl from khachhang inner join hopdong on hopdong.IDKhachHang=khachhang.IDKhachHang 
inner join loaikhach on khachhang.IDLoaiKhach=loaikhach.IDLoaiKhach
where loaikhach.TenLoaiKhach="Diamond"
group by khachhang.IDKhachHang order by sl asc;
-- task 5
