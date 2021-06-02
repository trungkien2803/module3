create database quanlibanhang;
use quanlibanhang;
create table Customer
(
    id   int,
    name varchar(50),
    age  int,
    primary key (id)
);
create table `Order`
(
    id         int,
    customerId int,
    date       date,
    totalPrice int,
    primary key (id),
    foreign key (customerId) references Customer (id)
);
create table Product
(
    id    int,
    name  varchar(50),
    price int,
    primary key (id)
);
create table OrderDetail
(
    orderId   int,
    productId int,
    qty       int,
    foreign key (orderId) references `Order` (id),
    foreign key (productId) references product (id)
);
drop table orderdetail;
insert into customer
    value (1, 'Minh Quan', 10);
insert into customer
    value (2, 'Ngoc Oanh', 20);
insert into customer
    value (3, 'Hong Ha', 50);

alter table `order`
    modify column date datetime;

insert into `order`(id, customerId, date)
    value (1, 1, '2006/3/21');

insert into `order`(id, customerId, date)
    value (2, 2, '2006/3/23');

insert into `order`(id, customerId, date)
    value (3, 1, '2006/3/16');

insert into product
    value (1, 'May Giat', 3);

insert into product
    value (2, 'Tu Lanh', 5);

insert into product
    value (3, 'Dieu Hoa', 7);

insert into product
    value (4, 'Quat', 1);

insert into product
    value (5, 'Bep Dien', 2);

insert into orderdetail
    value (1, 1, 3),
    (1, 3, 7),
    (1, 4, 2),
    (2, 1, 1),
    (3, 1, 8),
    (2, 3, 3);

select id, date, totalPrice
from `order`;

select C.name, P.name
from orderdetail
         join `Order` O on O.id = OrderDetail.orderId
         join Customer C on C.id = O.customerId
         join Product P on C.id = P.id;

select Customer.name
from customer
         left join `Order` O on O.customerId = customer.Id
where O.id is null;

select O.id, O.date, Sum(Od.qty * P.price)
from orderdetail Od
         join `Order` O on O.id = Od.orderId
         join product P on Od.productId = P.id
GROUP BY O.id;