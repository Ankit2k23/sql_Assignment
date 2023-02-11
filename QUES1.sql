# CREATING DATABASE
CREATE DATABASE IF NOT EXISTS Company;
USE Company;


#Creating table employee
CREATE TABLE Employees(
   emp_id INT PRIMARY KEY AUTO_INCREMENT,
   emp_name VARCHAR(30) NOT NULL,
   gender VARCHAR(30) NOT NULL,
   department VARCHAR(30) NOT NULL
);
#Inserting values
INSERT INTO employees(emp_name,gender,department)
VALUES('X','Female','Finance'),
      ('Y','Male','IT'),
      ('Z','Male','HR'),
      ('W','Female','IT');
      
SELECT * FROM employees;
#Query
SELECT department AS Department,
       SUM(CASE
               WHEN gender='Male' THEN 1
               ELSE 0
           END) AS 'Count of Male',
       SUM(CASE
               WHEN gender='Female' THEN 1
               ELSE 0
           END) AS 'Count of Female'  
FROM employees
GROUP BY department;
