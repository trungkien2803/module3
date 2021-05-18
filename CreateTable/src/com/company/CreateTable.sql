create database quanlibanhang;
use quanlibanhang;
create table Customer(
                         id int,
                         name varchar(50),
                         age int,
                         primary key (id)
);
create table `Order`(
                        id int,
                        customerId int,
                        date date,
                        totalPrice int,
                        primary key (id),
                        foreign key (customerId) references Customer(id)
);
create table Product(
                        id int,
                        name varchar(50),
                        price int,
                        primary key (id)
);
create table OrderDetail(
                            customerId int,
                            orderId int,
                            qty varchar(50),
                            primary key (customerId,orderId),
                            foreign key (customerId) references customer(id),
                            foreign key (orderId) references `Order`(id)
);