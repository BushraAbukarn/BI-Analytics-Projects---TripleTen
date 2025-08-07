# 📦 Superstore Returns Analysis
[View Tableau Story](https://public.tableau.com/app/profile/bushra.abukarn5239/viz/Book2_17505217924420/ReturnRateTrendsDashboard?publish=yes)

## 📌 Purpose
This project aims to uncover the root causes behind the high number of returned orders at the Superstore. Through data analysis and dashboard design, we provide actionable insights to help the CEO understand customer return behaviors and implement strategies to reduce the return volume.

---

## 📊 Data Description

The dataset includes two primary tables:

- **Orders Table**
  - `Order_ID`: Unique order identifier  
  - `Product_Category`, `Sub-Category`: Product classification  
  - `Sales`: Total sales value of the order  
  - `Customer_ID`, `Customer_Name`: Customer information  
  - `Order_Date`: Date of the order  
  - `Region`, `State`, `City`: Geographic location of the order  

- **Returns Table**
  - `Order_ID`: Corresponds to `Order_ID` in the Orders table  
  - `Returned`: Indicates if the order was returned (`Yes`) or not (`null`)  

> The Returns table is left-joined onto the Orders table to ensure all orders are preserved. A new calculated field is created where `Yes = 1` and `null = 0` to represent returns in numeric form.

---

## 🛠️ Methodology

### 1. Data Preparation
- Left-joined `Returns` onto `Orders` using `Order_ID`
- Created a calculated field:
  ```text
  IFNULL([Returned], 0) -> 0 (not returned), 1 (returned)

## 🔍 Key Findings
## 💡 Recommendations
## 📈 Dashboards 
<img width="1092" height="838" alt="image" src="https://github.com/user-attachments/assets/79147d31-b83b-4470-869a-79338591b182" />

<img width="1071" height="814" alt="image" src="https://github.com/user-attachments/assets/9b57be8f-ba5a-42dc-95eb-5a2dceaa26e3" />
