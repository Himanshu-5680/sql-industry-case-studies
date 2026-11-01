-- Payroll Audit:
SELECT `First_Name`,`Last_Name`,`Salary` FROM `employee_records`
WHERE `Salary` >= '50000'
ORDER BY 3;

-- Department Exclusion:
SELECT * FROM `employee_records`
WHERE `Department` <> 'HR';

-- Promotion & Appraisal:
UPDATE `employee_records`
SET `Designation` = 'Junior Data Scientist', `Salary` = '65000'
WHERE `Emp_ID` = 'E002';

UPDATE `employee_records`
SET `Designation` = 'Senior Data Analyst'
WHERE `Emp_ID` = 'E003';
UPDATE `employee_records`
SET `Designation` = 'Junior Data Analyst'
WHERE`Emp_ID` = 'E004';

-- Underperformance Action
DELETE FROM `employee_records`
WHERE `Performance_Rating` < 2;

-- Mass Exit Cleanup
DELETE FROM `employee_records`
WHERE `Emp_ID` IN ('E004','E005');
SELECT * FROM `employee_records`;

