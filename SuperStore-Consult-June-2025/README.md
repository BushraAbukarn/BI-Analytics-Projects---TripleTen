# ✨SuperStore Sales Analysis
## 🎯 Business Objectives: 
1.	Seasonal Sales Performance Analysis
2.	Customer Shipping Method Preferences
3.	Top Performing Products and Categories by Profitability
4.	Low-Performing Products and Sub-Categories by Profitability 
5.	Revenue Analysis by State
6.	Top 5 highest-selling products in the region with the highest revenue
7.	Profit Contribution by Customer Segment

---
## 📊 Dataset Description
- `Row ID`: Unique identifier for each row of data
- `Order ID`: Unique identifier for each order 
- `Order Date`: The date the order was placed 
- `Ship Date`: The date the order was shipped 
- `Ship Mode`: Method of shipment (e.g., Standard Class, First Class) 
- `Customer ID`: Unique identifier for the customer 
- `Customer Name`: Full name of the customer 
- `Segment`: Type of customer  
- `Country/Region`: Country or region where the order was placed 
- `City`: City of the customer 
- `State`: State of the customer 
- `Postal Code`: Postal/ZIP code 
- `Region`: Geographical region (e.g., East, West) 
- `Product ID`: Unique identifier for each product 
- `Category`: Main category of the product (e.g., Furniture, Technology) 
- `Sub-Category`: Sub-category of the product (e.g., Chairs, Phones) 
- `Product Name`: Name or description of the product 
- `Sales`: Revenue generated from the sale 
- `Quantity`: Number of units sold 
- `Discount`: Discount applied to the sale (in decimal form, e.g., 0.2 for 20%)
- `Profit`: Profit earned from the sale
 
---
## 🧪 Methodology

- **Database Setup:**  
  Connected to the `sales_data` database and renamed the imported raw data table to `order_info` for clarity.

- **Data Cleaning:**  
  - Converted `Order_Date` and `Ship_Date` columns to proper `DATE` format.  
  - Deleted records with missing order dates to ensure data integrity.  
  - Identified and removed duplicate records based on `Product_ID` and `Order_ID` using window functions and CTEs.

- **Data Transformation:**  
  Created a summary table `sales_by_season` categorizing sales and profit by year and season (Winter, Spring, Summer, Fall) for seasonal trend analysis.

- **Descriptive Analytics:**  
  - Analyzed shipment modes by counting total shipments per mode.  
  - Calculated average sales and profits by product category.  
  - Identified top 10 products by total profit and products with the lowest profits.  
  - Calculated profit margins by sub-category to evaluate product profitability.

- **Data Integration:**  
  Merged `customer_data` and `order_info` tables into `sales_summary` to combine customer segments with sales data.

- **Further Analysis on Combined Data:**  
  - Computed average sales and profit by state.  
  - Summarized total profits by region and customer segment.  
  - Identified best-selling products in the East region.  
  - Ranked sub-categories by total profit.

- **Data Visualization**
- Exported the cleaned and aggregated data from SQL into **Power BI**.  
- Created interactive dashboards and visual summaries to explore key business metrics, including:  
  - Sales and profit trends over time and by season  
  - Performance comparison across regions, states, and customer segments  
  - Product category and sub-category profitability  
  - Shipping mode usage and delivery performance  
- Used a variety of charts (bar charts, line graphs, heat maps, and pie charts) to highlight patterns and support decision-making.  


--- 

## 🔍 Key Findings
-	Between 2019 and 2022, the Superstore generated $2.29 million in revenue but only $283.35 thousand in profit, highlighting a significant gap between sales and profitability, particularly during peak sales periods. While sales show a consistent upward trend, the relatively slow growth in profits might be concerning.
-	The majority of the customers preferred Standard Class shipping, suggesting that they prioritize cost saving over expedited delivery.
-	Out of the three categories, Technology and Office Supplies bring the most profits. Furnitures bring lower compared to the other two categories.
-	Among the segments, Consumers bring the highest profit, followed by Corporate, with Home Office contributing the least.
-	Over the four-year period, the Fall season was the most profitable season among the rest, indicating that Back-to-school, and Black Friday events have a significant influence on the profit.
-	The West region generates the highest sales, followed by the East. In the Eastern region, New York leads as the top sales-contributing state. Besides, the difference in sales between the West Region and the South Region is notable. 
-	Among the 17 sub-categories, Copiers, Phones, and Accessories generate the highest profits. Despite strong sales, Tables incur a $18,000 loss.
-	The combined profit from the Canon image Class 2200 Advanced Copier and the Fellowes PB500 Electric Punch Plastic Comb Binding Machine accounts for more than 10% of the total profit.  
-	The Cubify CubeX 3D Printer Double Head Print, Lexmark MX611dhe Monochrome Laser Printer, and Cubify CubeX 3D Printer Triple Head Print show significantly high losses, indicating issues within the Machines sub-category.

---

## 💡 Recommendations
 
1. Focus on Profitability: Superstore should prioritize improving profitability by implementing cost control measures and reevaluating its pricing strategy for Tables and Machines. While these categories experience high sales, their profit margins are either low or negative.

2. Customer Feedback for Improvement: Despite robust sales in the Machines sub-category, profitability remains significantly low. Collecting customer feedback on these products will help identify areas for enhancement, allowing the business to make informed decisions for future improvements.

3. Streamline Product Offerings: To boost production efficiency, Superstore should consider eliminating underperforming products such as Labels, Fasteners, and Supplies, which currently exhibit below-average sales and profits.

4. Seasonal Promotions: Superstore should implement attractive seasonal discounts for key occasions, including Spring Break, Christmas, and Summer Vacation. These seasons typically experience lower profits compared to Fall, and targeted promotions can help draw in more customers.

---

## 📊 Dashboards

<img width="1427" height="799" alt="image" src="https://github.com/user-attachments/assets/dad48732-c0c7-4da6-a668-0d7e93596957" />

<img width="1426" height="797" alt="image" src="https://github.com/user-attachments/assets/ae341c56-dc90-4314-a100-cb91161aa89e" />

<img width="1426" height="801" alt="image" src="https://github.com/user-attachments/assets/f0d3390c-063b-46fa-85c9-e75da5e73524" />

