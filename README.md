# Customer-Shopping-Data Anaylsis 

Welcome to the shopping world of Istanbul! Our dataset contains shopping information from 10 different shopping malls between 2021 and 2023. We have gathered data from various age groups and genders to provide a comprehensive view of shopping habits in Istanbul. The dataset includes essential information such as invoice numbers, customer IDs, age, gender, payment methods, product categories, quantity, price, order dates, and shopping mall locations. This dataset will be a valuable resource for researchers, data analysts, and machine learning enthusiasts who want to gain insights into shopping trends and patterns in Istanbul. Explore the dataset and discover the fascinating world of Istanbul shopping!

# Contents
## Dataset Description

- **invoice_no:** Invoice number. A unique identifier for each operation. It's a combination of the letter 'I' and a 6-digit integer.
- **customer_id:** Customer number. A unique identifier for each operation. It's a combination of the letter 'C' and a 6-digit integer.
- **Gender:** The gender of the customer, stored as a string variable.
- **Age:** Positive integer variable representing the customer's age.
- **Category:** The category of the purchased product, stored as a string variable.
- **Quantity:** The quantities of each product (item) per transaction, stored as a numeric variable.
- **Price:** Unit price, representing the product price per unit in dollars.
- **payment_method:** String variable indicating the payment method used for the transaction (e.g., cash, credit card, or debit card).
- **invoice_date:** The date when a transaction was generated.
- **shopping_mall:** String variable representing the name of the shopping mall where the transaction took place.


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

![image](https://github.com/MuyiwaNau/Customer-Shopping-Dataset---Retail-Sales-Data/assets/34709932/17c7cf8f-4463-4bf0-9f8e-90253f8cb647)


# Data Sources
 customer_shopping_data: The primary dataset used for this analysis is the "customer_shopping_data.csv" file, containing detailed information about each sale made by the company.

# Tools
Excel - Data Cleaning
PostGresSQL Server - Data Analysis
Tableau - Creating reports

# Data Cleaning/Preparation
In the initial data preparation phase, we performed the following tasks:

  Data loading and inspection.
  Handling missing values.
  Data cleaning and formatting.
  
# Market Basket Analysis for Retail:

This project analyzes transaction data to identify patterns and associations among products that customers frequently purchase together.

 Total Sales by Age Group and Gender?
 Which products are top sellers?
 Preferred Payment method?
 
# Data Analysis
Include some exciting code/features worked with

#### Top 10 Customers ID with the Highest Total Spend:

    SELECT customer_id, SUM(quantity * price) AS total_spend
    FROM customer_shopping
    GROUP BY customer_id
    ORDER BY total_spend DESC
    LIMIT 10;

# Results/Findings
The analysis results are summarized as follows:

- Customers prefer cash to payment to the card.
- Technology Product  is the best-performing category in terms of sales and revenue.
- Customer segments with high lifetime value (LTV) should be targeted for marketing efforts.

# Recommendations
Based on the analysis, we recommend the following actions:

Focus on expanding and promoting technology products 
Implement a customer segmentation strategy to target high-LTV customers effectively.

# References
SQL for Businesses
Tableau
Microsoft Excel

