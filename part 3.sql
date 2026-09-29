-- Part 3 — Product Analysis 
-- 11. Top 5 Expensive Products
-- Find the top 5 most expensive products. 
-- Display:
USE winter_fashion_db;
select * from winfas;
-- Brand
select top 5 
	Brand ,sum(Price_USD) as Cost from winfas group by Brand order by Cost desc;
-- Category
select top 5 Category ,sum(Price_USD) as Cost from winfas group by Category order by Cost desc;
-- Product price
-- Product price
SELECT TOP 5 Category,Price_USD FROM winfas ORDER BY Price_USD DESC;
-- Customer rating
select top 5 Category ,Customer_Rating  from winfas  order by  Customer_Rating desc;

-- Popularity score
select top 5 Category ,Popularity_Score  from winfas  order by  Popularity_Score desc;

-- 12. Top 5 Popular Products
select * from winfas;
-- Find the top 5 products based on popularity score.
-- Display:
-- Brand
SELECT TOP 5 Brand,Popularity_Score from winfas order by Popularity_Score desc;
-- Category
SELECT TOP 5 Category,Popularity_Score from winfas order by Popularity_Score desc;
-- Price
SELECT TOP 5 Category,Price_USD,Popularity_Score from winfas order by Popularity_Score desc;

-- Popularity score
SELECT TOP 5 Brand,Category,Popularity_Score from winfas order by Popularity_Score desc;
-- Customer rating

SELECT TOP 5 Brand,Category,Customer_Rating,Popularity_Score from winfas order by Popularity_Score desc;

-- 13. Top Rated Products
-- Find the top 5 products based on customer rating.
select * from winfas;
-- Display:
-- Brand
SELECT TOP 5 Brand,Customer_Rating from winfas order by Customer_Rating desc;

-- Category
SELECT TOP 5 Category,Customer_Rating from winfas order by Customer_Rating desc;

-- Price
SELECT TOP 5 Brand,Category,Price_USD,Customer_Rating from winfas order by Customer_Rating desc;
-- Customer rating
SELECT TOP 5 Brand,Category,Customer_Rating from winfas order by Customer_Rating desc;

-- Trend status
SELECT TOP 5 Brand,Category,Trend_Status,Customer_Rating from winfas order by Customer_Rating desc;


-- 14. Products with High Popularity and Rating
select * from winfas;
-- Find all products where:
-- Popularity score is greater than 8
select * from winfas where Popularity_Score>8;
-- Customer rating is greater than 4
select * from winfas where Customer_Rating>4;
-- Display the brand, category, price, popularity score, and customer rating. 
select Brand, Category, Price_USD,Popularity_Score,Customer_Rating from winfas where  Popularity_Score>8 and Customer_Rating>4;
