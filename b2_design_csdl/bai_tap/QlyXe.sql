create database qly;
use qly;
drop database qly;
create table customers (
	customerNumber int ,
    salesRepEmployeeNumber int,
    customerName varchar(50) ,
    contactLastName varchar(50) ,
    contactFirstName varchar(50) ,
    phone varchar(50) ,
    addressLine1 varchar(50) ,
    addressLine2 varchar(50),
    city varchar(50) ,
    state varchar(50) ,
    postalCode varchar(50),
    country varchar(50) ,
    creditLimit float(2),
    primary key(customerNumber),
    foreign key(salesRepEmployeeNumber) references employees(employeeNumber)
);
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
	primary key (orderNumber),
    foreign key(customerNumber) references customers (customerNumber)
);
create table payments (
	customerNumber int,
    checkNumber varchar(50) ,
    paymentDate date ,
    amount float(2) ,
    primary key(checkNumber),
    foreign key (customerNumber) references customers(customerNumber)
);
create table products (
	productCode varchar(50) ,
    productLine varchar(50),
    productName varchar(50) ,
    productScale varchar(50) ,
    productVendor varchar(50) ,
    productDescription text ,
    quantityInStock int ,
    buyPrice float(2) ,
    MSRP float(2) ,
    primary key(productCode),
    foreign key(productLine) references productlines(productLine)
);
create table productlines (
	productLine varchar(50) ,
    textDescription text ,
    image text ,
    primary key(productLine)
);

create table employees (
	employeeNumber int ,
    officeCode varchar(50),
    lastName varchar(50) ,
    firstName varchar(50) ,
    email varchar(50) ,
    jobTitle varchar(50) ,
    reportTo int,
    primary key(employeeNumber),
    foreign key(officeCode) references offices(officeCode),
    foreign key(reportTo) references employees(employeeNumber)
);
create table offices (
	officeCode varchar(50) ,
    city varchar(50) ,
    phone varchar(50) ,
    addressLine1 varchar(50) ,
    addressLine2 varchar(50),
    state varchar(50),
    country varchar(50) ,
    postalCode varchar(50) ,
    primary key(officeCode)
);
create table orderDetails (
	orderNumber int,
    productCode varchar(50),
    primary key(ordernumber, productcode),
    foreign key(ordernumber) references orders(ordernumber),
    foreign key(productCode) references products(productCode)
); 