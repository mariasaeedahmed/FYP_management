CREATE DATABASE FYP

USE FYP

CREATE TABLE FACULTY
(
Faculty_id INT  NOT NULL,
Faculty_name varchar(255),
 password varchar(255)

CONSTRAINT PK_FACULTY PRIMARY KEY(Faculty_id),
)

INSERT INTO FACULTY VALUES(01,'James','something');
INSERT INTO FACULTY VALUES(02,'Jack','something');
INSERT INTO FACULTY VALUES(03,'Steve','something');
INSERT INTO FACULTY VALUES(04,'Saim','something');
INSERT INTO FACULTY VALUES(05,'Browns','something');
INSERT INTO FACULTY VALUES(06,'Olivia','something');
INSERT INTO FACULTY VALUES(07,'Emma','something');
INSERT INTO FACULTY VALUES(08,'Mia','something');
INSERT INTO FACULTY VALUES(09,'Isabella','something');
INSERT INTO FACULTY VALUES(10,'Sophia','something');
INSERT INTO FACULTY VALUES(11,'Liam','something');
INSERT INTO FACULTY VALUES(12,'William','something');
INSERT INTO FACULTY VALUES(13,'Lucas','something');
INSERT INTO FACULTY VALUES(14,'Benjamin','something');
INSERT INTO FACULTY VALUES(15,'Lara','something');
INSERT INTO FACULTY VALUES(16,'Jane','something');
INSERT INTO FACULTY VALUES(17,'Austen','something');
INSERT INTO FACULTY VALUES(18,'Abby','something');
CREATE TABLE SUPERVISOR
(
Supervisor_id INT NOT NULL UNIQUE,
Supervisor_name varchar(255),
Faculty_id INT NOT NULL, 
passwords varchar(255),

---idhar review add kr do areeba
CONSTRAINT PK_SUPERVISOR PRIMARY KEY(Supervisor_id),
CONSTRAINT FK_SUPERVISOR FOREIGN KEY (Faculty_id) REFERENCES FACULTY (Faculty_id)
)

INSERT INTO SUPERVISOR VALUES(1,'Jack',02,'something');
INSERT INTO SUPERVISOR VALUES(2,'Browns',05,'something');
INSERT INTO SUPERVISOR VALUES(3,'James',01,'something');
INSERT INTO SUPERVISOR VALUES(4,'Steve',03,'something');
INSERT INTO SUPERVISOR VALUES(5,'Mia',08,'something');
INSERT INTO SUPERVISOR VALUES(6,'Saim',04,'something');
INSERT INTO SUPERVISOR VALUES(7,'Olivia',06,'something');
INSERT INTO SUPERVISOR VALUES(8,'Emma',07,'something');


------
-----
----
----
--
--Marriumsss yay queries grid view mai add kar dainaa in panel see maii --
--Panelsee.aspx.cs mai karna hai sahi 
--beshak add 2 gridsss 
select * from Panel where Panel.Panel_member=(select FACULTY.Faculty_id from FACULTY where PANEL.Panel_member=10 );
SELECT * FROM FACULTY WHERE FACULTY.Faculty_id=(SELECT PANEL.Panel_id FROM PANEL WHERE Panel_member=10); 
--
----
----
-----
------



--select * from STUDENT where STUDENT.Project_no= (select Project_no from STUDENT where Roll_no = 1);
CREATE TABLE PROJECT
(
Project_no int NOT NULL UNIQUE,
Title varchar(255) NOT NULL,
Supervisor_id INT NOT NULL,
Grade char,
Cosupervisor_id INT,
Presented int NOT NULL,
deadline date ,
SReview varchar(255),
Panel_id int 

CONSTRAINT PK_PROJECT PRIMARY KEY(Project_no),
CONSTRAINT FK_PROJECT FOREIGN KEY (Supervisor_id) REFERENCES SUPERVISOR (Supervisor_id)


)



