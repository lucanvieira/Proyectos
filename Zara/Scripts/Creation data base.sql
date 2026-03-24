-- Create the ZARA database
CREATE DATABASE IF NOT EXISTS zara;
USE zara;

-- Verify database is selected
SELECT DATABASE();

-- ============================================
-- DIMENSION TABLES
-- ============================================

-- 1. Product Dimension Table
CREATE TABLE dim_product (
    `Product Key` INT PRIMARY KEY AUTO_INCREMENT,
    `Product ID` INT NOT NULL,
    name VARCHAR(255),
    description TEXT,
    sku VARCHAR(100),
    brand VARCHAR(100),
    url TEXT,
    price DECIMAL(10,2),
    currency VARCHAR(3),
    INDEX idx_product_id (`Product ID`)
);

-- 2. Date Dimension Table
CREATE TABLE dim_date (
    `Date Key` INT PRIMARY KEY,
    scraped_at DATETIME,
    Year INT,
    Month INT,
    Day INT,
    Quarter INT,
    Weekday VARCHAR(20),
    `Month Name` VARCHAR(20),
    INDEX idx_year_month (Year, Month)
);

-- 3. Location Dimension Table
CREATE TABLE dim_location (
    `Location Key` INT PRIMARY KEY AUTO_INCREMENT,
    `Product Position` VARCHAR(50),
    UNIQUE KEY unique_position (`Product Position`)
);

-- 4. Promotion Dimension Table
CREATE TABLE dim_promotion (
    `Promotion Key` INT PRIMARY KEY AUTO_INCREMENT,
    Promotion VARCHAR(10),
    UNIQUE KEY unique_promotion (Promotion)
);

-- 5. Seasonal Dimension Table
CREATE TABLE dim_seasonal (
    `Seasonal Key` INT PRIMARY KEY AUTO_INCREMENT,
    Seasonal VARCHAR(10),
    UNIQUE KEY unique_seasonal (Seasonal)
);

-- 6. Category Dimension Table
CREATE TABLE dim_category (
    `Category Key` INT PRIMARY KEY AUTO_INCREMENT,
    `Product Category` VARCHAR(100),
    terms VARCHAR(50),
    section VARCHAR(50),
    UNIQUE KEY unique_category (`Product Category`, terms, section)

);

USE zara;

CREATE TABLE fact_sales (
    `Fact ID` INT PRIMARY KEY AUTO_INCREMENT,
    `Product Key` INT,
    `Date Key` INT,
    `Location Key` INT,
    `Promotion Key` INT,
    `Seasonal Key` INT,
    `Category Key` INT,
    `Sales Volume` INT,
    
    -- Foreign Keys
    FOREIGN KEY (`Product Key`) REFERENCES dim_product(`Product Key`),
    FOREIGN KEY (`Date Key`) REFERENCES dim_date(`Date Key`),
    FOREIGN KEY (`Location Key`) REFERENCES dim_location(`Location Key`),
    FOREIGN KEY (`Promotion Key`) REFERENCES dim_promotion(`Promotion Key`),
    FOREIGN KEY (`Seasonal Key`) REFERENCES dim_seasonal(`Seasonal Key`),
    FOREIGN KEY (`Category Key`) REFERENCES dim_category(`Category Key`),
    
    -- Indexes
    INDEX idx_product (`Product Key`),
    INDEX idx_date (`Date Key`),
    INDEX idx_location (`Location Key`),
    INDEX idx_promotion (`Promotion Key`),
    INDEX idx_seasonal (`Seasonal Key`),
    INDEX idx_category (`Category Key`)
);
