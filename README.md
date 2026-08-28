# Olist E-commerce: Customer Retention & Strategic Opportunity Analysis

> **Why are customers not coming back — and where should Olist invest to improve retention?**

An end-to-end e-commerce analytics project analysing **customer retention, operational performance, supply patterns, and category opportunities** on the Olist Brazilian marketplace.

**Snowflake · dbt · Power BI · Tableau**

The project demonstrates a structured workflow from:

**Business Question $\rightarrow$ Data Preparation $\rightarrow$ Analysis $\rightarrow$ Evidence $\rightarrow$ Insight $\rightarrow$ Dashboard**

---

## 🎯 Business Problem

Olist’s marketplace shows extremely low customer retention.

The analysis focuses on three questions:

| Area | Business Question |
| :--- | :--- |
| **Customer Behaviour** | How does customer retention evolve across cohorts? |
| **Operational Performance** | Do delivery delays and customer reviews influence repeat purchases? |
| **Strategic Opportunity** | Which categories and supply patterns show stronger retention or growth potential? |

---

## 🔑 Key Findings

### 01 — Customer Retention

> **M1 Retention: 0.48%**  
> **Single-purchase customers: 96.88%**

Olist has a highly transactional customer base, with the vast majority of customers making only one purchase.

---

### 02 — Operational Performance

Repeat-purchase rates show only limited differences across delivery and review segments.

| Factor | Segment | Repeat Purchase Rate |
| :--- | :--- | :--- |
| **Delivery** | On-time | **6.40%–6.63%** |
| **Delivery** | Late | **5.48%–5.68%** |
| **Review** | 1-star | **6.48%** |
| **Review** | 5-star | **6.76%** |

**Finding**: The analysis does not show a strong difference in repeat-purchase behaviour across these operational and satisfaction measures.

---

### 03 — Geographic Supply Concentration

> **São Paulo sellers: $10.3M+ GMV**  
> **60%+ of marketplace GMV**

North and Northeast states such as **RR, AP, and BA** show substantially longer delivery lead times.

This highlights strong geographic concentration in marketplace supply and exposure to long-distance fulfillment.

---

### 04 — Category Opportunity

High-GMV categories such as:

`bed_bath_table` · `watches_gifts`

are largely durable and lower-frequency categories.

Meanwhile:

`beleza_saude` / **Health & Beauty**

leads the marketplace by GMV scale, though its repeat-purchase rate sits below the top-performing categories.

**Key takeaway**: Category performance can be evaluated using both **GMV scale and repeat-purchase potential**.

---

## 💡 Analytical Interpretation

The analysis provides two clear areas for further investigation:

* **Customer frequency**  
  $\rightarrow$ Category mix and replenishment potential

* **Supply structure**  
  $\rightarrow$ Geographic concentration and regional fulfillment

The operational analysis also helps narrow the problem space by showing that delivery performance and review scores do not exhibit large differences in repeat-purchase rates.

---

## 🎯 Actionable Insights

### 01 — Category Investment
Prioritise higher-frequency and replenishable categories with stronger repeat-purchase potential.

### 02 — Regional Supply
Evaluate regional fulfillment options and local seller recruitment in high-demand areas to reduce dependence on long-distance supply.

### 03 — Platform-Level Retention
Potential initiatives include:
* **Cross-store loyalty rewards** to encourage platform-level repeat purchases
* **Replenishment programmes or subscription bundles** for higher-frequency categories
* **Personalised cross-category recommendations** to increase customer purchase frequency

---

## 📊 Business Intelligence Dashboards

The analysis is translated into four dashboards:

**01 Business Performance $\rightarrow$ 02 Customer Behaviour $\rightarrow$ 03 Hypothesis Testing $\rightarrow$ 04 Strategic Opportunity**

---

### 01 — Executive Overview & Revenue Growth

![Executive Overview](images/Executive%20Overview%20%26%20Revenue%20Growth.jpg)

**Business question**:  
How is the marketplace performing, and where is revenue concentrated?

**Focus**: GMV · Orders · Revenue Trends · Geography · Marketplace Concentration

---

### 02 — Customer & Cohort Analysis

![Customer & Cohort Analysis](images/Customer%20%26%20Cohort%20Analysis.jpg)

**Business question**:  
How does customer retention evolve across cohorts?

**Focus**: Cohorts · M1 Retention · Repeat Purchase · Customer Frequency

> **M1 retention: 0.48%**  
> **96.88% single-purchase customers**

---

### 03 — Retention Root Cause Analysis

![Retention Root Cause Analysis](images/Retention%20Root%20Cause%20Analysis.jpg)

**Business question**:  
Are delivery performance and customer satisfaction associated with repeat purchase?

**Focus**: Delivery Timeliness · Review Scores · Customer Experience

> **Finding**: Repeat-purchase rates show only limited variation across delivery and review segments.

---

### 04 — Category & Seller Strategy Opportunity

![Category & Seller Strategy Opportunity](images/Category%20%26%20Seller%20Strategy%20Opportunity.jpg)

**Business question**:  
Which categories and supply-side patterns show stronger strategic potential?

