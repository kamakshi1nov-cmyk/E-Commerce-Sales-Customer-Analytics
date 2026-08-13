-- Query 1: Overall Business KPIs

SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(quantity) AS total_units_sold,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(AVG(revenue), 2) AS average_order_value
FROM ecommerce_sales;

-- Query 1: Overall Business KPIs

#Query1
SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(quantity) AS total_units_sold,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(AVG(revenue), 2) AS average_order_value
FROM ecommerce_sales;


#Query2
-- Query 2: Revenue by Product Category

SELECT
    product_category,
    COUNT(DISTINCT order_id) AS orders,
    SUM(quantity) AS units_sold,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY product_category
ORDER BY total_revenue DESC;


#Query3
-- Query 3: Revenue by Region

SELECT
    region,
    COUNT(DISTINCT order_id) AS orders,
    SUM(quantity) AS units_sold,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY region
ORDER BY total_revenue DESC;


#Query4
-- Query 4: Customer Retention Analysis

WITH customer_orders AS (
    SELECT
        customer_id,
        COUNT(DISTINCT order_id) AS total_orders,
        SUM(revenue) AS total_revenue
    FROM ecommerce_sales
    GROUP BY customer_id
)

SELECT
    CASE
        WHEN total_orders > 1 THEN 'Repeat Customer'
        ELSE 'One-Time Customer'
    END AS customer_type,

    COUNT(*) AS customers,
    ROUND(SUM(total_revenue), 2) AS total_revenue,
    ROUND(AVG(total_revenue), 2) AS avg_revenue_per_customer,
    ROUND(AVG(total_orders), 2) AS avg_orders
FROM customer_orders
GROUP BY
    CASE
        WHEN total_orders > 1 THEN 'Repeat Customer'
        ELSE 'One-Time Customer'
    END
ORDER BY total_revenue DESC;


#Query5
-- Query 5: Delivery Time and Customer Satisfaction

SELECT
    delivery_days,
    COUNT(DISTINCT order_id) AS orders,
    ROUND(AVG(customer_rating), 2) AS average_rating,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY delivery_days
ORDER BY delivery_days;