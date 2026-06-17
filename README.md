# Olist E-commerce: Customer Retention Analysis

An end-to-end data analytics project analyzing customer retention patterns on the Olist Brazilian e-commerce platform (2016–2018), built with Snowflake, dbt, and Tableau Public.

## 📊 Dashboard

[View Interactive Dashboard on Tableau Public](https://public.tableau.com/views/OlistEcommerceCustomerRetentionAnalysis/1_BusinessOverview)

| Page | Content |
|------|---------|
| 1. Business Overview | Revenue, orders, AOV, monthly trend, order funnel, geography |
| 2. Retention Problem | Retention curve (M1: 0.48%), cohort size growth — A Leaky Bucket |
| 3. Root Cause Analysis | Delivery timing vs. repeat rate, review score vs. repeat rate |
| 4. Category Opportunity | Repeat purchase rate by product category |

---

## 🔍 Key Findings

**1. Structural retention crisis**
M1 retention rate is 0.48%, compared to an industry benchmark of 20–40%. Over 96% of customers never make a second purchase.

**2. Operational factors do not explain low retention**
- Delivery timing: on-time (6.63%) vs. late (5.68%) — less than 1% gap
- Review score: scores 1–5 all cluster between 6.04%–6.88% repeat rate
- Conclusion: low retention is a platform-level structural issue, not an operational one

**3. Category-level opportunity exists, but is limited**
Even the highest-performing category (eletrodomesticos, 10.47%) remains well below industry benchmarks, confirming the structural nature of the problem.

**4. Actionable recommendations**
- Build platform-level retention mechanisms (loyalty programme, subscription, personalised re-engagement)
- Prioritise home appliances and fashion accessories for repeat-purchase pilots — highest relative potential
- Shift acquisition strategy: current LTV ≈ first-order value; increasing AOV yields more than increasing acquisition volume

---

## 🛠️ Tech Stack

| Layer | Tool |
|-------|------|
| Data Warehouse | Snowflake (AWS Sydney region) |
| Data Transformation | dbt Cloud |
| Visualisation | Tableau Public |
| Version Control | GitHub |

---

## 📁 Project Structure

```
olist-ecommerce-snowflake-dbt/
├── models/
│   ├── staging/                      # Raw source cleaning (9 models)
│   ├── intermediate/                 # Business logic layer
│   │   └── int_customer_orders.sql
│   └── marts/                        # Final analytical models
│       ├── dim_customers.sql
│       ├── dim_products.sql
│       ├── fct_orders.sql
│       ├── cohort_retention.sql
│       ├── mart_customer_experience.sql
│       └── mart_category_retention.sql
├── tests/                            # dbt data quality tests
├── analyses/                         # Ad hoc SQL analyses
├── dbt_project.yml
└── README.md

---

## 🔄 Data Pipeline
Olist Raw Data (PUBLIC schema)
↓
Staging Models (stg_)
↓
Intermediate Models (int_)
↓
Mart Models (dim_, fct_, mart_*)
↓
Tableau Public Dashboard

---

## 📋 Data Source

[Olist Brazilian E-commerce Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) — 100k orders from 2016 to 2018 across multiple marketplaces in Brazil.

---

## 👤 Author

**Amanda (Yanhui Ma)**
Operations & Growth Lead | Sydney, Australia
