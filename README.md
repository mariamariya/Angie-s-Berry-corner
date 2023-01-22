# Angie-s-Berry-corner-DB

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
- Since Angie’s Berry corner have no database, a database was created, 4 tables were created within the database, and data was stored in the tables using the copy command method in PostgreSQL.
- Wrote SQL codes to extract data that answer business questions.

# Insights

1. What is Angie’s Berry Corner’s average daily sales volume?
   - On average, Angie’s berry corner sells **1** product daily and makes approximately **$43,654**.
2. Which products sell best?
  -  The top 5 products that sell the most are **Honeydew(22,933)**,  **Apple(22,924)**, **Grape(22,849)**, **Cucumber(22,808)**, and **Imbe(22,808)**.

3.  Top 5 Angie loyalty customer?
    - Angies top 5 loyal customers are:
      - Floris Mosen  (304)
      - Marti Hughill  (1043)
      - Abby Brunner  (1401)
      - Lynnett Lidell  (3351)
      - Rudolfo Rosettini  (3992)
     They have all spent the same amount (**$43,697**) and therefore have the same loyalty points of **87,394**.
     
 4. What is the full name of their current staff?
    - Full name and employee_id  of currents staffs are:
      - Frederica Trinke  (2)
      - Borg Noller  (3)
      - Felizia Kettlestring  (4)
      - Byron Menaul  (5)
      - Aguie Jandoure  (6)
      - Buckie Braganca  (8)
      - Fernande Febry  (10)
   
 5. What is the product that generate the least income and by much?
    - Fig fruit generates the least income to the organization with	**$858,109,649**.

6. The organization want to ascertain the income realize from sales.
   -  The total income generated from the sales of all products is **$10,427,179,316**.

7. The organization want to ascertain the amount they generate from each product.
   -  Cucumber	 **$877,495,861**
   -  Apple 	**$876,384,630**
   -  Honeydew	 **$876,294,862**
   -  Durian	 **$872,118,749**
   -  Banana	 **$870,741,503**
   -  Grape	 **$870,659,137**
   -  Imbe	 **$869,078,493**
   -  Elderberry	 **$868,338,709**
   -  Lychee	 **$864,871,025**
   -  Jackfruit	 **$862,348,602**
   -  Kiwi  **$860,738,096**
   -  Fig	 **$858,109,649**

8. Product that generate the highest income and by how much.
   -  Cucumber	 **877,495,861**


9. The organization is looking at identifying the customer that patronize them the most in order for them to encourage them with a gift.
    - The top 5 customers that patronise the most are:
      -  Xenia Veart	 **$453,816,343**
      -  Elene Illwell 	**$3,056,088**
      -  Anallese Deinhardt	 **$2,968,663**
      -  Bess Bidewell	 **$2,619,015**
      -  Edwin Ruberry	 **$2,139,130**

10. Which customer generate least income and by how much?
    - 5 customers generate the same income of **$43617** and they all fall into this category. 
      -   Berkeley Negri  (23005)	
      -   Ethelda Beston  (22531)
      -   Lin McIlwraith	(14689)
      -   Saba Hook  (15696)	
      -   Spence Keijser  (24519)

11. which of the employee spent the least day at angie?
    - **Noelle Johansson (9)** spent the least number of days at Angies. She worked with them for just **750 days**. 

12. What is the organization busiest hour?
    - The organizations busiest hour is 8am. **19,925** has been sold during this hour.

13. Which day of the week does the organization sales the most?
    - The organizations busiest day of the week is **Saturday** with **41,755** total quantity been sold.

14. Which month of the year does the organization makes the most sales?
    - The organizations makes the most sales in  **July** with **$4,080,801,411** as the total sales and **106,684** product quantity sold.







