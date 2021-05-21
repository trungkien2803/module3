create database demobt;

use demobt;

create table products
(
    id                 int primary key,
    productCode        varchar(50),
    productName        varchar(50),
    productPrice       varchar(50),
    productAmount      varchar(50),
    productDescription varchar(50),
    productStatus      bit
);

insert into products
    value (1, '21', '31', '41', '51', '61', 1),
    (2, '22', '32', '42', '52', '62', 1),
    (3, '23', '33', '43', '53', '63', 1),
    (4, '24', '34', '44', '54', '64', 1),
    (5, '25', '35', '45', '55', '65', 1),
    (6, '26', '36', '46', '56', '66', 1),
    (7, '27', '37', '47', '57', '67', 1);

create unique index id_product_code on products (productCode);
create unique index id_composite on products (productName, productPrice);
explain
select *
from products
where productName = '21';

create view demo_view as
select productCode, productName, productPrice, productStatus
from products;

update demo_view
set productPrice = '50000'
where productName = '31';

select *
from demo_view;

drop view demo_view;

delimiter //
create procedure selectAllProducts()
begin
    select * from products;
end //
delimiter;

call selectAllProducts();

delimiter //
create procedure addProducts(in pid int, in pdc varchar(50),in pdn varchar(50),in pdp varchar(50), in pda varchar(50), in pdd varchar(50),in pds bit)
begin
    insert into products
    value (pid,pdc,pdn,pdp,pda,pdd,pds);
end //
delimiter ;

call addProducts(8, '271', '371', '471', '571', '617', 1);

delimiter //
create procedure editProduct(in pid int, in pdc varchar(50),in pdn varchar(50),in pdp varchar(50), in pda varchar(50), in pdd varchar(50),in pds bit)
begin
    update products
        set productCode = pdc, productName = pdn, productPrice = pdp, productAmount = pda, productDescription = pdd, productStatus = pds
    where id = pid;
end //
delimiter ;

call editProduct(8, '275', '375', '475', '571', '617', 1);

delimiter //
create procedure deleteProduct(in pid int)
begin
    delete from products where id = pid;
end //
delimiter ;

call deleteProduct(8);