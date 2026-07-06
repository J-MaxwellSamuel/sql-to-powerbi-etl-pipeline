SELECT * FROM comfyco_salesdb.headcount_capacity_db;

CREATE TABLE clean_headcount_capacity_db AS

SELECT 

	Year, 
	Month, 
	REPLACE(Quarter, "Q", "") AS Quarter, 
	Region, 
	TRIM(Department) AS Department, 
	Headcount, 
	Capacity_Utilisation_Pct, 
	Avg_Monthly_Cost_Per_Head

FROM headcount_capacity_db;