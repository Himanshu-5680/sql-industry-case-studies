# 🛒 Project 01: Quick-Commerce Dark Store Inventory Management

## 📌 Business Scenario
A quick-commerce dark store needs to manage its daily product inventory. The operations team requires SQL scripts to log product stock, trigger low-stock alerts, filter high-value electronics/items, update prices during restocks, mark zero-quantity items as `'Out of Stock'`, and purge discontinued products.

## 🗄️ Table Schema (`Store_Inventory`)
* `Product_ID` (INT, Primary Key)
* `Product_Name` (VARCHAR)
* `Category` (VARCHAR)
* `Price` (INT)
* `Stock_Quantity` (INT)
* `Status` (VARCHAR)

## 🎯 Key Operations Performed
1. **Schema Setup & Bulk Seeding:** Created the inventory table and inserted 8 products across Fruits, Vegetables, and Electronics.
2. **Low Stock Alert:** Filtered products where `Stock_Quantity <= 10` sorted alphabetically.
3. **High-Value Audit:** Extracted all items priced above `250`.
4. **Restock & Dynamic Pricing:** Updated stock quantity to `50` and revised price for specific items.
5. **Automated Status Flagging:** Updated item status to `'Out of Stock'` where `Stock_Quantity = 0`.
6. **Catalog Cleanup:** Deleted discontinued products using the `IN` operator.