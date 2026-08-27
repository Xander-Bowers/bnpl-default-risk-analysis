/*
-- Query:
SELECT 
		default_risk,
		COUNT(customer_id) AS total_customers,
		SUM(Total_BNPL_Active_Loans) AS total_loans,
        SUM(total_bnpl_debt_usd) AS total_debt,
		ROUND(AVG(credit_score), 2) AS average_credit_score
FROM bnpl_financial_default_risk_dataset
-- WHERE default_risk IN ('low', 'medium', 'high')
GROUP BY default_risk
ORDER BY average_credit_score DESC
LIMIT 0, 1000

-- Date: 2026-08-26 19:34
*/
INSERT INTO `` (`default_risk`,`total_customers`,`total_loans`,`total_debt`,`average_credit_score`) VALUES ('Low',8278,17189,2524764,675.35);
INSERT INTO `` (`default_risk`,`total_customers`,`total_loans`,`total_debt`,`average_credit_score`) VALUES ('Medium',636,2302,366109,586.92);
INSERT INTO `` (`default_risk`,`total_customers`,`total_loans`,`total_debt`,`average_credit_score`) VALUES ('High',495,2299,390994,565.58);
