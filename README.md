# Olist E-commerce: Customer Retention & Strategic Opportunity Analysis

**Why are customers not coming back — and where should Olist invest to improve retention?**

An end-to-end e-commerce analytics project investigating customer retention, operational performance, supply network concentration, and category growth opportunities on the Olist Brazilian marketplace.

The analysis moves from **business problem → key findings → root cause → actionable insights**, using customer cohort analysis, retention segmentation, delivery performance, review scores, geographic patterns, and category-level analysis.

---

## 🎯 Business Problem

Olist’s marketplace shows extremely low customer retention.

The key question is:
> **Is low retention caused by poor customer experience and operational performance, or is it fundamentally driven by the marketplace’s product mix and customer behaviour?**

This analysis evaluates three areas:
* **Customer behaviour** — How does customer retention evolve across cohorts?
* **Operational performance** — Do delivery delays and customer reviews influence repeat purchases?
* **Strategic opportunities** — Which categories, regions, and supply-side patterns could provide stronger growth and retention opportunities?

---

## 🔑 Key Findings

### 1. Retention is a structural bottleneck
Olist has a highly transactional customer base:
* **M1 retention: 0.48%**
* **96.88% of customers are single-purchase buyers**

The consistently low repeat-purchase behaviour suggests that retention is not simply an isolated customer-experience problem, but a broader characteristic of the marketplace’s business model and product mix.

### 2. Operational performance does not explain the retention gap
The analysis tested whether delivery performance and customer satisfaction were major drivers of repeat purchases.

The results showed only marginal differences:
* **On-time delivery**: 6.40%–6.63% repeat purchase rate
* **Late delivery**: 5.48%–5.68%
* **1-star reviews**: 6.48%
* **5-star reviews**: 6.76%

The evidence therefore does not support delivery performance or review scores as the primary explanation for Olist’s low retention.

### 3. The marketplace has a significant interstate supply imbalance
* Sellers based in São Paulo (SP) generate more than **$10.3M GMV**, representing **over 60%** of marketplace GMV.
* This creates substantial dependence on long-distance interstate fulfillment.
* North and Northeast states such as Roraima (RR), Amapá (AP), and Bahia (BA) experience substantially longer delivery lead times, consistent with the impact of long-haul interstate transportation.

### 4. Category mix provides a more promising retention opportunity
* Olist’s largest revenue categories are not necessarily its strongest retention opportunities.
* Categories such as `bed_bath_table` and `watches_gifts` generate significant GMV but are largely durable, low-frequency purchases.
* By comparison, categories such as **Health & Beauty (`beleza_saude`)** demonstrate stronger repeat-purchase potential while maintaining meaningful GMV scale.

This indicates an opportunity to optimise the category portfolio not only for revenue, but also for customer repurchase potential.

---

## 🎯 Root Cause

The evidence suggests that Olist’s low retention is less about operational execution and more about the underlying marketplace structure.

The main structural factors identified are:
* **Durable product mix** $\rightarrow$ Lower natural purchase frequency
* **One-time transaction behaviour** $\rightarrow$ Customers have limited reasons to return after completing a purchase
* **Marketplace transaction structure** $\rightarrow$ Customers may have limited incentives to return to the platform after completing individual purchases
* **Long-distance supply network** $\rightarrow$ Heavy dependence on São Paulo sellers creates regional fulfillment inefficiencies

**Strategic conclusion**:
Improving delivery speed alone is unlikely to solve Olist’s core retention problem. The stronger opportunity is to increase the frequency of customer interactions with the marketplace while improving the supply structure in high-demand regions.

---

## 💡 Actionable Insights

Based on the analysis, three strategic directions emerge:

### 1. Rebalance Category Investment
Increase marketing visibility and homepage exposure for higher-frequency and replenishable categories such as:
* Health & Beauty
* Daily essentials
* Other categories with stronger repeat-purchase potential

The objective is to create a higher-frequency purchase cycle rather than relying primarily on durable, one-time purchases.

### 2. Strengthen Regional Supply
Reduce the marketplace’s dependence on long-distance fulfillment by:
* **Evaluating regional fulfillment hubs** in high-demand Northeast corridors
* **Recruiting more sellers closer to regional demand**
* **Improving supply density** in underserved states

This could reduce delivery lead times while making regional supply more resilient.

### 3. Build Platform-Level Retention Mechanics
Because customers interact with individual sellers as well as the marketplace itself, Olist could introduce mechanisms that encourage customers to return to the platform, not simply to the same seller.

Potential initiatives include:
* **Cross-store loyalty rewards** to encourage platform-level repeat purchases
* **Replenishment programmes or subscription bundles** for higher-frequency categories
* **Personalised cross-category recommendations** to increase customer purchase frequency

The strategic goal is to turn individual transactions into a repeatable customer journey.

---

## 📊 Business Intelligence Dashboards

