# 🏦 Case Study 03: FinTech Transaction Logging & Fraud Monitoring System

![Domain](https://img.shields.io/badge/Domain-FinTech_&_Banking_Compliance-0984E3?style=flat-square)
![Focus](https://img.shields.io/badge/Focus-AML_Fraud_Detection_&_PII_Privacy-FD79A8?style=flat-square)

## 📖 Executive Summary
Financial institutions process thousands of ledger entries daily, requiring automated Anti-Money Laundering (AML) checks and strict customer privacy (GDPR/PII) compliance. This project builds a transaction monitoring workflow to flag high-value transfers, fix ledger ingestion errors, strip sensitive PII columns, and reset monthly audit tables.

---

## 📌 Phase 1: Ledger Logging & Automated Risk Flagging
* **High-Capacity Transaction Schema:** Created ank_transactions utilizing BIGINT to safely handle large account numbers and transaction volumes.
* **High-Value Anomaly Detection:** Queried transfers exceeding 100,000 to identify potential money-laundering or fraud patterns.
* **Automated AML Rule Engine:**
  * Flagged high-risk transactions (Txn_Amount >= 100,000) by setting Audit_Status = 'Flagged'.
  * Cleared standard transactions (Txn_Amount < 100,000) by setting Audit_Status = 'Verified'.
* **Ledger Reconciliation:** Rectified mislogged customer names and transaction amounts (T004) in a single atomic UPDATE.
* **Compliance Filtering & Test Purge:** Isolated unverified transactions (Audit_Status != 'Verified') and purged sandbox test entries ('T001', 'T002').

---

## 🚀 Phase 2: PII Privacy Compliance & Cycle Reset
* **Emergency Contact Logging:** Added Customer_Phone BIGINT via ALTER TABLE for high-risk transaction verification calls.
* **IBAN / Alphanumeric Account Support:** Upgraded Account_No from BIGINT to VARCHAR(25) using MODIFY COLUMN to support alphanumeric international bank codes.
* **PII Data Masking (Privacy Law Compliance):** Permanently dropped the Customer_Name column (DROP COLUMN) so audit logs only expose anonymized IDs and account numbers.
* **Audit Extraction & Instant Cycle Reset:** Extracted final 'Flagged' records for regulatory reporting and executed TRUNCATE TABLE bank_transactions to prepare a clean slate for the next month's ledger.

---

## 💡 Key Business Impact
* Enforced automated AML risk thresholds (100K+) and achieved PII privacy compliance by stripping customer names from audit tables.
