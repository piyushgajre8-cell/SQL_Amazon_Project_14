create database MGM;
use MGM;
create table students(
student_id int primary key,
student_name varchar(100),
class varchar(50),
city varchar(40)
);
create table teachers(
teacher_id int primary key,
teacher_name varchar(100),
subject_speciality varchar(50)
);
create table subjects(
subject_id int primary key,
subject_name varchar(40),
teacher_id int,
foreign key (teacher_id) references teachers(teacher_id)
);
create table marks(
mark_id int primary key,
student_id int,
subject_id int,
marks_obtained int,
exam_date date,
foreign key(student_id) references students(student_id),
foreign key(subject_id) references subjects(subject_id)
);
insert into students values
(1,'Piyush','12th','Maharashtra'),
(2,'Aryan','Diploma','Mumbai'),
(3,'Chetan','12th','Delhi'),
(4,'Saksham','Diploma','Nagpur'),
(5,'Pranav','12th','Nasik');
select * from Students;
insert into teachers values
(201,'Mr.Sharma','Maths'),
(202,'Mrs.Mehta','Science'),
(203,'Mr.Rao','English');
select * from teachers;
insert into subjects values
(301,'Maths',201),
(302,'Scinece',202),
(303,'English',203);
select * from subjects;
insert into marks values
(401,1,301,88,'2024-02-10'),
(402,2,302,92,'2024-02-12'),
(403,3,303,76,'2024-03-05'),
(404,4,301,81,'2024-03-15'),
(405,5,302,95,'2024-04-10');
select * from marks;
SELECT student_name, class
FROM students
LIMIT 0, 1000;