The analysis is translated into four decision-oriented dashboards, moving from business performance → customer behaviour → root-cause validation → strategic opportunity.

### 1. Executive Overview & Revenue Growth
![Executive Overview](images/Executive%20Overview%20%26%20Revenue%20Growth.jpg)

**Business question:**  
How is the marketplace performing, and where is revenue concentrated?

**Focus areas**:
* Overall GMV and order performance
* Revenue trends and seasonality
* Geographic distribution
* Marketplace scale and concentration

---

### 2. Customer & Cohort Analysis
![Customer & Cohort Analysis](images/Customer%20%26%20Cohort%20Analysis.jpg)

**Business question:**  
How does customer retention evolve across cohorts?

**Focus areas**:
* Monthly customer cohorts
* M1 retention
* Repeat-purchase behaviour
* One-time vs. repeat customers
* Customer retention trends

**Key finding**:
M1 retention is only **0.48%**, with **96.88%** of customers making a single purchase.

---

### 3. Retention Root Cause Analysis
![Retention Root Cause Analysis](images/Retention%20Root%20Cause%20Analysis.jpg)

**Business question:**  
Are delivery performance and customer satisfaction driving repeat purchase?

The dashboard compares repeat-purchase behaviour across:
* Delivery timeliness
* Review scores
* Customer experience indicators

**Key finding**:
The analysis does not support delivery delays or review scores as the primary drivers of low retention. This shifts the strategic focus from purely operational improvement toward customer frequency, category mix, and platform-level retention.

---

### 4. Category & Seller Strategy Opportunity
![Category & Seller Strategy Opportunity](images/Category%20%26%20Seller%20Strategy%20Opportunity.jpg)

**Business question:**  
Which categories and supply-side patterns offer the strongest strategic opportunities?

**Focus areas**:
* Category GMV vs. repeat-purchase rate
* Category-level retention opportunity
* Seller GMV concentration
* Regional supply patterns
* Interstate fulfillment exposure

---

### Interactive Dashboard

* **Tableau Public**: [View Interactive Tableau Dashboard](https://public.tableau.com/views/OlistEcommerceAnalysis_17817774946480/1_BusinessOverview?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

---

## 🔍 Evidence Behind the Findings

### Customer Retention
Customer-level and cohort analysis reveals a fundamental retention challenge.

| Metric | Result |
| :--- | :--- |
| **M1 Retention** | 0.48% |
| **Single-purchase customers** | 96.88% |
| **Repeat-purchase customers** | 3.12% |

The scale of one-time purchasing suggests that increasing customer frequency is a more fundamental challenge than simply improving individual transactions.

---

### Operational Hypothesis Testing
To determine whether operational performance was responsible for low retention, repeat-purchase behaviour was segmented by delivery performance and review score.

| Factor | Segment | Repeat Purchase Rate |
| :--- | :--- | :--- |
| **Delivery** | On-time | 6.40%–6.63% |
| **Delivery** | Late | 5.48%–5.68% |
| **Review** | 1-star | 6.48% |
| **Review** | 5-star | 6.76% |

The differences are relatively small.

**Conclusion**:
The analysis does not provide strong evidence that delivery performance or review scores are the primary causes of low retention. This hypothesis-testing step prevents the analysis from defaulting to an intuitive but unsupported recommendation such as simply “improve delivery”.

---

### Geographic Supply & Fulfillment
* São Paulo sellers account for **more than $10.3M GMV** and **over 60%** of marketplace GMV.
* This concentration creates a structural supply pattern in which products are frequently shipped across large geographic distances.
* North and Northeast states such as RR, AP, and BA show substantially longer delivery lead times.

The geographic pattern indicates that fulfillment delays are strongly associated with interstate distance and supply concentration, rather than being solely a last-mile delivery issue.

---

### Category Opportunity
The category analysis compares GMV scale and repeat-purchase behaviour to identify potential growth opportunities.

High-revenue categories such as:
* `bed_bath_table`
* `watches_gifts`

are largely durable and lower-frequency.

Meanwhile, categories such as:
* `beleza_saude` / Health & Beauty
* selected appliance categories

show stronger repeat-purchase potential.

**Strategic implication**:
Revenue scale and retention potential should be evaluated together when allocating category investment. The objective is not simply to maximise current GMV, but to identify categories capable of generating more frequent customer interactions and repeat purchases.

---

## 🏗️ Data & Analytics Architecture

The project uses a layered analytics architecture to separate raw data preparation, reusable analytical logic, business modelling, and BI consumption.

```text
Olist Raw Data
       ↓
Staging Layer
Cleaning · Casting · Standardisation
       ↓
Intermediate Layer
Customer Journey · Order-Level Aggregation
       ↓
Mart Layer
Customer · Product · Seller · Order · Retention
       ↓
Business Analytics
Cohort · Retention · Experience · Category
       ↓
BI Consumption
Power BI · Tableau

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
