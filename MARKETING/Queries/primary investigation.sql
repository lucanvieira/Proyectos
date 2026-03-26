
-- Check total row count
SELECT COUNT(*) as total_rows FROM amazon_software;
-- Should be 999

-- Check if you actually have 999 rows
SELECT COUNT(*) FROM amazon_software;


SELECT * FROM amazon.amazon_software;

-- Count products by country
SELECT 
    country, 
    COUNT(*) AS Number_of_Products
FROM amazon_software
GROUP BY country
ORDER BY Number_of_Products DESC;

-- Add country_currency column based on price currency
ALTER TABLE amazon_software 
ADD COLUMN country_currency VARCHAR(50);


-- Update using primary key range
UPDATE amazon_software 
SET country_currency = 
    CASE 
        WHEN product_price LIKE '₹%' THEN 'India'
        WHEN product_price LIKE '$%' AND country = 'US' THEN 'United States'
        WHEN product_price LIKE '$%' AND country = 'CA' THEN 'Canada'
        WHEN product_price LIKE '$%' AND country = 'AU' THEN 'Australia'
        WHEN product_price LIKE '€%' AND country = 'DE' THEN 'Germany'
        WHEN product_price LIKE '€%' AND country = 'FR' THEN 'France'
        WHEN product_price LIKE '€%' AND country = 'IT' THEN 'Italy'
        WHEN product_price LIKE '€%' AND country = 'ES' THEN 'Spain'
        WHEN product_price LIKE '¥%' THEN 'Japan'
        ELSE country
    END
WHERE id BETWEEN 1 AND 10000;  -- Use a range that covers all rows

-- Count products by country
SELECT 
    country_currency, 
    COUNT(*) AS Number_of_Products
FROM amazon_software
GROUP BY country_currency
ORDER BY Number_of_Products DESC;

SELECT product_title, product_star_rating
FROM amazon_software
WHERE product_star_rating = 5 
ORDER BY product_star_rating DESC;


