-- 🧩 Case Study 2: Product Popularity & Sales

--1.Most frequently purchased items

SELECT item_purchased, count(*) As purchase_count
from Fashion_Retail_Sales 
group by item_purchased
order by purchase_count DESC
limit 1


--2.Total revenue per item

SELECT item_purchased,sum("purchase_amount_(usd)") as amount_purchased
from Fashion_Retail_Sales 
GROUP BY item_purchased
order by amount_purchased desc


--3. Highest-rated item by average review

SELECT item_purchased, round(avg(review_rating),2) as avg_review_rating
from Fashion_Retail_Sales 
group by item_purchased
order by avg_review_rating desc


--4.Top 3 best-selling items by revenue

select item_purchased,sum("purchase_amount_(usd)") as total_revenue
from Fashion_Retail_Sales
group by item_purchased
order by total_revenue desc
limit 3
