# E-Commerce Sales & Customer Analytics

## Project Overview

This project analyzes 5,000 e-commerce transactions to identify
revenue trends, customer behavior, regional performance, and the
relationship between delivery time and customer satisfaction.

The analysis was performed using Python and PostgreSQL.

## Business Objectives

1. Identify the key drivers of revenue across product categories,
   regions, and customers.

2. Analyze customer retention and delivery performance to identify
   opportunities for improving revenue and customer satisfaction.

## Dataset

- Total Orders: 5,000
- Total Customers: 989
- Total Units Sold: 20,224
- Total Revenue: ₹5,109,775.74
- Average Order Value: ₹1,021.96

### Main Features

- Order ID
- Order Date
- Customer ID
- Product Category
- Region
- Quantity
- Unit Price
- Discount
- Payment Method
- Delivery Days
- Customer Rating
- Revenue

## Tools & Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- PostgreSQL
- pgAdmin
- Jupyter Notebook
- SQL

## Project Workflow

1. Data Collection
2. Data Cleaning
3. Exploratory Data Analysis
4. Business KPI Analysis
5. Customer Segmentation
6. PostgreSQL Data Analysis
7. Data Visualization
8. Business Insights

## Key Business Insights

### 1. Customer Retention

Repeat customers generated approximately 99.3% of total revenue,
highlighting customer retention as a major contributor to business
revenue.

### 2. Delivery Performance

Longer delivery times were generally associated with lower customer
ratings. The average rating decreased to approximately 2.89 for
orders taking 11 days to deliver.

### Additional Insights

- Electronics generated the highest revenue at approximately ₹1.83M.
- The West region generated the highest regional revenue at
  approximately ₹1.35M.
- Repeat customers had significantly higher average revenue per
  customer than one-time customers.

## SQL Analysis

The PostgreSQL analysis included:

- Overall business KPIs
- Revenue by product category
- Revenue by region
- Repeat vs one-time customer analysis
- Delivery performance and customer rating analysis

## Visualizations

The project contains visualizations for:

- Revenue by Product Category
- Revenue by Region
- Customer Retention
- Delivery Time vs Customer Rating

## Project Structure

Ecommerce_Sales_Customer_Analytics/

├── data/

├── notebook/

├── sql/

├── visualizations/

└── README.md

## Conclusion

The analysis shows that customer retention is a major revenue driver,
while delivery performance has an important relationship with customer
satisfaction. The insights can help an e-commerce business prioritize
customer retention strategies and improve delivery operations.