# ComfyCo Sales ETL & Power BI Showcase

## Overview
This project demonstrates an end-to-end Business Intelligence workflow using **Excel**, **MySQL**, and **Power BI**.  
It highlights data integration, transformation, and visualization techniques to analyze sales performance across regions, channels, and customer segments.

The goal is to showcase proficiency in:
- Building structured **dataflows** and **ETL pipelines**
- Designing **star schema models** for analytical reporting
- Developing **interactive dashboards** with DAX measures and visual storytelling

---

## Project Architecture

### Data Flow
1. **Excel Source Files** → Initial raw sales data
2. **MySQL Database (`comfyco_salesdb`)** → Data cleaning, normalization, and schema creation
3. **Power BI Desktop** → Data modeling, relationships, and visualization

### Database Schema
- **Fact Table:** `fact_sales_master` — transactional data (Order_ID, Revenue, Units_Sold, etc.)
- **Dimension Tables:**  
  - `dim_channel`  
  - `dim_customerseg`  
  - `dim_productcategory`  
  - `dim_productname`  
  - `dim_region` / `dim_region_province`  
  - `dim_calendar`  
  - `(a) DAX Measures` — calculated KPIs like Average Order Value

---

## Key Features
- **ETL Integration:** Connected Excel sheets to MySQL and imported structured tables into Power BI.
- **Data Modeling:** Implemented one-to-many relationships between fact and dimension tables.
- **DAX Calculations:** Created measures for revenue growth, order value, and channel mix.
- **Dashboard Design:** Developed multiple pages for executive insights and operational tracking.

---

## Dashboard Pages
1. **Ops Summary** – High-level KPIs and performance overview  
2. **Customer Trends** – Segmentation and behavioral insights  
3. **Channel Mix Trends** – Revenue flow across sales channels and regions  
4. **Regional Trends** – Province-level breakdowns and comparisons  
5. **Sales & Ops Planning** – Forecasting and planning metrics  

---

## Tech Stack
| Tool | Purpose |
|------|----------|
| **Excel** | Source data and initial structure |
| **MySQL** | Data cleaning, schema design, and ETL |
| **Power BI** | Modeling, DAX, and visualization |
| **Copilot AI** | Assisted documentation and workflow optimization |

---

## Setup Instructions
1. Import the SQL scripts from `/sql-scripts` into MySQL.
2. Connect Power BI to the database using:
    Server: localhost:3306
    Database: comfyco_salesdb
3. Refresh data and validate relationships in the **Model View**.
4. Explore dashboards under the **Sales & Ops Planning** workspace.

---

## Repository Structure
sql-to-powerbi-etl-pipeline/
│
├── data-raw/                # Original Excel source files
├── sql-scripts/             # MySQL schema and transformation queries
├── etl-pipeline/            # Documentation of dataflow process
├── powerbi-model/           # PBIX file and model screenshots
├── dashboard-images/        # PNG visuals of dashboards
├── video-walkthrough/       # Demo video explaining report logic
└── README.md                # Project overview and setup guide

---

## Outcomes
- Demonstrated **data engineering and visualization synergy**
- Built a **scalable BI model** with clean relationships and reusable measures
- Showcased **business storytelling through Power BI dashboards**

---

## 🔗 Author
**Samuel John-Maxwell**  
Charlottetown, PE, Canada  
*Data Analytics & Process Improvement Professional*  
