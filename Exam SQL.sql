CREATE TABLE Department (
	DepartID INT PRIMARY KEY,
	DepartName VARCHAR(50) NOT NULL,
	[Description] VARCHAR(100) NOT NULL
)
INSERT INTO Department
VALUES 
(1,'Department A','Description A'),
(2,'Department B','Description B'),
(3,'Department C','Description C')
--DROP TABLE Employee
CREATE TABLE Employee (
	EmpCode CHAR(6) PRIMARY KEY,
	FirstName VARCHAR (30) NOT NULL,
	LastName VARCHAR(30) NOT NULL,
	Birthday SMALLDATETIME NOT NULL,
	Gender BIT DEFAULT 1,
	[Address] VARCHAR (100),
	DepartID INT ,
	Salary MONEY ,
	FOREIGN KEY (DepartID) REFERENCES Department(DepartID)
)
INSERT INTO Employee
VALUES ('123456','Nguyen','A','2012-1-1',1,'Address A',1,9.000),
       ('133456','Tran','B','2012-5-12',0,'Address B',2,5.000),
       ('223456','Ngo','C','2022-7-11',1,'Address C',1,10.000);

SELECT * FROM Department

SELECT * FROM Employee
-----------------4--------------
UPDATE Employee
SET Salary = Salary * 1.1;
SELECT * FROM Employee
---------------5----------------
ALTER TABLE Employee
ADD CONSTRAINT Salary CHECK (Salary > 0);

