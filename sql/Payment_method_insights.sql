-- 🧩 Case Study 3: Payment Method Insights

--1.Number of purchases by each payment method

SELECT payment_method,count(*) AS Total_purchases
FROM Fashion_Retail_Sales
group by payment_method

--2.Total revenue by payment type

SELECT payment_method,sum("purchase_amount_(usd)") as Total_Revenue
FROM Fashion_Retail_Sales
group by payment_method


--3.Average purchase amount by method

SELECT payment_method,round(Avg("purchase_amount_(usd)"),2) as purchase_amount
FROM Fashion_Retail_Sales
group by payment_method

--4. Review ratings by payment method

SELECT payment_method,COUNT(review_rating) AS total_reviews,
       ROUND(AVG(review_rating), 2) AS avg_review_rating
FROM Fashion_Retail_Sales
group by payment_method
