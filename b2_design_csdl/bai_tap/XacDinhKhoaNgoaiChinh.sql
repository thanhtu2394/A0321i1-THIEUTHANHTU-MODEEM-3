create database a;
use a;
create table customersa(
customers_number int,
full_name varchar(50),
address varchar(50),
phone int,
account_number int,
primary key(customers_number),
foreign key(account_number) references accounta(account_number)
);
create table accounta(
account_number int,
account_type varchar(50),
date_open_account date,
balance int,
primary key(account_number)
);
create table transactiona(
tran_number int,
tran_account varchar(50),
tran_date date,
tran_amounts int,
account_number int,
primary key(tran_number),
foreign key(account_number) references accounta(account_number)
);

