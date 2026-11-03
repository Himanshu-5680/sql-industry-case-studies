# 👥 Case Study 02: HR Employee Onboarding & Global Payroll Audit

![Domain](https://img.shields.io/badge/Domain-HR_Tech_%26_People_Analytics-6C5CE7?style=flat-square)
![Focus](https://img.shields.io/badge/Focus-Payroll_Audit,_Governance_%26_Relational_Schemas-00B894?style=flat-square)

## 📖 Executive Summary

As an organization scales globally, Human Resources and Finance teams must maintain strict control over employee onboarding, compensation bands, and employee health records. This case study demonstrates how to audit payroll data, process promotions, enforce `CHECK` & `NOT NULL` governance, and link employee medical histories.

---

## 📌 Phase 1: Onboarding & Compensation Auditing

* **Hybrid Onboarding Pipeline:** Demonstrated single-row and bulk multi-row cohort ingestion into `employee_records` using `DECIMAL` precision.
* **High-Earner Payroll Audit & Department Exclusion:** Extracted compensation records for employees earning `>= 50,000` and isolated non-HR staff (`Department <> HR`).
* **Appraisals & Attrition Cleanup:** Executed targeted `UPDATE` promotions and batch resignations (`DELETE ... WHERE Emp_ID IN (...)`).

---

## 🚀 Phase 2: Global Expansion & Strict Governance

* **Global Mobility (`DE` Relocation):** Added `Country_Code CHAR(2)`, expanded `First_Name` capacity, and assigned `DE` (Germany) to Artificial-Intelligence staff.
* **Enterprise Architecture Reset:** Rebuilt `employee_records` enforcing strict `PRIMARY KEY` and mandatory `NOT NULL` constraints.

---

## 🔗 Phase 3: Relational Medical Records & Payroll Integrity

* **Compensation Floor Protection (`CHECK`):** Enforced `Salary DECIMAL(10,2) CHECK (Salary > 0)` and `Joining_Date DATE` to guarantee valid financial and tenure records.
* **Relational Healthcare Schema (`FOREIGN KEY`):** Built `employee_medical_history` linked via `FOREIGN KEY (Emp_ID) REFERENCES employee_records(Emp_ID)` so medical records strictly map to active employees.
* **Schema Refactoring (`CHANGE COLUMN`):** Added/modified `Bonus` precision (`BIGINT` to `DECIMAL(8,2)`), renamed `First_Name` to `Employee_name`, and executed filtered payroll audits.

---

## 💡 Key Business Impact

* Guaranteed zero invalid salary entries via domain `CHECK` rules and eliminated orphaned medical records through `FOREIGN KEY` constraints.
