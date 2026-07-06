SELECT * FROM comfyco_salesdb.demandplanning_db;

CREATE TABLE clean_demandplanning_db AS

SELECT 

ï»¿Year AS Year,
Month, 
REPLACE(Quarter, "Q", "") AS Quarter, 
Product_Name,
Product_Category, 
Forecast_Units,
Actual_Units, 
Forecast_Error,
Forecast_Accuracy_Pct, 
Bias, 
LOWER(Forecast_Source) AS Forecast_Source

FROM demandplanning_db;