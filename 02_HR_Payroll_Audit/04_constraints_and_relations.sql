DROP TABLE IF EXISTS `employee_medical_history`;
DROP TABLE IF EXISTS `employee_records`;

CREATE TABLE `employee_records` (
    `Emp_ID` CHAR(4) PRIMARY KEY NOT NULL,
    `First_Name` VARCHAR(50) NOT NULL,
    `Salary` DECIMAL(10,2) CHECK (Salary > 0),
    `Department` VARCHAR(50) NOT NULL,
    `Joining_Date` DATE
);

CREATE TABLE `employee_medical_history` (
    Medical_ID CHAR(4) PRIMARY KEY NOT NULL,
    Emp_ID CHAR(4) NOT NULL,
    Blood_Group VARCHAR(10),
    FOREIGN KEY (Emp_ID) REFERENCES employee_records(Emp_ID)
);

ALTER TABLE employee_records
ADD COLUMN `Bonus` BIGINT;

ALTER TABLE employee_records
MODIFY COLUMN `Bonus` DECIMAL(8,2);

ALTER TABLE employee_records
CHANGE `First_Name` `Employee_name` VARCHAR(50) NOT NULL;

ALTER TABLE employee_records
DROP COLUMN `Bonus`;

-- DML
INSERT INTO employee_records
(`Emp_ID`, `Employee_name`, `Salary`, `Department`, `Joining_Date`)
VALUES
('E001','Johney',1000000,'Assaulter','2018-03-05'),
('E002','Spike',100000,'Clutcher','2018-03-06'),
('E003','Jelly',500000,'All Rounder','2018-03-05');


SELECT * FROM employee_records 
WHERE `Salary` >= 50000;

DELETE FROM employee_records 
WHERE `Emp_ID` IN ('E002','E003');

SELECT * FROM employee_records;
            -- THE END --