-- Low Price Alert.
SELECT `Product_ID`,`Product_Name`,`Stock_Quantity` FROM `store_inventory`
WHERE `Stock_Quantity` <= 10
ORDER BY 2;

-- High-Value Filter
SELECT * FROM `store_inventory`
WHERE `Price` > 250;

-- Restock & Price Update
UPDATE `store_inventory` 
SET `Stock_Quantity` = 50 , `Price` = 260
WHERE `Product_ID` = 3;

-- Status Update.
UPDATE `store_inventory`
SET `Status` = 'Out of Stock'
WHERE `Stock_Quantity` = 0;

-- Remove Discontinued Items.
DELETE FROM `store_inventory`
WHERE `Product_ID` IN (2,4);

SELECT * FROM `store_inventory`;
            
            -- THE END --