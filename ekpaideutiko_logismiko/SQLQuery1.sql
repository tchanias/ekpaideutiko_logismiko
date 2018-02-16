CREATE TABLE Members (
    SID int IDENTITY(1,1) primary key not null,
	Username varchar(255) not null,
	Password varchar(255) not null ,
	Email varchar(255) not null,
    LastName varchar(255) not null,
    FirstName varchar(255) not null,
    Sex char(1) not null,
	Birthday date,
    City varchar(255), 
	Type bit not null,
	img image,
);

CREATE TABLE Theory (
	DocId int IDENTITY(1,1) primary key not null, 
    SID int FOREIGN KEY REFERENCES Members(SID),
	Document ntext not null
);

CREATE TABLE Exers (
	ExId int IDENTITY(1,1) primary key not null, 
	DocId int FOREIGN KEY REFERENCES Theory(DocID),
    SID int FOREIGN KEY REFERENCES Members(SID),
	Document ntext not null
);

CREATE TABLE Questions (
	QId int IDENTITY(1,1) primary key not null, 
	Question nvarchar(255) not null,
	A1 nvarchar(255) not null,
	A2 nvarchar(255) not null,
	A3 nvarchar(255) not null,
	A4 nvarchar(255) not null,
	ans tinyint not null,
);

CREATE TABLE Tests (
	TestId int IDENTITY(1,1) primary key not null, 	
	QID int FOREIGN KEY REFERENCES Questions(QID),
    SID int FOREIGN KEY REFERENCES Members(SID),
);

-Teachers
theory/exercises
tests

CREATE TABLE Reactions (
    SID int FOREIGN KEY REFERENCES Members(SID),
	DocId int FOREIGN KEY REFERENCES Theory(DocID),
	ExId int FOREIGN KEY REFERENCES Exers(ExID),
	react bit not null,
);

CREATE TABLE Progress (
    SID int FOREIGN KEY REFERENCES Members(SID),
	TestId int FOREIGN KEY REFERENCES Tests(TestID),
	rating varchar(255) not null,
);

CREATE TABLE Badges (
    SID int FOREIGN KEY REFERENCES Members(SID),
	B1 bit,
	B2 bit,
	B3 bit,
	B4 bit,
	B5 bit,
);

-Students
progress stats
reactions (theory/exercises)
badges (5 types)

CREATE TABLE Posts (
	PID int IDENTITY(1,1) primary key not null, 
    SID int FOREIGN KEY REFERENCES Members(SID),
	post ntext not null
);

-Wall
posts

select * from Members
drop table Members