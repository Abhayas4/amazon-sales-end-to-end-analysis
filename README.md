# Amazon Sales Analysis – End-to-End Data Analytics Project

## Project Overview
This project is a complete end-to-end data analytics solution designed to analyze Amazon sales performance across product categories, regions, and time.

 reminding me## Business Problem
The objective is to analyze sales data and provide insights that help answer:
- Which product categories generate the highest revenue?
- Which regions perform the best?
- How does revenue change over time?
- What is the average customer order value?
- Which factors influence sales performance?

---

## Dataset
The dataset contains Amazon sales transaction records with the following fields:
- Order ID
- Order Date
- Product ID
- Product Category
- Price
- Discount %
- Quantity Sold
- Customer Region
- Payment Method
- Rating & Review Count
- Discounted Price
- Total Revenue

Format: CSV

---

## Data Wrangling (SQL)
Data cleaning and transformation were performed using SQL before importing into Power BI.

### SQL Tasks Performed
- Removed duplicate records using `ROW_NUMBER()`
- Created structured tables:
  - **Sales (Fact Table)**
  - **Orders**
  - **Products (Dimension Table)**
- Extracted unique product information using `SELECT DISTINCT`
- Calculated and validated:
  - Discounted Price
  - Total Revenue
- Ensured proper data types and data consistency

---

## Data Modeling
A **Star Schema** was implemented for efficient analysis:

**Fact Table**
- Sales / Orders

**Dimension Tables**
- Products
- Customer Region
- Date
- Payment Method

Relationships were created in Power BI for optimized performance.

---

## DAX Measures Created
- Total Revenue
- Total Orders
- Total Units Sold
- Total Products
- Average Order Value
- Monthly Revenue
- Sales by Category
- Sales by Region

---

## Dashboard Features

### KPI Cards
- Total Revenue: 32.87M
- Total Orders: 50K
- Total Units Sold: 150K
- Total Products: 4,000
- Average Order Value: 657

### Visualizations
- Sales by Product Category (Donut Chart)
- Total Sales by Region (Bar Chart)
- Monthly Revenue Trend (Line/Area Chart)
- Order-level Data Table

### Interactive Filters (Slicers)
- Product Category
- Customer Region
- Payment Method

### UI Design
- Custom **Amazon Theme**
- Dark header with Amazon orange highlights
- Clean and professional layout

---

## Key Insights
- North America and Middle East generate the highest revenue
- Electronics and Fashion are top-performing categories
- Revenue shows seasonal variation with mid-year peaks
- Average order value is approximately 657
- Sales distribution is consistent across major regions

---

## Tools & Technologies
- **SQL** – Data cleaning and transformation
- **Power BI** – Dashboard and visualization
- **Power Query** – Data preparation
- **DAX** – Calculations and measures
- **Data Modeling** – Star schema design
- **CSV / Excel** – Data source

---

## Project Structure
