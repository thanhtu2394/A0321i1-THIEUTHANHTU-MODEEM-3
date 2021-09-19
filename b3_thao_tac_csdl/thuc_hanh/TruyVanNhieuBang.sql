drop database a;
create database a;
use a;
create table customers (
	customerNumber int not null,
    salesRepEmployeeNumber int,
    customerName varchar(50) not null,
    contactLastName varchar(50) not null,
    contactFirstName varchar(50) not null,
    phone varchar(50) not null,
    addressLine1 varchar(50) not null,
    addressLine2 varchar(50),
    city varchar(50) not null,
    state varchar(50) not null,
    postalCode varchar(15) not null,
    country varchar(50) not null,
    creditLimit float(2),
    primary key(customerNumber)
);
drop table customers;
insert  into `customers`(`customerNumber`,`customerName`,`contactLastName`,`contactFirstName`,`phone`,`addressLine1`,`addressLine2`,`city`,`state`,`postalCode`,`country`,`salesRepEmployeeNumber`,`creditLimit`) values 

(103,'Atelier graphique','Schmitt','Carine ','40.32.2555','54, rue Royale','NULL','Nantes','as','44000','France',1370,'21000.00'),

(112,'Signal Gift Stores','King','Jean','7025551838','8489 Strong St.','NULL','Las Vegas','NV','83030','USA',1166,'71800.00'),

(114,'Australian Collectors, Co.','Ferguson','Peter','03 9520 4555','636 St Kilda Road','Level 3','Melbourne','Victoria','3004','Australia',1611,'117300.00');
insert  into `customers`(`customerNumber`,`customerName`,`contactLastName`,`contactFirstName`,`phone`,`addressLine1`,`addressLine2`,`city`,`state`,`postalCode`,`country`,`salesRepEmployeeNumber`,`creditLimit`) values 
(1045,'Atelier graphique','Schmitt','Carine ','40.32.2555','54, rue Royale','NULL','Nantes','as','44000','France',1370,'21000.00');


create table orders(
	orderNumber int not null,
    customerNumber int,
    orderDate date not null,
    requiredDate date not null,
    shippedDate date,
    status varchar(15) not null,
    comments text,
    quantityOrdered int not null,
    priceEach float(2) not null,
	primary key (orderNumber),
    foreign key(customerNumber) references customers (customerNumber)
);
drop table orders;
insert  into orders values(10100,103,'2003-01-06','2003-01-13','2003-01-10','Shipped','NULL',363,12.3);

insert into orders values(1010,112,'2003-01-09','2003-01-18','2003-01-11','Shipped','Check on availability.',128,11.4);

insert into orders values(10104,114,'2003-01-31','2003-02-09','2003-02-01','Shipped','NULL',141,14.9);


create table payments (
	customerNumber int,
    checkNumber varchar(50) not null,
    paymentDate date not null,
    amount float(2) not null,
    primary key(checkNumber),
    foreign key (customerNumber) references customers(customerNumber)
);
drop table payments;
insert into payments values(103,'asdas1','2004-11-03',1.2);
insert into payments values(112,'vsd','2004-11-03',1.2);
insert into payments values(114,'avaqw','2004-11-03',1.2);

select customers.customerNumber, customerName, phone, paymentDate, amount from customers
inner join payments
on customers.customerNumber = payments.customerNumber
where city = 'Las Vegas';

select customers.customerNumber, customers.customerName, orders.orderNumber, orders.status
from customers
left join orders
on customers.customerNumber = orders.customerNumber ;

select customers.customerNumber, customers.customerName, orders.orderNumber, orders.status
from customers LEFT JOIN orders
on customers.customerNumber = orders.customerNumber;

select customers.customerNumber, customers.customerName, orders.orderNumber, orders.status
from customers LEFT JOIN orders
on customers.customerNumber = orders.customerNumber
where orderNumber is null;





