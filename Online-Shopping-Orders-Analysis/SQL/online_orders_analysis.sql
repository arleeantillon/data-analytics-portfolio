{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- Previews the cleaned dataset\
SELECT *\
FROM online_orders_clean\
LIMIT 10;\
\
\
-- Counts the total number of order records\
SELECT COUNT(*) AS total_orders\
FROM online_orders_clean;\
\
\
-- Calculates total sales by product category\
SELECT category,\
       ROUND(SUM(quantity * unit_price), 2) AS total_sales\
FROM online_orders_clean\
WHERE category IS NOT NULL\
  AND category <> ''\
GROUP BY category\
ORDER BY total_sales DESC;\
\
\
-- Finds the products with the highest quantity sold\
SELECT product,\
       SUM(quantity) AS total_units_sold\
FROM online_orders_clean\
WHERE product IS NOT NULL\
  AND product <> ''\
GROUP BY product\
ORDER BY total_units_sold DESC\
LIMIT 10;\
\
\
-- Calculates total sales by customer state\
SELECT customer_state,\
       ROUND(SUM(quantity * unit_price), 2) AS total_sales\
FROM online_orders_clean\
WHERE customer_state IS NOT NULL\
  AND customer_state <> ''\
GROUP BY customer_state\
ORDER BY total_sales DESC;\
\
\
-- Counts order records by status\
SELECT order_status,\
       COUNT(*) AS total_orders\
FROM online_orders_clean\
WHERE order_status IS NOT NULL\
  AND order_status <> ''\
GROUP BY order_status\
ORDER BY total_orders DESC;}