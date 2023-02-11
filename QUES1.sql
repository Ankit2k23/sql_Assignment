--create database if not exit

CREATE DATABASE IF NOT EXISTS Company;
USE Company;
--creating table
CREATE TABLE Employee(
   Emp_id INT PRIMARY KEY AUTO_INCREMENT,
   Emp_name VARCHAR(25) NOT NULL,
   Gender VARCHAR(25) NOT NULL,
   department VARCHAR(25) NOT NULL
);

--Inserting values in employee table

INSERT INTO employee(Emp_name,Gender,department)
VALUES('X','Female','Finance'),
      ('Y','Male','IT'),
      ('Z','Male','HR'),
      ('W','Female','IT');
      
SELECT * FROM employee;
--Query
SELECT department AS Department,
       SUM(CASE
               WHEN gender='Male' THEN 1
               ELSE 0
           END) AS 'Count of Male',
       SUM(CASE
               WHEN gender='Female' THEN 1
               ELSE 0
           END) AS 'Count of Female'  
FROM employee
GROUP BY department;

