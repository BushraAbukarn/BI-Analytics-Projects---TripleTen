## ✨# E-commerce Conversion & Retention Analysis
[View Google Sheet](https://docs.google.com/spreadsheets/d/1CKlvxyl5aS4Dsx1KHylFeEcdlUktrAPrUdZDe0GHd8Y/edit?gid=868644233#gid=868644233)


## 📊 Data Description

The dataset captures user behavior on an e-commerce platform. It includes the following fields:

- `user_id`; Unique customer identifier                                   
- `event_type`; Type of user activity (e.g., view, cart, purchase)
- `category_code`; Product category associated with the user activity 
- `brand`; Brand or company of the product   
- `price`; Price of the product in USD                
- `event_date`; Date of the activity in `YYYY-MM-DD` format             

---

## 🎯 Project Purpose

The goal of this project is to extract actionable insights into user behavior through:

- **Conversion Funnel Analysis**: To assess how effectively users move from viewing products to making purchases.
- **Cohort Retention Analysis**: To understand how customer retention changes over time by grouping users based on their first purchase month.

These insights help the business improve user engagement, optimize conversion paths, and develop targeted retention strategies.

---

## ⚙️ Methodology

### Part 1: Conversion Funnel

- Created a pivot table named `conversion_funnel` using the `raw_user_activity` data.
- Defined three funnel stages:
  1. Product Page View
  2. Add to Cart
  3. Purchase
- Counted **unique users** at each stage.
- Added two calculated columns:
  - **Total Conversion Rate** = Final Purchases / Initial Page Views
  - **Conversion to Next Step** = Next Step / Previous Step

---

### Part 2: Cohort Data Preparation

#### 🛍️ Filter Purchase Data
- Created a new sheet `purchase_activity`.
- Filtered `raw_user_activity` to include only purchase events (should be 4,845 rows).
- Copied and pasted filtered data into `purchase_activity`.

#### 📅 First Purchase Date
- Created pivot table `first_purchase` to get **min(`event_date`)** for each `user_id`.
- Used `VLOOKUP()` to add `first_purchase_date` column in `purchase_activity`.

#### 📆 Monthly Columns
Added three new columns in `purchase_activity`:
| Column Name           | Description                                                   |
|------------------------|---------------------------------------------------------------|
| `event_month`          | Month of purchase, formatted as `YYYY-MM`                    |
| `first_purchase_month` | Month of user’s first purchase, formatted as `YYYY-MM`       |
| `cohort_age`           | Age of cohort in months = `DATEDIF(first_purchase_month, event_month, "m")` |

---

### Part 3: Cohort Retention Analysis

#### 👥 Build Cohort Table
- Created pivot table `cohort_analysis`:
  - Rows = `first_purchase_month` (cohorts)
  - Columns = `cohort_age` (0–4 months)
  - Values = Count of **unique users**

#### 📈 Calculate Retention Rates
- Created a new sheet `retention_rates`.
- Structured a table mirroring `cohort_analysis` but excluded month 0.
- Used the formula: Retention Rate = Users at Age n / Users at Age 0

## 🔍 Key Findings
- The data reveals a strong conversion from shopping cart to purchase at **35.61%**, but only **10.34%** of users who viewed a product completed a purchase. 
- Customer retention tends to **decrease** over time, with the highest retention in the first month and clear downward trend by the third and fourth months. 
