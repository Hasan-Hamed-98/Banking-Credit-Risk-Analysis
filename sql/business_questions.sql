
-- =================================================
-- Credit Risk Analysis - Business Questions
-- =================================================


-- ----------------------------------------------------------------------
-- Question 1: What is the overall bad credit rate?
-- ----------------------------------------------------------------------
SELECT
    ROUND(
        AVG(CASE WHEN target = 'bad' THEN 1 ELSE 0 END) * 100,
        2
    ) AS bad_credit_rate
FROM loans;



-- ----------------------------------------------------------------------
-- Question 2: Which age groups have the highest bad credit rates?
-- ----------------------------------------------------------------------
SELECT
    age_group,
    ROUND(
        AVG(CASE WHEN target = 'bad' THEN 1 ELSE 0 END) * 100,
        2
    ) AS bad_rate
FROM loans
GROUP BY age_group
ORDER BY bad_rate DESC;



-- ----------------------------------------------------------------------
-- Question 3: Which employment groups are riskiest?
-- ----------------------------------------------------------------------
SELECT
    years_employment,
    ROUND(
        AVG(CASE WHEN target = 'bad' THEN 1 ELSE 0 END) * 100,
        2
    ) AS bad_rate
FROM loans
GROUP BY years_employment
ORDER BY bad_rate DESC;



-- ----------------------------------------------------------------------
-- Question 4: How does savings status affect credit risk?
-- ----------------------------------------------------------------------
SELECT
    status_savings,
    ROUND(
        AVG(CASE WHEN target = 'bad' THEN 1 ELSE 0 END) * 100,
        2
    ) AS bad_rate
FROM loans
GROUP BY status_savings
ORDER BY bad_rate DESC;



-- ----------------------------------------------------------------------
-- Question 5: Which loan purposes generate the most bad borrowers?
-- ----------------------------------------------------------------------
SELECT
    purpose,
    ROUND(
        AVG(CASE WHEN target = 'bad' THEN 1 ELSE 0 END) * 100,
        2
    ) AS bad_rate
FROM loans
GROUP BY purpose
ORDER BY bad_rate DESC;



-- ----------------------------------------------------------------------
-- Question 6: Does loan duration influence risk?
-- ----------------------------------------------------------------------
SELECT
    CASE
        WHEN loan_duration_months <= 12 THEN 'Short-Term'
        WHEN loan_duration_months <= 36 THEN 'Medium-Term'
        ELSE 'Long-Term'
    END AS duration_group,
    ROUND(
        AVG(CASE WHEN target = 'bad' THEN 1 ELSE 0 END) * 100,
        2
    ) AS bad_rate
FROM loans
GROUP BY duration_group
ORDER BY bad_rate DESC;



-- ----------------------------------------------------------------------
-- Question 7: What is the average loan amount 
-- for good vs bad borrowers?
-- ----------------------------------------------------------------------
SELECT
    target,
    ROUND(AVG(loan_amount),2) AS avg_loan_amount
FROM loans
GROUP BY target;



-- ----------------------------------------------------------------------
-- Question 8: Which risk level has the highest 
-- concentration of bad borrowers?
-- ----------------------------------------------------------------------
SELECT
    risk_level,
    ROUND(
        AVG(CASE WHEN target = 'bad' THEN 1 ELSE 0 END) * 100,
        2
    ) AS bad_rate
FROM loans
GROUP BY risk_level
ORDER BY bad_rate DESC;



-- ----------------------------------------------------------------------
-- Question 9: Which customer segments should 
-- receive enhanced review?
-- ----------------------------------------------------------------------
SELECT
    years_employment,
    status_savings,
    COUNT(*) AS customers,
    ROUND(
        AVG(CASE WHEN target = 'bad' THEN 1 ELSE 0 END) * 100,
        2
    ) AS bad_rate
FROM loans
GROUP BY
    years_employment,
    status_savings
HAVING COUNT(*) >= 10
ORDER BY bad_rate DESC;



-- ----------------------------------------------------------------------
-- Question 10: What characteristics define high-risk customers?
-- ----------------------------------------------------------------------
SELECT
    risk_level,
    AVG(age) AS avg_age,
    AVG(loan_amount) AS avg_loan_amount,
    AVG(loan_duration_months) AS avg_duration
FROM loans
GROUP BY risk_level;



