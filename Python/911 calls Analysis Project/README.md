# 911 Emergency Calls Analysis

## Project Overview

This project analyzes emergency 911 call data to identify patterns in emergency incidents based on call category, time, and demand trends.

The analysis focuses on understanding emergency service demand patterns and generating insights that can support operational planning and resource allocation.

---

## Business Problem

Emergency response teams need visibility into historical call patterns to improve resource planning.

This analysis aims to answer:

- Which emergency categories generate the highest number of calls?
- When are emergency calls most frequent?
- Are there specific days or time periods with higher demand?
- How can historical trends support emergency resource planning?

---

## Dataset

The dataset contains **99,492 emergency call records** with information including:

- Emergency category
- Location details
- Township
- Zip code
- Timestamp
- Address
- Latitude and Longitude

The raw dataset is not included in this repository.

---

## Tools & Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook

---

## Project Workflow

1. Data Loading
2. Data Exploration
3. Data Cleaning
4. Feature Engineering
   - Extracted hour from timestamp
   - Extracted month information
   - Extracted day of week
   - Created date-based features
5. Exploratory Data Analysis
6. Data Visualization
7. Business Insights

---

## Analysis Performed

### Emergency Category Analysis

Analyzed emergency calls based on service type:

- EMS
- Fire
- Traffic

### Time-Based Analysis

Analyzed emergency call trends across:

- Hours of the day
- Days of the week
- Months
- Daily trends

### Demand Pattern Analysis

Used visualizations to identify:

- Peak emergency periods
- High-demand days and hours
- Changes in emergency call volume over time

---

# Visualizations

## Emergency Calls by Reason

Analyzed the distribution of emergency calls across different service categories.

![Emergency Calls by Reason](images/911%20calls%20by%20Reason.png)

---

## Monthly Emergency Call Trend

Analyzed monthly call volumes to identify changes in emergency demand over time.

![Monthly Call Trend](images/Monthly%20Emergency%20Call%20Trend.png)

---

## Daily Emergency Call Trend

Visualized daily emergency call patterns to identify fluctuations and demand changes.

![Daily Call Trend](images/Daily%20Emergency%20Call%20Trend.png)

---

## Emergency Calls by Day and Hour

Used a heatmap to identify peak emergency call periods by weekday and hour.

![Day Hour Heatmap](images/Day%20vs%20Hour%20Heatmap.png)

---

# Key Insights

- EMS was the most frequent emergency service category.
- Emergency call volumes showed clear hourly and weekday patterns.
- Certain periods experienced higher demand compared to others.
- Historical trends can help improve emergency resource planning.

---

# Business Recommendations

- Allocate additional resources during peak demand hours.
- Use historical trends for workforce and shift planning.
- Monitor high-demand periods to improve response readiness.
- Use data-driven insights for operational decision-making.

---

## Project Structure

```
911-Emergency-Calls-Analysis/
│
├── 911 Emergency Calls Analysis.ipynb
├── images/
│   ├── 911 Calls by Reason.png
│   ├── Monthly Call Trend.png
│   ├── Daily Call Trend.png
│   └── Day vs Hour Heatmap.png
│
├── README.md
└── requirements.txt
```

---

## Skills Demonstrated

- Data Cleaning
- Feature Engineering
- Exploratory Data Analysis
- Time Series Analysis
- Data Visualization
- Business Insight Generation
