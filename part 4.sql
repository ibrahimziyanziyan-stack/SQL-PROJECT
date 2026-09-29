-- Part 4 — Data Transformation
use winter_fashion_db;
--15. Create Price Category 
-- Create a new column called price_category. 
ALTER TABLE winfas ADD  price_category VARCHAR(50);
-- Price of 600 or more → High Price
-- Price from 300 to less than 600 → Medium Price
-- Price below 300 → Low Price
UPDATE winfas set price_category=
	case
		when Price_USD >=600 then 'High Price'
		when Price_USD >=300 then 'Medium Price'
		else 'Low Price'
	end ;
;
select * from winfas;

-- 16. Create Rating Category
-- Create a new column called rating_category. 
alter table winfas add rating_category varchar(50);
-- Rating of 4.5 or more → Excellent
-- Rating from 3.5 to less than 4.5 → Good
-- Rating below 3.5 → Average
update winfas set rating_category =
	case
		when Customer_Rating >= 4.5 then 'Excellent'
		when Customer_Rating >= 3.5 then 'Good'
		else 'Average'
	end;;
select * from winfas;

-- Then find the number of products in each rating category.
select rating_category,count(*) as no_of_products from winfas group by rating_category ;

-- 17. Create Popularity Category 
--Create a new column called popularity_category. 
alter table winfas add popularity_category varchar(50);
-- Popularity score of 8 or more → Highly Popular
-- Popularity score from 5 to less than 8 → Popular
-- Popularity score below 5 → Less Popular
update winfas set popularity_category  = 
	case
		when Popularity_Score >= 8 then 'Highly Popularity '
		when Popularity_Score >= 5 then 'Popular'
		else 'Less Popular'
	end;
select * from winfas;

-- Then find the number of products in each popularity category.
select popularity_category,count(*) as no_of_products from winfas group by popularity_category ;









