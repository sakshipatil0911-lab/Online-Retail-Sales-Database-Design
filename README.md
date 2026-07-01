# 🛒 Online Retail Sales Database Design

## 📌 Project Overview

The Online Retail Sales Database is a SQL-based project developed to manage and analyze the operations of an online retail store. It stores information about customers, products, categories, orders, payments, and order items. The project demonstrates database design, relationships, SQL queries, and reporting.

---

## 🎯 Objectives

- Design a normalized relational database.
- Manage customer, product, and order information.
- Perform data analysis using SQL.
- Generate business reports.
- Demonstrate advanced SQL concepts.

---

## 🛠️ Technologies Used

- MySQL
- MySQL Workbench

---

## 🗂️ Database Schema

The project consists of the following tables:

- Customers
- Categories
- Products
- Orders
- Order_Items
- Payments

---

## 🔗 Database Relationships

- One customer can place many orders.
- One order can contain multiple products.
- One product belongs to one category.
- One order has one payment.
- Order_Items acts as a bridge table between Orders and Products.

---

## 📂 Project Structure

```
Online-Retail-Sales-Database/
│── schema.sql
│── categories.sql
│── customers.sql
│── products.sql
│── orders.sql
│── order_items.sql
│── payments.sql
│── joins_queries.sql
│── views.sql
│── procedures.sql
│── triggers.sql
│── indexes.sql
│── sales_report_queries.sql
│── ER_Diagram.png
│── README.md
```

---

## ✨ Features

- Database creation
- Table relationships
- Primary and Foreign Keys
- Constraints
- Sample data insertion
- SQL Joins
- Aggregate Functions
- Views
- Stored Procedures
- Triggers
- Indexes
- Business Reports

---

## 📊 Sample Business Reports

- Total Sales Revenue
- Top Selling Products
- Customer-wise Orders
- Revenue by Payment Method
- Monthly Sales Report
- Revenue by Category
- Low Stock Products
- Highest Spending Customers

---

## 📚 SQL Concepts Covered

- DDL Commands
- DML Commands
- Constraints
- Joins
- Aggregate Functions
- GROUP BY
- HAVING
- Subqueries
- Views
- Stored Procedures
- Triggers
- Indexes

---

## ▶️ How to Run the Project

1. Open MySQL Workbench.
2. Create a new database.
3. Run `schema.sql`.
4. Execute the data insertion files:
   - categories.sql
   - customers.sql
   - products.sql
   - orders.sql
   - order_items.sql
   - payments.sql
5. Run the remaining SQL files:
   - joins_queries.sql
   - views.sql
   - procedures.sql
   - triggers.sql
   - indexes.sql
   - sales_report_queries.sql

---

## 📈 Future Enhancements

- Add supplier management.
- Add inventory tracking.
- Create stored functions.
- Implement user authentication.
- Build a Power BI dashboard using the database.

---

## 👩‍💻 Author

**Sakshi Patil**

M.Sc. Computer Science

SQL | Power BI | Python | MySQL
