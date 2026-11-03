# 🛒 Case Study 01: Quick-Commerce Dark Store Inventory Management

![Domain](https://img.shields.io/badge/Domain-Quick_Commerce_%26_Retail-FF6B6B?style=flat-square)
![Focus](https://img.shields.io/badge/Focus-CRUD,_Schema_Migration_%26_Relational_Integrity-4ECDC4?style=flat-square)

## 📖 Executive Summary

In ultra-fast delivery models (like Blinkit or Zepto), dark stores operate on razor-thin inventory margins. This project simulates the backend SQL operations required to maintain real-time catalog accuracy, evolve live schemas, enforce domain constraints, and link inventory SKUs with purchase orders.

---

## 📌 Phase 1: Core CRUD & Catalog Operations

* **Database Initialization:** Designed the `store_inventory` table with optimized data types and bulk-seeded 8 core SKUs across *Fruits, Vegetables,* and *Electronics*.
* **Low-Stock Alert Trigger:** Queried critical SKUs (`Stock_Quantity <= 10`) ordered alphabetically to prioritize warehouse replenishment.
* **High-Ticket Item Audit:** Filtered premium inventory (`Price > 250`) for targeted security and quality checks.
* **Dynamic Restock Pricing & Stockout Flagging:** Executed multi-column `UPDATE` statements and marked zero-quantity items as `Out of Stock`.
* **Catalog Decommissioning:** Purged discontinued product IDs in a single batch operation using `DELETE ... WHERE Product_ID IN (...)`.

---

## 🚀 Phase 2: Live Schema Evolution (DDL)

* **Supplier Contact Integration:** Expanded the live table structure using `ALTER TABLE ... ADD COLUMN Supplier_Phone BIGINT` and modified it to `VARCHAR(20)` to support international formats (`+555-1111`).
* **Schema De-bloating & Fast Wipe:** Dropped the redundant `Category` attribute (`DROP COLUMN`) and executed `TRUNCATE TABLE` for seasonal resets.

---

## 🔗 Phase 3: Domain Integrity & Relational Order Linking

* **Domain Integrity Enforcement (`CHECK` & `DATE`):** Re-architected `store_inventory` with `CHECK (Price >= 0)` and `CHECK (Stock_Quantity >= 0)` to block negative pricing/stock bugs at the database engine level, alongside `Expiry_Date DATE` tracking.
* **Referential Integrity (`FOREIGN KEY`):** Created the child table `inventory_orders` linked via `FOREIGN KEY (Product_ID) REFERENCES store_inventory(Product_ID)` to prevent orphaned order records.
* **Attribute Renaming (`CHANGE COLUMN`):** Executed `ALTER TABLE ... CHANGE Product_Name Item_Name VARCHAR(100)` alongside full lifecycle CRUD and child-table truncation.

---

## 💡 Key Business Impact

* Prevented negative-price catalog corruption via `CHECK` constraints and established relational integrity between warehouse stock and order logs.
