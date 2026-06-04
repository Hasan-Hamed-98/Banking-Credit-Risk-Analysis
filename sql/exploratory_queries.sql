-- Credit Risk Analysis
-- Exploratory Data Analysis EDA

-- Sections: 
-- Overall Risk Rate
-- Are risky customers borrowing more?
-- Which Loan Purposes Are Riskiest?
-- Does Employment Affect Risk?
-- Which Age Groups Are Riskiest?

SELECT *
FROM loans;

-- ----------------------------------------------------------------------


-- Overall Risk Rate

SELECT 
    target,
    COUNT(*) AS customers,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM loans
GROUP BY target;

-- 70% of customers are labeled good
-- 30% of customers are labeled bad

-- ----------------------------------------------------------------------


-- Average Loan Amount by Risk
-- Are risky customers borrowing more?

SELECT
    target,
    ROUND(AVG(credit_amount), 0) AS avg_loan_amount
FROM loans
GROUP BY target;

-- Average Loan Amount by good customers is 2985$
-- Average Loan Amount by bad customers is 3938$

-- ----------------------------------------------------------------------


-- Which Loan Purposes Are Riskiest?

SELECT 
	purpose,
    target,
    total_customers, 
    ROUND(100 * total_customers / SUM(total_customers) 
		OVER(partition by purpose), 2) 
			AS percentage
FROM (
SELECT
    purpose,
    target,
    COUNT(*) AS total_customers
FROM loans
GROUP BY purpose, target
ORDER BY purpose
) loan_purposes
ORDER BY target, percentage DESC;

-- education, others, car(new), are the riskiest purpose
-- with the highest percentages of bad customers
-- 44%, 41%, 38% respectevley

-- ----------------------------------------------------------------------


-- Does Employment Affect Risk?

SELECT 
	years_employment,
    target,
    total_customers, 
    ROUND(100 * total_customers / SUM(total_customers) 
		OVER(partition by years_employment), 2) 
			AS percentage
FROM (
SELECT
    years_employment,
    target,
    COUNT(*) AS total_customers
FROM loans
GROUP BY years_employment, target
ORDER BY years_employment
) employment_risk
ORDER BY target, percentage DESC;

-- loans to customers with less employment years 
-- have higher percentages of bad customers

-- ----------------------------------------------------------------------


-- Age vs Risk

SELECT 
	age_group,
    target,
    total_customers, 
    ROUND(100 * total_customers / SUM(total_customers) 
		OVER(partition by age_group), 2) 
			AS percentage
FROM (
SELECT
    CASE
        WHEN age < 25 THEN '18-24'
        WHEN age BETWEEN 25 AND 34 THEN '25-34'
        WHEN age BETWEEN 35 AND 49 THEN '35-49'
        ELSE '50+'
    END AS age_group,
    target,
    COUNT(*) AS total_customers
FROM loans
GROUP BY age_group, target
ORDER BY age_group
) age_group_table
ORDER BY target, percentage DESC;

-- 18-24 and 25-34 are the 2 highest risk age groups 




