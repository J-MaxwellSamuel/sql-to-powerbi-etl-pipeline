SELECT * FROM comfyco_salesdb.opex_db;

CREATE TABLE clean_opex_db AS

SELECT 

	ï»¿Year AS Year, 
	Month, 
	REPLACE(Quarter, "Q", "") AS Quarter, 
	Region, 
	Expense_Category, 
	Monthly_Amount 
    
FROM opex_db;

ALTER TABLE clean_opex_db
ADD COLUMN RYM VARCHAR(255);

UPDATE clean_opex_db
SET Region = CASE UPPER(TRIM(Region))
    WHEN 'ONTARIO'  THEN 'Ontario'
    WHEN 'QUEBEC'   THEN 'Quebec'
    WHEN 'BC'       THEN 'BC'
    WHEN 'PRAIRIES' THEN 'Prairies'
    WHEN 'ATLANTIC' THEN 'Atlantic'
    ELSE Region
END;

UPDATE clean_opex_db
SET RYM = CONCAT(Region, Year, Month);
