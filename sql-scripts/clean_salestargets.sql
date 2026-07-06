SELECT * FROM comfyco_salesdb.clean_salestargets;

ALTER TABLE clean_salestargets
ADD COLUMN YQSalesRepID VARCHAR(255);

UPDATE clean_salestargets
SET YQSalesRepID = CONCAT(Year, Quarter, Sales_Rep);