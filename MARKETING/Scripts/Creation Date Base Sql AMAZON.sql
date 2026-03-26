-- Drop existing table
DROP TABLE IF EXISTS amazon_software;

-- Create table with CORRECT column names matching your CSV
CREATE TABLE amazon_software (
    id INT AUTO_INCREMENT PRIMARY KEY,
    
    -- Original columns (using EXACT names from your CSV)
    `rank` INT,                    -- Note: NOT product_rank
    asin VARCHAR(20),
    product_title VARCHAR(500),
    product_price VARCHAR(50),
    product_star_rating DECIMAL(3,2),
    product_num_ratings INT,
    product_url VARCHAR(500),
    product_photo VARCHAR(500),
    country VARCHAR(2),
    page INT,
    
    -- Added columns
    product_title_clean VARCHAR(500),
    price_usd DECIMAL(10,2)
);

-- Create indexes
CREATE INDEX idx_country ON amazon_software(country);
CREATE INDEX idx_rating ON amazon_software(product_star_rating);
CREATE INDEX idx_price ON amazon_software(price_usd);