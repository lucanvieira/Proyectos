# 🛍️ Zara Sales Analysis — Product & Pricing Intelligence

![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=flat&logo=pandas&logoColor=white)
![Seaborn](https://img.shields.io/badge/Seaborn-3776AB?style=flat&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=flat&logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat&logo=powerbi&logoColor=black)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=flat&logo=tableau&logoColor=white)
![Status](https://img.shields.io/badge/Status-In%20Progress-orange?style=flat)

---

## 📌 Business Problem

Zara operates in a highly competitive fast-fashion market where pricing decisions, inventory allocation, and promotional timing directly impact revenue and margins. Without a clear view of which products drive performance — and under what conditions — management risks misallocating resources and missing revenue opportunities.

**This project answers four core business questions:**

> 1. Which product categories drive the most revenue and volume?
> 2. How does pricing relate to sales performance across categories?
> 3. Are there seasonal or temporal patterns that predict demand peaks?
> 4. Which store locations outperform — and why?

---

## 📁 Project Structure

```
zara-sales-analysis/
│
├── data/
│   ├── raw/                  → original dataset (unmodified)
│   └── processed/            → cleaned and transformed data
│
├── notebooks/
│   ├── 01_eda.ipynb          → exploratory data analysis
│   ├── 02_product_performance.ipynb
│   ├── 03_pricing_analysis.ipynb
│   └── 04_temporal_trends.ipynb
│
├── queries/
│   ├── product_performance.sql
│   ├── pricing_by_category.sql
│   ├── seasonal_trends.sql
│   └── store_comparison.sql
│
├── dashboard/
│   ├── zara_sales.pbix       → Power BI dashboard
│   └── zara_sales_tableau/   → Tableau workbook
│
├── assets/
│   └── screenshots/          → dashboard previews
│
└── README.md
```

---

## 📊 Dataset Overview

| Attribute | Description |
|---|---|
| `product_id` | Unique product identifier |
| `product_name` | Name of the product |
| `category` | Product category (e.g. tops, outerwear, accessories) |
| `price` | Unit price (EUR) |
| `sales_volume` | Units sold per record |
| `sales_date` | Date of transaction |
| `store_location` | Store city / region |

**Source:** [Zara Sales Dataset — Kaggle](https://www.kaggle.com/datasets/xontoloyo/zara-sales-dataset)

---

## 🔍 Analysis Modules

### 1 · Product Performance by Category
- Revenue and volume ranking by category
- Best and worst performing SKUs
- Category contribution to total sales (%)

### 2 · Pricing Strategy & Margins
- Price distribution per category
- Correlation between price point and sales volume
- Identification of price elasticity patterns

### 3 · Temporal Trends & Seasonality
- Monthly and weekly sales evolution
- Peak demand periods detection
- Year-over-year comparison (where available)

### 4 · Store / Region Comparison
- Top performing locations by revenue
- Sales density by region
- Identification of underperforming stores

---

## 🛠️ Methodology

```
Raw Data → Cleaning & Validation (Python / Pandas)
        → Exploratory Analysis (Pandas / Seaborn)
        → SQL Queries for aggregations and cross-analysis
        → Interactive Dashboard (Power BI + Tableau Public)
        → Actionable Insights & Recommendations
```

---

## 💡 Key Insights

> 🔄 *This section will be updated as the analysis progresses.*

- [ ] Top revenue category identified
- [ ] Pricing sweet spot per category
- [ ] Peak sales period confirmed
- [ ] Best performing store region

---

## 📈 Dashboard Preview

> 🔄 *Screenshots and Tableau Public link will be added upon completion.*

---

## ✅ Recommendations

> 🔄 *Business recommendations will be documented here based on findings.*

---

## 🚀 How to Run

```bash
# 1. Clone the repository
git clone https://github.com/lucanvieira/zara-sales-analysis.git

# 2. Install dependencies
pip install pandas numpy seaborn matplotlib jupyter

# 3. Open notebooks
jupyter notebook notebooks/01_eda.ipynb
```

---

## 👤 Author

**Lucan Vieira** · Data Analyst  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-lucanvieira-0A66C2?style=flat&logo=linkedin&logoColor=white)](https://linkedin.com/in/lucanvieira)
[![GitHub](https://img.shields.io/badge/GitHub-lucanvieira-181717?style=flat&logo=github&logoColor=white)](https://github.com/lucanvieira)

---

*Part of my Data Analyst Portfolio · Exploring product intelligence in Spanish retail.*