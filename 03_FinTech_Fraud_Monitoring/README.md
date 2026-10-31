# 🏦 Project 03: Banking Transaction & Fraud Monitoring System

## 📌 Business Scenario
A FinTech audit team monitors daily customer bank transactions to detect high-value anomalies, flag suspicious transfers (`>= 100,000`), verify legitimate transactions, rectify data entry errors, and purge test logs before generating final compliance reports.

## 🗄️ Table Schema (`Bank_Transactions`)
* `Txn_ID` (VARCHAR, Primary Key)
* `Account_No` (BIGINT)
* `Customer_Name` (VARCHAR)
* `Txn_Amount` (BIGINT)
* `Txn_Type` (VARCHAR - Credit/Debit)
* `Audit_Status` (VARCHAR - Pending/Verified/Flagged)

## 🎯 Key Operations Performed
1. **Transaction Logging:** Recorded credit and debit transactions across multiple customer accounts.
2. **High-Value Fraud Detection:** Queried transactions exceeding `100,000`.
3. **Automated Risk Flagging:** Updated `Audit_Status` to `'Flagged'` for transactions `>= 100,000` and `'Verified'` for `< 100,000`.
4. **Ledger Data Correction:** Corrected customer name and transaction amount for mislogged entries (`T004`).
5. **Unverified Audit Filter & Test Purge:** Filtered non-verified records (`!= 'Verified'`) and deleted test transactions (`T001`, `T002`).