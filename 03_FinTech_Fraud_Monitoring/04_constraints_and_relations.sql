DROP TABLE IF EXISTS `fraud_audit_logs`;
DROP TABLE IF EXISTS `bank_transactions`;

CREATE TABLE `bank_transactions`(
    `Txn_ID` CHAR(6) PRIMARY KEY NOT NULL,
    `Account_No` BIGINT NOT NULL,
    `Txn_Amount` DECIMAL(10,2) CHECK (`Txn_Amount` > 0),
    `Txn_Date` DATE,
    `Audit_Status` VARCHAR(20) NOT NULL
);

CREATE TABLE `fraud_audit_logs`(
    `Log_ID` INT PRIMARY KEY NOT NULL,
    `Txn_ID` CHAR(6) NOT NULL,
    `Auditor_Remarks` VARCHAR(100),
    Foreign Key (`Txn_ID`) REFERENCES bank_transactions(`Txn_ID`)
);

ALTER TABLE bank_transactions  
ADD COLUMN `Branch_Code` INT;

ALTER TABLE bank_transactions  
MODIFY COLUMN `Branch_Code` VARCHAR(25);

ALTER TABLE bank_transactions
CHANGE `Audit_Status` `Verification_Status` VARCHAR(25) NOT NULL;
ALTER TABLE bank_transactions  
DROP COLUMN `Branch_Code`;


-- CRUD
INSERT INTO bank_transactions
(`Txn_ID`,`Account_No`, `Txn_Amount`, `Txn_Date`, `Verification_Status`) 
VALUES
('T101',358513,100000,'2026-05-30','Passed'),
('T102',358514,500000,'2026-06-06','Pending'),
('T103',358515,1000000, '2026-06-09','Pending');

UPDATE bank_transactions
SET `Verification_Status` = 'Flagged' 
WHERE `Txn_Amount` > 100000;

-- TRUNCATE & DROP Child Table (fraud_audit_logs)
TRUNCATE TABLE `fraud_audit_logs`;
DROP TABLE `fraud_audit_logs`;


SELECT * FROM `bank_transactions`;

            -- THE END --