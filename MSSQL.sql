CREATE DATABASE TestDB

GO

USE TestDB

GO

CREATE TABLE tblStudent(
    studentId INT IDENTITY(1, 1) PRIMARY KEY,
    studentName NVARCHAR(100) NOT NULL,
    age INT CHECK(age > 0) 
)

SELECT * FROM tblStudent


INSERT INTO tblStudent VALUES(N'Dung', 21)