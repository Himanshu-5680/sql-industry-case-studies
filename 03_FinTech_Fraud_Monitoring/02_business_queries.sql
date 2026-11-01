-- High-Value Fraud Check:
SELECT `Txn_ID`,`Account_No`,`Txn_Amount` FROM `bank_transactions`
WHERE `Txn_Amount`> 100000;

-- Flagging Suspicious Activity:
UPDATE `bank_transactions`
SET `Audit_Status` = 'Flagged'
WHERE `Txn_Amount`>=100000;

-- Verify Normal Transactions:
UPDATE `bank_transactions`
SET `Audit_Status` = 'Verified'
WHERE `Txn_Amount` < 100000;

-- Data Correction:
UPDATE `bank_transactions`
SET `Customer_Name` = 'Ory Singh', `Txn_Amount` = 20000
WHERE `Txn_ID` = 'T004'
;

-- Pending Audit Filter:
SELECT `Txn_ID`,`Audit_Status` FROM `bank_transactions`
WHERE `Audit_Status` != 'Verified';

-- Purge Test Records:
DELETE FROM `bank_transactions`
WHERE `Txn_ID` IN ('T001','T002');

SELECT * FROM `bank_transactions`;