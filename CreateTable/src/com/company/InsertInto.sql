CREATE DATABASE QuanLySinhVien;
USE QuanLySinhVien;
CREATE TABLE Class
(
    ClassID   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ClassName VARCHAR(60) NOT NULL,
    StartDate DATETIME    NOT NULL,
    Status    BIT
);
CREATE TABLE Student
(
    StudentId   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(30) NOT NULL,
    Address     VARCHAR(50),
    Phone       VARCHAR(20),
    Status      BIT,
    ClassId     INT         NOT NULL,
    FOREIGN KEY (ClassId) REFERENCES Class (ClassID)
);
CREATE TABLE Subject
(
    SubId   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubName VARCHAR(30) NOT NULL,
    Credit  TINYINT     NOT NULL DEFAULT 1 CHECK ( Credit >= 1 ),
    Status  BIT                  DEFAULT 1
);

CREATE TABLE Mark
(
    MarkId    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubId     INT NOT NULL,
    StudentId INT NOT NULL,
    Mark      FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubId, StudentId),
    FOREIGN KEY (SubId) REFERENCES Subject (SubId),
    FOREIGN KEY (StudentId) REFERENCES Student (StudentId)
);
insert into class
    value (1, 'A1', '2008/12/20', 1);
insert into class
    value (2, 'A2', '2008/12/22', 1);
insert into class
    value (3, 'B3', current_date, 0);
insert into student(StudentName, Address, Phone, Status, ClassId)
    value ('Hùng', 'Hà Nội', '0912113113', 1, 1);
insert into student(StudentName, Address, Status, ClassId)
    value ('Hoa', 'Hải Phòng', 1, 1);
insert into student(StudentName, Address, Phone, Status, ClassId)
    value ('Mạnh', 'HCM', '0123123123', 0, 2);
insert into Subject
    value (1, 'CF', 5, 1),
    (2, 'C', 6, 1),
    (3, 'HDJ', 5, 1),
    (4, 'RDBMS', 10, 1);
insert into Mark (SubId, StudentId, Mark, ExamTimes)
    value (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);