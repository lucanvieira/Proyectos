# 🎓 ProUni Program Analysis — Brazil (2005–2020)
### Public Policy · Education Equity · Social Impact

![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=flat&logo=pandas&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=flat&logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat&logo=powerbi&logoColor=black)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=flat)

---

## 📌 Business Problem

The **Programa Universidade para Todos (ProUni)**, created in 2004 under President Lula, offers full (100%) and partial (50%) scholarships to low-income students at private universities in Brazil. After 15 years and 2.53 million beneficiaries, a fundamental question remains:

> **Has ProUni effectively reduced inequality — or has it reinforced existing structural disparities?**

This project analyses the program's reach across geography, ethnicity, gender, and disability to produce data-driven answers and policy recommendations.

---

## 📁 Project Structure

```
prouni-analysis/
│
├── data/
│   ├── raw/                        → original government datasets (2005–2020)
│   └── processed/                  → cleaned and structured data (Snowflake Schema)
│
├── notebooks/
│   ├── 01_data_cleaning.ipynb      → ETL pipeline and data validation
│   ├── 02_eda.ipynb                → exploratory data analysis
│   ├── 03_geographic_analysis.ipynb
│   ├── 04_ethnicity_gender.ipynb
│   └── 05_disability_analysis.ipynb
│
├── queries/
│   ├── geographic_distribution.sql
│   ├── ethnicity_trends.sql
│   ├── gender_by_region.sql
│   └── disability_profile.sql
│
├── dashboard/
│   └── prouni_powerbi.pbix         → interactive Power BI dashboard
│
├── assets/
│   └── screenshots/                → dashboard previews
│
└── README.md
```

---

## 📊 Dataset Overview

| Attribute | Description |
|---|---|
| Beneficiary ID | Unique student identifier |
| Scholarship Type | Full (100%), Partial (50%), Complementary (25%) |
| University | Institution name and type |
| Course | Degree programme |
| Modality | In-person (morning / afternoon / evening) or distance learning |
| State / Region | Geographic location |
| Ethnicity | Self-declared racial group |
| Gender | Male / Female |
| Disability | Whether the student declared a disability |
| Year | Academic intake year (2005–2020) |

**Source:** [Portal de Dados Abertos — Ministério da Educação (MEC)](https://dados.gov.br/dados/conjuntos-dados/mec-prouni)

---

## 🛠️ Methodology

```
Raw Government Data (2005–2020)
    → ETL & Cleaning (Python / Pandas)
    → Snowflake Schema Database (10x processing efficiency gain)
    → SQL Aggregations & Cross-dimensional Analysis
    → Interactive Power BI Dashboard
    → Comparison with IBGE, FUNAI, MIN & World Bank data
    → Policy Recommendations
```

---

## 💡 Key Findings

### 🗺️ Geography
- **2.53 million** students enrolled across **2,585 universities** and **3,319 courses** (2005–2020)
- São Paulo and Minas Gerais concentrated the highest number of scholarships; Roraima and Amapá the lowest
- Distance learning grew **more than 10x** — from 4,743 students in 2005 to a peak of **58,590 in 2019**
- **58.28%** of distance learning students were enrolled in just **5 universities**, revealing a concerning monopoly effect

### 🎨 Ethnicity
- White students: **43.12%** of total beneficiaries — higher than their share of the general population
- Mixed-race (mestizo) students: **41.44%** — showing growth over the period
- Black students: **12.59%**
- Indigenous students: only **0.11%**, despite representing **0.83%** of Brazil's population (FUNAI, 2024)

### ♿ Disability
- Only **0.73%** of ProUni beneficiaries declared a disability
- Total students with disability: **18,500** out of 2.53 million
- Best representation: Asian men in distance learning courses (**1.73%**)
- Worst representation: Indigenous women in full-time courses (**0%** registered cases)
- Brazil's disabled population: **18.6 million** people, or **8.9%** of the total (IBGE, 2023)

### ⚧ Gender
- Women represent **55.15%** of all beneficiaries (1,397,282 vs 1,136,397 men)
- Female majority in all years except 2007 and 2008
- Despite greater access to higher education, women still earn **19.4% less** than men on average (Ministério das Mulheres, 2024)
- Northeast region (poorest): women = **53.16%** of beneficiaries · South region (wealthiest): **56.09%**

### 📅 Scholarship Distribution
- Full scholarships (100%): **70.23%** of total
- Partial scholarships (50%): **29.69%**
- Complementary scholarships (25%): **0.08%** — discontinued after 2008

---

## 📈 Dashboard Preview

> Interactive Power BI dashboard with dynamic filters by year, region, ethnicity, gender, modality, and disability status.

| Page | Focus |
|---|---|
| Overview | Total students, universities, courses, scholarship type distribution |
| Geographic | Regional map, state ranking, distance learning growth |
| Ethnicity | Racial breakdown over time by region and modality |
| Disability | Disability profile by gender, ethnicity, and course type |
| Gender | Gender evolution by year, region, and course modality |

---

## ✅ Conclusions & Recommendations

ProUni represents a major step in democratising access to higher education in Brazil. However, the data reveals persistent structural gaps:

1. **Geographic inequality** — The program disproportionately benefits more developed states, reinforcing existing regional disparities
2. **University concentration** — Over 58% of distance learning students concentrated in 5 institutions limits pluralism and competition
3. **Indigenous exclusion** — 0.11% representation for a group that is 0.83% of the population signals a systemic access barrier
4. **Disability underrepresentation** — 0.73% of beneficiaries vs 8.9% of the general population reveals a deep structural gap
5. **Gender pay gap** — Women's higher programme participation does not translate into economic equality

**Policy recommendations:** improve data transparency on socioeconomic status, expand reach to underrepresented regions and groups, and integrate ProUni with complementary policies addressing structural inequalities beyond university access.

---

## 📄 Research Article

Full findings published in:

> **ProUni: Democracy or Vertigo?** — Lucan Vieira (2025)  
> 🔗 [Read the article](#)

---

## 🚀 How to Run

```bash
# 1. Clone the repository
git clone https://github.com/lucanvieira/prouni-analysis.git

# 2. Install dependencies
pip install pandas numpy seaborn matplotlib jupyter

# 3. Run the ETL notebook first
jupyter notebook notebooks/01_data_cleaning.ipynb
```

---

## 👤 Author

**Lucan Vieira** · Data Analyst  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-lucanvieira-0A66C2?style=flat&logo=linkedin&logoColor=white)](https://linkedin.com/in/lucanvieira)
[![GitHub](https://img.shields.io/badge/GitHub-lucanvieira-181717?style=flat&logo=github&logoColor=white)](https://github.com/lucanvieira)

---

*Part of my Data Analyst Portfolio · Using data to drive inclusion, equity, and strategic impact.*
