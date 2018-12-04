drop database ucscnew;
create database ucscnew;
use ucscnew;

create table user(email varchar(50),password varchar(100),accountType varchar(30),constraint primary key(email));
create table staff(sid int auto_increment,title varchar(10),email varchar(50),name varchar(100),constraint primary key(sid),constraint foreign key(email) references user(email));
create table applicant(aid varchar(50),title varchar(10),email varchar(50),name varchar(100),dob varchar(20),registered_date varchar(20),address varchar(20),telephone varchar(20),interviewers_count int,marks int,primary key(aid),constraint foreign key(email) references user(email));
create table comment(cmid int auto_increment,sid int,aid varchar(50),description varchar(100),constraint primary key(cmid),constraint foreign key(sid) references staff(sid),constraint foreign key(aid) references applicant(aid));
create table marking_field_heading(mhid int auto_increment,name varchar(100),detailed int,constraint primary key(mhid));
create table marking_field(mid int auto_increment,mhid int,name varchar(100),marks varchar(10),primary key(mid),constraint foreign key(mhid) references marking_field_heading(mhid));

insert into user values ('in1@gmail.com','900150983cd24fb0d6963f7d28e17f72','interview_panel'),('in2@gmail.com','900150983cd24fb0d6963f7d28e17f72','interview_panel');
insert into user values ('di1@gmail.com','900150983cd24fb0d6963f7d28e17f72','sar'),('di2@gmail.com','900150983cd24fb0d6963f7d28e17f72','sar');
insert into user values ('dimuthi1@gmail.com','900150983cd24fb0d6963f7d28e17f72','applicant'),('dimuthi2@gmail.com','900150983cd24fb0d6963f7d28e17f72','applicant');
insert into staff (title,email,name) values ('Ms','in1@gmail.com','Dimuthi'),('Ms','in2@gmail.com','Dimuthi Tharaka'),('Ms','di1@gmail.com','Dimuthi Th'),('Ms','di2@gmail.com','Dimuthi Th');
insert into applicant values ('S001','Ms','dimuthi1@gmail.com','Dimuthi Bomb1','1987-03-03','2018-03-02','Hikkaduwa','123-1234567',1,0),('S002','Ms','dimuthi2@gmail.com','Dimuthi Bomb2','1987-03-03','2018-03-03','Colombo','123-1234567',1,0);
insert into marking_field_heading (name,detailed) values ('Academic Qualifications',1),('Other Qualifications / Academic Achievements',1),('Publications',1),('Subject Knowledge and Experience',0),('Extra Curricular Activities',1),('Presentation to prove teaching ability',0),('Performance at the interview',0);
insert into marking_field (mhid,name,marks) values (1,'Bachelors Degree','0'),(1,'1st Class','15'),(1,'2nd Class','08'),(1,'3rd Class','04');
insert into marking_field (mhid,name,marks) values (1,'Postgraduate / Professional Qualifications','0'),(1,'PhD','20'),(1,'MPhil','10'),(1,'MSc(Research 2 years)','08'),(1,'MSc(Taught 2 years)','05');
insert into marking_field (mhid,name,marks) values (2,'National / International Awards','10'),(2,'Academic Awards','08'),(2,'Other','05');
insert into marking_field (mhid,name,marks) values (3,'Journal','10'),(3,'Refreed Conference','05'),(3,'Abstract / Non-Refreed','02');
insert into marking_field (mhid,name,marks) values (5,'Interfaculty (1st,2nd,3rd)','02'),(5,'Inter University','03'),(5,'National Pool','05'),(5,'Union President Secretary','03');


