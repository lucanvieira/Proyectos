UPDATE amazon.amazon_software 
SET country_currency = 
    CASE 
        WHEN country_currency = 'US' THEN 'United States'
        WHEN country_currency = 'CA' THEN 'Canada'
        WHEN country_currency = 'AU' THEN 'Australia'
        WHEN country_currency = 'JP' THEN 'Japan'
        WHEN country_currency = 'IN' THEN 'India'
        WHEN country_currency = 'DE' THEN 'Germany'
        WHEN country_currency = 'FR' THEN 'France'
        WHEN country_currency = 'IT' THEN 'Italy'
        WHEN country_currency = 'ES' THEN 'Spain'
        WHEN country_currency = 'MX' THEN 'Mexico'
        ELSE country_currency
    END
WHERE country_currency IN ('US', 'CA', 'AU', 'JP', 'IN', 'DE', 'FR', 'IT', 'ES', 'MX');

-- Update to standardize country codes
UPDATE amazon.amazon_software 
SET country = 
    CASE 
        WHEN country = 'United States' THEN 'US'
        WHEN country = 'Canada' THEN 'CA'
        WHEN country = 'Australia' THEN 'AU'
        WHEN country = 'Japan' THEN 'JP'
        WHEN country = 'India' THEN 'IN'
        WHEN country = 'Germany' THEN 'DE'
        WHEN country = 'France' THEN 'FR'
        WHEN country = 'Italy' THEN 'IT'
        WHEN country = 'Spain' THEN 'ES'
        WHEN country = 'Mexico' THEN 'MX'
        ELSE country
    END
WHERE country IN ('United States', 'Canada', 'Australia', 'Japan', 'India', 
                  'Germany', 'France', 'Italy', 'Spain', 'Mexico');






-- Check total row count
SELECT COUNT(*) as total_rows FROM amazon_software;
-- Should be 999

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

-- Count products by country
SELECT 
    country_currency, 
    COUNT(*) AS Number_of_Products
FROM amazon_software
GROUP BY country_currency
ORDER BY Number_of_Products DESC;


-- proucts by product rating > 5


SELECT product_title, product_star_rating
FROM amazon_software
WHERE product_star_rating = 5 
ORDER BY product_star_rating DESC;

SELECT 
    country_currency as Country, 
    COUNT(*) as cantidad
FROM amazon_software
WHERE product_star_rating = 5
GROUP BY country_currency
ORDER BY cantidad DESC;

