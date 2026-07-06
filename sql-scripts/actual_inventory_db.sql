SELECT * FROM comfyco_salesdb.inventory_db;

CREATE TABLE clean_inventory_db AS

SELECT 
	ï»¿Year AS Year,
	Month, 
	REPLACE(Quarter, "Q", "") AS Quarter, 
	Product_Name, 
	Product_Category, 
	Beginning_Stock, 
	Units_Received, 
	Units_Sold, 
	Ending_Stock, 
	Reorder_Point, 
	Safety_Stock, 
	UPPER(TRIM(Stock_Unit)) AS Stock_Unit

FROM comfyco_salesdb.inventory_db;

