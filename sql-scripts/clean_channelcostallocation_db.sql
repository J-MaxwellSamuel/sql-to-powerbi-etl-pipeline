SELECT * FROM comfyco_salesdb.clean_channelcostallocation_db;

ALTER TABLE clean_channelcostallocation_db
ADD COLUMN SalesJoinID VARCHAR (25);

UPDATE clean_channelcostallocation_db
SET SalesJoinID = CONCAT(Year, Month, Channel);