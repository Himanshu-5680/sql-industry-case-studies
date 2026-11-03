# 🏦 Case Study 03: FinTech Transaction Logging & Fraud Monitoring System

![Domain](https://img.shields.io/badge/Domain-FinTech_%26_Banking_Compliance-0984E3?style=flat-square)
![Focus](https://img.shields.io/badge/Focus-AML_Fraud_Detection,_PII_Privacy_%26_Audit_Logs-FD79A8?style=flat-square)

## 📖 Executive Summary

Financial institutions process thousands of ledger entries daily, requiring automated Anti-Money Laundering (AML) checks, strict customer privacy (GDPR/PII) compliance, and relational audit trails. This project builds an end-to-end transaction monitoring and relational logging system.

---

## 📌 Phase 1: Ledger Logging & Automated Risk Flagging

* **High-Capacity Transaction Schema:** Created `bank_transactions` utilizing `BIGINT` and queried transfers exceeding `100,000`.
* **Automated AML Rule Engine:** Flagged high-risk transfers (`>= 100,000`) as `Flagged` and standard transfers (`< 100,000`) as `Verified`.
* **Ledger Reconciliation & Test Purge:** Rectified mislogged entries (`T004`) and purged sandbox test transactions (`T001`, `T002`).

---

## 🚀 Phase 2: PII Privacy Compliance & Cycle Reset

* **IBAN Support & PII Masking:** Upgraded `Account_No` to `VARCHAR(25)` and permanently dropped `Customer_Name` (`DROP COLUMN`) for privacy compliance.
* **Instant Cycle Reset:** Extracted final `Flagged` records and executed `TRUNCATE TABLE` for monthly ledger resets.

---

## 🔗 Phase 3: Relational Fraud Audit Logs & Schema Renaming

* **Relational AML Audit Trail (`FOREIGN KEY`):** Architected `fraud_audit_logs` (`Log_ID`, `Txn_ID`, `Auditor_Remarks`) linked via `FOREIGN KEY (Txn_ID) REFERENCES bank_transactions(Txn_ID)` to track investigator notes per transaction.
* **Schema Refactoring (`CHANGE COLUMN`):** Renamed `Audit_Status` to `Verification_Status VARCHAR(25)` using `ALTER TABLE ... CHANGE` and tested `Branch_Code` lifecycle modifications.
* **Parent-Child Dependency Management:** Demonstrated safe child-table teardown (`TRUNCATE TABLE fraud_audit_logs` followed by `DROP TABLE fraud_audit_logs`) without violating foreign key dependencies.

---

## 💡 Key Business Impact

* Established a relational AML audit trail linking investigator remarks directly to flagged ledger transactions while maintaining strict foreign-key dependency safety.