**Focus**: Category GMV · Repeat Purchase · Seller Concentration · Regional Supply · Fulfillment Exposure

---

### 🔗 Interactive Dashboard

**Tableau Public**

[🌐 View Interactive Tableau Dashboard $\rightarrow$](https://public.tableau.com/views/OlistEcommerceAnalysis_17817774946480/1_BusinessOverview?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

---

## 🔍 Evidence

### Customer Retention

| Metric | Result |
| :--- | :--- |
| **M1 Retention** | 0.48% |
| **Single-purchase customers** | 96.88% |
| **Repeat-purchase customers** | 3.12% |

---

### Operational Hypothesis Testing

The analysis tests whether operational performance and customer satisfaction are associated with repeat-purchase behaviour.

| Factor | Segment | Repeat Purchase Rate |
| :--- | :--- | :--- |
| **Delivery** | On-time | 6.40%–6.63% |
| **Delivery** | Late | 5.48%–5.68% |
| **Review** | 1-star | 6.48% |
| **Review** | 5-star | 6.76% |

**Result**: The observed differences are relatively small.

---

### Geographic Supply & Fulfillment

| Indicator | Finding |
| :--- | :--- |
| **Top seller state** | São Paulo (SP) |
| **SP seller GMV** | $10.3M+ |
| **Share of marketplace GMV** | 60%+ |
| **Longer lead-time regions** | RR · AP · BA |

The geographic analysis highlights the relationship between **supply concentration, regional demand, and fulfillment distance**.

---

### Category Opportunity

The category analysis compares:

> **GMV Scale $\times$ Repeat-Purchase Rate**

This helps identify categories that combine meaningful marketplace scale with stronger customer repurchase potential.

---

## 🧪 Data Quality & Transformation

Data quality is addressed before the data reaches the BI layer.

### Data Preparation
* Data type standardisation
* Date and timestamp normalisation
* Source-level deduplication
* Reusable staging transformations

### Data Quality
* Null checks
* Uniqueness checks
* Referential integrity tests
* dbt model validation

### Analytical Modelling
* Customer-level modelling
* Order-level aggregation
* Cohort construction
* Retention metrics
* Customer experience analysis
* Category-level retention analysis

---

## 🏗️ Data & Analytics Architecture

```text
               Olist Raw Data
                     ↓
        ┌─────────────────────────┐
        │      Staging Layer      │
        │        Cleaning         │
        │         Casting         │
        │     Standardisation     │
        └────────────┬────────────┘
                     ↓
        ┌─────────────────────────┐
        │   Intermediate Layer    │
        │    Customer Journey     │
        │    Order Aggregation    │
        └────────────┬────────────┘
                     ↓
        ┌─────────────────────────┐
        │       Mart Layer        │
        │        Customers        │
        │        Products         │
        │         Sellers         │
        │         Orders          │
        │        Retention        │
        └────────────┬────────────┘
                     ↓
        ┌─────────────────────────┐
        │    Business Analytics   │
        │         Cohort          │
        │        Retention        │
        │       Experience        │
        │        Category         │
        └────────────┬────────────┘
                     ↓
        ┌─────────────────────────┐
        │     BI Consumption      │
        │        Power BI         │
        │         Tableau         │
        └─────────────────────────┘
```

---

## 🛠️ Technical Stack

| Layer | Technology | Purpose |
| :--- | :--- | :--- |
| **Data Warehouse** | Snowflake | Cloud data warehouse & analytical SQL |
| **Transformation** | dbt Cloud | Data transformation, modelling & testing |
| **BI** | Power BI | Interactive dashboards & DAX |
| **Visual Analytics** | Tableau Public | Interactive visualisation |
| **Semantic Modelling** | DAX / Snowflake Semantic Views | Business metrics |
| **Version Control** | GitHub | Source control & documentation |

---

## 📁 Project Structure

```text
olist-ecommerce-snowflake-dbt/
│
├── models/
│   ├── staging/
│   │   └── # Source data cleansing & type casting
│   │
│   ├── intermediate/
│   │   └── int_customer_orders.sql
│   │
│   └── marts/
│       ├── dim_customers.sql
│       ├── dim_products.sql
│       ├── dim_sellers.sql
│       ├── fct_orders.sql
│       ├── cohort_retention.sql
│       ├── mart_customer_experience.sql
│       └── mart_category_retention.sql
│
├── tests/
│   └── # dbt data quality & referential integrity tests
│
├── analyses/
│   └── # Exploratory SQL & analytical scripts
│
├── images/
│   ├── Executive Overview & Revenue Growth.jpg
│   ├── Customer & Cohort Analysis.jpg
│   ├── Retention Root Cause Analysis.jpg
│   └── Category & Seller Strategy Opportunity.jpg
│
├── dbt_project.yml
└── README.md
```

---

## 📌 Project Scope

| Attribute | Details |
| :--- | :--- |
| **Platform** | Olist Brazilian E-commerce Marketplace |
| **Data Period** | January 2017 – June 2018 |
| **Analysis** | Retention · Cohorts · Operations · Geography · Categories |
| **Tools** | Snowflake · dbt · Power BI · Tableau |
