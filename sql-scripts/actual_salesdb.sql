SELECT * FROM comfyco_salesdb.salesdb;

CREATE TABLE clean_salesdb AS
SELECT 
	REPLACE(ï»¿Order_ID, 'ORD', '') AS Order_ID,
	REPLACE(Quarter, 'Q', '') AS Quarter,
	Month,
	Order_Date,
	Year,
	Region,
	Sales_Rep,
	Product_Category,
	Product_Name,
	Units_Sold,
	REPLACE(Unit_Price, '$', '') AS Unit_Price,
	REPLACE(Revenue, '$', '') AS Revenue,
	Customer_Segment,
	Channel
FROM comfyco_salesdb.salesdb;
