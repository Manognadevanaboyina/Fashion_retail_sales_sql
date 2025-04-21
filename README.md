# 🛍️ Fashion Retail Sales SQL Analysis

This project explores a dataset of 3,400 fashion retail sales records using SQL to extract business insights. It covers key aspects of customer behavior, product popularity, payment trends, and review ratings.

## 📊 Dataset Overview

The dataset includes the following columns:
- `customer_reference_id`
- `item_purchased`
- `purchase_amount_(usd)`
- `date_purchase`
- `review_rating`
- `payment_method`

Each row represents a customer purchase with item and transaction details.

---

## 🧩 Case Studies

### 1. Customer Purchase Behavior
- How many unique customers are there?
- What is the average purchase amount per customer?
- Top 5 customers by total purchase amount
- Items purchased by each customer
- Customers who gave low ratings (< 3)

### 2. Product Popularity & Sales
- Most frequently purchased items
- Total revenue per item
- Highest-rated item by average review
- Top 3 best-selling items by revenue

### 3. Payment Method Insights
- Number of purchases by each payment method
- Total revenue by payment type
- Average purchase amount by method
- Review ratings by payment method

### 4. Time-Based Patterns
- Monthly revenue trends
- Day-of-week purchase behavior
- Trend of average purchase amount over time
- Month with highest purchases

### 5. Review Rating Insights
- Overall average review rating
- Rating distribution (1 to 5)
- Correlation between rating and purchase amount
- Which method has best reviews?

---

## 🛠 Data Cleaning Summary
- Removed nulls in `purchase_amount_(usd)` and `review_rating`
- Verified correct data types
- Ensured column headers are correct
- Dropped unnecessary rows if any (e.g., duplicate headers)



