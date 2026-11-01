# 👥 Case Study 02: HR Employee Onboarding & Global Payroll Audit

![Domain](https://img.shields.io/badge/Domain-HR_Tech_&_People_Analytics-6C5CE7?style=flat-square)
![Focus](https://img.shields.io/badge/Focus-Payroll_Audit_&_Data_Governance-00B894?style=flat-square)

## 📖 Executive Summary

As an organization scales globally, Human Resources and Finance teams must maintain strict control over employee onboarding, compensation bands, and international relocations. This case study demonstrates how to audit payroll data, process promotions, and enforce zero-tolerance data quality constraints (`NOT NULL`, `PRIMARY KEY`).

---

## 📌 Phase 1: Onboarding & Compensation Auditing

* **Hybrid Onboarding Pipeline:** Demonstrated both single-row executive onboarding and bulk multi-row cohort ingestion into `employee_records` (using `DECIMAL(2,1)` for accurate fractional performance ratings).
* **High-Earner Payroll Audit:** Extracted compensation records for employees earning `>= 50,000` sorted in ascending order for financial review.
* **Operational Department Exclusion:** Isolated non-HR staff using the inequality operator (`Department <> HR`).
* **Annual Appraisal & Promotions:** Executed targeted `UPDATE` statements to promote analysts (*Junior Data Scientist*, *Senior Data Analyst*) and revise salary packages.
* **Attrition & Performance Cleanup:** Automated the removal of underperforming records (`Performance_Rating < 2`) and processed batch resignations using `WHERE Emp_ID IN (...)`.

---

## 🚀 Phase 2: Global Expansion & Strict Governance

* **Global Mobility Tracking:** Added a fixed-length `Country_Code CHAR(2)` column and expanded `First_Name` capacity to `VARCHAR(50)` via `ALTER TABLE`.
* **Germany (`DE`) AI Hub Relocation:** Assigned `Country_Code = DE` to all employees in the `Artificial-Intelligence` department.
* **Legacy Attribute Removal:** Dropped the `Performance_Rating` column post-appraisal cycle.
* **Enterprise Architecture Reset:** Executed `DROP TABLE` to retire the legacy schema and rebuilt `employee_records` from scratch with strict `PRIMARY KEY` and mandatory `NOT NULL` constraints on core identity fields.

---

## 💡 Key Business Impact

* Prevented blank/corrupted employee records at the database level and streamlined cross-border (`DE`) workforce tracking.
