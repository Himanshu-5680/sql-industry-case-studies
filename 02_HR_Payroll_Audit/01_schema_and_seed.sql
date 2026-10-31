-- delete table if exists.
DROP TABLE if EXISTS `employee_records`;
CREATE TABLE `Employee_Records`
( `Emp_ID`VARCHAR(50) PRIMARY KEY NOT NULL,
`First_Name`VARCHAR(50), 
`Last_Name`VARCHAR(50), 
`Department`VARCHAR(50), 
`Designation`VARCHAR(50), 
`Salary` BIGINT , 
`Performance_Rating` DECIMAL(2,1) );

SELECT * FROM `employee_records`;

-- Onboarding Through single row method.
INSERT INTO `employee_records`
(`Emp_ID`, `First_Name`, `Last_Name`, `Department`, `Designation`, `Salary`, `Performance_Rating`)
VALUES ('E001','Mahesh','Dell','Artificial-Intelligence','Data Scientist',70000,5);

-- Onboarding Through multiple row method.
INSERT INTO `employee_records`
(`Emp_ID`, `First_Name`, `Last_Name`, `Department`, `Designation`, `Salary`, `Performance_Rating`)
VALUES
('E002','Yesh','Goswami','Artificial-Intelligence','Data Analyst',55000,4.5),
('E003','Raj','Saxena','Artificial-Intelligence','Senior Analyst',45000,4),
('E004','Javed','Sony','Artificial-Intelligence','Junior Analyst',35000,3.5),
('E005','Kedar','Jadav','Finance','CA',50000,3),
('E006','Manoj','Wazid','Finance','DA',35000,1),
('E007','Rahul','Singh','HR','Manager',70000,2);
