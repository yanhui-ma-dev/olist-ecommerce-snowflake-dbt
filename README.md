# Olist E-commerce: Customer Retention & Strategic Opportunity Analysis

An end-to-end data analytics project analyzing customer retention patterns, operational bottlenecks, and category opportunities on the Olist Brazilian e-commerce platform (2016–2018), built with **Snowflake**, **dbt**, **Tableau**, and **Power BI**.

---

## 📊 Interactive Dashboards

* **Power BI Service**: [View Interactive Power BI Report](YOUR_POWER_BI_PUBLIC_LINK_HERE)
* **Tableau Public**: [View Interactive Tableau Dashboard](YOUR_TABLEAU_PUBLIC_LINK_HERE)

### Dashboard Structure
| Page | Focus Area | Key Business Questions Answered |
| :--- | :--- | :--- |
| **1. Executive Overview** | Macro Business Performance | What is the overall revenue scale, seasonality, and geographical concentration? |
| **2. Customer & Cohort Analysis** | Retention & Repurchase | How severe is customer churn across monthly cohorts (M1 retention: 0.48%)? |
| **3. Root Cause Analysis** | Operational vs. Structural Hypotheses | Do fulfillment delays or negative reviews drive churn? (Hypothesis Disproven) |
| **4. Strategic Opportunity** | Supply-Side & Category Matrix | Where are the growth levers across high-repeat categories and interstate supply networks? |

---

## 🔍 Key Findings

* **1. Structural Retention Bottleneck (The "Leaky Bucket")**
  * **M1 retention sits at 0.48%**, significantly below typical e-commerce benchmarks (15–30%).
  * **96.88% of customers are single-purchase buyers**, confirming Olist operates fundamentally as a one-time transaction channel rather than a sticky marketplace.

* **2. Operational Factors Do Not Drive Low Retention (Hypothesis Disproven)**
  * **Fulfillment Timing**: On-time delivery repeat rate (6.40%–6.63%) vs. Late delivery (5.48%–5.68%) shows an insignificant **<1% gap**.
  * **Review Scores**: 1-star orders (6.48%) exhibit virtually the same repeat purchase rate as 5-star orders (6.76%).
  * **Strategic Verdict**: Low retention is a **structural business model issue** (durable product mix & platform gateway nature), not an operational execution failure.

* **3. Severe Interstate Supply-Demand Mismatch**
  * **Supply Monopolization**: Sellers from São Paulo (SP) dominate over **$10.3M+ (60%+)** of total marketplace GMV, fulfilling orders nationwide.
  * **Fulfillment Root Cause**: Severe delivery lead times (20–30 days) in North/Northeast states (e.g., RR, AP, BA) stem directly from **long-haul interstate transit distances**, not last-mile carrier inefficiency.

* **4. Category Opportunity & Seller Concentration**
  * **Category Matrix**: Top revenue drivers (`bed_bath_table`, `watches_gifts`) are low-frequency durable goods. In contrast, `health_beauty` (`beleza_saude`) and small appliances (`eletrodomesticos`) combine strong GMV scale with higher repeat rates (up to 15%+).
  * **Long-Tail Supply**: Top 10 sellers contribute $162K–$253K GMV each, indicating healthy seller diversification without single-merchant dependency risk.

---

## 💡 Strategic Recommendations

* **Category Portfolio Rebalancing**: Reallocate high-visibility marketing and homepage real estate to high-frequency consumables (`health_beauty`, daily essentials) to build an organic repurchase flywheel.
* **Regional Hubs & Local Sourcing**: Establish regional fulfillment nodes/hubs in high-demand Northeast corridors (e.g., Bahia, Pernambuco) and recruit localized sellers to cut cross-country delivery latency.
* **Platform-Level Retention Mechanics**: Introduce cross-store loyalty rewards, post-purchase subscription bundles for replenishable goods, and warranty add-ons for durable goods.

---

## 🛠️ Tech Stack

| Layer | Technology |
| :--- | :--- |
| **Data Warehouse** | Snowflake (AWS Sydney Region) |
| **Data Transformation** | dbt Cloud (Staging $\rightarrow$ Intermediate $\rightarrow$ Marts) |
| **Business Intelligence** | Power BI Desktop & Service, Tableau Public |
| **Semantic Modeling** | DAX, Snowflake Semantic Views |
| **Version Control** | GitHub |

---

## 🔄 Data Pipeline
Olist Raw Source (PUBLIC Schema)
       ↓
Staging Layer (stg_*) — Cleansing, Casting & Date Normalization
       ↓
Intermediate Layer (int_*) — Customer Journey & Order Item Aggregations
       ↓
Mart Layer (dim_*, fct_*, mart_*) — Star Schema & Cohort Matrices
       ↓
BI Consumption Layer (Power BI / Tableau Public)

---

## 📁 Project Structure

```text
olist-ecommerce-snowflake-dbt/
├── models/
│   ├── staging/                      # Source data deduplication & type casting (9 models)
│   ├── intermediate/                 # Intermediate logic & order-customer mapping
│   │   └── int_customer_orders.sql
│   └── marts/                        # Star schema dimensions, facts & business marts
│       ├── dim_customers.sql
│       ├── dim_products.sql
│       ├── dim_sellers.sql
│       ├── fct_orders.sql
│       ├── cohort_retention.sql
│       ├── mart_customer_experience.sql
│       └── mart_category_retention.sql
├── tests/                            # dbt data quality & referential integrity tests
├── analyses/                         # Semantic views & exploratory SQL scripts
├── dbt_project.yml
└── README.md
