-- Safe Cleanup.

DROP TABLE IF EXISTS `inventory_orders` ;
DROP TABLE IF EXISTS `store_inventory` ;


-- Table Creation with Domain & Entity Integrity.
CREATE TABLE `store_inventory`(
    Product_ID INT NOT NULL PRIMARY KEY,
    Product_Name VARCHAR(50) NOT NULL,
    Price DECIMAL(6,2) CHECK (Price >= 0),
    Stock_Quantity INT CHECK (Stock_Quantity >= 0),
    Expiry_Date DATE
    );

-- Creating a new table - inventory_orders.
CREATE TABLE `inventory_orders` (
    `Order_ID` CHAR(4) PRIMARY KEY NOT NULL,
    `Product_ID` INT NOT NULL,
    `Order_Qty` INT,
    FOREIGN KEY (`Product_ID`) REFERENCES store_inventory(`Product_ID`)
);

-- Add Column:
ALTER TABLE `store_inventory`
ADD COLUMN `Supplier_Mobile` INT;

-- Modify Data Type
ALTER TABLE `store_inventory`
MODIFY COLUMN `Supplier_Mobile` CHAR(20);

-- Rename Column
ALTER TABLE `store_inventory`
CHANGE `Product_Name` `Item_Name` VARCHAR(100)NOT NULL;

-- Drop Column
ALTER TABLE `store_inventory`
DROP COLUMN `Supplier_Mobile`;

-- Adding Values to table.
INSERT INTO `store_inventory`(
    `Product_ID`,`Item_Name`, `Price`, `Expiry_Date`, `Stock_Quantity`
)
VALUES
(1001,'Mango',100,'2027-04-05',100),
(1002,'Banana',50,'2027-04-05',75),
(1003,'Pine-Apple',200,'2027-04-05',50);

-- update price of a product.
UPDATE store_inventory
SET `Price` = 150 
WHERE `Product_ID` = 1003;

-- Read the data.

-- Truncate Child table.
TRUNCATE TABLE `inventory_orders`;

SELECT * FROM `store_inventory`;
                -- The End --