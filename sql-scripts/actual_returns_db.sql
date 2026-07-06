SELECT * FROM comfyco_salesdb.returns_db;

CREATE TABLE clean_returns_db AS

SELECT 

	REPLACE(ï»¿Order_ID, "ORD", "") AS Order_ID, 
	Original_Revenue, 
	Return_Amount, 
	Return_Date, 
	LOWER(Return_Reason) AS Return_Reason, 
	Region, 
	Product_Category, 
	Product_Name, 
	Year, 
	Channel
    
FROM returns_db