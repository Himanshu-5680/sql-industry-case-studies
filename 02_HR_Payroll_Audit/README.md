# 👥 Project 02: HR Employee Onboarding & Payroll Audit

## 📌 Business Scenario
The HR Operations team needs a centralized database to onboard new hires, audit high-salary brackets, process annual appraisals/promotions, and clean up records of exited or underperforming employees.

## 🗄️ Table Schema (`Employee_Records`)
* `Emp_ID` (VARCHAR, Primary Key)
* `First_Name` & `Last_Name` (VARCHAR)
* `Department` (VARCHAR)
* `Designation` (VARCHAR)
* `Salary` (BIGINT)
* `Performance_Rating` (DECIMAL)

## 🎯 Key Operations Performed
1. **Employee Onboarding:** Demonstrated both single-row and bulk multi-row `INSERT` methods.
2. **Payroll Audit:** Retrieved employees earning `>= 50000` ordered by salary.
3. **Department Exclusion:** Filtered non-HR staff using the `<>` (Not Equal) operator.
4. **Appraisal & Promotions:** Updated designations and salary packages for promoted analysts.
5. **Compliance & Exit Cleanup:** Removed records with performance ratings `< 2` and processed mass exits using `WHERE Emp_ID IN (...)`.