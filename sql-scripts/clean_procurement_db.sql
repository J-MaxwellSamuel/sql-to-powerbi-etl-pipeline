SELECT * FROM comfyco_salesdb.clean_procurement_db;

    -- Add a new column for Join Connector to Inventory Levels table --
    ALTER TABLE 
    clean_procurement_db
    ADD COLUMN ProductName_Y_M VARCHAR(20);
    
    UPDATE 
    clean_procurement_db 
    SET ProductName_Y_M = concat(Product_Name, Year, Month);
    
    
    