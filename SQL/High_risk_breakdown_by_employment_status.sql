/*
-- Query: SELECT
		employment_status,
        default_risk,
		SUM(total_bnpl_debt_usd) AS total_debt,
        COUNT(customer_id) AS total_customers
	FROM bnpl_financial_default_risk_dataset
    WHERE default_risk = 'High'
    GROUP BY employment_status, default_risk
LIMIT 0, 1000

-- Date: 2026-08-27 11:31
*/
INSERT INTO `` (`employment_status`,`default_risk`,`total_debt`,`total_customers`) VALUES ('Employed','High',15654,12);
INSERT INTO `` (`employment_status`,`default_risk`,`total_debt`,`total_customers`) VALUES ('Student','High',241172,274);
INSERT INTO `` (`employment_status`,`default_risk`,`total_debt`,`total_customers`) VALUES ('Unemployed','High',102469,177);
INSERT INTO `` (`employment_status`,`default_risk`,`total_debt`,`total_customers`) VALUES ('Freelancer','High',31699,32);
