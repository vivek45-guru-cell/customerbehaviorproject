DROP TABLE IF EXISTS customer_table_vivek;
CREATE TABLE customer_table_vivek (
    Customer_ID INT,
    Age INT,
    Gender VARCHAR,
    Item_Purchased VARCHAR,
    category VARCHAR,
    Purchase_Amount_USD INT,
    Location VARCHAR,
    Size VARCHAR,
    Color VARCHAR,
	Season VARCHAR,
    Review_Rating REAL,
    Subscription_status VARCHAR,
    Shipping_Type VARCHAR,
	Discount_Applied VARCHAR,
	Promo_Code VARCHAR,
	Previous_Purchases VARCHAR,
	Payment_Method VARCHAR,
	Frequency_Of_Purchases VARCHAR
	
);

copy customer_table_vivek
FROM 'C:\Program Files\PostgreSQL\18\customer_shopping_behavior.csv'
DELIMITER ','
CSV HEADER;
SELECT COUNT(*) FROM customer_table_vivek;
 select * from customer_table_vivek

 SELECT gender,
       SUM(purchase_amount_usd) AS revenue
FROM customer_table_vivek
GROUP BY gender;







 

