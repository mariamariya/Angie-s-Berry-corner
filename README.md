# AngiesBerryCorner: Data Exploration 

This project contains SQL queries written to query a fruit store's database for key insights to help retailers market better and effectively, and to establish trends that help them capitalize on customer behaviour.

Data Source:

The dataset was gotten from https://www.techchak.com/ and it contains four tables:  **customer**, **employee**, **transaction**, and **product**.
- customer table contains information of all Angie Berry's customer first and last names and their unique ids. 
- employee table has the list of all 10 employees, start date, and end date if they have resigned or been fired.
- transaction table which contain a list of the last 100,000 transactions as of 19th August 2019 and attributes (id, customer_id, product_id, quantity, paid_at, Amount) 
-  product table which has the names of all 12 products currently sold, the product_id, unit, and product price.


# Background

Angie’s Berry corner is a fruit store located in LA and has sorted the help of the data science and analytics team to extract data from their data warehouse to answer business questions about their recent upswing in sales.
We were provided with 4 tables presented in an excel format namely: 
- transaction_report with columns (id, customer_id, product_id, quantity, paid_at, Amount) which contain a list of the last 100,000 transactions as of 19th August 2019.
- loyalty_customers which has the name of all their customers and id.
- product table which has the name of all 12 products currently sold, id, unit, and price.
- employee table  which contains the list of all 10 employees, start date, and end date if they have resigned or been fired.

# Methodology
- Since Angie’s Berry corner has no active database, a database was created, 4 tables were created within the database, and data was stored in the tables using the copy command method in PostgreSQL.
- Wrote SQL codes to extract data that answer business questions.


# Questions
This analysis will answer the following questions:
1. What's Angie’s Berry Corner’s average daily sales volume?
2. Which products sell best?
3. Who are the top 5 Angie loyalty customers?
4. What's the full name of their current staffs?
5. What's the product that generates the least income and by much?
6. How much does the organization realize from sales?
7. How much does the organization realize from each product?
8. What's the product that generates the highest income and by much?
9. Which customers patronize Angie Berry the most?
10. Which customer generate least income and by how much?
11. Which of the employees spent the least day at angie?
12. What's the organization's busiest hour?
13. What's the organization's busiest day of the week?
14. What's the organization's busiest month of the year?
