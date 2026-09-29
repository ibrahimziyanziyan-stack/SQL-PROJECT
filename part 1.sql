CREATE DATABASE winter_fashion_db ;
USE winter_fashion_db;
select * from winfas;

-- Part 1 — Overall KPIs 1. Overall Product Information
-- 1. Find the total number of products.
select count(*) as Total_products from winfas ;
-- 2. Find the average product price.
select avg(Price_USD) as avg_price from winfas ;

-- 3. Find the highest product price.
SELECT MAX(Price_USD) AS highest_price FROM winfas;
-- 4. Find the lowest product price.
SELECT min(Price_USD) AS lowest_price FROM winfas;
 
-- 5. Find the average customer rating.
select* from winfas;
select avg(Customer_Rating) as Avg_Customer_Rating from winfas;
-- 6. Find the average popularity score.
select* from winfas;
select avg(Popularity_Score) as Popularity_Score from winfas;

-- 2. Product Price Analysis 
-- Total price of all products
select * from winfas  ;
select Category,sum(Price_USD) as Total_price from winfas group by Category;
-- Average price of a product
select Category,avg(Price_USD) as avg_price from winfas group by Category;

-- Highest product price
select Category,max(Price_USD) as max_price from winfas group by Category;

-- Lowest product price
select Category,min(Price_USD) as min_price from winfas group by Category;


-- 3. Brand Performance 
-- Number of products
select * from winfas;
select Brand,count(Category) as Number_of_products from winfas group by Brand;
-- Average price
select Brand,avg(Price_USD) as avg_price from winfas group by Brand;

-- Average customer rating
select Brand,avg(Customer_Rating) as avg_rating from winfas group by Brand;

-- Average popularity score
select Brand,avg(Popularity_Score) as P_score from winfas group by Brand;

-- Show the brands with the highest average price first. 
SELECT top 1 Brand, AVG(Price_USD) AS avg_price
FROM winfas
GROUP BY Brand
ORDER BY avg_price DESC;

-- 4. Category Performance 
-- Number of products
select * from winfas;
select count( Category) as num_pro from winfas;
-- Average price
select Category,avg(Price_USD) as avg_price from winfas group by Category;
-- Average customer rating
select Category,avg(Customer_Rating) as avg_rating from winfas group by Category;

-- Average popularity score
select Category,avg(Popularity_Score) as avg_rating from winfas group by Category;

-- Show the categories with the highest number of products first.
select Category,count(Category) as count_ from winfas group by Category order by Category desc;
