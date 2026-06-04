# 💳 Credit Risk Analysis & Default Prediction

## 📌 Project Overview

This project analyzes customer credit data to identify factors associated with loan default risk and develop a framework for borrower risk assessment.

Using SQL, Python, Power BI, and Machine Learning, the project explores customer financial profiles, engineers risk-based features, builds a custom credit risk scoring system, and develops a predictive model capable of identifying high-risk borrowers.

The goal is to simulate a real-world banking or FinTech analytics workflow, helping financial institutions make more informed lending decisions and reduce default-related losses.

---

## 🎯 Business Problem

Financial institutions face a critical challenge:

> How can we identify borrowers who are most likely to default before approving a loan?

Poor lending decisions can lead to significant financial losses, while overly restrictive lending policies may reduce growth opportunities.

This project aims to:

* Understand the characteristics of high-risk borrowers
* Identify key drivers of credit risk
* Segment customers based on risk level
* Build a predictive model for default classification
* Provide actionable business recommendations

---

## 🛠️ Tools & Technologies

### Data Analysis

* Python
* Pandas
* NumPy

### Data Visualization

* Matplotlib
* Seaborn
* Power BI

### Database & Querying

* MySQL
* SQL

### Machine Learning

* Scikit-learn
* Logistic Regression

---

## 📂 Project Structure

```text
credit-risk-analysis/
│
├── data/
│   ├── raw/
│   └── cleaned/
│
├── sql/
│   ├── exploratory_queries.sql
│   └── business_questions.sql
│
├── notebooks/
│   ├── 01_data_cleaning.ipynb
│   ├── 02_eda_and_risk_scoring.ipynb
│   └── 03_modeling.ipynb
│
├── dashboard/
│   └── credit_risk_dashboard.pbix
│
├── images/
│   └── dashboard_screenshots/
│
├── README.md
│
└── requirements.txt
```

---

## 🔄 Project Workflow

### 1. Data Cleaning & Preparation

* Inspected data quality
* Checked missing values
* Removed duplicates
* Standardized column names
* Created analytical features

### Engineered Features

* Age Group
* Loan Size Category
* Employment Risk Flag
* Risk Score
* Risk Level

---

### 2. Exploratory Data Analysis (EDA)

Performed extensive analysis to identify relationships between customer characteristics and credit risk.

Areas explored:

* Credit risk distribution
* Loan amount analysis
* Age analysis
* Employment stability
* Savings behavior
* Loan purpose risk
* Correlation analysis

---

### 3. Credit Risk Scoring System

A custom risk scoring framework was developed to simulate underwriting logic used in financial institutions.

Risk points were assigned based on:

* Credit history
* Savings status
* Employment duration
* Loan duration
* Loan amount
* Age

Customers were segmented into:

| Risk Level  | Description                    |
| ----------- | ------------------------------ |
| Low Risk    | Lower likelihood of default    |
| Medium Risk | Moderate likelihood of default |
| High Risk   | Elevated likelihood of default |

### Validation Results

| Risk Level  | Bad Credit Rate |
| ----------- | --------------- |
| Low Risk    | 13.8%           |
| Medium Risk | 29.3%           |
| High Risk   | 53.8%           |

The scoring system successfully differentiated borrower risk profiles and aligned closely with actual credit outcomes.

---

### 4. Interactive Power BI Dashboard

An executive-style dashboard was developed to monitor portfolio performance and borrower risk.

Dashboard Pages:

#### 🏦 Executive Overview

* Total customers
* Bad credit rate
* Average loan amount
* Average risk score
* Risk distribution

#### 👤 Customer Risk Analysis

* Age group risk
* Employment risk
* Savings status risk
* Credit history risk

#### 💳 Loan Portfolio Analysis

* Loan purpose analysis
* Loan amount analysis
* Loan duration analysis
* Portfolio segmentation

---

### 5. Predictive Modeling

A Logistic Regression model was trained to predict whether a borrower would be classified as a good or bad credit risk.

Model workflow:

* Feature selection
* One-hot encoding
* Train-test split
* Logistic Regression training
* Model evaluation
* Feature importance analysis

---

## 🔍 Key Findings

### Employment Stability Matters

Borrowers with less than one year of employment and unemployed individuals showed significantly higher default risk.

---

### Savings Behavior Is a Strong Indicator

Customers with savings below 100 DM were substantially more likely to be classified as bad credit risks.

---

### Credit History Remains Critical

Past repayment behavior was one of the strongest predictors of future credit performance.

---

### Education and New-Car Loans Showed Elevated Risk

The predictive model identified education-related loans and new-car financing as among the strongest positive predictors of bad credit outcomes.

---

### Borrower Characteristics Outperformed Loan Size

Contrary to common assumptions, loan amount itself showed limited predictive power compared to factors such as employment stability, savings behavior, and credit history.

---

## 📊 Business Recommendations

### Recommendation 1

Implement enhanced review procedures for applicants with:

* Limited savings
* Short employment history
* High-risk credit histories

---

### Recommendation 2

Use risk-based lending policies to align approval criteria with borrower risk profiles.

---

### Recommendation 3

Monitor higher-risk loan categories more closely, particularly education and new-car financing segments.

---

### Recommendation 4

Incorporate behavioral and financial stability indicators into future credit scoring frameworks.

---

## 📈 Skills Demonstrated

### Analytics

* Exploratory Data Analysis (EDA)
* Business Insight Generation
* Risk Segmentation
* KPI Development

### SQL

* Data Exploration
* Aggregations
* Grouping & Filtering
* Business Question Analysis

### Python

* Data Cleaning
* Feature Engineering
* Statistical Analysis
* Visualization

### Power BI

* Dashboard Development
* Interactive Filtering
* Executive Reporting

### Machine Learning

* Logistic Regression
* Feature Importance Analysis
* Classification Evaluation

---

## 👤 Author

Hasan Hamed

Aspiring Data Analyst with a background in Mathematics, focusing on Data Analytics, Risk Analytics, FinTech, and Banking applications.
