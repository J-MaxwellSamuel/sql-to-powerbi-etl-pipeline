SELECT * FROM comfyco_salesdb.channelcostallocation_db;

CREATE TABLE clean_channelcostallocation_db AS
SELECT 
	ï»¿Year AS Year,
	Month,
	REPLACE(Quarter, "Q", "") AS Quarter, 
	Channel, 
	Cost_Category, 
	Monthly_Cost	
    
FROM comfyco_salesdb.channelcostallocation_db;