create database a;
DROP DATABASE A;
use a;
-- B2
create table products(
product_id int,
product_Code int,
product_Name varchar(50),
product_Price float,
product_amount int,
product_description text,
product_status varchar(15),
primary key(product_id )
);
insert into products values(1,123,'paint',12.3,1,'đẹp','new');
insert into products values(2,1233,'book',12.123,2,'đẹp','old');
insert into products values(3,1234,'gom',12.343,3,'đẹp','new');
insert into products values(4,1235,'ticket',1432.3,4,'đẹp','new');

-- B3-- 
explain select*from products where product_status='old';
create index unnique on products(product_status);
explain select*from products where product_status='old';


create index Composite on products(product_Name,product_Price);

explain select*from products where product_Name='book' and product_Price=12.123;

create index Composite on products(product_Name,product_Price);

explain select*from products where product_Name='book' or product_Price=12.123;
drop index Composite on products;

-- B4

create view secondhand_produst as select product_id,product_Code,product_Name from products;
select *from secondhand_produst;
create or replace view secondhand_produst as select product_id,product_Code,product_status from products;
select *from secondhand_produst;
drop view secondhand_produst;


-- B5
-- lấy toàn bộ thông tin

delimiter //

create procedure getAllInformation()
begin
select*from products;
end //
delimiter ;
call getAllInformation();

-- thêm sản phẩm mới
delimiter //
create procedure insertProducts(in id int,codee int,name1 varchar(50),price float,amount int,des text,status1 varchar(15))
begin
insert into products values(id,codee,name1,price,amount,des,status1);
end //
delimiter ;
drop procedure insertProducts;

call insertProducts(6,123,'helo',14.232,1,'đẹp','old');
select*from products;

-- sửa thông tin sản phẩm

delimiter //
 create procedure suaThongTin(in id int,codee int,name1 varchar(50),price float,amount int,des text,status1 varchar(15))
begin
 update products set
product_Code=codee,product_Name=name1,product_Price=price,product_amount=amount,product_description=des,product_status=status1
 where product_id=id;
 end //
 delimiter ;
 select*from produst;
 
 
 delimiter //
 create procedure suaThongTin1(in id1 int,codee int)
begin
 update products set
product_Code=codee where product_id=id1;
 end //
 delimiter ;
 call suaThongTin1(1,2312);
 select*from products;
 drop procedure suaThongTin1;
 
-- xóa sp theo id

 delimiter //
 create procedure xoaThongTin1(in id1 int)
begin
delete from products where product_id=id1;
 end //
 delimiter ;
 call xoaThongTin1(1);
  select*from products;
 

