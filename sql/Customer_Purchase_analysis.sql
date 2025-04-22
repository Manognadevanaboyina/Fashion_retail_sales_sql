/*How many unique customers are there?*/

SELECT count(DISTINCT customer_reference_id) as unique_customers
from Fashion_Retail_Sales
