create database quanlihocvien;

use quanlihocvien;

create table class
(
    classId     int primary key,
    className   varchar(20),
    language    varchar(20),
    description varchar(50)
);

create table address
(
    addressId int primary key,
    address   varchar(50)
);

create table students
(
    studentId int primary key,
    fullName  varchar(50),
    addressId int,
    phone     varchar(20) unique,
    classId   int,
    foreign key (addressId) references address (addressId),
    foreign key (classId) references class (classId)
);

create table Course
(
    courseId    int primary key,
    name        varchar(50),
    description varchar(50)
);

create table point
(
    pointId   int primary key,
    courseId  int,
    studentId int,
    point     int,
    foreign key (courseId) references course (courseId),
    foreign key (studentId) references students (studentId)
);

insert into class
    value (1, 'C0221H1', 'JAVA', 'ok'),
    (2, 'C0221H2', 'PHP', 'ok'),
    (3, 'C0221H3', 'SQL', 'ok'),
    (4, 'C0221H4', 'C', 'ok'),
    (5, 'C0221H5', 'PYTHON', 'ok');

insert into address
    value (1, 'HT'),
    (2, 'HN'),
    (3, 'BN'),
    (4, 'NA'),
    (5, 'TH');
insert into Course
    value (1, 'JAVA', 'ok'),
    (2, 'PHP', 'ok'),
    (3, 'SQL', 'ok'),
    (4, 'C', 'ok'),
    (5, 'PYTHON', 'ok');
insert into students
    value (1, 'Tran Trung Kien1', 1, '1236456789', 1),
    (2, 'Tran Trung Kien2', 2, '1234556789', 1),
    (3, 'Tran Trung Kien3', 3, '1234565789', 4),
    (4, 'Tran Trung Kien4', 4, '1234567890', 5),
    (5, 'Tran Trung Kien5', 5, '123456789', 3),
    (6, 'Tran Trung Kien6', 1, '12364565789', 1),
    (7, 'Tran Trung Kien7', 1, '1234596789', 3),
    (8, 'Tran Trung Kien8', 2, '12345627892', 4),
    (9, 'Tran Trung Kien9', 3, '1234567789', 5),
    (10, 'Tran Trung Kien0', 1, '12340596789', 1);

insert into point
    value (1,1,1,9),
    (2,1,5,8),
    (3,1,6,9),
    (4,2,1,10),
    (5,2,2,8),
    (6,2,3,7),
    (7,3,4,2),
    (8,3,8,5),
    (9,3,10,4),
    (10,4,1,3),
    (11,4,3,7),
    (12,4,9,6),
    (13,5,5,5),
    (14,5,4,10),
    (15,5,7,1);

select a.address, count(s.addressId)
from address a
         join students s on a.addressId = s.addressId
group by address;

create view avgPoint as
select Course.courseId, Course.name, avg(p.point) as avgPoint
from Course
         join point p on Course.courseId = p.courseId
group by Course.courseId, Course.name;

select Course.courseId,Course.name,max(avgPoint)
from Course join avgpoint a on Course.courseId = a.courseId;