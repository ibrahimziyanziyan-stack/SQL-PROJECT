-- Part 5 — Intermediate Analysis
-- 18. Brand Product Ranking 
-- Rank products based on their price within each brand. Display: 
-- Brand
-- Category
-- Price
-- Product rank
-- The most expensive product within each brand should have rank 1. 
USE winter_fashion_db;

select Brand,Category,Price_USD,rank() over(partition by Brand order by Price_USD desc) as Rank_Based_on_Price from winfas;

-- 19. Category Ranking
-- Rank the products based on their popularity score within each category.
-- Display:
-- Category
-- Brand
-- Popularity score
-- Customer rating
-- Popularity rank
-- The most popular product within each category should have rank 1.

select Category, Brand,Popularity_Score,Customer_Rating,rank() over(partition by Category order by Popularity_Score desc) as Popularity_Rank from winfas;

-- 20. Brand Performance Comparison For each brand, calculate: 
-- Number of products, Average price, Average popularity score, Average customer rating
select Brand,count(Category) as Number_of_Product,avg(Price_USD) as Average_Price,avg(Popularity_Score) as Average_Popularity_Score,avg(Customer_Rating) as Average_Customer_Rating from winfas group by Brand;
-- Then rank the brands based on their average popularity score. 
select Brand,count(Category) as Number_of_Product,avg(Price_USD) as Average_Price,avg(Popularity_Score) as Average_Popularity_Score,avg(Customer_Rating) as Average_Customer_Rating,rank()over(order by avg(Popularity_Score) desc ) as Rank_ from winfas group by Brand;



















