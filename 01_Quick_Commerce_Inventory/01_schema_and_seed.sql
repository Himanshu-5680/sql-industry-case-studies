-- Clearing the table if exists.
DROP TABLE IF EXISTS `store_inventory`;
-- Creating the table.
CREATE TABLE `Store_Inventory`(
`Product_ID` INT PRIMARY KEY NOT NULL ,
`Product_Name` VARCHAR(20),
`Category` VARCHAR(20),
`Price` INT,
`Stock_Quantity` INT,
`Status` VARCHAR(20)
);

-- Insert data into table.
INSERT INTO `store_inventory`
(`Product_ID`,`Product_Name`,`Category`, `Price`, `Stock_Quantity`, `Status`)
VALUES(1,'Apple','Fruits',50,10,'Low'),
      (2,'Banana','Fruits',40,50,'High'),
      (3,'Mango','Fruits',100,20,'Medium'),
      (4,'Potato','Vegetables',30,100,'High'),
      (5,'Tomato','Vegetables',60,0,'Low'),
      (6,'Chilli','Vegetables',80,500,'High'),
      (7,'Keyboard','Electronics',1000,10,'Low'),
      (8,'Mouse','Electronics',525,5,'Low');

-- Lets check the table.
SELECT * FROM `store_inventory`;


