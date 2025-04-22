CREATE TABLE VARUN1(
NAME VARCHAR(20),
REGNO INT(10),
DOB DATE,
GENDER VARCHAR(20),
EMAIL VARCHAR(25),
PHONE INT(27),
FEES INT(25)
);
DESC VARUN;
INSERT INTO VARUN VALUES('VARUN',101);
SELECT * FROM VARUN;

INSERT INTO  VARUN1 VALUES('VARUN','101','2025-05-05','MALE','VARUN@GMAIL.COM','76387638','45000');
SELECT * FROM VARUN1;
select * from VARUN1 where NAME  like 'V%';
INSERT INTO  VARUN1 VALUES('ARUN','102','2025-05-09','MALE','ARUN@GMAIL.COM','7638768','45000');
SELECT distinct NAME FROM VARUN;

SELECT * FROM VARUN1 ORDER BY NAME DESC;
INSERT INTO  VARUN1 VALUES('ARJUN','103','2025-05-09','MALE','ARJUN@GMAIL.COM','7638768','45000');
INSERT INTO  VARUN1 VALUES('MEENA','104','2025-05-09','FEMALE','MEENA@GMAIL.COM','7638768','45000');

SELECT GENDER, COUNT(*) AS TOTAL_STU FROM VARUN1 GROUP BY GENDER;
use stu_management;

create table student(
studentID int(20) primary key,
firstname varchar(20),
lastname varchar(20),
dateofbirth date,
gender varchar(20),
email varchar(20),
phone int(20)
);
create table course(
courseID int(20) primary key,
coursetitle varchar(20),
credits varchar(20)
);
create table instructor(
instructorID int(20) primary key,
firstname varchar(20),
lastname varchar(20),
email varchar(20)
);

CREATE TABLE Enrollment (
    enrollmentID INT PRIMARY KEY,
    enrollmentDate DATE,
    studentID INT,
    courseID INT,
    instructorID INT,
    FOREIGN KEY (studentID) REFERENCES student(studentID),
    FOREIGN KEY (courseID) REFERENCES course(courseID),
    FOREIGN KEY (instructorID) REFERENCES instructor(instructorID)
);

CREATE TABLE Score (
    ScoreID INT PRIMARY KEY,
    courseID INT,
    studentID INT,
    DateOfExam DATE,
    CreditObtained INT,
    FOREIGN KEY (courseID) REFERENCES course(courseID),
    FOREIGN KEY (studentID) REFERENCES student(studentID)
);
desc Score;
desc Enrollment;
desc instructor;
desc student;
desc course;
insert into  student values(