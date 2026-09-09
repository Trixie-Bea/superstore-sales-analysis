-- Superstore Sales & Profitability Analysis
-- Tools: PostgreSQL / SQL
-- Dataset period: 2014–2017

-- =========================================================
-- Q1. How have sales and profit changed over time?
-- =========================================================
SELECT
    year,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2) AS profit_margin_pct
FROM superstore
GROUP BY year
ORDER BY year;


-- =========================================================
-- Q2. Which categories/sub-categories generate the most profit?
-- =========================================================
SELECT
    category,
    sub_category,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY category, sub_category
ORDER BY total_profit DESC;


-- =========================================================
-- Q3. How are discounts associated with profitability?
-- =========================================================
SELECT
    discount,
    SUM(profit) AS total_profit,
    COUNT(*) AS transactions,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2) AS profit_margin_pct
FROM superstore
GROUP BY discount
ORDER BY discount ASC;


-- =========================================================
-- Q4. Which customer segments are most valuable?
-- =========================================================
SELECT
    segment,
    COUNT(DISTINCT customer_id) AS unique_customers,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2) AS profit_margin_pct
FROM superstore
GROUP BY segment
ORDER BY total_profit DESC;


-- =========================================================
-- Q5. Which regions and states perform best/worst?
-- =========================================================
SELECT
    region,
    state,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2) AS profit_margin_pct
FROM superstore
GROUP BY region, state
ORDER BY total_profit DESC;


-- =========================================================
-- Q6. Which products are driving profit and losses?
-- =========================================================

-- 6a. Top 5 most profitable products
SELECT
    product_id,
    product_name,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS units_sold
FROM superstore
GROUP BY product_id, product_name
ORDER BY total_profit DESC
LIMIT 5;


-- 6b. Top 5 loss-making products
SELECT
    product_id,
    product_name,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS units_sold
FROM superstore
GROUP BY product_id, product_name
HAVING SUM(profit) < 0
ORDER BY total_profit ASC
LIMIT 5;


-- =========================================================
-- Q7. How do shipping modes compare in sales and profit?
-- =========================================================
SELECT
    ship_mode,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY ship_mode
ORDER BY total_sales DESC, total_profit DESC;


-- =========================================================
-- Q8. Where are the biggest loss-making opportunities?
-- Identifies category/sub-category/discount combinations
-- whose aggregated profit is negative.
-- =========================================================
SELECT
    category,
    sub_category,
    discount,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    COUNT(*) AS loss_transactions
FROM superstore
GROUP BY category, sub_category, discount
HAVING SUM(profit) < 0
ORDER BY total_profit ASC;
