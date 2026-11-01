# 🛒 Case Study 01: Quick-Commerce Dark Store Inventory Management

![Domain](https://img.shields.io/badge/Domain-Quick_Commerce_&_Retail-FF6B6B?style=flat-square)
![Focus](https://img.shields.io/badge/Focus-Inventory_CRUD_&_Schema_Migration-4ECDC4?style=flat-square)

## 📖 Executive Summary

In ultra-fast delivery models (like Blinkit or Zepto), dark stores operate on razor-thin inventory margins. A delayed stock update or unflagged out-of-stock item directly leads to order cancellations. This project simulates the backend SQL operations required to maintain real-time catalog accuracy and evolve the database schema for supplier management.

---

## 📌 Phase 1: Core CRUD & Catalog Operations

* **Database Initialization:** Designed the `store_inventory` table with optimized data types and bulk-seeded 8 core SKUs across *Fruits, Vegetables,* and *Electronics*.
* **Low-Stock Alert Trigger:** Queried critical SKUs (`Stock_Quantity <= 10`) ordered alphabetically to prioritize warehouse replenishment.
* **High-Ticket Item Audit:** Filtered premium inventory (`Price > 250`) for targeted security and quality checks.
* **Dynamic Restock Pricing:** Executed multi-column `UPDATE` statements to revise stock counts (`50`) and adjust market pricing simultaneously.
* **Automated Stockout Flagging:** Marked zero-quantity items as `Out of Stock` using conditional `WHERE` predicates.
* **Catalog Decommissioning:** Purged discontinued product IDs in a single batch operation using `DELETE ... WHERE Product_ID IN (...)`.

---

## 🚀 Phase 2: Live Schema Evolution (DDL)

* **Supplier Contact Integration:** Expanded the live table structure using `ALTER TABLE ... ADD COLUMN Supplier_Phone BIGINT`.
* **International Format Migration:** Modified `Supplier_Phone` to `VARCHAR(20)` via `ALTER TABLE ... MODIFY COLUMN` to support country codes and hyphens (`+555-1111`), and assigned numbers to low-stock SKUs.
* **Schema De-bloating:** Dropped the redundant `Category` attribute using `ALTER TABLE ... DROP COLUMN`.
* **End-of-Season Fast Wipe:** Executed `TRUNCATE TABLE store_inventory` to instantaneously flush seasonal rows while preserving the underlying table schema for the next cycle.

---

## 💡 Key Business Impact

* Eliminated manual stockout tracking and enabled instant supplier reach-out for critical SKUs.
