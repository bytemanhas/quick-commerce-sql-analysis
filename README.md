# quick-commerce-sql-analysis
SQL data analysis project exploring operations of a quick-commerce platform. The project analyzes order volume, delivery performance, top-selling products, revenue by category, and city-wise demand using SQL queries on a relational dataset.
# 🛒 Quick Commerce Sales Analysis (SQL)

## 📌 Project Overview
This project focuses on analyzing quick commerce (instant delivery platforms like Blinkit/Zepto) sales data using SQL. The goal is to understand order patterns, delivery performance, product demand, and regional sales trends to support business decision-making.

---

## 🎯 Objective
The objective of this project is to:
- Analyze order volume and sales performance
- Identify top-selling products and categories
- Understand delivery performance and customer behavior
- Evaluate regional demand patterns

---

## 🛠️ Tools & Technologies
- SQL (MySQL / SQLite)
- CSV Dataset
- Data Analysis using SQL queries

---

## 📂 Dataset Description
The dataset contains quick commerce transaction data with the following fields:
- Order ID
- Customer ID
- Product Name
- Category
- Quantity
- Price
- Sales
- Delivery Time
- City / Region
- Order Date

---

## 📊 Key SQL Analysis Performed

### 1. Total Orders
Calculated total number of orders:
```sql
SELECT COUNT(*) FROM quick_commerce;

2. Total Sales
Calculated overall revenue:
SELECT SUM(sales) FROM quick_commerce;

3. Sales by City
SELECT city, SUM(sales) AS total_sales
FROM quick_commerce
GROUP BY city;

4. Top-Selling Products
SELECT product, SUM(sales) AS total_sales
FROM quick_commerce
GROUP BY product
ORDER BY total_sales DESC;

5. Delivery Performance Analysis
SELECT AVG(delivery_time) AS avg_delivery_time
FROM quick_commerce;

6. Monthly Sales Trend
SELECT MONTH(order_date) AS month,
SUM(sales) AS monthly_sales
FROM quick_commerce
GROUP BY month;

7. Product Ranking (Window Function)
SELECT product,
SUM(sales) AS total_sales,
RANK() OVER (ORDER BY SUM(sales) DESC) AS rank
FROM quick_commerce
GROUP BY product;

🔍 Key Insights
Certain products generate the majority of total sales
Urban areas show higher order volumes
Faster delivery is associated with higher customer satisfaction
Sales vary across different months indicating demand patterns

💡 Business Recommendations
Focus inventory on high-demand products
Optimize delivery routes to reduce delivery time
Target high-performing cities with marketing campaigns
Improve delivery efficiency to enhance customer experience


📌 Conclusion
This project demonstrates how SQL can be used to analyze operational and sales data in quick commerce businesses to extract meaningful insights and support data-driven decisions.

🔗 Author

Yashwant Manhas
