create database a;
use a;
create table productlines (
	productLine varchar(50) not null,
    textDescription text not null,
    image text not null,
    primary key(productLine)
);
insert into productlines value ('car','helo','halo');
insert into productlines value ('moto','helo','halo');
insert into productlines value ('bike','helo','halo');
create table products (
	productCode varchar(15) not null,
    productLine varchar(50),
    productName varchar(70) not null,
    productScale varchar(10) not null,
    productVendor varchar(50) not null,
    productDescription text not null,
    quantityInStock int not null,
    buyPrice float(2) not null,
    MSRP float(2) not null,
    primary key(productCode),
    foreign key(productLine) references productlines(productLine)
);
insert into products values('sasa','car','asda','asd','asdas','asdas',12,71.2,2.2);
insert into products values('s1s2asa','moto','asda','asd','asdas','adasa',12,6.2,2.2);
insert into products values('sa123sa','bike','asda','asd','asdas','dasda',12,62.2,2.2);
select * from products 
where buyPrice >60 and quantityInStock>10;

 
select products.*,productlines.image from products 
inner join productlines on products.productLine=productlines.productLine 
where buyPrice >60;


SELECT productCode,productName, buyprice, textDescription
FROM products
INNER JOIN productlines
ON products.productline = productlines.productline
WHERE buyprice > 56.76 AND buyprice < 95.59;

select productCode, productName, buyprice, quantityInStock, productVendor, productLine 
from products 
where productLine = 'car' or productVendor = 'bike';
