SELECT * FROM comfyco_salesdb.clean_salesdb;

CREATE VIEW Dim_Region AS
SELECT DISTINCT Region
FROM clean_salesdb; 

CREATE VIEW Dim_ProdCategory AS
SELECT DISTINCT Product_Category
FROM clean_salesdb; 

CREATE VIEW Dim_ProdName AS
SELECT DISTINCT Product_Name
FROM clean_salesdb; 

CREATE VIEW Dim_CustomerSeg AS
SELECT DISTINCT Customer_Segment
FROM clean_salesdb;

CREATE VIEW Dim_Channel AS
SELECT DISTINCT Channel
FROM clean_salesdb;

ALTER TABLE clean_salesdb
ADD COLUMN SalesChannelID VARCHAR(25);

UPDATE clean_salesdb
SET SalesChannelID = CONCAT(Year, Month, Channel); 

ALTER TABLE clean_salesdb
ADD COLUMN SalesRepJoinID VARCHAR(25);

UPDATE clean_salesdb
SET SalesRepJoinID = CONCAT(Year, Quarter, Sales_Rep);

ALTER TABLE clean_salesdb
ADD COLUMN ProdNameYMID VARCHAR(255);

UPDATE clean_salesdb
SET ProdNameYMID = CONCAT(Product_Name, Year, Month);

