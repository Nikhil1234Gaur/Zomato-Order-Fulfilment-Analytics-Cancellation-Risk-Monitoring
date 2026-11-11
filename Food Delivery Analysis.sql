/* Zomato Food Delivery Analysis */
create database food_delivery;
select count(* )from df_clean;

-- Overall Average Delivery Time
SELECT 
    ROUND(AVG(Time_taken_min), 2) AS avg_delivery_time
FROM df_clean; -- 26.41

-- City-wise Delivery Performance
SELECT 
    City,
    COUNT(*) AS total_orders,
    ROUND(AVG(Time_taken_min), 2) AS avg_delivery_time
FROM df_clean
GROUP BY City
ORDER BY avg_delivery_time DESC;

-- Traffic Impact 
SELECT 
    Road_traffic_density,
    COUNT(*) AS total_orders,
    ROUND(AVG(Time_taken_min), 2) AS avg_delivery_time
FROM df_clean
GROUP BY Road_traffic_density
ORDER BY avg_delivery_time DESC;

-- Best Delivery Partners
SELECT 
    Delivery_person_ID,
    ROUND(AVG(Delivery_person_Ratings), 2) AS avg_rating,
    ROUND(AVG(Time_taken_min), 2) AS avg_delivery_time
FROM df_clean
GROUP BY Delivery_person_ID
ORDER BY avg_delivery_time ASC
LIMIT 10;

-- Weather Impact
SELECT 
    Weather_conditions,
    COUNT(*) AS total_orders,
    ROUND(AVG(Time_taken_min), 2) AS avg_delivery_time
FROM df_clean
GROUP BY Weather_conditions
ORDER BY avg_delivery_time DESC;

-- Orders by Year
SELECT 
    Year,
    COUNT(*) AS Total_Orders
FROM df_clean
GROUP BY Year
ORDER BY Year;

-- Orders by Month
SELECT 
    Month,
    Month_Name,
    COUNT(*) AS Total_Orders
FROM df_clean
GROUP BY Month, Month_Name
ORDER BY Month;

-- Average Delivery Time by Month
SELECT 
    Month,
    Month_Name,
    ROUND(AVG(`Time_taken_min`), 2) AS Avg_Delivery_Time
FROM df_clean
GROUP BY Month, Month_Name
ORDER BY Month;

-- Total Orders by Day of the Month
SELECT 
    Day, month_name ,
    COUNT(*) AS Total_Orders
FROM df_clean
GROUP BY Day, month_name
ORDER BY Day;

-- Average Delivery Time by Day
SELECT 
    Day,
    ROUND(AVG(`Time_taken_min`), 2) AS Avg_Delivery_Time
FROM df_clean
GROUP BY Day
ORDER BY Day;

-- Monthly Delivery Performance
SELECT 
    Month,
    Month_Name,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(`Time_taken_min`), 2) AS Avg_Delivery_Time
FROM df_clean
GROUP BY Month, Month_Name
ORDER BY Month;

-- Year-Month wise Analysis
SELECT 
    Year,
    Month,
    Month_Name,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(`Time_taken_min`), 2) AS Avg_Delivery_Time
FROM df_clean
GROUP BY Year, Month, Month_Name
ORDER BY Year, Month;

-- Month wise Analysis by Traffic Density
SELECT 
    Month_Name,
    Road_traffic_density,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(`Time_taken_min`), 2) AS Avg_Delivery_Time
FROM df_clean
GROUP BY Month, Month_Name, Road_traffic_density
ORDER BY Month, Avg_Delivery_Time DESC;

-- Month-wise Analysis by Weather
SELECT 
    Month_Name,
    Weather_conditions,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(`Time_taken_min`), 2) AS Avg_Delivery_Time
FROM df_clean
GROUP BY Month, Month_Name, Weather_conditions
ORDER BY Month, Avg_Delivery_Time DESC;

-- Monthly Festival Analysis
SELECT 
    Month_Name,
    Festival,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(`Time_taken_min`), 2) AS Avg_Delivery_Time
FROM df_clean
GROUP BY Month, Month_Name, Festival
ORDER BY Month;

-- Best month - lowest average delivery time 
SELECT 
    Month_Name,
    ROUND(AVG(`Time_taken_min`), 2) AS Avg_Delivery_Time
FROM df_clean
GROUP BY Month, Month_Name
ORDER BY Avg_Delivery_Time ASC
LIMIT 1;

-- Worst month - highest average delivery time 
SELECT 
    Month_Name,
    ROUND(AVG(`Time_taken_min`), 2) AS Avg_Delivery_Time
FROM df_clean
GROUP BY Month, Month_Name
ORDER BY Avg_Delivery_Time DESC
LIMIT 1;

-- Creating a date table 
create table Date_ as (select order_date, year, month,month_name, day 
from df_clean);

