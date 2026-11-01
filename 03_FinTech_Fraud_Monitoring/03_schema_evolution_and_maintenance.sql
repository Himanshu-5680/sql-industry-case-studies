-- Add Contact Column.
ALTER TABLE `bank_transactions`
ADD COLUMN `Customer_Phone` BIGINT;

-- Change Account Format.
ALTER TABLE `bank_transactions`
MODIFY COLUMN Account_No VARCHAR(25);

-- Drop Unnecessary Column.
ALTER TABLE `bank_transactions`
DROP COLUMN `Customer_Name`;

-- Filter Flagged Records.
 SELECT `Txn_ID` , `Account_No` , `Txn_Amount` FROM `bank_transactions`
 WHERE `Audit_Status` = 'Flagged';

 -- Clear Audit Cycle.
 TRUNCATE TABLE `bank_transactions`;

SELECT * FROM `bank_transactions`;
            -- THE END --