/*
-- Query: SELECT
		shopping_category_most_frequent,
		  late_payment_history,
		COUNT(customer_id) AS total_customers,
        ROUND(AVG(total_bnpl_debt_usd),2) AS average_debt
		
	FROM bnpl_financial_default_risk_dataset
    GROUP by Shopping_Category_Most_Frequent, Late_Payment_History
    ORDER BY Shopping_Category_Most_Frequent ASC, 
    Late_Payment_History DESC
LIMIT 0, 1000

-- Date: 2026-08-27 12:04
*/
INSERT INTO `` (`shopping_category_most_frequent`,`late_payment_history`,`total_customers`,`average_debt`) VALUES ('Electronics','Yes',701,340.70);
INSERT INTO `` (`shopping_category_most_frequent`,`late_payment_history`,`total_customers`,`average_debt`) VALUES ('Electronics','No',2114,351.61);
INSERT INTO `` (`shopping_category_most_frequent`,`late_payment_history`,`total_customers`,`average_debt`) VALUES ('Fashion','Yes',913,355.26);
INSERT INTO `` (`shopping_category_most_frequent`,`late_payment_history`,`total_customers`,`average_debt`) VALUES ('Fashion','No',2864,343.84);
INSERT INTO `` (`shopping_category_most_frequent`,`late_payment_history`,`total_customers`,`average_debt`) VALUES ('Groceries/Essentials','Yes',121,335.79);
INSERT INTO `` (`shopping_category_most_frequent`,`late_payment_history`,`total_customers`,`average_debt`) VALUES ('Groceries/Essentials','No',358,340.16);
INSERT INTO `` (`shopping_category_most_frequent`,`late_payment_history`,`total_customers`,`average_debt`) VALUES ('Home/Furniture','Yes',364,352.80);
INSERT INTO `` (`shopping_category_most_frequent`,`late_payment_history`,`total_customers`,`average_debt`) VALUES ('Home/Furniture','No',1056,355.68);
INSERT INTO `` (`shopping_category_most_frequent`,`late_payment_history`,`total_customers`,`average_debt`) VALUES ('Travel','Yes',241,374.18);
INSERT INTO `` (`shopping_category_most_frequent`,`late_payment_history`,`total_customers`,`average_debt`) VALUES ('Travel','No',677,345.65);
