create database resort;
use resort;
drop database resort;
create table `position`(
	position_id int,
    position_name varchar(45),
    primary key(position_id)
);

create table education_degree(
	education_degree_id int,
    education_degree_name varchar(45),
    primary key(education_degree_id)
);

create table division(
	division_id int,
    division_name varchar(45),
    primary key(division_id)
);

create table customer_type(
	customer_type_id int,
    customer_type_name varchar(45),
    primary key(customer_type_id)
);

create table service_type(
	service_type_id int,
    service_type_name varchar(45),
    primary key(service_type_id)
);

create table rent_type(
	rent_type_id int,
    rent_type_name varchar(45),
    rent_type_cost double,
    primary key(rent_type_id)
);

create table attach_service(
	attach_service_id int,
    attach_service_name varchar(45),
    attach_service_cost double,
    attach_service_unit int,
    attach_service_status varchar(45),
    primary key(attach_service_id)
);

create table `role`(
	role_id int,
    role_name varchar(255),
    primary key(role_id)
);

create table `user`(
	username varchar(255),
    `password` varchar(255),
    primary key(username)
);

create table user_role(
	role_id int,
    username varchar(255),
    foreign key(role_id) references `role`(role_id) on update cascade on delete cascade,
    foreign key(username) references `user`(username) on update cascade on delete cascade
);

create table service(
	service_id int,
    service_name varchar(45),
    service_area int,
    service_cost double,
    service_max_people int,
    rent_type_id int,
    service_type_id int,
    standard_room varchar(45),
    description_other_convenience varchar(45),
    pool_area double,
    number_of_floors int,
    primary key(service_id),
    foreign key(rent_type_id) references rent_type(rent_type_id) on update cascade on delete cascade,
    foreign key(service_type_id) references service_type(service_type_id) on update cascade on delete cascade
);

create table employee(
	employee_id int,
    employee_name varchar(45),
    employee_birthday date,
    employee_id_card varchar(45) unique,
    employee_salary double,
    employee_phone varchar(45) unique,
    employee_email varchar(45) unique,
    employee_address varchar(45),
    position_id int,
    education_degree_id int,
    division_id int,
    username varchar(45) unique,
    primary key(employee_id),
    foreign key(position_id) references `position`(position_id) on update cascade on delete cascade,
    foreign key(education_degree_id) references education_degree(education_degree_id) on update cascade on delete cascade,
    foreign key(division_id) references division(division_id) on update cascade on delete cascade,
    foreign key(username) references `user`(username) on update cascade on delete cascade
);

create table customer(
	customer_id int,
    customer_type_id int,
    customer_name varchar(45),
    customer_birthday date,
    customer_gender bit(1),
    customer_id_card varchar(45) unique,
    customer_phone varchar(45) unique,
    customer_email varchar(45) unique,
    customer_address varchar(45),
    primary key(customer_id),
    foreign key(customer_type_id) references customer_type(customer_type_id) on update cascade on delete cascade
);

create table contract(
	contract_id int,
    contract_start_date datetime,
    contract_end_date datetime,
    contract_deposit double,
    contract_total_money double,
    employee_id int,
    customer_id int,
    service_id int,
    primary key(contract_id),
    foreign key(employee_id) references employee(employee_id) on update cascade on delete cascade,
    foreign key(customer_id) references customer(customer_id) on update cascade on delete cascade,
    foreign key(service_id) references service(service_id)on update cascade on delete cascade
);

create table contract_detail(
	contract_detail_id int,
    contract_id int,
    attach_service_id int,
    quantity int,
    primary key(contract_detail_id),
    foreign key(contract_id) references contract(contract_id) on update cascade on delete cascade,
    foreign key(attach_service_id) references attach_service(attach_service_id) on update cascade on delete cascade
);



