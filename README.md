# Olist E-commerce: Customer Retention Analysis

An end-to-end data analytics project analyzing customer retention patterns on the Olist Brazilian e-commerce platform (2016–2018), built with Snowflake, dbt, and Tableau Public.

## 📊 Dashboard

[View Interactive Dashboard on Tableau Public]([[https://public.tableau.com/views/OlistEcommerceCustomerRetentionAnalysis/1_BusinessOverview](https://public.tableau.com/views/OlistEcommerceAnalysis_17817774946480/1_BusinessOverview)

| Page | Content |
|------|---------|
| 1. Business Overview | Revenue, orders, AOV, monthly trend, order funnel, geography |
| 2. Retention Problem | Retention curve (M1: 0.48%), cohort size growth — A Leaky Bucket |
| 3. Root Cause Analysis | Delivery timing vs. repeat rate, review score vs. repeat rate |
| 4. Category Opportunity | Repeat purchase rate by product category |

---

## 🔍 Key Findings

**1. Structural retention crisis**
M1 retention rate is 0.48%, significantly below typical e-commerce 
benchmarks (15–30%). Over 96% of customers make no second purchase, 
indicating the platform operates as a one-time transaction marketplace.

**2. Operational factors do not explain low retention**
- Delivery timing: on-time (6.63%) vs. late (5.68%) — less than 1% gap
- Review score: scores 1–5 all cluster between 6.04%–6.88%
- Conclusion: low retention is a structural platform issue, 
  not an operational one

**3. Category-level variation exists but remains universally low**
Repeat purchase rates range from 5.26% (esporte_lazer) to 10.47% 
(eletrodomesticos) across categories with ≥100 customers. Even the 
highest-performing category remains well below general e-commerce 
benchmarks, confirming a platform-wide structural pattern rather than 
a category-specific issue. The drivers behind category-level variation 
warrant further investigation.

**4. Actionable recommendations**
- Investigate why category-level repeat rates vary — qualitative 
  research or additional behavioural data needed to identify 
  actionable drivers
- Build platform-level retention mechanisms (loyalty programme, 
  personalised re-engagement, subscription options) to address 
  the structural gap
- Prioritise categories with relatively higher repeat potential 
  (home appliances, fashion accessories) for retention pilot programmes

---

## 🔮 Further Work

- **LTV Modelling** — Build a formal LTV model (e.g. BG/NBD) to quantify 
  the revenue impact of retention improvements and guide investment decisions
- **Category Driver Analysis** — Investigate what drives repeat purchase 
  variation across categories using additional behavioural data
- **Retention Experiment Design** — Design A/B tests to measure causal 
  impact of retention initiatives before scaling
  
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
