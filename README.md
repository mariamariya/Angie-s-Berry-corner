# [Angie-s-Berry-corner]
A collection of SQL codes written for Angie's berry Corner

# [Project 1: Sales Analysis](https://www.example.com)

# Background

Angie’s Berry corner is a fruit store located in LA and has sorted the help of the data science and analytics team to extract data from their data warehouse to answer business questions about their recent upswing in sales.
We were provided with 4 tables presented in an excel format namely: 
- transaction_report with columns (id, customer_id, product_id, quantity, paid_at, Amount) which contain a list of the last 100,000 transactions as of 19th August 2019.
- loyalty_customers which has the name of all their customers and id.
- products table which has the name of all 12 products currently sold, id, unit, and price.
- employees’ table  which contains the list of all 10 employees, start date, and end date if they have resigned or been fired.

# Methodology
- Since Angie’s Berry corner have no database, a database was created, 4 tables were created within the database, and data was stored in the tables using the copy command method in PostgreSQL.
- Wrote SQL codes to extract data that answer business questions.

--what is Angie’s berry corner’s average daily sales volume--
select
  round(avg(quantity)) as AvgDailySales,
  round(avg(amount)) as avgsalesamount
from transaction;
