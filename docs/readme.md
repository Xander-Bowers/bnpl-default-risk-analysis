BNPL Default Risk Analysis

# Project Overview: 
This project analyzes 10,000 BNPL customer profiles using SQL and Tableau to identify high-risk default patterns, debt distributions, and portfolio health metrics.

## Data Architecture & Tech Stack
  ##Database Engine: MYSQL
  ##Visualization: Tableau Desktop
  ##Dataset: 10,000 customer records comprising demographic details, active loan counts, debt balances, credit scores, payment histories, and risk tiers.

# Key Business Questions AND SQL Solutions

1. PORTFOLIO RISK OVERVIEW

== Executive leadership requires a top-level summary of total active debt, loan volume, and credit scores segmented by default risk classification to assess overall portfolio health.

   #SQL Query:
         SELECT 
            default_risk,
            COUNT(customer_id) AS total_customers,
            SUM(total_bnpl_active_loans) AS total_loans,
            SUM(total_bnpl_debt_usd) AS total_debt,
            ROUND(AVG(credit_score), 2) AS average_credit_score
            FROM bnpl_financial_default_risk_dataset
          GROUP BY default_risk
          ORDER BY average_credit_score DESC;

   **KEY INSIGHTS
     -- Low Risk accounts for 8801 customers accounting for $2,685,300 in active debt with an average credit score of 675.33.
     -- High Risk borrowers hold $412,598 in outstanding debt with a significantly depressed average credit score of 566.23.

3. HIGH RISK DEBT EXPOSURE BY EMPLOYMENT STATUS
       * Risk teams need to identify which employment demographics contain the highest concentration of defaulted debt to adjust credit approval limits.

   #SQL Query:
       SELECT 
          employment_status,
          default_risk,
          SUM(total_bnpl_debt_usd) AS total_debt,
          COUNT(customer_id) AS total_customers
      FROM bnpl_financial_default_risk_dataset
      WHERE default_risk = 'High'
      GROUP BY 
          employment_status, 
          default_risk
      ORDER BY total_debt DESC;

   **KEY INSIGHTS
   --
