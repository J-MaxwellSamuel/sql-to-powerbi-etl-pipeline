SELECT * FROM comfyco_salesdb.clean_demandplanning_db

WHERE Forecast_Units IS NOT NULL 
AND 
NOT (Year = 2021 AND Month <= 6);

ALTER TABLE clean_demandplanning_db
ADD COLUMN ProdNameYMID VARCHAR(255);

UPDATE clean_demandplanning_db
SET ProdNameYMID = CONCAT(Product_Name, Year, Month);
