CREATE DATABASE IF NOT EXISTS UNIVERSITY;
USE UNIVERSITY;
--Creating table
CREATE TABLE Records(
   CandidateId INT PRIMARY KEY,
   Email VARCHAR(70)
);
--Inserting values
INSERT INTO Records(CandidateId, Email)
VALUES(45,'abc@gmail.com'),
      (23,'def@gmail.com'),
      (34,'abc@gmail.com'),
      (21,'bcf@gmail.com'),
      (94,'def@gmail.com');
      
SELECT * FROM Records;

--Query
create view Help_info as SELECT MIN(CandidateId) AS Candidate_ID
FROM Records
GROUP BY Email
ORDER BY Candidate_ID DESC ;
select * from Help_info;
--deleting
DELETE from records where candidateId not in
(select candidate_Id from Help_info);
--Printing
SELECT * FROM Records
