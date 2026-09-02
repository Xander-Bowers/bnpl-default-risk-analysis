# BNPL Default Risk Analysis

This project analyzes 10,000 BNPL customer profiles using SQL and Tableau to identify high-risk default patterns, debt distributions, and portfolio health metrics.

---

## Data Architecture & Tech Stack

- **Database:** MySQL
- **Visualization:** Tableau Desktop
- **Dataset:** 10,000 customer records

The dataset contains demographic details, active loan counts, debt balances, credit scores, payment histories, and risk tiers.

---

## Key Business Questions & SQL Solutions

### 1. Portfolio Risk Overview

**Business Question**

What does the overall BNPL portfolio look like when customers are segmented by default risk?

**Why it matters**

Executive leadership needs a high-level view of customer risk, outstanding debt, loan volume, and credit scores to assess overall portfolio health.

### SQL Query

```sql
SELECT 
    default_risk,
    COUNT(customer_id) AS total_customers,
    SUM(total_bnpl_active_loans) AS total_loans,
    SUM(total_bnpl_debt_usd) AS total_debt,
    ROUND(AVG(credit_score), 2) AS average_credit_score
FROM bnpl_financial_default_risk_dataset
GROUP BY default_risk
ORDER BY average_credit_score DESC;