insert into `position` values 
(1, "L??? t??n"),
(2, "Ph???c v???"),
(3, "Chuy??n vi??n"),
(4, "Gi??m s??t"),
(5, "Qu???n l??"),
(6,"Gi??m ?????c");
insert into education_degree values
(1,"Trung c???p"),
(2,"Cao ?????ng"),
(3,"?????i h???c"),
(4,"Sau ?????i h???c");
insert into division values
(1,"Sale ??? Marketing"),
(2,"H??nh ch??nh"),
(3,"Ph???c v???"),
(4,"Qu???n l??");
insert into `role` values
(1, "L??? t??n"),
(2, "Ph???c v???"),
(3, "Chuy??n vi??n"),
(4, "Gi??m ?????c"),
(5, "Qu???n l??");
insert into `user` values
("van.anh", "vananh123"),
("nguyen.manh","nguyenmanh123"),
("anh.thu","anhthu123"),
("quang.huy","quanghuy123"),
("son.tung","sontung123"),
("nhat.nam","nhatnam123"),
("thanh.thuy","thanhthuy123"),
("duy.manh","duymanh123"),
("thanh.long","thanhlong123"),
("thanh.thao","thanhthao123"),
("duc.huy","duchuy123"),
("ngoc.huyen","ngochuyen123"),
("kha.banh","khabanh123"),
("van.duc","vanduc123"),
("huy.hoang","huyhoang123"),
("thanh.quoc","thanhquoc123");
insert into user_role values
(4,"anh.thu"),
(5,"thanh.long");
insert into employee values
(1,"V??n Anh","1998-12-2","208444756","3000000","097787656","van.anh@furama.com","H?? N???i",1,4,2,"van.anh"),
(2,"Nguy??n M???nh","1993-1-2","205555756","9000000","076888656","nguyen.manh@furama.com","H?? N???i",1,4,2,"nguyen.manh"),
(3,"Anh Th??","1995-12-2","209444756","7000000","097633656","anh.thu@furama.com","???? N???ng",6,4,1,"anh.thu"),
(4,"Quang Huy","1983-10-3","205599756","19000000","097678656","quang.huy@furama.com","???? N???ng",1,2,2,"quang.huy"),
(5,"S??n T??ng","1993-1-4","205599996","11000000","097611656","son.tung@furama.com","C???n Th??",3,3,2,"son.tung"),
(6,"Nh???t Nam","1999-1-2","208888756","8000000","097611116","nhat.nam@furama.com","TP H??? Ch?? Minh",4,4,2,"nhat.nam"),
(7,"Thanh Thu???","1993-1-20","205512126","14000000","091518656","thanh.thuy@furama.com","TP H??? Ch?? Minh",1,4,2,"thanh.thuy"),
(8,"Duy M???nh","1991-1-2","205555050","29000000","097645556","duy.manh@furama.com","H?? N???i",2,4,2,"duy.manh"),
(9,"Th??nh Long","1993-1-2","205554756","9000000","097613656","thanh.long@furama.com","H?? N???i",6,4,4,"thanh.long"),
(10,"Thanh Th???o","1993-1-20","205454756","9000000","096788656","thanh.thao@furama.com","Qu???ng Nam",2,4,2,"thanh.thao"),
(11,"?????c Huy","1993-12-2","205554746","9000000","097689995","duc.huy@furama.com","Qu???ng Nam",2,4,2,"duc.huy"),
(12,"Ng???c Huy???n","1999-1-2","204666756","9000000","097070865","ngochuyen@furama.com","Qu???ng Nam",2,4,2,"ngoc.huyen"),
(13,"Kh?? B???nh","1993-1-2","207774756","9000000","097888110","kha.banh@furama.com","Qu???ng Nam",2,4,2,"kha.banh"),
(14,"V??n ?????c","1983-1-2","207750506","9000000","097900110","van.duc@furama.com","Qu???ng Nam",2,4,2,"van.duc"),
(15,"Huy Ho??ng","1973-1-2","207454506","9000000","097907979","huy.hoang@furama.com","Qu???ng Nam",2,4,2,"huy.hoang"),
(16,"Thanh Qu???c","1989-1-2","207722296","9000000","097988710","thanh.quoc@furama.com","Qu???ng Nam",2,4,2,"thanh.quoc");
insert into customer_type values
(1,"Diamond"),
(2,"Platinum"),
(3,"Gold"),
(4,"Silver"),
(5,"Member");
insert into customer values
(1,2,"Thi???u Thanh T??","2001-10-31",1,"206777999","098488847","hau@gmail.com","Qu???ng Nam"),
(2,1,"V?? Anh Th??","1999-7-1",0,"207777888","095564746","thu@gmail.com","???? N???ng"),
(3,3,"Nguy???n V??n Th??nh","1998-8-2",1,"209454667","0877665667","thanh@gmail.com","h?? N???i"),
(4,5,"L?? Th??? V??n","1882-4-4",0,"205666777","095577865","van@gmail.com","Hu???"),
(5,4,"????? Ng???c Anh","1992-8-1",0,"205666555","095889865","anh@gmail.com","Vinh"),
(6,4,"Tr???n V??n S??n","1998-2-2",1,"205555777","090007865","son@gmail.com","Ngh??? An"),
(7,5,"L?? Thanh H??ng","1998-5-2",0,"207776777","088777865","hung@gmail.com","???? N???ng"),
(8,5,"B??i Qu???c Huy","2001-3-4",1,"205999777","09557665","huy@gmail.com","Qu???ng Nam"),
(9,3,"Tr???n Th??? B??ch H??","1998-3-5",0,"207986777","095443865","ha@gmail.com","Qu???ng Nam"),
(10,3,"Ch??u Th??? Huy???n","1998-2-5",0,"205888777","095555665","huyen@gmail.com","H?? T???nh"),
(11,3,"??o??n Th??? Linh","1995-4-3",0,"205655577","095574465","linh@gmail.com","Qu???ng Ng??i"),
(12,4,"L?? Thanh Trang","1995-7-1",0,"205585777","095577765","trang@gmail.com","Qu???ng B??nh"),
(13,5,"Nguy???n Ng???c","1994-3-3",0,"205666668","095578885","ngoc@gmail.com","Qu???ng Tr???"),
(14,5,"H??? Thanh H??","1992-5-6",0,"205668857","095574445","ha1@gmail.com","C???n Th??"),
(15,5,"L?? C??ng Vinh","1993-5-7",1,"205633577","095522265","vinh@gmail.com","Ngh??? An");
insert into rent_type values
(1,"Theo Gi???",100000),
(2,"Theo Ng??y",700000),
(3,"Theo Th??ng",15000000),
(4,"Theo N??m",98000000);
insert into service_type values
(1,"Villa"),
(2,"Room"),
(3,"House");
insert into service values
(1,"Villa 1",100,1000,5,3,1,"VIP I","none",200,10),
(2,"Villa 2",100,1000,7,4,1,"VIP III","none",200,10),
(3,"House 1",100,1000,5,2,3,"VIP II","none",200,10),
(4,"House 2",100,1000,5,2,3,"VIP I","none",200,10),
(5,"Room 1",100,1000,5,1,2,"VIP III","none",200,10),
(6,"Room 2",100,1000,5,3,2,"VIP I","none",200,10),
(7,"Room 3",100,1000,5,2,2,"VIP I","none",200,10);
insert into contract values
(1,"2018-2-4","2018-2-5",1400000,"2000000",4,3,5),
(2,"2018-3-4","2019-3-4",12000000,"30000000",3,4,2),
(3,"2018-2-10","2018-3-10",1400000,"1400000",5,5,6),
(4,"2018-2-9","2018-3-9",1400000,"4500000",4,9,1),
(5,"2018-9-21","2018-10-21",1500000,"3400000",10,11,2),
(6,"2018-4-22","2018-5-22",1200000,"22000000",11,14,2),
(7,"2018-2-5","2019-2-5",14400000,"5300000",4,1,1),
(8,"2018-2-22","2018-2-23",174000,"2000000",2,3,4),
(9,"2018-8-10","2018-9-10",140000,"2000000",6,3,7),
(10,"2018-12-3","2019-12-3",1200000,"12000000",3,7,5),
(11,"2018-1-31","2018-2-1",1600000,"62000000",7,7,6),
(12,"2018-6-30","2019-6-30",1400000,"32000000",5,5,3);
select customer.*,customer_type.customer_type_name from  customer inner join customer_type on customer.customer_type_id= customer_type.customer_type_id;
delete from customer where customer_id=3;
select *from customer where customer_id=9;
update customer set customer_type_id=1,customer_name="thieu thanh tu",customer_birthday="1994-12-23",customer_gender=1,customer_id_card="123123123",customer_phone="1231231231",customer_email="asdasdasd",customer_address="asdasdasda" where customer_id=9;
update customer set customer_type_id=?,customer_name=?,customer_birthday=?,customer_gender=?,customer_id_card=?,customer_phone=?,customer_email=?,customer_address=? where customer_id=?;
	select customer.*,customer_type.customer_type_name from  customer inner join customer_type on customer.customer_type_id= customer_type.customer_type_id where customer_id=2;
select * from service inner join rent_type on service.rent_type_id=rent_type.rent_type_id 
inner join service_type on service.service_type_id=service_type.service_type_id;
insert into service values(?,?,?,?,?,?,?,?,?,?,?);