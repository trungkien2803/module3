use classicmodels;

delimiter //
create procedure findAllCustomers()
begin
    select * from customers;
end //
delimiter;

call findAllCustomers();

delimiter //
drop procedure if exists findAllCustomers//
create procedure findAllCustomers()
begin
    select * from customers where customerNumber = 175;
end //

call findAllCustomers();

delimiter //
create procedure getCusById(in cusNum int(11))
begin
    select * from customers where customerNumber = cusNum;
end //
delimiter ;

call getCusById(175);

delimiter //
create procedure getCustomersCountbyCity(in in_city varchar(50), out total int)
begin
    select count(customerNumber)
    into total
    from customers
    where city = in_city;
end //
delimiter ;

call getCustomersCountbyCity('Lyon', @total);
select @total;

DELIMITER //
CREATE PROCEDURE SetCounter(INOUT counter INT, IN inc INT)
BEGIN
    SET counter = counter + inc;
END//
DELIMITER ;

set @counter = 1;

call SetCounter(@counter,1);
call SetCounter(@counter,1);
call SetCounter(@counter,5);
select @counter;

