use lab1;

/*drop database lab1*/

create table Student(
  Student_Id int not null,
  Student_Name nvarchar(50) not null,
  Studaddress nvarchar(50) not null,
  Student_Batch int not null, 
  department nvarchar(50) not null,
  CGPA float not null
  )
  
Alter Table Student add constraint PK_st primary key(Student_Id) 
alter table Student add Constraint STUDENT_CHECK_CGPA check (CGPA>=0 AND CGPA<=4)
alter table Student drop constraint DEFAULT_SUDENT_CGPA
 
create table instructor(
InstructorId int  not null,
InstructorName nvarchar(50)  not null, 
salary int  not null,
joingdate nvarchar(50)  not null
)
Alter Table instructor add constraint PK_ins primary key (InstructorId) 

create table courses(
CourseId int  not null,
CourseName nvarchar(50) not null,
CourseCreditHours int  not null,
InstructorIdd int  not null,
unique (CourseName)
)
Alter Table courses add constraint FK_ins foreign key (InstructorIdd) references instructor(InstructorIdd)
Alter Table courses add constraint PK_crs primary key (CourseId) 
create table registration(
StudentId int  not null,
CourseId int  not null,
Grade nvarchar(50)  not null
)
Alter Table registration add constraint FK_st foreign key(StudentId) references registration
Alter Table registration add constraint FK_crs foreign key(CourseId) references registration(CourseId)
alter table Student add cgpa1 float NOT NULL
/*drop table instructor;
truncate table courses;*/

Insert into Student(Student_Id, Student_Name, Studaddress ,Student_Batch, department ,CGPA)
Values (1,'Ali Raza','123 model town',2019,'CS',3.3),
(2,'Ayesha','567 Faisal town',2018,'DS',4),
(3,'Ch Ahmed','890 Gajumata',2020,'EE',2.2);


Insert into instructor(InstructorId, InstructorName, salary, joingdate)
Values (1,'Nasir Khan',89000,'2018-01-12'),
(2,'Zafar Cheema',90000,'2017-01-12'),
(3,'Sadia',85000,'2015-03-12'),
(4,'Ch Saima',99999,'2020-03-11');

Insert into courses(CourseId, CourseName, CourseCreditHours ,InstructorIdd)
Values (1,'Computer Programming',3,1),
(2,'Computer Organiz ass',3,2),
(3,'db',2,1);

Insert into registration(StudentId, CourseId,  Grade)
Values (1,1,'I'),
(2,3,'A+'),
(3,2,'F');


/*Constraints added*/