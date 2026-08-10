# Customer Retention & Revenue Intelligence

An end-to-end e-commerce analytics project focused on customer value, retention,
cohort behavior, RFM segmentation, and retention prioritization.

## Business Objective
Identify high-value and at-risk customer groups, understand repeat-purchase
behavior, quantify revenue concentration, and prioritize retention actions.

## Dataset
Brazilian Olist E-Commerce Public Dataset.
The raw CSV files are intentionally not included in this repository. Download
the public Olist dataset and place the CSV files in `data/`.

Expected files include:
- olist_orders_dataset.csv
- olist_order_items_dataset.csv
- olist_order_payments_dataset.csv
- olist_customers_dataset.csv
- olist_products_dataset.csv
- product_category_name_translation.csv

## Project Workflow
1. Load and validate the relational data
2. Build order/customer-level analytical tables
3. Analyze revenue and customer KPIs
4. Perform RFM segmentation
5. Analyze customer cohorts and retention
6. Identify high-value / at-risk customers
7. Estimate revenue exposure and prioritize actions
8. Build a Power BI dashboard

## Core KPIs
- Total revenue
- Number of orders
- Unique customers
- Average order value
- Repeat customer rate
- Revenue per customer
- Revenue by customer segment
- Cohort retention

## Customer Segmentation
Customers are segmented using Recency, Frequency and Monetary value.
The exact thresholds are data-driven and documented in the analysis notebook.

## Retention Prioritization
The project creates a practical prioritization framework:
- High-value active customers → loyalty / cross-sell
- High-value declining customers → high-priority retention
- New customers → onboarding / second-purchase campaigns
- Low-value inactive customers → low-cost reactivation

## Repository Structure
```
customer_retention_revenue_intelligence/
├── README.md
├── data/
├── sql/
│   ├── customer_kpis.sql
│   ├── rfm_analysis.sql
│   └── cohort_retention.sql
├── notebooks/
│   ├── 01_data_validation.ipynb
│   ├── 02_customer_analytics.ipynb
│   ├── 03_rfm_segmentation.ipynb
│   └── 04_cohort_retention.ipynb
├── dashboard/
├── reports/
│   └── business_recommendations.md
└── requirements.txt
```

## Tools
Python, Pandas, NumPy, Matplotlib, Seaborn, SQL, SQLite, Power BI.

## Important
This repository is a project scaffold. Results should be generated from the
actual public dataset rather than fabricated. Run the notebooks after adding
the dataset, then replace placeholders in the business report with computed
results.
