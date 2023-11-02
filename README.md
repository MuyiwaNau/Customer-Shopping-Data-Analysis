# Customer-Shopping-Dataset---Retail-Sales-Data

Welcome to the shopping world of Istanbul! Our dataset contains shopping information from 10 different shopping malls between 2021 and 2023. We have gathered data from various age groups and genders to provide a comprehensive view of shopping habits in Istanbul. The dataset includes essential information such as invoice numbers, customer IDs, age, gender, payment methods, product categories, quantity, price, order dates, and shopping mall locations. This dataset will serve as a valuable resource for researchers, data analysts, and machine learning enthusiasts who want to gain insights into shopping trends and patterns in Istanbul. Explore the dataset and discover the fascinating world of Istanbul shopping!

# Contents
invoice_no: Invoice number. Nominal. A combination of the letter 'I' and a 6-digit integer is uniquely assigned to each operation.
customer_id: Customer number. Nominal. A combination of the letter 'C' and a 6-digit integer is uniquely assigned to each operation.
Gender: String variable of the customer's gender.
Age: Positive Integer variable of the customer's age.
Category: String variable of the category of the purchased product.
Quantity: The quantities of each product (item) per transaction. Numeric.
Price: Unit price. Numeric. Product price per unit in Dollar.
payment_method: String variable of the payment method (cash, credit card, or debit card) used for the transaction.
invoice_date Invoice date. The day when a transaction was generated.
shopping_mall: String variable of the name of the shopping mall where the transaction was made.

# Project Overview
Project Description:
In this project, I analyze customer transaction data from a retail store to uncover patterns and associations among products that are frequently purchased together. Market Basket Analysis is a valuable technique for retailers to understand customer behavior, optimize product placement, and improve marketing strategies.

Project Steps:
Data Collection: Obtain a dataset containing transaction records, including customer ID, purchase date, and a list of items purchased in each transaction. You can find publicly available retail datasets or create a synthetic dataset.

Data Preprocessing (SQL):
Clean and format the data, handling any missing values or anomalies.
Create a SQL database or table to store the transaction data.

Market Basket Analysis (SQL):
Use SQL queries to identify itemsets (groups of products) frequently purchased together.
Calculate support, confidence, and lift for itemsets to measure their association and significance.
Identify strong association rules that reveal purchasing patterns.

Visualization (Optional):
Create data visualizations using SQL or export the results to a visualization tool like Tableau for easy-to-understand insights.
Visualize frequently occurring itemsets or association rules to help stakeholders understand the findings.

Insights and Recommendations:
Interpret the results to provide actionable insights to the retail business, such as product placement recommendations, bundling opportunities, or targeted marketing strategies.
Summarized my findings in a report or presentation.

Documentation and Reporting:
Document your analysis methodology, SQL queries, and critical findings.
Created a concise report or presentation that highlights the project's significance and the value it brings to the retail business.


