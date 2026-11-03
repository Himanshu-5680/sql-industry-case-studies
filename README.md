# 🗄️ SQL Industry Case Studies & Data Engineering Playbook

![MySQL](https://img.shields.io/badge/Database-MySQL_8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/CI%2FCD-Automated_SQL_Check-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)
![Status](https://img.shields.io/badge/Portfolio_Status-Phase_3_Completed-2EA44F?style=for-the-badge)

> **From Raw Schemas to Relational Integrity & Production Business Logic.**
> Welcome to my practical SQL playbook! This repository simulates real-world **Data Analytics & Database Engineering** lifecycles across E-Commerce, HR Tech, and FinTech domains.

---

## 🏗️ Repository Architecture (The 4-Stage Lifecycle)

Every industry case study in this repository follows a strict, modular production workflow:

1. **`01_schema_and_seed.sql`** — Database initialization, data-type optimization (`VARCHAR` vs `CHAR`, `DECIMAL`, `BIGINT`), and bulk data ingestion.
2. **`02_business_queries.sql`** — Daily CRUD operations, anomaly detection, dynamic pricing updates, and data hygiene queries.
3. **`03_schema_evolution_...sql`** — Live production schema migrations (`ALTER`, `MODIFY`, `DROP`), strict constraint enforcement, and high-speed cycle resets (`TRUNCATE`).
4. **`04_constraints_and_relations.sql`** — Relational data modeling (`FOREIGN KEY`), domain integrity (`CHECK`, `DATE`), column renaming (`CHANGE`), and parent-child lifecycle management.

---

## 📂 Industry Case Studies Tracker

| Case Study | Industry Domain | Business Problem Solved | SQL Capabilities Demonstrated | Status |
| :--- | :--- | :--- | :--- | :--- |
| **[01. Dark Store Inventory](./01_Quick_Commerce_Inventory/)** | 🛒 Quick-Commerce | Stockout prevention, negative-price blocking (`CHECK`) & order linking (`FOREIGN KEY`) | `CREATE`, `INSERT`, `SELECT`, `UPDATE`, `DELETE IN`, `ALTER (ADD, MODIFY, CHANGE, DROP)`, `CHECK`, `FOREIGN KEY`, `TRUNCATE` | ✅ **Phase 1–3 Done** |
| **[02. Global HR & Payroll Audit](./02_HR_Payroll_Audit/)** | 👥 HR Analytics | Compensation auditing, salary floor rules (`CHECK`) & medical history linking (`FOREIGN KEY`) | Single/Bulk `INSERT`, `DECIMAL`, `DATE`, `WHERE`, `UPDATE`, `ALTER (CHANGE)`, `PRIMARY KEY`, `FOREIGN KEY`, `CHECK` | ✅ **Phase 1–3 Done** |
| **[03. FinTech Fraud Monitor](./03_FinTech_Fraud_Monitoring/)** | 🏦 Banking & FinTech | High-value AML fraud flagging, PII privacy compliance & relational audit logs (`FOREIGN KEY`) | `BIGINT`, Risk Flagging, `DELETE IN`, `ALTER (CHANGE)`, `CHECK`, `FOREIGN KEY`, `TRUNCATE`, `DROP TABLE` | ✅ **Phase 1–3 Done** |

---

## 🛠️ Tech Stack & Engineering Workflow

* **RDBMS:** MySQL 8.0
* **Development Environment:** Visual Studio Code + GitHub CLI (`gh`)
* **CI/CD Pipeline:** Automated GitHub Actions workflow verifying SQL script integrity on every push and Pull Request.
