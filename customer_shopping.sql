
/*Create a table customer_shopping for from 10 different shopping 
malls between 2021 and 2023 in istanbul. */

CREATE TABLE customer_shopping (
    invoice_no VARCHAR(20),
    customer_id VARCHAR(20),
    gender VARCHAR(10),
    age INT,
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10, 2),
    payment_method VARCHAR(20),
    invoice_method VARCHAR(20),
    shopping_mall VARCHAR(50)
);


---- Copy data from the customer_shopping csv file

copy customer_shopping from 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PostgreSQL 16\customer_shopping_data.csv' CSV header ;

------ show all with limit of 15

select * from customer_shopping limit 15


--- Shopping Mall that start with from a -d 
select * from customer_shopping
where shopping_mall ~* '^(a|b|c|d)+[a-z\s]+$'

-----Total Sales per Category:
SELECT category, SUM(quantity * price) AS total_sales
FROM customer_shopping
GROUP BY category
ORDER BY total_sales DESC;


----Most 5 Popular Product

SELECT category, SUM(quantity) AS total_quantity_sold
FROM customer_shopping
GROUP BY category
ORDER BY total_quantity_sold DESC
limit 5;


---- Average Age of Customers by Shopping Mall:

SELECT shopping_mall, AVG(age) AS avg_age
FROM customer_shopping
GROUP BY shopping_mall;

----Top 3 Frequent Shopping Mall Choice by Gender:

SELECT gender, shopping_mall, COUNT(*) AS mall_count
FROM customer_shopping
GROUP BY gender, shopping_mall
ORDER BY mall_count desc
limit 4;

---Total Sales by Payment Method:

SELECT payment_method, SUM(quantity * price) AS total_sales
FROM customer_shopping
GROUP BY payment_method
ORDER BY total_sales DESC;

----Average Transaction Value by Invoice Method:

SELECT invoice_method, AVG(quantity * price) AS avg_transaction_value
FROM customer_shopping
GROUP BY invoice_method
ORDER BY invoice_method ASC;

---- Top 10 Customers Id with the Highest Total Spend:

SELECT customer_id, SUM(quantity * price) AS total_spend
FROM customer_shopping
GROUP BY customer_id
ORDER BY total_spend DESC
LIMIT 10;

---- Customer Gender Distribution:
SELECT gender, COUNT(*) AS customer_count
FROM customer_shopping
GROUP BY gender;

---- Total Sales by Age Group and Gender:

SELECT
    CASE
        WHEN age >= 18 AND age <= 25 THEN '18-25'
        WHEN age >= 26 AND age <= 35 THEN '26-35'
        WHEN age >= 36 AND age <= 45 THEN '36-45'
        ELSE '46+'
    END AS age_group,
    gender,
    SUM(quantity * price) AS total_sales
FROM customer_shopping
GROUP BY age_group, gender
ORDER BY age_group, gender;


---- Customer Purchase History:

SELECT
    customer_id,
    STRING_AGG(category, ', ') AS purchased_categories
FROM customer_shopping
GROUP BY customer_id;


---- Average Basket Size by Gender and Shopping Mall:
SELECT
    gender,
    shopping_mall,
    AVG(quantity) AS avg_basket_size
FROM customer_shopping
GROUP BY gender, shopping_mall;

---- Month-wise Total Sales Trend:

SELECT EXTRACT(MONTH FROM TO_DATE(invoice_method, 'DD/MM/YYYY')) AS month,
       SUM(quantity * price) AS total_sales
FROM customer_shopping
GROUP BY month
ORDER BY month;

-----Customer Purchase History for High-Spending Customers:

WITH HighSpendingCustomers AS (
    SELECT customer_id, SUM(quantity * price) AS total_spend
    FROM customer_shopping
    GROUP BY customer_id
    ORDER BY total_spend DESC
    LIMIT 5
)
SELECT c.customer_id, c.category, c.quantity, c.price
FROM customer_shopping c
JOIN HighSpendingCustomers h ON c.customer_id = h.customer_id;

/*the average quantity and price for products in each category. 
It can help you identify which product categories are more popular 
and which ones are priced attractively.*/

SELECT
    category,
    AVG(quantity) AS avg_quantity,
    AVG(price) AS avg_price
FROM customer_shopping
GROUP BY category
ORDER BY avg_quantity DESC;




