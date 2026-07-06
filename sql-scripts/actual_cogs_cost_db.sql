SELECT * FROM comfyco_salesdb.cogs_cost_db;

CREATE TABLE clean_cogs_costdb AS 

SELECT
 
	REPLACE(ï»¿Order_ID, "ORD", "") AS Order_ID, 
	Product_Category,  
	Product_Name,  
	Revenue, 
    COGS_Rate,
	COGS_Amount 

FROM comfyco_salesdb.cogs_cost_db;