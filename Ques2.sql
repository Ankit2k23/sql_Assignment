CREATE DATABASE Company;
USE Company;

--Creating table
CREATE TABLE employee_info(
   Name VARCHAR(25) NOT NULL,
   Jan INT NOT NULL,
   Feb INT NOT NULL,
   Mar INT NOT NULL
);
--Inserting values in table
INSERT INTO employee_info(Name, Jan, Feb, Mar)
VALUES('X',5200,9093,3832),
      ('Y',9023,8942,4000),
      ('Z',9834,8197,9903),
      ('W',3244,4321,0293);
      
SELECT * FROM employees_info;     
--Query
SELECT Name,
       CASE
           WHEN Jan>=Feb AND Jan>=Mar THEN Jan
           WHEN Feb>=Jan AND Feb>=Jan THEN Feb
           ELSE Mar
       END AS Value,
       CASE
           WHEN Jan>=Feb AND Jan>=Mar THEN 'Jan'
           WHEN Feb>=Jan AND Feb>=Jan THEN 'Feb'
           ELSE 'Mar'
       END AS Month
 FROM employee_info; 
