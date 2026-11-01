-- Add Country Column
ALTER TABLE employee_records
ADD COLUMN Country_Code CHAR(2) NOT NULL;

-- Modify Column Size
ALTER TABLE employee_records
MODIFY COLUMN First_Name VARCHAR(50);

-- Assign Country Code
UPDATE employee_records
SET Country_Code = 'DE'
WHERE Department = 'Artificial-Intelligence';

-- Drop Old Column
ALTER TABLE employee_records
DROP COLUMN Performance_Rating;

-- Complete System Reset & Recreate
DROP TABLE IF EXISTS employee_records;

CREATE TABLE employee_records(
    EMP_ID CHAR(4) PRIMARY KEY NOT NULL,
    First_Name VARCHAR(20) NOT NULL,
    Last_Name VARCHAR(20) NOT NULL,
    Country_Code CHAR(2) NOT NULL,
    Email VARCHAR(40)
);

SELECT * FROM employee_records;
