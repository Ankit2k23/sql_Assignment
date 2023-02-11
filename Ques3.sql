
--Creating Database
CREATE DATABASE IF NOT EXISTS Company;
USE Company;

--Creating table
CREATE TABLE Exam(
   CandidateId INT PRIMARY KEY AUTO_INCREMENT,
   Marks INT NOT NULL
);

INSERT INTO Exam(Marks)
VALUES(98),(78),(87),(98),(78);

SELECT * FROM Exam;
--Query
SELECT Marks, 
       RANK() OVER(ORDER BY Marks DESC) 'Rank',
       GROUP_CONCAT(CandidateID) AS CandidateID
FROM EXAM
GROUP BY Marks
ORDER BY Marks DESC;
