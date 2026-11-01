-- Add New Column
ALTER TABLE store_inventory
ADD COLUMN Supplier_Phone BIGINT;

-- Modify Data Type
ALTER TABLE store_inventory
MODIFY COLUMN Supplier_Phone VARCHAR(20);

-- Update Phone Numbers
UPDATE store_inventory
SET Supplier_Phone = '+555-1111'
WHERE Stock_Quantity <= 10;

-- Remove Unused Column
ALTER TABLE store_inventory
DROP COLUMN Category;

-- Fast Data Wipe
TRUNCATE TABLE store_inventory;

SELECT * FROM store_inventory;
