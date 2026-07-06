SELECT * FROM comfyco_salesdb.`sales targets`;

CREATE TABLE clean_salestargets AS

SELECT 

	ï»¿Year AS Year, 
	REPLACE(Quarter, "Q", "") AS Quarter,  
	Sales_Rep, 
	Region, 
	Revenue_Target

FROM comfyco_salesdb.`sales targets`;