INSERT INTO PROJECT VALUES(1,'Title1',2,'A',4,0, '7/7/2020','Good',1);
INSERT INTO PROJECT VALUES(2,'Title2',5,'B',1,1, '7/7/2020','Excellent',2);
INSERT INTO PROJECT VALUES(3,'Title3',6,'A',6,0, '7/7/2020','Good',3);
INSERT INTO PROJECT VALUES(4,'Title4',7,'A',3,0, '7/7/2020','Excellent',4);
INSERT INTO PROJECT VALUES(5,'Title5',2,'C',7,1, '7/7/2020','Good',1);
INSERT INTO PROJECT VALUES(6,'Title6',2,'B',2,1, '7/7/2020','Satisfactory',2);
INSERT INTO PROJECT VALUES(7,'Title7',4,'D',5,1, '7/7/2020','Good',3);
INSERT INTO PROJECT VALUES(8,'Title8',8,'A',9,0, '7/7/2020','Good',4);
INSERT INTO PROJECT VALUES(9,'Title9',8,'B',8,1, '7/7/2020','Satisfactory',1);
SELECT Project_no,title from PROJECT where panel_id =(SELECT PANEL.Panel_id FROM PANEL WHERE Panel_member=10);
--= (
--select FACULTY.Faculty_id from FACULTY where 
SELECT Faculty_id,Faculty_name FROM FACULTY WHERE FACULTY.Faculty_id=
(SELECT PANEL.Panel_id FROM PANEL WHERE Panel_member=10); 

CREATE TABLE EVALUATION_FORM
(
Form_no INT UNIQUE NOT NULL,
Panel_member INT,
Project_no INT,

Poster INT,
Work_breakdown INT,
DesignNImplementation INT,-------------------------YE KR DO AREEBAAAAAAAAAA PLUS CROSS CHECK KR LO K JISS ORDER MEIN WO EVALUATION FORM DIYA HAI USS HEE ORDER MEIN SAARAY ATTRIBUTES DAALNA, REVIEW END MEIN
--------------------------------DONEE MURRSSS--thanksss
Content_Quality INT,
Style INT,
P_Scope_clarity INT,
Feature_def INT,
Team_Dynamics INT,
Timings INT,
Completion INT,
Impression INT,
Code_Quality INT,
Integration INT,
DFD INT,
Question_Handling INT,
panel_Review VARCHAR (255),




CONSTRAINT PK_EVALUATION PRIMARY KEY(Form_no),
CONSTRAINT FK_EVALUATION FOREIGN KEY (Panel_member) REFERENCES FACULTY (Faculty_id),
CONSTRAINT FK1_EVALUATION FOREIGN KEY (Project_no) REFERENCES PROJECT (Project_no),

)
INSERT INTO EVALUATION_FORM VALUES(1,9,1,7,6,9,5,7,8,6,9,10,8,2,3,7,7,8,'GOOD');
INSERT INTO EVALUATION_FORM VALUES(2,10,1,8,5,8,7,6,7,7,4,6,10,8,5,6,5,8,'SATISFACTORY');
INSERT INTO EVALUATION_FORM VALUES(3,11,2,9,7,6,8,8,6,9,3,9,09,9,4,8,6,7,'GOOD');
INSERT INTO EVALUATION_FORM VALUES(4,12,4,8,9,7,9,9,8,8,8,9,08,7,8,5,8,6,'GOOD');
INSERT INTO EVALUATION_FORM VALUES(5,13,3,9,8,9,6,8,9,4,7,8,07,8,3,8,5,8,'SATISFACTORY');
INSERT INTO EVALUATION_FORM VALUES(6,14,5,7,5,5,5,9,6,10,6,6,8,6,6,6,9,8,'GOOD');
INSERT INTO EVALUATION_FORM VALUES(7,15,6,6,4,5,7,6,8,2,9,3,04,7,4,7,7,7,'GOOD');
INSERT INTO EVALUATION_FORM VALUES(8,16,7,9,10,10,9,7,5,10,7,6,8,9,5,9,9,8,'EXCELLENT');


select Project.Project_no,Project.Title,SUPERVISOR.Supervisor_name  from Project, Supervisor where
SUPERVISOR.Supervisor_name=(select Supervisor_name where SUPERVISOR.Supervisor_id=Project.Supervisor_id);-- group by SUPERVISOR.Supervisor_name;
select * from FACULTY;
/*
select * from SUPERVISOR;

INSERT INTO SUPERVISOR VALUES(9,'Koen',2);
INSERT INTO SUPERVISOR VALUES(10,'Owen',2);
/*
INSERT INTO SUPERVISOR VALUES(11,'Jacob',2);
INSERT INTO SUPERVISOR VALUES(12,'Samuel',2);
INSERT INTO SUPERVISOR VALUES(13,'Asher',2);
INSERT INTO SUPERVISOR VALUES(14,'Aiden',2);
INSERT INTO SUPERVISOR VALUES(15,'Johns',2);*/*/




select * from student;

CREATE TABLE STUDENT
(
Roll_no INT NOT NULL UNIQUE,
Student_Name varchar(255),
Project_no INT NOT NULL,
Semester_no INT,
passwords varchar(255),


CONSTRAINT PK_STUDENT PRIMARY KEY(Roll_no),
CONSTRAINT FK_STUDENT FOREIGN KEY (Project_no) REFERENCES PROJECT (Project_no)
)

INSERT INTO STUDENT VALUES(9,'Sara Thomas',1,6,'thepassword');
INSERT INTO STUDENT VALUES(45,'Karen Charles',1,6,'thepassword');
INSERT INTO STUDENT VALUES(36,'Jessica Joseph',1,6,'thepassword');
INSERT INTO STUDENT VALUES(7,'Lisa Christopher',1,6,'thepassword');
INSERT INTO STUDENT VALUES(13,'Amy Gary',1,6,'thepassword');

INSERT INTO STUDENT VALUES(1,'Nancy Daniel',8,7,'thepassword');
INSERT INTO STUDENT VALUES(77,'Mathew Anthony',8,7,'thepassword');
INSERT INTO STUDENT VALUES(5,'Steven Paul',8,7,'thepassword');
INSERT INTO STUDENT VALUES(56,'Sandra Mark',8,7,'thepassword');
INSERT INTO STUDENT VALUES(89,'Ashley Donald',8,7,'thepassword');
INSERT INTO STUDENT VALUES(76,'Emily Paul',9,8,'thepassword');
INSERT INTO STUDENT VALUES(43,'Melissa George',9,8,'thepassword');
INSERT INTO STUDENT VALUES(34,'Ronald Timothy',9,8,'thepassword');
INSERT INTO STUDENT VALUES(23,'Rebecca Edward',9,8,'thepassword');
INSERT INTO STUDENT VALUES(64,'Kathleen Jacob',9,8,'thepassword');
INSERT INTO STUDENT VALUES(12,'Laura Jaffery',9,8,'thepassword');

select * from STUDENT;
select * from STUDENT where Roll_no=5;

CREATE TABLE PANEL
(
Panel_id INT  NOT NULL,
Panel_member INT,

Filled varchar(3), passwords varchar(255)

CONSTRAINT PK_PANEL PRIMARY KEY(Panel_id,Panel_member),
CONSTRAINT FK_PANEL FOREIGN KEY (Panel_member) REFERENCES FACULTY (Faculty_id),
)

INSERT INTO PANEL VALUES(1,09,'yes','Pass0');
INSERT INTO PANEL VALUES(1,10,'no','Pass1');
INSERT INTO PANEL VALUES(2,11,'no','Pass2');
INSERT INTO PANEL VALUES(2,12,'yes','Pass3');
INSERT INTO PANEL VALUES(3,13,'no','Pass4');
INSERT INTO PANEL VALUES(3,14,'yes','Pass5');
INSERT INTO PANEL VALUES(4,15,'yes','Pass6');
INSERT INTO PANEL VALUES(4,16,'yes','Pass7');
-------
------
----
----
----select * from Panel where 

CREATE TABLE PROJECT_MEMBERS
(
Project_no int NOT NULL,
Roll_no INT NOT NULL,

CONSTRAINT FK_PROJECT_MEMBERS FOREIGN KEY (Project_no) REFERENCES PROJECT (Project_no),
CONSTRAINT FK2_PROJECT_MEMBERS FOREIGN KEY (Roll_no) REFERENCES STUDENT (Roll_no)

)
create table committee
(
committee_id varchar(255),
passwords varchar(255),
member_name varchar(255)


CONSTRAINT PK_committee PRIMARY KEY(committee_id),

)

INSERT INTO committee VALUES(1,'com','Samantha');

create role cm
--alter role cm add member 


use FYP

select * from STUDENT;

CREATE LOGIN cm_member WITH PASSWORD = 'fast';
CREATE LOGIN staff_memb WITH PASSWORD = 'fast';
CREATE LOGIn studentss WITH PASSWORD = 'fast';
CREATE LOGIN pan_mem WITH PASSWORD = 'fast';

create user commitee_mem for login cm_member with default_schema = FYP;
create user st_mem for login staff_memb with default_schema = FYP;
create user stud for login studentss with default_schema = FYP;
create user pannel_person for login pan_mem with default_schema = FYP;

create role comittee_role;
create role staff_role;
create role  student_role;
create role pannel_role;
go
alter role comittee_role add member commitee_mem;
alter role  staff_role add member st_mem;
alter role student_role add member stud;
alter role pannel_role add member pannel_person;

--committee permissions/
grant insert on STUDENT to student_role;
revoke alter on STUDENT to student_role;
revoke ALTER  on FACULTY to student_role;
--revoke DROP  on FACULTY to student_role;
revoke INSERT  on FACULTY to student_role;
revoke UPDATE  on FACULTY to student_role;
revoke DELETE  on FACULTY to student_role;
revoke SELECT on FACULTY to student_role;

 revoke REFERENCES  on SUPERVISOR to student_role;


 revoke ALTER  on SUPERVISOR to student_role;
--revoke DROP  on FACULTY to student_role;
revoke INSERT  on SUPERVISOR to student_role;
revoke UPDATE  on SUPERVISOR to student_role;
revoke DELETE  on SUPERVISOR to student_role;
revoke SELECT on SUPERVISOR to student_role;

 revoke REFERENCES  on SUPERVISOR to student_role;
 revoke INSERT  on PANEL to student_role;
revoke UPDATE  on PANEL to student_role;
revoke DELETE  on PANEL to student_role;
revoke SELECT on PANEL to student_role;

 revoke REFERENCES  on PANEL to student_role;
 
 

 --------------------------------------factulty and SUPERVISOR and pannel ko student nahin chair sktaand it can only offer things like 
 -------------------now we look at committee roless
 grant insert on SUPERVISOR to comittee_role
 grant update on SUPERVISOR to comittee_role
  grant alter on SUPERVISOR to comittee_role
  grant select  on SUPERVISOR to comittee_role
  --  grant alter on SUPERVISOR to comittee_role
  revoke update , alter on STUDENT to comittee_role
  grant select on PANEL to comittee_role
  grant update , alter, insert on STAFF to comittee_role

  grant panel insert,alter ,update on  EVALUATION_FORM to pannel_role

  grant panel insert,alter ,update on  EVALUATION_FORM to pannel_role

  select 
	STUDENT.Roll_no,
	STUDENT.Student_Name,
	STUDENT.Project_no,
	STUDENT.Semester_no
	from STUDENT, PROJECT_MEMBERS 
	where PROJECT_MEMBERS.Project_no = 
	(select Project_no from STUDENT where Roll_no = 23)
	and
	PROJECT_MEMBERS.Roll_no= STUDENT.Roll_no;
	select * from STUDENT where STUDENT.Project_no =1;
	select Panel_member, FACULTY.Faculty_name  FROM PANEL,PROJECT,
	FACULTY where  PANEL.Panel_id = PROJECT.Panel_id 
	and PANEL.Panel_member= FACULTY.Faculty_id and  PROJECT.Panel_id =(select Project_no from STUDENT where Roll_no = 9) ;

	--string new_query = ")";
	select * from STUDENT where STUDENT.Project_no= (select Project_no from STUDENT where Roll_no = 1);


	------------SECURING BY TRIGGERS---------
 /*CREATE TRIGGER ON FYP
 FOR
 CREATE_TABLE,
 ALTER_TABLE,
 DROP_TABLE
 AS 
 BEGIN
 PRINT 'You are trying to access a secure database!!'
 END;*/

 CREATE TRIGGER SECURE ON STUDENT
 FOR
 INSERT,UPDATE,DELETE
 AS 
 BEGIN
 PRINT 'You are trying to access a secure database!!'
 END

  CREATE TRIGGER SECURE2 ON SUPERVISOR
 FOR
 INSERT,UPDATE,DELETE
 AS 
 BEGIN
 PRINT 'You are trying to access a secure database!!'
 END

  CREATE TRIGGER SECURE3 ON PROJECT_MEMBERS
 FOR
 INSERT,UPDATE,DELETE
 AS 
 BEGIN
 PRINT 'You are trying to access a secure database!!'
 END

   CREATE TRIGGER SECURE4 ON PROJECT
 FOR
 INSERT,UPDATE,DELETE
 AS 
 BEGIN
 PRINT 'You are trying to access a secure database!!'
 END

 CREATE TRIGGER SECURE5 ON PANEL
 FOR
 INSERT,UPDATE,DELETE
 AS 
 BEGIN
 PRINT 'You are trying to access a secure database!!'
 END

  CREATE TRIGGER SECURE6 ON FACULTY
 FOR
 INSERT,UPDATE,DELETE
 AS 
 BEGIN
 PRINT 'You are trying to access a secure database!!'
 END

 CREATE TRIGGER SECURE7 ON EVALUATION_FORM
 FOR
 INSERT,UPDATE,DELETE
 AS 
 BEGIN
 PRINT 'You are trying to access a secure database!!'
 END

  CREATE TRIGGER SECURE8 ON COMMITTEE
 FOR
 INSERT,UPDATE,DELETE
 AS 
 BEGIN
 PRINT 'You are trying to access a secure database!!'
 END