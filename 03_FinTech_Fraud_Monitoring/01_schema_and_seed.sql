DROP TABLE IF EXISTS bank_transactions;
CREATE TABLE `Bank_Transactions`(
   `Txn_ID` VARCHAR(10) PRIMARY KEY NOT NULL, 
   `Account_No` BIGINT NOT NULL, 
   `Customer_Name` VARCHAR(30),
   `Txn_Amount` BIGINT, 
   `Txn_Type` VARCHAR(15), 
   `Audit_Status` VARCHAR(15)
);

-- Table Creation & Logging:
INSERT INTO `bank_transactions`
(`Txn_ID`,`Account_No`,`Customer_Name`,`Txn_Amount`,`Txn_Type`,`Audit_Status`)
VALUES
('T001',6561000,'Sharvary Singh',100000,'Credit','Pending'),
('T002',6561001,'Samay Raina',100000,'Debit','Pending'),
('T003',6561002,'Sharlon Verma',1000000,'Credit','Pending'),
('T004',6561003,'Ory',500000,'Credit','Pending'),
('T005',6561004,'Ashish Solanki',50000,'Credit','Pending'),
('T006',6561005,'Ranveer Alahabadiya',100000,'Debit','Pending')
;

SELECT * FROM bank_transactions;
