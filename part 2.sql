-- Part 2 — Business Analysis 
--5. Brand Price Analysis
USE winter_fashion_db;
select * from  winfas;
--Find the total price and average price of products for each brand.
select Brand,sum(Price_USD) as Total_Price,avg(Price_USD) as Avg_Price from winfas group by Brand;
-- Show the brands from highest total price to lowest total price. 
select Brand,sum(Price_USD) as Total_Price from winfas group by Brand order by Total_Price desc;

-- 6. Category Price Analysis 
select * from winfas;
-- Find the total price and average price for each product category.
select Category,sum(Price_USD) as Total_Price,avg(Price_USD) as Avg_Price from winfas group by Category;

-- Show the categories from highest average price to lowest average price.
select Category,avg(Price_USD) as Avg_Price from winfas group by Category order by Avg_Price desc;

-- 7. Trend Status Analysis 
select * from winfas;
-- For each trend status (Trending, Emerging, Classic, Outdated), find:
-- Number of products
SELECT 
    Trend_Status,
    COUNT(*) AS count_
FROM winfas
GROUP BY Trend_Status;
-- Average price
SELECT 
    Trend_Status,
    avg(Price_USD) AS count_
FROM winfas
GROUP BY Trend_Status;
-- Average customer rating
SELECT 
    Trend_Status,
    avg(Customer_Rating) AS count_
FROM winfas
GROUP BY Trend_Status;
-- Average popularity score
SELECT 
    Trend_Status,
    avg(Popularity_Score) AS count_
FROM winfas
GROUP BY Trend_Status;

-- 8. Gender Analysis 
-- for each gender, find:
select * from winfas;
-- Number of products
select gender,count(*)as Count_ from winfas group by Gender;
-- Average price
select gender,avg(Price_USD)as avg_price from winfas group by Gender;

-- Average customer rating
select gender,avg(Customer_rating)as avg_rating from winfas group by Gender;

-- Average popularity score
select gender,avg(Popularity_Score)as avg_pop_rating from winfas group by Gender;

-- 9. Material Analysis
-- For each material, find:
select * from winfas;
-- Number of products
select Material,count(*)as no_of_product from winfas group by  Material;
-- Average price
select Material,avg(Price_USD) as avg_price from winfas group by  Material;

-- Average customer rating
select Material,avg(Customer_rating) from winfas group by  Material;

-- Show the materials with the highest average price first.
SELECT 
    Material,
    AVG(Price_USD) AS Avg_Price
FROM winfas
GROUP BY Material
ORDER BY Avg_Price DESC;


-- 10. Style Analysis
select * from winfas;
-- For each style,find: 
-- Number of products
select Style,count(*)as no_of_product from winfas group by  Style;

-- Average price
select Style,avg(Price_USD) as avg_price from winfas group by  Style;

-- Average customer rating
select Style ,avg(Customer_rating) from winfas group by  Style;

-- Average popularity score
select Style ,avg(Popularity_Score) from winfas group by  Style;

-- Show the styles with the highest popularity score first.

SELECT  Style,AVG(Price_USD) AS Avg_Price FROM winfas GROUP BY Style ORDER BY Avg_Price DESC;








