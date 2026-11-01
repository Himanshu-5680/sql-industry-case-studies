-- Add Contact Column
ALTER TABLE ank_transactions
ADD COLUMN Customer_Phone BIGINT;

-- Change Account Format
ALTER TABLE ank_transactions
MODIFY COLUMN Account_No VARCHAR(25);

-- Drop Unnecessary Column
ALTER TABLE ank_transactions
DROP COLUMN Customer_Name;

-- Filter Flagged Records
SELECT Txn_ID, Account_No, Txn_Amount FROM ank_transactions
WHERE Audit_Status = 'Flagged';

-- Clear Audit Cycle
TRUNCATE TABLE ank_transactions;

SELECT * FROM ank_transactions;
