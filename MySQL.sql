CREATE DATABASE TestDB

CREATE TABLE tblStudent(
    studentId INT PRIMARY KEY AUTO_INCREMENT,
    studentName NVARCHAR(100) NOT NULL,
    age INT CHECK(age > 0)
)

SELECT * FROM tblStudent

INSERT INTO tblStudent
    (studentName, age)
VALUES('Dung', 21)