SELECT * FROM comfyco_salesdb.clean_headcount_capacity_db;

SELECT * FROM comfyco_salesdb.clean_headcount_capacity_db;

ALTER TABLE clean_headcount_capacity_db
ADD COLUMN RYM_ID VARCHAR(25);

UPDATE clean_headcount_capacity_db
SET RYM_ID = CONCAT(Region, Year, Month);