# 🍔 Zomato Food Delivery Analysis — Python, SQL & Power BI

## 📌 Project Overview

This project analyzes a Zomato food delivery dataset containing **45,584 food delivery orders and 20 attributes** to identify patterns in delivery performance, customer ordering behavior, traffic conditions, weather impact, delivery partner performance, and order trends.

The project follows an end-to-end data analytics workflow:

**Data Cleaning → Exploratory Data Analysis → Feature Engineering → SQL Analysis → Power BI Dashboard → Business Insights**

The objective is to transform raw food delivery data into actionable insights that can help understand the major factors affecting delivery time and operational performance.

---

## 🎯 Business Problem

Food delivery platforms need to understand the factors that influence delivery time and operational efficiency.

This project focuses on answering questions such as:

- How does traffic density affect delivery time?
- Does weather influence delivery performance?
- Which vehicle types provide faster deliveries?
- Which cities have higher delivery times?
- How do delivery times vary by month and day?
- What is the relationship between delivery partner ratings and delivery time?
- Does handling multiple deliveries increase delivery time?
- Which delivery partners perform better?
- How do order patterns change over time?
- Which delivery periods have the highest order volume?

---

## 📊 Dataset Information

The dataset contains **45,584 records and 20 columns**.

### Dataset Columns

| Column | Description |
|---|---|
| `ID` | Unique order identifier |
| `Delivery_person_ID` | Unique delivery partner identifier |
| `Delivery_person_Age` | Age of the delivery partner |
| `Delivery_person_Ratings` | Customer rating received by the delivery partner |
| `Restaurant_latitude` | Restaurant latitude |
| `Restaurant_longitude` | Restaurant longitude |
| `Delivery_location_latitude` | Customer delivery latitude |
| `Delivery_location_longitude` | Customer delivery longitude |
| `Order_Date` | Date on which the order was placed |
| `Time_Orderd` | Time at which the order was placed |
| `Time_Order_picked` | Time at which the order was picked up |
| `Weather_conditions` | Weather conditions during delivery |
| `Road_traffic_density` | Traffic level during delivery |
| `Vehicle_condition` | Condition indicator of the delivery vehicle |
| `Type_of_order` | Type/category of food order |
| `Type_of_vehicle` | Vehicle used for delivery |
| `multiple_deliveries` | Number of multiple deliveries handled |
| `Festival` | Indicates whether the order occurred during a festival |
| `City` | City category |
| `Time_taken (min)` | Total delivery time in minutes |

---

# 🛠️ Technologies Used

### Programming & Data Analysis
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn

### Database
- SQL
- MySQL / PostgreSQL

### Business Intelligence
- Microsoft Power BI
- DAX
- Power Query

### Development Environment
- Jupyter Notebook
- GitHub

---

# 📁 Project Structure

```text
Zomato-Food-Delivery-Analysis/
│
├── data/
│   ├── Zomato Dataset.csv
│   └── Zomato_Cleaned_Dataset.csv
│
├── notebooks/
│   ├── Zomato_Data_Cleaning.ipynb
│   └── Zomato_EDA.ipynb
│
├── sql/
│   └── Zomato_Analysis.sql
│
├── powerbi/
│   └── Zomato_Food_Delivery_Analysis.pbix
│
├── images/
│   ├── executive_overview.png
│   ├── delivery_performance.png
│   └── delivery_partner_analysis.png
│
└── README.md
