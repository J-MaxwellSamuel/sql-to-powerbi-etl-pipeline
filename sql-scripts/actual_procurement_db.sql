SELECT * FROM comfyco_salesdb.procurement_db;

CREATE TABLE clean_procurement_db AS

SELECT
	ï»¿PO_ID,
	Year,
	Month,  
	Quarter,  
	Product_Name,  
	Product_Category,  
	Supplier_Name,  
	Units_Ordered,  
	Units_Received_Actual,  
	Fill_Rate,  
	PO_Value,  
	PO_Order_Date,  
	Expected_Delivery,  
	Actual_Delivery,  
	On_Time_Delivery,  
	Lead_Time_Days
FROM comfyco_salesdb.procurement_db;