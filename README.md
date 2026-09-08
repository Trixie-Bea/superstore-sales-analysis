# Superstore Sales & Profitability Analysis

##  Project Overview

This project presents an end-to-end analysis of the Superstore dataset to evaluate sales performance, profitability, customer segments, products, discounts, geographic performance and shipping methods.

The project demonstrates the use of Python, PostgreSQL, SQL and Power BI to transform raw sales data into actionable business insights.

---
## Business Objective

The objective of this analysis is to answer key business questions such as:

- How have sales and profit changed over time?
- Which product categories and sub-categories are most profitable?
- Which products generate the highest and lowest profits?
- How do discounts affect profitability?
- Which customer segments generate the most revenue and profit?
- Which states and regions perform best?
- Which shipping methods are most commonly used?
- Where are the biggest loss-making opportunities?

---

## Tools & Technologies

- **Python** – Data cleaning and exploratory analysis
- **Pandas** – Data manipulation and analysis
- **PostgreSQL** – Data storage
- **SQL** – Business analysis and aggregations
- **Power BI** – Interactive dashboard and data visualization
- **GitHub** – Project documentation and portfolio

---

##  Dataset

The analysis uses the Superstore sales dataset containing approximately 10,000 sales records covering the period **2014–2017**.

Key fields include:

- Order Date
- Ship Date
- Ship Mode
- Customer
- Segment
- Region
- State
- Product
- Category
- Sub-Category
- Sales
- Quantity
- Discount
- Profit

Dataset source: Kaggle Superstore Dataset.

---

##  Project Workflow

### 1. Data Preparation — Python

Python was used to:

- Load the raw CSV dataset
- Inspect the dataset structure
- Check data types
- Convert date fields
- Check for missing values
- Check for duplicate records
- Validate numerical fields
- Create a Year column
- Perform exploratory analysis

### 2. Database — PostgreSQL

The cleaned dataset was imported into PostgreSQL for structured storage and SQL analysis.

### 3. SQL Analysis

SQL was used to investigate:

- Yearly sales and profit
- Category and sub-category profitability
- Discount and profit relationships
- Customer segment performance
- Geographic performance
- Top and bottom products
- Shipping performance
- Loss-making product and discount combinations

### 4. Dashboard — Power BI

Power BI was used to create an interactive dashboard containing two pages:

#### Executive Sales Overview

Provides a high-level view of:

- Total Sales
- Total Profit
- Profit Margin
- Total Orders
- Total Customers
- Units Sold
- Sales and Profit trends
- Segment performance
- Regional profitability
- Sub-category profitability
- Category performance
- Dashboard Interaction <a href="https://github.com/Trixie-Bea/superstore-sales-analysis/blob/main/Executive_Overview.png">View Dashboard</a>

#### Performance Analysis

Focuses on profitability drivers and opportunities:

- Top 5 Most Profitable Products
- Top 5 Loss-Making Products
- Profit Impact by Discount Level
- Most Profitable States
- Sales and Profit by Shipping Mode
- Top-selling Product
- Most Profitable Product
- Most Profitable State
- Average Product Margin
- Dashboard Interaction <a href="https://github.com/Trixie-Bea/superstore-sales-analysis/blob/main/Performance_Analysis.png">View Dashboard</a>



---

# Key Business Insights

## 1. Sales and profit increased significantly

Sales increased from approximately **$484K in 2014 to $733K in 2017**, while profit increased from approximately **$49.5K to $93.4K**.

Although overall performance improved, profit margin declined slightly from **13.43% in 2016 to 12.74% in 2017**, indicating that higher sales did not translate into proportional margin growth.

---

## 2. Technology is the strongest-performing category

Technology generated approximately:

- **$836K in sales**
- **$145K in profit**
- **17.40% profit margin**

It was the strongest category in both revenue and total profit.

---

## 3. Furniture has a significant profitability problem

Furniture generated approximately **$742K in sales**, but only **$18K in profit**, resulting in a margin of approximately **2.49%**.

Tables and Bookcases were loss-making sub-categories.

This indicates that the category requires further investigation into pricing, discounting and costs.

---

## 4. Higher discounts are associated with lower profitability

Profitability declined substantially as discount levels increased.

Discount levels of **30% and above** were associated with negative profit margins, with the highest discount levels producing particularly severe losses.

This suggests that aggressive discounting should be carefully evaluated against the profit generated from additional sales.

---

## 5. Product profitability varies considerably

The **Canon imageCLASS 2200 Advanced Copier** was the most profitable product, generating approximately **$25.2K in profit**.

In contrast, the **Cubify CubeX 3D Printer Double Head Print** generated approximately **$8.9K in losses**.

This demonstrates the importance of evaluating products based on profitability rather than sales alone.

---

## 6. Geographic performance varies significantly

California generated the highest total profit at approximately **$76K**.

However, several smaller states achieved higher profit margins.

Texas recorded the largest state-level loss at approximately **$25.7K**.

---

## 7. Customer segment performance differs

The Consumer segment generated the highest sales and total profit.

However, Home Office achieved the highest profit margin at approximately **14.03%**, despite being the smallest segment by sales.

This suggests potential opportunities for targeted growth within the Home Office segment.

---

#  Business Recommendations

### 1. Review high-discount policies

Implement tighter controls around discounts of **30% and above** and evaluate promotions using both sales and profit metrics.

### 2. Improve Furniture profitability

Investigate pricing, supplier costs, discount levels and product-level performance, particularly for Tables and Bookcases.

### 3. Prioritize profitable Technology products

Maintain availability and consider targeted promotions for high-performing Technology products.

### 4. Review loss-making products

Investigate consistently loss-making products and consider repricing, reducing discounts, renegotiating costs or discontinuing products where appropriate.

### 5. Develop targeted geographic strategies

Prioritize high-performing markets while investigating states with persistent losses, particularly Texas.

### 6. Grow the Home Office segment

Explore targeted marketing and product strategies to increase Home Office sales while maintaining its relatively strong margin.

---
#  Dashboard Preview

### Executive Sales Overview

<img width="1141" height="632" alt="Executive_Overview" src="https://github.com/user-attachments/assets/cc90520f-2ead-4dff-a0f9-6631339be288" />

### Performance Analysis

<img width="1132" height="645" alt="Performance_Analysis" src="https://github.com/user-attachments/assets/b083d14c-bdb2-4ca1-ae34-d511381fed74" />

#  Conclusion

The analysis demonstrates strong overall sales and profit growth between 2014 and 2017, but also highlights significant differences in profitability across products, categories, discounts, customer segments and geographic markets.

The most significant opportunities are improving Furniture profitability, controlling excessive discounting, reviewing loss-making products and expanding high-margin areas.




