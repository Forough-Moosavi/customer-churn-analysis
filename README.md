# Customer Churn Analysis – SQL + Python + ML + Power BI

This end-to-end project solves a real **business problem**:  
**Predict customer churn, segment customers by risk, and visualize insights for management.**

The project combines:

- **SQL** → Data extraction & feature engineering  
- **Python (ML)** → Logistic Regression model + Churn Probability  
- **Data Cleaning Pipeline**  
- **Power BI** → Final dashboard  
- **GitHub-ready structure**

---

## 🧩 Business Problem

A telecom company wants to:

1. Identify **which customers are likely to churn**  
2. Understand **churn behavior across segments**  
3. Build a **dashboard** for business decisions  
4. Provide **actionable insights** (e.g., risky customers, contract issues)

You deliver the full pipeline from raw data → SQL → ML → Dashboard.

---

## 📁 Project Structure

📦 Customer-Churn-Analysis
│
├── 📁 data  
│   ├── churn.db  
│   ├── churn_customers_raw.csv  
│   └── churn_scores.csv  
│
├── 📁 sql  
│   ├── VIEW_customer_features.sql  
│   ├── Total_customers.sql  
│   ├── Rate_customers_churn.sql  
│   ├── Churn Rate by ContractType.sql  
│   ├── Churn Rate by PaymentMethod.sql  
│   └── churn_customers.sql  
│
├── 📁 powerbi  
│   └── Customer Churn Analysis.pbix  
│
├── churn.ipynb  
├── churn.ipynb - Colab.pdf  
├── dashboard.png  
└── README.md  

---

## 🗄️ 1. SQL – Data Preparation

All SQL queries are inside `/sql` folder.

### ✔ Create view for model input

```sql
CREATE VIEW customer_features AS
SELECT
    CustomerID,
    Gender,
    Age,
    TenureMonths,
    PaymentMethod,
    ContractType,
    MonthlyCharges,
    TotalCharges,
    ChurnFlag
FROM customers;
```

---

## 🧼 2. Python – Data Cleaning Pipeline

Cleaning steps:

- Remove missing values  
- Convert TotalCharges & MonthlyCharges to float  
- Fix ChurnFlag to integer  
- Handle outliers  
- One-hot encoding for categories  
- Scaling numerical columns  
- Train/test split  
- Export churn scores

Output saved to:

```
data/churn_scores.csv
```

---

## 🤖 3. Machine Learning Model

- Logistic Regression  
- Churn Probability for each customer  
- Risk Segments:
  - Low Risk  
  - Medium Risk  
  - High Risk  

---

## 📊 4. Power BI Dashboard

File: `powerbi/Customer Churn Analysis.pbix`

Includes:

- 4 KPI Cards  
- Churn by Contract Type  
- Customers by Risk Segment  
- Interactive slicers  
- Customer score table  

---

## 🖼 Dashboard Preview

![Dashboard](dashboard.png)

---

## 🔍 5. Key Insights

- Month-to-month contract → highest churn  
- Two-year contracts → lowest churn  
- Most customers = medium risk  
- Tenure strongly affects churn probability  

---

## ▶️ 6. How to Run

### SQL  
Use DB Browser for SQLite → open `churn.db`.

### Python  
Run `churn.ipynb` in Colab or VS Code.

### Power BI  
Open file in `powerbi` folder.

---

## 🙌 Final Notes

This project demonstrates:

- SQL  
- Python ML  
- Data Cleaning  
- Power BI  
- Business Insights  
- Professional GitHub structure

Perfect for Data Analyst, BI Analyst, and Junior Data Scientist roles.
