-- 1. Average Price by Brand
select brand_name as Brand, avg(price) as Average_Price
from Myntra_clean
group by brand_name
order by Average_Price Desc

-- 2. Top Rated Products
select Top 10 pants_description as Product_, ratings as Rating
from Myntra_clean
order by Rating Desc

-- 3. Highest Discount Brands
select top 10 brand_name as Brand, round(avg(discount_percent),2) as Avg_Discount
from Myntra_clean
group by brand_name
order by Avg_Discount Desc

-- 4. Most Popular Products
select Top 10 pants_description as Product_, number_of_ratings as Popularity
from Myntra_clean
order by Popularity Desc

-- 5. Products with Low Ratings
select pants_description as Product_, round(ratings,2) as Rating
from Myntra_clean
where ratings < 3.5

-- 6. Value for Money Products
select pants_description as Product_, price as Price, round(ratings,2) as Rating
from Myntra_clean
where ratings > 4 AND price < 1000