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
## 🔍 Key Findings
### Analysis for the first dashboard 
1. The first chart shows that the Technology category has the highest return rate compared to other product categories. 
2. The second chart highlights a positive correlation between total sales and total returns in sub-categories such as Phones and Labels, as sales increase for Phones, returns also rise; likewise, lower sales for Labels correspond with fewer returns. 
3. The third chart reveals that Utah, California, and Oregon have the highest return rates across the United States, signaling possible regional issues such as shipping challenges or population-driven volume effects. 

### Analysis for the second dashboard 
1. The first chart shows both Roland Murray and Hilary Holden exhibit a return rate of 100%, indicating that every item they purchase is returned. 
2. The second chart reveals that the Western region has the highest return rate, particularly in the Office Supplies category. The Eastern region follows with a high return rate in the Technology category. In contrast, the Central region maintains the lowest return rates across all product categories, indicating more stable purchasing behavior. 
3. The third chart indicates that the return rates tend to increase during the fall season from 2018 to 2021. This trend may be associated with back-to-school season, where higher purchase volumes of school supplies could lead to more returns.

## 💡 Recommendations
1. Flag customers with consistently high return rates for follow-up, as they may require personalized support or policy review. 
2. Investigate product quality and customer expectations in the Western and Eastern regions. 
3. Prepare for higher return volume in the fall by improving product descriptions. 
4. Evaluate product quality and customer experience within high-return segments.
## 📈 Dashboards 
<img width="1092" height="838" alt="image" src="https://github.com/user-attachments/assets/79147d31-b83b-4470-869a-79338591b182" />

<img width="1071" height="814" alt="image" src="https://github.com/user-attachments/assets/9b57be8f-ba5a-42dc-95eb-5a2dceaa26e3" />
