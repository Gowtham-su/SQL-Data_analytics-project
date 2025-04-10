# sql-data-analysis-project
# Overview
SQL scripts for data exploration, analytics, and reporting. These scripts cover various analyses such as **database exploration**, **measures and metrics**, **time-based trends**, **cumulative analytics**, **segmentation**.

# DataStructure Overview
   ![Data_Structure](https://github.com/user-attachments/assets/9cf621f2-dfa3-4f40-9b30-de48192ed4d9)
  ## Exploring Database Columns
   ![Exploring_Database_Columns](https://github.com/user-attachments/assets/6108e3d3-a71a-4833-a8dc-5997e636caab)
  ## Exploring Database Tables
  ![Exploring_Database_Tables](https://github.com/user-attachments/assets/f1d81e3d-6720-4b0c-8d69-e081850b4169)
# EXPLORATORY DATA ANALYSIS(EDA)
Data starting and ending date 2010-2014
Here I am Finding EDA From the given dataset,
I Analysed Five Important Exploration For Data Analysis that is:
Dimension Exploration,
Date Exploration,
Measure Exploration,
Magnitude Exploration,
Rank Exploration

#	Dimensions Exploration
  Identifying the unique values(or categories) in each dimension. 
  This will help us to understand recognizing how data might be grouped or segmented. 
  which is useful for later analysis. 
  eg: DISTINCT[Dimension], 
  DISTINCT[country],
  DISTINCT[category],
  DISTINCT[product]
## Finding Youngest and Oldest Customers
  ![Date_Exploration_youngestandoldest_customers](https://github.com/user-attachments/assets/cc2e3c3e-c847-4e7c-8380-58c83e876f78)
## Distinct Countries
![Dimension exploration_distinct products_01](https://github.com/user-attachments/assets/f9fbd98c-2ecc-44ec-94d2-d9dfff61402b)
## Distinct Categories
![Dimension exploration_distinct products_01](https://github.com/user-attachments/assets/2aea6f48-f3fd-4a60-b9c8-b72c63bd3040)
## Distinct Products
![Dimension exploration_distinct products_02](https://github.com/user-attachments/assets/1c70ea8f-3246-487a-98a0-6b46ab9ce4b3)
## Range Of Years
![Date_Exploration_range_of_years](https://github.com/user-attachments/assets/948a9627-5d3c-4a18-af9c-1b27d7b2d63d)

#	Date Exploration
  Identify the earliest and latest dates(boundries). 
  Understand the scope of he data and the timespan. 
  In order to get earliest and latest date MIN / MAX functions is very useful
  ## Finding Oldest & youngest Customers With Age
  ![Date_Exploration_full_customer with age](https://github.com/user-attachments/assets/e3097f4c-041f-4b5a-add9-e1416ed72833)
  ## Oldest Date
  ![Date_Exploration_full_earliest_date](https://github.com/user-attachments/assets/79e7dec9-dda3-479b-a36c-b591c2a23787)
  ## Latest Date
  ![Date_Exploration_full_latest_date](https://github.com/user-attachments/assets/04272924-b31c-4591-bb8d-1d09cf8bf40e)
  ## Month Range
  ![Date_Exploration_range_of_months](https://github.com/user-attachments/assets/47a549ff-8c26-4979-b645-18f2ca239d6b)
  ## Year Range
  ![Date_Exploration_range_of_years](https://github.com/user-attachments/assets/aaa9f46d-fc41-4d9f-9fbf-8b9fbe48a84c)
  ## Youngest and Oldest Birthdate
  ![Date_Exploration_youngestandoldest_customers](https://github.com/user-attachments/assets/003f6d15-fac6-48c0-b695-769833b8218e)

# Measure Exploration (Big Numbers)
  Calculate the key matrics of the business(Big Numbers).
  -Highest level of aggregation
  -Lowest level if details
  using  SUM,AVG,COUNT functions
  ## Overall Measure Exploration
  ![Measure_exploration](https://github.com/user-attachments/assets/2bc90184-a584-4487-9c3c-2d13183d73c4)
  ## Measure Average Price 
  ![Measure_exploration_average_price](https://github.com/user-attachments/assets/cb089d0d-cf9a-4a3d-8b9a-07f4e31e5af7)
  ## Total Number of Customers
  ![Measure_exploration_total_customers](https://github.com/user-attachments/assets/a93767de-68fc-4cbe-865e-e9cc0cff3ff8)
  ## Total Orders
  ![Measure_exploration_total_orders](https://github.com/user-attachments/assets/d5d7a3a5-fc1c-4e91-b6ac-60a04d6a10b9)
  ## Total Products
  ![Measure_exploration_total_products](https://github.com/user-attachments/assets/63cbea31-17e6-4ada-9eef-ac2dcde35dfc)
  ## Total Quantity
  ![Measure_exploration_total_qantity](https://github.com/user-attachments/assets/b556077f-460f-43ee-b6db-a87690ae66df)
  ## Total Sales
  ![Measure_exploration_total_sales](https://github.com/user-attachments/assets/f1bd61b1-e3a2-4061-9835-113dd76abb8c)

#	Magnitude
  Compare the measure values by categories. 
  It help us to understand the importance of different categories.
  ## Total Customers by Country
  ![magnitude_exploration_customers_by_country](https://github.com/user-attachments/assets/69be485f-fe07-462f-ba1c-ab6500f215e8)
  ## Customers by Gender
  ![magnitude_exploration_customers_by_gender](https://github.com/user-attachments/assets/1e0046f5-0ae4-4bbb-80b7-6d4883747db5)
  ## Distribution of sold items across Countries
  ![Magnitude_sold_items_across_countries](https://github.com/user-attachments/assets/2091c951-5fc9-494d-935d-db17e1226c13)
  ## Average Cost in each Category
  ![Magnitude_total_average_cost_category](https://github.com/user-attachments/assets/4f799308-7284-428e-911f-8408c37d9a78)
  ## Total Products by Category
  ![Magnitude_total_Products_by_category](https://github.com/user-attachments/assets/feb56920-9e33-4e1f-a01c-a9f199f2b3be)
  ## Revenue Generated by each Category
  ![Magnitude_total_revenue_category](https://github.com/user-attachments/assets/95845277-bbc8-4792-bba3-80fdf38159cb)

#	Ranking (TOPN - BottomN) Analysis
  Order the values of dimensions by measures. 
  The Top N Performers and Bottom N Performers
  ## Top Products
  ![Rank_top_5_products](https://github.com/user-attachments/assets/4fa65db5-161d-4fdc-9d32-f170234d62f2)
  ## Worst Performing Products
  ![Rank_top_Worst performing_products](https://github.com/user-attachments/assets/e4250d43-0fb8-4d3f-b31c-de70ce4f8bf7)
This are my exploration using SQL queries and i believe it will answer some important business questions
Thank you!.....
---

## 🌟 About Me

Hi there! I'm **Gowtham Subramanian**, I’m an IT professional and passionate **Data Analyst** on a mission to share knowledge and make working with data enjoyable and engaging!

Let's stay in touch! Feel free to connect with me on the following platforms:
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/gowtham-su)




