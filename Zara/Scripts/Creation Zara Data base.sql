-- =====================================================
-- ZARA ANALYTICS DATABASE - STAR SCHEMA (MySQL Version)
-- =====================================================

-- 1. Dimension Tables
-- ---------------------

-- Product Dimension
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(200),
    product_category VARCHAR(50),
    brand VARCHAR(50),
    section VARCHAR(20),
    terms VARCHAR(50),
    description TEXT,
    sku VARCHAR(50),
    url VARCHAR(500),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Date Dimension
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    year INT,
    month INT,
    month_name VARCHAR(20),
    quarter INT,
    day_of_week INT,
    day_name VARCHAR(20),
    is_weekend BOOLEAN,
    season VARCHAR(20)
);

-- Promotion Dimension
CREATE TABLE dim_promotion (
    promotion_id INT PRIMARY KEY AUTO_INCREMENT,
    is_promotion BOOLEAN,
    promotion_type VARCHAR(50),
    discount_percentage DECIMAL(5,2)
);

-- Price Category Dimension
CREATE TABLE dim_price_category (
    price_category_id INT PRIMARY KEY AUTO_INCREMENT,
    price_range VARCHAR(20),
    min_price DECIMAL(10,2),
    max_price DECIMAL(10,2),
    tier VARCHAR(20)
);

-- Seasonal Dimension
CREATE TABLE dim_seasonal (
    seasonal_id INT PRIMARY KEY AUTO_INCREMENT,
    is_seasonal BOOLEAN,
    seasonal_collection VARCHAR(50)
);

-- 2. Fact Table
-- -------------

CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    date_id INT,
    promotion_id INT,
    price_category_id INT,
    seasonal_id INT,
    sales_volume INT,
    revenue DECIMAL(10,2),
    price DECIMAL(10,2),
    product_position_rank INT,
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (promotion_id) REFERENCES dim_promotion(promotion_id),
    FOREIGN KEY (price_category_id) REFERENCES dim_price_category(price_category_id),
    FOREIGN KEY (seasonal_id) REFERENCES dim_seasonal(seasonal_id)
);

-- 3. Create Indexes for Performance
-- -----------------------------------

CREATE INDEX idx_fact_product ON fact_sales(product_id);
CREATE INDEX idx_fact_date ON fact_sales(date_id);
CREATE INDEX idx_fact_promotion ON fact_sales(promotion_id);
CREATE INDEX idx_fact_price ON fact_sales(price_category_id);
CREATE INDEX idx_fact_seasonal ON fact_sales(seasonal_id);