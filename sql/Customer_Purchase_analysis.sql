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


--4.Items purchased by each customer

SELECT customer_reference_id,COUNT(item_purchased) as items_customer_purchased
from Fashion_Retail_Sales
where item_purchased is not NULL
group by customer_reference_id
order by items_customer_purchased desc

--5. Customers who gave low ratings (< 3)

SELECT 
  customer_reference_id, 
  review_rating
FROM 
  Fashion_Retail_Sales
WHERE 
  review_rating < 3;

--2nd method
SELECT 
  customer_reference_id, 
  review_rating
FROM 
  Fashion_Retail_Sales
WHERE 
  review_rating < 3
  AND review_rating IS NOT NULL
GROUP BY 
  customer_reference_id, 
  review_rating
ORDER BY 
  review_rating ASC;





