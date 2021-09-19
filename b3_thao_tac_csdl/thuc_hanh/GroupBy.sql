create database b;
use b;
create table orders(
	orderNumber int ,
    customerNumber int,
    orderDate date ,
    requiredDate date ,
    shippedDate date,
    status varchar(50) ,
    comments text,
    quantityOrdered int ,
    priceEach float(2) ,
	primary key (orderNumber)
);
insert  into `orders` values(10100,363,'2003-01-06','2003-01-13','2003-01-10','Shipped',NULL,363,123.32);
insert  into orders values(10101,362,'2003-01-09','2003-01-18','2003-01-11','Shipped','Check on availability.',128,1223.32);
insert  into `orders` values(10102,3263,'2003-01-10','2003-01-18','2003-01-14','Shipped',NULL,181,123.322);
insert  into `orders` values(10103,36312,'2003-01-29','2003-02-07','2003-02-02','Shipped',NULL,121,123.3223);
insert  into `orders` values(36312,36321,'2003-01-31','2003-02-09','2003-02-01','Shipped',NULL,141123.3223);
select status from orders 
group by status;
select status, COUNT(orderNumber) as 'So luong status'
from orders
group by status;
create table orderDetails (
	orderNumber int,
    productCode varchar(50),
    quantri int,
    priceEach int,
    orderLineNumber int,
    primary key(ordernumber, productcode),
    foreign key(ordernumber) references orders(ordernumber)
); 
drop table orderDetails;
insert into orderDetails values(10100,23,12,43,23) ;
insert into orderDetails values(10101,23,34,44,21) ;
insert into orderDetails values(10102,23,123,45,34) ;

select status , sum(quantri * priceEach) as amount
from orders 
inner join orderDetails on orders.ordernumber = orderdetails.ordernumber
group by status;

