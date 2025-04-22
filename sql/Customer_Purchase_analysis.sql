-- 🧩 Case Study 1: Customer Purchase Behavior Analysis

---1. How many unique customers are there?

SELECT count(DISTINCT customer_reference_id) as unique_customers
from Fashion_Retail_Sales


  ---2.What is the average purchase amount per customer?

SELECT customer_reference_id, round(avg("purchase_amount_(usd)"), 2) as avg_purchase_amount
FROM Fashion_Retail_Sales
/*where "purchase_amount_(usd)" IS NOT NULL*/
GROUP BY customer_reference_id
ORDER BY avg_purchase_amount DESC;


---3.Top 5 customers by total purchase amount

SELECT 
  customer_reference_id, 
  ROUND(SUM("purchase_amount_(usd)"), 2) AS total_purchase
FROM Fashion_Retail_Sales
WHERE "purchase_amount_(usd)" IS NOT NULL
GROUP BY customer_reference_id
ORDER BY total_purchase DESC
LIMIT 5;





